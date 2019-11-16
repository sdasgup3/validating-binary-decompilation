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
%G_0x50233__rip__type = type <{ [8 x i8] }>
%G_0x50375__rip__type = type <{ [8 x i8] }>
%G__0x4559fe_type = type <{ [8 x i8] }>
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
@G_0x50233__rip_ = global %G_0x50233__rip__type zeroinitializer
@G_0x50375__rip_ = global %G_0x50375__rip__type zeroinitializer
@G__0x4559fe = global %G__0x4559fe_type zeroinitializer

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

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_445400.sre_random(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_440340.SeqinfoCopy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_446110.Free2DArray(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @RandomAlignment(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_404380 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_404380, %struct.Memory** %MEMORY
  %loadMem_404381 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_404381, %struct.Memory** %MEMORY
  %loadMem_404384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i33 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i33
  %36 = load i64, i64* %PC.i32
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i32
  %38 = sub i64 %35, 128
  store i64 %38, i64* %RSP.i33, align 8
  %39 = icmp ult i64 %35, 128
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
  %49 = xor i64 128, %35
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
  store %struct.Memory* %loadMem_404384, %struct.Memory** %MEMORY
  %loadMem_40438b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i622 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i621
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i621
  store i64 ptrtoint (%G__0x4559fe_type* @G__0x4559fe to i64), i64* %RAX.i622, align 8
  store %struct.Memory* %loadMem_40438b, %struct.Memory** %MEMORY
  %loadMem_404395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 19
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %80 to i32*
  %81 = bitcast i32* %R9D.i to i64*
  %82 = load i64, i64* %PC.i822
  %83 = add i64 %82, 6
  store i64 %83, i64* %PC.i822
  store i64 530, i64* %81, align 8
  store %struct.Memory* %loadMem_404395, %struct.Memory** %MEMORY
  %loadMem_40439b = load %struct.Memory*, %struct.Memory** %MEMORY
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %85 = getelementptr inbounds %struct.GPR, %struct.GPR* %84, i32 0, i32 33
  %86 = getelementptr inbounds %struct.Reg, %struct.Reg* %85, i32 0, i32 0
  %PC.i960 = bitcast %union.anon* %86 to i64*
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 11
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0
  %RDI.i961 = bitcast %union.anon* %89 to i64*
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 15
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %RBP.i962 = bitcast %union.anon* %92 to i64*
  %93 = load i64, i64* %RBP.i962
  %94 = sub i64 %93, 8
  %95 = load i64, i64* %RDI.i961
  %96 = load i64, i64* %PC.i960
  %97 = add i64 %96, 4
  store i64 %97, i64* %PC.i960
  %98 = inttoptr i64 %94 to i64*
  store i64 %95, i64* %98
  store %struct.Memory* %loadMem_40439b, %struct.Memory** %MEMORY
  %loadMem_40439f = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i1019 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 9
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %RSI.i1020 = bitcast %union.anon* %104 to i64*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 15
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %RBP.i1021 = bitcast %union.anon* %107 to i64*
  %108 = load i64, i64* %RBP.i1021
  %109 = sub i64 %108, 16
  %110 = load i64, i64* %RSI.i1020
  %111 = load i64, i64* %PC.i1019
  %112 = add i64 %111, 4
  store i64 %112, i64* %PC.i1019
  %113 = inttoptr i64 %109 to i64*
  store i64 %110, i64* %113
  store %struct.Memory* %loadMem_40439f, %struct.Memory** %MEMORY
  %loadMem_4043a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i1016 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 7
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %EDX.i1017 = bitcast %union.anon* %119 to i32*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 15
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %RBP.i1018 = bitcast %union.anon* %122 to i64*
  %123 = load i64, i64* %RBP.i1018
  %124 = sub i64 %123, 20
  %125 = load i32, i32* %EDX.i1017
  %126 = zext i32 %125 to i64
  %127 = load i64, i64* %PC.i1016
  %128 = add i64 %127, 3
  store i64 %128, i64* %PC.i1016
  %129 = inttoptr i64 %124 to i32*
  store i32 %125, i32* %129
  store %struct.Memory* %loadMem_4043a3, %struct.Memory** %MEMORY
  %loadMem_4043a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 33
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %PC.i1013 = bitcast %union.anon* %132 to i64*
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 15
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %RBP.i1014 = bitcast %union.anon* %135 to i64*
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %137 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %136, i64 0, i64 0
  %XMM0.i1015 = bitcast %union.VectorReg* %137 to %union.vec128_t*
  %138 = load i64, i64* %RBP.i1014
  %139 = sub i64 %138, 24
  %140 = bitcast %union.vec128_t* %XMM0.i1015 to i8*
  %141 = load i64, i64* %PC.i1013
  %142 = add i64 %141, 5
  store i64 %142, i64* %PC.i1013
  %143 = bitcast i8* %140 to <2 x float>*
  %144 = load <2 x float>, <2 x float>* %143, align 1
  %145 = extractelement <2 x float> %144, i32 0
  %146 = inttoptr i64 %139 to float*
  store float %145, float* %146
  store %struct.Memory* %loadMem_4043a6, %struct.Memory** %MEMORY
  %loadMem_4043ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 33
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %PC.i1010 = bitcast %union.anon* %149 to i64*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 15
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %RBP.i1011 = bitcast %union.anon* %152 to i64*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %154 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %153, i64 0, i64 1
  %XMM1.i1012 = bitcast %union.VectorReg* %154 to %union.vec128_t*
  %155 = load i64, i64* %RBP.i1011
  %156 = sub i64 %155, 28
  %157 = bitcast %union.vec128_t* %XMM1.i1012 to i8*
  %158 = load i64, i64* %PC.i1010
  %159 = add i64 %158, 5
  store i64 %159, i64* %PC.i1010
  %160 = bitcast i8* %157 to <2 x float>*
  %161 = load <2 x float>, <2 x float>* %160, align 1
  %162 = extractelement <2 x float> %161, i32 0
  %163 = inttoptr i64 %156 to float*
  store float %162, float* %163
  store %struct.Memory* %loadMem_4043ab, %struct.Memory** %MEMORY
  %loadMem_4043b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 33
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %PC.i1007 = bitcast %union.anon* %166 to i64*
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %RCX.i1008 = bitcast %union.anon* %169 to i64*
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 15
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %RBP.i1009 = bitcast %union.anon* %172 to i64*
  %173 = load i64, i64* %RBP.i1009
  %174 = sub i64 %173, 40
  %175 = load i64, i64* %RCX.i1008
  %176 = load i64, i64* %PC.i1007
  %177 = add i64 %176, 4
  store i64 %177, i64* %PC.i1007
  %178 = inttoptr i64 %174 to i64*
  store i64 %175, i64* %178
  store %struct.Memory* %loadMem_4043b0, %struct.Memory** %MEMORY
  %loadMem_4043b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 33
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %PC.i1005 = bitcast %union.anon* %181 to i64*
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 15
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %RBP.i1006 = bitcast %union.anon* %184 to i64*
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 17
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %R8.i = bitcast %union.anon* %187 to i64*
  %188 = load i64, i64* %RBP.i1006
  %189 = sub i64 %188, 48
  %190 = load i64, i64* %R8.i
  %191 = load i64, i64* %PC.i1005
  %192 = add i64 %191, 4
  store i64 %192, i64* %PC.i1005
  %193 = inttoptr i64 %189 to i64*
  store i64 %190, i64* %193
  store %struct.Memory* %loadMem_4043b4, %struct.Memory** %MEMORY
  %loadMem_4043b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 33
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %PC.i1002 = bitcast %union.anon* %196 to i64*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 5
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %RCX.i1003 = bitcast %union.anon* %199 to i64*
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 15
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %RBP.i1004 = bitcast %union.anon* %202 to i64*
  %203 = load i64, i64* %RBP.i1004
  %204 = sub i64 %203, 20
  %205 = load i64, i64* %PC.i1002
  %206 = add i64 %205, 4
  store i64 %206, i64* %PC.i1002
  %207 = inttoptr i64 %204 to i32*
  %208 = load i32, i32* %207
  %209 = sext i32 %208 to i64
  store i64 %209, i64* %RCX.i1003, align 8
  store %struct.Memory* %loadMem_4043b8, %struct.Memory** %MEMORY
  %loadMem_4043bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 33
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %PC.i1000 = bitcast %union.anon* %212 to i64*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 5
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %RCX.i1001 = bitcast %union.anon* %215 to i64*
  %216 = load i64, i64* %RCX.i1001
  %217 = load i64, i64* %PC.i1000
  %218 = add i64 %217, 4
  store i64 %218, i64* %PC.i1000
  %219 = shl i64 %216, 1
  %220 = icmp slt i64 %219, 0
  %221 = shl i64 %219, 1
  store i64 %221, i64* %RCX.i1001, align 8
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %223 = zext i1 %220 to i8
  store i8 %223, i8* %222, align 1
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %225 = trunc i64 %221 to i32
  %226 = and i32 %225, 254
  %227 = call i32 @llvm.ctpop.i32(i32 %226)
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  %230 = xor i8 %229, 1
  store i8 %230, i8* %224, align 1
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %231, align 1
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %233 = icmp eq i64 %221, 0
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %232, align 1
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %236 = lshr i64 %221, 63
  %237 = trunc i64 %236 to i8
  store i8 %237, i8* %235, align 1
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %238, align 1
  store %struct.Memory* %loadMem_4043bc, %struct.Memory** %MEMORY
  %loadMem_4043c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 33
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %PC.i997 = bitcast %union.anon* %241 to i64*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %RAX.i998 = bitcast %union.anon* %244 to i64*
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 11
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %RDI.i999 = bitcast %union.anon* %247 to i64*
  %248 = load i64, i64* %RAX.i998
  %249 = load i64, i64* %PC.i997
  %250 = add i64 %249, 3
  store i64 %250, i64* %PC.i997
  store i64 %248, i64* %RDI.i999, align 8
  store %struct.Memory* %loadMem_4043c0, %struct.Memory** %MEMORY
  %loadMem_4043c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 33
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %PC.i994 = bitcast %union.anon* %253 to i64*
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 19
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %R9D.i995 = bitcast %union.anon* %256 to i32*
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %258 = getelementptr inbounds %struct.GPR, %struct.GPR* %257, i32 0, i32 9
  %259 = getelementptr inbounds %struct.Reg, %struct.Reg* %258, i32 0, i32 0
  %RSI.i996 = bitcast %union.anon* %259 to i64*
  %260 = load i32, i32* %R9D.i995
  %261 = zext i32 %260 to i64
  %262 = load i64, i64* %PC.i994
  %263 = add i64 %262, 3
  store i64 %263, i64* %PC.i994
  %264 = and i64 %261, 4294967295
  store i64 %264, i64* %RSI.i996, align 8
  store %struct.Memory* %loadMem_4043c3, %struct.Memory** %MEMORY
  %loadMem_4043c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 33
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %PC.i991 = bitcast %union.anon* %267 to i64*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 5
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %RCX.i992 = bitcast %union.anon* %270 to i64*
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 7
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %RDX.i993 = bitcast %union.anon* %273 to i64*
  %274 = load i64, i64* %RCX.i992
  %275 = load i64, i64* %PC.i991
  %276 = add i64 %275, 3
  store i64 %276, i64* %PC.i991
  store i64 %274, i64* %RDX.i993, align 8
  store %struct.Memory* %loadMem_4043c6, %struct.Memory** %MEMORY
  %loadMem1_4043c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 33
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %PC.i990 = bitcast %union.anon* %279 to i64*
  %280 = load i64, i64* %PC.i990
  %281 = add i64 %280, 269463
  %282 = load i64, i64* %PC.i990
  %283 = add i64 %282, 5
  %284 = load i64, i64* %PC.i990
  %285 = add i64 %284, 5
  store i64 %285, i64* %PC.i990
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = add i64 %287, -8
  %289 = inttoptr i64 %288 to i64*
  store i64 %283, i64* %289
  store i64 %288, i64* %286, align 8
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %281, i64* %290, align 8
  store %struct.Memory* %loadMem1_4043c9, %struct.Memory** %MEMORY
  %loadMem2_4043c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4043c9 = load i64, i64* %3
  %call2_4043c9 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_4043c9, %struct.Memory* %loadMem2_4043c9)
  store %struct.Memory* %call2_4043c9, %struct.Memory** %MEMORY
  %loadMem_4043ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %292 = getelementptr inbounds %struct.GPR, %struct.GPR* %291, i32 0, i32 33
  %293 = getelementptr inbounds %struct.Reg, %struct.Reg* %292, i32 0, i32 0
  %PC.i987 = bitcast %union.anon* %293 to i64*
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %RAX.i988 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 15
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %RBP.i989 = bitcast %union.anon* %299 to i64*
  %300 = load i64, i64* %RBP.i989
  %301 = sub i64 %300, 72
  %302 = load i64, i64* %RAX.i988
  %303 = load i64, i64* %PC.i987
  %304 = add i64 %303, 4
  store i64 %304, i64* %PC.i987
  %305 = inttoptr i64 %301 to i64*
  store i64 %302, i64* %305
  store %struct.Memory* %loadMem_4043ce, %struct.Memory** %MEMORY
  %loadMem_4043d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 33
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %PC.i985 = bitcast %union.anon* %308 to i64*
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 15
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %RBP.i986 = bitcast %union.anon* %311 to i64*
  %312 = load i64, i64* %RBP.i986
  %313 = sub i64 %312, 76
  %314 = load i64, i64* %PC.i985
  %315 = add i64 %314, 7
  store i64 %315, i64* %PC.i985
  %316 = inttoptr i64 %313 to i32*
  store i32 0, i32* %316
  store %struct.Memory* %loadMem_4043d2, %struct.Memory** %MEMORY
  %loadMem_4043d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 33
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %PC.i983 = bitcast %union.anon* %319 to i64*
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 15
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %RBP.i984 = bitcast %union.anon* %322 to i64*
  %323 = load i64, i64* %RBP.i984
  %324 = sub i64 %323, 120
  %325 = load i64, i64* %PC.i983
  %326 = add i64 %325, 7
  store i64 %326, i64* %PC.i983
  %327 = inttoptr i64 %324 to i32*
  store i32 9999999, i32* %327
  store %struct.Memory* %loadMem_4043d9, %struct.Memory** %MEMORY
  %loadMem_4043e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 33
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %PC.i981 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 15
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %RBP.i982 = bitcast %union.anon* %333 to i64*
  %334 = load i64, i64* %RBP.i982
  %335 = sub i64 %334, 108
  %336 = load i64, i64* %PC.i981
  %337 = add i64 %336, 7
  store i64 %337, i64* %PC.i981
  %338 = inttoptr i64 %335 to i32*
  store i32 0, i32* %338
  store %struct.Memory* %loadMem_4043e0, %struct.Memory** %MEMORY
  br label %block_.L_4043e7

block_.L_4043e7:                                  ; preds = %block_.L_40444f, %entry
  %loadMem_4043e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %340 = getelementptr inbounds %struct.GPR, %struct.GPR* %339, i32 0, i32 33
  %341 = getelementptr inbounds %struct.Reg, %struct.Reg* %340, i32 0, i32 0
  %PC.i978 = bitcast %union.anon* %341 to i64*
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %343 = getelementptr inbounds %struct.GPR, %struct.GPR* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.Reg, %struct.Reg* %343, i32 0, i32 0
  %RAX.i979 = bitcast %union.anon* %344 to i64*
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 15
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %RBP.i980 = bitcast %union.anon* %347 to i64*
  %348 = load i64, i64* %RBP.i980
  %349 = sub i64 %348, 108
  %350 = load i64, i64* %PC.i978
  %351 = add i64 %350, 3
  store i64 %351, i64* %PC.i978
  %352 = inttoptr i64 %349 to i32*
  %353 = load i32, i32* %352
  %354 = zext i32 %353 to i64
  store i64 %354, i64* %RAX.i979, align 8
  store %struct.Memory* %loadMem_4043e7, %struct.Memory** %MEMORY
  %loadMem_4043ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 33
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %PC.i975 = bitcast %union.anon* %357 to i64*
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %EAX.i976 = bitcast %union.anon* %360 to i32*
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 15
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %RBP.i977 = bitcast %union.anon* %363 to i64*
  %364 = load i32, i32* %EAX.i976
  %365 = zext i32 %364 to i64
  %366 = load i64, i64* %RBP.i977
  %367 = sub i64 %366, 20
  %368 = load i64, i64* %PC.i975
  %369 = add i64 %368, 3
  store i64 %369, i64* %PC.i975
  %370 = inttoptr i64 %367 to i32*
  %371 = load i32, i32* %370
  %372 = sub i32 %364, %371
  %373 = icmp ult i32 %364, %371
  %374 = zext i1 %373 to i8
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %374, i8* %375, align 1
  %376 = and i32 %372, 255
  %377 = call i32 @llvm.ctpop.i32(i32 %376)
  %378 = trunc i32 %377 to i8
  %379 = and i8 %378, 1
  %380 = xor i8 %379, 1
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %380, i8* %381, align 1
  %382 = xor i32 %371, %364
  %383 = xor i32 %382, %372
  %384 = lshr i32 %383, 4
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %386, i8* %387, align 1
  %388 = icmp eq i32 %372, 0
  %389 = zext i1 %388 to i8
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %389, i8* %390, align 1
  %391 = lshr i32 %372, 31
  %392 = trunc i32 %391 to i8
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %392, i8* %393, align 1
  %394 = lshr i32 %364, 31
  %395 = lshr i32 %371, 31
  %396 = xor i32 %395, %394
  %397 = xor i32 %391, %394
  %398 = add i32 %397, %396
  %399 = icmp eq i32 %398, 2
  %400 = zext i1 %399 to i8
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %400, i8* %401, align 1
  store %struct.Memory* %loadMem_4043ea, %struct.Memory** %MEMORY
  %loadMem_4043ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 33
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %PC.i974 = bitcast %union.anon* %404 to i64*
  %405 = load i64, i64* %PC.i974
  %406 = add i64 %405, 118
  %407 = load i64, i64* %PC.i974
  %408 = add i64 %407, 6
  %409 = load i64, i64* %PC.i974
  %410 = add i64 %409, 6
  store i64 %410, i64* %PC.i974
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %412 = load i8, i8* %411, align 1
  %413 = icmp ne i8 %412, 0
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %415 = load i8, i8* %414, align 1
  %416 = icmp ne i8 %415, 0
  %417 = xor i1 %413, %416
  %418 = xor i1 %417, true
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %BRANCH_TAKEN, align 1
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %421 = select i1 %417, i64 %408, i64 %406
  store i64 %421, i64* %420, align 8
  store %struct.Memory* %loadMem_4043ed, %struct.Memory** %MEMORY
  %loadBr_4043ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4043ed = icmp eq i8 %loadBr_4043ed, 1
  br i1 %cmpBr_4043ed, label %block_.L_404463, label %block_4043f3

block_4043f3:                                     ; preds = %block_.L_4043e7
  %loadMem_4043f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 33
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %PC.i971 = bitcast %union.anon* %424 to i64*
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %RAX.i972 = bitcast %union.anon* %427 to i64*
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 15
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %RBP.i973 = bitcast %union.anon* %430 to i64*
  %431 = load i64, i64* %RBP.i973
  %432 = sub i64 %431, 8
  %433 = load i64, i64* %PC.i971
  %434 = add i64 %433, 4
  store i64 %434, i64* %PC.i971
  %435 = inttoptr i64 %432 to i64*
  %436 = load i64, i64* %435
  store i64 %436, i64* %RAX.i972, align 8
  store %struct.Memory* %loadMem_4043f3, %struct.Memory** %MEMORY
  %loadMem_4043f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 33
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %PC.i968 = bitcast %union.anon* %439 to i64*
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 5
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %RCX.i969 = bitcast %union.anon* %442 to i64*
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 15
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %RBP.i970 = bitcast %union.anon* %445 to i64*
  %446 = load i64, i64* %RBP.i970
  %447 = sub i64 %446, 108
  %448 = load i64, i64* %PC.i968
  %449 = add i64 %448, 4
  store i64 %449, i64* %PC.i968
  %450 = inttoptr i64 %447 to i32*
  %451 = load i32, i32* %450
  %452 = sext i32 %451 to i64
  store i64 %452, i64* %RCX.i969, align 8
  store %struct.Memory* %loadMem_4043f7, %struct.Memory** %MEMORY
  %loadMem_4043fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 33
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %PC.i964 = bitcast %union.anon* %455 to i64*
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 1
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %RAX.i965 = bitcast %union.anon* %458 to i64*
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 5
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %RCX.i966 = bitcast %union.anon* %461 to i64*
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 11
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %RDI.i967 = bitcast %union.anon* %464 to i64*
  %465 = load i64, i64* %RAX.i965
  %466 = load i64, i64* %RCX.i966
  %467 = mul i64 %466, 8
  %468 = add i64 %467, %465
  %469 = load i64, i64* %PC.i964
  %470 = add i64 %469, 4
  store i64 %470, i64* %PC.i964
  %471 = inttoptr i64 %468 to i64*
  %472 = load i64, i64* %471
  store i64 %472, i64* %RDI.i967, align 8
  store %struct.Memory* %loadMem_4043fb, %struct.Memory** %MEMORY
  %loadMem1_4043ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 33
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %PC.i963 = bitcast %union.anon* %475 to i64*
  %476 = load i64, i64* %PC.i963
  %477 = add i64 %476, -12191
  %478 = load i64, i64* %PC.i963
  %479 = add i64 %478, 5
  %480 = load i64, i64* %PC.i963
  %481 = add i64 %480, 5
  store i64 %481, i64* %PC.i963
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  %484 = add i64 %483, -8
  %485 = inttoptr i64 %484 to i64*
  store i64 %479, i64* %485
  store i64 %484, i64* %482, align 8
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %477, i64* %486, align 8
  store %struct.Memory* %loadMem1_4043ff, %struct.Memory** %MEMORY
  %loadMem2_4043ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4043ff = load i64, i64* %3
  %487 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %loadMem2_4043ff)
  store %struct.Memory* %487, %struct.Memory** %MEMORY
  %loadMem_404404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 33
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %PC.i957 = bitcast %union.anon* %490 to i64*
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 1
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %EAX.i958 = bitcast %union.anon* %493 to i32*
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 7
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %RDX.i959 = bitcast %union.anon* %496 to i64*
  %497 = load i32, i32* %EAX.i958
  %498 = zext i32 %497 to i64
  %499 = load i64, i64* %PC.i957
  %500 = add i64 %499, 2
  store i64 %500, i64* %PC.i957
  %501 = and i64 %498, 4294967295
  store i64 %501, i64* %RDX.i959, align 8
  store %struct.Memory* %loadMem_404404, %struct.Memory** %MEMORY
  %loadMem_404406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 33
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %PC.i954 = bitcast %union.anon* %504 to i64*
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 1
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %RAX.i955 = bitcast %union.anon* %507 to i64*
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %509 = getelementptr inbounds %struct.GPR, %struct.GPR* %508, i32 0, i32 15
  %510 = getelementptr inbounds %struct.Reg, %struct.Reg* %509, i32 0, i32 0
  %RBP.i956 = bitcast %union.anon* %510 to i64*
  %511 = load i64, i64* %RBP.i956
  %512 = sub i64 %511, 72
  %513 = load i64, i64* %PC.i954
  %514 = add i64 %513, 4
  store i64 %514, i64* %PC.i954
  %515 = inttoptr i64 %512 to i64*
  %516 = load i64, i64* %515
  store i64 %516, i64* %RAX.i955, align 8
  store %struct.Memory* %loadMem_404406, %struct.Memory** %MEMORY
  %loadMem_40440a = load %struct.Memory*, %struct.Memory** %MEMORY
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %518 = getelementptr inbounds %struct.GPR, %struct.GPR* %517, i32 0, i32 33
  %519 = getelementptr inbounds %struct.Reg, %struct.Reg* %518, i32 0, i32 0
  %PC.i951 = bitcast %union.anon* %519 to i64*
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 5
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %RCX.i952 = bitcast %union.anon* %522 to i64*
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %524 = getelementptr inbounds %struct.GPR, %struct.GPR* %523, i32 0, i32 15
  %525 = getelementptr inbounds %struct.Reg, %struct.Reg* %524, i32 0, i32 0
  %RBP.i953 = bitcast %union.anon* %525 to i64*
  %526 = load i64, i64* %RBP.i953
  %527 = sub i64 %526, 108
  %528 = load i64, i64* %PC.i951
  %529 = add i64 %528, 4
  store i64 %529, i64* %PC.i951
  %530 = inttoptr i64 %527 to i32*
  %531 = load i32, i32* %530
  %532 = sext i32 %531 to i64
  store i64 %532, i64* %RCX.i952, align 8
  store %struct.Memory* %loadMem_40440a, %struct.Memory** %MEMORY
  %loadMem_40440e = load %struct.Memory*, %struct.Memory** %MEMORY
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 33
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %PC.i947 = bitcast %union.anon* %535 to i64*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 7
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %EDX.i948 = bitcast %union.anon* %538 to i32*
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 1
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %RAX.i949 = bitcast %union.anon* %541 to i64*
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %543 = getelementptr inbounds %struct.GPR, %struct.GPR* %542, i32 0, i32 5
  %544 = getelementptr inbounds %struct.Reg, %struct.Reg* %543, i32 0, i32 0
  %RCX.i950 = bitcast %union.anon* %544 to i64*
  %545 = load i64, i64* %RAX.i949
  %546 = load i64, i64* %RCX.i950
  %547 = mul i64 %546, 4
  %548 = add i64 %547, %545
  %549 = load i32, i32* %EDX.i948
  %550 = zext i32 %549 to i64
  %551 = load i64, i64* %PC.i947
  %552 = add i64 %551, 3
  store i64 %552, i64* %PC.i947
  %553 = inttoptr i64 %548 to i32*
  store i32 %549, i32* %553
  store %struct.Memory* %loadMem_40440e, %struct.Memory** %MEMORY
  %loadMem_404411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 33
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %PC.i944 = bitcast %union.anon* %556 to i64*
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 1
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %RAX.i945 = bitcast %union.anon* %559 to i64*
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 15
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %RBP.i946 = bitcast %union.anon* %562 to i64*
  %563 = load i64, i64* %RBP.i946
  %564 = sub i64 %563, 72
  %565 = load i64, i64* %PC.i944
  %566 = add i64 %565, 4
  store i64 %566, i64* %PC.i944
  %567 = inttoptr i64 %564 to i64*
  %568 = load i64, i64* %567
  store i64 %568, i64* %RAX.i945, align 8
  store %struct.Memory* %loadMem_404411, %struct.Memory** %MEMORY
  %loadMem_404415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 33
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %PC.i941 = bitcast %union.anon* %571 to i64*
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 5
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %RCX.i942 = bitcast %union.anon* %574 to i64*
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 15
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %RBP.i943 = bitcast %union.anon* %577 to i64*
  %578 = load i64, i64* %RBP.i943
  %579 = sub i64 %578, 108
  %580 = load i64, i64* %PC.i941
  %581 = add i64 %580, 4
  store i64 %581, i64* %PC.i941
  %582 = inttoptr i64 %579 to i32*
  %583 = load i32, i32* %582
  %584 = sext i32 %583 to i64
  store i64 %584, i64* %RCX.i942, align 8
  store %struct.Memory* %loadMem_404415, %struct.Memory** %MEMORY
  %loadMem_404419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %586 = getelementptr inbounds %struct.GPR, %struct.GPR* %585, i32 0, i32 33
  %587 = getelementptr inbounds %struct.Reg, %struct.Reg* %586, i32 0, i32 0
  %PC.i937 = bitcast %union.anon* %587 to i64*
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 1
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %RAX.i938 = bitcast %union.anon* %590 to i64*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 5
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %RCX.i939 = bitcast %union.anon* %593 to i64*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 7
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %RDX.i940 = bitcast %union.anon* %596 to i64*
  %597 = load i64, i64* %RAX.i938
  %598 = load i64, i64* %RCX.i939
  %599 = mul i64 %598, 4
  %600 = add i64 %599, %597
  %601 = load i64, i64* %PC.i937
  %602 = add i64 %601, 3
  store i64 %602, i64* %PC.i937
  %603 = inttoptr i64 %600 to i32*
  %604 = load i32, i32* %603
  %605 = zext i32 %604 to i64
  store i64 %605, i64* %RDX.i940, align 8
  store %struct.Memory* %loadMem_404419, %struct.Memory** %MEMORY
  %loadMem_40441c = load %struct.Memory*, %struct.Memory** %MEMORY
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 33
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %PC.i934 = bitcast %union.anon* %608 to i64*
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 7
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %RDX.i935 = bitcast %union.anon* %611 to i64*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 15
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %RBP.i936 = bitcast %union.anon* %614 to i64*
  %615 = load i64, i64* %RDX.i935
  %616 = load i64, i64* %RBP.i936
  %617 = sub i64 %616, 76
  %618 = load i64, i64* %PC.i934
  %619 = add i64 %618, 3
  store i64 %619, i64* %PC.i934
  %620 = trunc i64 %615 to i32
  %621 = inttoptr i64 %617 to i32*
  %622 = load i32, i32* %621
  %623 = add i32 %622, %620
  %624 = zext i32 %623 to i64
  store i64 %624, i64* %RDX.i935, align 8
  %625 = icmp ult i32 %623, %620
  %626 = icmp ult i32 %623, %622
  %627 = or i1 %625, %626
  %628 = zext i1 %627 to i8
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %628, i8* %629, align 1
  %630 = and i32 %623, 255
  %631 = call i32 @llvm.ctpop.i32(i32 %630)
  %632 = trunc i32 %631 to i8
  %633 = and i8 %632, 1
  %634 = xor i8 %633, 1
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %634, i8* %635, align 1
  %636 = xor i32 %622, %620
  %637 = xor i32 %636, %623
  %638 = lshr i32 %637, 4
  %639 = trunc i32 %638 to i8
  %640 = and i8 %639, 1
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %640, i8* %641, align 1
  %642 = icmp eq i32 %623, 0
  %643 = zext i1 %642 to i8
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %643, i8* %644, align 1
  %645 = lshr i32 %623, 31
  %646 = trunc i32 %645 to i8
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %646, i8* %647, align 1
  %648 = lshr i32 %620, 31
  %649 = lshr i32 %622, 31
  %650 = xor i32 %645, %648
  %651 = xor i32 %645, %649
  %652 = add i32 %650, %651
  %653 = icmp eq i32 %652, 2
  %654 = zext i1 %653 to i8
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %654, i8* %655, align 1
  store %struct.Memory* %loadMem_40441c, %struct.Memory** %MEMORY
  %loadMem_40441f = load %struct.Memory*, %struct.Memory** %MEMORY
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 33
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %PC.i931 = bitcast %union.anon* %658 to i64*
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 7
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %EDX.i932 = bitcast %union.anon* %661 to i32*
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 15
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %RBP.i933 = bitcast %union.anon* %664 to i64*
  %665 = load i64, i64* %RBP.i933
  %666 = sub i64 %665, 76
  %667 = load i32, i32* %EDX.i932
  %668 = zext i32 %667 to i64
  %669 = load i64, i64* %PC.i931
  %670 = add i64 %669, 3
  store i64 %670, i64* %PC.i931
  %671 = inttoptr i64 %666 to i32*
  store i32 %667, i32* %671
  store %struct.Memory* %loadMem_40441f, %struct.Memory** %MEMORY
  %loadMem_404422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 33
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %PC.i928 = bitcast %union.anon* %674 to i64*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 1
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %RAX.i929 = bitcast %union.anon* %677 to i64*
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 15
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %RBP.i930 = bitcast %union.anon* %680 to i64*
  %681 = load i64, i64* %RBP.i930
  %682 = sub i64 %681, 72
  %683 = load i64, i64* %PC.i928
  %684 = add i64 %683, 4
  store i64 %684, i64* %PC.i928
  %685 = inttoptr i64 %682 to i64*
  %686 = load i64, i64* %685
  store i64 %686, i64* %RAX.i929, align 8
  store %struct.Memory* %loadMem_404422, %struct.Memory** %MEMORY
  %loadMem_404426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 33
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %PC.i925 = bitcast %union.anon* %689 to i64*
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 5
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %RCX.i926 = bitcast %union.anon* %692 to i64*
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 15
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %RBP.i927 = bitcast %union.anon* %695 to i64*
  %696 = load i64, i64* %RBP.i927
  %697 = sub i64 %696, 108
  %698 = load i64, i64* %PC.i925
  %699 = add i64 %698, 4
  store i64 %699, i64* %PC.i925
  %700 = inttoptr i64 %697 to i32*
  %701 = load i32, i32* %700
  %702 = sext i32 %701 to i64
  store i64 %702, i64* %RCX.i926, align 8
  store %struct.Memory* %loadMem_404426, %struct.Memory** %MEMORY
  %loadMem_40442a = load %struct.Memory*, %struct.Memory** %MEMORY
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 33
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %PC.i921 = bitcast %union.anon* %705 to i64*
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 1
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %RAX.i922 = bitcast %union.anon* %708 to i64*
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 5
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %RCX.i923 = bitcast %union.anon* %711 to i64*
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 7
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %RDX.i924 = bitcast %union.anon* %714 to i64*
  %715 = load i64, i64* %RAX.i922
  %716 = load i64, i64* %RCX.i923
  %717 = mul i64 %716, 4
  %718 = add i64 %717, %715
  %719 = load i64, i64* %PC.i921
  %720 = add i64 %719, 3
  store i64 %720, i64* %PC.i921
  %721 = inttoptr i64 %718 to i32*
  %722 = load i32, i32* %721
  %723 = zext i32 %722 to i64
  store i64 %723, i64* %RDX.i924, align 8
  store %struct.Memory* %loadMem_40442a, %struct.Memory** %MEMORY
  %loadMem_40442d = load %struct.Memory*, %struct.Memory** %MEMORY
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 33
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %PC.i918 = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 7
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %EDX.i919 = bitcast %union.anon* %729 to i32*
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 15
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %RBP.i920 = bitcast %union.anon* %732 to i64*
  %733 = load i32, i32* %EDX.i919
  %734 = zext i32 %733 to i64
  %735 = load i64, i64* %RBP.i920
  %736 = sub i64 %735, 120
  %737 = load i64, i64* %PC.i918
  %738 = add i64 %737, 3
  store i64 %738, i64* %PC.i918
  %739 = inttoptr i64 %736 to i32*
  %740 = load i32, i32* %739
  %741 = sub i32 %733, %740
  %742 = icmp ult i32 %733, %740
  %743 = zext i1 %742 to i8
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %743, i8* %744, align 1
  %745 = and i32 %741, 255
  %746 = call i32 @llvm.ctpop.i32(i32 %745)
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  %749 = xor i8 %748, 1
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %749, i8* %750, align 1
  %751 = xor i32 %740, %733
  %752 = xor i32 %751, %741
  %753 = lshr i32 %752, 4
  %754 = trunc i32 %753 to i8
  %755 = and i8 %754, 1
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %755, i8* %756, align 1
  %757 = icmp eq i32 %741, 0
  %758 = zext i1 %757 to i8
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %758, i8* %759, align 1
  %760 = lshr i32 %741, 31
  %761 = trunc i32 %760 to i8
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %761, i8* %762, align 1
  %763 = lshr i32 %733, 31
  %764 = lshr i32 %740, 31
  %765 = xor i32 %764, %763
  %766 = xor i32 %760, %763
  %767 = add i32 %766, %765
  %768 = icmp eq i32 %767, 2
  %769 = zext i1 %768 to i8
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %769, i8* %770, align 1
  store %struct.Memory* %loadMem_40442d, %struct.Memory** %MEMORY
  %loadMem_404430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %772 = getelementptr inbounds %struct.GPR, %struct.GPR* %771, i32 0, i32 33
  %773 = getelementptr inbounds %struct.Reg, %struct.Reg* %772, i32 0, i32 0
  %PC.i917 = bitcast %union.anon* %773 to i64*
  %774 = load i64, i64* %PC.i917
  %775 = add i64 %774, 25
  %776 = load i64, i64* %PC.i917
  %777 = add i64 %776, 6
  %778 = load i64, i64* %PC.i917
  %779 = add i64 %778, 6
  store i64 %779, i64* %PC.i917
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %781 = load i8, i8* %780, align 1
  %782 = icmp ne i8 %781, 0
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %784 = load i8, i8* %783, align 1
  %785 = icmp ne i8 %784, 0
  %786 = xor i1 %782, %785
  %787 = xor i1 %786, true
  %788 = zext i1 %787 to i8
  store i8 %788, i8* %BRANCH_TAKEN, align 1
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %790 = select i1 %786, i64 %777, i64 %775
  store i64 %790, i64* %789, align 8
  store %struct.Memory* %loadMem_404430, %struct.Memory** %MEMORY
  %loadBr_404430 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_404430 = icmp eq i8 %loadBr_404430, 1
  br i1 %cmpBr_404430, label %block_.L_404449, label %block_404436

block_404436:                                     ; preds = %block_4043f3
  %loadMem_404436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 33
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %PC.i914 = bitcast %union.anon* %793 to i64*
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 1
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %RAX.i915 = bitcast %union.anon* %796 to i64*
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %798 = getelementptr inbounds %struct.GPR, %struct.GPR* %797, i32 0, i32 15
  %799 = getelementptr inbounds %struct.Reg, %struct.Reg* %798, i32 0, i32 0
  %RBP.i916 = bitcast %union.anon* %799 to i64*
  %800 = load i64, i64* %RBP.i916
  %801 = sub i64 %800, 72
  %802 = load i64, i64* %PC.i914
  %803 = add i64 %802, 4
  store i64 %803, i64* %PC.i914
  %804 = inttoptr i64 %801 to i64*
  %805 = load i64, i64* %804
  store i64 %805, i64* %RAX.i915, align 8
  store %struct.Memory* %loadMem_404436, %struct.Memory** %MEMORY
  %loadMem_40443a = load %struct.Memory*, %struct.Memory** %MEMORY
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %807 = getelementptr inbounds %struct.GPR, %struct.GPR* %806, i32 0, i32 33
  %808 = getelementptr inbounds %struct.Reg, %struct.Reg* %807, i32 0, i32 0
  %PC.i911 = bitcast %union.anon* %808 to i64*
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %810 = getelementptr inbounds %struct.GPR, %struct.GPR* %809, i32 0, i32 5
  %811 = getelementptr inbounds %struct.Reg, %struct.Reg* %810, i32 0, i32 0
  %RCX.i912 = bitcast %union.anon* %811 to i64*
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 15
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %RBP.i913 = bitcast %union.anon* %814 to i64*
  %815 = load i64, i64* %RBP.i913
  %816 = sub i64 %815, 108
  %817 = load i64, i64* %PC.i911
  %818 = add i64 %817, 4
  store i64 %818, i64* %PC.i911
  %819 = inttoptr i64 %816 to i32*
  %820 = load i32, i32* %819
  %821 = sext i32 %820 to i64
  store i64 %821, i64* %RCX.i912, align 8
  store %struct.Memory* %loadMem_40443a, %struct.Memory** %MEMORY
  %loadMem_40443e = load %struct.Memory*, %struct.Memory** %MEMORY
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 33
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %824 to i64*
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %826 = getelementptr inbounds %struct.GPR, %struct.GPR* %825, i32 0, i32 1
  %827 = getelementptr inbounds %struct.Reg, %struct.Reg* %826, i32 0, i32 0
  %RAX.i908 = bitcast %union.anon* %827 to i64*
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %829 = getelementptr inbounds %struct.GPR, %struct.GPR* %828, i32 0, i32 5
  %830 = getelementptr inbounds %struct.Reg, %struct.Reg* %829, i32 0, i32 0
  %RCX.i909 = bitcast %union.anon* %830 to i64*
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 7
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %RDX.i910 = bitcast %union.anon* %833 to i64*
  %834 = load i64, i64* %RAX.i908
  %835 = load i64, i64* %RCX.i909
  %836 = mul i64 %835, 4
  %837 = add i64 %836, %834
  %838 = load i64, i64* %PC.i907
  %839 = add i64 %838, 3
  store i64 %839, i64* %PC.i907
  %840 = inttoptr i64 %837 to i32*
  %841 = load i32, i32* %840
  %842 = zext i32 %841 to i64
  store i64 %842, i64* %RDX.i910, align 8
  store %struct.Memory* %loadMem_40443e, %struct.Memory** %MEMORY
  %loadMem_404441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %844 = getelementptr inbounds %struct.GPR, %struct.GPR* %843, i32 0, i32 33
  %845 = getelementptr inbounds %struct.Reg, %struct.Reg* %844, i32 0, i32 0
  %PC.i904 = bitcast %union.anon* %845 to i64*
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 7
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %EDX.i905 = bitcast %union.anon* %848 to i32*
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 15
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %RBP.i906 = bitcast %union.anon* %851 to i64*
  %852 = load i64, i64* %RBP.i906
  %853 = sub i64 %852, 124
  %854 = load i32, i32* %EDX.i905
  %855 = zext i32 %854 to i64
  %856 = load i64, i64* %PC.i904
  %857 = add i64 %856, 3
  store i64 %857, i64* %PC.i904
  %858 = inttoptr i64 %853 to i32*
  store i32 %854, i32* %858
  store %struct.Memory* %loadMem_404441, %struct.Memory** %MEMORY
  %loadMem_404444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 33
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %PC.i903 = bitcast %union.anon* %861 to i64*
  %862 = load i64, i64* %PC.i903
  %863 = add i64 %862, 11
  %864 = load i64, i64* %PC.i903
  %865 = add i64 %864, 5
  store i64 %865, i64* %PC.i903
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %863, i64* %866, align 8
  store %struct.Memory* %loadMem_404444, %struct.Memory** %MEMORY
  br label %block_.L_40444f

block_.L_404449:                                  ; preds = %block_4043f3
  %loadMem_404449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 33
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %PC.i900 = bitcast %union.anon* %869 to i64*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 1
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %RAX.i901 = bitcast %union.anon* %872 to i64*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 15
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %RBP.i902 = bitcast %union.anon* %875 to i64*
  %876 = load i64, i64* %RBP.i902
  %877 = sub i64 %876, 120
  %878 = load i64, i64* %PC.i900
  %879 = add i64 %878, 3
  store i64 %879, i64* %PC.i900
  %880 = inttoptr i64 %877 to i32*
  %881 = load i32, i32* %880
  %882 = zext i32 %881 to i64
  store i64 %882, i64* %RAX.i901, align 8
  store %struct.Memory* %loadMem_404449, %struct.Memory** %MEMORY
  %loadMem_40444c = load %struct.Memory*, %struct.Memory** %MEMORY
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 33
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %PC.i897 = bitcast %union.anon* %885 to i64*
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 1
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %EAX.i898 = bitcast %union.anon* %888 to i32*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 15
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %RBP.i899 = bitcast %union.anon* %891 to i64*
  %892 = load i64, i64* %RBP.i899
  %893 = sub i64 %892, 124
  %894 = load i32, i32* %EAX.i898
  %895 = zext i32 %894 to i64
  %896 = load i64, i64* %PC.i897
  %897 = add i64 %896, 3
  store i64 %897, i64* %PC.i897
  %898 = inttoptr i64 %893 to i32*
  store i32 %894, i32* %898
  store %struct.Memory* %loadMem_40444c, %struct.Memory** %MEMORY
  br label %block_.L_40444f

block_.L_40444f:                                  ; preds = %block_.L_404449, %block_404436
  %loadMem_40444f = load %struct.Memory*, %struct.Memory** %MEMORY
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 33
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %901 to i64*
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 1
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %RAX.i895 = bitcast %union.anon* %904 to i64*
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 15
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %RBP.i896 = bitcast %union.anon* %907 to i64*
  %908 = load i64, i64* %RBP.i896
  %909 = sub i64 %908, 124
  %910 = load i64, i64* %PC.i894
  %911 = add i64 %910, 3
  store i64 %911, i64* %PC.i894
  %912 = inttoptr i64 %909 to i32*
  %913 = load i32, i32* %912
  %914 = zext i32 %913 to i64
  store i64 %914, i64* %RAX.i895, align 8
  store %struct.Memory* %loadMem_40444f, %struct.Memory** %MEMORY
  %loadMem_404452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 33
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %PC.i891 = bitcast %union.anon* %917 to i64*
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 1
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %EAX.i892 = bitcast %union.anon* %920 to i32*
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 15
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %RBP.i893 = bitcast %union.anon* %923 to i64*
  %924 = load i64, i64* %RBP.i893
  %925 = sub i64 %924, 120
  %926 = load i32, i32* %EAX.i892
  %927 = zext i32 %926 to i64
  %928 = load i64, i64* %PC.i891
  %929 = add i64 %928, 3
  store i64 %929, i64* %PC.i891
  %930 = inttoptr i64 %925 to i32*
  store i32 %926, i32* %930
  store %struct.Memory* %loadMem_404452, %struct.Memory** %MEMORY
  %loadMem_404455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 33
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %PC.i888 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 1
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %RAX.i889 = bitcast %union.anon* %936 to i64*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 15
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %RBP.i890 = bitcast %union.anon* %939 to i64*
  %940 = load i64, i64* %RBP.i890
  %941 = sub i64 %940, 108
  %942 = load i64, i64* %PC.i888
  %943 = add i64 %942, 3
  store i64 %943, i64* %PC.i888
  %944 = inttoptr i64 %941 to i32*
  %945 = load i32, i32* %944
  %946 = zext i32 %945 to i64
  store i64 %946, i64* %RAX.i889, align 8
  store %struct.Memory* %loadMem_404455, %struct.Memory** %MEMORY
  %loadMem_404458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %948 = getelementptr inbounds %struct.GPR, %struct.GPR* %947, i32 0, i32 33
  %949 = getelementptr inbounds %struct.Reg, %struct.Reg* %948, i32 0, i32 0
  %PC.i886 = bitcast %union.anon* %949 to i64*
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 1
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %RAX.i887 = bitcast %union.anon* %952 to i64*
  %953 = load i64, i64* %RAX.i887
  %954 = load i64, i64* %PC.i886
  %955 = add i64 %954, 3
  store i64 %955, i64* %PC.i886
  %956 = trunc i64 %953 to i32
  %957 = add i32 1, %956
  %958 = zext i32 %957 to i64
  store i64 %958, i64* %RAX.i887, align 8
  %959 = icmp ult i32 %957, %956
  %960 = icmp ult i32 %957, 1
  %961 = or i1 %959, %960
  %962 = zext i1 %961 to i8
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %962, i8* %963, align 1
  %964 = and i32 %957, 255
  %965 = call i32 @llvm.ctpop.i32(i32 %964)
  %966 = trunc i32 %965 to i8
  %967 = and i8 %966, 1
  %968 = xor i8 %967, 1
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %968, i8* %969, align 1
  %970 = xor i64 1, %953
  %971 = trunc i64 %970 to i32
  %972 = xor i32 %971, %957
  %973 = lshr i32 %972, 4
  %974 = trunc i32 %973 to i8
  %975 = and i8 %974, 1
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %975, i8* %976, align 1
  %977 = icmp eq i32 %957, 0
  %978 = zext i1 %977 to i8
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %978, i8* %979, align 1
  %980 = lshr i32 %957, 31
  %981 = trunc i32 %980 to i8
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %981, i8* %982, align 1
  %983 = lshr i32 %956, 31
  %984 = xor i32 %980, %983
  %985 = add i32 %984, %980
  %986 = icmp eq i32 %985, 2
  %987 = zext i1 %986 to i8
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %987, i8* %988, align 1
  store %struct.Memory* %loadMem_404458, %struct.Memory** %MEMORY
  %loadMem_40445b = load %struct.Memory*, %struct.Memory** %MEMORY
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 33
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %PC.i883 = bitcast %union.anon* %991 to i64*
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 1
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %EAX.i884 = bitcast %union.anon* %994 to i32*
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 15
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %RBP.i885 = bitcast %union.anon* %997 to i64*
  %998 = load i64, i64* %RBP.i885
  %999 = sub i64 %998, 108
  %1000 = load i32, i32* %EAX.i884
  %1001 = zext i32 %1000 to i64
  %1002 = load i64, i64* %PC.i883
  %1003 = add i64 %1002, 3
  store i64 %1003, i64* %PC.i883
  %1004 = inttoptr i64 %999 to i32*
  store i32 %1000, i32* %1004
  store %struct.Memory* %loadMem_40445b, %struct.Memory** %MEMORY
  %loadMem_40445e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 33
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %1007 to i64*
  %1008 = load i64, i64* %PC.i882
  %1009 = add i64 %1008, -119
  %1010 = load i64, i64* %PC.i882
  %1011 = add i64 %1010, 5
  store i64 %1011, i64* %PC.i882
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1009, i64* %1012, align 8
  store %struct.Memory* %loadMem_40445e, %struct.Memory** %MEMORY
  br label %block_.L_4043e7

block_.L_404463:                                  ; preds = %block_.L_4043e7
  %loadMem_404463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 33
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %PC.i880 = bitcast %union.anon* %1015 to i64*
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1017 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1016, i64 0, i64 0
  %YMM0.i881 = bitcast %union.VectorReg* %1017 to %"class.std::bitset"*
  %1018 = bitcast %"class.std::bitset"* %YMM0.i881 to i8*
  %1019 = load i64, i64* %PC.i880
  %1020 = add i64 %1019, ptrtoint (%G_0x50375__rip__type* @G_0x50375__rip_ to i64)
  %1021 = load i64, i64* %PC.i880
  %1022 = add i64 %1021, 8
  store i64 %1022, i64* %PC.i880
  %1023 = inttoptr i64 %1020 to double*
  %1024 = load double, double* %1023
  %1025 = bitcast i8* %1018 to double*
  store double %1024, double* %1025, align 1
  %1026 = getelementptr inbounds i8, i8* %1018, i64 8
  %1027 = bitcast i8* %1026 to double*
  store double 0.000000e+00, double* %1027, align 1
  store %struct.Memory* %loadMem_404463, %struct.Memory** %MEMORY
  %loadMem_40446b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1029 = getelementptr inbounds %struct.GPR, %struct.GPR* %1028, i32 0, i32 33
  %1030 = getelementptr inbounds %struct.Reg, %struct.Reg* %1029, i32 0, i32 0
  %PC.i877 = bitcast %union.anon* %1030 to i64*
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1032 = getelementptr inbounds %struct.GPR, %struct.GPR* %1031, i32 0, i32 15
  %1033 = getelementptr inbounds %struct.Reg, %struct.Reg* %1032, i32 0, i32 0
  %RBP.i878 = bitcast %union.anon* %1033 to i64*
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1035 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1034, i64 0, i64 1
  %YMM1.i879 = bitcast %union.VectorReg* %1035 to %"class.std::bitset"*
  %1036 = bitcast %"class.std::bitset"* %YMM1.i879 to i8*
  %1037 = load i64, i64* %RBP.i878
  %1038 = sub i64 %1037, 76
  %1039 = load i64, i64* %PC.i877
  %1040 = add i64 %1039, 5
  store i64 %1040, i64* %PC.i877
  %1041 = bitcast i8* %1036 to <2 x i32>*
  %1042 = load <2 x i32>, <2 x i32>* %1041, align 1
  %1043 = getelementptr inbounds i8, i8* %1036, i64 8
  %1044 = bitcast i8* %1043 to <2 x i32>*
  %1045 = load <2 x i32>, <2 x i32>* %1044, align 1
  %1046 = inttoptr i64 %1038 to i32*
  %1047 = load i32, i32* %1046
  %1048 = sitofp i32 %1047 to float
  %1049 = bitcast i8* %1036 to float*
  store float %1048, float* %1049, align 1
  %1050 = extractelement <2 x i32> %1042, i32 1
  %1051 = getelementptr inbounds i8, i8* %1036, i64 4
  %1052 = bitcast i8* %1051 to i32*
  store i32 %1050, i32* %1052, align 1
  %1053 = extractelement <2 x i32> %1045, i32 0
  %1054 = bitcast i8* %1043 to i32*
  store i32 %1053, i32* %1054, align 1
  %1055 = extractelement <2 x i32> %1045, i32 1
  %1056 = getelementptr inbounds i8, i8* %1036, i64 12
  %1057 = bitcast i8* %1056 to i32*
  store i32 %1055, i32* %1057, align 1
  store %struct.Memory* %loadMem_40446b, %struct.Memory** %MEMORY
  %loadMem_404470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1059 = getelementptr inbounds %struct.GPR, %struct.GPR* %1058, i32 0, i32 33
  %1060 = getelementptr inbounds %struct.Reg, %struct.Reg* %1059, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %1060 to i64*
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1062 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1061, i64 0, i64 1
  %YMM1.i875 = bitcast %union.VectorReg* %1062 to %"class.std::bitset"*
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1064 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1063, i64 0, i64 1
  %XMM1.i876 = bitcast %union.VectorReg* %1064 to %union.vec128_t*
  %1065 = bitcast %"class.std::bitset"* %YMM1.i875 to i8*
  %1066 = bitcast %union.vec128_t* %XMM1.i876 to i8*
  %1067 = load i64, i64* %PC.i874
  %1068 = add i64 %1067, 4
  store i64 %1068, i64* %PC.i874
  %1069 = bitcast i8* %1066 to <2 x float>*
  %1070 = load <2 x float>, <2 x float>* %1069, align 1
  %1071 = extractelement <2 x float> %1070, i32 0
  %1072 = fpext float %1071 to double
  %1073 = bitcast i8* %1065 to double*
  store double %1072, double* %1073, align 1
  store %struct.Memory* %loadMem_404470, %struct.Memory** %MEMORY
  %loadMem_404474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 33
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %1076 to i64*
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 15
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %RBP.i872 = bitcast %union.anon* %1079 to i64*
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1081 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1080, i64 0, i64 2
  %YMM2.i873 = bitcast %union.VectorReg* %1081 to %"class.std::bitset"*
  %1082 = bitcast %"class.std::bitset"* %YMM2.i873 to i8*
  %1083 = load i64, i64* %RBP.i872
  %1084 = sub i64 %1083, 24
  %1085 = load i64, i64* %PC.i871
  %1086 = add i64 %1085, 5
  store i64 %1086, i64* %PC.i871
  %1087 = inttoptr i64 %1084 to float*
  %1088 = load float, float* %1087
  %1089 = fpext float %1088 to double
  %1090 = bitcast i8* %1082 to double*
  store double %1089, double* %1090, align 1
  store %struct.Memory* %loadMem_404474, %struct.Memory** %MEMORY
  %loadMem_404479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 33
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %PC.i868 = bitcast %union.anon* %1093 to i64*
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 15
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %RBP.i869 = bitcast %union.anon* %1096 to i64*
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1098 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1097, i64 0, i64 3
  %YMM3.i870 = bitcast %union.VectorReg* %1098 to %"class.std::bitset"*
  %1099 = bitcast %"class.std::bitset"* %YMM3.i870 to i8*
  %1100 = load i64, i64* %RBP.i869
  %1101 = sub i64 %1100, 28
  %1102 = load i64, i64* %PC.i868
  %1103 = add i64 %1102, 5
  store i64 %1103, i64* %PC.i868
  %1104 = inttoptr i64 %1101 to float*
  %1105 = load float, float* %1104
  %1106 = fpext float %1105 to double
  %1107 = bitcast i8* %1099 to double*
  store double %1106, double* %1107, align 1
  store %struct.Memory* %loadMem_404479, %struct.Memory** %MEMORY
  %loadMem_40447e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 33
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %PC.i865 = bitcast %union.anon* %1110 to i64*
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1112 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1111, i64 0, i64 4
  %YMM4.i866 = bitcast %union.VectorReg* %1112 to %"class.std::bitset"*
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1114 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1113, i64 0, i64 0
  %XMM0.i867 = bitcast %union.VectorReg* %1114 to %union.vec128_t*
  %1115 = bitcast %"class.std::bitset"* %YMM4.i866 to i8*
  %1116 = bitcast %union.vec128_t* %XMM0.i867 to i8*
  %1117 = load i64, i64* %PC.i865
  %1118 = add i64 %1117, 3
  store i64 %1118, i64* %PC.i865
  %1119 = bitcast i8* %1116 to <2 x i32>*
  %1120 = load <2 x i32>, <2 x i32>* %1119, align 1
  %1121 = getelementptr inbounds i8, i8* %1116, i64 8
  %1122 = bitcast i8* %1121 to <2 x i32>*
  %1123 = load <2 x i32>, <2 x i32>* %1122, align 1
  %1124 = extractelement <2 x i32> %1120, i32 0
  %1125 = bitcast i8* %1115 to i32*
  store i32 %1124, i32* %1125, align 1
  %1126 = extractelement <2 x i32> %1120, i32 1
  %1127 = getelementptr inbounds i8, i8* %1115, i64 4
  %1128 = bitcast i8* %1127 to i32*
  store i32 %1126, i32* %1128, align 1
  %1129 = extractelement <2 x i32> %1123, i32 0
  %1130 = getelementptr inbounds i8, i8* %1115, i64 8
  %1131 = bitcast i8* %1130 to i32*
  store i32 %1129, i32* %1131, align 1
  %1132 = extractelement <2 x i32> %1123, i32 1
  %1133 = getelementptr inbounds i8, i8* %1115, i64 12
  %1134 = bitcast i8* %1133 to i32*
  store i32 %1132, i32* %1134, align 1
  store %struct.Memory* %loadMem_40447e, %struct.Memory** %MEMORY
  %loadMem_404481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 33
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %1137 to i64*
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1139 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1138, i64 0, i64 4
  %YMM4.i863 = bitcast %union.VectorReg* %1139 to %"class.std::bitset"*
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1141 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1140, i64 0, i64 3
  %XMM3.i864 = bitcast %union.VectorReg* %1141 to %union.vec128_t*
  %1142 = bitcast %"class.std::bitset"* %YMM4.i863 to i8*
  %1143 = bitcast %"class.std::bitset"* %YMM4.i863 to i8*
  %1144 = bitcast %union.vec128_t* %XMM3.i864 to i8*
  %1145 = load i64, i64* %PC.i862
  %1146 = add i64 %1145, 4
  store i64 %1146, i64* %PC.i862
  %1147 = bitcast i8* %1143 to double*
  %1148 = load double, double* %1147, align 1
  %1149 = getelementptr inbounds i8, i8* %1143, i64 8
  %1150 = bitcast i8* %1149 to i64*
  %1151 = load i64, i64* %1150, align 1
  %1152 = bitcast i8* %1144 to double*
  %1153 = load double, double* %1152, align 1
  %1154 = fsub double %1148, %1153
  %1155 = bitcast i8* %1142 to double*
  store double %1154, double* %1155, align 1
  %1156 = getelementptr inbounds i8, i8* %1142, i64 8
  %1157 = bitcast i8* %1156 to i64*
  store i64 %1151, i64* %1157, align 1
  store %struct.Memory* %loadMem_404481, %struct.Memory** %MEMORY
  %loadMem_404485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 33
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %1160 to i64*
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1162 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1161, i64 0, i64 3
  %YMM3.i860 = bitcast %union.VectorReg* %1162 to %"class.std::bitset"*
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1164 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1163, i64 0, i64 0
  %XMM0.i861 = bitcast %union.VectorReg* %1164 to %union.vec128_t*
  %1165 = bitcast %"class.std::bitset"* %YMM3.i860 to i8*
  %1166 = bitcast %union.vec128_t* %XMM0.i861 to i8*
  %1167 = load i64, i64* %PC.i859
  %1168 = add i64 %1167, 3
  store i64 %1168, i64* %PC.i859
  %1169 = bitcast i8* %1166 to <2 x i32>*
  %1170 = load <2 x i32>, <2 x i32>* %1169, align 1
  %1171 = getelementptr inbounds i8, i8* %1166, i64 8
  %1172 = bitcast i8* %1171 to <2 x i32>*
  %1173 = load <2 x i32>, <2 x i32>* %1172, align 1
  %1174 = extractelement <2 x i32> %1170, i32 0
  %1175 = bitcast i8* %1165 to i32*
  store i32 %1174, i32* %1175, align 1
  %1176 = extractelement <2 x i32> %1170, i32 1
  %1177 = getelementptr inbounds i8, i8* %1165, i64 4
  %1178 = bitcast i8* %1177 to i32*
  store i32 %1176, i32* %1178, align 1
  %1179 = extractelement <2 x i32> %1173, i32 0
  %1180 = getelementptr inbounds i8, i8* %1165, i64 8
  %1181 = bitcast i8* %1180 to i32*
  store i32 %1179, i32* %1181, align 1
  %1182 = extractelement <2 x i32> %1173, i32 1
  %1183 = getelementptr inbounds i8, i8* %1165, i64 12
  %1184 = bitcast i8* %1183 to i32*
  store i32 %1182, i32* %1184, align 1
  store %struct.Memory* %loadMem_404485, %struct.Memory** %MEMORY
  %loadMem_404488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 33
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %PC.i857 = bitcast %union.anon* %1187 to i64*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1189 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1188, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %1189 to %"class.std::bitset"*
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1191 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1190, i64 0, i64 4
  %XMM4.i858 = bitcast %union.VectorReg* %1191 to %union.vec128_t*
  %1192 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %1193 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %1194 = bitcast %union.vec128_t* %XMM4.i858 to i8*
  %1195 = load i64, i64* %PC.i857
  %1196 = add i64 %1195, 4
  store i64 %1196, i64* %PC.i857
  %1197 = bitcast i8* %1193 to double*
  %1198 = load double, double* %1197, align 1
  %1199 = getelementptr inbounds i8, i8* %1193, i64 8
  %1200 = bitcast i8* %1199 to i64*
  %1201 = load i64, i64* %1200, align 1
  %1202 = bitcast i8* %1194 to double*
  %1203 = load double, double* %1202, align 1
  %1204 = fdiv double %1198, %1203
  %1205 = bitcast i8* %1192 to double*
  store double %1204, double* %1205, align 1
  %1206 = getelementptr inbounds i8, i8* %1192, i64 8
  %1207 = bitcast i8* %1206 to i64*
  store i64 %1201, i64* %1207, align 1
  store %struct.Memory* %loadMem_404488, %struct.Memory** %MEMORY
  %loadMem_40448c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 33
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %PC.i854 = bitcast %union.anon* %1210 to i64*
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1212 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1211, i64 0, i64 4
  %YMM4.i855 = bitcast %union.VectorReg* %1212 to %"class.std::bitset"*
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1214 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1213, i64 0, i64 0
  %XMM0.i856 = bitcast %union.VectorReg* %1214 to %union.vec128_t*
  %1215 = bitcast %"class.std::bitset"* %YMM4.i855 to i8*
  %1216 = bitcast %union.vec128_t* %XMM0.i856 to i8*
  %1217 = load i64, i64* %PC.i854
  %1218 = add i64 %1217, 3
  store i64 %1218, i64* %PC.i854
  %1219 = bitcast i8* %1216 to <2 x i32>*
  %1220 = load <2 x i32>, <2 x i32>* %1219, align 1
  %1221 = getelementptr inbounds i8, i8* %1216, i64 8
  %1222 = bitcast i8* %1221 to <2 x i32>*
  %1223 = load <2 x i32>, <2 x i32>* %1222, align 1
  %1224 = extractelement <2 x i32> %1220, i32 0
  %1225 = bitcast i8* %1215 to i32*
  store i32 %1224, i32* %1225, align 1
  %1226 = extractelement <2 x i32> %1220, i32 1
  %1227 = getelementptr inbounds i8, i8* %1215, i64 4
  %1228 = bitcast i8* %1227 to i32*
  store i32 %1226, i32* %1228, align 1
  %1229 = extractelement <2 x i32> %1223, i32 0
  %1230 = getelementptr inbounds i8, i8* %1215, i64 8
  %1231 = bitcast i8* %1230 to i32*
  store i32 %1229, i32* %1231, align 1
  %1232 = extractelement <2 x i32> %1223, i32 1
  %1233 = getelementptr inbounds i8, i8* %1215, i64 12
  %1234 = bitcast i8* %1233 to i32*
  store i32 %1232, i32* %1234, align 1
  store %struct.Memory* %loadMem_40448c, %struct.Memory** %MEMORY
  %loadMem_40448f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 33
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %1237 to i64*
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1239 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1238, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %1239 to %"class.std::bitset"*
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1241 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1240, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %1241 to %union.vec128_t*
  %1242 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %1243 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %1244 = bitcast %union.vec128_t* %XMM3.i to i8*
  %1245 = load i64, i64* %PC.i853
  %1246 = add i64 %1245, 4
  store i64 %1246, i64* %PC.i853
  %1247 = bitcast i8* %1243 to double*
  %1248 = load double, double* %1247, align 1
  %1249 = getelementptr inbounds i8, i8* %1243, i64 8
  %1250 = bitcast i8* %1249 to i64*
  %1251 = load i64, i64* %1250, align 1
  %1252 = bitcast i8* %1244 to double*
  %1253 = load double, double* %1252, align 1
  %1254 = fadd double %1248, %1253
  %1255 = bitcast i8* %1242 to double*
  store double %1254, double* %1255, align 1
  %1256 = getelementptr inbounds i8, i8* %1242, i64 8
  %1257 = bitcast i8* %1256 to i64*
  store i64 %1251, i64* %1257, align 1
  store %struct.Memory* %loadMem_40448f, %struct.Memory** %MEMORY
  %loadMem_404493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 33
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %PC.i851 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1262 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1261, i64 0, i64 2
  %YMM2.i852 = bitcast %union.VectorReg* %1262 to %"class.std::bitset"*
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1264 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1263, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %1264 to %union.vec128_t*
  %1265 = bitcast %"class.std::bitset"* %YMM2.i852 to i8*
  %1266 = bitcast %"class.std::bitset"* %YMM2.i852 to i8*
  %1267 = bitcast %union.vec128_t* %XMM4.i to i8*
  %1268 = load i64, i64* %PC.i851
  %1269 = add i64 %1268, 4
  store i64 %1269, i64* %PC.i851
  %1270 = bitcast i8* %1266 to double*
  %1271 = load double, double* %1270, align 1
  %1272 = getelementptr inbounds i8, i8* %1266, i64 8
  %1273 = bitcast i8* %1272 to i64*
  %1274 = load i64, i64* %1273, align 1
  %1275 = bitcast i8* %1267 to double*
  %1276 = load double, double* %1275, align 1
  %1277 = fmul double %1271, %1276
  %1278 = bitcast i8* %1265 to double*
  store double %1277, double* %1278, align 1
  %1279 = getelementptr inbounds i8, i8* %1265, i64 8
  %1280 = bitcast i8* %1279 to i64*
  store i64 %1274, i64* %1280, align 1
  store %struct.Memory* %loadMem_404493, %struct.Memory** %MEMORY
  %loadMem_404497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 33
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %1283 to i64*
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1285 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1284, i64 0, i64 0
  %YMM0.i849 = bitcast %union.VectorReg* %1285 to %"class.std::bitset"*
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1287 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1286, i64 0, i64 2
  %XMM2.i850 = bitcast %union.VectorReg* %1287 to %union.vec128_t*
  %1288 = bitcast %"class.std::bitset"* %YMM0.i849 to i8*
  %1289 = bitcast %"class.std::bitset"* %YMM0.i849 to i8*
  %1290 = bitcast %union.vec128_t* %XMM2.i850 to i8*
  %1291 = load i64, i64* %PC.i848
  %1292 = add i64 %1291, 4
  store i64 %1292, i64* %PC.i848
  %1293 = bitcast i8* %1289 to double*
  %1294 = load double, double* %1293, align 1
  %1295 = getelementptr inbounds i8, i8* %1289, i64 8
  %1296 = bitcast i8* %1295 to i64*
  %1297 = load i64, i64* %1296, align 1
  %1298 = bitcast i8* %1290 to double*
  %1299 = load double, double* %1298, align 1
  %1300 = fadd double %1294, %1299
  %1301 = bitcast i8* %1288 to double*
  store double %1300, double* %1301, align 1
  %1302 = getelementptr inbounds i8, i8* %1288, i64 8
  %1303 = bitcast i8* %1302 to i64*
  store i64 %1297, i64* %1303, align 1
  store %struct.Memory* %loadMem_404497, %struct.Memory** %MEMORY
  %loadMem_40449b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 33
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %1306 to i64*
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1308 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1307, i64 0, i64 1
  %YMM1.i846 = bitcast %union.VectorReg* %1308 to %"class.std::bitset"*
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1310 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1309, i64 0, i64 0
  %XMM0.i847 = bitcast %union.VectorReg* %1310 to %union.vec128_t*
  %1311 = bitcast %"class.std::bitset"* %YMM1.i846 to i8*
  %1312 = bitcast %"class.std::bitset"* %YMM1.i846 to i8*
  %1313 = bitcast %union.vec128_t* %XMM0.i847 to i8*
  %1314 = load i64, i64* %PC.i845
  %1315 = add i64 %1314, 4
  store i64 %1315, i64* %PC.i845
  %1316 = bitcast i8* %1312 to double*
  %1317 = load double, double* %1316, align 1
  %1318 = getelementptr inbounds i8, i8* %1312, i64 8
  %1319 = bitcast i8* %1318 to i64*
  %1320 = load i64, i64* %1319, align 1
  %1321 = bitcast i8* %1313 to double*
  %1322 = load double, double* %1321, align 1
  %1323 = fdiv double %1317, %1322
  %1324 = bitcast i8* %1311 to double*
  store double %1323, double* %1324, align 1
  %1325 = getelementptr inbounds i8, i8* %1311, i64 8
  %1326 = bitcast i8* %1325 to i64*
  store i64 %1320, i64* %1326, align 1
  store %struct.Memory* %loadMem_40449b, %struct.Memory** %MEMORY
  %loadMem_40449f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 33
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %1329 to i64*
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 1
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %RAX.i843 = bitcast %union.anon* %1332 to i64*
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1334 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1333, i64 0, i64 1
  %XMM1.i844 = bitcast %union.VectorReg* %1334 to %union.vec128_t*
  %1335 = bitcast %union.vec128_t* %XMM1.i844 to i8*
  %1336 = load i64, i64* %PC.i842
  %1337 = add i64 %1336, 4
  store i64 %1337, i64* %PC.i842
  %1338 = bitcast i8* %1335 to double*
  %1339 = load double, double* %1338, align 1
  %1340 = call double @llvm.trunc.f64(double %1339)
  %1341 = call double @llvm.fabs.f64(double %1340)
  %1342 = fcmp ogt double %1341, 0x41DFFFFFFFC00000
  %1343 = fptosi double %1340 to i32
  %1344 = zext i32 %1343 to i64
  %1345 = select i1 %1342, i64 2147483648, i64 %1344
  store i64 %1345, i64* %RAX.i843, align 8
  store %struct.Memory* %loadMem_40449f, %struct.Memory** %MEMORY
  %loadMem_4044a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 33
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %1348 to i64*
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 1
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %EAX.i840 = bitcast %union.anon* %1351 to i32*
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 15
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %RBP.i841 = bitcast %union.anon* %1354 to i64*
  %1355 = load i64, i64* %RBP.i841
  %1356 = sub i64 %1355, 76
  %1357 = load i32, i32* %EAX.i840
  %1358 = zext i32 %1357 to i64
  %1359 = load i64, i64* %PC.i839
  %1360 = add i64 %1359, 3
  store i64 %1360, i64* %PC.i839
  %1361 = inttoptr i64 %1356 to i32*
  store i32 %1357, i32* %1361
  store %struct.Memory* %loadMem_4044a3, %struct.Memory** %MEMORY
  %loadMem_4044a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 33
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %1364 to i64*
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 1
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %RAX.i837 = bitcast %union.anon* %1367 to i64*
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 15
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %RBP.i838 = bitcast %union.anon* %1370 to i64*
  %1371 = load i64, i64* %RBP.i838
  %1372 = sub i64 %1371, 20
  %1373 = load i64, i64* %PC.i836
  %1374 = add i64 %1373, 3
  store i64 %1374, i64* %PC.i836
  %1375 = inttoptr i64 %1372 to i32*
  %1376 = load i32, i32* %1375
  %1377 = zext i32 %1376 to i64
  store i64 %1377, i64* %RAX.i837, align 8
  store %struct.Memory* %loadMem_4044a6, %struct.Memory** %MEMORY
  %loadMem_4044a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 33
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %1380 to i64*
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1382 = getelementptr inbounds %struct.GPR, %struct.GPR* %1381, i32 0, i32 5
  %1383 = getelementptr inbounds %struct.Reg, %struct.Reg* %1382, i32 0, i32 0
  %RCX.i834 = bitcast %union.anon* %1383 to i64*
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 15
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %RBP.i835 = bitcast %union.anon* %1386 to i64*
  %1387 = load i64, i64* %RBP.i835
  %1388 = sub i64 %1387, 76
  %1389 = load i64, i64* %PC.i833
  %1390 = add i64 %1389, 3
  store i64 %1390, i64* %PC.i833
  %1391 = inttoptr i64 %1388 to i32*
  %1392 = load i32, i32* %1391
  %1393 = zext i32 %1392 to i64
  store i64 %1393, i64* %RCX.i834, align 8
  store %struct.Memory* %loadMem_4044a9, %struct.Memory** %MEMORY
  %loadMem_4044ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 33
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %1396 to i64*
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 1
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %EAX.i831 = bitcast %union.anon* %1399 to i32*
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1401 = getelementptr inbounds %struct.GPR, %struct.GPR* %1400, i32 0, i32 15
  %1402 = getelementptr inbounds %struct.Reg, %struct.Reg* %1401, i32 0, i32 0
  %RBP.i832 = bitcast %union.anon* %1402 to i64*
  %1403 = load i64, i64* %RBP.i832
  %1404 = sub i64 %1403, 128
  %1405 = load i32, i32* %EAX.i831
  %1406 = zext i32 %1405 to i64
  %1407 = load i64, i64* %PC.i830
  %1408 = add i64 %1407, 3
  store i64 %1408, i64* %PC.i830
  %1409 = inttoptr i64 %1404 to i32*
  store i32 %1405, i32* %1409
  store %struct.Memory* %loadMem_4044ac, %struct.Memory** %MEMORY
  %loadMem_4044af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1411 = getelementptr inbounds %struct.GPR, %struct.GPR* %1410, i32 0, i32 33
  %1412 = getelementptr inbounds %struct.Reg, %struct.Reg* %1411, i32 0, i32 0
  %PC.i827 = bitcast %union.anon* %1412 to i64*
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1414 = getelementptr inbounds %struct.GPR, %struct.GPR* %1413, i32 0, i32 5
  %1415 = getelementptr inbounds %struct.Reg, %struct.Reg* %1414, i32 0, i32 0
  %ECX.i828 = bitcast %union.anon* %1415 to i32*
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 1
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %RAX.i829 = bitcast %union.anon* %1418 to i64*
  %1419 = load i32, i32* %ECX.i828
  %1420 = zext i32 %1419 to i64
  %1421 = load i64, i64* %PC.i827
  %1422 = add i64 %1421, 2
  store i64 %1422, i64* %PC.i827
  %1423 = and i64 %1420, 4294967295
  store i64 %1423, i64* %RAX.i829, align 8
  store %struct.Memory* %loadMem_4044af, %struct.Memory** %MEMORY
  %loadMem_4044b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 33
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %1426 to i64*
  %1427 = load i64, i64* %PC.i826
  %1428 = add i64 %1427, 1
  store i64 %1428, i64* %PC.i826
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1431 = bitcast %union.anon* %1430 to i32*
  %1432 = load i32, i32* %1431, align 8
  %1433 = sext i32 %1432 to i64
  %1434 = lshr i64 %1433, 32
  store i64 %1434, i64* %1429, align 8
  store %struct.Memory* %loadMem_4044b1, %struct.Memory** %MEMORY
  %loadMem_4044b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 33
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %1437 to i64*
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1439 = getelementptr inbounds %struct.GPR, %struct.GPR* %1438, i32 0, i32 5
  %1440 = getelementptr inbounds %struct.Reg, %struct.Reg* %1439, i32 0, i32 0
  %RCX.i824 = bitcast %union.anon* %1440 to i64*
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 15
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %RBP.i825 = bitcast %union.anon* %1443 to i64*
  %1444 = load i64, i64* %RBP.i825
  %1445 = sub i64 %1444, 128
  %1446 = load i64, i64* %PC.i823
  %1447 = add i64 %1446, 3
  store i64 %1447, i64* %PC.i823
  %1448 = inttoptr i64 %1445 to i32*
  %1449 = load i32, i32* %1448
  %1450 = zext i32 %1449 to i64
  store i64 %1450, i64* %RCX.i824, align 8
  store %struct.Memory* %loadMem_4044b2, %struct.Memory** %MEMORY
  %loadMem_4044b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 33
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %1453 to i64*
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 5
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %ECX.i821 = bitcast %union.anon* %1456 to i32*
  %1457 = load i32, i32* %ECX.i821
  %1458 = zext i32 %1457 to i64
  %1459 = load i64, i64* %PC.i820
  %1460 = add i64 %1459, 2
  store i64 %1460, i64* %PC.i820
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1462 = bitcast %union.anon* %1461 to i32*
  %1463 = load i32, i32* %1462, align 8
  %1464 = zext i32 %1463 to i64
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1466 = bitcast %union.anon* %1465 to i32*
  %1467 = load i32, i32* %1466, align 8
  %1468 = zext i32 %1467 to i64
  %1469 = shl i64 %1458, 32
  %1470 = ashr exact i64 %1469, 32
  %1471 = shl i64 %1468, 32
  %1472 = or i64 %1471, %1464
  %1473 = sdiv i64 %1472, %1470
  %1474 = shl i64 %1473, 32
  %1475 = ashr exact i64 %1474, 32
  %1476 = icmp eq i64 %1473, %1475
  br i1 %1476, label %1481, label %1477

; <label>:1477:                                   ; preds = %block_.L_404463
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1479 = load i64, i64* %1478, align 8
  %1480 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1479, %struct.Memory* %loadMem_4044b5)
  br label %routine_idivl__ecx.exit

; <label>:1481:                                   ; preds = %block_.L_404463
  %1482 = srem i64 %1472, %1470
  %1483 = getelementptr inbounds %union.anon, %union.anon* %1461, i64 0, i32 0
  %1484 = and i64 %1473, 4294967295
  store i64 %1484, i64* %1483, align 8
  %1485 = getelementptr inbounds %union.anon, %union.anon* %1465, i64 0, i32 0
  %1486 = and i64 %1482, 4294967295
  store i64 %1486, i64* %1485, align 8
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1487, align 1
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1488, align 1
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1489, align 1
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1490, align 1
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1491, align 1
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1492, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1477, %1481
  %1493 = phi %struct.Memory* [ %1480, %1477 ], [ %loadMem_4044b5, %1481 ]
  store %struct.Memory* %1493, %struct.Memory** %MEMORY
  %loadMem_4044b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 33
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %1496 to i64*
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 1
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %EAX.i818 = bitcast %union.anon* %1499 to i32*
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1501 = getelementptr inbounds %struct.GPR, %struct.GPR* %1500, i32 0, i32 15
  %1502 = getelementptr inbounds %struct.Reg, %struct.Reg* %1501, i32 0, i32 0
  %RBP.i819 = bitcast %union.anon* %1502 to i64*
  %1503 = load i64, i64* %RBP.i819
  %1504 = sub i64 %1503, 76
  %1505 = load i32, i32* %EAX.i818
  %1506 = zext i32 %1505 to i64
  %1507 = load i64, i64* %PC.i817
  %1508 = add i64 %1507, 3
  store i64 %1508, i64* %PC.i817
  %1509 = inttoptr i64 %1504 to i32*
  store i32 %1505, i32* %1509
  store %struct.Memory* %loadMem_4044b7, %struct.Memory** %MEMORY
  %loadMem_4044ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 33
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 1
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %RAX.i815 = bitcast %union.anon* %1515 to i64*
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 15
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %RBP.i816 = bitcast %union.anon* %1518 to i64*
  %1519 = load i64, i64* %RBP.i816
  %1520 = sub i64 %1519, 76
  %1521 = load i64, i64* %PC.i814
  %1522 = add i64 %1521, 3
  store i64 %1522, i64* %PC.i814
  %1523 = inttoptr i64 %1520 to i32*
  %1524 = load i32, i32* %1523
  %1525 = zext i32 %1524 to i64
  store i64 %1525, i64* %RAX.i815, align 8
  store %struct.Memory* %loadMem_4044ba, %struct.Memory** %MEMORY
  %loadMem_4044bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 33
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %PC.i811 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 1
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %EAX.i812 = bitcast %union.anon* %1531 to i32*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 15
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %RBP.i813 = bitcast %union.anon* %1534 to i64*
  %1535 = load i32, i32* %EAX.i812
  %1536 = zext i32 %1535 to i64
  %1537 = load i64, i64* %RBP.i813
  %1538 = sub i64 %1537, 120
  %1539 = load i64, i64* %PC.i811
  %1540 = add i64 %1539, 3
  store i64 %1540, i64* %PC.i811
  %1541 = inttoptr i64 %1538 to i32*
  %1542 = load i32, i32* %1541
  %1543 = sub i32 %1535, %1542
  %1544 = icmp ult i32 %1535, %1542
  %1545 = zext i1 %1544 to i8
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1545, i8* %1546, align 1
  %1547 = and i32 %1543, 255
  %1548 = call i32 @llvm.ctpop.i32(i32 %1547)
  %1549 = trunc i32 %1548 to i8
  %1550 = and i8 %1549, 1
  %1551 = xor i8 %1550, 1
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1551, i8* %1552, align 1
  %1553 = xor i32 %1542, %1535
  %1554 = xor i32 %1553, %1543
  %1555 = lshr i32 %1554, 4
  %1556 = trunc i32 %1555 to i8
  %1557 = and i8 %1556, 1
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1557, i8* %1558, align 1
  %1559 = icmp eq i32 %1543, 0
  %1560 = zext i1 %1559 to i8
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1560, i8* %1561, align 1
  %1562 = lshr i32 %1543, 31
  %1563 = trunc i32 %1562 to i8
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1563, i8* %1564, align 1
  %1565 = lshr i32 %1535, 31
  %1566 = lshr i32 %1542, 31
  %1567 = xor i32 %1566, %1565
  %1568 = xor i32 %1562, %1565
  %1569 = add i32 %1568, %1567
  %1570 = icmp eq i32 %1569, 2
  %1571 = zext i1 %1570 to i8
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1571, i8* %1572, align 1
  store %struct.Memory* %loadMem_4044bd, %struct.Memory** %MEMORY
  %loadMem_4044c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1574 = getelementptr inbounds %struct.GPR, %struct.GPR* %1573, i32 0, i32 33
  %1575 = getelementptr inbounds %struct.Reg, %struct.Reg* %1574, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %1575 to i64*
  %1576 = load i64, i64* %PC.i810
  %1577 = add i64 %1576, 12
  %1578 = load i64, i64* %PC.i810
  %1579 = add i64 %1578, 6
  %1580 = load i64, i64* %PC.i810
  %1581 = add i64 %1580, 6
  store i64 %1581, i64* %PC.i810
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1583 = load i8, i8* %1582, align 1
  %1584 = icmp ne i8 %1583, 0
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1586 = load i8, i8* %1585, align 1
  %1587 = icmp ne i8 %1586, 0
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1589 = load i8, i8* %1588, align 1
  %1590 = icmp ne i8 %1589, 0
  %1591 = xor i1 %1587, %1590
  %1592 = or i1 %1584, %1591
  %1593 = zext i1 %1592 to i8
  store i8 %1593, i8* %BRANCH_TAKEN, align 1
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1595 = select i1 %1592, i64 %1577, i64 %1579
  store i64 %1595, i64* %1594, align 8
  store %struct.Memory* %loadMem_4044c0, %struct.Memory** %MEMORY
  %loadBr_4044c0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4044c0 = icmp eq i8 %loadBr_4044c0, 1
  br i1 %cmpBr_4044c0, label %block_.L_4044cc, label %block_4044c6

block_4044c6:                                     ; preds = %routine_idivl__ecx.exit
  %loadMem_4044c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1597 = getelementptr inbounds %struct.GPR, %struct.GPR* %1596, i32 0, i32 33
  %1598 = getelementptr inbounds %struct.Reg, %struct.Reg* %1597, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %1598 to i64*
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1600 = getelementptr inbounds %struct.GPR, %struct.GPR* %1599, i32 0, i32 1
  %1601 = getelementptr inbounds %struct.Reg, %struct.Reg* %1600, i32 0, i32 0
  %RAX.i808 = bitcast %union.anon* %1601 to i64*
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 15
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %RBP.i809 = bitcast %union.anon* %1604 to i64*
  %1605 = load i64, i64* %RBP.i809
  %1606 = sub i64 %1605, 120
  %1607 = load i64, i64* %PC.i807
  %1608 = add i64 %1607, 3
  store i64 %1608, i64* %PC.i807
  %1609 = inttoptr i64 %1606 to i32*
  %1610 = load i32, i32* %1609
  %1611 = zext i32 %1610 to i64
  store i64 %1611, i64* %RAX.i808, align 8
  store %struct.Memory* %loadMem_4044c6, %struct.Memory** %MEMORY
  %loadMem_4044c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 33
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %1614 to i64*
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1616 = getelementptr inbounds %struct.GPR, %struct.GPR* %1615, i32 0, i32 1
  %1617 = getelementptr inbounds %struct.Reg, %struct.Reg* %1616, i32 0, i32 0
  %EAX.i805 = bitcast %union.anon* %1617 to i32*
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1619 = getelementptr inbounds %struct.GPR, %struct.GPR* %1618, i32 0, i32 15
  %1620 = getelementptr inbounds %struct.Reg, %struct.Reg* %1619, i32 0, i32 0
  %RBP.i806 = bitcast %union.anon* %1620 to i64*
  %1621 = load i64, i64* %RBP.i806
  %1622 = sub i64 %1621, 76
  %1623 = load i32, i32* %EAX.i805
  %1624 = zext i32 %1623 to i64
  %1625 = load i64, i64* %PC.i804
  %1626 = add i64 %1625, 3
  store i64 %1626, i64* %PC.i804
  %1627 = inttoptr i64 %1622 to i32*
  store i32 %1623, i32* %1627
  store %struct.Memory* %loadMem_4044c9, %struct.Memory** %MEMORY
  br label %block_.L_4044cc

block_.L_4044cc:                                  ; preds = %block_4044c6, %routine_idivl__ecx.exit
  %loadMem_4044cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 33
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %1630 to i64*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 11
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %RDI.i803 = bitcast %union.anon* %1633 to i64*
  %1634 = load i64, i64* %PC.i802
  %1635 = add i64 %1634, 10
  store i64 %1635, i64* %PC.i802
  store i64 ptrtoint (%G__0x4559fe_type* @G__0x4559fe to i64), i64* %RDI.i803, align 8
  store %struct.Memory* %loadMem_4044cc, %struct.Memory** %MEMORY
  %loadMem_4044d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 33
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %1638 to i64*
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 9
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %RSI.i801 = bitcast %union.anon* %1641 to i64*
  %1642 = load i64, i64* %PC.i800
  %1643 = add i64 %1642, 5
  store i64 %1643, i64* %PC.i800
  store i64 545, i64* %RSI.i801, align 8
  store %struct.Memory* %loadMem_4044d6, %struct.Memory** %MEMORY
  %loadMem_4044db = load %struct.Memory*, %struct.Memory** %MEMORY
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 33
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %1646 to i64*
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1648 = getelementptr inbounds %struct.GPR, %struct.GPR* %1647, i32 0, i32 1
  %1649 = getelementptr inbounds %struct.Reg, %struct.Reg* %1648, i32 0, i32 0
  %RAX.i798 = bitcast %union.anon* %1649 to i64*
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 15
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %RBP.i799 = bitcast %union.anon* %1652 to i64*
  %1653 = load i64, i64* %RBP.i799
  %1654 = sub i64 %1653, 20
  %1655 = load i64, i64* %PC.i797
  %1656 = add i64 %1655, 4
  store i64 %1656, i64* %PC.i797
  %1657 = inttoptr i64 %1654 to i32*
  %1658 = load i32, i32* %1657
  %1659 = sext i32 %1658 to i64
  store i64 %1659, i64* %RAX.i798, align 8
  store %struct.Memory* %loadMem_4044db, %struct.Memory** %MEMORY
  %loadMem_4044df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 33
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %1662 to i64*
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 1
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %RAX.i796 = bitcast %union.anon* %1665 to i64*
  %1666 = load i64, i64* %RAX.i796
  %1667 = load i64, i64* %PC.i795
  %1668 = add i64 %1667, 4
  store i64 %1668, i64* %PC.i795
  %1669 = shl i64 %1666, 2
  %1670 = icmp slt i64 %1669, 0
  %1671 = shl i64 %1669, 1
  store i64 %1671, i64* %RAX.i796, align 8
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1673 = zext i1 %1670 to i8
  store i8 %1673, i8* %1672, align 1
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1675 = trunc i64 %1671 to i32
  %1676 = and i32 %1675, 254
  %1677 = call i32 @llvm.ctpop.i32(i32 %1676)
  %1678 = trunc i32 %1677 to i8
  %1679 = and i8 %1678, 1
  %1680 = xor i8 %1679, 1
  store i8 %1680, i8* %1674, align 1
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1681, align 1
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1683 = icmp eq i64 %1671, 0
  %1684 = zext i1 %1683 to i8
  store i8 %1684, i8* %1682, align 1
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1686 = lshr i64 %1671, 63
  %1687 = trunc i64 %1686 to i8
  store i8 %1687, i8* %1685, align 1
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1688, align 1
  store %struct.Memory* %loadMem_4044df, %struct.Memory** %MEMORY
  %loadMem_4044e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1690 = getelementptr inbounds %struct.GPR, %struct.GPR* %1689, i32 0, i32 33
  %1691 = getelementptr inbounds %struct.Reg, %struct.Reg* %1690, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %1691 to i64*
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1693 = getelementptr inbounds %struct.GPR, %struct.GPR* %1692, i32 0, i32 1
  %1694 = getelementptr inbounds %struct.Reg, %struct.Reg* %1693, i32 0, i32 0
  %RAX.i793 = bitcast %union.anon* %1694 to i64*
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1696 = getelementptr inbounds %struct.GPR, %struct.GPR* %1695, i32 0, i32 7
  %1697 = getelementptr inbounds %struct.Reg, %struct.Reg* %1696, i32 0, i32 0
  %RDX.i794 = bitcast %union.anon* %1697 to i64*
  %1698 = load i64, i64* %RAX.i793
  %1699 = load i64, i64* %PC.i792
  %1700 = add i64 %1699, 3
  store i64 %1700, i64* %PC.i792
  store i64 %1698, i64* %RDX.i794, align 8
  store %struct.Memory* %loadMem_4044e3, %struct.Memory** %MEMORY
  %loadMem1_4044e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1702 = getelementptr inbounds %struct.GPR, %struct.GPR* %1701, i32 0, i32 33
  %1703 = getelementptr inbounds %struct.Reg, %struct.Reg* %1702, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %1703 to i64*
  %1704 = load i64, i64* %PC.i791
  %1705 = add i64 %1704, 269178
  %1706 = load i64, i64* %PC.i791
  %1707 = add i64 %1706, 5
  %1708 = load i64, i64* %PC.i791
  %1709 = add i64 %1708, 5
  store i64 %1709, i64* %PC.i791
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1711 = load i64, i64* %1710, align 8
  %1712 = add i64 %1711, -8
  %1713 = inttoptr i64 %1712 to i64*
  store i64 %1707, i64* %1713
  store i64 %1712, i64* %1710, align 8
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1705, i64* %1714, align 8
  store %struct.Memory* %loadMem1_4044e6, %struct.Memory** %MEMORY
  %loadMem2_4044e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4044e6 = load i64, i64* %3
  %call2_4044e6 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_4044e6, %struct.Memory* %loadMem2_4044e6)
  store %struct.Memory* %call2_4044e6, %struct.Memory** %MEMORY
  %loadMem_4044eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 33
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %1717 to i64*
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 11
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %RDI.i790 = bitcast %union.anon* %1720 to i64*
  %1721 = load i64, i64* %PC.i789
  %1722 = add i64 %1721, 10
  store i64 %1722, i64* %PC.i789
  store i64 ptrtoint (%G__0x4559fe_type* @G__0x4559fe to i64), i64* %RDI.i790, align 8
  store %struct.Memory* %loadMem_4044eb, %struct.Memory** %MEMORY
  %loadMem_4044f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 33
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %1725 to i64*
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 9
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %RSI.i788 = bitcast %union.anon* %1728 to i64*
  %1729 = load i64, i64* %PC.i787
  %1730 = add i64 %1729, 5
  store i64 %1730, i64* %PC.i787
  store i64 546, i64* %RSI.i788, align 8
  store %struct.Memory* %loadMem_4044f5, %struct.Memory** %MEMORY
  %loadMem_4044fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1732 = getelementptr inbounds %struct.GPR, %struct.GPR* %1731, i32 0, i32 33
  %1733 = getelementptr inbounds %struct.Reg, %struct.Reg* %1732, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %1733 to i64*
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1735 = getelementptr inbounds %struct.GPR, %struct.GPR* %1734, i32 0, i32 1
  %1736 = getelementptr inbounds %struct.Reg, %struct.Reg* %1735, i32 0, i32 0
  %RAX.i785 = bitcast %union.anon* %1736 to i64*
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1738 = getelementptr inbounds %struct.GPR, %struct.GPR* %1737, i32 0, i32 15
  %1739 = getelementptr inbounds %struct.Reg, %struct.Reg* %1738, i32 0, i32 0
  %RBP.i786 = bitcast %union.anon* %1739 to i64*
  %1740 = load i64, i64* %RBP.i786
  %1741 = sub i64 %1740, 88
  %1742 = load i64, i64* %RAX.i785
  %1743 = load i64, i64* %PC.i784
  %1744 = add i64 %1743, 4
  store i64 %1744, i64* %PC.i784
  %1745 = inttoptr i64 %1741 to i64*
  store i64 %1742, i64* %1745
  store %struct.Memory* %loadMem_4044fa, %struct.Memory** %MEMORY
  %loadMem_4044fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 33
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %1748 to i64*
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 5
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %RCX.i782 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 15
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %RBP.i783 = bitcast %union.anon* %1754 to i64*
  %1755 = load i64, i64* %RBP.i783
  %1756 = sub i64 %1755, 76
  %1757 = load i64, i64* %PC.i781
  %1758 = add i64 %1757, 3
  store i64 %1758, i64* %PC.i781
  %1759 = inttoptr i64 %1756 to i32*
  %1760 = load i32, i32* %1759
  %1761 = zext i32 %1760 to i64
  store i64 %1761, i64* %RCX.i782, align 8
  store %struct.Memory* %loadMem_4044fe, %struct.Memory** %MEMORY
  %loadMem_404501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 33
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 5
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %RCX.i780 = bitcast %union.anon* %1767 to i64*
  %1768 = load i64, i64* %RCX.i780
  %1769 = load i64, i64* %PC.i779
  %1770 = add i64 %1769, 3
  store i64 %1770, i64* %PC.i779
  %1771 = trunc i64 %1768 to i32
  %1772 = add i32 1, %1771
  %1773 = zext i32 %1772 to i64
  store i64 %1773, i64* %RCX.i780, align 8
  %1774 = icmp ult i32 %1772, %1771
  %1775 = icmp ult i32 %1772, 1
  %1776 = or i1 %1774, %1775
  %1777 = zext i1 %1776 to i8
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1777, i8* %1778, align 1
  %1779 = and i32 %1772, 255
  %1780 = call i32 @llvm.ctpop.i32(i32 %1779)
  %1781 = trunc i32 %1780 to i8
  %1782 = and i8 %1781, 1
  %1783 = xor i8 %1782, 1
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1783, i8* %1784, align 1
  %1785 = xor i64 1, %1768
  %1786 = trunc i64 %1785 to i32
  %1787 = xor i32 %1786, %1772
  %1788 = lshr i32 %1787, 4
  %1789 = trunc i32 %1788 to i8
  %1790 = and i8 %1789, 1
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1790, i8* %1791, align 1
  %1792 = icmp eq i32 %1772, 0
  %1793 = zext i1 %1792 to i8
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1793, i8* %1794, align 1
  %1795 = lshr i32 %1772, 31
  %1796 = trunc i32 %1795 to i8
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1796, i8* %1797, align 1
  %1798 = lshr i32 %1771, 31
  %1799 = xor i32 %1795, %1798
  %1800 = add i32 %1799, %1795
  %1801 = icmp eq i32 %1800, 2
  %1802 = zext i1 %1801 to i8
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1802, i8* %1803, align 1
  store %struct.Memory* %loadMem_404501, %struct.Memory** %MEMORY
  %loadMem_404504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1805 = getelementptr inbounds %struct.GPR, %struct.GPR* %1804, i32 0, i32 33
  %1806 = getelementptr inbounds %struct.Reg, %struct.Reg* %1805, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %1806 to i64*
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 5
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %ECX.i777 = bitcast %union.anon* %1809 to i32*
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 1
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %RAX.i778 = bitcast %union.anon* %1812 to i64*
  %1813 = load i32, i32* %ECX.i777
  %1814 = zext i32 %1813 to i64
  %1815 = load i64, i64* %PC.i776
  %1816 = add i64 %1815, 3
  store i64 %1816, i64* %PC.i776
  %1817 = shl i64 %1814, 32
  %1818 = ashr exact i64 %1817, 32
  store i64 %1818, i64* %RAX.i778, align 8
  store %struct.Memory* %loadMem_404504, %struct.Memory** %MEMORY
  %loadMem_404507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1820 = getelementptr inbounds %struct.GPR, %struct.GPR* %1819, i32 0, i32 33
  %1821 = getelementptr inbounds %struct.Reg, %struct.Reg* %1820, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %1821 to i64*
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1823 = getelementptr inbounds %struct.GPR, %struct.GPR* %1822, i32 0, i32 1
  %1824 = getelementptr inbounds %struct.Reg, %struct.Reg* %1823, i32 0, i32 0
  %RAX.i775 = bitcast %union.anon* %1824 to i64*
  %1825 = load i64, i64* %RAX.i775
  %1826 = load i64, i64* %PC.i774
  %1827 = add i64 %1826, 4
  store i64 %1827, i64* %PC.i774
  %1828 = shl i64 %1825, 1
  %1829 = icmp slt i64 %1828, 0
  %1830 = shl i64 %1828, 1
  store i64 %1830, i64* %RAX.i775, align 8
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1832 = zext i1 %1829 to i8
  store i8 %1832, i8* %1831, align 1
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1834 = trunc i64 %1830 to i32
  %1835 = and i32 %1834, 254
  %1836 = call i32 @llvm.ctpop.i32(i32 %1835)
  %1837 = trunc i32 %1836 to i8
  %1838 = and i8 %1837, 1
  %1839 = xor i8 %1838, 1
  store i8 %1839, i8* %1833, align 1
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1840, align 1
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1842 = icmp eq i64 %1830, 0
  %1843 = zext i1 %1842 to i8
  store i8 %1843, i8* %1841, align 1
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1845 = lshr i64 %1830, 63
  %1846 = trunc i64 %1845 to i8
  store i8 %1846, i8* %1844, align 1
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1847, align 1
  store %struct.Memory* %loadMem_404507, %struct.Memory** %MEMORY
  %loadMem_40450b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1849 = getelementptr inbounds %struct.GPR, %struct.GPR* %1848, i32 0, i32 33
  %1850 = getelementptr inbounds %struct.Reg, %struct.Reg* %1849, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %1850 to i64*
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 1
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %RAX.i772 = bitcast %union.anon* %1853 to i64*
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 7
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %RDX.i773 = bitcast %union.anon* %1856 to i64*
  %1857 = load i64, i64* %RAX.i772
  %1858 = load i64, i64* %PC.i771
  %1859 = add i64 %1858, 3
  store i64 %1859, i64* %PC.i771
  store i64 %1857, i64* %RDX.i773, align 8
  store %struct.Memory* %loadMem_40450b, %struct.Memory** %MEMORY
  %loadMem1_40450e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1861 = getelementptr inbounds %struct.GPR, %struct.GPR* %1860, i32 0, i32 33
  %1862 = getelementptr inbounds %struct.Reg, %struct.Reg* %1861, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %1862 to i64*
  %1863 = load i64, i64* %PC.i770
  %1864 = add i64 %1863, 269138
  %1865 = load i64, i64* %PC.i770
  %1866 = add i64 %1865, 5
  %1867 = load i64, i64* %PC.i770
  %1868 = add i64 %1867, 5
  store i64 %1868, i64* %PC.i770
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1870 = load i64, i64* %1869, align 8
  %1871 = add i64 %1870, -8
  %1872 = inttoptr i64 %1871 to i64*
  store i64 %1866, i64* %1872
  store i64 %1871, i64* %1869, align 8
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1864, i64* %1873, align 8
  store %struct.Memory* %loadMem1_40450e, %struct.Memory** %MEMORY
  %loadMem2_40450e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40450e = load i64, i64* %3
  %call2_40450e = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_40450e, %struct.Memory* %loadMem2_40450e)
  store %struct.Memory* %call2_40450e, %struct.Memory** %MEMORY
  %loadMem_404513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 33
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %1876 to i64*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 1
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %RAX.i768 = bitcast %union.anon* %1879 to i64*
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 15
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %RBP.i769 = bitcast %union.anon* %1882 to i64*
  %1883 = load i64, i64* %RBP.i769
  %1884 = sub i64 %1883, 96
  %1885 = load i64, i64* %RAX.i768
  %1886 = load i64, i64* %PC.i767
  %1887 = add i64 %1886, 4
  store i64 %1887, i64* %PC.i767
  %1888 = inttoptr i64 %1884 to i64*
  store i64 %1885, i64* %1888
  store %struct.Memory* %loadMem_404513, %struct.Memory** %MEMORY
  %loadMem_404517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 33
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %1891 to i64*
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 15
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %RBP.i766 = bitcast %union.anon* %1894 to i64*
  %1895 = load i64, i64* %RBP.i766
  %1896 = sub i64 %1895, 108
  %1897 = load i64, i64* %PC.i765
  %1898 = add i64 %1897, 7
  store i64 %1898, i64* %PC.i765
  %1899 = inttoptr i64 %1896 to i32*
  store i32 0, i32* %1899
  store %struct.Memory* %loadMem_404517, %struct.Memory** %MEMORY
  br label %block_.L_40451e

block_.L_40451e:                                  ; preds = %block_.L_404597, %block_.L_4044cc
  %loadMem_40451e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1901 = getelementptr inbounds %struct.GPR, %struct.GPR* %1900, i32 0, i32 33
  %1902 = getelementptr inbounds %struct.Reg, %struct.Reg* %1901, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %1902 to i64*
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1904 = getelementptr inbounds %struct.GPR, %struct.GPR* %1903, i32 0, i32 1
  %1905 = getelementptr inbounds %struct.Reg, %struct.Reg* %1904, i32 0, i32 0
  %RAX.i763 = bitcast %union.anon* %1905 to i64*
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 15
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %RBP.i764 = bitcast %union.anon* %1908 to i64*
  %1909 = load i64, i64* %RBP.i764
  %1910 = sub i64 %1909, 108
  %1911 = load i64, i64* %PC.i762
  %1912 = add i64 %1911, 3
  store i64 %1912, i64* %PC.i762
  %1913 = inttoptr i64 %1910 to i32*
  %1914 = load i32, i32* %1913
  %1915 = zext i32 %1914 to i64
  store i64 %1915, i64* %RAX.i763, align 8
  store %struct.Memory* %loadMem_40451e, %struct.Memory** %MEMORY
  %loadMem_404521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 33
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %1918 to i64*
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 1
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %EAX.i760 = bitcast %union.anon* %1921 to i32*
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1923 = getelementptr inbounds %struct.GPR, %struct.GPR* %1922, i32 0, i32 15
  %1924 = getelementptr inbounds %struct.Reg, %struct.Reg* %1923, i32 0, i32 0
  %RBP.i761 = bitcast %union.anon* %1924 to i64*
  %1925 = load i32, i32* %EAX.i760
  %1926 = zext i32 %1925 to i64
  %1927 = load i64, i64* %RBP.i761
  %1928 = sub i64 %1927, 20
  %1929 = load i64, i64* %PC.i759
  %1930 = add i64 %1929, 3
  store i64 %1930, i64* %PC.i759
  %1931 = inttoptr i64 %1928 to i32*
  %1932 = load i32, i32* %1931
  %1933 = sub i32 %1925, %1932
  %1934 = icmp ult i32 %1925, %1932
  %1935 = zext i1 %1934 to i8
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1935, i8* %1936, align 1
  %1937 = and i32 %1933, 255
  %1938 = call i32 @llvm.ctpop.i32(i32 %1937)
  %1939 = trunc i32 %1938 to i8
  %1940 = and i8 %1939, 1
  %1941 = xor i8 %1940, 1
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1941, i8* %1942, align 1
  %1943 = xor i32 %1932, %1925
  %1944 = xor i32 %1943, %1933
  %1945 = lshr i32 %1944, 4
  %1946 = trunc i32 %1945 to i8
  %1947 = and i8 %1946, 1
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1947, i8* %1948, align 1
  %1949 = icmp eq i32 %1933, 0
  %1950 = zext i1 %1949 to i8
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1950, i8* %1951, align 1
  %1952 = lshr i32 %1933, 31
  %1953 = trunc i32 %1952 to i8
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1953, i8* %1954, align 1
  %1955 = lshr i32 %1925, 31
  %1956 = lshr i32 %1932, 31
  %1957 = xor i32 %1956, %1955
  %1958 = xor i32 %1952, %1955
  %1959 = add i32 %1958, %1957
  %1960 = icmp eq i32 %1959, 2
  %1961 = zext i1 %1960 to i8
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1961, i8* %1962, align 1
  store %struct.Memory* %loadMem_404521, %struct.Memory** %MEMORY
  %loadMem_404524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 33
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %1965 to i64*
  %1966 = load i64, i64* %PC.i758
  %1967 = add i64 %1966, 129
  %1968 = load i64, i64* %PC.i758
  %1969 = add i64 %1968, 6
  %1970 = load i64, i64* %PC.i758
  %1971 = add i64 %1970, 6
  store i64 %1971, i64* %PC.i758
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1973 = load i8, i8* %1972, align 1
  %1974 = icmp ne i8 %1973, 0
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1976 = load i8, i8* %1975, align 1
  %1977 = icmp ne i8 %1976, 0
  %1978 = xor i1 %1974, %1977
  %1979 = xor i1 %1978, true
  %1980 = zext i1 %1979 to i8
  store i8 %1980, i8* %BRANCH_TAKEN, align 1
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1982 = select i1 %1978, i64 %1969, i64 %1967
  store i64 %1982, i64* %1981, align 8
  store %struct.Memory* %loadMem_404524, %struct.Memory** %MEMORY
  %loadBr_404524 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_404524 = icmp eq i8 %loadBr_404524, 1
  br i1 %cmpBr_404524, label %block_.L_4045a5, label %block_40452a

block_40452a:                                     ; preds = %block_.L_40451e
  %loadMem_40452a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1984 = getelementptr inbounds %struct.GPR, %struct.GPR* %1983, i32 0, i32 33
  %1985 = getelementptr inbounds %struct.Reg, %struct.Reg* %1984, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %1985 to i64*
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1987 = getelementptr inbounds %struct.GPR, %struct.GPR* %1986, i32 0, i32 11
  %1988 = getelementptr inbounds %struct.Reg, %struct.Reg* %1987, i32 0, i32 0
  %RDI.i757 = bitcast %union.anon* %1988 to i64*
  %1989 = load i64, i64* %PC.i756
  %1990 = add i64 %1989, 10
  store i64 %1990, i64* %PC.i756
  store i64 ptrtoint (%G__0x4559fe_type* @G__0x4559fe to i64), i64* %RDI.i757, align 8
  store %struct.Memory* %loadMem_40452a, %struct.Memory** %MEMORY
  %loadMem_404534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 33
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %1993 to i64*
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 9
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %RSI.i755 = bitcast %union.anon* %1996 to i64*
  %1997 = load i64, i64* %PC.i754
  %1998 = add i64 %1997, 5
  store i64 %1998, i64* %PC.i754
  store i64 549, i64* %RSI.i755, align 8
  store %struct.Memory* %loadMem_404534, %struct.Memory** %MEMORY
  %loadMem_404539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2000 = getelementptr inbounds %struct.GPR, %struct.GPR* %1999, i32 0, i32 33
  %2001 = getelementptr inbounds %struct.Reg, %struct.Reg* %2000, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %2001 to i64*
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 1
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %RAX.i752 = bitcast %union.anon* %2004 to i64*
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 15
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %RBP.i753 = bitcast %union.anon* %2007 to i64*
  %2008 = load i64, i64* %RBP.i753
  %2009 = sub i64 %2008, 76
  %2010 = load i64, i64* %PC.i751
  %2011 = add i64 %2010, 3
  store i64 %2011, i64* %PC.i751
  %2012 = inttoptr i64 %2009 to i32*
  %2013 = load i32, i32* %2012
  %2014 = zext i32 %2013 to i64
  store i64 %2014, i64* %RAX.i752, align 8
  store %struct.Memory* %loadMem_404539, %struct.Memory** %MEMORY
  %loadMem_40453c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 33
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 1
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %RAX.i750 = bitcast %union.anon* %2020 to i64*
  %2021 = load i64, i64* %RAX.i750
  %2022 = load i64, i64* %PC.i749
  %2023 = add i64 %2022, 3
  store i64 %2023, i64* %PC.i749
  %2024 = trunc i64 %2021 to i32
  %2025 = add i32 1, %2024
  %2026 = zext i32 %2025 to i64
  store i64 %2026, i64* %RAX.i750, align 8
  %2027 = icmp ult i32 %2025, %2024
  %2028 = icmp ult i32 %2025, 1
  %2029 = or i1 %2027, %2028
  %2030 = zext i1 %2029 to i8
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2030, i8* %2031, align 1
  %2032 = and i32 %2025, 255
  %2033 = call i32 @llvm.ctpop.i32(i32 %2032)
  %2034 = trunc i32 %2033 to i8
  %2035 = and i8 %2034, 1
  %2036 = xor i8 %2035, 1
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2036, i8* %2037, align 1
  %2038 = xor i64 1, %2021
  %2039 = trunc i64 %2038 to i32
  %2040 = xor i32 %2039, %2025
  %2041 = lshr i32 %2040, 4
  %2042 = trunc i32 %2041 to i8
  %2043 = and i8 %2042, 1
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2043, i8* %2044, align 1
  %2045 = icmp eq i32 %2025, 0
  %2046 = zext i1 %2045 to i8
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2046, i8* %2047, align 1
  %2048 = lshr i32 %2025, 31
  %2049 = trunc i32 %2048 to i8
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2049, i8* %2050, align 1
  %2051 = lshr i32 %2024, 31
  %2052 = xor i32 %2048, %2051
  %2053 = add i32 %2052, %2048
  %2054 = icmp eq i32 %2053, 2
  %2055 = zext i1 %2054 to i8
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2055, i8* %2056, align 1
  store %struct.Memory* %loadMem_40453c, %struct.Memory** %MEMORY
  %loadMem_40453f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2058 = getelementptr inbounds %struct.GPR, %struct.GPR* %2057, i32 0, i32 33
  %2059 = getelementptr inbounds %struct.Reg, %struct.Reg* %2058, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %2059 to i64*
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2061 = getelementptr inbounds %struct.GPR, %struct.GPR* %2060, i32 0, i32 1
  %2062 = getelementptr inbounds %struct.Reg, %struct.Reg* %2061, i32 0, i32 0
  %EAX.i747 = bitcast %union.anon* %2062 to i32*
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 5
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %RCX.i748 = bitcast %union.anon* %2065 to i64*
  %2066 = load i32, i32* %EAX.i747
  %2067 = zext i32 %2066 to i64
  %2068 = load i64, i64* %PC.i746
  %2069 = add i64 %2068, 3
  store i64 %2069, i64* %PC.i746
  %2070 = shl i64 %2067, 32
  %2071 = ashr exact i64 %2070, 32
  store i64 %2071, i64* %RCX.i748, align 8
  store %struct.Memory* %loadMem_40453f, %struct.Memory** %MEMORY
  %loadMem_404542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 33
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %2074 to i64*
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 5
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %RCX.i745 = bitcast %union.anon* %2077 to i64*
  %2078 = load i64, i64* %RCX.i745
  %2079 = load i64, i64* %PC.i744
  %2080 = add i64 %2079, 4
  store i64 %2080, i64* %PC.i744
  %2081 = shl i64 %2078, 1
  %2082 = icmp slt i64 %2081, 0
  %2083 = shl i64 %2081, 1
  store i64 %2083, i64* %RCX.i745, align 8
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2085 = zext i1 %2082 to i8
  store i8 %2085, i8* %2084, align 1
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2087 = trunc i64 %2083 to i32
  %2088 = and i32 %2087, 254
  %2089 = call i32 @llvm.ctpop.i32(i32 %2088)
  %2090 = trunc i32 %2089 to i8
  %2091 = and i8 %2090, 1
  %2092 = xor i8 %2091, 1
  store i8 %2092, i8* %2086, align 1
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2093, align 1
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2095 = icmp eq i64 %2083, 0
  %2096 = zext i1 %2095 to i8
  store i8 %2096, i8* %2094, align 1
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2098 = lshr i64 %2083, 63
  %2099 = trunc i64 %2098 to i8
  store i8 %2099, i8* %2097, align 1
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2100, align 1
  store %struct.Memory* %loadMem_404542, %struct.Memory** %MEMORY
  %loadMem_404546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 33
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %2103 to i64*
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2105 = getelementptr inbounds %struct.GPR, %struct.GPR* %2104, i32 0, i32 5
  %2106 = getelementptr inbounds %struct.Reg, %struct.Reg* %2105, i32 0, i32 0
  %RCX.i742 = bitcast %union.anon* %2106 to i64*
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 7
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %RDX.i743 = bitcast %union.anon* %2109 to i64*
  %2110 = load i64, i64* %RCX.i742
  %2111 = load i64, i64* %PC.i741
  %2112 = add i64 %2111, 3
  store i64 %2112, i64* %PC.i741
  store i64 %2110, i64* %RDX.i743, align 8
  store %struct.Memory* %loadMem_404546, %struct.Memory** %MEMORY
  %loadMem1_404549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 33
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %2115 to i64*
  %2116 = load i64, i64* %PC.i740
  %2117 = add i64 %2116, 269079
  %2118 = load i64, i64* %PC.i740
  %2119 = add i64 %2118, 5
  %2120 = load i64, i64* %PC.i740
  %2121 = add i64 %2120, 5
  store i64 %2121, i64* %PC.i740
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2123 = load i64, i64* %2122, align 8
  %2124 = add i64 %2123, -8
  %2125 = inttoptr i64 %2124 to i64*
  store i64 %2119, i64* %2125
  store i64 %2124, i64* %2122, align 8
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2117, i64* %2126, align 8
  store %struct.Memory* %loadMem1_404549, %struct.Memory** %MEMORY
  %loadMem2_404549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_404549 = load i64, i64* %3
  %call2_404549 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_404549, %struct.Memory* %loadMem2_404549)
  store %struct.Memory* %call2_404549, %struct.Memory** %MEMORY
  %loadMem_40454e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 33
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %2129 to i64*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 5
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %RCX.i738 = bitcast %union.anon* %2132 to i64*
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2134 = getelementptr inbounds %struct.GPR, %struct.GPR* %2133, i32 0, i32 15
  %2135 = getelementptr inbounds %struct.Reg, %struct.Reg* %2134, i32 0, i32 0
  %RBP.i739 = bitcast %union.anon* %2135 to i64*
  %2136 = load i64, i64* %RBP.i739
  %2137 = sub i64 %2136, 88
  %2138 = load i64, i64* %PC.i737
  %2139 = add i64 %2138, 4
  store i64 %2139, i64* %PC.i737
  %2140 = inttoptr i64 %2137 to i64*
  %2141 = load i64, i64* %2140
  store i64 %2141, i64* %RCX.i738, align 8
  store %struct.Memory* %loadMem_40454e, %struct.Memory** %MEMORY
  %loadMem_404552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 33
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %2144 to i64*
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2146 = getelementptr inbounds %struct.GPR, %struct.GPR* %2145, i32 0, i32 7
  %2147 = getelementptr inbounds %struct.Reg, %struct.Reg* %2146, i32 0, i32 0
  %RDX.i735 = bitcast %union.anon* %2147 to i64*
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2149 = getelementptr inbounds %struct.GPR, %struct.GPR* %2148, i32 0, i32 15
  %2150 = getelementptr inbounds %struct.Reg, %struct.Reg* %2149, i32 0, i32 0
  %RBP.i736 = bitcast %union.anon* %2150 to i64*
  %2151 = load i64, i64* %RBP.i736
  %2152 = sub i64 %2151, 108
  %2153 = load i64, i64* %PC.i734
  %2154 = add i64 %2153, 4
  store i64 %2154, i64* %PC.i734
  %2155 = inttoptr i64 %2152 to i32*
  %2156 = load i32, i32* %2155
  %2157 = sext i32 %2156 to i64
  store i64 %2157, i64* %RDX.i735, align 8
  store %struct.Memory* %loadMem_404552, %struct.Memory** %MEMORY
  %loadMem_404556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2159 = getelementptr inbounds %struct.GPR, %struct.GPR* %2158, i32 0, i32 33
  %2160 = getelementptr inbounds %struct.Reg, %struct.Reg* %2159, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %2160 to i64*
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 1
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %RAX.i731 = bitcast %union.anon* %2163 to i64*
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 5
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %RCX.i732 = bitcast %union.anon* %2166 to i64*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 7
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %RDX.i733 = bitcast %union.anon* %2169 to i64*
  %2170 = load i64, i64* %RCX.i732
  %2171 = load i64, i64* %RDX.i733
  %2172 = mul i64 %2171, 8
  %2173 = add i64 %2172, %2170
  %2174 = load i64, i64* %RAX.i731
  %2175 = load i64, i64* %PC.i730
  %2176 = add i64 %2175, 4
  store i64 %2176, i64* %PC.i730
  %2177 = inttoptr i64 %2173 to i64*
  store i64 %2174, i64* %2177
  store %struct.Memory* %loadMem_404556, %struct.Memory** %MEMORY
  %loadMem_40455a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 33
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %2180 to i64*
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 15
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %RBP.i729 = bitcast %union.anon* %2183 to i64*
  %2184 = load i64, i64* %RBP.i729
  %2185 = sub i64 %2184, 104
  %2186 = load i64, i64* %PC.i728
  %2187 = add i64 %2186, 7
  store i64 %2187, i64* %PC.i728
  %2188 = inttoptr i64 %2185 to i32*
  store i32 0, i32* %2188
  store %struct.Memory* %loadMem_40455a, %struct.Memory** %MEMORY
  br label %block_.L_404561

block_.L_404561:                                  ; preds = %block_40456d, %block_40452a
  %loadMem_404561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 33
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %2191 to i64*
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 1
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %RAX.i726 = bitcast %union.anon* %2194 to i64*
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 15
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %RBP.i727 = bitcast %union.anon* %2197 to i64*
  %2198 = load i64, i64* %RBP.i727
  %2199 = sub i64 %2198, 104
  %2200 = load i64, i64* %PC.i725
  %2201 = add i64 %2200, 3
  store i64 %2201, i64* %PC.i725
  %2202 = inttoptr i64 %2199 to i32*
  %2203 = load i32, i32* %2202
  %2204 = zext i32 %2203 to i64
  store i64 %2204, i64* %RAX.i726, align 8
  store %struct.Memory* %loadMem_404561, %struct.Memory** %MEMORY
  %loadMem_404564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2206 = getelementptr inbounds %struct.GPR, %struct.GPR* %2205, i32 0, i32 33
  %2207 = getelementptr inbounds %struct.Reg, %struct.Reg* %2206, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %2207 to i64*
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2209 = getelementptr inbounds %struct.GPR, %struct.GPR* %2208, i32 0, i32 1
  %2210 = getelementptr inbounds %struct.Reg, %struct.Reg* %2209, i32 0, i32 0
  %EAX.i723 = bitcast %union.anon* %2210 to i32*
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2212 = getelementptr inbounds %struct.GPR, %struct.GPR* %2211, i32 0, i32 15
  %2213 = getelementptr inbounds %struct.Reg, %struct.Reg* %2212, i32 0, i32 0
  %RBP.i724 = bitcast %union.anon* %2213 to i64*
  %2214 = load i32, i32* %EAX.i723
  %2215 = zext i32 %2214 to i64
  %2216 = load i64, i64* %RBP.i724
  %2217 = sub i64 %2216, 76
  %2218 = load i64, i64* %PC.i722
  %2219 = add i64 %2218, 3
  store i64 %2219, i64* %PC.i722
  %2220 = inttoptr i64 %2217 to i32*
  %2221 = load i32, i32* %2220
  %2222 = sub i32 %2214, %2221
  %2223 = icmp ult i32 %2214, %2221
  %2224 = zext i1 %2223 to i8
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2224, i8* %2225, align 1
  %2226 = and i32 %2222, 255
  %2227 = call i32 @llvm.ctpop.i32(i32 %2226)
  %2228 = trunc i32 %2227 to i8
  %2229 = and i8 %2228, 1
  %2230 = xor i8 %2229, 1
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2230, i8* %2231, align 1
  %2232 = xor i32 %2221, %2214
  %2233 = xor i32 %2232, %2222
  %2234 = lshr i32 %2233, 4
  %2235 = trunc i32 %2234 to i8
  %2236 = and i8 %2235, 1
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2236, i8* %2237, align 1
  %2238 = icmp eq i32 %2222, 0
  %2239 = zext i1 %2238 to i8
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2239, i8* %2240, align 1
  %2241 = lshr i32 %2222, 31
  %2242 = trunc i32 %2241 to i8
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2242, i8* %2243, align 1
  %2244 = lshr i32 %2214, 31
  %2245 = lshr i32 %2221, 31
  %2246 = xor i32 %2245, %2244
  %2247 = xor i32 %2241, %2244
  %2248 = add i32 %2247, %2246
  %2249 = icmp eq i32 %2248, 2
  %2250 = zext i1 %2249 to i8
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2250, i8* %2251, align 1
  store %struct.Memory* %loadMem_404564, %struct.Memory** %MEMORY
  %loadMem_404567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 33
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %2254 to i64*
  %2255 = load i64, i64* %PC.i721
  %2256 = add i64 %2255, 43
  %2257 = load i64, i64* %PC.i721
  %2258 = add i64 %2257, 6
  %2259 = load i64, i64* %PC.i721
  %2260 = add i64 %2259, 6
  store i64 %2260, i64* %PC.i721
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2262 = load i8, i8* %2261, align 1
  %2263 = icmp eq i8 %2262, 0
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2265 = load i8, i8* %2264, align 1
  %2266 = icmp ne i8 %2265, 0
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2268 = load i8, i8* %2267, align 1
  %2269 = icmp ne i8 %2268, 0
  %2270 = xor i1 %2266, %2269
  %2271 = xor i1 %2270, true
  %2272 = and i1 %2263, %2271
  %2273 = zext i1 %2272 to i8
  store i8 %2273, i8* %BRANCH_TAKEN, align 1
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2275 = select i1 %2272, i64 %2256, i64 %2258
  store i64 %2275, i64* %2274, align 8
  store %struct.Memory* %loadMem_404567, %struct.Memory** %MEMORY
  %loadBr_404567 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_404567 = icmp eq i8 %loadBr_404567, 1
  br i1 %cmpBr_404567, label %block_.L_404592, label %block_40456d

block_40456d:                                     ; preds = %block_.L_404561
  %loadMem_40456d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2277 = getelementptr inbounds %struct.GPR, %struct.GPR* %2276, i32 0, i32 33
  %2278 = getelementptr inbounds %struct.Reg, %struct.Reg* %2277, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %2278 to i64*
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2280 = getelementptr inbounds %struct.GPR, %struct.GPR* %2279, i32 0, i32 1
  %2281 = getelementptr inbounds %struct.Reg, %struct.Reg* %2280, i32 0, i32 0
  %RAX.i719 = bitcast %union.anon* %2281 to i64*
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2283 = getelementptr inbounds %struct.GPR, %struct.GPR* %2282, i32 0, i32 15
  %2284 = getelementptr inbounds %struct.Reg, %struct.Reg* %2283, i32 0, i32 0
  %RBP.i720 = bitcast %union.anon* %2284 to i64*
  %2285 = load i64, i64* %RBP.i720
  %2286 = sub i64 %2285, 88
  %2287 = load i64, i64* %PC.i718
  %2288 = add i64 %2287, 4
  store i64 %2288, i64* %PC.i718
  %2289 = inttoptr i64 %2286 to i64*
  %2290 = load i64, i64* %2289
  store i64 %2290, i64* %RAX.i719, align 8
  store %struct.Memory* %loadMem_40456d, %struct.Memory** %MEMORY
  %loadMem_404571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2292 = getelementptr inbounds %struct.GPR, %struct.GPR* %2291, i32 0, i32 33
  %2293 = getelementptr inbounds %struct.Reg, %struct.Reg* %2292, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %2293 to i64*
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2295 = getelementptr inbounds %struct.GPR, %struct.GPR* %2294, i32 0, i32 5
  %2296 = getelementptr inbounds %struct.Reg, %struct.Reg* %2295, i32 0, i32 0
  %RCX.i716 = bitcast %union.anon* %2296 to i64*
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2298 = getelementptr inbounds %struct.GPR, %struct.GPR* %2297, i32 0, i32 15
  %2299 = getelementptr inbounds %struct.Reg, %struct.Reg* %2298, i32 0, i32 0
  %RBP.i717 = bitcast %union.anon* %2299 to i64*
  %2300 = load i64, i64* %RBP.i717
  %2301 = sub i64 %2300, 108
  %2302 = load i64, i64* %PC.i715
  %2303 = add i64 %2302, 4
  store i64 %2303, i64* %PC.i715
  %2304 = inttoptr i64 %2301 to i32*
  %2305 = load i32, i32* %2304
  %2306 = sext i32 %2305 to i64
  store i64 %2306, i64* %RCX.i716, align 8
  store %struct.Memory* %loadMem_404571, %struct.Memory** %MEMORY
  %loadMem_404575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2308 = getelementptr inbounds %struct.GPR, %struct.GPR* %2307, i32 0, i32 33
  %2309 = getelementptr inbounds %struct.Reg, %struct.Reg* %2308, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %2309 to i64*
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 1
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %RAX.i713 = bitcast %union.anon* %2312 to i64*
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 5
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %RCX.i714 = bitcast %union.anon* %2315 to i64*
  %2316 = load i64, i64* %RAX.i713
  %2317 = load i64, i64* %RCX.i714
  %2318 = mul i64 %2317, 8
  %2319 = add i64 %2318, %2316
  %2320 = load i64, i64* %PC.i712
  %2321 = add i64 %2320, 4
  store i64 %2321, i64* %PC.i712
  %2322 = inttoptr i64 %2319 to i64*
  %2323 = load i64, i64* %2322
  store i64 %2323, i64* %RAX.i713, align 8
  store %struct.Memory* %loadMem_404575, %struct.Memory** %MEMORY
  %loadMem_404579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 33
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %2326 to i64*
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 5
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %RCX.i710 = bitcast %union.anon* %2329 to i64*
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 15
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %RBP.i711 = bitcast %union.anon* %2332 to i64*
  %2333 = load i64, i64* %RBP.i711
  %2334 = sub i64 %2333, 104
  %2335 = load i64, i64* %PC.i709
  %2336 = add i64 %2335, 4
  store i64 %2336, i64* %PC.i709
  %2337 = inttoptr i64 %2334 to i32*
  %2338 = load i32, i32* %2337
  %2339 = sext i32 %2338 to i64
  store i64 %2339, i64* %RCX.i710, align 8
  store %struct.Memory* %loadMem_404579, %struct.Memory** %MEMORY
  %loadMem_40457d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 33
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %2342 to i64*
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 1
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %RAX.i707 = bitcast %union.anon* %2345 to i64*
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2347 = getelementptr inbounds %struct.GPR, %struct.GPR* %2346, i32 0, i32 5
  %2348 = getelementptr inbounds %struct.Reg, %struct.Reg* %2347, i32 0, i32 0
  %RCX.i708 = bitcast %union.anon* %2348 to i64*
  %2349 = load i64, i64* %RAX.i707
  %2350 = load i64, i64* %RCX.i708
  %2351 = mul i64 %2350, 4
  %2352 = add i64 %2351, %2349
  %2353 = load i64, i64* %PC.i706
  %2354 = add i64 %2353, 7
  store i64 %2354, i64* %PC.i706
  %2355 = inttoptr i64 %2352 to i32*
  store i32 0, i32* %2355
  store %struct.Memory* %loadMem_40457d, %struct.Memory** %MEMORY
  %loadMem_404584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 33
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %2358 to i64*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 1
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %RAX.i704 = bitcast %union.anon* %2361 to i64*
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 15
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %2364 to i64*
  %2365 = load i64, i64* %RBP.i705
  %2366 = sub i64 %2365, 104
  %2367 = load i64, i64* %PC.i703
  %2368 = add i64 %2367, 3
  store i64 %2368, i64* %PC.i703
  %2369 = inttoptr i64 %2366 to i32*
  %2370 = load i32, i32* %2369
  %2371 = zext i32 %2370 to i64
  store i64 %2371, i64* %RAX.i704, align 8
  store %struct.Memory* %loadMem_404584, %struct.Memory** %MEMORY
  %loadMem_404587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 33
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %2374 to i64*
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 1
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %RAX.i702 = bitcast %union.anon* %2377 to i64*
  %2378 = load i64, i64* %RAX.i702
  %2379 = load i64, i64* %PC.i701
  %2380 = add i64 %2379, 3
  store i64 %2380, i64* %PC.i701
  %2381 = trunc i64 %2378 to i32
  %2382 = add i32 1, %2381
  %2383 = zext i32 %2382 to i64
  store i64 %2383, i64* %RAX.i702, align 8
  %2384 = icmp ult i32 %2382, %2381
  %2385 = icmp ult i32 %2382, 1
  %2386 = or i1 %2384, %2385
  %2387 = zext i1 %2386 to i8
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2387, i8* %2388, align 1
  %2389 = and i32 %2382, 255
  %2390 = call i32 @llvm.ctpop.i32(i32 %2389)
  %2391 = trunc i32 %2390 to i8
  %2392 = and i8 %2391, 1
  %2393 = xor i8 %2392, 1
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2393, i8* %2394, align 1
  %2395 = xor i64 1, %2378
  %2396 = trunc i64 %2395 to i32
  %2397 = xor i32 %2396, %2382
  %2398 = lshr i32 %2397, 4
  %2399 = trunc i32 %2398 to i8
  %2400 = and i8 %2399, 1
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2400, i8* %2401, align 1
  %2402 = icmp eq i32 %2382, 0
  %2403 = zext i1 %2402 to i8
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2403, i8* %2404, align 1
  %2405 = lshr i32 %2382, 31
  %2406 = trunc i32 %2405 to i8
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2406, i8* %2407, align 1
  %2408 = lshr i32 %2381, 31
  %2409 = xor i32 %2405, %2408
  %2410 = add i32 %2409, %2405
  %2411 = icmp eq i32 %2410, 2
  %2412 = zext i1 %2411 to i8
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2412, i8* %2413, align 1
  store %struct.Memory* %loadMem_404587, %struct.Memory** %MEMORY
  %loadMem_40458a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2415 = getelementptr inbounds %struct.GPR, %struct.GPR* %2414, i32 0, i32 33
  %2416 = getelementptr inbounds %struct.Reg, %struct.Reg* %2415, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %2416 to i64*
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2418 = getelementptr inbounds %struct.GPR, %struct.GPR* %2417, i32 0, i32 1
  %2419 = getelementptr inbounds %struct.Reg, %struct.Reg* %2418, i32 0, i32 0
  %EAX.i699 = bitcast %union.anon* %2419 to i32*
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 15
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %RBP.i700 = bitcast %union.anon* %2422 to i64*
  %2423 = load i64, i64* %RBP.i700
  %2424 = sub i64 %2423, 104
  %2425 = load i32, i32* %EAX.i699
  %2426 = zext i32 %2425 to i64
  %2427 = load i64, i64* %PC.i698
  %2428 = add i64 %2427, 3
  store i64 %2428, i64* %PC.i698
  %2429 = inttoptr i64 %2424 to i32*
  store i32 %2425, i32* %2429
  store %struct.Memory* %loadMem_40458a, %struct.Memory** %MEMORY
  %loadMem_40458d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2431 = getelementptr inbounds %struct.GPR, %struct.GPR* %2430, i32 0, i32 33
  %2432 = getelementptr inbounds %struct.Reg, %struct.Reg* %2431, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %2432 to i64*
  %2433 = load i64, i64* %PC.i697
  %2434 = add i64 %2433, -44
  %2435 = load i64, i64* %PC.i697
  %2436 = add i64 %2435, 5
  store i64 %2436, i64* %PC.i697
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2434, i64* %2437, align 8
  store %struct.Memory* %loadMem_40458d, %struct.Memory** %MEMORY
  br label %block_.L_404561

block_.L_404592:                                  ; preds = %block_.L_404561
  %loadMem_404592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 33
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %2440 to i64*
  %2441 = load i64, i64* %PC.i696
  %2442 = add i64 %2441, 5
  %2443 = load i64, i64* %PC.i696
  %2444 = add i64 %2443, 5
  store i64 %2444, i64* %PC.i696
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2442, i64* %2445, align 8
  store %struct.Memory* %loadMem_404592, %struct.Memory** %MEMORY
  br label %block_.L_404597

block_.L_404597:                                  ; preds = %block_.L_404592
  %loadMem_404597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 33
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %2448 to i64*
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 1
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %RAX.i694 = bitcast %union.anon* %2451 to i64*
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2453 = getelementptr inbounds %struct.GPR, %struct.GPR* %2452, i32 0, i32 15
  %2454 = getelementptr inbounds %struct.Reg, %struct.Reg* %2453, i32 0, i32 0
  %RBP.i695 = bitcast %union.anon* %2454 to i64*
  %2455 = load i64, i64* %RBP.i695
  %2456 = sub i64 %2455, 108
  %2457 = load i64, i64* %PC.i693
  %2458 = add i64 %2457, 3
  store i64 %2458, i64* %PC.i693
  %2459 = inttoptr i64 %2456 to i32*
  %2460 = load i32, i32* %2459
  %2461 = zext i32 %2460 to i64
  store i64 %2461, i64* %RAX.i694, align 8
  store %struct.Memory* %loadMem_404597, %struct.Memory** %MEMORY
  %loadMem_40459a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 33
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %2464 to i64*
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2466 = getelementptr inbounds %struct.GPR, %struct.GPR* %2465, i32 0, i32 1
  %2467 = getelementptr inbounds %struct.Reg, %struct.Reg* %2466, i32 0, i32 0
  %RAX.i692 = bitcast %union.anon* %2467 to i64*
  %2468 = load i64, i64* %RAX.i692
  %2469 = load i64, i64* %PC.i691
  %2470 = add i64 %2469, 3
  store i64 %2470, i64* %PC.i691
  %2471 = trunc i64 %2468 to i32
  %2472 = add i32 1, %2471
  %2473 = zext i32 %2472 to i64
  store i64 %2473, i64* %RAX.i692, align 8
  %2474 = icmp ult i32 %2472, %2471
  %2475 = icmp ult i32 %2472, 1
  %2476 = or i1 %2474, %2475
  %2477 = zext i1 %2476 to i8
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2477, i8* %2478, align 1
  %2479 = and i32 %2472, 255
  %2480 = call i32 @llvm.ctpop.i32(i32 %2479)
  %2481 = trunc i32 %2480 to i8
  %2482 = and i8 %2481, 1
  %2483 = xor i8 %2482, 1
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2483, i8* %2484, align 1
  %2485 = xor i64 1, %2468
  %2486 = trunc i64 %2485 to i32
  %2487 = xor i32 %2486, %2472
  %2488 = lshr i32 %2487, 4
  %2489 = trunc i32 %2488 to i8
  %2490 = and i8 %2489, 1
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2490, i8* %2491, align 1
  %2492 = icmp eq i32 %2472, 0
  %2493 = zext i1 %2492 to i8
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2493, i8* %2494, align 1
  %2495 = lshr i32 %2472, 31
  %2496 = trunc i32 %2495 to i8
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2496, i8* %2497, align 1
  %2498 = lshr i32 %2471, 31
  %2499 = xor i32 %2495, %2498
  %2500 = add i32 %2499, %2495
  %2501 = icmp eq i32 %2500, 2
  %2502 = zext i1 %2501 to i8
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2502, i8* %2503, align 1
  store %struct.Memory* %loadMem_40459a, %struct.Memory** %MEMORY
  %loadMem_40459d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 33
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %2506 to i64*
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 1
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %EAX.i689 = bitcast %union.anon* %2509 to i32*
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 15
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %RBP.i690 = bitcast %union.anon* %2512 to i64*
  %2513 = load i64, i64* %RBP.i690
  %2514 = sub i64 %2513, 108
  %2515 = load i32, i32* %EAX.i689
  %2516 = zext i32 %2515 to i64
  %2517 = load i64, i64* %PC.i688
  %2518 = add i64 %2517, 3
  store i64 %2518, i64* %PC.i688
  %2519 = inttoptr i64 %2514 to i32*
  store i32 %2515, i32* %2519
  store %struct.Memory* %loadMem_40459d, %struct.Memory** %MEMORY
  %loadMem_4045a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 33
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %2522 to i64*
  %2523 = load i64, i64* %PC.i687
  %2524 = add i64 %2523, -130
  %2525 = load i64, i64* %PC.i687
  %2526 = add i64 %2525, 5
  store i64 %2526, i64* %PC.i687
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2524, i64* %2527, align 8
  store %struct.Memory* %loadMem_4045a0, %struct.Memory** %MEMORY
  br label %block_.L_40451e

block_.L_4045a5:                                  ; preds = %block_.L_40451e
  %loadMem_4045a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2529 = getelementptr inbounds %struct.GPR, %struct.GPR* %2528, i32 0, i32 33
  %2530 = getelementptr inbounds %struct.Reg, %struct.Reg* %2529, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %2530 to i64*
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2532 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2531, i64 0, i64 0
  %YMM0.i686 = bitcast %union.VectorReg* %2532 to %"class.std::bitset"*
  %2533 = bitcast %"class.std::bitset"* %YMM0.i686 to i8*
  %2534 = load i64, i64* %PC.i685
  %2535 = add i64 %2534, ptrtoint (%G_0x50233__rip__type* @G_0x50233__rip_ to i64)
  %2536 = load i64, i64* %PC.i685
  %2537 = add i64 %2536, 8
  store i64 %2537, i64* %PC.i685
  %2538 = inttoptr i64 %2535 to double*
  %2539 = load double, double* %2538
  %2540 = bitcast i8* %2533 to double*
  store double %2539, double* %2540, align 1
  %2541 = getelementptr inbounds i8, i8* %2533, i64 8
  %2542 = bitcast i8* %2541 to double*
  store double 0.000000e+00, double* %2542, align 1
  store %struct.Memory* %loadMem_4045a5, %struct.Memory** %MEMORY
  %loadMem_4045ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 33
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %2545 to i64*
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 15
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %RBP.i683 = bitcast %union.anon* %2548 to i64*
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2550 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2549, i64 0, i64 1
  %YMM1.i684 = bitcast %union.VectorReg* %2550 to %"class.std::bitset"*
  %2551 = bitcast %"class.std::bitset"* %YMM1.i684 to i8*
  %2552 = load i64, i64* %RBP.i683
  %2553 = sub i64 %2552, 24
  %2554 = load i64, i64* %PC.i682
  %2555 = add i64 %2554, 5
  store i64 %2555, i64* %PC.i682
  %2556 = inttoptr i64 %2553 to float*
  %2557 = load float, float* %2556
  %2558 = bitcast i8* %2551 to float*
  store float %2557, float* %2558, align 1
  %2559 = getelementptr inbounds i8, i8* %2551, i64 4
  %2560 = bitcast i8* %2559 to float*
  store float 0.000000e+00, float* %2560, align 1
  %2561 = getelementptr inbounds i8, i8* %2551, i64 8
  %2562 = bitcast i8* %2561 to float*
  store float 0.000000e+00, float* %2562, align 1
  %2563 = getelementptr inbounds i8, i8* %2551, i64 12
  %2564 = bitcast i8* %2563 to float*
  store float 0.000000e+00, float* %2564, align 1
  store %struct.Memory* %loadMem_4045ad, %struct.Memory** %MEMORY
  %loadMem_4045b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 33
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %2567 to i64*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 15
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %RBP.i680 = bitcast %union.anon* %2570 to i64*
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2572 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2571, i64 0, i64 2
  %YMM2.i681 = bitcast %union.VectorReg* %2572 to %"class.std::bitset"*
  %2573 = bitcast %"class.std::bitset"* %YMM2.i681 to i8*
  %2574 = load i64, i64* %RBP.i680
  %2575 = sub i64 %2574, 24
  %2576 = load i64, i64* %PC.i679
  %2577 = add i64 %2576, 5
  store i64 %2577, i64* %PC.i679
  %2578 = inttoptr i64 %2575 to float*
  %2579 = load float, float* %2578
  %2580 = bitcast i8* %2573 to float*
  store float %2579, float* %2580, align 1
  %2581 = getelementptr inbounds i8, i8* %2573, i64 4
  %2582 = bitcast i8* %2581 to float*
  store float 0.000000e+00, float* %2582, align 1
  %2583 = getelementptr inbounds i8, i8* %2573, i64 8
  %2584 = bitcast i8* %2583 to float*
  store float 0.000000e+00, float* %2584, align 1
  %2585 = getelementptr inbounds i8, i8* %2573, i64 12
  %2586 = bitcast i8* %2585 to float*
  store float 0.000000e+00, float* %2586, align 1
  store %struct.Memory* %loadMem_4045b2, %struct.Memory** %MEMORY
  %loadMem_4045b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2588 = getelementptr inbounds %struct.GPR, %struct.GPR* %2587, i32 0, i32 33
  %2589 = getelementptr inbounds %struct.Reg, %struct.Reg* %2588, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %2589 to i64*
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2591 = getelementptr inbounds %struct.GPR, %struct.GPR* %2590, i32 0, i32 15
  %2592 = getelementptr inbounds %struct.Reg, %struct.Reg* %2591, i32 0, i32 0
  %RBP.i678 = bitcast %union.anon* %2592 to i64*
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2594 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2593, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %2594 to %"class.std::bitset"*
  %2595 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2596 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2597 = load i64, i64* %RBP.i678
  %2598 = sub i64 %2597, 28
  %2599 = load i64, i64* %PC.i677
  %2600 = add i64 %2599, 5
  store i64 %2600, i64* %PC.i677
  %2601 = bitcast i8* %2596 to <2 x float>*
  %2602 = load <2 x float>, <2 x float>* %2601, align 1
  %2603 = getelementptr inbounds i8, i8* %2596, i64 8
  %2604 = bitcast i8* %2603 to <2 x i32>*
  %2605 = load <2 x i32>, <2 x i32>* %2604, align 1
  %2606 = inttoptr i64 %2598 to float*
  %2607 = load float, float* %2606
  %2608 = extractelement <2 x float> %2602, i32 0
  %2609 = fadd float %2608, %2607
  %2610 = bitcast i8* %2595 to float*
  store float %2609, float* %2610, align 1
  %2611 = bitcast <2 x float> %2602 to <2 x i32>
  %2612 = extractelement <2 x i32> %2611, i32 1
  %2613 = getelementptr inbounds i8, i8* %2595, i64 4
  %2614 = bitcast i8* %2613 to i32*
  store i32 %2612, i32* %2614, align 1
  %2615 = extractelement <2 x i32> %2605, i32 0
  %2616 = getelementptr inbounds i8, i8* %2595, i64 8
  %2617 = bitcast i8* %2616 to i32*
  store i32 %2615, i32* %2617, align 1
  %2618 = extractelement <2 x i32> %2605, i32 1
  %2619 = getelementptr inbounds i8, i8* %2595, i64 12
  %2620 = bitcast i8* %2619 to i32*
  store i32 %2618, i32* %2620, align 1
  store %struct.Memory* %loadMem_4045b7, %struct.Memory** %MEMORY
  %loadMem_4045bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 33
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2625 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2624, i64 0, i64 1
  %YMM1.i676 = bitcast %union.VectorReg* %2625 to %"class.std::bitset"*
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2627 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2626, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %2627 to %union.vec128_t*
  %2628 = bitcast %"class.std::bitset"* %YMM1.i676 to i8*
  %2629 = bitcast %"class.std::bitset"* %YMM1.i676 to i8*
  %2630 = bitcast %union.vec128_t* %XMM2.i to i8*
  %2631 = load i64, i64* %PC.i675
  %2632 = add i64 %2631, 4
  store i64 %2632, i64* %PC.i675
  %2633 = bitcast i8* %2629 to <2 x float>*
  %2634 = load <2 x float>, <2 x float>* %2633, align 1
  %2635 = getelementptr inbounds i8, i8* %2629, i64 8
  %2636 = bitcast i8* %2635 to <2 x i32>*
  %2637 = load <2 x i32>, <2 x i32>* %2636, align 1
  %2638 = bitcast i8* %2630 to <2 x float>*
  %2639 = load <2 x float>, <2 x float>* %2638, align 1
  %2640 = extractelement <2 x float> %2634, i32 0
  %2641 = extractelement <2 x float> %2639, i32 0
  %2642 = fdiv float %2640, %2641
  %2643 = bitcast i8* %2628 to float*
  store float %2642, float* %2643, align 1
  %2644 = bitcast <2 x float> %2634 to <2 x i32>
  %2645 = extractelement <2 x i32> %2644, i32 1
  %2646 = getelementptr inbounds i8, i8* %2628, i64 4
  %2647 = bitcast i8* %2646 to i32*
  store i32 %2645, i32* %2647, align 1
  %2648 = extractelement <2 x i32> %2637, i32 0
  %2649 = getelementptr inbounds i8, i8* %2628, i64 8
  %2650 = bitcast i8* %2649 to i32*
  store i32 %2648, i32* %2650, align 1
  %2651 = extractelement <2 x i32> %2637, i32 1
  %2652 = getelementptr inbounds i8, i8* %2628, i64 12
  %2653 = bitcast i8* %2652 to i32*
  store i32 %2651, i32* %2653, align 1
  store %struct.Memory* %loadMem_4045bc, %struct.Memory** %MEMORY
  %loadMem_4045c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 33
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %2656 to i64*
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2658 = getelementptr inbounds %struct.GPR, %struct.GPR* %2657, i32 0, i32 15
  %2659 = getelementptr inbounds %struct.Reg, %struct.Reg* %2658, i32 0, i32 0
  %RBP.i673 = bitcast %union.anon* %2659 to i64*
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2661 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2660, i64 0, i64 1
  %XMM1.i674 = bitcast %union.VectorReg* %2661 to %union.vec128_t*
  %2662 = load i64, i64* %RBP.i673
  %2663 = sub i64 %2662, 24
  %2664 = bitcast %union.vec128_t* %XMM1.i674 to i8*
  %2665 = load i64, i64* %PC.i672
  %2666 = add i64 %2665, 5
  store i64 %2666, i64* %PC.i672
  %2667 = bitcast i8* %2664 to <2 x float>*
  %2668 = load <2 x float>, <2 x float>* %2667, align 1
  %2669 = extractelement <2 x float> %2668, i32 0
  %2670 = inttoptr i64 %2663 to float*
  store float %2669, float* %2670
  store %struct.Memory* %loadMem_4045c0, %struct.Memory** %MEMORY
  %loadMem_4045c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 33
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %2673 to i64*
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 15
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %2676 to i64*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2678 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2677, i64 0, i64 1
  %YMM1.i671 = bitcast %union.VectorReg* %2678 to %"class.std::bitset"*
  %2679 = bitcast %"class.std::bitset"* %YMM1.i671 to i8*
  %2680 = load i64, i64* %RBP.i670
  %2681 = sub i64 %2680, 24
  %2682 = load i64, i64* %PC.i669
  %2683 = add i64 %2682, 5
  store i64 %2683, i64* %PC.i669
  %2684 = inttoptr i64 %2681 to float*
  %2685 = load float, float* %2684
  %2686 = fpext float %2685 to double
  %2687 = bitcast i8* %2679 to double*
  store double %2686, double* %2687, align 1
  store %struct.Memory* %loadMem_4045c5, %struct.Memory** %MEMORY
  %loadMem_4045ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 33
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %2690 to i64*
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2692 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2691, i64 0, i64 0
  %YMM0.i667 = bitcast %union.VectorReg* %2692 to %"class.std::bitset"*
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2694 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2693, i64 0, i64 1
  %XMM1.i668 = bitcast %union.VectorReg* %2694 to %union.vec128_t*
  %2695 = bitcast %"class.std::bitset"* %YMM0.i667 to i8*
  %2696 = bitcast %"class.std::bitset"* %YMM0.i667 to i8*
  %2697 = bitcast %union.vec128_t* %XMM1.i668 to i8*
  %2698 = load i64, i64* %PC.i666
  %2699 = add i64 %2698, 4
  store i64 %2699, i64* %PC.i666
  %2700 = bitcast i8* %2696 to double*
  %2701 = load double, double* %2700, align 1
  %2702 = getelementptr inbounds i8, i8* %2696, i64 8
  %2703 = bitcast i8* %2702 to i64*
  %2704 = load i64, i64* %2703, align 1
  %2705 = bitcast i8* %2697 to double*
  %2706 = load double, double* %2705, align 1
  %2707 = fsub double %2701, %2706
  %2708 = bitcast i8* %2695 to double*
  store double %2707, double* %2708, align 1
  %2709 = getelementptr inbounds i8, i8* %2695, i64 8
  %2710 = bitcast i8* %2709 to i64*
  store i64 %2704, i64* %2710, align 1
  store %struct.Memory* %loadMem_4045ca, %struct.Memory** %MEMORY
  %loadMem_4045ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2712 = getelementptr inbounds %struct.GPR, %struct.GPR* %2711, i32 0, i32 33
  %2713 = getelementptr inbounds %struct.Reg, %struct.Reg* %2712, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %2713 to i64*
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2715 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2714, i64 0, i64 0
  %YMM0.i664 = bitcast %union.VectorReg* %2715 to %"class.std::bitset"*
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2717 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2716, i64 0, i64 0
  %XMM0.i665 = bitcast %union.VectorReg* %2717 to %union.vec128_t*
  %2718 = bitcast %"class.std::bitset"* %YMM0.i664 to i8*
  %2719 = bitcast %union.vec128_t* %XMM0.i665 to i8*
  %2720 = load i64, i64* %PC.i663
  %2721 = add i64 %2720, 4
  store i64 %2721, i64* %PC.i663
  %2722 = bitcast i8* %2718 to <2 x i32>*
  %2723 = load <2 x i32>, <2 x i32>* %2722, align 1
  %2724 = getelementptr inbounds i8, i8* %2718, i64 8
  %2725 = bitcast i8* %2724 to <2 x i32>*
  %2726 = load <2 x i32>, <2 x i32>* %2725, align 1
  %2727 = bitcast i8* %2719 to double*
  %2728 = load double, double* %2727, align 1
  %2729 = fptrunc double %2728 to float
  %2730 = bitcast i8* %2718 to float*
  store float %2729, float* %2730, align 1
  %2731 = extractelement <2 x i32> %2723, i32 1
  %2732 = getelementptr inbounds i8, i8* %2718, i64 4
  %2733 = bitcast i8* %2732 to i32*
  store i32 %2731, i32* %2733, align 1
  %2734 = extractelement <2 x i32> %2726, i32 0
  %2735 = bitcast i8* %2724 to i32*
  store i32 %2734, i32* %2735, align 1
  %2736 = extractelement <2 x i32> %2726, i32 1
  %2737 = getelementptr inbounds i8, i8* %2718, i64 12
  %2738 = bitcast i8* %2737 to i32*
  store i32 %2736, i32* %2738, align 1
  store %struct.Memory* %loadMem_4045ce, %struct.Memory** %MEMORY
  %loadMem_4045d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 33
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %2741 to i64*
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 15
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %RBP.i661 = bitcast %union.anon* %2744 to i64*
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2746 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2745, i64 0, i64 0
  %XMM0.i662 = bitcast %union.VectorReg* %2746 to %union.vec128_t*
  %2747 = load i64, i64* %RBP.i661
  %2748 = sub i64 %2747, 28
  %2749 = bitcast %union.vec128_t* %XMM0.i662 to i8*
  %2750 = load i64, i64* %PC.i660
  %2751 = add i64 %2750, 5
  store i64 %2751, i64* %PC.i660
  %2752 = bitcast i8* %2749 to <2 x float>*
  %2753 = load <2 x float>, <2 x float>* %2752, align 1
  %2754 = extractelement <2 x float> %2753, i32 0
  %2755 = inttoptr i64 %2748 to float*
  store float %2754, float* %2755
  store %struct.Memory* %loadMem_4045d2, %struct.Memory** %MEMORY
  %loadMem_4045d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 33
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %2758 to i64*
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 15
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %RBP.i659 = bitcast %union.anon* %2761 to i64*
  %2762 = load i64, i64* %RBP.i659
  %2763 = sub i64 %2762, 108
  %2764 = load i64, i64* %PC.i658
  %2765 = add i64 %2764, 7
  store i64 %2765, i64* %PC.i658
  %2766 = inttoptr i64 %2763 to i32*
  store i32 0, i32* %2766
  store %struct.Memory* %loadMem_4045d7, %struct.Memory** %MEMORY
  br label %block_.L_4045de

block_.L_4045de:                                  ; preds = %block_.L_404675, %block_.L_4045a5
  %loadMem_4045de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 33
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %2769 to i64*
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 1
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %RAX.i656 = bitcast %union.anon* %2772 to i64*
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 15
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %RBP.i657 = bitcast %union.anon* %2775 to i64*
  %2776 = load i64, i64* %RBP.i657
  %2777 = sub i64 %2776, 108
  %2778 = load i64, i64* %PC.i655
  %2779 = add i64 %2778, 3
  store i64 %2779, i64* %PC.i655
  %2780 = inttoptr i64 %2777 to i32*
  %2781 = load i32, i32* %2780
  %2782 = zext i32 %2781 to i64
  store i64 %2782, i64* %RAX.i656, align 8
  store %struct.Memory* %loadMem_4045de, %struct.Memory** %MEMORY
  %loadMem_4045e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2784 = getelementptr inbounds %struct.GPR, %struct.GPR* %2783, i32 0, i32 33
  %2785 = getelementptr inbounds %struct.Reg, %struct.Reg* %2784, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %2785 to i64*
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2787 = getelementptr inbounds %struct.GPR, %struct.GPR* %2786, i32 0, i32 1
  %2788 = getelementptr inbounds %struct.Reg, %struct.Reg* %2787, i32 0, i32 0
  %EAX.i653 = bitcast %union.anon* %2788 to i32*
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 15
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %RBP.i654 = bitcast %union.anon* %2791 to i64*
  %2792 = load i32, i32* %EAX.i653
  %2793 = zext i32 %2792 to i64
  %2794 = load i64, i64* %RBP.i654
  %2795 = sub i64 %2794, 20
  %2796 = load i64, i64* %PC.i652
  %2797 = add i64 %2796, 3
  store i64 %2797, i64* %PC.i652
  %2798 = inttoptr i64 %2795 to i32*
  %2799 = load i32, i32* %2798
  %2800 = sub i32 %2792, %2799
  %2801 = icmp ult i32 %2792, %2799
  %2802 = zext i1 %2801 to i8
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2802, i8* %2803, align 1
  %2804 = and i32 %2800, 255
  %2805 = call i32 @llvm.ctpop.i32(i32 %2804)
  %2806 = trunc i32 %2805 to i8
  %2807 = and i8 %2806, 1
  %2808 = xor i8 %2807, 1
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2808, i8* %2809, align 1
  %2810 = xor i32 %2799, %2792
  %2811 = xor i32 %2810, %2800
  %2812 = lshr i32 %2811, 4
  %2813 = trunc i32 %2812 to i8
  %2814 = and i8 %2813, 1
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2814, i8* %2815, align 1
  %2816 = icmp eq i32 %2800, 0
  %2817 = zext i1 %2816 to i8
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2817, i8* %2818, align 1
  %2819 = lshr i32 %2800, 31
  %2820 = trunc i32 %2819 to i8
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2820, i8* %2821, align 1
  %2822 = lshr i32 %2792, 31
  %2823 = lshr i32 %2799, 31
  %2824 = xor i32 %2823, %2822
  %2825 = xor i32 %2819, %2822
  %2826 = add i32 %2825, %2824
  %2827 = icmp eq i32 %2826, 2
  %2828 = zext i1 %2827 to i8
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2828, i8* %2829, align 1
  store %struct.Memory* %loadMem_4045e1, %struct.Memory** %MEMORY
  %loadMem_4045e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2831 = getelementptr inbounds %struct.GPR, %struct.GPR* %2830, i32 0, i32 33
  %2832 = getelementptr inbounds %struct.Reg, %struct.Reg* %2831, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %2832 to i64*
  %2833 = load i64, i64* %PC.i651
  %2834 = add i64 %2833, 159
  %2835 = load i64, i64* %PC.i651
  %2836 = add i64 %2835, 6
  %2837 = load i64, i64* %PC.i651
  %2838 = add i64 %2837, 6
  store i64 %2838, i64* %PC.i651
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2840 = load i8, i8* %2839, align 1
  %2841 = icmp ne i8 %2840, 0
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2843 = load i8, i8* %2842, align 1
  %2844 = icmp ne i8 %2843, 0
  %2845 = xor i1 %2841, %2844
  %2846 = xor i1 %2845, true
  %2847 = zext i1 %2846 to i8
  store i8 %2847, i8* %BRANCH_TAKEN, align 1
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2849 = select i1 %2845, i64 %2836, i64 %2834
  store i64 %2849, i64* %2848, align 8
  store %struct.Memory* %loadMem_4045e4, %struct.Memory** %MEMORY
  %loadBr_4045e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4045e4 = icmp eq i8 %loadBr_4045e4, 1
  br i1 %cmpBr_4045e4, label %block_.L_404683, label %block_4045ea

block_4045ea:                                     ; preds = %block_.L_4045de
  %loadMem_4045ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 33
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %2852 to i64*
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 15
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %RBP.i650 = bitcast %union.anon* %2855 to i64*
  %2856 = load i64, i64* %RBP.i650
  %2857 = sub i64 %2856, 100
  %2858 = load i64, i64* %PC.i649
  %2859 = add i64 %2858, 7
  store i64 %2859, i64* %PC.i649
  %2860 = inttoptr i64 %2857 to i32*
  store i32 -1, i32* %2860
  store %struct.Memory* %loadMem_4045ea, %struct.Memory** %MEMORY
  %loadMem_4045f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 33
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %2863 to i64*
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 15
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %RBP.i648 = bitcast %union.anon* %2866 to i64*
  %2867 = load i64, i64* %RBP.i648
  %2868 = sub i64 %2867, 104
  %2869 = load i64, i64* %PC.i647
  %2870 = add i64 %2869, 7
  store i64 %2870, i64* %PC.i647
  %2871 = inttoptr i64 %2868 to i32*
  store i32 0, i32* %2871
  store %struct.Memory* %loadMem_4045f1, %struct.Memory** %MEMORY
  br label %block_.L_4045f8

block_.L_4045f8:                                  ; preds = %block_.L_404649, %block_4045ea
  %loadMem_4045f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2873 = getelementptr inbounds %struct.GPR, %struct.GPR* %2872, i32 0, i32 33
  %2874 = getelementptr inbounds %struct.Reg, %struct.Reg* %2873, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %2874 to i64*
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2876 = getelementptr inbounds %struct.GPR, %struct.GPR* %2875, i32 0, i32 1
  %2877 = getelementptr inbounds %struct.Reg, %struct.Reg* %2876, i32 0, i32 0
  %RAX.i645 = bitcast %union.anon* %2877 to i64*
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 15
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %RBP.i646 = bitcast %union.anon* %2880 to i64*
  %2881 = load i64, i64* %RBP.i646
  %2882 = sub i64 %2881, 104
  %2883 = load i64, i64* %PC.i644
  %2884 = add i64 %2883, 3
  store i64 %2884, i64* %PC.i644
  %2885 = inttoptr i64 %2882 to i32*
  %2886 = load i32, i32* %2885
  %2887 = zext i32 %2886 to i64
  store i64 %2887, i64* %RAX.i645, align 8
  store %struct.Memory* %loadMem_4045f8, %struct.Memory** %MEMORY
  %loadMem_4045fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2889 = getelementptr inbounds %struct.GPR, %struct.GPR* %2888, i32 0, i32 33
  %2890 = getelementptr inbounds %struct.Reg, %struct.Reg* %2889, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %2890 to i64*
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2892 = getelementptr inbounds %struct.GPR, %struct.GPR* %2891, i32 0, i32 5
  %2893 = getelementptr inbounds %struct.Reg, %struct.Reg* %2892, i32 0, i32 0
  %RCX.i642 = bitcast %union.anon* %2893 to i64*
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2895 = getelementptr inbounds %struct.GPR, %struct.GPR* %2894, i32 0, i32 15
  %2896 = getelementptr inbounds %struct.Reg, %struct.Reg* %2895, i32 0, i32 0
  %RBP.i643 = bitcast %union.anon* %2896 to i64*
  %2897 = load i64, i64* %RBP.i643
  %2898 = sub i64 %2897, 72
  %2899 = load i64, i64* %PC.i641
  %2900 = add i64 %2899, 4
  store i64 %2900, i64* %PC.i641
  %2901 = inttoptr i64 %2898 to i64*
  %2902 = load i64, i64* %2901
  store i64 %2902, i64* %RCX.i642, align 8
  store %struct.Memory* %loadMem_4045fb, %struct.Memory** %MEMORY
  %loadMem_4045ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 33
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %2905 to i64*
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2907 = getelementptr inbounds %struct.GPR, %struct.GPR* %2906, i32 0, i32 7
  %2908 = getelementptr inbounds %struct.Reg, %struct.Reg* %2907, i32 0, i32 0
  %RDX.i639 = bitcast %union.anon* %2908 to i64*
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2910 = getelementptr inbounds %struct.GPR, %struct.GPR* %2909, i32 0, i32 15
  %2911 = getelementptr inbounds %struct.Reg, %struct.Reg* %2910, i32 0, i32 0
  %RBP.i640 = bitcast %union.anon* %2911 to i64*
  %2912 = load i64, i64* %RBP.i640
  %2913 = sub i64 %2912, 108
  %2914 = load i64, i64* %PC.i638
  %2915 = add i64 %2914, 4
  store i64 %2915, i64* %PC.i638
  %2916 = inttoptr i64 %2913 to i32*
  %2917 = load i32, i32* %2916
  %2918 = sext i32 %2917 to i64
  store i64 %2918, i64* %RDX.i639, align 8
  store %struct.Memory* %loadMem_4045ff, %struct.Memory** %MEMORY
  %loadMem_404603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2920 = getelementptr inbounds %struct.GPR, %struct.GPR* %2919, i32 0, i32 33
  %2921 = getelementptr inbounds %struct.Reg, %struct.Reg* %2920, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %2921 to i64*
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2923 = getelementptr inbounds %struct.GPR, %struct.GPR* %2922, i32 0, i32 5
  %2924 = getelementptr inbounds %struct.Reg, %struct.Reg* %2923, i32 0, i32 0
  %RCX.i635 = bitcast %union.anon* %2924 to i64*
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2926 = getelementptr inbounds %struct.GPR, %struct.GPR* %2925, i32 0, i32 7
  %2927 = getelementptr inbounds %struct.Reg, %struct.Reg* %2926, i32 0, i32 0
  %RDX.i636 = bitcast %union.anon* %2927 to i64*
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 9
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %RSI.i637 = bitcast %union.anon* %2930 to i64*
  %2931 = load i64, i64* %RCX.i635
  %2932 = load i64, i64* %RDX.i636
  %2933 = mul i64 %2932, 4
  %2934 = add i64 %2933, %2931
  %2935 = load i64, i64* %PC.i634
  %2936 = add i64 %2935, 3
  store i64 %2936, i64* %PC.i634
  %2937 = inttoptr i64 %2934 to i32*
  %2938 = load i32, i32* %2937
  %2939 = zext i32 %2938 to i64
  store i64 %2939, i64* %RSI.i637, align 8
  store %struct.Memory* %loadMem_404603, %struct.Memory** %MEMORY
  %loadMem_404606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2941 = getelementptr inbounds %struct.GPR, %struct.GPR* %2940, i32 0, i32 33
  %2942 = getelementptr inbounds %struct.Reg, %struct.Reg* %2941, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %2942 to i64*
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2944 = getelementptr inbounds %struct.GPR, %struct.GPR* %2943, i32 0, i32 9
  %2945 = getelementptr inbounds %struct.Reg, %struct.Reg* %2944, i32 0, i32 0
  %RSI.i632 = bitcast %union.anon* %2945 to i64*
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 15
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %RBP.i633 = bitcast %union.anon* %2948 to i64*
  %2949 = load i64, i64* %RSI.i632
  %2950 = load i64, i64* %RBP.i633
  %2951 = sub i64 %2950, 76
  %2952 = load i64, i64* %PC.i631
  %2953 = add i64 %2952, 3
  store i64 %2953, i64* %PC.i631
  %2954 = trunc i64 %2949 to i32
  %2955 = inttoptr i64 %2951 to i32*
  %2956 = load i32, i32* %2955
  %2957 = sub i32 %2954, %2956
  %2958 = zext i32 %2957 to i64
  store i64 %2958, i64* %RSI.i632, align 8
  %2959 = icmp ult i32 %2954, %2956
  %2960 = zext i1 %2959 to i8
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2960, i8* %2961, align 1
  %2962 = and i32 %2957, 255
  %2963 = call i32 @llvm.ctpop.i32(i32 %2962)
  %2964 = trunc i32 %2963 to i8
  %2965 = and i8 %2964, 1
  %2966 = xor i8 %2965, 1
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2966, i8* %2967, align 1
  %2968 = xor i32 %2956, %2954
  %2969 = xor i32 %2968, %2957
  %2970 = lshr i32 %2969, 4
  %2971 = trunc i32 %2970 to i8
  %2972 = and i8 %2971, 1
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2972, i8* %2973, align 1
  %2974 = icmp eq i32 %2957, 0
  %2975 = zext i1 %2974 to i8
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2975, i8* %2976, align 1
  %2977 = lshr i32 %2957, 31
  %2978 = trunc i32 %2977 to i8
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2978, i8* %2979, align 1
  %2980 = lshr i32 %2954, 31
  %2981 = lshr i32 %2956, 31
  %2982 = xor i32 %2981, %2980
  %2983 = xor i32 %2977, %2980
  %2984 = add i32 %2983, %2982
  %2985 = icmp eq i32 %2984, 2
  %2986 = zext i1 %2985 to i8
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2986, i8* %2987, align 1
  store %struct.Memory* %loadMem_404606, %struct.Memory** %MEMORY
  %loadMem_404609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2989 = getelementptr inbounds %struct.GPR, %struct.GPR* %2988, i32 0, i32 33
  %2990 = getelementptr inbounds %struct.Reg, %struct.Reg* %2989, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %2990 to i64*
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2992 = getelementptr inbounds %struct.GPR, %struct.GPR* %2991, i32 0, i32 1
  %2993 = getelementptr inbounds %struct.Reg, %struct.Reg* %2992, i32 0, i32 0
  %EAX.i629 = bitcast %union.anon* %2993 to i32*
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2995 = getelementptr inbounds %struct.GPR, %struct.GPR* %2994, i32 0, i32 9
  %2996 = getelementptr inbounds %struct.Reg, %struct.Reg* %2995, i32 0, i32 0
  %ESI.i630 = bitcast %union.anon* %2996 to i32*
  %2997 = load i32, i32* %EAX.i629
  %2998 = zext i32 %2997 to i64
  %2999 = load i32, i32* %ESI.i630
  %3000 = zext i32 %2999 to i64
  %3001 = load i64, i64* %PC.i628
  %3002 = add i64 %3001, 2
  store i64 %3002, i64* %PC.i628
  %3003 = sub i32 %2997, %2999
  %3004 = icmp ult i32 %2997, %2999
  %3005 = zext i1 %3004 to i8
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3005, i8* %3006, align 1
  %3007 = and i32 %3003, 255
  %3008 = call i32 @llvm.ctpop.i32(i32 %3007)
  %3009 = trunc i32 %3008 to i8
  %3010 = and i8 %3009, 1
  %3011 = xor i8 %3010, 1
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3011, i8* %3012, align 1
  %3013 = xor i64 %3000, %2998
  %3014 = trunc i64 %3013 to i32
  %3015 = xor i32 %3014, %3003
  %3016 = lshr i32 %3015, 4
  %3017 = trunc i32 %3016 to i8
  %3018 = and i8 %3017, 1
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3018, i8* %3019, align 1
  %3020 = icmp eq i32 %3003, 0
  %3021 = zext i1 %3020 to i8
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3021, i8* %3022, align 1
  %3023 = lshr i32 %3003, 31
  %3024 = trunc i32 %3023 to i8
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3024, i8* %3025, align 1
  %3026 = lshr i32 %2997, 31
  %3027 = lshr i32 %2999, 31
  %3028 = xor i32 %3027, %3026
  %3029 = xor i32 %3023, %3026
  %3030 = add i32 %3029, %3028
  %3031 = icmp eq i32 %3030, 2
  %3032 = zext i1 %3031 to i8
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3032, i8* %3033, align 1
  store %struct.Memory* %loadMem_404609, %struct.Memory** %MEMORY
  %loadMem_40460b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 33
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %3036 to i64*
  %3037 = load i64, i64* %PC.i627
  %3038 = add i64 %3037, 101
  %3039 = load i64, i64* %PC.i627
  %3040 = add i64 %3039, 6
  %3041 = load i64, i64* %PC.i627
  %3042 = add i64 %3041, 6
  store i64 %3042, i64* %PC.i627
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3044 = load i8, i8* %3043, align 1
  %3045 = icmp ne i8 %3044, 0
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3047 = load i8, i8* %3046, align 1
  %3048 = icmp ne i8 %3047, 0
  %3049 = xor i1 %3045, %3048
  %3050 = xor i1 %3049, true
  %3051 = zext i1 %3050 to i8
  store i8 %3051, i8* %BRANCH_TAKEN, align 1
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3053 = select i1 %3049, i64 %3040, i64 %3038
  store i64 %3053, i64* %3052, align 8
  store %struct.Memory* %loadMem_40460b, %struct.Memory** %MEMORY
  %loadBr_40460b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40460b = icmp eq i8 %loadBr_40460b, 1
  br i1 %cmpBr_40460b, label %block_.L_404670, label %block_404611

block_404611:                                     ; preds = %block_.L_4045f8
  %loadMem1_404611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3055 = getelementptr inbounds %struct.GPR, %struct.GPR* %3054, i32 0, i32 33
  %3056 = getelementptr inbounds %struct.Reg, %struct.Reg* %3055, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %3056 to i64*
  %3057 = load i64, i64* %PC.i626
  %3058 = add i64 %3057, 265711
  %3059 = load i64, i64* %PC.i626
  %3060 = add i64 %3059, 5
  %3061 = load i64, i64* %PC.i626
  %3062 = add i64 %3061, 5
  store i64 %3062, i64* %PC.i626
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3064 = load i64, i64* %3063, align 8
  %3065 = add i64 %3064, -8
  %3066 = inttoptr i64 %3065 to i64*
  store i64 %3060, i64* %3066
  store i64 %3065, i64* %3063, align 8
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3058, i64* %3067, align 8
  store %struct.Memory* %loadMem1_404611, %struct.Memory** %MEMORY
  %loadMem2_404611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_404611 = load i64, i64* %3
  %call2_404611 = call %struct.Memory* @sub_445400.sre_random(%struct.State* %0, i64 %loadPC_404611, %struct.Memory* %loadMem2_404611)
  store %struct.Memory* %call2_404611, %struct.Memory** %MEMORY
  %loadMem_404616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 33
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %3070 to i64*
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3072 = getelementptr inbounds %struct.GPR, %struct.GPR* %3071, i32 0, i32 15
  %3073 = getelementptr inbounds %struct.Reg, %struct.Reg* %3072, i32 0, i32 0
  %RBP.i624 = bitcast %union.anon* %3073 to i64*
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3075 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3074, i64 0, i64 1
  %YMM1.i625 = bitcast %union.VectorReg* %3075 to %"class.std::bitset"*
  %3076 = bitcast %"class.std::bitset"* %YMM1.i625 to i8*
  %3077 = load i64, i64* %RBP.i624
  %3078 = sub i64 %3077, 24
  %3079 = load i64, i64* %PC.i623
  %3080 = add i64 %3079, 5
  store i64 %3080, i64* %PC.i623
  %3081 = inttoptr i64 %3078 to float*
  %3082 = load float, float* %3081
  %3083 = fpext float %3082 to double
  %3084 = bitcast i8* %3076 to double*
  store double %3083, double* %3084, align 1
  store %struct.Memory* %loadMem_404616, %struct.Memory** %MEMORY
  %loadMem_40461b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 33
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %3087 to i64*
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3089 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3088, i64 0, i64 0
  %XMM0.i619 = bitcast %union.VectorReg* %3089 to %union.vec128_t*
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3091 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3090, i64 0, i64 1
  %XMM1.i620 = bitcast %union.VectorReg* %3091 to %union.vec128_t*
  %3092 = bitcast %union.vec128_t* %XMM1.i620 to i8*
  %3093 = bitcast %union.vec128_t* %XMM0.i619 to i8*
  %3094 = load i64, i64* %PC.i618
  %3095 = add i64 %3094, 4
  store i64 %3095, i64* %PC.i618
  %3096 = bitcast i8* %3092 to double*
  %3097 = load double, double* %3096, align 1
  %3098 = bitcast i8* %3093 to double*
  %3099 = load double, double* %3098, align 1
  %3100 = fcmp uno double %3097, %3099
  br i1 %3100, label %3101, label %3113

; <label>:3101:                                   ; preds = %block_404611
  %3102 = fadd double %3097, %3099
  %3103 = bitcast double %3102 to i64
  %3104 = and i64 %3103, 9221120237041090560
  %3105 = icmp eq i64 %3104, 9218868437227405312
  %3106 = and i64 %3103, 2251799813685247
  %3107 = icmp ne i64 %3106, 0
  %3108 = and i1 %3105, %3107
  br i1 %3108, label %3109, label %3119

; <label>:3109:                                   ; preds = %3101
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3111 = load i64, i64* %3110, align 8
  %3112 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3111, %struct.Memory* %loadMem_40461b)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:3113:                                   ; preds = %block_404611
  %3114 = fcmp ogt double %3097, %3099
  br i1 %3114, label %3119, label %3115

; <label>:3115:                                   ; preds = %3113
  %3116 = fcmp olt double %3097, %3099
  br i1 %3116, label %3119, label %3117

; <label>:3117:                                   ; preds = %3115
  %3118 = fcmp oeq double %3097, %3099
  br i1 %3118, label %3119, label %3126

; <label>:3119:                                   ; preds = %3117, %3115, %3113, %3101
  %3120 = phi i8 [ 0, %3113 ], [ 0, %3115 ], [ 1, %3117 ], [ 1, %3101 ]
  %3121 = phi i8 [ 0, %3113 ], [ 0, %3115 ], [ 0, %3117 ], [ 1, %3101 ]
  %3122 = phi i8 [ 0, %3113 ], [ 1, %3115 ], [ 0, %3117 ], [ 1, %3101 ]
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3120, i8* %3123, align 1
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3121, i8* %3124, align 1
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3122, i8* %3125, align 1
  br label %3126

; <label>:3126:                                   ; preds = %3119, %3117
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3127, align 1
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3128, align 1
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3129, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %3109, %3126
  %3130 = phi %struct.Memory* [ %3112, %3109 ], [ %loadMem_40461b, %3126 ]
  store %struct.Memory* %3130, %struct.Memory** %MEMORY
  %loadMem_40461f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3132 = getelementptr inbounds %struct.GPR, %struct.GPR* %3131, i32 0, i32 33
  %3133 = getelementptr inbounds %struct.Reg, %struct.Reg* %3132, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %3133 to i64*
  %3134 = load i64, i64* %PC.i617
  %3135 = add i64 %3134, 16
  %3136 = load i64, i64* %PC.i617
  %3137 = add i64 %3136, 6
  %3138 = load i64, i64* %PC.i617
  %3139 = add i64 %3138, 6
  store i64 %3139, i64* %PC.i617
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3141 = load i8, i8* %3140, align 1
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3143 = load i8, i8* %3142, align 1
  %3144 = or i8 %3143, %3141
  %3145 = icmp eq i8 %3144, 0
  %3146 = zext i1 %3145 to i8
  store i8 %3146, i8* %BRANCH_TAKEN, align 1
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3148 = select i1 %3145, i64 %3135, i64 %3137
  store i64 %3148, i64* %3147, align 8
  store %struct.Memory* %loadMem_40461f, %struct.Memory** %MEMORY
  %loadBr_40461f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40461f = icmp eq i8 %loadBr_40461f, 1
  br i1 %cmpBr_40461f, label %block_.L_40462f, label %block_404625

block_404625:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_404625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3150 = getelementptr inbounds %struct.GPR, %struct.GPR* %3149, i32 0, i32 33
  %3151 = getelementptr inbounds %struct.Reg, %struct.Reg* %3150, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %3151 to i64*
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 15
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %RBP.i616 = bitcast %union.anon* %3154 to i64*
  %3155 = load i64, i64* %RBP.i616
  %3156 = sub i64 %3155, 100
  %3157 = load i64, i64* %PC.i615
  %3158 = add i64 %3157, 4
  store i64 %3158, i64* %PC.i615
  %3159 = inttoptr i64 %3156 to i32*
  %3160 = load i32, i32* %3159
  %3161 = sub i32 %3160, -1
  %3162 = icmp ult i32 %3160, -1
  %3163 = zext i1 %3162 to i8
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3163, i8* %3164, align 1
  %3165 = and i32 %3161, 255
  %3166 = call i32 @llvm.ctpop.i32(i32 %3165)
  %3167 = trunc i32 %3166 to i8
  %3168 = and i8 %3167, 1
  %3169 = xor i8 %3168, 1
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3169, i8* %3170, align 1
  %3171 = xor i32 %3160, -1
  %3172 = xor i32 %3171, %3161
  %3173 = lshr i32 %3172, 4
  %3174 = trunc i32 %3173 to i8
  %3175 = and i8 %3174, 1
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3175, i8* %3176, align 1
  %3177 = icmp eq i32 %3161, 0
  %3178 = zext i1 %3177 to i8
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3178, i8* %3179, align 1
  %3180 = lshr i32 %3161, 31
  %3181 = trunc i32 %3180 to i8
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3181, i8* %3182, align 1
  %3183 = lshr i32 %3160, 31
  %3184 = xor i32 %3183, 1
  %3185 = xor i32 %3180, %3183
  %3186 = add i32 %3185, %3184
  %3187 = icmp eq i32 %3186, 2
  %3188 = zext i1 %3187 to i8
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3188, i8* %3189, align 1
  store %struct.Memory* %loadMem_404625, %struct.Memory** %MEMORY
  %loadMem_404629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 33
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %3192 to i64*
  %3193 = load i64, i64* %PC.i614
  %3194 = add i64 %3193, 32
  %3195 = load i64, i64* %PC.i614
  %3196 = add i64 %3195, 6
  %3197 = load i64, i64* %PC.i614
  %3198 = add i64 %3197, 6
  store i64 %3198, i64* %PC.i614
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3200 = load i8, i8* %3199, align 1
  %3201 = icmp eq i8 %3200, 0
  %3202 = zext i1 %3201 to i8
  store i8 %3202, i8* %BRANCH_TAKEN, align 1
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3204 = select i1 %3201, i64 %3194, i64 %3196
  store i64 %3204, i64* %3203, align 8
  store %struct.Memory* %loadMem_404629, %struct.Memory** %MEMORY
  %loadBr_404629 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_404629 = icmp eq i8 %loadBr_404629, 1
  br i1 %cmpBr_404629, label %block_.L_404649, label %block_.L_40462f

block_.L_40462f:                                  ; preds = %block_404625, %routine_ucomisd__xmm0___xmm1.exit
  %loadMem1_40462f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3206 = getelementptr inbounds %struct.GPR, %struct.GPR* %3205, i32 0, i32 33
  %3207 = getelementptr inbounds %struct.Reg, %struct.Reg* %3206, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %3207 to i64*
  %3208 = load i64, i64* %PC.i613
  %3209 = add i64 %3208, 265681
  %3210 = load i64, i64* %PC.i613
  %3211 = add i64 %3210, 5
  %3212 = load i64, i64* %PC.i613
  %3213 = add i64 %3212, 5
  store i64 %3213, i64* %PC.i613
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3215 = load i64, i64* %3214, align 8
  %3216 = add i64 %3215, -8
  %3217 = inttoptr i64 %3216 to i64*
  store i64 %3211, i64* %3217
  store i64 %3216, i64* %3214, align 8
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3209, i64* %3218, align 8
  store %struct.Memory* %loadMem1_40462f, %struct.Memory** %MEMORY
  %loadMem2_40462f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40462f = load i64, i64* %3
  %call2_40462f = call %struct.Memory* @sub_445400.sre_random(%struct.State* %0, i64 %loadPC_40462f, %struct.Memory* %loadMem2_40462f)
  store %struct.Memory* %call2_40462f, %struct.Memory** %MEMORY
  %loadMem_404634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 33
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %3221 to i64*
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3223 = getelementptr inbounds %struct.GPR, %struct.GPR* %3222, i32 0, i32 1
  %3224 = getelementptr inbounds %struct.Reg, %struct.Reg* %3223, i32 0, i32 0
  %RAX.i611 = bitcast %union.anon* %3224 to i64*
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 15
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %3227 to i64*
  %3228 = load i64, i64* %RBP.i612
  %3229 = sub i64 %3228, 76
  %3230 = load i64, i64* %PC.i610
  %3231 = add i64 %3230, 3
  store i64 %3231, i64* %PC.i610
  %3232 = inttoptr i64 %3229 to i32*
  %3233 = load i32, i32* %3232
  %3234 = zext i32 %3233 to i64
  store i64 %3234, i64* %RAX.i611, align 8
  store %struct.Memory* %loadMem_404634, %struct.Memory** %MEMORY
  %loadMem_404637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3236 = getelementptr inbounds %struct.GPR, %struct.GPR* %3235, i32 0, i32 33
  %3237 = getelementptr inbounds %struct.Reg, %struct.Reg* %3236, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %3237 to i64*
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3239 = getelementptr inbounds %struct.GPR, %struct.GPR* %3238, i32 0, i32 1
  %3240 = getelementptr inbounds %struct.Reg, %struct.Reg* %3239, i32 0, i32 0
  %RAX.i609 = bitcast %union.anon* %3240 to i64*
  %3241 = load i64, i64* %RAX.i609
  %3242 = load i64, i64* %PC.i608
  %3243 = add i64 %3242, 3
  store i64 %3243, i64* %PC.i608
  %3244 = trunc i64 %3241 to i32
  %3245 = add i32 1, %3244
  %3246 = zext i32 %3245 to i64
  store i64 %3246, i64* %RAX.i609, align 8
  %3247 = icmp ult i32 %3245, %3244
  %3248 = icmp ult i32 %3245, 1
  %3249 = or i1 %3247, %3248
  %3250 = zext i1 %3249 to i8
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3250, i8* %3251, align 1
  %3252 = and i32 %3245, 255
  %3253 = call i32 @llvm.ctpop.i32(i32 %3252)
  %3254 = trunc i32 %3253 to i8
  %3255 = and i8 %3254, 1
  %3256 = xor i8 %3255, 1
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3256, i8* %3257, align 1
  %3258 = xor i64 1, %3241
  %3259 = trunc i64 %3258 to i32
  %3260 = xor i32 %3259, %3245
  %3261 = lshr i32 %3260, 4
  %3262 = trunc i32 %3261 to i8
  %3263 = and i8 %3262, 1
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3263, i8* %3264, align 1
  %3265 = icmp eq i32 %3245, 0
  %3266 = zext i1 %3265 to i8
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3266, i8* %3267, align 1
  %3268 = lshr i32 %3245, 31
  %3269 = trunc i32 %3268 to i8
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3269, i8* %3270, align 1
  %3271 = lshr i32 %3244, 31
  %3272 = xor i32 %3268, %3271
  %3273 = add i32 %3272, %3268
  %3274 = icmp eq i32 %3273, 2
  %3275 = zext i1 %3274 to i8
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3275, i8* %3276, align 1
  store %struct.Memory* %loadMem_404637, %struct.Memory** %MEMORY
  %loadMem_40463a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3278 = getelementptr inbounds %struct.GPR, %struct.GPR* %3277, i32 0, i32 33
  %3279 = getelementptr inbounds %struct.Reg, %struct.Reg* %3278, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %3279 to i64*
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3281 = getelementptr inbounds %struct.GPR, %struct.GPR* %3280, i32 0, i32 1
  %3282 = getelementptr inbounds %struct.Reg, %struct.Reg* %3281, i32 0, i32 0
  %EAX.i607 = bitcast %union.anon* %3282 to i32*
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3284 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3283, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3284 to %"class.std::bitset"*
  %3285 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3286 = load i32, i32* %EAX.i607
  %3287 = zext i32 %3286 to i64
  %3288 = load i64, i64* %PC.i606
  %3289 = add i64 %3288, 4
  store i64 %3289, i64* %PC.i606
  %3290 = sitofp i32 %3286 to double
  %3291 = bitcast i8* %3285 to double*
  store double %3290, double* %3291, align 1
  store %struct.Memory* %loadMem_40463a, %struct.Memory** %MEMORY
  %loadMem_40463e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3293 = getelementptr inbounds %struct.GPR, %struct.GPR* %3292, i32 0, i32 33
  %3294 = getelementptr inbounds %struct.Reg, %struct.Reg* %3293, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %3294 to i64*
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3296 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3295, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3296 to %"class.std::bitset"*
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3298 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3297, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %3298 to %union.vec128_t*
  %3299 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3300 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3301 = bitcast %union.vec128_t* %XMM1.i to i8*
  %3302 = load i64, i64* %PC.i605
  %3303 = add i64 %3302, 4
  store i64 %3303, i64* %PC.i605
  %3304 = bitcast i8* %3300 to double*
  %3305 = load double, double* %3304, align 1
  %3306 = getelementptr inbounds i8, i8* %3300, i64 8
  %3307 = bitcast i8* %3306 to i64*
  %3308 = load i64, i64* %3307, align 1
  %3309 = bitcast i8* %3301 to double*
  %3310 = load double, double* %3309, align 1
  %3311 = fmul double %3305, %3310
  %3312 = bitcast i8* %3299 to double*
  store double %3311, double* %3312, align 1
  %3313 = getelementptr inbounds i8, i8* %3299, i64 8
  %3314 = bitcast i8* %3313 to i64*
  store i64 %3308, i64* %3314, align 1
  store %struct.Memory* %loadMem_40463e, %struct.Memory** %MEMORY
  %loadMem_404642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 33
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %3317 to i64*
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 1
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %RAX.i604 = bitcast %union.anon* %3320 to i64*
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3322 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3321, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3322 to %union.vec128_t*
  %3323 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3324 = load i64, i64* %PC.i603
  %3325 = add i64 %3324, 4
  store i64 %3325, i64* %PC.i603
  %3326 = bitcast i8* %3323 to double*
  %3327 = load double, double* %3326, align 1
  %3328 = call double @llvm.trunc.f64(double %3327)
  %3329 = call double @llvm.fabs.f64(double %3328)
  %3330 = fcmp ogt double %3329, 0x41DFFFFFFFC00000
  %3331 = fptosi double %3328 to i32
  %3332 = zext i32 %3331 to i64
  %3333 = select i1 %3330, i64 2147483648, i64 %3332
  store i64 %3333, i64* %RAX.i604, align 8
  store %struct.Memory* %loadMem_404642, %struct.Memory** %MEMORY
  %loadMem_404646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3335 = getelementptr inbounds %struct.GPR, %struct.GPR* %3334, i32 0, i32 33
  %3336 = getelementptr inbounds %struct.Reg, %struct.Reg* %3335, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %3336 to i64*
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3338 = getelementptr inbounds %struct.GPR, %struct.GPR* %3337, i32 0, i32 1
  %3339 = getelementptr inbounds %struct.Reg, %struct.Reg* %3338, i32 0, i32 0
  %EAX.i601 = bitcast %union.anon* %3339 to i32*
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3341 = getelementptr inbounds %struct.GPR, %struct.GPR* %3340, i32 0, i32 15
  %3342 = getelementptr inbounds %struct.Reg, %struct.Reg* %3341, i32 0, i32 0
  %RBP.i602 = bitcast %union.anon* %3342 to i64*
  %3343 = load i64, i64* %RBP.i602
  %3344 = sub i64 %3343, 100
  %3345 = load i32, i32* %EAX.i601
  %3346 = zext i32 %3345 to i64
  %3347 = load i64, i64* %PC.i600
  %3348 = add i64 %3347, 3
  store i64 %3348, i64* %PC.i600
  %3349 = inttoptr i64 %3344 to i32*
  store i32 %3345, i32* %3349
  store %struct.Memory* %loadMem_404646, %struct.Memory** %MEMORY
  br label %block_.L_404649

block_.L_404649:                                  ; preds = %block_.L_40462f, %block_404625
  %loadMem_404649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3351 = getelementptr inbounds %struct.GPR, %struct.GPR* %3350, i32 0, i32 33
  %3352 = getelementptr inbounds %struct.Reg, %struct.Reg* %3351, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %3352 to i64*
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3354 = getelementptr inbounds %struct.GPR, %struct.GPR* %3353, i32 0, i32 1
  %3355 = getelementptr inbounds %struct.Reg, %struct.Reg* %3354, i32 0, i32 0
  %RAX.i598 = bitcast %union.anon* %3355 to i64*
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3357 = getelementptr inbounds %struct.GPR, %struct.GPR* %3356, i32 0, i32 15
  %3358 = getelementptr inbounds %struct.Reg, %struct.Reg* %3357, i32 0, i32 0
  %RBP.i599 = bitcast %union.anon* %3358 to i64*
  %3359 = load i64, i64* %RBP.i599
  %3360 = sub i64 %3359, 88
  %3361 = load i64, i64* %PC.i597
  %3362 = add i64 %3361, 4
  store i64 %3362, i64* %PC.i597
  %3363 = inttoptr i64 %3360 to i64*
  %3364 = load i64, i64* %3363
  store i64 %3364, i64* %RAX.i598, align 8
  store %struct.Memory* %loadMem_404649, %struct.Memory** %MEMORY
  %loadMem_40464d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3366 = getelementptr inbounds %struct.GPR, %struct.GPR* %3365, i32 0, i32 33
  %3367 = getelementptr inbounds %struct.Reg, %struct.Reg* %3366, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %3367 to i64*
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3369 = getelementptr inbounds %struct.GPR, %struct.GPR* %3368, i32 0, i32 5
  %3370 = getelementptr inbounds %struct.Reg, %struct.Reg* %3369, i32 0, i32 0
  %RCX.i595 = bitcast %union.anon* %3370 to i64*
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3372 = getelementptr inbounds %struct.GPR, %struct.GPR* %3371, i32 0, i32 15
  %3373 = getelementptr inbounds %struct.Reg, %struct.Reg* %3372, i32 0, i32 0
  %RBP.i596 = bitcast %union.anon* %3373 to i64*
  %3374 = load i64, i64* %RBP.i596
  %3375 = sub i64 %3374, 108
  %3376 = load i64, i64* %PC.i594
  %3377 = add i64 %3376, 4
  store i64 %3377, i64* %PC.i594
  %3378 = inttoptr i64 %3375 to i32*
  %3379 = load i32, i32* %3378
  %3380 = sext i32 %3379 to i64
  store i64 %3380, i64* %RCX.i595, align 8
  store %struct.Memory* %loadMem_40464d, %struct.Memory** %MEMORY
  %loadMem_404651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3382 = getelementptr inbounds %struct.GPR, %struct.GPR* %3381, i32 0, i32 33
  %3383 = getelementptr inbounds %struct.Reg, %struct.Reg* %3382, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %3383 to i64*
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3385 = getelementptr inbounds %struct.GPR, %struct.GPR* %3384, i32 0, i32 1
  %3386 = getelementptr inbounds %struct.Reg, %struct.Reg* %3385, i32 0, i32 0
  %RAX.i592 = bitcast %union.anon* %3386 to i64*
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3388 = getelementptr inbounds %struct.GPR, %struct.GPR* %3387, i32 0, i32 5
  %3389 = getelementptr inbounds %struct.Reg, %struct.Reg* %3388, i32 0, i32 0
  %RCX.i593 = bitcast %union.anon* %3389 to i64*
  %3390 = load i64, i64* %RAX.i592
  %3391 = load i64, i64* %RCX.i593
  %3392 = mul i64 %3391, 8
  %3393 = add i64 %3392, %3390
  %3394 = load i64, i64* %PC.i591
  %3395 = add i64 %3394, 4
  store i64 %3395, i64* %PC.i591
  %3396 = inttoptr i64 %3393 to i64*
  %3397 = load i64, i64* %3396
  store i64 %3397, i64* %RAX.i592, align 8
  store %struct.Memory* %loadMem_404651, %struct.Memory** %MEMORY
  %loadMem_404655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3399 = getelementptr inbounds %struct.GPR, %struct.GPR* %3398, i32 0, i32 33
  %3400 = getelementptr inbounds %struct.Reg, %struct.Reg* %3399, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %3400 to i64*
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3402 = getelementptr inbounds %struct.GPR, %struct.GPR* %3401, i32 0, i32 5
  %3403 = getelementptr inbounds %struct.Reg, %struct.Reg* %3402, i32 0, i32 0
  %RCX.i589 = bitcast %union.anon* %3403 to i64*
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 15
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %RBP.i590 = bitcast %union.anon* %3406 to i64*
  %3407 = load i64, i64* %RBP.i590
  %3408 = sub i64 %3407, 100
  %3409 = load i64, i64* %PC.i588
  %3410 = add i64 %3409, 4
  store i64 %3410, i64* %PC.i588
  %3411 = inttoptr i64 %3408 to i32*
  %3412 = load i32, i32* %3411
  %3413 = sext i32 %3412 to i64
  store i64 %3413, i64* %RCX.i589, align 8
  store %struct.Memory* %loadMem_404655, %struct.Memory** %MEMORY
  %loadMem_404659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3415 = getelementptr inbounds %struct.GPR, %struct.GPR* %3414, i32 0, i32 33
  %3416 = getelementptr inbounds %struct.Reg, %struct.Reg* %3415, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %3416 to i64*
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 1
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %RAX.i585 = bitcast %union.anon* %3419 to i64*
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3421 = getelementptr inbounds %struct.GPR, %struct.GPR* %3420, i32 0, i32 5
  %3422 = getelementptr inbounds %struct.Reg, %struct.Reg* %3421, i32 0, i32 0
  %RCX.i586 = bitcast %union.anon* %3422 to i64*
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3424 = getelementptr inbounds %struct.GPR, %struct.GPR* %3423, i32 0, i32 7
  %3425 = getelementptr inbounds %struct.Reg, %struct.Reg* %3424, i32 0, i32 0
  %RDX.i587 = bitcast %union.anon* %3425 to i64*
  %3426 = load i64, i64* %RAX.i585
  %3427 = load i64, i64* %RCX.i586
  %3428 = mul i64 %3427, 4
  %3429 = add i64 %3428, %3426
  %3430 = load i64, i64* %PC.i584
  %3431 = add i64 %3430, 3
  store i64 %3431, i64* %PC.i584
  %3432 = inttoptr i64 %3429 to i32*
  %3433 = load i32, i32* %3432
  %3434 = zext i32 %3433 to i64
  store i64 %3434, i64* %RDX.i587, align 8
  store %struct.Memory* %loadMem_404659, %struct.Memory** %MEMORY
  %loadMem_40465c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3436 = getelementptr inbounds %struct.GPR, %struct.GPR* %3435, i32 0, i32 33
  %3437 = getelementptr inbounds %struct.Reg, %struct.Reg* %3436, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %3437 to i64*
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3439 = getelementptr inbounds %struct.GPR, %struct.GPR* %3438, i32 0, i32 7
  %3440 = getelementptr inbounds %struct.Reg, %struct.Reg* %3439, i32 0, i32 0
  %RDX.i583 = bitcast %union.anon* %3440 to i64*
  %3441 = load i64, i64* %RDX.i583
  %3442 = load i64, i64* %PC.i582
  %3443 = add i64 %3442, 3
  store i64 %3443, i64* %PC.i582
  %3444 = trunc i64 %3441 to i32
  %3445 = add i32 1, %3444
  %3446 = zext i32 %3445 to i64
  store i64 %3446, i64* %RDX.i583, align 8
  %3447 = icmp ult i32 %3445, %3444
  %3448 = icmp ult i32 %3445, 1
  %3449 = or i1 %3447, %3448
  %3450 = zext i1 %3449 to i8
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3450, i8* %3451, align 1
  %3452 = and i32 %3445, 255
  %3453 = call i32 @llvm.ctpop.i32(i32 %3452)
  %3454 = trunc i32 %3453 to i8
  %3455 = and i8 %3454, 1
  %3456 = xor i8 %3455, 1
  %3457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3456, i8* %3457, align 1
  %3458 = xor i64 1, %3441
  %3459 = trunc i64 %3458 to i32
  %3460 = xor i32 %3459, %3445
  %3461 = lshr i32 %3460, 4
  %3462 = trunc i32 %3461 to i8
  %3463 = and i8 %3462, 1
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3463, i8* %3464, align 1
  %3465 = icmp eq i32 %3445, 0
  %3466 = zext i1 %3465 to i8
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3466, i8* %3467, align 1
  %3468 = lshr i32 %3445, 31
  %3469 = trunc i32 %3468 to i8
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3469, i8* %3470, align 1
  %3471 = lshr i32 %3444, 31
  %3472 = xor i32 %3468, %3471
  %3473 = add i32 %3472, %3468
  %3474 = icmp eq i32 %3473, 2
  %3475 = zext i1 %3474 to i8
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3475, i8* %3476, align 1
  store %struct.Memory* %loadMem_40465c, %struct.Memory** %MEMORY
  %loadMem_40465f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3478 = getelementptr inbounds %struct.GPR, %struct.GPR* %3477, i32 0, i32 33
  %3479 = getelementptr inbounds %struct.Reg, %struct.Reg* %3478, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %3479 to i64*
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3481 = getelementptr inbounds %struct.GPR, %struct.GPR* %3480, i32 0, i32 7
  %3482 = getelementptr inbounds %struct.Reg, %struct.Reg* %3481, i32 0, i32 0
  %EDX.i579 = bitcast %union.anon* %3482 to i32*
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3484 = getelementptr inbounds %struct.GPR, %struct.GPR* %3483, i32 0, i32 1
  %3485 = getelementptr inbounds %struct.Reg, %struct.Reg* %3484, i32 0, i32 0
  %RAX.i580 = bitcast %union.anon* %3485 to i64*
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3487 = getelementptr inbounds %struct.GPR, %struct.GPR* %3486, i32 0, i32 5
  %3488 = getelementptr inbounds %struct.Reg, %struct.Reg* %3487, i32 0, i32 0
  %RCX.i581 = bitcast %union.anon* %3488 to i64*
  %3489 = load i64, i64* %RAX.i580
  %3490 = load i64, i64* %RCX.i581
  %3491 = mul i64 %3490, 4
  %3492 = add i64 %3491, %3489
  %3493 = load i32, i32* %EDX.i579
  %3494 = zext i32 %3493 to i64
  %3495 = load i64, i64* %PC.i578
  %3496 = add i64 %3495, 3
  store i64 %3496, i64* %PC.i578
  %3497 = inttoptr i64 %3492 to i32*
  store i32 %3493, i32* %3497
  store %struct.Memory* %loadMem_40465f, %struct.Memory** %MEMORY
  %loadMem_404662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3499 = getelementptr inbounds %struct.GPR, %struct.GPR* %3498, i32 0, i32 33
  %3500 = getelementptr inbounds %struct.Reg, %struct.Reg* %3499, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %3500 to i64*
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3502 = getelementptr inbounds %struct.GPR, %struct.GPR* %3501, i32 0, i32 1
  %3503 = getelementptr inbounds %struct.Reg, %struct.Reg* %3502, i32 0, i32 0
  %RAX.i576 = bitcast %union.anon* %3503 to i64*
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3505 = getelementptr inbounds %struct.GPR, %struct.GPR* %3504, i32 0, i32 15
  %3506 = getelementptr inbounds %struct.Reg, %struct.Reg* %3505, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %3506 to i64*
  %3507 = load i64, i64* %RBP.i577
  %3508 = sub i64 %3507, 104
  %3509 = load i64, i64* %PC.i575
  %3510 = add i64 %3509, 3
  store i64 %3510, i64* %PC.i575
  %3511 = inttoptr i64 %3508 to i32*
  %3512 = load i32, i32* %3511
  %3513 = zext i32 %3512 to i64
  store i64 %3513, i64* %RAX.i576, align 8
  store %struct.Memory* %loadMem_404662, %struct.Memory** %MEMORY
  %loadMem_404665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 33
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %3516 to i64*
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3518 = getelementptr inbounds %struct.GPR, %struct.GPR* %3517, i32 0, i32 1
  %3519 = getelementptr inbounds %struct.Reg, %struct.Reg* %3518, i32 0, i32 0
  %RAX.i574 = bitcast %union.anon* %3519 to i64*
  %3520 = load i64, i64* %RAX.i574
  %3521 = load i64, i64* %PC.i573
  %3522 = add i64 %3521, 3
  store i64 %3522, i64* %PC.i573
  %3523 = trunc i64 %3520 to i32
  %3524 = add i32 1, %3523
  %3525 = zext i32 %3524 to i64
  store i64 %3525, i64* %RAX.i574, align 8
  %3526 = icmp ult i32 %3524, %3523
  %3527 = icmp ult i32 %3524, 1
  %3528 = or i1 %3526, %3527
  %3529 = zext i1 %3528 to i8
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3529, i8* %3530, align 1
  %3531 = and i32 %3524, 255
  %3532 = call i32 @llvm.ctpop.i32(i32 %3531)
  %3533 = trunc i32 %3532 to i8
  %3534 = and i8 %3533, 1
  %3535 = xor i8 %3534, 1
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3535, i8* %3536, align 1
  %3537 = xor i64 1, %3520
  %3538 = trunc i64 %3537 to i32
  %3539 = xor i32 %3538, %3524
  %3540 = lshr i32 %3539, 4
  %3541 = trunc i32 %3540 to i8
  %3542 = and i8 %3541, 1
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3542, i8* %3543, align 1
  %3544 = icmp eq i32 %3524, 0
  %3545 = zext i1 %3544 to i8
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3545, i8* %3546, align 1
  %3547 = lshr i32 %3524, 31
  %3548 = trunc i32 %3547 to i8
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3548, i8* %3549, align 1
  %3550 = lshr i32 %3523, 31
  %3551 = xor i32 %3547, %3550
  %3552 = add i32 %3551, %3547
  %3553 = icmp eq i32 %3552, 2
  %3554 = zext i1 %3553 to i8
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3554, i8* %3555, align 1
  store %struct.Memory* %loadMem_404665, %struct.Memory** %MEMORY
  %loadMem_404668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3557 = getelementptr inbounds %struct.GPR, %struct.GPR* %3556, i32 0, i32 33
  %3558 = getelementptr inbounds %struct.Reg, %struct.Reg* %3557, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %3558 to i64*
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 1
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %EAX.i571 = bitcast %union.anon* %3561 to i32*
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 15
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %RBP.i572 = bitcast %union.anon* %3564 to i64*
  %3565 = load i64, i64* %RBP.i572
  %3566 = sub i64 %3565, 104
  %3567 = load i32, i32* %EAX.i571
  %3568 = zext i32 %3567 to i64
  %3569 = load i64, i64* %PC.i570
  %3570 = add i64 %3569, 3
  store i64 %3570, i64* %PC.i570
  %3571 = inttoptr i64 %3566 to i32*
  store i32 %3567, i32* %3571
  store %struct.Memory* %loadMem_404668, %struct.Memory** %MEMORY
  %loadMem_40466b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3573 = getelementptr inbounds %struct.GPR, %struct.GPR* %3572, i32 0, i32 33
  %3574 = getelementptr inbounds %struct.Reg, %struct.Reg* %3573, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %3574 to i64*
  %3575 = load i64, i64* %PC.i569
  %3576 = add i64 %3575, -115
  %3577 = load i64, i64* %PC.i569
  %3578 = add i64 %3577, 5
  store i64 %3578, i64* %PC.i569
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3576, i64* %3579, align 8
  store %struct.Memory* %loadMem_40466b, %struct.Memory** %MEMORY
  br label %block_.L_4045f8

block_.L_404670:                                  ; preds = %block_.L_4045f8
  %loadMem_404670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 33
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %3582 to i64*
  %3583 = load i64, i64* %PC.i568
  %3584 = add i64 %3583, 5
  %3585 = load i64, i64* %PC.i568
  %3586 = add i64 %3585, 5
  store i64 %3586, i64* %PC.i568
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3584, i64* %3587, align 8
  store %struct.Memory* %loadMem_404670, %struct.Memory** %MEMORY
  br label %block_.L_404675

block_.L_404675:                                  ; preds = %block_.L_404670
  %loadMem_404675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3589 = getelementptr inbounds %struct.GPR, %struct.GPR* %3588, i32 0, i32 33
  %3590 = getelementptr inbounds %struct.Reg, %struct.Reg* %3589, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %3590 to i64*
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3592 = getelementptr inbounds %struct.GPR, %struct.GPR* %3591, i32 0, i32 1
  %3593 = getelementptr inbounds %struct.Reg, %struct.Reg* %3592, i32 0, i32 0
  %RAX.i566 = bitcast %union.anon* %3593 to i64*
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 15
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %RBP.i567 = bitcast %union.anon* %3596 to i64*
  %3597 = load i64, i64* %RBP.i567
  %3598 = sub i64 %3597, 108
  %3599 = load i64, i64* %PC.i565
  %3600 = add i64 %3599, 3
  store i64 %3600, i64* %PC.i565
  %3601 = inttoptr i64 %3598 to i32*
  %3602 = load i32, i32* %3601
  %3603 = zext i32 %3602 to i64
  store i64 %3603, i64* %RAX.i566, align 8
  store %struct.Memory* %loadMem_404675, %struct.Memory** %MEMORY
  %loadMem_404678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3605 = getelementptr inbounds %struct.GPR, %struct.GPR* %3604, i32 0, i32 33
  %3606 = getelementptr inbounds %struct.Reg, %struct.Reg* %3605, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %3606 to i64*
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3608 = getelementptr inbounds %struct.GPR, %struct.GPR* %3607, i32 0, i32 1
  %3609 = getelementptr inbounds %struct.Reg, %struct.Reg* %3608, i32 0, i32 0
  %RAX.i564 = bitcast %union.anon* %3609 to i64*
  %3610 = load i64, i64* %RAX.i564
  %3611 = load i64, i64* %PC.i563
  %3612 = add i64 %3611, 3
  store i64 %3612, i64* %PC.i563
  %3613 = trunc i64 %3610 to i32
  %3614 = add i32 1, %3613
  %3615 = zext i32 %3614 to i64
  store i64 %3615, i64* %RAX.i564, align 8
  %3616 = icmp ult i32 %3614, %3613
  %3617 = icmp ult i32 %3614, 1
  %3618 = or i1 %3616, %3617
  %3619 = zext i1 %3618 to i8
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3619, i8* %3620, align 1
  %3621 = and i32 %3614, 255
  %3622 = call i32 @llvm.ctpop.i32(i32 %3621)
  %3623 = trunc i32 %3622 to i8
  %3624 = and i8 %3623, 1
  %3625 = xor i8 %3624, 1
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3625, i8* %3626, align 1
  %3627 = xor i64 1, %3610
  %3628 = trunc i64 %3627 to i32
  %3629 = xor i32 %3628, %3614
  %3630 = lshr i32 %3629, 4
  %3631 = trunc i32 %3630 to i8
  %3632 = and i8 %3631, 1
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3632, i8* %3633, align 1
  %3634 = icmp eq i32 %3614, 0
  %3635 = zext i1 %3634 to i8
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3635, i8* %3636, align 1
  %3637 = lshr i32 %3614, 31
  %3638 = trunc i32 %3637 to i8
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3638, i8* %3639, align 1
  %3640 = lshr i32 %3613, 31
  %3641 = xor i32 %3637, %3640
  %3642 = add i32 %3641, %3637
  %3643 = icmp eq i32 %3642, 2
  %3644 = zext i1 %3643 to i8
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3644, i8* %3645, align 1
  store %struct.Memory* %loadMem_404678, %struct.Memory** %MEMORY
  %loadMem_40467b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3647 = getelementptr inbounds %struct.GPR, %struct.GPR* %3646, i32 0, i32 33
  %3648 = getelementptr inbounds %struct.Reg, %struct.Reg* %3647, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %3648 to i64*
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3650 = getelementptr inbounds %struct.GPR, %struct.GPR* %3649, i32 0, i32 1
  %3651 = getelementptr inbounds %struct.Reg, %struct.Reg* %3650, i32 0, i32 0
  %EAX.i561 = bitcast %union.anon* %3651 to i32*
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3653 = getelementptr inbounds %struct.GPR, %struct.GPR* %3652, i32 0, i32 15
  %3654 = getelementptr inbounds %struct.Reg, %struct.Reg* %3653, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %3654 to i64*
  %3655 = load i64, i64* %RBP.i562
  %3656 = sub i64 %3655, 108
  %3657 = load i32, i32* %EAX.i561
  %3658 = zext i32 %3657 to i64
  %3659 = load i64, i64* %PC.i560
  %3660 = add i64 %3659, 3
  store i64 %3660, i64* %PC.i560
  %3661 = inttoptr i64 %3656 to i32*
  store i32 %3657, i32* %3661
  store %struct.Memory* %loadMem_40467b, %struct.Memory** %MEMORY
  %loadMem_40467e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3663 = getelementptr inbounds %struct.GPR, %struct.GPR* %3662, i32 0, i32 33
  %3664 = getelementptr inbounds %struct.Reg, %struct.Reg* %3663, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %3664 to i64*
  %3665 = load i64, i64* %PC.i559
  %3666 = add i64 %3665, -160
  %3667 = load i64, i64* %PC.i559
  %3668 = add i64 %3667, 5
  store i64 %3668, i64* %PC.i559
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3666, i64* %3669, align 8
  store %struct.Memory* %loadMem_40467e, %struct.Memory** %MEMORY
  br label %block_.L_4045de

block_.L_404683:                                  ; preds = %block_.L_4045de
  %loadMem_404683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 33
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %3672 to i64*
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 1
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %RAX.i557 = bitcast %union.anon* %3675 to i64*
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3677 = getelementptr inbounds %struct.GPR, %struct.GPR* %3676, i32 0, i32 15
  %3678 = getelementptr inbounds %struct.Reg, %struct.Reg* %3677, i32 0, i32 0
  %RBP.i558 = bitcast %union.anon* %3678 to i64*
  %3679 = load i64, i64* %RBP.i558
  %3680 = sub i64 %3679, 76
  %3681 = load i64, i64* %PC.i556
  %3682 = add i64 %3681, 3
  store i64 %3682, i64* %PC.i556
  %3683 = inttoptr i64 %3680 to i32*
  %3684 = load i32, i32* %3683
  %3685 = zext i32 %3684 to i64
  store i64 %3685, i64* %RAX.i557, align 8
  store %struct.Memory* %loadMem_404683, %struct.Memory** %MEMORY
  %loadMem_404686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3687 = getelementptr inbounds %struct.GPR, %struct.GPR* %3686, i32 0, i32 33
  %3688 = getelementptr inbounds %struct.Reg, %struct.Reg* %3687, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %3688 to i64*
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3690 = getelementptr inbounds %struct.GPR, %struct.GPR* %3689, i32 0, i32 1
  %3691 = getelementptr inbounds %struct.Reg, %struct.Reg* %3690, i32 0, i32 0
  %EAX.i554 = bitcast %union.anon* %3691 to i32*
  %3692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3693 = getelementptr inbounds %struct.GPR, %struct.GPR* %3692, i32 0, i32 15
  %3694 = getelementptr inbounds %struct.Reg, %struct.Reg* %3693, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %3694 to i64*
  %3695 = load i64, i64* %RBP.i555
  %3696 = sub i64 %3695, 60
  %3697 = load i32, i32* %EAX.i554
  %3698 = zext i32 %3697 to i64
  %3699 = load i64, i64* %PC.i553
  %3700 = add i64 %3699, 3
  store i64 %3700, i64* %PC.i553
  %3701 = inttoptr i64 %3696 to i32*
  store i32 %3697, i32* %3701
  store %struct.Memory* %loadMem_404686, %struct.Memory** %MEMORY
  %loadMem_404689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3703 = getelementptr inbounds %struct.GPR, %struct.GPR* %3702, i32 0, i32 33
  %3704 = getelementptr inbounds %struct.Reg, %struct.Reg* %3703, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %3704 to i64*
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3706 = getelementptr inbounds %struct.GPR, %struct.GPR* %3705, i32 0, i32 15
  %3707 = getelementptr inbounds %struct.Reg, %struct.Reg* %3706, i32 0, i32 0
  %RBP.i552 = bitcast %union.anon* %3707 to i64*
  %3708 = load i64, i64* %RBP.i552
  %3709 = sub i64 %3708, 100
  %3710 = load i64, i64* %PC.i551
  %3711 = add i64 %3710, 7
  store i64 %3711, i64* %PC.i551
  %3712 = inttoptr i64 %3709 to i32*
  store i32 0, i32* %3712
  store %struct.Memory* %loadMem_404689, %struct.Memory** %MEMORY
  br label %block_.L_404690

block_.L_404690:                                  ; preds = %block_.L_404713, %block_.L_404683
  %loadMem_404690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3714 = getelementptr inbounds %struct.GPR, %struct.GPR* %3713, i32 0, i32 33
  %3715 = getelementptr inbounds %struct.Reg, %struct.Reg* %3714, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %3715 to i64*
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3717 = getelementptr inbounds %struct.GPR, %struct.GPR* %3716, i32 0, i32 1
  %3718 = getelementptr inbounds %struct.Reg, %struct.Reg* %3717, i32 0, i32 0
  %RAX.i549 = bitcast %union.anon* %3718 to i64*
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 15
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %3721 to i64*
  %3722 = load i64, i64* %RBP.i550
  %3723 = sub i64 %3722, 100
  %3724 = load i64, i64* %PC.i548
  %3725 = add i64 %3724, 3
  store i64 %3725, i64* %PC.i548
  %3726 = inttoptr i64 %3723 to i32*
  %3727 = load i32, i32* %3726
  %3728 = zext i32 %3727 to i64
  store i64 %3728, i64* %RAX.i549, align 8
  store %struct.Memory* %loadMem_404690, %struct.Memory** %MEMORY
  %loadMem_404693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3730 = getelementptr inbounds %struct.GPR, %struct.GPR* %3729, i32 0, i32 33
  %3731 = getelementptr inbounds %struct.Reg, %struct.Reg* %3730, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %3731 to i64*
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3733 = getelementptr inbounds %struct.GPR, %struct.GPR* %3732, i32 0, i32 1
  %3734 = getelementptr inbounds %struct.Reg, %struct.Reg* %3733, i32 0, i32 0
  %EAX.i546 = bitcast %union.anon* %3734 to i32*
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3736 = getelementptr inbounds %struct.GPR, %struct.GPR* %3735, i32 0, i32 15
  %3737 = getelementptr inbounds %struct.Reg, %struct.Reg* %3736, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %3737 to i64*
  %3738 = load i32, i32* %EAX.i546
  %3739 = zext i32 %3738 to i64
  %3740 = load i64, i64* %RBP.i547
  %3741 = sub i64 %3740, 76
  %3742 = load i64, i64* %PC.i545
  %3743 = add i64 %3742, 3
  store i64 %3743, i64* %PC.i545
  %3744 = inttoptr i64 %3741 to i32*
  %3745 = load i32, i32* %3744
  %3746 = sub i32 %3738, %3745
  %3747 = icmp ult i32 %3738, %3745
  %3748 = zext i1 %3747 to i8
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3748, i8* %3749, align 1
  %3750 = and i32 %3746, 255
  %3751 = call i32 @llvm.ctpop.i32(i32 %3750)
  %3752 = trunc i32 %3751 to i8
  %3753 = and i8 %3752, 1
  %3754 = xor i8 %3753, 1
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3754, i8* %3755, align 1
  %3756 = xor i32 %3745, %3738
  %3757 = xor i32 %3756, %3746
  %3758 = lshr i32 %3757, 4
  %3759 = trunc i32 %3758 to i8
  %3760 = and i8 %3759, 1
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3760, i8* %3761, align 1
  %3762 = icmp eq i32 %3746, 0
  %3763 = zext i1 %3762 to i8
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3763, i8* %3764, align 1
  %3765 = lshr i32 %3746, 31
  %3766 = trunc i32 %3765 to i8
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3766, i8* %3767, align 1
  %3768 = lshr i32 %3738, 31
  %3769 = lshr i32 %3745, 31
  %3770 = xor i32 %3769, %3768
  %3771 = xor i32 %3765, %3768
  %3772 = add i32 %3771, %3770
  %3773 = icmp eq i32 %3772, 2
  %3774 = zext i1 %3773 to i8
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3774, i8* %3775, align 1
  store %struct.Memory* %loadMem_404693, %struct.Memory** %MEMORY
  %loadMem_404696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3777 = getelementptr inbounds %struct.GPR, %struct.GPR* %3776, i32 0, i32 33
  %3778 = getelementptr inbounds %struct.Reg, %struct.Reg* %3777, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %3778 to i64*
  %3779 = load i64, i64* %PC.i544
  %3780 = add i64 %3779, 156
  %3781 = load i64, i64* %PC.i544
  %3782 = add i64 %3781, 6
  %3783 = load i64, i64* %PC.i544
  %3784 = add i64 %3783, 6
  store i64 %3784, i64* %PC.i544
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3786 = load i8, i8* %3785, align 1
  %3787 = icmp eq i8 %3786, 0
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3789 = load i8, i8* %3788, align 1
  %3790 = icmp ne i8 %3789, 0
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3792 = load i8, i8* %3791, align 1
  %3793 = icmp ne i8 %3792, 0
  %3794 = xor i1 %3790, %3793
  %3795 = xor i1 %3794, true
  %3796 = and i1 %3787, %3795
  %3797 = zext i1 %3796 to i8
  store i8 %3797, i8* %BRANCH_TAKEN, align 1
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3799 = select i1 %3796, i64 %3780, i64 %3782
  store i64 %3799, i64* %3798, align 8
  store %struct.Memory* %loadMem_404696, %struct.Memory** %MEMORY
  %loadBr_404696 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_404696 = icmp eq i8 %loadBr_404696, 1
  br i1 %cmpBr_404696, label %block_.L_404732, label %block_40469c

block_40469c:                                     ; preds = %block_.L_404690
  %loadMem_40469c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3801 = getelementptr inbounds %struct.GPR, %struct.GPR* %3800, i32 0, i32 33
  %3802 = getelementptr inbounds %struct.Reg, %struct.Reg* %3801, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %3802 to i64*
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 1
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %RAX.i542 = bitcast %union.anon* %3805 to i64*
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3807 = getelementptr inbounds %struct.GPR, %struct.GPR* %3806, i32 0, i32 15
  %3808 = getelementptr inbounds %struct.Reg, %struct.Reg* %3807, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %3808 to i64*
  %3809 = load i64, i64* %RBP.i543
  %3810 = sub i64 %3809, 96
  %3811 = load i64, i64* %PC.i541
  %3812 = add i64 %3811, 4
  store i64 %3812, i64* %PC.i541
  %3813 = inttoptr i64 %3810 to i64*
  %3814 = load i64, i64* %3813
  store i64 %3814, i64* %RAX.i542, align 8
  store %struct.Memory* %loadMem_40469c, %struct.Memory** %MEMORY
  %loadMem_4046a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3816 = getelementptr inbounds %struct.GPR, %struct.GPR* %3815, i32 0, i32 33
  %3817 = getelementptr inbounds %struct.Reg, %struct.Reg* %3816, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %3817 to i64*
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3819 = getelementptr inbounds %struct.GPR, %struct.GPR* %3818, i32 0, i32 5
  %3820 = getelementptr inbounds %struct.Reg, %struct.Reg* %3819, i32 0, i32 0
  %RCX.i539 = bitcast %union.anon* %3820 to i64*
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3822 = getelementptr inbounds %struct.GPR, %struct.GPR* %3821, i32 0, i32 15
  %3823 = getelementptr inbounds %struct.Reg, %struct.Reg* %3822, i32 0, i32 0
  %RBP.i540 = bitcast %union.anon* %3823 to i64*
  %3824 = load i64, i64* %RBP.i540
  %3825 = sub i64 %3824, 100
  %3826 = load i64, i64* %PC.i538
  %3827 = add i64 %3826, 4
  store i64 %3827, i64* %PC.i538
  %3828 = inttoptr i64 %3825 to i32*
  %3829 = load i32, i32* %3828
  %3830 = sext i32 %3829 to i64
  store i64 %3830, i64* %RCX.i539, align 8
  store %struct.Memory* %loadMem_4046a0, %struct.Memory** %MEMORY
  %loadMem_4046a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3832 = getelementptr inbounds %struct.GPR, %struct.GPR* %3831, i32 0, i32 33
  %3833 = getelementptr inbounds %struct.Reg, %struct.Reg* %3832, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %3833 to i64*
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3835 = getelementptr inbounds %struct.GPR, %struct.GPR* %3834, i32 0, i32 1
  %3836 = getelementptr inbounds %struct.Reg, %struct.Reg* %3835, i32 0, i32 0
  %RAX.i536 = bitcast %union.anon* %3836 to i64*
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3838 = getelementptr inbounds %struct.GPR, %struct.GPR* %3837, i32 0, i32 5
  %3839 = getelementptr inbounds %struct.Reg, %struct.Reg* %3838, i32 0, i32 0
  %RCX.i537 = bitcast %union.anon* %3839 to i64*
  %3840 = load i64, i64* %RAX.i536
  %3841 = load i64, i64* %RCX.i537
  %3842 = mul i64 %3841, 4
  %3843 = add i64 %3842, %3840
  %3844 = load i64, i64* %PC.i535
  %3845 = add i64 %3844, 7
  store i64 %3845, i64* %PC.i535
  %3846 = inttoptr i64 %3843 to i32*
  store i32 0, i32* %3846
  store %struct.Memory* %loadMem_4046a4, %struct.Memory** %MEMORY
  %loadMem_4046ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3848 = getelementptr inbounds %struct.GPR, %struct.GPR* %3847, i32 0, i32 33
  %3849 = getelementptr inbounds %struct.Reg, %struct.Reg* %3848, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %3849 to i64*
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3851 = getelementptr inbounds %struct.GPR, %struct.GPR* %3850, i32 0, i32 15
  %3852 = getelementptr inbounds %struct.Reg, %struct.Reg* %3851, i32 0, i32 0
  %RBP.i534 = bitcast %union.anon* %3852 to i64*
  %3853 = load i64, i64* %RBP.i534
  %3854 = sub i64 %3853, 108
  %3855 = load i64, i64* %PC.i533
  %3856 = add i64 %3855, 7
  store i64 %3856, i64* %PC.i533
  %3857 = inttoptr i64 %3854 to i32*
  store i32 0, i32* %3857
  store %struct.Memory* %loadMem_4046ab, %struct.Memory** %MEMORY
  br label %block_.L_4046b2

block_.L_4046b2:                                  ; preds = %block_.L_404705, %block_40469c
  %loadMem_4046b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3859 = getelementptr inbounds %struct.GPR, %struct.GPR* %3858, i32 0, i32 33
  %3860 = getelementptr inbounds %struct.Reg, %struct.Reg* %3859, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %3860 to i64*
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3862 = getelementptr inbounds %struct.GPR, %struct.GPR* %3861, i32 0, i32 1
  %3863 = getelementptr inbounds %struct.Reg, %struct.Reg* %3862, i32 0, i32 0
  %RAX.i531 = bitcast %union.anon* %3863 to i64*
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3865 = getelementptr inbounds %struct.GPR, %struct.GPR* %3864, i32 0, i32 15
  %3866 = getelementptr inbounds %struct.Reg, %struct.Reg* %3865, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %3866 to i64*
  %3867 = load i64, i64* %RBP.i532
  %3868 = sub i64 %3867, 108
  %3869 = load i64, i64* %PC.i530
  %3870 = add i64 %3869, 3
  store i64 %3870, i64* %PC.i530
  %3871 = inttoptr i64 %3868 to i32*
  %3872 = load i32, i32* %3871
  %3873 = zext i32 %3872 to i64
  store i64 %3873, i64* %RAX.i531, align 8
  store %struct.Memory* %loadMem_4046b2, %struct.Memory** %MEMORY
  %loadMem_4046b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3875 = getelementptr inbounds %struct.GPR, %struct.GPR* %3874, i32 0, i32 33
  %3876 = getelementptr inbounds %struct.Reg, %struct.Reg* %3875, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %3876 to i64*
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3878 = getelementptr inbounds %struct.GPR, %struct.GPR* %3877, i32 0, i32 1
  %3879 = getelementptr inbounds %struct.Reg, %struct.Reg* %3878, i32 0, i32 0
  %EAX.i528 = bitcast %union.anon* %3879 to i32*
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3881 = getelementptr inbounds %struct.GPR, %struct.GPR* %3880, i32 0, i32 15
  %3882 = getelementptr inbounds %struct.Reg, %struct.Reg* %3881, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %3882 to i64*
  %3883 = load i32, i32* %EAX.i528
  %3884 = zext i32 %3883 to i64
  %3885 = load i64, i64* %RBP.i529
  %3886 = sub i64 %3885, 20
  %3887 = load i64, i64* %PC.i527
  %3888 = add i64 %3887, 3
  store i64 %3888, i64* %PC.i527
  %3889 = inttoptr i64 %3886 to i32*
  %3890 = load i32, i32* %3889
  %3891 = sub i32 %3883, %3890
  %3892 = icmp ult i32 %3883, %3890
  %3893 = zext i1 %3892 to i8
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3893, i8* %3894, align 1
  %3895 = and i32 %3891, 255
  %3896 = call i32 @llvm.ctpop.i32(i32 %3895)
  %3897 = trunc i32 %3896 to i8
  %3898 = and i8 %3897, 1
  %3899 = xor i8 %3898, 1
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3899, i8* %3900, align 1
  %3901 = xor i32 %3890, %3883
  %3902 = xor i32 %3901, %3891
  %3903 = lshr i32 %3902, 4
  %3904 = trunc i32 %3903 to i8
  %3905 = and i8 %3904, 1
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3905, i8* %3906, align 1
  %3907 = icmp eq i32 %3891, 0
  %3908 = zext i1 %3907 to i8
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3908, i8* %3909, align 1
  %3910 = lshr i32 %3891, 31
  %3911 = trunc i32 %3910 to i8
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3911, i8* %3912, align 1
  %3913 = lshr i32 %3883, 31
  %3914 = lshr i32 %3890, 31
  %3915 = xor i32 %3914, %3913
  %3916 = xor i32 %3910, %3913
  %3917 = add i32 %3916, %3915
  %3918 = icmp eq i32 %3917, 2
  %3919 = zext i1 %3918 to i8
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3919, i8* %3920, align 1
  store %struct.Memory* %loadMem_4046b5, %struct.Memory** %MEMORY
  %loadMem_4046b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3922 = getelementptr inbounds %struct.GPR, %struct.GPR* %3921, i32 0, i32 33
  %3923 = getelementptr inbounds %struct.Reg, %struct.Reg* %3922, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %3923 to i64*
  %3924 = load i64, i64* %PC.i526
  %3925 = add i64 %3924, 91
  %3926 = load i64, i64* %PC.i526
  %3927 = add i64 %3926, 6
  %3928 = load i64, i64* %PC.i526
  %3929 = add i64 %3928, 6
  store i64 %3929, i64* %PC.i526
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3931 = load i8, i8* %3930, align 1
  %3932 = icmp ne i8 %3931, 0
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3934 = load i8, i8* %3933, align 1
  %3935 = icmp ne i8 %3934, 0
  %3936 = xor i1 %3932, %3935
  %3937 = xor i1 %3936, true
  %3938 = zext i1 %3937 to i8
  store i8 %3938, i8* %BRANCH_TAKEN, align 1
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3940 = select i1 %3936, i64 %3927, i64 %3925
  store i64 %3940, i64* %3939, align 8
  store %struct.Memory* %loadMem_4046b8, %struct.Memory** %MEMORY
  %loadBr_4046b8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4046b8 = icmp eq i8 %loadBr_4046b8, 1
  br i1 %cmpBr_4046b8, label %block_.L_404713, label %block_4046be

block_4046be:                                     ; preds = %block_.L_4046b2
  %loadMem_4046be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 33
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %3943 to i64*
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3945 = getelementptr inbounds %struct.GPR, %struct.GPR* %3944, i32 0, i32 1
  %3946 = getelementptr inbounds %struct.Reg, %struct.Reg* %3945, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %3946 to i64*
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3948 = getelementptr inbounds %struct.GPR, %struct.GPR* %3947, i32 0, i32 15
  %3949 = getelementptr inbounds %struct.Reg, %struct.Reg* %3948, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %3949 to i64*
  %3950 = load i64, i64* %RBP.i525
  %3951 = sub i64 %3950, 88
  %3952 = load i64, i64* %PC.i523
  %3953 = add i64 %3952, 4
  store i64 %3953, i64* %PC.i523
  %3954 = inttoptr i64 %3951 to i64*
  %3955 = load i64, i64* %3954
  store i64 %3955, i64* %RAX.i524, align 8
  store %struct.Memory* %loadMem_4046be, %struct.Memory** %MEMORY
  %loadMem_4046c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 33
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %3958 to i64*
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3960 = getelementptr inbounds %struct.GPR, %struct.GPR* %3959, i32 0, i32 5
  %3961 = getelementptr inbounds %struct.Reg, %struct.Reg* %3960, i32 0, i32 0
  %RCX.i521 = bitcast %union.anon* %3961 to i64*
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3963 = getelementptr inbounds %struct.GPR, %struct.GPR* %3962, i32 0, i32 15
  %3964 = getelementptr inbounds %struct.Reg, %struct.Reg* %3963, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %3964 to i64*
  %3965 = load i64, i64* %RBP.i522
  %3966 = sub i64 %3965, 108
  %3967 = load i64, i64* %PC.i520
  %3968 = add i64 %3967, 4
  store i64 %3968, i64* %PC.i520
  %3969 = inttoptr i64 %3966 to i32*
  %3970 = load i32, i32* %3969
  %3971 = sext i32 %3970 to i64
  store i64 %3971, i64* %RCX.i521, align 8
  store %struct.Memory* %loadMem_4046c2, %struct.Memory** %MEMORY
  %loadMem_4046c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 33
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %3974 to i64*
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3976 = getelementptr inbounds %struct.GPR, %struct.GPR* %3975, i32 0, i32 1
  %3977 = getelementptr inbounds %struct.Reg, %struct.Reg* %3976, i32 0, i32 0
  %RAX.i518 = bitcast %union.anon* %3977 to i64*
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3979 = getelementptr inbounds %struct.GPR, %struct.GPR* %3978, i32 0, i32 5
  %3980 = getelementptr inbounds %struct.Reg, %struct.Reg* %3979, i32 0, i32 0
  %RCX.i519 = bitcast %union.anon* %3980 to i64*
  %3981 = load i64, i64* %RAX.i518
  %3982 = load i64, i64* %RCX.i519
  %3983 = mul i64 %3982, 8
  %3984 = add i64 %3983, %3981
  %3985 = load i64, i64* %PC.i517
  %3986 = add i64 %3985, 4
  store i64 %3986, i64* %PC.i517
  %3987 = inttoptr i64 %3984 to i64*
  %3988 = load i64, i64* %3987
  store i64 %3988, i64* %RAX.i518, align 8
  store %struct.Memory* %loadMem_4046c6, %struct.Memory** %MEMORY
  %loadMem_4046ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3990 = getelementptr inbounds %struct.GPR, %struct.GPR* %3989, i32 0, i32 33
  %3991 = getelementptr inbounds %struct.Reg, %struct.Reg* %3990, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %3991 to i64*
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3993 = getelementptr inbounds %struct.GPR, %struct.GPR* %3992, i32 0, i32 5
  %3994 = getelementptr inbounds %struct.Reg, %struct.Reg* %3993, i32 0, i32 0
  %RCX.i515 = bitcast %union.anon* %3994 to i64*
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3996 = getelementptr inbounds %struct.GPR, %struct.GPR* %3995, i32 0, i32 15
  %3997 = getelementptr inbounds %struct.Reg, %struct.Reg* %3996, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %3997 to i64*
  %3998 = load i64, i64* %RBP.i516
  %3999 = sub i64 %3998, 100
  %4000 = load i64, i64* %PC.i514
  %4001 = add i64 %4000, 4
  store i64 %4001, i64* %PC.i514
  %4002 = inttoptr i64 %3999 to i32*
  %4003 = load i32, i32* %4002
  %4004 = sext i32 %4003 to i64
  store i64 %4004, i64* %RCX.i515, align 8
  store %struct.Memory* %loadMem_4046ca, %struct.Memory** %MEMORY
  %loadMem_4046ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4006 = getelementptr inbounds %struct.GPR, %struct.GPR* %4005, i32 0, i32 33
  %4007 = getelementptr inbounds %struct.Reg, %struct.Reg* %4006, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %4007 to i64*
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4009 = getelementptr inbounds %struct.GPR, %struct.GPR* %4008, i32 0, i32 1
  %4010 = getelementptr inbounds %struct.Reg, %struct.Reg* %4009, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %4010 to i64*
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4012 = getelementptr inbounds %struct.GPR, %struct.GPR* %4011, i32 0, i32 5
  %4013 = getelementptr inbounds %struct.Reg, %struct.Reg* %4012, i32 0, i32 0
  %RCX.i512 = bitcast %union.anon* %4013 to i64*
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4015 = getelementptr inbounds %struct.GPR, %struct.GPR* %4014, i32 0, i32 7
  %4016 = getelementptr inbounds %struct.Reg, %struct.Reg* %4015, i32 0, i32 0
  %RDX.i513 = bitcast %union.anon* %4016 to i64*
  %4017 = load i64, i64* %RAX.i511
  %4018 = load i64, i64* %RCX.i512
  %4019 = mul i64 %4018, 4
  %4020 = add i64 %4019, %4017
  %4021 = load i64, i64* %PC.i510
  %4022 = add i64 %4021, 3
  store i64 %4022, i64* %PC.i510
  %4023 = inttoptr i64 %4020 to i32*
  %4024 = load i32, i32* %4023
  %4025 = zext i32 %4024 to i64
  store i64 %4025, i64* %RDX.i513, align 8
  store %struct.Memory* %loadMem_4046ce, %struct.Memory** %MEMORY
  %loadMem_4046d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4027 = getelementptr inbounds %struct.GPR, %struct.GPR* %4026, i32 0, i32 33
  %4028 = getelementptr inbounds %struct.Reg, %struct.Reg* %4027, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %4028 to i64*
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4030 = getelementptr inbounds %struct.GPR, %struct.GPR* %4029, i32 0, i32 1
  %4031 = getelementptr inbounds %struct.Reg, %struct.Reg* %4030, i32 0, i32 0
  %RAX.i508 = bitcast %union.anon* %4031 to i64*
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4033 = getelementptr inbounds %struct.GPR, %struct.GPR* %4032, i32 0, i32 15
  %4034 = getelementptr inbounds %struct.Reg, %struct.Reg* %4033, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %4034 to i64*
  %4035 = load i64, i64* %RBP.i509
  %4036 = sub i64 %4035, 96
  %4037 = load i64, i64* %PC.i507
  %4038 = add i64 %4037, 4
  store i64 %4038, i64* %PC.i507
  %4039 = inttoptr i64 %4036 to i64*
  %4040 = load i64, i64* %4039
  store i64 %4040, i64* %RAX.i508, align 8
  store %struct.Memory* %loadMem_4046d1, %struct.Memory** %MEMORY
  %loadMem_4046d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4042 = getelementptr inbounds %struct.GPR, %struct.GPR* %4041, i32 0, i32 33
  %4043 = getelementptr inbounds %struct.Reg, %struct.Reg* %4042, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %4043 to i64*
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4045 = getelementptr inbounds %struct.GPR, %struct.GPR* %4044, i32 0, i32 5
  %4046 = getelementptr inbounds %struct.Reg, %struct.Reg* %4045, i32 0, i32 0
  %RCX.i505 = bitcast %union.anon* %4046 to i64*
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4048 = getelementptr inbounds %struct.GPR, %struct.GPR* %4047, i32 0, i32 15
  %4049 = getelementptr inbounds %struct.Reg, %struct.Reg* %4048, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %4049 to i64*
  %4050 = load i64, i64* %RBP.i506
  %4051 = sub i64 %4050, 100
  %4052 = load i64, i64* %PC.i504
  %4053 = add i64 %4052, 4
  store i64 %4053, i64* %PC.i504
  %4054 = inttoptr i64 %4051 to i32*
  %4055 = load i32, i32* %4054
  %4056 = sext i32 %4055 to i64
  store i64 %4056, i64* %RCX.i505, align 8
  store %struct.Memory* %loadMem_4046d5, %struct.Memory** %MEMORY
  %loadMem_4046d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 33
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %4059 to i64*
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4061 = getelementptr inbounds %struct.GPR, %struct.GPR* %4060, i32 0, i32 7
  %4062 = getelementptr inbounds %struct.Reg, %struct.Reg* %4061, i32 0, i32 0
  %EDX.i501 = bitcast %union.anon* %4062 to i32*
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4064 = getelementptr inbounds %struct.GPR, %struct.GPR* %4063, i32 0, i32 1
  %4065 = getelementptr inbounds %struct.Reg, %struct.Reg* %4064, i32 0, i32 0
  %RAX.i502 = bitcast %union.anon* %4065 to i64*
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4067 = getelementptr inbounds %struct.GPR, %struct.GPR* %4066, i32 0, i32 5
  %4068 = getelementptr inbounds %struct.Reg, %struct.Reg* %4067, i32 0, i32 0
  %RCX.i503 = bitcast %union.anon* %4068 to i64*
  %4069 = load i32, i32* %EDX.i501
  %4070 = zext i32 %4069 to i64
  %4071 = load i64, i64* %RAX.i502
  %4072 = load i64, i64* %RCX.i503
  %4073 = mul i64 %4072, 4
  %4074 = add i64 %4073, %4071
  %4075 = load i64, i64* %PC.i500
  %4076 = add i64 %4075, 3
  store i64 %4076, i64* %PC.i500
  %4077 = inttoptr i64 %4074 to i32*
  %4078 = load i32, i32* %4077
  %4079 = sub i32 %4069, %4078
  %4080 = icmp ult i32 %4069, %4078
  %4081 = zext i1 %4080 to i8
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4081, i8* %4082, align 1
  %4083 = and i32 %4079, 255
  %4084 = call i32 @llvm.ctpop.i32(i32 %4083)
  %4085 = trunc i32 %4084 to i8
  %4086 = and i8 %4085, 1
  %4087 = xor i8 %4086, 1
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4087, i8* %4088, align 1
  %4089 = xor i32 %4078, %4069
  %4090 = xor i32 %4089, %4079
  %4091 = lshr i32 %4090, 4
  %4092 = trunc i32 %4091 to i8
  %4093 = and i8 %4092, 1
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4093, i8* %4094, align 1
  %4095 = icmp eq i32 %4079, 0
  %4096 = zext i1 %4095 to i8
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4096, i8* %4097, align 1
  %4098 = lshr i32 %4079, 31
  %4099 = trunc i32 %4098 to i8
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4099, i8* %4100, align 1
  %4101 = lshr i32 %4069, 31
  %4102 = lshr i32 %4078, 31
  %4103 = xor i32 %4102, %4101
  %4104 = xor i32 %4098, %4101
  %4105 = add i32 %4104, %4103
  %4106 = icmp eq i32 %4105, 2
  %4107 = zext i1 %4106 to i8
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4107, i8* %4108, align 1
  store %struct.Memory* %loadMem_4046d9, %struct.Memory** %MEMORY
  %loadMem_4046dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4110 = getelementptr inbounds %struct.GPR, %struct.GPR* %4109, i32 0, i32 33
  %4111 = getelementptr inbounds %struct.Reg, %struct.Reg* %4110, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %4111 to i64*
  %4112 = load i64, i64* %PC.i499
  %4113 = add i64 %4112, 36
  %4114 = load i64, i64* %PC.i499
  %4115 = add i64 %4114, 6
  %4116 = load i64, i64* %PC.i499
  %4117 = add i64 %4116, 6
  store i64 %4117, i64* %PC.i499
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4119 = load i8, i8* %4118, align 1
  %4120 = icmp ne i8 %4119, 0
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4122 = load i8, i8* %4121, align 1
  %4123 = icmp ne i8 %4122, 0
  %4124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4125 = load i8, i8* %4124, align 1
  %4126 = icmp ne i8 %4125, 0
  %4127 = xor i1 %4123, %4126
  %4128 = or i1 %4120, %4127
  %4129 = zext i1 %4128 to i8
  store i8 %4129, i8* %BRANCH_TAKEN, align 1
  %4130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4131 = select i1 %4128, i64 %4113, i64 %4115
  store i64 %4131, i64* %4130, align 8
  store %struct.Memory* %loadMem_4046dc, %struct.Memory** %MEMORY
  %loadBr_4046dc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4046dc = icmp eq i8 %loadBr_4046dc, 1
  br i1 %cmpBr_4046dc, label %block_.L_404700, label %block_4046e2

block_4046e2:                                     ; preds = %block_4046be
  %loadMem_4046e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4133 = getelementptr inbounds %struct.GPR, %struct.GPR* %4132, i32 0, i32 33
  %4134 = getelementptr inbounds %struct.Reg, %struct.Reg* %4133, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %4134 to i64*
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4136 = getelementptr inbounds %struct.GPR, %struct.GPR* %4135, i32 0, i32 1
  %4137 = getelementptr inbounds %struct.Reg, %struct.Reg* %4136, i32 0, i32 0
  %RAX.i497 = bitcast %union.anon* %4137 to i64*
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4139 = getelementptr inbounds %struct.GPR, %struct.GPR* %4138, i32 0, i32 15
  %4140 = getelementptr inbounds %struct.Reg, %struct.Reg* %4139, i32 0, i32 0
  %RBP.i498 = bitcast %union.anon* %4140 to i64*
  %4141 = load i64, i64* %RBP.i498
  %4142 = sub i64 %4141, 88
  %4143 = load i64, i64* %PC.i496
  %4144 = add i64 %4143, 4
  store i64 %4144, i64* %PC.i496
  %4145 = inttoptr i64 %4142 to i64*
  %4146 = load i64, i64* %4145
  store i64 %4146, i64* %RAX.i497, align 8
  store %struct.Memory* %loadMem_4046e2, %struct.Memory** %MEMORY
  %loadMem_4046e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 33
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %4149 to i64*
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 5
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %RCX.i494 = bitcast %union.anon* %4152 to i64*
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4154 = getelementptr inbounds %struct.GPR, %struct.GPR* %4153, i32 0, i32 15
  %4155 = getelementptr inbounds %struct.Reg, %struct.Reg* %4154, i32 0, i32 0
  %RBP.i495 = bitcast %union.anon* %4155 to i64*
  %4156 = load i64, i64* %RBP.i495
  %4157 = sub i64 %4156, 108
  %4158 = load i64, i64* %PC.i493
  %4159 = add i64 %4158, 4
  store i64 %4159, i64* %PC.i493
  %4160 = inttoptr i64 %4157 to i32*
  %4161 = load i32, i32* %4160
  %4162 = sext i32 %4161 to i64
  store i64 %4162, i64* %RCX.i494, align 8
  store %struct.Memory* %loadMem_4046e6, %struct.Memory** %MEMORY
  %loadMem_4046ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 33
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %4165 to i64*
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4167 = getelementptr inbounds %struct.GPR, %struct.GPR* %4166, i32 0, i32 1
  %4168 = getelementptr inbounds %struct.Reg, %struct.Reg* %4167, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %4168 to i64*
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4170 = getelementptr inbounds %struct.GPR, %struct.GPR* %4169, i32 0, i32 5
  %4171 = getelementptr inbounds %struct.Reg, %struct.Reg* %4170, i32 0, i32 0
  %RCX.i492 = bitcast %union.anon* %4171 to i64*
  %4172 = load i64, i64* %RAX.i491
  %4173 = load i64, i64* %RCX.i492
  %4174 = mul i64 %4173, 8
  %4175 = add i64 %4174, %4172
  %4176 = load i64, i64* %PC.i490
  %4177 = add i64 %4176, 4
  store i64 %4177, i64* %PC.i490
  %4178 = inttoptr i64 %4175 to i64*
  %4179 = load i64, i64* %4178
  store i64 %4179, i64* %RAX.i491, align 8
  store %struct.Memory* %loadMem_4046ea, %struct.Memory** %MEMORY
  %loadMem_4046ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4181 = getelementptr inbounds %struct.GPR, %struct.GPR* %4180, i32 0, i32 33
  %4182 = getelementptr inbounds %struct.Reg, %struct.Reg* %4181, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %4182 to i64*
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4184 = getelementptr inbounds %struct.GPR, %struct.GPR* %4183, i32 0, i32 5
  %4185 = getelementptr inbounds %struct.Reg, %struct.Reg* %4184, i32 0, i32 0
  %RCX.i488 = bitcast %union.anon* %4185 to i64*
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4187 = getelementptr inbounds %struct.GPR, %struct.GPR* %4186, i32 0, i32 15
  %4188 = getelementptr inbounds %struct.Reg, %struct.Reg* %4187, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %4188 to i64*
  %4189 = load i64, i64* %RBP.i489
  %4190 = sub i64 %4189, 100
  %4191 = load i64, i64* %PC.i487
  %4192 = add i64 %4191, 4
  store i64 %4192, i64* %PC.i487
  %4193 = inttoptr i64 %4190 to i32*
  %4194 = load i32, i32* %4193
  %4195 = sext i32 %4194 to i64
  store i64 %4195, i64* %RCX.i488, align 8
  store %struct.Memory* %loadMem_4046ee, %struct.Memory** %MEMORY
  %loadMem_4046f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4197 = getelementptr inbounds %struct.GPR, %struct.GPR* %4196, i32 0, i32 33
  %4198 = getelementptr inbounds %struct.Reg, %struct.Reg* %4197, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %4198 to i64*
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4200 = getelementptr inbounds %struct.GPR, %struct.GPR* %4199, i32 0, i32 1
  %4201 = getelementptr inbounds %struct.Reg, %struct.Reg* %4200, i32 0, i32 0
  %RAX.i484 = bitcast %union.anon* %4201 to i64*
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 5
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %RCX.i485 = bitcast %union.anon* %4204 to i64*
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4206 = getelementptr inbounds %struct.GPR, %struct.GPR* %4205, i32 0, i32 7
  %4207 = getelementptr inbounds %struct.Reg, %struct.Reg* %4206, i32 0, i32 0
  %RDX.i486 = bitcast %union.anon* %4207 to i64*
  %4208 = load i64, i64* %RAX.i484
  %4209 = load i64, i64* %RCX.i485
  %4210 = mul i64 %4209, 4
  %4211 = add i64 %4210, %4208
  %4212 = load i64, i64* %PC.i483
  %4213 = add i64 %4212, 3
  store i64 %4213, i64* %PC.i483
  %4214 = inttoptr i64 %4211 to i32*
  %4215 = load i32, i32* %4214
  %4216 = zext i32 %4215 to i64
  store i64 %4216, i64* %RDX.i486, align 8
  store %struct.Memory* %loadMem_4046f2, %struct.Memory** %MEMORY
  %loadMem_4046f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4218 = getelementptr inbounds %struct.GPR, %struct.GPR* %4217, i32 0, i32 33
  %4219 = getelementptr inbounds %struct.Reg, %struct.Reg* %4218, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %4219 to i64*
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4221 = getelementptr inbounds %struct.GPR, %struct.GPR* %4220, i32 0, i32 1
  %4222 = getelementptr inbounds %struct.Reg, %struct.Reg* %4221, i32 0, i32 0
  %RAX.i481 = bitcast %union.anon* %4222 to i64*
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4224 = getelementptr inbounds %struct.GPR, %struct.GPR* %4223, i32 0, i32 15
  %4225 = getelementptr inbounds %struct.Reg, %struct.Reg* %4224, i32 0, i32 0
  %RBP.i482 = bitcast %union.anon* %4225 to i64*
  %4226 = load i64, i64* %RBP.i482
  %4227 = sub i64 %4226, 96
  %4228 = load i64, i64* %PC.i480
  %4229 = add i64 %4228, 4
  store i64 %4229, i64* %PC.i480
  %4230 = inttoptr i64 %4227 to i64*
  %4231 = load i64, i64* %4230
  store i64 %4231, i64* %RAX.i481, align 8
  store %struct.Memory* %loadMem_4046f5, %struct.Memory** %MEMORY
  %loadMem_4046f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4233 = getelementptr inbounds %struct.GPR, %struct.GPR* %4232, i32 0, i32 33
  %4234 = getelementptr inbounds %struct.Reg, %struct.Reg* %4233, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %4234 to i64*
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4236 = getelementptr inbounds %struct.GPR, %struct.GPR* %4235, i32 0, i32 5
  %4237 = getelementptr inbounds %struct.Reg, %struct.Reg* %4236, i32 0, i32 0
  %RCX.i478 = bitcast %union.anon* %4237 to i64*
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4239 = getelementptr inbounds %struct.GPR, %struct.GPR* %4238, i32 0, i32 15
  %4240 = getelementptr inbounds %struct.Reg, %struct.Reg* %4239, i32 0, i32 0
  %RBP.i479 = bitcast %union.anon* %4240 to i64*
  %4241 = load i64, i64* %RBP.i479
  %4242 = sub i64 %4241, 100
  %4243 = load i64, i64* %PC.i477
  %4244 = add i64 %4243, 4
  store i64 %4244, i64* %PC.i477
  %4245 = inttoptr i64 %4242 to i32*
  %4246 = load i32, i32* %4245
  %4247 = sext i32 %4246 to i64
  store i64 %4247, i64* %RCX.i478, align 8
  store %struct.Memory* %loadMem_4046f9, %struct.Memory** %MEMORY
  %loadMem_4046fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 33
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %4250 to i64*
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 7
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %EDX.i474 = bitcast %union.anon* %4253 to i32*
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 1
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %RAX.i475 = bitcast %union.anon* %4256 to i64*
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 5
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %RCX.i476 = bitcast %union.anon* %4259 to i64*
  %4260 = load i64, i64* %RAX.i475
  %4261 = load i64, i64* %RCX.i476
  %4262 = mul i64 %4261, 4
  %4263 = add i64 %4262, %4260
  %4264 = load i32, i32* %EDX.i474
  %4265 = zext i32 %4264 to i64
  %4266 = load i64, i64* %PC.i473
  %4267 = add i64 %4266, 3
  store i64 %4267, i64* %PC.i473
  %4268 = inttoptr i64 %4263 to i32*
  store i32 %4264, i32* %4268
  store %struct.Memory* %loadMem_4046fd, %struct.Memory** %MEMORY
  br label %block_.L_404700

block_.L_404700:                                  ; preds = %block_4046e2, %block_4046be
  %loadMem_404700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4270 = getelementptr inbounds %struct.GPR, %struct.GPR* %4269, i32 0, i32 33
  %4271 = getelementptr inbounds %struct.Reg, %struct.Reg* %4270, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %4271 to i64*
  %4272 = load i64, i64* %PC.i472
  %4273 = add i64 %4272, 5
  %4274 = load i64, i64* %PC.i472
  %4275 = add i64 %4274, 5
  store i64 %4275, i64* %PC.i472
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4273, i64* %4276, align 8
  store %struct.Memory* %loadMem_404700, %struct.Memory** %MEMORY
  br label %block_.L_404705

block_.L_404705:                                  ; preds = %block_.L_404700
  %loadMem_404705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4278 = getelementptr inbounds %struct.GPR, %struct.GPR* %4277, i32 0, i32 33
  %4279 = getelementptr inbounds %struct.Reg, %struct.Reg* %4278, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %4279 to i64*
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4281 = getelementptr inbounds %struct.GPR, %struct.GPR* %4280, i32 0, i32 1
  %4282 = getelementptr inbounds %struct.Reg, %struct.Reg* %4281, i32 0, i32 0
  %RAX.i470 = bitcast %union.anon* %4282 to i64*
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4284 = getelementptr inbounds %struct.GPR, %struct.GPR* %4283, i32 0, i32 15
  %4285 = getelementptr inbounds %struct.Reg, %struct.Reg* %4284, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %4285 to i64*
  %4286 = load i64, i64* %RBP.i471
  %4287 = sub i64 %4286, 108
  %4288 = load i64, i64* %PC.i469
  %4289 = add i64 %4288, 3
  store i64 %4289, i64* %PC.i469
  %4290 = inttoptr i64 %4287 to i32*
  %4291 = load i32, i32* %4290
  %4292 = zext i32 %4291 to i64
  store i64 %4292, i64* %RAX.i470, align 8
  store %struct.Memory* %loadMem_404705, %struct.Memory** %MEMORY
  %loadMem_404708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4294 = getelementptr inbounds %struct.GPR, %struct.GPR* %4293, i32 0, i32 33
  %4295 = getelementptr inbounds %struct.Reg, %struct.Reg* %4294, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %4295 to i64*
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4297 = getelementptr inbounds %struct.GPR, %struct.GPR* %4296, i32 0, i32 1
  %4298 = getelementptr inbounds %struct.Reg, %struct.Reg* %4297, i32 0, i32 0
  %RAX.i468 = bitcast %union.anon* %4298 to i64*
  %4299 = load i64, i64* %RAX.i468
  %4300 = load i64, i64* %PC.i467
  %4301 = add i64 %4300, 3
  store i64 %4301, i64* %PC.i467
  %4302 = trunc i64 %4299 to i32
  %4303 = add i32 1, %4302
  %4304 = zext i32 %4303 to i64
  store i64 %4304, i64* %RAX.i468, align 8
  %4305 = icmp ult i32 %4303, %4302
  %4306 = icmp ult i32 %4303, 1
  %4307 = or i1 %4305, %4306
  %4308 = zext i1 %4307 to i8
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4308, i8* %4309, align 1
  %4310 = and i32 %4303, 255
  %4311 = call i32 @llvm.ctpop.i32(i32 %4310)
  %4312 = trunc i32 %4311 to i8
  %4313 = and i8 %4312, 1
  %4314 = xor i8 %4313, 1
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4314, i8* %4315, align 1
  %4316 = xor i64 1, %4299
  %4317 = trunc i64 %4316 to i32
  %4318 = xor i32 %4317, %4303
  %4319 = lshr i32 %4318, 4
  %4320 = trunc i32 %4319 to i8
  %4321 = and i8 %4320, 1
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4321, i8* %4322, align 1
  %4323 = icmp eq i32 %4303, 0
  %4324 = zext i1 %4323 to i8
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4324, i8* %4325, align 1
  %4326 = lshr i32 %4303, 31
  %4327 = trunc i32 %4326 to i8
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4327, i8* %4328, align 1
  %4329 = lshr i32 %4302, 31
  %4330 = xor i32 %4326, %4329
  %4331 = add i32 %4330, %4326
  %4332 = icmp eq i32 %4331, 2
  %4333 = zext i1 %4332 to i8
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4333, i8* %4334, align 1
  store %struct.Memory* %loadMem_404708, %struct.Memory** %MEMORY
  %loadMem_40470b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4336 = getelementptr inbounds %struct.GPR, %struct.GPR* %4335, i32 0, i32 33
  %4337 = getelementptr inbounds %struct.Reg, %struct.Reg* %4336, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %4337 to i64*
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4339 = getelementptr inbounds %struct.GPR, %struct.GPR* %4338, i32 0, i32 1
  %4340 = getelementptr inbounds %struct.Reg, %struct.Reg* %4339, i32 0, i32 0
  %EAX.i465 = bitcast %union.anon* %4340 to i32*
  %4341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4342 = getelementptr inbounds %struct.GPR, %struct.GPR* %4341, i32 0, i32 15
  %4343 = getelementptr inbounds %struct.Reg, %struct.Reg* %4342, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %4343 to i64*
  %4344 = load i64, i64* %RBP.i466
  %4345 = sub i64 %4344, 108
  %4346 = load i32, i32* %EAX.i465
  %4347 = zext i32 %4346 to i64
  %4348 = load i64, i64* %PC.i464
  %4349 = add i64 %4348, 3
  store i64 %4349, i64* %PC.i464
  %4350 = inttoptr i64 %4345 to i32*
  store i32 %4346, i32* %4350
  store %struct.Memory* %loadMem_40470b, %struct.Memory** %MEMORY
  %loadMem_40470e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4352 = getelementptr inbounds %struct.GPR, %struct.GPR* %4351, i32 0, i32 33
  %4353 = getelementptr inbounds %struct.Reg, %struct.Reg* %4352, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %4353 to i64*
  %4354 = load i64, i64* %PC.i463
  %4355 = add i64 %4354, -92
  %4356 = load i64, i64* %PC.i463
  %4357 = add i64 %4356, 5
  store i64 %4357, i64* %PC.i463
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4355, i64* %4358, align 8
  store %struct.Memory* %loadMem_40470e, %struct.Memory** %MEMORY
  br label %block_.L_4046b2

block_.L_404713:                                  ; preds = %block_.L_4046b2
  %loadMem_404713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4360 = getelementptr inbounds %struct.GPR, %struct.GPR* %4359, i32 0, i32 33
  %4361 = getelementptr inbounds %struct.Reg, %struct.Reg* %4360, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %4361 to i64*
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 1
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %RAX.i461 = bitcast %union.anon* %4364 to i64*
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4366 = getelementptr inbounds %struct.GPR, %struct.GPR* %4365, i32 0, i32 15
  %4367 = getelementptr inbounds %struct.Reg, %struct.Reg* %4366, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %4367 to i64*
  %4368 = load i64, i64* %RBP.i462
  %4369 = sub i64 %4368, 96
  %4370 = load i64, i64* %PC.i460
  %4371 = add i64 %4370, 4
  store i64 %4371, i64* %PC.i460
  %4372 = inttoptr i64 %4369 to i64*
  %4373 = load i64, i64* %4372
  store i64 %4373, i64* %RAX.i461, align 8
  store %struct.Memory* %loadMem_404713, %struct.Memory** %MEMORY
  %loadMem_404717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4375 = getelementptr inbounds %struct.GPR, %struct.GPR* %4374, i32 0, i32 33
  %4376 = getelementptr inbounds %struct.Reg, %struct.Reg* %4375, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %4376 to i64*
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4378 = getelementptr inbounds %struct.GPR, %struct.GPR* %4377, i32 0, i32 5
  %4379 = getelementptr inbounds %struct.Reg, %struct.Reg* %4378, i32 0, i32 0
  %RCX.i458 = bitcast %union.anon* %4379 to i64*
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4381 = getelementptr inbounds %struct.GPR, %struct.GPR* %4380, i32 0, i32 15
  %4382 = getelementptr inbounds %struct.Reg, %struct.Reg* %4381, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %4382 to i64*
  %4383 = load i64, i64* %RBP.i459
  %4384 = sub i64 %4383, 100
  %4385 = load i64, i64* %PC.i457
  %4386 = add i64 %4385, 4
  store i64 %4386, i64* %PC.i457
  %4387 = inttoptr i64 %4384 to i32*
  %4388 = load i32, i32* %4387
  %4389 = sext i32 %4388 to i64
  store i64 %4389, i64* %RCX.i458, align 8
  store %struct.Memory* %loadMem_404717, %struct.Memory** %MEMORY
  %loadMem_40471b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4391 = getelementptr inbounds %struct.GPR, %struct.GPR* %4390, i32 0, i32 33
  %4392 = getelementptr inbounds %struct.Reg, %struct.Reg* %4391, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %4392 to i64*
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4394 = getelementptr inbounds %struct.GPR, %struct.GPR* %4393, i32 0, i32 1
  %4395 = getelementptr inbounds %struct.Reg, %struct.Reg* %4394, i32 0, i32 0
  %RAX.i454 = bitcast %union.anon* %4395 to i64*
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4397 = getelementptr inbounds %struct.GPR, %struct.GPR* %4396, i32 0, i32 5
  %4398 = getelementptr inbounds %struct.Reg, %struct.Reg* %4397, i32 0, i32 0
  %RCX.i455 = bitcast %union.anon* %4398 to i64*
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4400 = getelementptr inbounds %struct.GPR, %struct.GPR* %4399, i32 0, i32 7
  %4401 = getelementptr inbounds %struct.Reg, %struct.Reg* %4400, i32 0, i32 0
  %RDX.i456 = bitcast %union.anon* %4401 to i64*
  %4402 = load i64, i64* %RAX.i454
  %4403 = load i64, i64* %RCX.i455
  %4404 = mul i64 %4403, 4
  %4405 = add i64 %4404, %4402
  %4406 = load i64, i64* %PC.i453
  %4407 = add i64 %4406, 3
  store i64 %4407, i64* %PC.i453
  %4408 = inttoptr i64 %4405 to i32*
  %4409 = load i32, i32* %4408
  %4410 = zext i32 %4409 to i64
  store i64 %4410, i64* %RDX.i456, align 8
  store %struct.Memory* %loadMem_40471b, %struct.Memory** %MEMORY
  %loadMem_40471e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4412 = getelementptr inbounds %struct.GPR, %struct.GPR* %4411, i32 0, i32 33
  %4413 = getelementptr inbounds %struct.Reg, %struct.Reg* %4412, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %4413 to i64*
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4415 = getelementptr inbounds %struct.GPR, %struct.GPR* %4414, i32 0, i32 7
  %4416 = getelementptr inbounds %struct.Reg, %struct.Reg* %4415, i32 0, i32 0
  %RDX.i451 = bitcast %union.anon* %4416 to i64*
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4418 = getelementptr inbounds %struct.GPR, %struct.GPR* %4417, i32 0, i32 15
  %4419 = getelementptr inbounds %struct.Reg, %struct.Reg* %4418, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %4419 to i64*
  %4420 = load i64, i64* %RDX.i451
  %4421 = load i64, i64* %RBP.i452
  %4422 = sub i64 %4421, 60
  %4423 = load i64, i64* %PC.i450
  %4424 = add i64 %4423, 3
  store i64 %4424, i64* %PC.i450
  %4425 = trunc i64 %4420 to i32
  %4426 = inttoptr i64 %4422 to i32*
  %4427 = load i32, i32* %4426
  %4428 = add i32 %4427, %4425
  %4429 = zext i32 %4428 to i64
  store i64 %4429, i64* %RDX.i451, align 8
  %4430 = icmp ult i32 %4428, %4425
  %4431 = icmp ult i32 %4428, %4427
  %4432 = or i1 %4430, %4431
  %4433 = zext i1 %4432 to i8
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4433, i8* %4434, align 1
  %4435 = and i32 %4428, 255
  %4436 = call i32 @llvm.ctpop.i32(i32 %4435)
  %4437 = trunc i32 %4436 to i8
  %4438 = and i8 %4437, 1
  %4439 = xor i8 %4438, 1
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4439, i8* %4440, align 1
  %4441 = xor i32 %4427, %4425
  %4442 = xor i32 %4441, %4428
  %4443 = lshr i32 %4442, 4
  %4444 = trunc i32 %4443 to i8
  %4445 = and i8 %4444, 1
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4445, i8* %4446, align 1
  %4447 = icmp eq i32 %4428, 0
  %4448 = zext i1 %4447 to i8
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4448, i8* %4449, align 1
  %4450 = lshr i32 %4428, 31
  %4451 = trunc i32 %4450 to i8
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4451, i8* %4452, align 1
  %4453 = lshr i32 %4425, 31
  %4454 = lshr i32 %4427, 31
  %4455 = xor i32 %4450, %4453
  %4456 = xor i32 %4450, %4454
  %4457 = add i32 %4455, %4456
  %4458 = icmp eq i32 %4457, 2
  %4459 = zext i1 %4458 to i8
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4459, i8* %4460, align 1
  store %struct.Memory* %loadMem_40471e, %struct.Memory** %MEMORY
  %loadMem_404721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4462 = getelementptr inbounds %struct.GPR, %struct.GPR* %4461, i32 0, i32 33
  %4463 = getelementptr inbounds %struct.Reg, %struct.Reg* %4462, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %4463 to i64*
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4465 = getelementptr inbounds %struct.GPR, %struct.GPR* %4464, i32 0, i32 7
  %4466 = getelementptr inbounds %struct.Reg, %struct.Reg* %4465, i32 0, i32 0
  %EDX.i448 = bitcast %union.anon* %4466 to i32*
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4468 = getelementptr inbounds %struct.GPR, %struct.GPR* %4467, i32 0, i32 15
  %4469 = getelementptr inbounds %struct.Reg, %struct.Reg* %4468, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %4469 to i64*
  %4470 = load i64, i64* %RBP.i449
  %4471 = sub i64 %4470, 60
  %4472 = load i32, i32* %EDX.i448
  %4473 = zext i32 %4472 to i64
  %4474 = load i64, i64* %PC.i447
  %4475 = add i64 %4474, 3
  store i64 %4475, i64* %PC.i447
  %4476 = inttoptr i64 %4471 to i32*
  store i32 %4472, i32* %4476
  store %struct.Memory* %loadMem_404721, %struct.Memory** %MEMORY
  %loadMem_404724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4478 = getelementptr inbounds %struct.GPR, %struct.GPR* %4477, i32 0, i32 33
  %4479 = getelementptr inbounds %struct.Reg, %struct.Reg* %4478, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %4479 to i64*
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4481 = getelementptr inbounds %struct.GPR, %struct.GPR* %4480, i32 0, i32 1
  %4482 = getelementptr inbounds %struct.Reg, %struct.Reg* %4481, i32 0, i32 0
  %RAX.i445 = bitcast %union.anon* %4482 to i64*
  %4483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4484 = getelementptr inbounds %struct.GPR, %struct.GPR* %4483, i32 0, i32 15
  %4485 = getelementptr inbounds %struct.Reg, %struct.Reg* %4484, i32 0, i32 0
  %RBP.i446 = bitcast %union.anon* %4485 to i64*
  %4486 = load i64, i64* %RBP.i446
  %4487 = sub i64 %4486, 100
  %4488 = load i64, i64* %PC.i444
  %4489 = add i64 %4488, 3
  store i64 %4489, i64* %PC.i444
  %4490 = inttoptr i64 %4487 to i32*
  %4491 = load i32, i32* %4490
  %4492 = zext i32 %4491 to i64
  store i64 %4492, i64* %RAX.i445, align 8
  store %struct.Memory* %loadMem_404724, %struct.Memory** %MEMORY
  %loadMem_404727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 33
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %4495 to i64*
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4497 = getelementptr inbounds %struct.GPR, %struct.GPR* %4496, i32 0, i32 1
  %4498 = getelementptr inbounds %struct.Reg, %struct.Reg* %4497, i32 0, i32 0
  %RAX.i443 = bitcast %union.anon* %4498 to i64*
  %4499 = load i64, i64* %RAX.i443
  %4500 = load i64, i64* %PC.i442
  %4501 = add i64 %4500, 3
  store i64 %4501, i64* %PC.i442
  %4502 = trunc i64 %4499 to i32
  %4503 = add i32 1, %4502
  %4504 = zext i32 %4503 to i64
  store i64 %4504, i64* %RAX.i443, align 8
  %4505 = icmp ult i32 %4503, %4502
  %4506 = icmp ult i32 %4503, 1
  %4507 = or i1 %4505, %4506
  %4508 = zext i1 %4507 to i8
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4508, i8* %4509, align 1
  %4510 = and i32 %4503, 255
  %4511 = call i32 @llvm.ctpop.i32(i32 %4510)
  %4512 = trunc i32 %4511 to i8
  %4513 = and i8 %4512, 1
  %4514 = xor i8 %4513, 1
  %4515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4514, i8* %4515, align 1
  %4516 = xor i64 1, %4499
  %4517 = trunc i64 %4516 to i32
  %4518 = xor i32 %4517, %4503
  %4519 = lshr i32 %4518, 4
  %4520 = trunc i32 %4519 to i8
  %4521 = and i8 %4520, 1
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4521, i8* %4522, align 1
  %4523 = icmp eq i32 %4503, 0
  %4524 = zext i1 %4523 to i8
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4524, i8* %4525, align 1
  %4526 = lshr i32 %4503, 31
  %4527 = trunc i32 %4526 to i8
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4527, i8* %4528, align 1
  %4529 = lshr i32 %4502, 31
  %4530 = xor i32 %4526, %4529
  %4531 = add i32 %4530, %4526
  %4532 = icmp eq i32 %4531, 2
  %4533 = zext i1 %4532 to i8
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4533, i8* %4534, align 1
  store %struct.Memory* %loadMem_404727, %struct.Memory** %MEMORY
  %loadMem_40472a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4536 = getelementptr inbounds %struct.GPR, %struct.GPR* %4535, i32 0, i32 33
  %4537 = getelementptr inbounds %struct.Reg, %struct.Reg* %4536, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %4537 to i64*
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4539 = getelementptr inbounds %struct.GPR, %struct.GPR* %4538, i32 0, i32 1
  %4540 = getelementptr inbounds %struct.Reg, %struct.Reg* %4539, i32 0, i32 0
  %EAX.i440 = bitcast %union.anon* %4540 to i32*
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4542 = getelementptr inbounds %struct.GPR, %struct.GPR* %4541, i32 0, i32 15
  %4543 = getelementptr inbounds %struct.Reg, %struct.Reg* %4542, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %4543 to i64*
  %4544 = load i64, i64* %RBP.i441
  %4545 = sub i64 %4544, 100
  %4546 = load i32, i32* %EAX.i440
  %4547 = zext i32 %4546 to i64
  %4548 = load i64, i64* %PC.i439
  %4549 = add i64 %4548, 3
  store i64 %4549, i64* %PC.i439
  %4550 = inttoptr i64 %4545 to i32*
  store i32 %4546, i32* %4550
  store %struct.Memory* %loadMem_40472a, %struct.Memory** %MEMORY
  %loadMem_40472d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4552 = getelementptr inbounds %struct.GPR, %struct.GPR* %4551, i32 0, i32 33
  %4553 = getelementptr inbounds %struct.Reg, %struct.Reg* %4552, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %4553 to i64*
  %4554 = load i64, i64* %PC.i438
  %4555 = add i64 %4554, -157
  %4556 = load i64, i64* %PC.i438
  %4557 = add i64 %4556, 5
  store i64 %4557, i64* %PC.i438
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4555, i64* %4558, align 8
  store %struct.Memory* %loadMem_40472d, %struct.Memory** %MEMORY
  br label %block_.L_404690

block_.L_404732:                                  ; preds = %block_.L_404690
  %loadMem_404732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4560 = getelementptr inbounds %struct.GPR, %struct.GPR* %4559, i32 0, i32 33
  %4561 = getelementptr inbounds %struct.Reg, %struct.Reg* %4560, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %4561 to i64*
  %4562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4563 = getelementptr inbounds %struct.GPR, %struct.GPR* %4562, i32 0, i32 11
  %4564 = getelementptr inbounds %struct.Reg, %struct.Reg* %4563, i32 0, i32 0
  %RDI.i437 = bitcast %union.anon* %4564 to i64*
  %4565 = load i64, i64* %PC.i436
  %4566 = add i64 %4565, 10
  store i64 %4566, i64* %PC.i436
  store i64 ptrtoint (%G__0x4559fe_type* @G__0x4559fe to i64), i64* %RDI.i437, align 8
  store %struct.Memory* %loadMem_404732, %struct.Memory** %MEMORY
  %loadMem_40473c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4568 = getelementptr inbounds %struct.GPR, %struct.GPR* %4567, i32 0, i32 33
  %4569 = getelementptr inbounds %struct.Reg, %struct.Reg* %4568, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %4569 to i64*
  %4570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4571 = getelementptr inbounds %struct.GPR, %struct.GPR* %4570, i32 0, i32 9
  %4572 = getelementptr inbounds %struct.Reg, %struct.Reg* %4571, i32 0, i32 0
  %RSI.i435 = bitcast %union.anon* %4572 to i64*
  %4573 = load i64, i64* %PC.i434
  %4574 = add i64 %4573, 5
  store i64 %4574, i64* %PC.i434
  store i64 581, i64* %RSI.i435, align 8
  store %struct.Memory* %loadMem_40473c, %struct.Memory** %MEMORY
  %loadMem_404741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4576 = getelementptr inbounds %struct.GPR, %struct.GPR* %4575, i32 0, i32 33
  %4577 = getelementptr inbounds %struct.Reg, %struct.Reg* %4576, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %4577 to i64*
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4579 = getelementptr inbounds %struct.GPR, %struct.GPR* %4578, i32 0, i32 1
  %4580 = getelementptr inbounds %struct.Reg, %struct.Reg* %4579, i32 0, i32 0
  %RAX.i432 = bitcast %union.anon* %4580 to i64*
  %4581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4582 = getelementptr inbounds %struct.GPR, %struct.GPR* %4581, i32 0, i32 15
  %4583 = getelementptr inbounds %struct.Reg, %struct.Reg* %4582, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %4583 to i64*
  %4584 = load i64, i64* %RBP.i433
  %4585 = sub i64 %4584, 20
  %4586 = load i64, i64* %PC.i431
  %4587 = add i64 %4586, 4
  store i64 %4587, i64* %PC.i431
  %4588 = inttoptr i64 %4585 to i32*
  %4589 = load i32, i32* %4588
  %4590 = sext i32 %4589 to i64
  store i64 %4590, i64* %RAX.i432, align 8
  store %struct.Memory* %loadMem_404741, %struct.Memory** %MEMORY
  %loadMem_404745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4592 = getelementptr inbounds %struct.GPR, %struct.GPR* %4591, i32 0, i32 33
  %4593 = getelementptr inbounds %struct.Reg, %struct.Reg* %4592, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %4593 to i64*
  %4594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4595 = getelementptr inbounds %struct.GPR, %struct.GPR* %4594, i32 0, i32 1
  %4596 = getelementptr inbounds %struct.Reg, %struct.Reg* %4595, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %4596 to i64*
  %4597 = load i64, i64* %RAX.i430
  %4598 = load i64, i64* %PC.i429
  %4599 = add i64 %4598, 4
  store i64 %4599, i64* %PC.i429
  %4600 = shl i64 %4597, 2
  %4601 = icmp slt i64 %4600, 0
  %4602 = shl i64 %4600, 1
  store i64 %4602, i64* %RAX.i430, align 8
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4604 = zext i1 %4601 to i8
  store i8 %4604, i8* %4603, align 1
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4606 = trunc i64 %4602 to i32
  %4607 = and i32 %4606, 254
  %4608 = call i32 @llvm.ctpop.i32(i32 %4607)
  %4609 = trunc i32 %4608 to i8
  %4610 = and i8 %4609, 1
  %4611 = xor i8 %4610, 1
  store i8 %4611, i8* %4605, align 1
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4612, align 1
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4614 = icmp eq i64 %4602, 0
  %4615 = zext i1 %4614 to i8
  store i8 %4615, i8* %4613, align 1
  %4616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4617 = lshr i64 %4602, 63
  %4618 = trunc i64 %4617 to i8
  store i8 %4618, i8* %4616, align 1
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4619, align 1
  store %struct.Memory* %loadMem_404745, %struct.Memory** %MEMORY
  %loadMem_404749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 33
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %4622 to i64*
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4624 = getelementptr inbounds %struct.GPR, %struct.GPR* %4623, i32 0, i32 1
  %4625 = getelementptr inbounds %struct.Reg, %struct.Reg* %4624, i32 0, i32 0
  %RAX.i427 = bitcast %union.anon* %4625 to i64*
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4627 = getelementptr inbounds %struct.GPR, %struct.GPR* %4626, i32 0, i32 7
  %4628 = getelementptr inbounds %struct.Reg, %struct.Reg* %4627, i32 0, i32 0
  %RDX.i428 = bitcast %union.anon* %4628 to i64*
  %4629 = load i64, i64* %RAX.i427
  %4630 = load i64, i64* %PC.i426
  %4631 = add i64 %4630, 3
  store i64 %4631, i64* %PC.i426
  store i64 %4629, i64* %RDX.i428, align 8
  store %struct.Memory* %loadMem_404749, %struct.Memory** %MEMORY
  %loadMem1_40474c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4633 = getelementptr inbounds %struct.GPR, %struct.GPR* %4632, i32 0, i32 33
  %4634 = getelementptr inbounds %struct.Reg, %struct.Reg* %4633, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %4634 to i64*
  %4635 = load i64, i64* %PC.i425
  %4636 = add i64 %4635, 268564
  %4637 = load i64, i64* %PC.i425
  %4638 = add i64 %4637, 5
  %4639 = load i64, i64* %PC.i425
  %4640 = add i64 %4639, 5
  store i64 %4640, i64* %PC.i425
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4642 = load i64, i64* %4641, align 8
  %4643 = add i64 %4642, -8
  %4644 = inttoptr i64 %4643 to i64*
  store i64 %4638, i64* %4644
  store i64 %4643, i64* %4641, align 8
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4636, i64* %4645, align 8
  store %struct.Memory* %loadMem1_40474c, %struct.Memory** %MEMORY
  %loadMem2_40474c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40474c = load i64, i64* %3
  %call2_40474c = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_40474c, %struct.Memory* %loadMem2_40474c)
  store %struct.Memory* %call2_40474c, %struct.Memory** %MEMORY
  %loadMem_404751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4647 = getelementptr inbounds %struct.GPR, %struct.GPR* %4646, i32 0, i32 33
  %4648 = getelementptr inbounds %struct.Reg, %struct.Reg* %4647, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %4648 to i64*
  %4649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4650 = getelementptr inbounds %struct.GPR, %struct.GPR* %4649, i32 0, i32 1
  %4651 = getelementptr inbounds %struct.Reg, %struct.Reg* %4650, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %4651 to i64*
  %4652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4653 = getelementptr inbounds %struct.GPR, %struct.GPR* %4652, i32 0, i32 15
  %4654 = getelementptr inbounds %struct.Reg, %struct.Reg* %4653, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %4654 to i64*
  %4655 = load i64, i64* %RBP.i424
  %4656 = sub i64 %4655, 56
  %4657 = load i64, i64* %RAX.i423
  %4658 = load i64, i64* %PC.i422
  %4659 = add i64 %4658, 4
  store i64 %4659, i64* %PC.i422
  %4660 = inttoptr i64 %4656 to i64*
  store i64 %4657, i64* %4660
  store %struct.Memory* %loadMem_404751, %struct.Memory** %MEMORY
  %loadMem_404755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4662 = getelementptr inbounds %struct.GPR, %struct.GPR* %4661, i32 0, i32 33
  %4663 = getelementptr inbounds %struct.Reg, %struct.Reg* %4662, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %4663 to i64*
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4665 = getelementptr inbounds %struct.GPR, %struct.GPR* %4664, i32 0, i32 15
  %4666 = getelementptr inbounds %struct.Reg, %struct.Reg* %4665, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %4666 to i64*
  %4667 = load i64, i64* %RBP.i421
  %4668 = sub i64 %4667, 108
  %4669 = load i64, i64* %PC.i420
  %4670 = add i64 %4669, 7
  store i64 %4670, i64* %PC.i420
  %4671 = inttoptr i64 %4668 to i32*
  store i32 0, i32* %4671
  store %struct.Memory* %loadMem_404755, %struct.Memory** %MEMORY
  br label %block_.L_40475c

block_.L_40475c:                                  ; preds = %block_404768, %block_.L_404732
  %loadMem_40475c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4673 = getelementptr inbounds %struct.GPR, %struct.GPR* %4672, i32 0, i32 33
  %4674 = getelementptr inbounds %struct.Reg, %struct.Reg* %4673, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %4674 to i64*
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4676 = getelementptr inbounds %struct.GPR, %struct.GPR* %4675, i32 0, i32 1
  %4677 = getelementptr inbounds %struct.Reg, %struct.Reg* %4676, i32 0, i32 0
  %RAX.i418 = bitcast %union.anon* %4677 to i64*
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4679 = getelementptr inbounds %struct.GPR, %struct.GPR* %4678, i32 0, i32 15
  %4680 = getelementptr inbounds %struct.Reg, %struct.Reg* %4679, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %4680 to i64*
  %4681 = load i64, i64* %RBP.i419
  %4682 = sub i64 %4681, 108
  %4683 = load i64, i64* %PC.i417
  %4684 = add i64 %4683, 3
  store i64 %4684, i64* %PC.i417
  %4685 = inttoptr i64 %4682 to i32*
  %4686 = load i32, i32* %4685
  %4687 = zext i32 %4686 to i64
  store i64 %4687, i64* %RAX.i418, align 8
  store %struct.Memory* %loadMem_40475c, %struct.Memory** %MEMORY
  %loadMem_40475f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4689 = getelementptr inbounds %struct.GPR, %struct.GPR* %4688, i32 0, i32 33
  %4690 = getelementptr inbounds %struct.Reg, %struct.Reg* %4689, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %4690 to i64*
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4692 = getelementptr inbounds %struct.GPR, %struct.GPR* %4691, i32 0, i32 1
  %4693 = getelementptr inbounds %struct.Reg, %struct.Reg* %4692, i32 0, i32 0
  %EAX.i415 = bitcast %union.anon* %4693 to i32*
  %4694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4695 = getelementptr inbounds %struct.GPR, %struct.GPR* %4694, i32 0, i32 15
  %4696 = getelementptr inbounds %struct.Reg, %struct.Reg* %4695, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %4696 to i64*
  %4697 = load i32, i32* %EAX.i415
  %4698 = zext i32 %4697 to i64
  %4699 = load i64, i64* %RBP.i416
  %4700 = sub i64 %4699, 20
  %4701 = load i64, i64* %PC.i414
  %4702 = add i64 %4701, 3
  store i64 %4702, i64* %PC.i414
  %4703 = inttoptr i64 %4700 to i32*
  %4704 = load i32, i32* %4703
  %4705 = sub i32 %4697, %4704
  %4706 = icmp ult i32 %4697, %4704
  %4707 = zext i1 %4706 to i8
  %4708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4707, i8* %4708, align 1
  %4709 = and i32 %4705, 255
  %4710 = call i32 @llvm.ctpop.i32(i32 %4709)
  %4711 = trunc i32 %4710 to i8
  %4712 = and i8 %4711, 1
  %4713 = xor i8 %4712, 1
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4713, i8* %4714, align 1
  %4715 = xor i32 %4704, %4697
  %4716 = xor i32 %4715, %4705
  %4717 = lshr i32 %4716, 4
  %4718 = trunc i32 %4717 to i8
  %4719 = and i8 %4718, 1
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4719, i8* %4720, align 1
  %4721 = icmp eq i32 %4705, 0
  %4722 = zext i1 %4721 to i8
  %4723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4722, i8* %4723, align 1
  %4724 = lshr i32 %4705, 31
  %4725 = trunc i32 %4724 to i8
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4725, i8* %4726, align 1
  %4727 = lshr i32 %4697, 31
  %4728 = lshr i32 %4704, 31
  %4729 = xor i32 %4728, %4727
  %4730 = xor i32 %4724, %4727
  %4731 = add i32 %4730, %4729
  %4732 = icmp eq i32 %4731, 2
  %4733 = zext i1 %4732 to i8
  %4734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4733, i8* %4734, align 1
  store %struct.Memory* %loadMem_40475f, %struct.Memory** %MEMORY
  %loadMem_404762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4736 = getelementptr inbounds %struct.GPR, %struct.GPR* %4735, i32 0, i32 33
  %4737 = getelementptr inbounds %struct.Reg, %struct.Reg* %4736, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %4737 to i64*
  %4738 = load i64, i64* %PC.i413
  %4739 = add i64 %4738, 68
  %4740 = load i64, i64* %PC.i413
  %4741 = add i64 %4740, 6
  %4742 = load i64, i64* %PC.i413
  %4743 = add i64 %4742, 6
  store i64 %4743, i64* %PC.i413
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4745 = load i8, i8* %4744, align 1
  %4746 = icmp ne i8 %4745, 0
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4748 = load i8, i8* %4747, align 1
  %4749 = icmp ne i8 %4748, 0
  %4750 = xor i1 %4746, %4749
  %4751 = xor i1 %4750, true
  %4752 = zext i1 %4751 to i8
  store i8 %4752, i8* %BRANCH_TAKEN, align 1
  %4753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4754 = select i1 %4750, i64 %4741, i64 %4739
  store i64 %4754, i64* %4753, align 8
  store %struct.Memory* %loadMem_404762, %struct.Memory** %MEMORY
  %loadBr_404762 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_404762 = icmp eq i8 %loadBr_404762, 1
  br i1 %cmpBr_404762, label %block_.L_4047a6, label %block_404768

block_404768:                                     ; preds = %block_.L_40475c
  %loadMem_404768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4756 = getelementptr inbounds %struct.GPR, %struct.GPR* %4755, i32 0, i32 33
  %4757 = getelementptr inbounds %struct.Reg, %struct.Reg* %4756, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %4757 to i64*
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4759 = getelementptr inbounds %struct.GPR, %struct.GPR* %4758, i32 0, i32 11
  %4760 = getelementptr inbounds %struct.Reg, %struct.Reg* %4759, i32 0, i32 0
  %RDI.i412 = bitcast %union.anon* %4760 to i64*
  %4761 = load i64, i64* %PC.i411
  %4762 = add i64 %4761, 10
  store i64 %4762, i64* %PC.i411
  store i64 ptrtoint (%G__0x4559fe_type* @G__0x4559fe to i64), i64* %RDI.i412, align 8
  store %struct.Memory* %loadMem_404768, %struct.Memory** %MEMORY
  %loadMem_404772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4764 = getelementptr inbounds %struct.GPR, %struct.GPR* %4763, i32 0, i32 33
  %4765 = getelementptr inbounds %struct.Reg, %struct.Reg* %4764, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %4765 to i64*
  %4766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4767 = getelementptr inbounds %struct.GPR, %struct.GPR* %4766, i32 0, i32 9
  %4768 = getelementptr inbounds %struct.Reg, %struct.Reg* %4767, i32 0, i32 0
  %RSI.i410 = bitcast %union.anon* %4768 to i64*
  %4769 = load i64, i64* %PC.i409
  %4770 = add i64 %4769, 5
  store i64 %4770, i64* %PC.i409
  store i64 583, i64* %RSI.i410, align 8
  store %struct.Memory* %loadMem_404772, %struct.Memory** %MEMORY
  %loadMem_404777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4772 = getelementptr inbounds %struct.GPR, %struct.GPR* %4771, i32 0, i32 33
  %4773 = getelementptr inbounds %struct.Reg, %struct.Reg* %4772, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %4773 to i64*
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4775 = getelementptr inbounds %struct.GPR, %struct.GPR* %4774, i32 0, i32 1
  %4776 = getelementptr inbounds %struct.Reg, %struct.Reg* %4775, i32 0, i32 0
  %RAX.i407 = bitcast %union.anon* %4776 to i64*
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4778 = getelementptr inbounds %struct.GPR, %struct.GPR* %4777, i32 0, i32 15
  %4779 = getelementptr inbounds %struct.Reg, %struct.Reg* %4778, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %4779 to i64*
  %4780 = load i64, i64* %RBP.i408
  %4781 = sub i64 %4780, 60
  %4782 = load i64, i64* %PC.i406
  %4783 = add i64 %4782, 3
  store i64 %4783, i64* %PC.i406
  %4784 = inttoptr i64 %4781 to i32*
  %4785 = load i32, i32* %4784
  %4786 = zext i32 %4785 to i64
  store i64 %4786, i64* %RAX.i407, align 8
  store %struct.Memory* %loadMem_404777, %struct.Memory** %MEMORY
  %loadMem_40477a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4788 = getelementptr inbounds %struct.GPR, %struct.GPR* %4787, i32 0, i32 33
  %4789 = getelementptr inbounds %struct.Reg, %struct.Reg* %4788, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %4789 to i64*
  %4790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4791 = getelementptr inbounds %struct.GPR, %struct.GPR* %4790, i32 0, i32 1
  %4792 = getelementptr inbounds %struct.Reg, %struct.Reg* %4791, i32 0, i32 0
  %RAX.i405 = bitcast %union.anon* %4792 to i64*
  %4793 = load i64, i64* %RAX.i405
  %4794 = load i64, i64* %PC.i404
  %4795 = add i64 %4794, 3
  store i64 %4795, i64* %PC.i404
  %4796 = trunc i64 %4793 to i32
  %4797 = add i32 1, %4796
  %4798 = zext i32 %4797 to i64
  store i64 %4798, i64* %RAX.i405, align 8
  %4799 = icmp ult i32 %4797, %4796
  %4800 = icmp ult i32 %4797, 1
  %4801 = or i1 %4799, %4800
  %4802 = zext i1 %4801 to i8
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4802, i8* %4803, align 1
  %4804 = and i32 %4797, 255
  %4805 = call i32 @llvm.ctpop.i32(i32 %4804)
  %4806 = trunc i32 %4805 to i8
  %4807 = and i8 %4806, 1
  %4808 = xor i8 %4807, 1
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4808, i8* %4809, align 1
  %4810 = xor i64 1, %4793
  %4811 = trunc i64 %4810 to i32
  %4812 = xor i32 %4811, %4797
  %4813 = lshr i32 %4812, 4
  %4814 = trunc i32 %4813 to i8
  %4815 = and i8 %4814, 1
  %4816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4815, i8* %4816, align 1
  %4817 = icmp eq i32 %4797, 0
  %4818 = zext i1 %4817 to i8
  %4819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4818, i8* %4819, align 1
  %4820 = lshr i32 %4797, 31
  %4821 = trunc i32 %4820 to i8
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4821, i8* %4822, align 1
  %4823 = lshr i32 %4796, 31
  %4824 = xor i32 %4820, %4823
  %4825 = add i32 %4824, %4820
  %4826 = icmp eq i32 %4825, 2
  %4827 = zext i1 %4826 to i8
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4827, i8* %4828, align 1
  store %struct.Memory* %loadMem_40477a, %struct.Memory** %MEMORY
  %loadMem_40477d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 33
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %4831 to i64*
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4833 = getelementptr inbounds %struct.GPR, %struct.GPR* %4832, i32 0, i32 1
  %4834 = getelementptr inbounds %struct.Reg, %struct.Reg* %4833, i32 0, i32 0
  %EAX.i402 = bitcast %union.anon* %4834 to i32*
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4836 = getelementptr inbounds %struct.GPR, %struct.GPR* %4835, i32 0, i32 5
  %4837 = getelementptr inbounds %struct.Reg, %struct.Reg* %4836, i32 0, i32 0
  %RCX.i403 = bitcast %union.anon* %4837 to i64*
  %4838 = load i32, i32* %EAX.i402
  %4839 = zext i32 %4838 to i64
  %4840 = load i64, i64* %PC.i401
  %4841 = add i64 %4840, 3
  store i64 %4841, i64* %PC.i401
  %4842 = shl i64 %4839, 32
  %4843 = ashr exact i64 %4842, 32
  store i64 %4843, i64* %RCX.i403, align 8
  store %struct.Memory* %loadMem_40477d, %struct.Memory** %MEMORY
  %loadMem_404780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4845 = getelementptr inbounds %struct.GPR, %struct.GPR* %4844, i32 0, i32 33
  %4846 = getelementptr inbounds %struct.Reg, %struct.Reg* %4845, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %4846 to i64*
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4848 = getelementptr inbounds %struct.GPR, %struct.GPR* %4847, i32 0, i32 5
  %4849 = getelementptr inbounds %struct.Reg, %struct.Reg* %4848, i32 0, i32 0
  %RCX.i400 = bitcast %union.anon* %4849 to i64*
  %4850 = load i64, i64* %RCX.i400
  %4851 = load i64, i64* %PC.i399
  %4852 = add i64 %4851, 4
  store i64 %4852, i64* %PC.i399
  store %struct.Memory* %loadMem_404780, %struct.Memory** %MEMORY
  %loadMem_404784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4854 = getelementptr inbounds %struct.GPR, %struct.GPR* %4853, i32 0, i32 33
  %4855 = getelementptr inbounds %struct.Reg, %struct.Reg* %4854, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %4855 to i64*
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4857 = getelementptr inbounds %struct.GPR, %struct.GPR* %4856, i32 0, i32 5
  %4858 = getelementptr inbounds %struct.Reg, %struct.Reg* %4857, i32 0, i32 0
  %RCX.i397 = bitcast %union.anon* %4858 to i64*
  %4859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4860 = getelementptr inbounds %struct.GPR, %struct.GPR* %4859, i32 0, i32 7
  %4861 = getelementptr inbounds %struct.Reg, %struct.Reg* %4860, i32 0, i32 0
  %RDX.i398 = bitcast %union.anon* %4861 to i64*
  %4862 = load i64, i64* %RCX.i397
  %4863 = load i64, i64* %PC.i396
  %4864 = add i64 %4863, 3
  store i64 %4864, i64* %PC.i396
  store i64 %4862, i64* %RDX.i398, align 8
  store %struct.Memory* %loadMem_404784, %struct.Memory** %MEMORY
  %loadMem1_404787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4866 = getelementptr inbounds %struct.GPR, %struct.GPR* %4865, i32 0, i32 33
  %4867 = getelementptr inbounds %struct.Reg, %struct.Reg* %4866, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %4867 to i64*
  %4868 = load i64, i64* %PC.i395
  %4869 = add i64 %4868, 268505
  %4870 = load i64, i64* %PC.i395
  %4871 = add i64 %4870, 5
  %4872 = load i64, i64* %PC.i395
  %4873 = add i64 %4872, 5
  store i64 %4873, i64* %PC.i395
  %4874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4875 = load i64, i64* %4874, align 8
  %4876 = add i64 %4875, -8
  %4877 = inttoptr i64 %4876 to i64*
  store i64 %4871, i64* %4877
  store i64 %4876, i64* %4874, align 8
  %4878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4869, i64* %4878, align 8
  store %struct.Memory* %loadMem1_404787, %struct.Memory** %MEMORY
  %loadMem2_404787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_404787 = load i64, i64* %3
  %call2_404787 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_404787, %struct.Memory* %loadMem2_404787)
  store %struct.Memory* %call2_404787, %struct.Memory** %MEMORY
  %loadMem_40478c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4880 = getelementptr inbounds %struct.GPR, %struct.GPR* %4879, i32 0, i32 33
  %4881 = getelementptr inbounds %struct.Reg, %struct.Reg* %4880, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %4881 to i64*
  %4882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4883 = getelementptr inbounds %struct.GPR, %struct.GPR* %4882, i32 0, i32 5
  %4884 = getelementptr inbounds %struct.Reg, %struct.Reg* %4883, i32 0, i32 0
  %RCX.i393 = bitcast %union.anon* %4884 to i64*
  %4885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4886 = getelementptr inbounds %struct.GPR, %struct.GPR* %4885, i32 0, i32 15
  %4887 = getelementptr inbounds %struct.Reg, %struct.Reg* %4886, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %4887 to i64*
  %4888 = load i64, i64* %RBP.i394
  %4889 = sub i64 %4888, 56
  %4890 = load i64, i64* %PC.i392
  %4891 = add i64 %4890, 4
  store i64 %4891, i64* %PC.i392
  %4892 = inttoptr i64 %4889 to i64*
  %4893 = load i64, i64* %4892
  store i64 %4893, i64* %RCX.i393, align 8
  store %struct.Memory* %loadMem_40478c, %struct.Memory** %MEMORY
  %loadMem_404790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4895 = getelementptr inbounds %struct.GPR, %struct.GPR* %4894, i32 0, i32 33
  %4896 = getelementptr inbounds %struct.Reg, %struct.Reg* %4895, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %4896 to i64*
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4898 = getelementptr inbounds %struct.GPR, %struct.GPR* %4897, i32 0, i32 7
  %4899 = getelementptr inbounds %struct.Reg, %struct.Reg* %4898, i32 0, i32 0
  %RDX.i390 = bitcast %union.anon* %4899 to i64*
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4901 = getelementptr inbounds %struct.GPR, %struct.GPR* %4900, i32 0, i32 15
  %4902 = getelementptr inbounds %struct.Reg, %struct.Reg* %4901, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %4902 to i64*
  %4903 = load i64, i64* %RBP.i391
  %4904 = sub i64 %4903, 108
  %4905 = load i64, i64* %PC.i389
  %4906 = add i64 %4905, 4
  store i64 %4906, i64* %PC.i389
  %4907 = inttoptr i64 %4904 to i32*
  %4908 = load i32, i32* %4907
  %4909 = sext i32 %4908 to i64
  store i64 %4909, i64* %RDX.i390, align 8
  store %struct.Memory* %loadMem_404790, %struct.Memory** %MEMORY
  %loadMem_404794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4911 = getelementptr inbounds %struct.GPR, %struct.GPR* %4910, i32 0, i32 33
  %4912 = getelementptr inbounds %struct.Reg, %struct.Reg* %4911, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %4912 to i64*
  %4913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4914 = getelementptr inbounds %struct.GPR, %struct.GPR* %4913, i32 0, i32 1
  %4915 = getelementptr inbounds %struct.Reg, %struct.Reg* %4914, i32 0, i32 0
  %RAX.i386 = bitcast %union.anon* %4915 to i64*
  %4916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4917 = getelementptr inbounds %struct.GPR, %struct.GPR* %4916, i32 0, i32 5
  %4918 = getelementptr inbounds %struct.Reg, %struct.Reg* %4917, i32 0, i32 0
  %RCX.i387 = bitcast %union.anon* %4918 to i64*
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4920 = getelementptr inbounds %struct.GPR, %struct.GPR* %4919, i32 0, i32 7
  %4921 = getelementptr inbounds %struct.Reg, %struct.Reg* %4920, i32 0, i32 0
  %RDX.i388 = bitcast %union.anon* %4921 to i64*
  %4922 = load i64, i64* %RCX.i387
  %4923 = load i64, i64* %RDX.i388
  %4924 = mul i64 %4923, 8
  %4925 = add i64 %4924, %4922
  %4926 = load i64, i64* %RAX.i386
  %4927 = load i64, i64* %PC.i385
  %4928 = add i64 %4927, 4
  store i64 %4928, i64* %PC.i385
  %4929 = inttoptr i64 %4925 to i64*
  store i64 %4926, i64* %4929
  store %struct.Memory* %loadMem_404794, %struct.Memory** %MEMORY
  %loadMem_404798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4931 = getelementptr inbounds %struct.GPR, %struct.GPR* %4930, i32 0, i32 33
  %4932 = getelementptr inbounds %struct.Reg, %struct.Reg* %4931, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %4932 to i64*
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4934 = getelementptr inbounds %struct.GPR, %struct.GPR* %4933, i32 0, i32 1
  %4935 = getelementptr inbounds %struct.Reg, %struct.Reg* %4934, i32 0, i32 0
  %RAX.i383 = bitcast %union.anon* %4935 to i64*
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4937 = getelementptr inbounds %struct.GPR, %struct.GPR* %4936, i32 0, i32 15
  %4938 = getelementptr inbounds %struct.Reg, %struct.Reg* %4937, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %4938 to i64*
  %4939 = load i64, i64* %RBP.i384
  %4940 = sub i64 %4939, 108
  %4941 = load i64, i64* %PC.i382
  %4942 = add i64 %4941, 3
  store i64 %4942, i64* %PC.i382
  %4943 = inttoptr i64 %4940 to i32*
  %4944 = load i32, i32* %4943
  %4945 = zext i32 %4944 to i64
  store i64 %4945, i64* %RAX.i383, align 8
  store %struct.Memory* %loadMem_404798, %struct.Memory** %MEMORY
  %loadMem_40479b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4947 = getelementptr inbounds %struct.GPR, %struct.GPR* %4946, i32 0, i32 33
  %4948 = getelementptr inbounds %struct.Reg, %struct.Reg* %4947, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %4948 to i64*
  %4949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4950 = getelementptr inbounds %struct.GPR, %struct.GPR* %4949, i32 0, i32 1
  %4951 = getelementptr inbounds %struct.Reg, %struct.Reg* %4950, i32 0, i32 0
  %RAX.i381 = bitcast %union.anon* %4951 to i64*
  %4952 = load i64, i64* %RAX.i381
  %4953 = load i64, i64* %PC.i380
  %4954 = add i64 %4953, 3
  store i64 %4954, i64* %PC.i380
  %4955 = trunc i64 %4952 to i32
  %4956 = add i32 1, %4955
  %4957 = zext i32 %4956 to i64
  store i64 %4957, i64* %RAX.i381, align 8
  %4958 = icmp ult i32 %4956, %4955
  %4959 = icmp ult i32 %4956, 1
  %4960 = or i1 %4958, %4959
  %4961 = zext i1 %4960 to i8
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4961, i8* %4962, align 1
  %4963 = and i32 %4956, 255
  %4964 = call i32 @llvm.ctpop.i32(i32 %4963)
  %4965 = trunc i32 %4964 to i8
  %4966 = and i8 %4965, 1
  %4967 = xor i8 %4966, 1
  %4968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4967, i8* %4968, align 1
  %4969 = xor i64 1, %4952
  %4970 = trunc i64 %4969 to i32
  %4971 = xor i32 %4970, %4956
  %4972 = lshr i32 %4971, 4
  %4973 = trunc i32 %4972 to i8
  %4974 = and i8 %4973, 1
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4974, i8* %4975, align 1
  %4976 = icmp eq i32 %4956, 0
  %4977 = zext i1 %4976 to i8
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4977, i8* %4978, align 1
  %4979 = lshr i32 %4956, 31
  %4980 = trunc i32 %4979 to i8
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4980, i8* %4981, align 1
  %4982 = lshr i32 %4955, 31
  %4983 = xor i32 %4979, %4982
  %4984 = add i32 %4983, %4979
  %4985 = icmp eq i32 %4984, 2
  %4986 = zext i1 %4985 to i8
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4986, i8* %4987, align 1
  store %struct.Memory* %loadMem_40479b, %struct.Memory** %MEMORY
  %loadMem_40479e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4989 = getelementptr inbounds %struct.GPR, %struct.GPR* %4988, i32 0, i32 33
  %4990 = getelementptr inbounds %struct.Reg, %struct.Reg* %4989, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %4990 to i64*
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4992 = getelementptr inbounds %struct.GPR, %struct.GPR* %4991, i32 0, i32 1
  %4993 = getelementptr inbounds %struct.Reg, %struct.Reg* %4992, i32 0, i32 0
  %EAX.i378 = bitcast %union.anon* %4993 to i32*
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 15
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %4996 to i64*
  %4997 = load i64, i64* %RBP.i379
  %4998 = sub i64 %4997, 108
  %4999 = load i32, i32* %EAX.i378
  %5000 = zext i32 %4999 to i64
  %5001 = load i64, i64* %PC.i377
  %5002 = add i64 %5001, 3
  store i64 %5002, i64* %PC.i377
  %5003 = inttoptr i64 %4998 to i32*
  store i32 %4999, i32* %5003
  store %struct.Memory* %loadMem_40479e, %struct.Memory** %MEMORY
  %loadMem_4047a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5005 = getelementptr inbounds %struct.GPR, %struct.GPR* %5004, i32 0, i32 33
  %5006 = getelementptr inbounds %struct.Reg, %struct.Reg* %5005, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %5006 to i64*
  %5007 = load i64, i64* %PC.i376
  %5008 = add i64 %5007, -69
  %5009 = load i64, i64* %PC.i376
  %5010 = add i64 %5009, 5
  store i64 %5010, i64* %PC.i376
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5008, i64* %5011, align 8
  store %struct.Memory* %loadMem_4047a1, %struct.Memory** %MEMORY
  br label %block_.L_40475c

block_.L_4047a6:                                  ; preds = %block_.L_40475c
  %loadMem_4047a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5013 = getelementptr inbounds %struct.GPR, %struct.GPR* %5012, i32 0, i32 33
  %5014 = getelementptr inbounds %struct.Reg, %struct.Reg* %5013, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %5014 to i64*
  %5015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5016 = getelementptr inbounds %struct.GPR, %struct.GPR* %5015, i32 0, i32 15
  %5017 = getelementptr inbounds %struct.Reg, %struct.Reg* %5016, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %5017 to i64*
  %5018 = load i64, i64* %RBP.i375
  %5019 = sub i64 %5018, 108
  %5020 = load i64, i64* %PC.i374
  %5021 = add i64 %5020, 7
  store i64 %5021, i64* %PC.i374
  %5022 = inttoptr i64 %5019 to i32*
  store i32 0, i32* %5022
  store %struct.Memory* %loadMem_4047a6, %struct.Memory** %MEMORY
  br label %block_.L_4047ad

block_.L_4047ad:                                  ; preds = %block_.L_4048e7, %block_.L_4047a6
  %loadMem_4047ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5024 = getelementptr inbounds %struct.GPR, %struct.GPR* %5023, i32 0, i32 33
  %5025 = getelementptr inbounds %struct.Reg, %struct.Reg* %5024, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %5025 to i64*
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5027 = getelementptr inbounds %struct.GPR, %struct.GPR* %5026, i32 0, i32 1
  %5028 = getelementptr inbounds %struct.Reg, %struct.Reg* %5027, i32 0, i32 0
  %RAX.i372 = bitcast %union.anon* %5028 to i64*
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5030 = getelementptr inbounds %struct.GPR, %struct.GPR* %5029, i32 0, i32 15
  %5031 = getelementptr inbounds %struct.Reg, %struct.Reg* %5030, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %5031 to i64*
  %5032 = load i64, i64* %RBP.i373
  %5033 = sub i64 %5032, 108
  %5034 = load i64, i64* %PC.i371
  %5035 = add i64 %5034, 3
  store i64 %5035, i64* %PC.i371
  %5036 = inttoptr i64 %5033 to i32*
  %5037 = load i32, i32* %5036
  %5038 = zext i32 %5037 to i64
  store i64 %5038, i64* %RAX.i372, align 8
  store %struct.Memory* %loadMem_4047ad, %struct.Memory** %MEMORY
  %loadMem_4047b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5040 = getelementptr inbounds %struct.GPR, %struct.GPR* %5039, i32 0, i32 33
  %5041 = getelementptr inbounds %struct.Reg, %struct.Reg* %5040, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %5041 to i64*
  %5042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5043 = getelementptr inbounds %struct.GPR, %struct.GPR* %5042, i32 0, i32 1
  %5044 = getelementptr inbounds %struct.Reg, %struct.Reg* %5043, i32 0, i32 0
  %EAX.i369 = bitcast %union.anon* %5044 to i32*
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5046 = getelementptr inbounds %struct.GPR, %struct.GPR* %5045, i32 0, i32 15
  %5047 = getelementptr inbounds %struct.Reg, %struct.Reg* %5046, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %5047 to i64*
  %5048 = load i32, i32* %EAX.i369
  %5049 = zext i32 %5048 to i64
  %5050 = load i64, i64* %RBP.i370
  %5051 = sub i64 %5050, 20
  %5052 = load i64, i64* %PC.i368
  %5053 = add i64 %5052, 3
  store i64 %5053, i64* %PC.i368
  %5054 = inttoptr i64 %5051 to i32*
  %5055 = load i32, i32* %5054
  %5056 = sub i32 %5048, %5055
  %5057 = icmp ult i32 %5048, %5055
  %5058 = zext i1 %5057 to i8
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5058, i8* %5059, align 1
  %5060 = and i32 %5056, 255
  %5061 = call i32 @llvm.ctpop.i32(i32 %5060)
  %5062 = trunc i32 %5061 to i8
  %5063 = and i8 %5062, 1
  %5064 = xor i8 %5063, 1
  %5065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5064, i8* %5065, align 1
  %5066 = xor i32 %5055, %5048
  %5067 = xor i32 %5066, %5056
  %5068 = lshr i32 %5067, 4
  %5069 = trunc i32 %5068 to i8
  %5070 = and i8 %5069, 1
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5070, i8* %5071, align 1
  %5072 = icmp eq i32 %5056, 0
  %5073 = zext i1 %5072 to i8
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5073, i8* %5074, align 1
  %5075 = lshr i32 %5056, 31
  %5076 = trunc i32 %5075 to i8
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5076, i8* %5077, align 1
  %5078 = lshr i32 %5048, 31
  %5079 = lshr i32 %5055, 31
  %5080 = xor i32 %5079, %5078
  %5081 = xor i32 %5075, %5078
  %5082 = add i32 %5081, %5080
  %5083 = icmp eq i32 %5082, 2
  %5084 = zext i1 %5083 to i8
  %5085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5084, i8* %5085, align 1
  store %struct.Memory* %loadMem_4047b0, %struct.Memory** %MEMORY
  %loadMem_4047b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5087 = getelementptr inbounds %struct.GPR, %struct.GPR* %5086, i32 0, i32 33
  %5088 = getelementptr inbounds %struct.Reg, %struct.Reg* %5087, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %5088 to i64*
  %5089 = load i64, i64* %PC.i367
  %5090 = add i64 %5089, 342
  %5091 = load i64, i64* %PC.i367
  %5092 = add i64 %5091, 6
  %5093 = load i64, i64* %PC.i367
  %5094 = add i64 %5093, 6
  store i64 %5094, i64* %PC.i367
  %5095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5096 = load i8, i8* %5095, align 1
  %5097 = icmp ne i8 %5096, 0
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5099 = load i8, i8* %5098, align 1
  %5100 = icmp ne i8 %5099, 0
  %5101 = xor i1 %5097, %5100
  %5102 = xor i1 %5101, true
  %5103 = zext i1 %5102 to i8
  store i8 %5103, i8* %BRANCH_TAKEN, align 1
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5105 = select i1 %5101, i64 %5092, i64 %5090
  store i64 %5105, i64* %5104, align 8
  store %struct.Memory* %loadMem_4047b3, %struct.Memory** %MEMORY
  %loadBr_4047b3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4047b3 = icmp eq i8 %loadBr_4047b3, 1
  br i1 %cmpBr_4047b3, label %block_.L_404909, label %block_4047b9

block_4047b9:                                     ; preds = %block_.L_4047ad
  %loadMem_4047b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5107 = getelementptr inbounds %struct.GPR, %struct.GPR* %5106, i32 0, i32 33
  %5108 = getelementptr inbounds %struct.Reg, %struct.Reg* %5107, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %5108 to i64*
  %5109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5110 = getelementptr inbounds %struct.GPR, %struct.GPR* %5109, i32 0, i32 15
  %5111 = getelementptr inbounds %struct.Reg, %struct.Reg* %5110, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %5111 to i64*
  %5112 = load i64, i64* %RBP.i366
  %5113 = sub i64 %5112, 104
  %5114 = load i64, i64* %PC.i365
  %5115 = add i64 %5114, 7
  store i64 %5115, i64* %PC.i365
  %5116 = inttoptr i64 %5113 to i32*
  store i32 0, i32* %5116
  store %struct.Memory* %loadMem_4047b9, %struct.Memory** %MEMORY
  %loadMem_4047c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5118 = getelementptr inbounds %struct.GPR, %struct.GPR* %5117, i32 0, i32 33
  %5119 = getelementptr inbounds %struct.Reg, %struct.Reg* %5118, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %5119 to i64*
  %5120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5121 = getelementptr inbounds %struct.GPR, %struct.GPR* %5120, i32 0, i32 15
  %5122 = getelementptr inbounds %struct.Reg, %struct.Reg* %5121, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %5122 to i64*
  %5123 = load i64, i64* %RBP.i364
  %5124 = sub i64 %5123, 100
  %5125 = load i64, i64* %PC.i363
  %5126 = add i64 %5125, 7
  store i64 %5126, i64* %PC.i363
  %5127 = inttoptr i64 %5124 to i32*
  store i32 0, i32* %5127
  store %struct.Memory* %loadMem_4047c0, %struct.Memory** %MEMORY
  %loadMem_4047c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5129 = getelementptr inbounds %struct.GPR, %struct.GPR* %5128, i32 0, i32 33
  %5130 = getelementptr inbounds %struct.Reg, %struct.Reg* %5129, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %5130 to i64*
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5132 = getelementptr inbounds %struct.GPR, %struct.GPR* %5131, i32 0, i32 15
  %5133 = getelementptr inbounds %struct.Reg, %struct.Reg* %5132, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %5133 to i64*
  %5134 = load i64, i64* %RBP.i362
  %5135 = sub i64 %5134, 112
  %5136 = load i64, i64* %PC.i361
  %5137 = add i64 %5136, 7
  store i64 %5137, i64* %PC.i361
  %5138 = inttoptr i64 %5135 to i32*
  store i32 0, i32* %5138
  store %struct.Memory* %loadMem_4047c7, %struct.Memory** %MEMORY
  br label %block_.L_4047ce

block_.L_4047ce:                                  ; preds = %block_.L_4048d9, %block_4047b9
  %loadMem_4047ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5140 = getelementptr inbounds %struct.GPR, %struct.GPR* %5139, i32 0, i32 33
  %5141 = getelementptr inbounds %struct.Reg, %struct.Reg* %5140, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %5141 to i64*
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5143 = getelementptr inbounds %struct.GPR, %struct.GPR* %5142, i32 0, i32 1
  %5144 = getelementptr inbounds %struct.Reg, %struct.Reg* %5143, i32 0, i32 0
  %RAX.i359 = bitcast %union.anon* %5144 to i64*
  %5145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5146 = getelementptr inbounds %struct.GPR, %struct.GPR* %5145, i32 0, i32 15
  %5147 = getelementptr inbounds %struct.Reg, %struct.Reg* %5146, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %5147 to i64*
  %5148 = load i64, i64* %RBP.i360
  %5149 = sub i64 %5148, 112
  %5150 = load i64, i64* %PC.i358
  %5151 = add i64 %5150, 3
  store i64 %5151, i64* %PC.i358
  %5152 = inttoptr i64 %5149 to i32*
  %5153 = load i32, i32* %5152
  %5154 = zext i32 %5153 to i64
  store i64 %5154, i64* %RAX.i359, align 8
  store %struct.Memory* %loadMem_4047ce, %struct.Memory** %MEMORY
  %loadMem_4047d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5156 = getelementptr inbounds %struct.GPR, %struct.GPR* %5155, i32 0, i32 33
  %5157 = getelementptr inbounds %struct.Reg, %struct.Reg* %5156, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %5157 to i64*
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5159 = getelementptr inbounds %struct.GPR, %struct.GPR* %5158, i32 0, i32 1
  %5160 = getelementptr inbounds %struct.Reg, %struct.Reg* %5159, i32 0, i32 0
  %EAX.i356 = bitcast %union.anon* %5160 to i32*
  %5161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5162 = getelementptr inbounds %struct.GPR, %struct.GPR* %5161, i32 0, i32 15
  %5163 = getelementptr inbounds %struct.Reg, %struct.Reg* %5162, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %5163 to i64*
  %5164 = load i32, i32* %EAX.i356
  %5165 = zext i32 %5164 to i64
  %5166 = load i64, i64* %RBP.i357
  %5167 = sub i64 %5166, 76
  %5168 = load i64, i64* %PC.i355
  %5169 = add i64 %5168, 3
  store i64 %5169, i64* %PC.i355
  %5170 = inttoptr i64 %5167 to i32*
  %5171 = load i32, i32* %5170
  %5172 = sub i32 %5164, %5171
  %5173 = icmp ult i32 %5164, %5171
  %5174 = zext i1 %5173 to i8
  %5175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5174, i8* %5175, align 1
  %5176 = and i32 %5172, 255
  %5177 = call i32 @llvm.ctpop.i32(i32 %5176)
  %5178 = trunc i32 %5177 to i8
  %5179 = and i8 %5178, 1
  %5180 = xor i8 %5179, 1
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5180, i8* %5181, align 1
  %5182 = xor i32 %5171, %5164
  %5183 = xor i32 %5182, %5172
  %5184 = lshr i32 %5183, 4
  %5185 = trunc i32 %5184 to i8
  %5186 = and i8 %5185, 1
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5186, i8* %5187, align 1
  %5188 = icmp eq i32 %5172, 0
  %5189 = zext i1 %5188 to i8
  %5190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5189, i8* %5190, align 1
  %5191 = lshr i32 %5172, 31
  %5192 = trunc i32 %5191 to i8
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5192, i8* %5193, align 1
  %5194 = lshr i32 %5164, 31
  %5195 = lshr i32 %5171, 31
  %5196 = xor i32 %5195, %5194
  %5197 = xor i32 %5191, %5194
  %5198 = add i32 %5197, %5196
  %5199 = icmp eq i32 %5198, 2
  %5200 = zext i1 %5199 to i8
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5200, i8* %5201, align 1
  store %struct.Memory* %loadMem_4047d1, %struct.Memory** %MEMORY
  %loadMem_4047d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5203 = getelementptr inbounds %struct.GPR, %struct.GPR* %5202, i32 0, i32 33
  %5204 = getelementptr inbounds %struct.Reg, %struct.Reg* %5203, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %5204 to i64*
  %5205 = load i64, i64* %PC.i354
  %5206 = add i64 %5205, 275
  %5207 = load i64, i64* %PC.i354
  %5208 = add i64 %5207, 6
  %5209 = load i64, i64* %PC.i354
  %5210 = add i64 %5209, 6
  store i64 %5210, i64* %PC.i354
  %5211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5212 = load i8, i8* %5211, align 1
  %5213 = icmp eq i8 %5212, 0
  %5214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5215 = load i8, i8* %5214, align 1
  %5216 = icmp ne i8 %5215, 0
  %5217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5218 = load i8, i8* %5217, align 1
  %5219 = icmp ne i8 %5218, 0
  %5220 = xor i1 %5216, %5219
  %5221 = xor i1 %5220, true
  %5222 = and i1 %5213, %5221
  %5223 = zext i1 %5222 to i8
  store i8 %5223, i8* %BRANCH_TAKEN, align 1
  %5224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5225 = select i1 %5222, i64 %5206, i64 %5208
  store i64 %5225, i64* %5224, align 8
  store %struct.Memory* %loadMem_4047d4, %struct.Memory** %MEMORY
  %loadBr_4047d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4047d4 = icmp eq i8 %loadBr_4047d4, 1
  br i1 %cmpBr_4047d4, label %block_.L_4048e7, label %block_4047da

block_4047da:                                     ; preds = %block_.L_4047ce
  %loadMem_4047da = load %struct.Memory*, %struct.Memory** %MEMORY
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5227 = getelementptr inbounds %struct.GPR, %struct.GPR* %5226, i32 0, i32 33
  %5228 = getelementptr inbounds %struct.Reg, %struct.Reg* %5227, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %5228 to i64*
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5230 = getelementptr inbounds %struct.GPR, %struct.GPR* %5229, i32 0, i32 15
  %5231 = getelementptr inbounds %struct.Reg, %struct.Reg* %5230, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %5231 to i64*
  %5232 = load i64, i64* %RBP.i353
  %5233 = sub i64 %5232, 116
  %5234 = load i64, i64* %PC.i352
  %5235 = add i64 %5234, 7
  store i64 %5235, i64* %PC.i352
  %5236 = inttoptr i64 %5233 to i32*
  store i32 0, i32* %5236
  store %struct.Memory* %loadMem_4047da, %struct.Memory** %MEMORY
  br label %block_.L_4047e1

block_.L_4047e1:                                  ; preds = %block_4047fd, %block_4047da
  %loadMem_4047e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5238 = getelementptr inbounds %struct.GPR, %struct.GPR* %5237, i32 0, i32 33
  %5239 = getelementptr inbounds %struct.Reg, %struct.Reg* %5238, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %5239 to i64*
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5241 = getelementptr inbounds %struct.GPR, %struct.GPR* %5240, i32 0, i32 1
  %5242 = getelementptr inbounds %struct.Reg, %struct.Reg* %5241, i32 0, i32 0
  %RAX.i350 = bitcast %union.anon* %5242 to i64*
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5244 = getelementptr inbounds %struct.GPR, %struct.GPR* %5243, i32 0, i32 15
  %5245 = getelementptr inbounds %struct.Reg, %struct.Reg* %5244, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %5245 to i64*
  %5246 = load i64, i64* %RBP.i351
  %5247 = sub i64 %5246, 116
  %5248 = load i64, i64* %PC.i349
  %5249 = add i64 %5248, 3
  store i64 %5249, i64* %PC.i349
  %5250 = inttoptr i64 %5247 to i32*
  %5251 = load i32, i32* %5250
  %5252 = zext i32 %5251 to i64
  store i64 %5252, i64* %RAX.i350, align 8
  store %struct.Memory* %loadMem_4047e1, %struct.Memory** %MEMORY
  %loadMem_4047e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5254 = getelementptr inbounds %struct.GPR, %struct.GPR* %5253, i32 0, i32 33
  %5255 = getelementptr inbounds %struct.Reg, %struct.Reg* %5254, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %5255 to i64*
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5257 = getelementptr inbounds %struct.GPR, %struct.GPR* %5256, i32 0, i32 5
  %5258 = getelementptr inbounds %struct.Reg, %struct.Reg* %5257, i32 0, i32 0
  %RCX.i347 = bitcast %union.anon* %5258 to i64*
  %5259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5260 = getelementptr inbounds %struct.GPR, %struct.GPR* %5259, i32 0, i32 15
  %5261 = getelementptr inbounds %struct.Reg, %struct.Reg* %5260, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %5261 to i64*
  %5262 = load i64, i64* %RBP.i348
  %5263 = sub i64 %5262, 88
  %5264 = load i64, i64* %PC.i346
  %5265 = add i64 %5264, 4
  store i64 %5265, i64* %PC.i346
  %5266 = inttoptr i64 %5263 to i64*
  %5267 = load i64, i64* %5266
  store i64 %5267, i64* %RCX.i347, align 8
  store %struct.Memory* %loadMem_4047e4, %struct.Memory** %MEMORY
  %loadMem_4047e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5269 = getelementptr inbounds %struct.GPR, %struct.GPR* %5268, i32 0, i32 33
  %5270 = getelementptr inbounds %struct.Reg, %struct.Reg* %5269, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %5270 to i64*
  %5271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5272 = getelementptr inbounds %struct.GPR, %struct.GPR* %5271, i32 0, i32 7
  %5273 = getelementptr inbounds %struct.Reg, %struct.Reg* %5272, i32 0, i32 0
  %RDX.i344 = bitcast %union.anon* %5273 to i64*
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5275 = getelementptr inbounds %struct.GPR, %struct.GPR* %5274, i32 0, i32 15
  %5276 = getelementptr inbounds %struct.Reg, %struct.Reg* %5275, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %5276 to i64*
  %5277 = load i64, i64* %RBP.i345
  %5278 = sub i64 %5277, 108
  %5279 = load i64, i64* %PC.i343
  %5280 = add i64 %5279, 4
  store i64 %5280, i64* %PC.i343
  %5281 = inttoptr i64 %5278 to i32*
  %5282 = load i32, i32* %5281
  %5283 = sext i32 %5282 to i64
  store i64 %5283, i64* %RDX.i344, align 8
  store %struct.Memory* %loadMem_4047e8, %struct.Memory** %MEMORY
  %loadMem_4047ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5285 = getelementptr inbounds %struct.GPR, %struct.GPR* %5284, i32 0, i32 33
  %5286 = getelementptr inbounds %struct.Reg, %struct.Reg* %5285, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %5286 to i64*
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5288 = getelementptr inbounds %struct.GPR, %struct.GPR* %5287, i32 0, i32 5
  %5289 = getelementptr inbounds %struct.Reg, %struct.Reg* %5288, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %5289 to i64*
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5291 = getelementptr inbounds %struct.GPR, %struct.GPR* %5290, i32 0, i32 7
  %5292 = getelementptr inbounds %struct.Reg, %struct.Reg* %5291, i32 0, i32 0
  %RDX.i342 = bitcast %union.anon* %5292 to i64*
  %5293 = load i64, i64* %RCX.i341
  %5294 = load i64, i64* %RDX.i342
  %5295 = mul i64 %5294, 8
  %5296 = add i64 %5295, %5293
  %5297 = load i64, i64* %PC.i340
  %5298 = add i64 %5297, 4
  store i64 %5298, i64* %PC.i340
  %5299 = inttoptr i64 %5296 to i64*
  %5300 = load i64, i64* %5299
  store i64 %5300, i64* %RCX.i341, align 8
  store %struct.Memory* %loadMem_4047ec, %struct.Memory** %MEMORY
  %loadMem_4047f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5302 = getelementptr inbounds %struct.GPR, %struct.GPR* %5301, i32 0, i32 33
  %5303 = getelementptr inbounds %struct.Reg, %struct.Reg* %5302, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %5303 to i64*
  %5304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5305 = getelementptr inbounds %struct.GPR, %struct.GPR* %5304, i32 0, i32 7
  %5306 = getelementptr inbounds %struct.Reg, %struct.Reg* %5305, i32 0, i32 0
  %RDX.i338 = bitcast %union.anon* %5306 to i64*
  %5307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5308 = getelementptr inbounds %struct.GPR, %struct.GPR* %5307, i32 0, i32 15
  %5309 = getelementptr inbounds %struct.Reg, %struct.Reg* %5308, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %5309 to i64*
  %5310 = load i64, i64* %RBP.i339
  %5311 = sub i64 %5310, 112
  %5312 = load i64, i64* %PC.i337
  %5313 = add i64 %5312, 4
  store i64 %5313, i64* %PC.i337
  %5314 = inttoptr i64 %5311 to i32*
  %5315 = load i32, i32* %5314
  %5316 = sext i32 %5315 to i64
  store i64 %5316, i64* %RDX.i338, align 8
  store %struct.Memory* %loadMem_4047f0, %struct.Memory** %MEMORY
  %loadMem_4047f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5318 = getelementptr inbounds %struct.GPR, %struct.GPR* %5317, i32 0, i32 33
  %5319 = getelementptr inbounds %struct.Reg, %struct.Reg* %5318, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %5319 to i64*
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5321 = getelementptr inbounds %struct.GPR, %struct.GPR* %5320, i32 0, i32 1
  %5322 = getelementptr inbounds %struct.Reg, %struct.Reg* %5321, i32 0, i32 0
  %EAX.i334 = bitcast %union.anon* %5322 to i32*
  %5323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5324 = getelementptr inbounds %struct.GPR, %struct.GPR* %5323, i32 0, i32 5
  %5325 = getelementptr inbounds %struct.Reg, %struct.Reg* %5324, i32 0, i32 0
  %RCX.i335 = bitcast %union.anon* %5325 to i64*
  %5326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5327 = getelementptr inbounds %struct.GPR, %struct.GPR* %5326, i32 0, i32 7
  %5328 = getelementptr inbounds %struct.Reg, %struct.Reg* %5327, i32 0, i32 0
  %RDX.i336 = bitcast %union.anon* %5328 to i64*
  %5329 = load i32, i32* %EAX.i334
  %5330 = zext i32 %5329 to i64
  %5331 = load i64, i64* %RCX.i335
  %5332 = load i64, i64* %RDX.i336
  %5333 = mul i64 %5332, 4
  %5334 = add i64 %5333, %5331
  %5335 = load i64, i64* %PC.i333
  %5336 = add i64 %5335, 3
  store i64 %5336, i64* %PC.i333
  %5337 = inttoptr i64 %5334 to i32*
  %5338 = load i32, i32* %5337
  %5339 = sub i32 %5329, %5338
  %5340 = icmp ult i32 %5329, %5338
  %5341 = zext i1 %5340 to i8
  %5342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5341, i8* %5342, align 1
  %5343 = and i32 %5339, 255
  %5344 = call i32 @llvm.ctpop.i32(i32 %5343)
  %5345 = trunc i32 %5344 to i8
  %5346 = and i8 %5345, 1
  %5347 = xor i8 %5346, 1
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5347, i8* %5348, align 1
  %5349 = xor i32 %5338, %5329
  %5350 = xor i32 %5349, %5339
  %5351 = lshr i32 %5350, 4
  %5352 = trunc i32 %5351 to i8
  %5353 = and i8 %5352, 1
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5353, i8* %5354, align 1
  %5355 = icmp eq i32 %5339, 0
  %5356 = zext i1 %5355 to i8
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5356, i8* %5357, align 1
  %5358 = lshr i32 %5339, 31
  %5359 = trunc i32 %5358 to i8
  %5360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5359, i8* %5360, align 1
  %5361 = lshr i32 %5329, 31
  %5362 = lshr i32 %5338, 31
  %5363 = xor i32 %5362, %5361
  %5364 = xor i32 %5358, %5361
  %5365 = add i32 %5364, %5363
  %5366 = icmp eq i32 %5365, 2
  %5367 = zext i1 %5366 to i8
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5367, i8* %5368, align 1
  store %struct.Memory* %loadMem_4047f4, %struct.Memory** %MEMORY
  %loadMem_4047f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5370 = getelementptr inbounds %struct.GPR, %struct.GPR* %5369, i32 0, i32 33
  %5371 = getelementptr inbounds %struct.Reg, %struct.Reg* %5370, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %5371 to i64*
  %5372 = load i64, i64* %PC.i332
  %5373 = add i64 %5372, 80
  %5374 = load i64, i64* %PC.i332
  %5375 = add i64 %5374, 6
  %5376 = load i64, i64* %PC.i332
  %5377 = add i64 %5376, 6
  store i64 %5377, i64* %PC.i332
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5379 = load i8, i8* %5378, align 1
  %5380 = icmp ne i8 %5379, 0
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5382 = load i8, i8* %5381, align 1
  %5383 = icmp ne i8 %5382, 0
  %5384 = xor i1 %5380, %5383
  %5385 = xor i1 %5384, true
  %5386 = zext i1 %5385 to i8
  store i8 %5386, i8* %BRANCH_TAKEN, align 1
  %5387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5388 = select i1 %5384, i64 %5375, i64 %5373
  store i64 %5388, i64* %5387, align 8
  store %struct.Memory* %loadMem_4047f7, %struct.Memory** %MEMORY
  %loadBr_4047f7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4047f7 = icmp eq i8 %loadBr_4047f7, 1
  br i1 %cmpBr_4047f7, label %block_.L_404847, label %block_4047fd

block_4047fd:                                     ; preds = %block_.L_4047e1
  %loadMem_4047fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5390 = getelementptr inbounds %struct.GPR, %struct.GPR* %5389, i32 0, i32 33
  %5391 = getelementptr inbounds %struct.Reg, %struct.Reg* %5390, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %5391 to i64*
  %5392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5393 = getelementptr inbounds %struct.GPR, %struct.GPR* %5392, i32 0, i32 1
  %5394 = getelementptr inbounds %struct.Reg, %struct.Reg* %5393, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %5394 to i64*
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5396 = getelementptr inbounds %struct.GPR, %struct.GPR* %5395, i32 0, i32 15
  %5397 = getelementptr inbounds %struct.Reg, %struct.Reg* %5396, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %5397 to i64*
  %5398 = load i64, i64* %RBP.i331
  %5399 = sub i64 %5398, 8
  %5400 = load i64, i64* %PC.i329
  %5401 = add i64 %5400, 4
  store i64 %5401, i64* %PC.i329
  %5402 = inttoptr i64 %5399 to i64*
  %5403 = load i64, i64* %5402
  store i64 %5403, i64* %RAX.i330, align 8
  store %struct.Memory* %loadMem_4047fd, %struct.Memory** %MEMORY
  %loadMem_404801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5405 = getelementptr inbounds %struct.GPR, %struct.GPR* %5404, i32 0, i32 33
  %5406 = getelementptr inbounds %struct.Reg, %struct.Reg* %5405, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %5406 to i64*
  %5407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5408 = getelementptr inbounds %struct.GPR, %struct.GPR* %5407, i32 0, i32 5
  %5409 = getelementptr inbounds %struct.Reg, %struct.Reg* %5408, i32 0, i32 0
  %RCX.i327 = bitcast %union.anon* %5409 to i64*
  %5410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5411 = getelementptr inbounds %struct.GPR, %struct.GPR* %5410, i32 0, i32 15
  %5412 = getelementptr inbounds %struct.Reg, %struct.Reg* %5411, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %5412 to i64*
  %5413 = load i64, i64* %RBP.i328
  %5414 = sub i64 %5413, 108
  %5415 = load i64, i64* %PC.i326
  %5416 = add i64 %5415, 4
  store i64 %5416, i64* %PC.i326
  %5417 = inttoptr i64 %5414 to i32*
  %5418 = load i32, i32* %5417
  %5419 = sext i32 %5418 to i64
  store i64 %5419, i64* %RCX.i327, align 8
  store %struct.Memory* %loadMem_404801, %struct.Memory** %MEMORY
  %loadMem_404805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5421 = getelementptr inbounds %struct.GPR, %struct.GPR* %5420, i32 0, i32 33
  %5422 = getelementptr inbounds %struct.Reg, %struct.Reg* %5421, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %5422 to i64*
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5424 = getelementptr inbounds %struct.GPR, %struct.GPR* %5423, i32 0, i32 1
  %5425 = getelementptr inbounds %struct.Reg, %struct.Reg* %5424, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %5425 to i64*
  %5426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5427 = getelementptr inbounds %struct.GPR, %struct.GPR* %5426, i32 0, i32 5
  %5428 = getelementptr inbounds %struct.Reg, %struct.Reg* %5427, i32 0, i32 0
  %RCX.i325 = bitcast %union.anon* %5428 to i64*
  %5429 = load i64, i64* %RAX.i324
  %5430 = load i64, i64* %RCX.i325
  %5431 = mul i64 %5430, 8
  %5432 = add i64 %5431, %5429
  %5433 = load i64, i64* %PC.i323
  %5434 = add i64 %5433, 4
  store i64 %5434, i64* %PC.i323
  %5435 = inttoptr i64 %5432 to i64*
  %5436 = load i64, i64* %5435
  store i64 %5436, i64* %RAX.i324, align 8
  store %struct.Memory* %loadMem_404805, %struct.Memory** %MEMORY
  %loadMem_404809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5438 = getelementptr inbounds %struct.GPR, %struct.GPR* %5437, i32 0, i32 33
  %5439 = getelementptr inbounds %struct.Reg, %struct.Reg* %5438, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %5439 to i64*
  %5440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5441 = getelementptr inbounds %struct.GPR, %struct.GPR* %5440, i32 0, i32 7
  %5442 = getelementptr inbounds %struct.Reg, %struct.Reg* %5441, i32 0, i32 0
  %RDX.i321 = bitcast %union.anon* %5442 to i64*
  %5443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5444 = getelementptr inbounds %struct.GPR, %struct.GPR* %5443, i32 0, i32 15
  %5445 = getelementptr inbounds %struct.Reg, %struct.Reg* %5444, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %5445 to i64*
  %5446 = load i64, i64* %RBP.i322
  %5447 = sub i64 %5446, 104
  %5448 = load i64, i64* %PC.i320
  %5449 = add i64 %5448, 3
  store i64 %5449, i64* %PC.i320
  %5450 = inttoptr i64 %5447 to i32*
  %5451 = load i32, i32* %5450
  %5452 = zext i32 %5451 to i64
  store i64 %5452, i64* %RDX.i321, align 8
  store %struct.Memory* %loadMem_404809, %struct.Memory** %MEMORY
  %loadMem_40480c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5454 = getelementptr inbounds %struct.GPR, %struct.GPR* %5453, i32 0, i32 33
  %5455 = getelementptr inbounds %struct.Reg, %struct.Reg* %5454, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %5455 to i64*
  %5456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5457 = getelementptr inbounds %struct.GPR, %struct.GPR* %5456, i32 0, i32 7
  %5458 = getelementptr inbounds %struct.Reg, %struct.Reg* %5457, i32 0, i32 0
  %EDX.i318 = bitcast %union.anon* %5458 to i32*
  %5459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5460 = getelementptr inbounds %struct.GPR, %struct.GPR* %5459, i32 0, i32 9
  %5461 = getelementptr inbounds %struct.Reg, %struct.Reg* %5460, i32 0, i32 0
  %RSI.i319 = bitcast %union.anon* %5461 to i64*
  %5462 = load i32, i32* %EDX.i318
  %5463 = zext i32 %5462 to i64
  %5464 = load i64, i64* %PC.i317
  %5465 = add i64 %5464, 2
  store i64 %5465, i64* %PC.i317
  %5466 = and i64 %5463, 4294967295
  store i64 %5466, i64* %RSI.i319, align 8
  store %struct.Memory* %loadMem_40480c, %struct.Memory** %MEMORY
  %loadMem_40480e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5468 = getelementptr inbounds %struct.GPR, %struct.GPR* %5467, i32 0, i32 33
  %5469 = getelementptr inbounds %struct.Reg, %struct.Reg* %5468, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %5469 to i64*
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5471 = getelementptr inbounds %struct.GPR, %struct.GPR* %5470, i32 0, i32 9
  %5472 = getelementptr inbounds %struct.Reg, %struct.Reg* %5471, i32 0, i32 0
  %RSI.i316 = bitcast %union.anon* %5472 to i64*
  %5473 = load i64, i64* %RSI.i316
  %5474 = load i64, i64* %PC.i315
  %5475 = add i64 %5474, 3
  store i64 %5475, i64* %PC.i315
  %5476 = trunc i64 %5473 to i32
  %5477 = add i32 1, %5476
  %5478 = zext i32 %5477 to i64
  store i64 %5478, i64* %RSI.i316, align 8
  %5479 = icmp ult i32 %5477, %5476
  %5480 = icmp ult i32 %5477, 1
  %5481 = or i1 %5479, %5480
  %5482 = zext i1 %5481 to i8
  %5483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5482, i8* %5483, align 1
  %5484 = and i32 %5477, 255
  %5485 = call i32 @llvm.ctpop.i32(i32 %5484)
  %5486 = trunc i32 %5485 to i8
  %5487 = and i8 %5486, 1
  %5488 = xor i8 %5487, 1
  %5489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5488, i8* %5489, align 1
  %5490 = xor i64 1, %5473
  %5491 = trunc i64 %5490 to i32
  %5492 = xor i32 %5491, %5477
  %5493 = lshr i32 %5492, 4
  %5494 = trunc i32 %5493 to i8
  %5495 = and i8 %5494, 1
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5495, i8* %5496, align 1
  %5497 = icmp eq i32 %5477, 0
  %5498 = zext i1 %5497 to i8
  %5499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5498, i8* %5499, align 1
  %5500 = lshr i32 %5477, 31
  %5501 = trunc i32 %5500 to i8
  %5502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5501, i8* %5502, align 1
  %5503 = lshr i32 %5476, 31
  %5504 = xor i32 %5500, %5503
  %5505 = add i32 %5504, %5500
  %5506 = icmp eq i32 %5505, 2
  %5507 = zext i1 %5506 to i8
  %5508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5507, i8* %5508, align 1
  store %struct.Memory* %loadMem_40480e, %struct.Memory** %MEMORY
  %loadMem_404811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5510 = getelementptr inbounds %struct.GPR, %struct.GPR* %5509, i32 0, i32 33
  %5511 = getelementptr inbounds %struct.Reg, %struct.Reg* %5510, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %5511 to i64*
  %5512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5513 = getelementptr inbounds %struct.GPR, %struct.GPR* %5512, i32 0, i32 9
  %5514 = getelementptr inbounds %struct.Reg, %struct.Reg* %5513, i32 0, i32 0
  %ESI.i313 = bitcast %union.anon* %5514 to i32*
  %5515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5516 = getelementptr inbounds %struct.GPR, %struct.GPR* %5515, i32 0, i32 15
  %5517 = getelementptr inbounds %struct.Reg, %struct.Reg* %5516, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %5517 to i64*
  %5518 = load i64, i64* %RBP.i314
  %5519 = sub i64 %5518, 104
  %5520 = load i32, i32* %ESI.i313
  %5521 = zext i32 %5520 to i64
  %5522 = load i64, i64* %PC.i312
  %5523 = add i64 %5522, 3
  store i64 %5523, i64* %PC.i312
  %5524 = inttoptr i64 %5519 to i32*
  store i32 %5520, i32* %5524
  store %struct.Memory* %loadMem_404811, %struct.Memory** %MEMORY
  %loadMem_404814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5526 = getelementptr inbounds %struct.GPR, %struct.GPR* %5525, i32 0, i32 33
  %5527 = getelementptr inbounds %struct.Reg, %struct.Reg* %5526, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %5527 to i64*
  %5528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5529 = getelementptr inbounds %struct.GPR, %struct.GPR* %5528, i32 0, i32 7
  %5530 = getelementptr inbounds %struct.Reg, %struct.Reg* %5529, i32 0, i32 0
  %EDX.i310 = bitcast %union.anon* %5530 to i32*
  %5531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5532 = getelementptr inbounds %struct.GPR, %struct.GPR* %5531, i32 0, i32 5
  %5533 = getelementptr inbounds %struct.Reg, %struct.Reg* %5532, i32 0, i32 0
  %RCX.i311 = bitcast %union.anon* %5533 to i64*
  %5534 = load i32, i32* %EDX.i310
  %5535 = zext i32 %5534 to i64
  %5536 = load i64, i64* %PC.i309
  %5537 = add i64 %5536, 3
  store i64 %5537, i64* %PC.i309
  %5538 = shl i64 %5535, 32
  %5539 = ashr exact i64 %5538, 32
  store i64 %5539, i64* %RCX.i311, align 8
  store %struct.Memory* %loadMem_404814, %struct.Memory** %MEMORY
  %loadMem_404817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5541 = getelementptr inbounds %struct.GPR, %struct.GPR* %5540, i32 0, i32 33
  %5542 = getelementptr inbounds %struct.Reg, %struct.Reg* %5541, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %5542 to i64*
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5544 = getelementptr inbounds %struct.GPR, %struct.GPR* %5543, i32 0, i32 11
  %5545 = getelementptr inbounds %struct.Reg, %struct.Reg* %5544, i32 0, i32 0
  %5546 = bitcast %union.anon* %5545 to %struct.anon.2*
  %DIL.i306 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5546, i32 0, i32 0
  %5547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5548 = getelementptr inbounds %struct.GPR, %struct.GPR* %5547, i32 0, i32 1
  %5549 = getelementptr inbounds %struct.Reg, %struct.Reg* %5548, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %5549 to i64*
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5551 = getelementptr inbounds %struct.GPR, %struct.GPR* %5550, i32 0, i32 5
  %5552 = getelementptr inbounds %struct.Reg, %struct.Reg* %5551, i32 0, i32 0
  %RCX.i308 = bitcast %union.anon* %5552 to i64*
  %5553 = load i64, i64* %RAX.i307
  %5554 = load i64, i64* %RCX.i308
  %5555 = add i64 %5554, %5553
  %5556 = load i64, i64* %PC.i305
  %5557 = add i64 %5556, 4
  store i64 %5557, i64* %PC.i305
  %5558 = inttoptr i64 %5555 to i8*
  %5559 = load i8, i8* %5558
  store i8 %5559, i8* %DIL.i306, align 1
  store %struct.Memory* %loadMem_404817, %struct.Memory** %MEMORY
  %loadMem_40481b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5561 = getelementptr inbounds %struct.GPR, %struct.GPR* %5560, i32 0, i32 33
  %5562 = getelementptr inbounds %struct.Reg, %struct.Reg* %5561, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %5562 to i64*
  %5563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5564 = getelementptr inbounds %struct.GPR, %struct.GPR* %5563, i32 0, i32 1
  %5565 = getelementptr inbounds %struct.Reg, %struct.Reg* %5564, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %5565 to i64*
  %5566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5567 = getelementptr inbounds %struct.GPR, %struct.GPR* %5566, i32 0, i32 15
  %5568 = getelementptr inbounds %struct.Reg, %struct.Reg* %5567, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %5568 to i64*
  %5569 = load i64, i64* %RBP.i304
  %5570 = sub i64 %5569, 56
  %5571 = load i64, i64* %PC.i302
  %5572 = add i64 %5571, 4
  store i64 %5572, i64* %PC.i302
  %5573 = inttoptr i64 %5570 to i64*
  %5574 = load i64, i64* %5573
  store i64 %5574, i64* %RAX.i303, align 8
  store %struct.Memory* %loadMem_40481b, %struct.Memory** %MEMORY
  %loadMem_40481f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5576 = getelementptr inbounds %struct.GPR, %struct.GPR* %5575, i32 0, i32 33
  %5577 = getelementptr inbounds %struct.Reg, %struct.Reg* %5576, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %5577 to i64*
  %5578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5579 = getelementptr inbounds %struct.GPR, %struct.GPR* %5578, i32 0, i32 5
  %5580 = getelementptr inbounds %struct.Reg, %struct.Reg* %5579, i32 0, i32 0
  %RCX.i300 = bitcast %union.anon* %5580 to i64*
  %5581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5582 = getelementptr inbounds %struct.GPR, %struct.GPR* %5581, i32 0, i32 15
  %5583 = getelementptr inbounds %struct.Reg, %struct.Reg* %5582, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %5583 to i64*
  %5584 = load i64, i64* %RBP.i301
  %5585 = sub i64 %5584, 108
  %5586 = load i64, i64* %PC.i299
  %5587 = add i64 %5586, 4
  store i64 %5587, i64* %PC.i299
  %5588 = inttoptr i64 %5585 to i32*
  %5589 = load i32, i32* %5588
  %5590 = sext i32 %5589 to i64
  store i64 %5590, i64* %RCX.i300, align 8
  store %struct.Memory* %loadMem_40481f, %struct.Memory** %MEMORY
  %loadMem_404823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5592 = getelementptr inbounds %struct.GPR, %struct.GPR* %5591, i32 0, i32 33
  %5593 = getelementptr inbounds %struct.Reg, %struct.Reg* %5592, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %5593 to i64*
  %5594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5595 = getelementptr inbounds %struct.GPR, %struct.GPR* %5594, i32 0, i32 1
  %5596 = getelementptr inbounds %struct.Reg, %struct.Reg* %5595, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %5596 to i64*
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5598 = getelementptr inbounds %struct.GPR, %struct.GPR* %5597, i32 0, i32 5
  %5599 = getelementptr inbounds %struct.Reg, %struct.Reg* %5598, i32 0, i32 0
  %RCX.i298 = bitcast %union.anon* %5599 to i64*
  %5600 = load i64, i64* %RAX.i297
  %5601 = load i64, i64* %RCX.i298
  %5602 = mul i64 %5601, 8
  %5603 = add i64 %5602, %5600
  %5604 = load i64, i64* %PC.i296
  %5605 = add i64 %5604, 4
  store i64 %5605, i64* %PC.i296
  %5606 = inttoptr i64 %5603 to i64*
  %5607 = load i64, i64* %5606
  store i64 %5607, i64* %RAX.i297, align 8
  store %struct.Memory* %loadMem_404823, %struct.Memory** %MEMORY
  %loadMem_404827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5609 = getelementptr inbounds %struct.GPR, %struct.GPR* %5608, i32 0, i32 33
  %5610 = getelementptr inbounds %struct.Reg, %struct.Reg* %5609, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %5610 to i64*
  %5611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5612 = getelementptr inbounds %struct.GPR, %struct.GPR* %5611, i32 0, i32 7
  %5613 = getelementptr inbounds %struct.Reg, %struct.Reg* %5612, i32 0, i32 0
  %RDX.i294 = bitcast %union.anon* %5613 to i64*
  %5614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5615 = getelementptr inbounds %struct.GPR, %struct.GPR* %5614, i32 0, i32 15
  %5616 = getelementptr inbounds %struct.Reg, %struct.Reg* %5615, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %5616 to i64*
  %5617 = load i64, i64* %RBP.i295
  %5618 = sub i64 %5617, 100
  %5619 = load i64, i64* %PC.i293
  %5620 = add i64 %5619, 3
  store i64 %5620, i64* %PC.i293
  %5621 = inttoptr i64 %5618 to i32*
  %5622 = load i32, i32* %5621
  %5623 = zext i32 %5622 to i64
  store i64 %5623, i64* %RDX.i294, align 8
  store %struct.Memory* %loadMem_404827, %struct.Memory** %MEMORY
  %loadMem_40482a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5625 = getelementptr inbounds %struct.GPR, %struct.GPR* %5624, i32 0, i32 33
  %5626 = getelementptr inbounds %struct.Reg, %struct.Reg* %5625, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %5626 to i64*
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5628 = getelementptr inbounds %struct.GPR, %struct.GPR* %5627, i32 0, i32 7
  %5629 = getelementptr inbounds %struct.Reg, %struct.Reg* %5628, i32 0, i32 0
  %EDX.i291 = bitcast %union.anon* %5629 to i32*
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5631 = getelementptr inbounds %struct.GPR, %struct.GPR* %5630, i32 0, i32 9
  %5632 = getelementptr inbounds %struct.Reg, %struct.Reg* %5631, i32 0, i32 0
  %RSI.i292 = bitcast %union.anon* %5632 to i64*
  %5633 = load i32, i32* %EDX.i291
  %5634 = zext i32 %5633 to i64
  %5635 = load i64, i64* %PC.i290
  %5636 = add i64 %5635, 2
  store i64 %5636, i64* %PC.i290
  %5637 = and i64 %5634, 4294967295
  store i64 %5637, i64* %RSI.i292, align 8
  store %struct.Memory* %loadMem_40482a, %struct.Memory** %MEMORY
  %loadMem_40482c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5639 = getelementptr inbounds %struct.GPR, %struct.GPR* %5638, i32 0, i32 33
  %5640 = getelementptr inbounds %struct.Reg, %struct.Reg* %5639, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %5640 to i64*
  %5641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5642 = getelementptr inbounds %struct.GPR, %struct.GPR* %5641, i32 0, i32 9
  %5643 = getelementptr inbounds %struct.Reg, %struct.Reg* %5642, i32 0, i32 0
  %RSI.i289 = bitcast %union.anon* %5643 to i64*
  %5644 = load i64, i64* %RSI.i289
  %5645 = load i64, i64* %PC.i288
  %5646 = add i64 %5645, 3
  store i64 %5646, i64* %PC.i288
  %5647 = trunc i64 %5644 to i32
  %5648 = add i32 1, %5647
  %5649 = zext i32 %5648 to i64
  store i64 %5649, i64* %RSI.i289, align 8
  %5650 = icmp ult i32 %5648, %5647
  %5651 = icmp ult i32 %5648, 1
  %5652 = or i1 %5650, %5651
  %5653 = zext i1 %5652 to i8
  %5654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5653, i8* %5654, align 1
  %5655 = and i32 %5648, 255
  %5656 = call i32 @llvm.ctpop.i32(i32 %5655)
  %5657 = trunc i32 %5656 to i8
  %5658 = and i8 %5657, 1
  %5659 = xor i8 %5658, 1
  %5660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5659, i8* %5660, align 1
  %5661 = xor i64 1, %5644
  %5662 = trunc i64 %5661 to i32
  %5663 = xor i32 %5662, %5648
  %5664 = lshr i32 %5663, 4
  %5665 = trunc i32 %5664 to i8
  %5666 = and i8 %5665, 1
  %5667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5666, i8* %5667, align 1
  %5668 = icmp eq i32 %5648, 0
  %5669 = zext i1 %5668 to i8
  %5670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5669, i8* %5670, align 1
  %5671 = lshr i32 %5648, 31
  %5672 = trunc i32 %5671 to i8
  %5673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5672, i8* %5673, align 1
  %5674 = lshr i32 %5647, 31
  %5675 = xor i32 %5671, %5674
  %5676 = add i32 %5675, %5671
  %5677 = icmp eq i32 %5676, 2
  %5678 = zext i1 %5677 to i8
  %5679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5678, i8* %5679, align 1
  store %struct.Memory* %loadMem_40482c, %struct.Memory** %MEMORY
  %loadMem_40482f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5681 = getelementptr inbounds %struct.GPR, %struct.GPR* %5680, i32 0, i32 33
  %5682 = getelementptr inbounds %struct.Reg, %struct.Reg* %5681, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %5682 to i64*
  %5683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5684 = getelementptr inbounds %struct.GPR, %struct.GPR* %5683, i32 0, i32 9
  %5685 = getelementptr inbounds %struct.Reg, %struct.Reg* %5684, i32 0, i32 0
  %ESI.i286 = bitcast %union.anon* %5685 to i32*
  %5686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5687 = getelementptr inbounds %struct.GPR, %struct.GPR* %5686, i32 0, i32 15
  %5688 = getelementptr inbounds %struct.Reg, %struct.Reg* %5687, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %5688 to i64*
  %5689 = load i64, i64* %RBP.i287
  %5690 = sub i64 %5689, 100
  %5691 = load i32, i32* %ESI.i286
  %5692 = zext i32 %5691 to i64
  %5693 = load i64, i64* %PC.i285
  %5694 = add i64 %5693, 3
  store i64 %5694, i64* %PC.i285
  %5695 = inttoptr i64 %5690 to i32*
  store i32 %5691, i32* %5695
  store %struct.Memory* %loadMem_40482f, %struct.Memory** %MEMORY
  %loadMem_404832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5697 = getelementptr inbounds %struct.GPR, %struct.GPR* %5696, i32 0, i32 33
  %5698 = getelementptr inbounds %struct.Reg, %struct.Reg* %5697, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %5698 to i64*
  %5699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5700 = getelementptr inbounds %struct.GPR, %struct.GPR* %5699, i32 0, i32 7
  %5701 = getelementptr inbounds %struct.Reg, %struct.Reg* %5700, i32 0, i32 0
  %EDX.i283 = bitcast %union.anon* %5701 to i32*
  %5702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5703 = getelementptr inbounds %struct.GPR, %struct.GPR* %5702, i32 0, i32 5
  %5704 = getelementptr inbounds %struct.Reg, %struct.Reg* %5703, i32 0, i32 0
  %RCX.i284 = bitcast %union.anon* %5704 to i64*
  %5705 = load i32, i32* %EDX.i283
  %5706 = zext i32 %5705 to i64
  %5707 = load i64, i64* %PC.i282
  %5708 = add i64 %5707, 3
  store i64 %5708, i64* %PC.i282
  %5709 = shl i64 %5706, 32
  %5710 = ashr exact i64 %5709, 32
  store i64 %5710, i64* %RCX.i284, align 8
  store %struct.Memory* %loadMem_404832, %struct.Memory** %MEMORY
  %loadMem_404835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5712 = getelementptr inbounds %struct.GPR, %struct.GPR* %5711, i32 0, i32 33
  %5713 = getelementptr inbounds %struct.Reg, %struct.Reg* %5712, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %5713 to i64*
  %5714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5715 = getelementptr inbounds %struct.GPR, %struct.GPR* %5714, i32 0, i32 11
  %5716 = getelementptr inbounds %struct.Reg, %struct.Reg* %5715, i32 0, i32 0
  %5717 = bitcast %union.anon* %5716 to %struct.anon.2*
  %DIL.i279 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5717, i32 0, i32 0
  %5718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5719 = getelementptr inbounds %struct.GPR, %struct.GPR* %5718, i32 0, i32 1
  %5720 = getelementptr inbounds %struct.Reg, %struct.Reg* %5719, i32 0, i32 0
  %RAX.i280 = bitcast %union.anon* %5720 to i64*
  %5721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5722 = getelementptr inbounds %struct.GPR, %struct.GPR* %5721, i32 0, i32 5
  %5723 = getelementptr inbounds %struct.Reg, %struct.Reg* %5722, i32 0, i32 0
  %RCX.i281 = bitcast %union.anon* %5723 to i64*
  %5724 = load i64, i64* %RAX.i280
  %5725 = load i64, i64* %RCX.i281
  %5726 = add i64 %5725, %5724
  %5727 = load i8, i8* %DIL.i279
  %5728 = zext i8 %5727 to i64
  %5729 = load i64, i64* %PC.i278
  %5730 = add i64 %5729, 4
  store i64 %5730, i64* %PC.i278
  %5731 = inttoptr i64 %5726 to i8*
  store i8 %5727, i8* %5731
  store %struct.Memory* %loadMem_404835, %struct.Memory** %MEMORY
  %loadMem_404839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5733 = getelementptr inbounds %struct.GPR, %struct.GPR* %5732, i32 0, i32 33
  %5734 = getelementptr inbounds %struct.Reg, %struct.Reg* %5733, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %5734 to i64*
  %5735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5736 = getelementptr inbounds %struct.GPR, %struct.GPR* %5735, i32 0, i32 1
  %5737 = getelementptr inbounds %struct.Reg, %struct.Reg* %5736, i32 0, i32 0
  %RAX.i276 = bitcast %union.anon* %5737 to i64*
  %5738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5739 = getelementptr inbounds %struct.GPR, %struct.GPR* %5738, i32 0, i32 15
  %5740 = getelementptr inbounds %struct.Reg, %struct.Reg* %5739, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %5740 to i64*
  %5741 = load i64, i64* %RBP.i277
  %5742 = sub i64 %5741, 116
  %5743 = load i64, i64* %PC.i275
  %5744 = add i64 %5743, 3
  store i64 %5744, i64* %PC.i275
  %5745 = inttoptr i64 %5742 to i32*
  %5746 = load i32, i32* %5745
  %5747 = zext i32 %5746 to i64
  store i64 %5747, i64* %RAX.i276, align 8
  store %struct.Memory* %loadMem_404839, %struct.Memory** %MEMORY
  %loadMem_40483c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5749 = getelementptr inbounds %struct.GPR, %struct.GPR* %5748, i32 0, i32 33
  %5750 = getelementptr inbounds %struct.Reg, %struct.Reg* %5749, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %5750 to i64*
  %5751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5752 = getelementptr inbounds %struct.GPR, %struct.GPR* %5751, i32 0, i32 1
  %5753 = getelementptr inbounds %struct.Reg, %struct.Reg* %5752, i32 0, i32 0
  %RAX.i274 = bitcast %union.anon* %5753 to i64*
  %5754 = load i64, i64* %RAX.i274
  %5755 = load i64, i64* %PC.i273
  %5756 = add i64 %5755, 3
  store i64 %5756, i64* %PC.i273
  %5757 = trunc i64 %5754 to i32
  %5758 = add i32 1, %5757
  %5759 = zext i32 %5758 to i64
  store i64 %5759, i64* %RAX.i274, align 8
  %5760 = icmp ult i32 %5758, %5757
  %5761 = icmp ult i32 %5758, 1
  %5762 = or i1 %5760, %5761
  %5763 = zext i1 %5762 to i8
  %5764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5763, i8* %5764, align 1
  %5765 = and i32 %5758, 255
  %5766 = call i32 @llvm.ctpop.i32(i32 %5765)
  %5767 = trunc i32 %5766 to i8
  %5768 = and i8 %5767, 1
  %5769 = xor i8 %5768, 1
  %5770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5769, i8* %5770, align 1
  %5771 = xor i64 1, %5754
  %5772 = trunc i64 %5771 to i32
  %5773 = xor i32 %5772, %5758
  %5774 = lshr i32 %5773, 4
  %5775 = trunc i32 %5774 to i8
  %5776 = and i8 %5775, 1
  %5777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5776, i8* %5777, align 1
  %5778 = icmp eq i32 %5758, 0
  %5779 = zext i1 %5778 to i8
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5779, i8* %5780, align 1
  %5781 = lshr i32 %5758, 31
  %5782 = trunc i32 %5781 to i8
  %5783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5782, i8* %5783, align 1
  %5784 = lshr i32 %5757, 31
  %5785 = xor i32 %5781, %5784
  %5786 = add i32 %5785, %5781
  %5787 = icmp eq i32 %5786, 2
  %5788 = zext i1 %5787 to i8
  %5789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5788, i8* %5789, align 1
  store %struct.Memory* %loadMem_40483c, %struct.Memory** %MEMORY
  %loadMem_40483f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5791 = getelementptr inbounds %struct.GPR, %struct.GPR* %5790, i32 0, i32 33
  %5792 = getelementptr inbounds %struct.Reg, %struct.Reg* %5791, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %5792 to i64*
  %5793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5794 = getelementptr inbounds %struct.GPR, %struct.GPR* %5793, i32 0, i32 1
  %5795 = getelementptr inbounds %struct.Reg, %struct.Reg* %5794, i32 0, i32 0
  %EAX.i271 = bitcast %union.anon* %5795 to i32*
  %5796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5797 = getelementptr inbounds %struct.GPR, %struct.GPR* %5796, i32 0, i32 15
  %5798 = getelementptr inbounds %struct.Reg, %struct.Reg* %5797, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %5798 to i64*
  %5799 = load i64, i64* %RBP.i272
  %5800 = sub i64 %5799, 116
  %5801 = load i32, i32* %EAX.i271
  %5802 = zext i32 %5801 to i64
  %5803 = load i64, i64* %PC.i270
  %5804 = add i64 %5803, 3
  store i64 %5804, i64* %PC.i270
  %5805 = inttoptr i64 %5800 to i32*
  store i32 %5801, i32* %5805
  store %struct.Memory* %loadMem_40483f, %struct.Memory** %MEMORY
  %loadMem_404842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5807 = getelementptr inbounds %struct.GPR, %struct.GPR* %5806, i32 0, i32 33
  %5808 = getelementptr inbounds %struct.Reg, %struct.Reg* %5807, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %5808 to i64*
  %5809 = load i64, i64* %PC.i269
  %5810 = add i64 %5809, -97
  %5811 = load i64, i64* %PC.i269
  %5812 = add i64 %5811, 5
  store i64 %5812, i64* %PC.i269
  %5813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5810, i64* %5813, align 8
  store %struct.Memory* %loadMem_404842, %struct.Memory** %MEMORY
  br label %block_.L_4047e1

block_.L_404847:                                  ; preds = %block_.L_4047e1
  %loadMem_404847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5815 = getelementptr inbounds %struct.GPR, %struct.GPR* %5814, i32 0, i32 33
  %5816 = getelementptr inbounds %struct.Reg, %struct.Reg* %5815, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %5816 to i64*
  %5817 = load i64, i64* %PC.i268
  %5818 = add i64 %5817, 5
  %5819 = load i64, i64* %PC.i268
  %5820 = add i64 %5819, 5
  store i64 %5820, i64* %PC.i268
  %5821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5818, i64* %5821, align 8
  store %struct.Memory* %loadMem_404847, %struct.Memory** %MEMORY
  br label %block_.L_40484c

block_.L_40484c:                                  ; preds = %block_404860, %block_.L_404847
  %loadMem_40484c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5823 = getelementptr inbounds %struct.GPR, %struct.GPR* %5822, i32 0, i32 33
  %5824 = getelementptr inbounds %struct.Reg, %struct.Reg* %5823, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %5824 to i64*
  %5825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5826 = getelementptr inbounds %struct.GPR, %struct.GPR* %5825, i32 0, i32 1
  %5827 = getelementptr inbounds %struct.Reg, %struct.Reg* %5826, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %5827 to i64*
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5829 = getelementptr inbounds %struct.GPR, %struct.GPR* %5828, i32 0, i32 15
  %5830 = getelementptr inbounds %struct.Reg, %struct.Reg* %5829, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %5830 to i64*
  %5831 = load i64, i64* %RBP.i267
  %5832 = sub i64 %5831, 116
  %5833 = load i64, i64* %PC.i265
  %5834 = add i64 %5833, 3
  store i64 %5834, i64* %PC.i265
  %5835 = inttoptr i64 %5832 to i32*
  %5836 = load i32, i32* %5835
  %5837 = zext i32 %5836 to i64
  store i64 %5837, i64* %RAX.i266, align 8
  store %struct.Memory* %loadMem_40484c, %struct.Memory** %MEMORY
  %loadMem_40484f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5839 = getelementptr inbounds %struct.GPR, %struct.GPR* %5838, i32 0, i32 33
  %5840 = getelementptr inbounds %struct.Reg, %struct.Reg* %5839, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %5840 to i64*
  %5841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5842 = getelementptr inbounds %struct.GPR, %struct.GPR* %5841, i32 0, i32 5
  %5843 = getelementptr inbounds %struct.Reg, %struct.Reg* %5842, i32 0, i32 0
  %RCX.i263 = bitcast %union.anon* %5843 to i64*
  %5844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5845 = getelementptr inbounds %struct.GPR, %struct.GPR* %5844, i32 0, i32 15
  %5846 = getelementptr inbounds %struct.Reg, %struct.Reg* %5845, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %5846 to i64*
  %5847 = load i64, i64* %RBP.i264
  %5848 = sub i64 %5847, 96
  %5849 = load i64, i64* %PC.i262
  %5850 = add i64 %5849, 4
  store i64 %5850, i64* %PC.i262
  %5851 = inttoptr i64 %5848 to i64*
  %5852 = load i64, i64* %5851
  store i64 %5852, i64* %RCX.i263, align 8
  store %struct.Memory* %loadMem_40484f, %struct.Memory** %MEMORY
  %loadMem_404853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5854 = getelementptr inbounds %struct.GPR, %struct.GPR* %5853, i32 0, i32 33
  %5855 = getelementptr inbounds %struct.Reg, %struct.Reg* %5854, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %5855 to i64*
  %5856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5857 = getelementptr inbounds %struct.GPR, %struct.GPR* %5856, i32 0, i32 7
  %5858 = getelementptr inbounds %struct.Reg, %struct.Reg* %5857, i32 0, i32 0
  %RDX.i260 = bitcast %union.anon* %5858 to i64*
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5860 = getelementptr inbounds %struct.GPR, %struct.GPR* %5859, i32 0, i32 15
  %5861 = getelementptr inbounds %struct.Reg, %struct.Reg* %5860, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %5861 to i64*
  %5862 = load i64, i64* %RBP.i261
  %5863 = sub i64 %5862, 112
  %5864 = load i64, i64* %PC.i259
  %5865 = add i64 %5864, 4
  store i64 %5865, i64* %PC.i259
  %5866 = inttoptr i64 %5863 to i32*
  %5867 = load i32, i32* %5866
  %5868 = sext i32 %5867 to i64
  store i64 %5868, i64* %RDX.i260, align 8
  store %struct.Memory* %loadMem_404853, %struct.Memory** %MEMORY
  %loadMem_404857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5870 = getelementptr inbounds %struct.GPR, %struct.GPR* %5869, i32 0, i32 33
  %5871 = getelementptr inbounds %struct.Reg, %struct.Reg* %5870, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %5871 to i64*
  %5872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5873 = getelementptr inbounds %struct.GPR, %struct.GPR* %5872, i32 0, i32 1
  %5874 = getelementptr inbounds %struct.Reg, %struct.Reg* %5873, i32 0, i32 0
  %EAX.i256 = bitcast %union.anon* %5874 to i32*
  %5875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5876 = getelementptr inbounds %struct.GPR, %struct.GPR* %5875, i32 0, i32 5
  %5877 = getelementptr inbounds %struct.Reg, %struct.Reg* %5876, i32 0, i32 0
  %RCX.i257 = bitcast %union.anon* %5877 to i64*
  %5878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5879 = getelementptr inbounds %struct.GPR, %struct.GPR* %5878, i32 0, i32 7
  %5880 = getelementptr inbounds %struct.Reg, %struct.Reg* %5879, i32 0, i32 0
  %RDX.i258 = bitcast %union.anon* %5880 to i64*
  %5881 = load i32, i32* %EAX.i256
  %5882 = zext i32 %5881 to i64
  %5883 = load i64, i64* %RCX.i257
  %5884 = load i64, i64* %RDX.i258
  %5885 = mul i64 %5884, 4
  %5886 = add i64 %5885, %5883
  %5887 = load i64, i64* %PC.i255
  %5888 = add i64 %5887, 3
  store i64 %5888, i64* %PC.i255
  %5889 = inttoptr i64 %5886 to i32*
  %5890 = load i32, i32* %5889
  %5891 = sub i32 %5881, %5890
  %5892 = icmp ult i32 %5881, %5890
  %5893 = zext i1 %5892 to i8
  %5894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5893, i8* %5894, align 1
  %5895 = and i32 %5891, 255
  %5896 = call i32 @llvm.ctpop.i32(i32 %5895)
  %5897 = trunc i32 %5896 to i8
  %5898 = and i8 %5897, 1
  %5899 = xor i8 %5898, 1
  %5900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5899, i8* %5900, align 1
  %5901 = xor i32 %5890, %5881
  %5902 = xor i32 %5901, %5891
  %5903 = lshr i32 %5902, 4
  %5904 = trunc i32 %5903 to i8
  %5905 = and i8 %5904, 1
  %5906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5905, i8* %5906, align 1
  %5907 = icmp eq i32 %5891, 0
  %5908 = zext i1 %5907 to i8
  %5909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5908, i8* %5909, align 1
  %5910 = lshr i32 %5891, 31
  %5911 = trunc i32 %5910 to i8
  %5912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5911, i8* %5912, align 1
  %5913 = lshr i32 %5881, 31
  %5914 = lshr i32 %5890, 31
  %5915 = xor i32 %5914, %5913
  %5916 = xor i32 %5910, %5913
  %5917 = add i32 %5916, %5915
  %5918 = icmp eq i32 %5917, 2
  %5919 = zext i1 %5918 to i8
  %5920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5919, i8* %5920, align 1
  store %struct.Memory* %loadMem_404857, %struct.Memory** %MEMORY
  %loadMem_40485a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5922 = getelementptr inbounds %struct.GPR, %struct.GPR* %5921, i32 0, i32 33
  %5923 = getelementptr inbounds %struct.Reg, %struct.Reg* %5922, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %5923 to i64*
  %5924 = load i64, i64* %PC.i254
  %5925 = add i64 %5924, 50
  %5926 = load i64, i64* %PC.i254
  %5927 = add i64 %5926, 6
  %5928 = load i64, i64* %PC.i254
  %5929 = add i64 %5928, 6
  store i64 %5929, i64* %PC.i254
  %5930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5931 = load i8, i8* %5930, align 1
  %5932 = icmp ne i8 %5931, 0
  %5933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5934 = load i8, i8* %5933, align 1
  %5935 = icmp ne i8 %5934, 0
  %5936 = xor i1 %5932, %5935
  %5937 = xor i1 %5936, true
  %5938 = zext i1 %5937 to i8
  store i8 %5938, i8* %BRANCH_TAKEN, align 1
  %5939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5940 = select i1 %5936, i64 %5927, i64 %5925
  store i64 %5940, i64* %5939, align 8
  store %struct.Memory* %loadMem_40485a, %struct.Memory** %MEMORY
  %loadBr_40485a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40485a = icmp eq i8 %loadBr_40485a, 1
  br i1 %cmpBr_40485a, label %block_.L_40488c, label %block_404860

block_404860:                                     ; preds = %block_.L_40484c
  %loadMem_404860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5942 = getelementptr inbounds %struct.GPR, %struct.GPR* %5941, i32 0, i32 33
  %5943 = getelementptr inbounds %struct.Reg, %struct.Reg* %5942, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %5943 to i64*
  %5944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5945 = getelementptr inbounds %struct.GPR, %struct.GPR* %5944, i32 0, i32 1
  %5946 = getelementptr inbounds %struct.Reg, %struct.Reg* %5945, i32 0, i32 0
  %RAX.i252 = bitcast %union.anon* %5946 to i64*
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5948 = getelementptr inbounds %struct.GPR, %struct.GPR* %5947, i32 0, i32 15
  %5949 = getelementptr inbounds %struct.Reg, %struct.Reg* %5948, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %5949 to i64*
  %5950 = load i64, i64* %RBP.i253
  %5951 = sub i64 %5950, 56
  %5952 = load i64, i64* %PC.i251
  %5953 = add i64 %5952, 4
  store i64 %5953, i64* %PC.i251
  %5954 = inttoptr i64 %5951 to i64*
  %5955 = load i64, i64* %5954
  store i64 %5955, i64* %RAX.i252, align 8
  store %struct.Memory* %loadMem_404860, %struct.Memory** %MEMORY
  %loadMem_404864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5957 = getelementptr inbounds %struct.GPR, %struct.GPR* %5956, i32 0, i32 33
  %5958 = getelementptr inbounds %struct.Reg, %struct.Reg* %5957, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %5958 to i64*
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5960 = getelementptr inbounds %struct.GPR, %struct.GPR* %5959, i32 0, i32 5
  %5961 = getelementptr inbounds %struct.Reg, %struct.Reg* %5960, i32 0, i32 0
  %RCX.i249 = bitcast %union.anon* %5961 to i64*
  %5962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5963 = getelementptr inbounds %struct.GPR, %struct.GPR* %5962, i32 0, i32 15
  %5964 = getelementptr inbounds %struct.Reg, %struct.Reg* %5963, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %5964 to i64*
  %5965 = load i64, i64* %RBP.i250
  %5966 = sub i64 %5965, 108
  %5967 = load i64, i64* %PC.i248
  %5968 = add i64 %5967, 4
  store i64 %5968, i64* %PC.i248
  %5969 = inttoptr i64 %5966 to i32*
  %5970 = load i32, i32* %5969
  %5971 = sext i32 %5970 to i64
  store i64 %5971, i64* %RCX.i249, align 8
  store %struct.Memory* %loadMem_404864, %struct.Memory** %MEMORY
  %loadMem_404868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5973 = getelementptr inbounds %struct.GPR, %struct.GPR* %5972, i32 0, i32 33
  %5974 = getelementptr inbounds %struct.Reg, %struct.Reg* %5973, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %5974 to i64*
  %5975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5976 = getelementptr inbounds %struct.GPR, %struct.GPR* %5975, i32 0, i32 1
  %5977 = getelementptr inbounds %struct.Reg, %struct.Reg* %5976, i32 0, i32 0
  %RAX.i246 = bitcast %union.anon* %5977 to i64*
  %5978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5979 = getelementptr inbounds %struct.GPR, %struct.GPR* %5978, i32 0, i32 5
  %5980 = getelementptr inbounds %struct.Reg, %struct.Reg* %5979, i32 0, i32 0
  %RCX.i247 = bitcast %union.anon* %5980 to i64*
  %5981 = load i64, i64* %RAX.i246
  %5982 = load i64, i64* %RCX.i247
  %5983 = mul i64 %5982, 8
  %5984 = add i64 %5983, %5981
  %5985 = load i64, i64* %PC.i245
  %5986 = add i64 %5985, 4
  store i64 %5986, i64* %PC.i245
  %5987 = inttoptr i64 %5984 to i64*
  %5988 = load i64, i64* %5987
  store i64 %5988, i64* %RAX.i246, align 8
  store %struct.Memory* %loadMem_404868, %struct.Memory** %MEMORY
  %loadMem_40486c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5990 = getelementptr inbounds %struct.GPR, %struct.GPR* %5989, i32 0, i32 33
  %5991 = getelementptr inbounds %struct.Reg, %struct.Reg* %5990, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %5991 to i64*
  %5992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5993 = getelementptr inbounds %struct.GPR, %struct.GPR* %5992, i32 0, i32 7
  %5994 = getelementptr inbounds %struct.Reg, %struct.Reg* %5993, i32 0, i32 0
  %RDX.i243 = bitcast %union.anon* %5994 to i64*
  %5995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5996 = getelementptr inbounds %struct.GPR, %struct.GPR* %5995, i32 0, i32 15
  %5997 = getelementptr inbounds %struct.Reg, %struct.Reg* %5996, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %5997 to i64*
  %5998 = load i64, i64* %RBP.i244
  %5999 = sub i64 %5998, 100
  %6000 = load i64, i64* %PC.i242
  %6001 = add i64 %6000, 3
  store i64 %6001, i64* %PC.i242
  %6002 = inttoptr i64 %5999 to i32*
  %6003 = load i32, i32* %6002
  %6004 = zext i32 %6003 to i64
  store i64 %6004, i64* %RDX.i243, align 8
  store %struct.Memory* %loadMem_40486c, %struct.Memory** %MEMORY
  %loadMem_40486f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6006 = getelementptr inbounds %struct.GPR, %struct.GPR* %6005, i32 0, i32 33
  %6007 = getelementptr inbounds %struct.Reg, %struct.Reg* %6006, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %6007 to i64*
  %6008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6009 = getelementptr inbounds %struct.GPR, %struct.GPR* %6008, i32 0, i32 7
  %6010 = getelementptr inbounds %struct.Reg, %struct.Reg* %6009, i32 0, i32 0
  %EDX.i240 = bitcast %union.anon* %6010 to i32*
  %6011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6012 = getelementptr inbounds %struct.GPR, %struct.GPR* %6011, i32 0, i32 9
  %6013 = getelementptr inbounds %struct.Reg, %struct.Reg* %6012, i32 0, i32 0
  %RSI.i241 = bitcast %union.anon* %6013 to i64*
  %6014 = load i32, i32* %EDX.i240
  %6015 = zext i32 %6014 to i64
  %6016 = load i64, i64* %PC.i239
  %6017 = add i64 %6016, 2
  store i64 %6017, i64* %PC.i239
  %6018 = and i64 %6015, 4294967295
  store i64 %6018, i64* %RSI.i241, align 8
  store %struct.Memory* %loadMem_40486f, %struct.Memory** %MEMORY
  %loadMem_404871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6020 = getelementptr inbounds %struct.GPR, %struct.GPR* %6019, i32 0, i32 33
  %6021 = getelementptr inbounds %struct.Reg, %struct.Reg* %6020, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %6021 to i64*
  %6022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6023 = getelementptr inbounds %struct.GPR, %struct.GPR* %6022, i32 0, i32 9
  %6024 = getelementptr inbounds %struct.Reg, %struct.Reg* %6023, i32 0, i32 0
  %RSI.i238 = bitcast %union.anon* %6024 to i64*
  %6025 = load i64, i64* %RSI.i238
  %6026 = load i64, i64* %PC.i237
  %6027 = add i64 %6026, 3
  store i64 %6027, i64* %PC.i237
  %6028 = trunc i64 %6025 to i32
  %6029 = add i32 1, %6028
  %6030 = zext i32 %6029 to i64
  store i64 %6030, i64* %RSI.i238, align 8
  %6031 = icmp ult i32 %6029, %6028
  %6032 = icmp ult i32 %6029, 1
  %6033 = or i1 %6031, %6032
  %6034 = zext i1 %6033 to i8
  %6035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6034, i8* %6035, align 1
  %6036 = and i32 %6029, 255
  %6037 = call i32 @llvm.ctpop.i32(i32 %6036)
  %6038 = trunc i32 %6037 to i8
  %6039 = and i8 %6038, 1
  %6040 = xor i8 %6039, 1
  %6041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6040, i8* %6041, align 1
  %6042 = xor i64 1, %6025
  %6043 = trunc i64 %6042 to i32
  %6044 = xor i32 %6043, %6029
  %6045 = lshr i32 %6044, 4
  %6046 = trunc i32 %6045 to i8
  %6047 = and i8 %6046, 1
  %6048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6047, i8* %6048, align 1
  %6049 = icmp eq i32 %6029, 0
  %6050 = zext i1 %6049 to i8
  %6051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6050, i8* %6051, align 1
  %6052 = lshr i32 %6029, 31
  %6053 = trunc i32 %6052 to i8
  %6054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6053, i8* %6054, align 1
  %6055 = lshr i32 %6028, 31
  %6056 = xor i32 %6052, %6055
  %6057 = add i32 %6056, %6052
  %6058 = icmp eq i32 %6057, 2
  %6059 = zext i1 %6058 to i8
  %6060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6059, i8* %6060, align 1
  store %struct.Memory* %loadMem_404871, %struct.Memory** %MEMORY
  %loadMem_404874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6062 = getelementptr inbounds %struct.GPR, %struct.GPR* %6061, i32 0, i32 33
  %6063 = getelementptr inbounds %struct.Reg, %struct.Reg* %6062, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %6063 to i64*
  %6064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6065 = getelementptr inbounds %struct.GPR, %struct.GPR* %6064, i32 0, i32 9
  %6066 = getelementptr inbounds %struct.Reg, %struct.Reg* %6065, i32 0, i32 0
  %ESI.i235 = bitcast %union.anon* %6066 to i32*
  %6067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6068 = getelementptr inbounds %struct.GPR, %struct.GPR* %6067, i32 0, i32 15
  %6069 = getelementptr inbounds %struct.Reg, %struct.Reg* %6068, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %6069 to i64*
  %6070 = load i64, i64* %RBP.i236
  %6071 = sub i64 %6070, 100
  %6072 = load i32, i32* %ESI.i235
  %6073 = zext i32 %6072 to i64
  %6074 = load i64, i64* %PC.i234
  %6075 = add i64 %6074, 3
  store i64 %6075, i64* %PC.i234
  %6076 = inttoptr i64 %6071 to i32*
  store i32 %6072, i32* %6076
  store %struct.Memory* %loadMem_404874, %struct.Memory** %MEMORY
  %loadMem_404877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6078 = getelementptr inbounds %struct.GPR, %struct.GPR* %6077, i32 0, i32 33
  %6079 = getelementptr inbounds %struct.Reg, %struct.Reg* %6078, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %6079 to i64*
  %6080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6081 = getelementptr inbounds %struct.GPR, %struct.GPR* %6080, i32 0, i32 7
  %6082 = getelementptr inbounds %struct.Reg, %struct.Reg* %6081, i32 0, i32 0
  %EDX.i232 = bitcast %union.anon* %6082 to i32*
  %6083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6084 = getelementptr inbounds %struct.GPR, %struct.GPR* %6083, i32 0, i32 5
  %6085 = getelementptr inbounds %struct.Reg, %struct.Reg* %6084, i32 0, i32 0
  %RCX.i233 = bitcast %union.anon* %6085 to i64*
  %6086 = load i32, i32* %EDX.i232
  %6087 = zext i32 %6086 to i64
  %6088 = load i64, i64* %PC.i231
  %6089 = add i64 %6088, 3
  store i64 %6089, i64* %PC.i231
  %6090 = shl i64 %6087, 32
  %6091 = ashr exact i64 %6090, 32
  store i64 %6091, i64* %RCX.i233, align 8
  store %struct.Memory* %loadMem_404877, %struct.Memory** %MEMORY
  %loadMem_40487a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6093 = getelementptr inbounds %struct.GPR, %struct.GPR* %6092, i32 0, i32 33
  %6094 = getelementptr inbounds %struct.Reg, %struct.Reg* %6093, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %6094 to i64*
  %6095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6096 = getelementptr inbounds %struct.GPR, %struct.GPR* %6095, i32 0, i32 1
  %6097 = getelementptr inbounds %struct.Reg, %struct.Reg* %6096, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %6097 to i64*
  %6098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6099 = getelementptr inbounds %struct.GPR, %struct.GPR* %6098, i32 0, i32 5
  %6100 = getelementptr inbounds %struct.Reg, %struct.Reg* %6099, i32 0, i32 0
  %RCX.i230 = bitcast %union.anon* %6100 to i64*
  %6101 = load i64, i64* %RAX.i229
  %6102 = load i64, i64* %RCX.i230
  %6103 = add i64 %6102, %6101
  %6104 = load i64, i64* %PC.i228
  %6105 = add i64 %6104, 4
  store i64 %6105, i64* %PC.i228
  %6106 = inttoptr i64 %6103 to i8*
  store i8 32, i8* %6106
  store %struct.Memory* %loadMem_40487a, %struct.Memory** %MEMORY
  %loadMem_40487e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6108 = getelementptr inbounds %struct.GPR, %struct.GPR* %6107, i32 0, i32 33
  %6109 = getelementptr inbounds %struct.Reg, %struct.Reg* %6108, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %6109 to i64*
  %6110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6111 = getelementptr inbounds %struct.GPR, %struct.GPR* %6110, i32 0, i32 1
  %6112 = getelementptr inbounds %struct.Reg, %struct.Reg* %6111, i32 0, i32 0
  %RAX.i226 = bitcast %union.anon* %6112 to i64*
  %6113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6114 = getelementptr inbounds %struct.GPR, %struct.GPR* %6113, i32 0, i32 15
  %6115 = getelementptr inbounds %struct.Reg, %struct.Reg* %6114, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %6115 to i64*
  %6116 = load i64, i64* %RBP.i227
  %6117 = sub i64 %6116, 116
  %6118 = load i64, i64* %PC.i225
  %6119 = add i64 %6118, 3
  store i64 %6119, i64* %PC.i225
  %6120 = inttoptr i64 %6117 to i32*
  %6121 = load i32, i32* %6120
  %6122 = zext i32 %6121 to i64
  store i64 %6122, i64* %RAX.i226, align 8
  store %struct.Memory* %loadMem_40487e, %struct.Memory** %MEMORY
  %loadMem_404881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6124 = getelementptr inbounds %struct.GPR, %struct.GPR* %6123, i32 0, i32 33
  %6125 = getelementptr inbounds %struct.Reg, %struct.Reg* %6124, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %6125 to i64*
  %6126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6127 = getelementptr inbounds %struct.GPR, %struct.GPR* %6126, i32 0, i32 1
  %6128 = getelementptr inbounds %struct.Reg, %struct.Reg* %6127, i32 0, i32 0
  %RAX.i224 = bitcast %union.anon* %6128 to i64*
  %6129 = load i64, i64* %RAX.i224
  %6130 = load i64, i64* %PC.i223
  %6131 = add i64 %6130, 3
  store i64 %6131, i64* %PC.i223
  %6132 = trunc i64 %6129 to i32
  %6133 = add i32 1, %6132
  %6134 = zext i32 %6133 to i64
  store i64 %6134, i64* %RAX.i224, align 8
  %6135 = icmp ult i32 %6133, %6132
  %6136 = icmp ult i32 %6133, 1
  %6137 = or i1 %6135, %6136
  %6138 = zext i1 %6137 to i8
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6138, i8* %6139, align 1
  %6140 = and i32 %6133, 255
  %6141 = call i32 @llvm.ctpop.i32(i32 %6140)
  %6142 = trunc i32 %6141 to i8
  %6143 = and i8 %6142, 1
  %6144 = xor i8 %6143, 1
  %6145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6144, i8* %6145, align 1
  %6146 = xor i64 1, %6129
  %6147 = trunc i64 %6146 to i32
  %6148 = xor i32 %6147, %6133
  %6149 = lshr i32 %6148, 4
  %6150 = trunc i32 %6149 to i8
  %6151 = and i8 %6150, 1
  %6152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6151, i8* %6152, align 1
  %6153 = icmp eq i32 %6133, 0
  %6154 = zext i1 %6153 to i8
  %6155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6154, i8* %6155, align 1
  %6156 = lshr i32 %6133, 31
  %6157 = trunc i32 %6156 to i8
  %6158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6157, i8* %6158, align 1
  %6159 = lshr i32 %6132, 31
  %6160 = xor i32 %6156, %6159
  %6161 = add i32 %6160, %6156
  %6162 = icmp eq i32 %6161, 2
  %6163 = zext i1 %6162 to i8
  %6164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6163, i8* %6164, align 1
  store %struct.Memory* %loadMem_404881, %struct.Memory** %MEMORY
  %loadMem_404884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6166 = getelementptr inbounds %struct.GPR, %struct.GPR* %6165, i32 0, i32 33
  %6167 = getelementptr inbounds %struct.Reg, %struct.Reg* %6166, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %6167 to i64*
  %6168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6169 = getelementptr inbounds %struct.GPR, %struct.GPR* %6168, i32 0, i32 1
  %6170 = getelementptr inbounds %struct.Reg, %struct.Reg* %6169, i32 0, i32 0
  %EAX.i221 = bitcast %union.anon* %6170 to i32*
  %6171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6172 = getelementptr inbounds %struct.GPR, %struct.GPR* %6171, i32 0, i32 15
  %6173 = getelementptr inbounds %struct.Reg, %struct.Reg* %6172, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %6173 to i64*
  %6174 = load i64, i64* %RBP.i222
  %6175 = sub i64 %6174, 116
  %6176 = load i32, i32* %EAX.i221
  %6177 = zext i32 %6176 to i64
  %6178 = load i64, i64* %PC.i220
  %6179 = add i64 %6178, 3
  store i64 %6179, i64* %PC.i220
  %6180 = inttoptr i64 %6175 to i32*
  store i32 %6176, i32* %6180
  store %struct.Memory* %loadMem_404884, %struct.Memory** %MEMORY
  %loadMem_404887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6182 = getelementptr inbounds %struct.GPR, %struct.GPR* %6181, i32 0, i32 33
  %6183 = getelementptr inbounds %struct.Reg, %struct.Reg* %6182, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %6183 to i64*
  %6184 = load i64, i64* %PC.i219
  %6185 = add i64 %6184, -59
  %6186 = load i64, i64* %PC.i219
  %6187 = add i64 %6186, 5
  store i64 %6187, i64* %PC.i219
  %6188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6185, i64* %6188, align 8
  store %struct.Memory* %loadMem_404887, %struct.Memory** %MEMORY
  br label %block_.L_40484c

block_.L_40488c:                                  ; preds = %block_.L_40484c
  %loadMem_40488c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6190 = getelementptr inbounds %struct.GPR, %struct.GPR* %6189, i32 0, i32 33
  %6191 = getelementptr inbounds %struct.Reg, %struct.Reg* %6190, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %6191 to i64*
  %6192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6193 = getelementptr inbounds %struct.GPR, %struct.GPR* %6192, i32 0, i32 1
  %6194 = getelementptr inbounds %struct.Reg, %struct.Reg* %6193, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %6194 to i64*
  %6195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6196 = getelementptr inbounds %struct.GPR, %struct.GPR* %6195, i32 0, i32 15
  %6197 = getelementptr inbounds %struct.Reg, %struct.Reg* %6196, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %6197 to i64*
  %6198 = load i64, i64* %RBP.i218
  %6199 = sub i64 %6198, 112
  %6200 = load i64, i64* %PC.i216
  %6201 = add i64 %6200, 3
  store i64 %6201, i64* %PC.i216
  %6202 = inttoptr i64 %6199 to i32*
  %6203 = load i32, i32* %6202
  %6204 = zext i32 %6203 to i64
  store i64 %6204, i64* %RAX.i217, align 8
  store %struct.Memory* %loadMem_40488c, %struct.Memory** %MEMORY
  %loadMem_40488f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6206 = getelementptr inbounds %struct.GPR, %struct.GPR* %6205, i32 0, i32 33
  %6207 = getelementptr inbounds %struct.Reg, %struct.Reg* %6206, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %6207 to i64*
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6209 = getelementptr inbounds %struct.GPR, %struct.GPR* %6208, i32 0, i32 1
  %6210 = getelementptr inbounds %struct.Reg, %struct.Reg* %6209, i32 0, i32 0
  %EAX.i214 = bitcast %union.anon* %6210 to i32*
  %6211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6212 = getelementptr inbounds %struct.GPR, %struct.GPR* %6211, i32 0, i32 15
  %6213 = getelementptr inbounds %struct.Reg, %struct.Reg* %6212, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %6213 to i64*
  %6214 = load i32, i32* %EAX.i214
  %6215 = zext i32 %6214 to i64
  %6216 = load i64, i64* %RBP.i215
  %6217 = sub i64 %6216, 76
  %6218 = load i64, i64* %PC.i213
  %6219 = add i64 %6218, 3
  store i64 %6219, i64* %PC.i213
  %6220 = inttoptr i64 %6217 to i32*
  %6221 = load i32, i32* %6220
  %6222 = sub i32 %6214, %6221
  %6223 = icmp ult i32 %6214, %6221
  %6224 = zext i1 %6223 to i8
  %6225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6224, i8* %6225, align 1
  %6226 = and i32 %6222, 255
  %6227 = call i32 @llvm.ctpop.i32(i32 %6226)
  %6228 = trunc i32 %6227 to i8
  %6229 = and i8 %6228, 1
  %6230 = xor i8 %6229, 1
  %6231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6230, i8* %6231, align 1
  %6232 = xor i32 %6221, %6214
  %6233 = xor i32 %6232, %6222
  %6234 = lshr i32 %6233, 4
  %6235 = trunc i32 %6234 to i8
  %6236 = and i8 %6235, 1
  %6237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6236, i8* %6237, align 1
  %6238 = icmp eq i32 %6222, 0
  %6239 = zext i1 %6238 to i8
  %6240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6239, i8* %6240, align 1
  %6241 = lshr i32 %6222, 31
  %6242 = trunc i32 %6241 to i8
  %6243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6242, i8* %6243, align 1
  %6244 = lshr i32 %6214, 31
  %6245 = lshr i32 %6221, 31
  %6246 = xor i32 %6245, %6244
  %6247 = xor i32 %6241, %6244
  %6248 = add i32 %6247, %6246
  %6249 = icmp eq i32 %6248, 2
  %6250 = zext i1 %6249 to i8
  %6251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6250, i8* %6251, align 1
  store %struct.Memory* %loadMem_40488f, %struct.Memory** %MEMORY
  %loadMem_404892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6253 = getelementptr inbounds %struct.GPR, %struct.GPR* %6252, i32 0, i32 33
  %6254 = getelementptr inbounds %struct.Reg, %struct.Reg* %6253, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %6254 to i64*
  %6255 = load i64, i64* %PC.i212
  %6256 = add i64 %6255, 66
  %6257 = load i64, i64* %PC.i212
  %6258 = add i64 %6257, 6
  %6259 = load i64, i64* %PC.i212
  %6260 = add i64 %6259, 6
  store i64 %6260, i64* %PC.i212
  %6261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6262 = load i8, i8* %6261, align 1
  store i8 %6262, i8* %BRANCH_TAKEN, align 1
  %6263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6264 = icmp ne i8 %6262, 0
  %6265 = select i1 %6264, i64 %6256, i64 %6258
  store i64 %6265, i64* %6263, align 8
  store %struct.Memory* %loadMem_404892, %struct.Memory** %MEMORY
  %loadBr_404892 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_404892 = icmp eq i8 %loadBr_404892, 1
  br i1 %cmpBr_404892, label %block_.L_4048d4, label %block_404898

block_404898:                                     ; preds = %block_.L_40488c
  %loadMem_404898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6267 = getelementptr inbounds %struct.GPR, %struct.GPR* %6266, i32 0, i32 33
  %6268 = getelementptr inbounds %struct.Reg, %struct.Reg* %6267, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %6268 to i64*
  %6269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6270 = getelementptr inbounds %struct.GPR, %struct.GPR* %6269, i32 0, i32 1
  %6271 = getelementptr inbounds %struct.Reg, %struct.Reg* %6270, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %6271 to i64*
  %6272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6273 = getelementptr inbounds %struct.GPR, %struct.GPR* %6272, i32 0, i32 15
  %6274 = getelementptr inbounds %struct.Reg, %struct.Reg* %6273, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %6274 to i64*
  %6275 = load i64, i64* %RBP.i211
  %6276 = sub i64 %6275, 8
  %6277 = load i64, i64* %PC.i209
  %6278 = add i64 %6277, 4
  store i64 %6278, i64* %PC.i209
  %6279 = inttoptr i64 %6276 to i64*
  %6280 = load i64, i64* %6279
  store i64 %6280, i64* %RAX.i210, align 8
  store %struct.Memory* %loadMem_404898, %struct.Memory** %MEMORY
  %loadMem_40489c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6282 = getelementptr inbounds %struct.GPR, %struct.GPR* %6281, i32 0, i32 33
  %6283 = getelementptr inbounds %struct.Reg, %struct.Reg* %6282, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %6283 to i64*
  %6284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6285 = getelementptr inbounds %struct.GPR, %struct.GPR* %6284, i32 0, i32 5
  %6286 = getelementptr inbounds %struct.Reg, %struct.Reg* %6285, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %6286 to i64*
  %6287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6288 = getelementptr inbounds %struct.GPR, %struct.GPR* %6287, i32 0, i32 15
  %6289 = getelementptr inbounds %struct.Reg, %struct.Reg* %6288, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %6289 to i64*
  %6290 = load i64, i64* %RBP.i208
  %6291 = sub i64 %6290, 108
  %6292 = load i64, i64* %PC.i206
  %6293 = add i64 %6292, 4
  store i64 %6293, i64* %PC.i206
  %6294 = inttoptr i64 %6291 to i32*
  %6295 = load i32, i32* %6294
  %6296 = sext i32 %6295 to i64
  store i64 %6296, i64* %RCX.i207, align 8
  store %struct.Memory* %loadMem_40489c, %struct.Memory** %MEMORY
  %loadMem_4048a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6298 = getelementptr inbounds %struct.GPR, %struct.GPR* %6297, i32 0, i32 33
  %6299 = getelementptr inbounds %struct.Reg, %struct.Reg* %6298, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %6299 to i64*
  %6300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6301 = getelementptr inbounds %struct.GPR, %struct.GPR* %6300, i32 0, i32 1
  %6302 = getelementptr inbounds %struct.Reg, %struct.Reg* %6301, i32 0, i32 0
  %RAX.i204 = bitcast %union.anon* %6302 to i64*
  %6303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6304 = getelementptr inbounds %struct.GPR, %struct.GPR* %6303, i32 0, i32 5
  %6305 = getelementptr inbounds %struct.Reg, %struct.Reg* %6304, i32 0, i32 0
  %RCX.i205 = bitcast %union.anon* %6305 to i64*
  %6306 = load i64, i64* %RAX.i204
  %6307 = load i64, i64* %RCX.i205
  %6308 = mul i64 %6307, 8
  %6309 = add i64 %6308, %6306
  %6310 = load i64, i64* %PC.i203
  %6311 = add i64 %6310, 4
  store i64 %6311, i64* %PC.i203
  %6312 = inttoptr i64 %6309 to i64*
  %6313 = load i64, i64* %6312
  store i64 %6313, i64* %RAX.i204, align 8
  store %struct.Memory* %loadMem_4048a0, %struct.Memory** %MEMORY
  %loadMem_4048a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6315 = getelementptr inbounds %struct.GPR, %struct.GPR* %6314, i32 0, i32 33
  %6316 = getelementptr inbounds %struct.Reg, %struct.Reg* %6315, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %6316 to i64*
  %6317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6318 = getelementptr inbounds %struct.GPR, %struct.GPR* %6317, i32 0, i32 7
  %6319 = getelementptr inbounds %struct.Reg, %struct.Reg* %6318, i32 0, i32 0
  %RDX.i201 = bitcast %union.anon* %6319 to i64*
  %6320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6321 = getelementptr inbounds %struct.GPR, %struct.GPR* %6320, i32 0, i32 15
  %6322 = getelementptr inbounds %struct.Reg, %struct.Reg* %6321, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %6322 to i64*
  %6323 = load i64, i64* %RBP.i202
  %6324 = sub i64 %6323, 104
  %6325 = load i64, i64* %PC.i200
  %6326 = add i64 %6325, 3
  store i64 %6326, i64* %PC.i200
  %6327 = inttoptr i64 %6324 to i32*
  %6328 = load i32, i32* %6327
  %6329 = zext i32 %6328 to i64
  store i64 %6329, i64* %RDX.i201, align 8
  store %struct.Memory* %loadMem_4048a4, %struct.Memory** %MEMORY
  %loadMem_4048a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6331 = getelementptr inbounds %struct.GPR, %struct.GPR* %6330, i32 0, i32 33
  %6332 = getelementptr inbounds %struct.Reg, %struct.Reg* %6331, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %6332 to i64*
  %6333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6334 = getelementptr inbounds %struct.GPR, %struct.GPR* %6333, i32 0, i32 7
  %6335 = getelementptr inbounds %struct.Reg, %struct.Reg* %6334, i32 0, i32 0
  %EDX.i198 = bitcast %union.anon* %6335 to i32*
  %6336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6337 = getelementptr inbounds %struct.GPR, %struct.GPR* %6336, i32 0, i32 9
  %6338 = getelementptr inbounds %struct.Reg, %struct.Reg* %6337, i32 0, i32 0
  %RSI.i199 = bitcast %union.anon* %6338 to i64*
  %6339 = load i32, i32* %EDX.i198
  %6340 = zext i32 %6339 to i64
  %6341 = load i64, i64* %PC.i197
  %6342 = add i64 %6341, 2
  store i64 %6342, i64* %PC.i197
  %6343 = and i64 %6340, 4294967295
  store i64 %6343, i64* %RSI.i199, align 8
  store %struct.Memory* %loadMem_4048a7, %struct.Memory** %MEMORY
  %loadMem_4048a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6345 = getelementptr inbounds %struct.GPR, %struct.GPR* %6344, i32 0, i32 33
  %6346 = getelementptr inbounds %struct.Reg, %struct.Reg* %6345, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %6346 to i64*
  %6347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6348 = getelementptr inbounds %struct.GPR, %struct.GPR* %6347, i32 0, i32 9
  %6349 = getelementptr inbounds %struct.Reg, %struct.Reg* %6348, i32 0, i32 0
  %RSI.i196 = bitcast %union.anon* %6349 to i64*
  %6350 = load i64, i64* %RSI.i196
  %6351 = load i64, i64* %PC.i195
  %6352 = add i64 %6351, 3
  store i64 %6352, i64* %PC.i195
  %6353 = trunc i64 %6350 to i32
  %6354 = add i32 1, %6353
  %6355 = zext i32 %6354 to i64
  store i64 %6355, i64* %RSI.i196, align 8
  %6356 = icmp ult i32 %6354, %6353
  %6357 = icmp ult i32 %6354, 1
  %6358 = or i1 %6356, %6357
  %6359 = zext i1 %6358 to i8
  %6360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6359, i8* %6360, align 1
  %6361 = and i32 %6354, 255
  %6362 = call i32 @llvm.ctpop.i32(i32 %6361)
  %6363 = trunc i32 %6362 to i8
  %6364 = and i8 %6363, 1
  %6365 = xor i8 %6364, 1
  %6366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6365, i8* %6366, align 1
  %6367 = xor i64 1, %6350
  %6368 = trunc i64 %6367 to i32
  %6369 = xor i32 %6368, %6354
  %6370 = lshr i32 %6369, 4
  %6371 = trunc i32 %6370 to i8
  %6372 = and i8 %6371, 1
  %6373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6372, i8* %6373, align 1
  %6374 = icmp eq i32 %6354, 0
  %6375 = zext i1 %6374 to i8
  %6376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6375, i8* %6376, align 1
  %6377 = lshr i32 %6354, 31
  %6378 = trunc i32 %6377 to i8
  %6379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6378, i8* %6379, align 1
  %6380 = lshr i32 %6353, 31
  %6381 = xor i32 %6377, %6380
  %6382 = add i32 %6381, %6377
  %6383 = icmp eq i32 %6382, 2
  %6384 = zext i1 %6383 to i8
  %6385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6384, i8* %6385, align 1
  store %struct.Memory* %loadMem_4048a9, %struct.Memory** %MEMORY
  %loadMem_4048ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %6386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6387 = getelementptr inbounds %struct.GPR, %struct.GPR* %6386, i32 0, i32 33
  %6388 = getelementptr inbounds %struct.Reg, %struct.Reg* %6387, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %6388 to i64*
  %6389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6390 = getelementptr inbounds %struct.GPR, %struct.GPR* %6389, i32 0, i32 9
  %6391 = getelementptr inbounds %struct.Reg, %struct.Reg* %6390, i32 0, i32 0
  %ESI.i193 = bitcast %union.anon* %6391 to i32*
  %6392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6393 = getelementptr inbounds %struct.GPR, %struct.GPR* %6392, i32 0, i32 15
  %6394 = getelementptr inbounds %struct.Reg, %struct.Reg* %6393, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %6394 to i64*
  %6395 = load i64, i64* %RBP.i194
  %6396 = sub i64 %6395, 104
  %6397 = load i32, i32* %ESI.i193
  %6398 = zext i32 %6397 to i64
  %6399 = load i64, i64* %PC.i192
  %6400 = add i64 %6399, 3
  store i64 %6400, i64* %PC.i192
  %6401 = inttoptr i64 %6396 to i32*
  store i32 %6397, i32* %6401
  store %struct.Memory* %loadMem_4048ac, %struct.Memory** %MEMORY
  %loadMem_4048af = load %struct.Memory*, %struct.Memory** %MEMORY
  %6402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6403 = getelementptr inbounds %struct.GPR, %struct.GPR* %6402, i32 0, i32 33
  %6404 = getelementptr inbounds %struct.Reg, %struct.Reg* %6403, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %6404 to i64*
  %6405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6406 = getelementptr inbounds %struct.GPR, %struct.GPR* %6405, i32 0, i32 7
  %6407 = getelementptr inbounds %struct.Reg, %struct.Reg* %6406, i32 0, i32 0
  %EDX.i190 = bitcast %union.anon* %6407 to i32*
  %6408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6409 = getelementptr inbounds %struct.GPR, %struct.GPR* %6408, i32 0, i32 5
  %6410 = getelementptr inbounds %struct.Reg, %struct.Reg* %6409, i32 0, i32 0
  %RCX.i191 = bitcast %union.anon* %6410 to i64*
  %6411 = load i32, i32* %EDX.i190
  %6412 = zext i32 %6411 to i64
  %6413 = load i64, i64* %PC.i189
  %6414 = add i64 %6413, 3
  store i64 %6414, i64* %PC.i189
  %6415 = shl i64 %6412, 32
  %6416 = ashr exact i64 %6415, 32
  store i64 %6416, i64* %RCX.i191, align 8
  store %struct.Memory* %loadMem_4048af, %struct.Memory** %MEMORY
  %loadMem_4048b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6418 = getelementptr inbounds %struct.GPR, %struct.GPR* %6417, i32 0, i32 33
  %6419 = getelementptr inbounds %struct.Reg, %struct.Reg* %6418, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %6419 to i64*
  %6420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6421 = getelementptr inbounds %struct.GPR, %struct.GPR* %6420, i32 0, i32 11
  %6422 = getelementptr inbounds %struct.Reg, %struct.Reg* %6421, i32 0, i32 0
  %6423 = bitcast %union.anon* %6422 to %struct.anon.2*
  %DIL.i186 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6423, i32 0, i32 0
  %6424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6425 = getelementptr inbounds %struct.GPR, %struct.GPR* %6424, i32 0, i32 1
  %6426 = getelementptr inbounds %struct.Reg, %struct.Reg* %6425, i32 0, i32 0
  %RAX.i187 = bitcast %union.anon* %6426 to i64*
  %6427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6428 = getelementptr inbounds %struct.GPR, %struct.GPR* %6427, i32 0, i32 5
  %6429 = getelementptr inbounds %struct.Reg, %struct.Reg* %6428, i32 0, i32 0
  %RCX.i188 = bitcast %union.anon* %6429 to i64*
  %6430 = load i64, i64* %RAX.i187
  %6431 = load i64, i64* %RCX.i188
  %6432 = add i64 %6431, %6430
  %6433 = load i64, i64* %PC.i185
  %6434 = add i64 %6433, 4
  store i64 %6434, i64* %PC.i185
  %6435 = inttoptr i64 %6432 to i8*
  %6436 = load i8, i8* %6435
  store i8 %6436, i8* %DIL.i186, align 1
  store %struct.Memory* %loadMem_4048b2, %struct.Memory** %MEMORY
  %loadMem_4048b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6438 = getelementptr inbounds %struct.GPR, %struct.GPR* %6437, i32 0, i32 33
  %6439 = getelementptr inbounds %struct.Reg, %struct.Reg* %6438, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %6439 to i64*
  %6440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6441 = getelementptr inbounds %struct.GPR, %struct.GPR* %6440, i32 0, i32 1
  %6442 = getelementptr inbounds %struct.Reg, %struct.Reg* %6441, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %6442 to i64*
  %6443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6444 = getelementptr inbounds %struct.GPR, %struct.GPR* %6443, i32 0, i32 15
  %6445 = getelementptr inbounds %struct.Reg, %struct.Reg* %6444, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %6445 to i64*
  %6446 = load i64, i64* %RBP.i184
  %6447 = sub i64 %6446, 56
  %6448 = load i64, i64* %PC.i182
  %6449 = add i64 %6448, 4
  store i64 %6449, i64* %PC.i182
  %6450 = inttoptr i64 %6447 to i64*
  %6451 = load i64, i64* %6450
  store i64 %6451, i64* %RAX.i183, align 8
  store %struct.Memory* %loadMem_4048b6, %struct.Memory** %MEMORY
  %loadMem_4048ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %6452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6453 = getelementptr inbounds %struct.GPR, %struct.GPR* %6452, i32 0, i32 33
  %6454 = getelementptr inbounds %struct.Reg, %struct.Reg* %6453, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %6454 to i64*
  %6455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6456 = getelementptr inbounds %struct.GPR, %struct.GPR* %6455, i32 0, i32 5
  %6457 = getelementptr inbounds %struct.Reg, %struct.Reg* %6456, i32 0, i32 0
  %RCX.i180 = bitcast %union.anon* %6457 to i64*
  %6458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6459 = getelementptr inbounds %struct.GPR, %struct.GPR* %6458, i32 0, i32 15
  %6460 = getelementptr inbounds %struct.Reg, %struct.Reg* %6459, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %6460 to i64*
  %6461 = load i64, i64* %RBP.i181
  %6462 = sub i64 %6461, 108
  %6463 = load i64, i64* %PC.i179
  %6464 = add i64 %6463, 4
  store i64 %6464, i64* %PC.i179
  %6465 = inttoptr i64 %6462 to i32*
  %6466 = load i32, i32* %6465
  %6467 = sext i32 %6466 to i64
  store i64 %6467, i64* %RCX.i180, align 8
  store %struct.Memory* %loadMem_4048ba, %struct.Memory** %MEMORY
  %loadMem_4048be = load %struct.Memory*, %struct.Memory** %MEMORY
  %6468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6469 = getelementptr inbounds %struct.GPR, %struct.GPR* %6468, i32 0, i32 33
  %6470 = getelementptr inbounds %struct.Reg, %struct.Reg* %6469, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %6470 to i64*
  %6471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6472 = getelementptr inbounds %struct.GPR, %struct.GPR* %6471, i32 0, i32 1
  %6473 = getelementptr inbounds %struct.Reg, %struct.Reg* %6472, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %6473 to i64*
  %6474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6475 = getelementptr inbounds %struct.GPR, %struct.GPR* %6474, i32 0, i32 5
  %6476 = getelementptr inbounds %struct.Reg, %struct.Reg* %6475, i32 0, i32 0
  %RCX.i178 = bitcast %union.anon* %6476 to i64*
  %6477 = load i64, i64* %RAX.i177
  %6478 = load i64, i64* %RCX.i178
  %6479 = mul i64 %6478, 8
  %6480 = add i64 %6479, %6477
  %6481 = load i64, i64* %PC.i176
  %6482 = add i64 %6481, 4
  store i64 %6482, i64* %PC.i176
  %6483 = inttoptr i64 %6480 to i64*
  %6484 = load i64, i64* %6483
  store i64 %6484, i64* %RAX.i177, align 8
  store %struct.Memory* %loadMem_4048be, %struct.Memory** %MEMORY
  %loadMem_4048c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6486 = getelementptr inbounds %struct.GPR, %struct.GPR* %6485, i32 0, i32 33
  %6487 = getelementptr inbounds %struct.Reg, %struct.Reg* %6486, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %6487 to i64*
  %6488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6489 = getelementptr inbounds %struct.GPR, %struct.GPR* %6488, i32 0, i32 7
  %6490 = getelementptr inbounds %struct.Reg, %struct.Reg* %6489, i32 0, i32 0
  %RDX.i174 = bitcast %union.anon* %6490 to i64*
  %6491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6492 = getelementptr inbounds %struct.GPR, %struct.GPR* %6491, i32 0, i32 15
  %6493 = getelementptr inbounds %struct.Reg, %struct.Reg* %6492, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %6493 to i64*
  %6494 = load i64, i64* %RBP.i175
  %6495 = sub i64 %6494, 100
  %6496 = load i64, i64* %PC.i173
  %6497 = add i64 %6496, 3
  store i64 %6497, i64* %PC.i173
  %6498 = inttoptr i64 %6495 to i32*
  %6499 = load i32, i32* %6498
  %6500 = zext i32 %6499 to i64
  store i64 %6500, i64* %RDX.i174, align 8
  store %struct.Memory* %loadMem_4048c2, %struct.Memory** %MEMORY
  %loadMem_4048c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6502 = getelementptr inbounds %struct.GPR, %struct.GPR* %6501, i32 0, i32 33
  %6503 = getelementptr inbounds %struct.Reg, %struct.Reg* %6502, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %6503 to i64*
  %6504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6505 = getelementptr inbounds %struct.GPR, %struct.GPR* %6504, i32 0, i32 7
  %6506 = getelementptr inbounds %struct.Reg, %struct.Reg* %6505, i32 0, i32 0
  %EDX.i171 = bitcast %union.anon* %6506 to i32*
  %6507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6508 = getelementptr inbounds %struct.GPR, %struct.GPR* %6507, i32 0, i32 9
  %6509 = getelementptr inbounds %struct.Reg, %struct.Reg* %6508, i32 0, i32 0
  %RSI.i172 = bitcast %union.anon* %6509 to i64*
  %6510 = load i32, i32* %EDX.i171
  %6511 = zext i32 %6510 to i64
  %6512 = load i64, i64* %PC.i170
  %6513 = add i64 %6512, 2
  store i64 %6513, i64* %PC.i170
  %6514 = and i64 %6511, 4294967295
  store i64 %6514, i64* %RSI.i172, align 8
  store %struct.Memory* %loadMem_4048c5, %struct.Memory** %MEMORY
  %loadMem_4048c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6516 = getelementptr inbounds %struct.GPR, %struct.GPR* %6515, i32 0, i32 33
  %6517 = getelementptr inbounds %struct.Reg, %struct.Reg* %6516, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %6517 to i64*
  %6518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6519 = getelementptr inbounds %struct.GPR, %struct.GPR* %6518, i32 0, i32 9
  %6520 = getelementptr inbounds %struct.Reg, %struct.Reg* %6519, i32 0, i32 0
  %RSI.i169 = bitcast %union.anon* %6520 to i64*
  %6521 = load i64, i64* %RSI.i169
  %6522 = load i64, i64* %PC.i168
  %6523 = add i64 %6522, 3
  store i64 %6523, i64* %PC.i168
  %6524 = trunc i64 %6521 to i32
  %6525 = add i32 1, %6524
  %6526 = zext i32 %6525 to i64
  store i64 %6526, i64* %RSI.i169, align 8
  %6527 = icmp ult i32 %6525, %6524
  %6528 = icmp ult i32 %6525, 1
  %6529 = or i1 %6527, %6528
  %6530 = zext i1 %6529 to i8
  %6531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6530, i8* %6531, align 1
  %6532 = and i32 %6525, 255
  %6533 = call i32 @llvm.ctpop.i32(i32 %6532)
  %6534 = trunc i32 %6533 to i8
  %6535 = and i8 %6534, 1
  %6536 = xor i8 %6535, 1
  %6537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6536, i8* %6537, align 1
  %6538 = xor i64 1, %6521
  %6539 = trunc i64 %6538 to i32
  %6540 = xor i32 %6539, %6525
  %6541 = lshr i32 %6540, 4
  %6542 = trunc i32 %6541 to i8
  %6543 = and i8 %6542, 1
  %6544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6543, i8* %6544, align 1
  %6545 = icmp eq i32 %6525, 0
  %6546 = zext i1 %6545 to i8
  %6547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6546, i8* %6547, align 1
  %6548 = lshr i32 %6525, 31
  %6549 = trunc i32 %6548 to i8
  %6550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6549, i8* %6550, align 1
  %6551 = lshr i32 %6524, 31
  %6552 = xor i32 %6548, %6551
  %6553 = add i32 %6552, %6548
  %6554 = icmp eq i32 %6553, 2
  %6555 = zext i1 %6554 to i8
  %6556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6555, i8* %6556, align 1
  store %struct.Memory* %loadMem_4048c7, %struct.Memory** %MEMORY
  %loadMem_4048ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %6557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6558 = getelementptr inbounds %struct.GPR, %struct.GPR* %6557, i32 0, i32 33
  %6559 = getelementptr inbounds %struct.Reg, %struct.Reg* %6558, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %6559 to i64*
  %6560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6561 = getelementptr inbounds %struct.GPR, %struct.GPR* %6560, i32 0, i32 9
  %6562 = getelementptr inbounds %struct.Reg, %struct.Reg* %6561, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %6562 to i32*
  %6563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6564 = getelementptr inbounds %struct.GPR, %struct.GPR* %6563, i32 0, i32 15
  %6565 = getelementptr inbounds %struct.Reg, %struct.Reg* %6564, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %6565 to i64*
  %6566 = load i64, i64* %RBP.i167
  %6567 = sub i64 %6566, 100
  %6568 = load i32, i32* %ESI.i
  %6569 = zext i32 %6568 to i64
  %6570 = load i64, i64* %PC.i166
  %6571 = add i64 %6570, 3
  store i64 %6571, i64* %PC.i166
  %6572 = inttoptr i64 %6567 to i32*
  store i32 %6568, i32* %6572
  store %struct.Memory* %loadMem_4048ca, %struct.Memory** %MEMORY
  %loadMem_4048cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6574 = getelementptr inbounds %struct.GPR, %struct.GPR* %6573, i32 0, i32 33
  %6575 = getelementptr inbounds %struct.Reg, %struct.Reg* %6574, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %6575 to i64*
  %6576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6577 = getelementptr inbounds %struct.GPR, %struct.GPR* %6576, i32 0, i32 7
  %6578 = getelementptr inbounds %struct.Reg, %struct.Reg* %6577, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %6578 to i32*
  %6579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6580 = getelementptr inbounds %struct.GPR, %struct.GPR* %6579, i32 0, i32 5
  %6581 = getelementptr inbounds %struct.Reg, %struct.Reg* %6580, i32 0, i32 0
  %RCX.i165 = bitcast %union.anon* %6581 to i64*
  %6582 = load i32, i32* %EDX.i
  %6583 = zext i32 %6582 to i64
  %6584 = load i64, i64* %PC.i164
  %6585 = add i64 %6584, 3
  store i64 %6585, i64* %PC.i164
  %6586 = shl i64 %6583, 32
  %6587 = ashr exact i64 %6586, 32
  store i64 %6587, i64* %RCX.i165, align 8
  store %struct.Memory* %loadMem_4048cd, %struct.Memory** %MEMORY
  %loadMem_4048d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6589 = getelementptr inbounds %struct.GPR, %struct.GPR* %6588, i32 0, i32 33
  %6590 = getelementptr inbounds %struct.Reg, %struct.Reg* %6589, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %6590 to i64*
  %6591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6592 = getelementptr inbounds %struct.GPR, %struct.GPR* %6591, i32 0, i32 11
  %6593 = getelementptr inbounds %struct.Reg, %struct.Reg* %6592, i32 0, i32 0
  %6594 = bitcast %union.anon* %6593 to %struct.anon.2*
  %DIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6594, i32 0, i32 0
  %6595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6596 = getelementptr inbounds %struct.GPR, %struct.GPR* %6595, i32 0, i32 1
  %6597 = getelementptr inbounds %struct.Reg, %struct.Reg* %6596, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %6597 to i64*
  %6598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6599 = getelementptr inbounds %struct.GPR, %struct.GPR* %6598, i32 0, i32 5
  %6600 = getelementptr inbounds %struct.Reg, %struct.Reg* %6599, i32 0, i32 0
  %RCX.i163 = bitcast %union.anon* %6600 to i64*
  %6601 = load i64, i64* %RAX.i162
  %6602 = load i64, i64* %RCX.i163
  %6603 = add i64 %6602, %6601
  %6604 = load i8, i8* %DIL.i
  %6605 = zext i8 %6604 to i64
  %6606 = load i64, i64* %PC.i161
  %6607 = add i64 %6606, 4
  store i64 %6607, i64* %PC.i161
  %6608 = inttoptr i64 %6603 to i8*
  store i8 %6604, i8* %6608
  store %struct.Memory* %loadMem_4048d0, %struct.Memory** %MEMORY
  br label %block_.L_4048d4

block_.L_4048d4:                                  ; preds = %block_404898, %block_.L_40488c
  %loadMem_4048d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6610 = getelementptr inbounds %struct.GPR, %struct.GPR* %6609, i32 0, i32 33
  %6611 = getelementptr inbounds %struct.Reg, %struct.Reg* %6610, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %6611 to i64*
  %6612 = load i64, i64* %PC.i160
  %6613 = add i64 %6612, 5
  %6614 = load i64, i64* %PC.i160
  %6615 = add i64 %6614, 5
  store i64 %6615, i64* %PC.i160
  %6616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6613, i64* %6616, align 8
  store %struct.Memory* %loadMem_4048d4, %struct.Memory** %MEMORY
  br label %block_.L_4048d9

block_.L_4048d9:                                  ; preds = %block_.L_4048d4
  %loadMem_4048d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6618 = getelementptr inbounds %struct.GPR, %struct.GPR* %6617, i32 0, i32 33
  %6619 = getelementptr inbounds %struct.Reg, %struct.Reg* %6618, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %6619 to i64*
  %6620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6621 = getelementptr inbounds %struct.GPR, %struct.GPR* %6620, i32 0, i32 1
  %6622 = getelementptr inbounds %struct.Reg, %struct.Reg* %6621, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %6622 to i64*
  %6623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6624 = getelementptr inbounds %struct.GPR, %struct.GPR* %6623, i32 0, i32 15
  %6625 = getelementptr inbounds %struct.Reg, %struct.Reg* %6624, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %6625 to i64*
  %6626 = load i64, i64* %RBP.i159
  %6627 = sub i64 %6626, 112
  %6628 = load i64, i64* %PC.i157
  %6629 = add i64 %6628, 3
  store i64 %6629, i64* %PC.i157
  %6630 = inttoptr i64 %6627 to i32*
  %6631 = load i32, i32* %6630
  %6632 = zext i32 %6631 to i64
  store i64 %6632, i64* %RAX.i158, align 8
  store %struct.Memory* %loadMem_4048d9, %struct.Memory** %MEMORY
  %loadMem_4048dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6634 = getelementptr inbounds %struct.GPR, %struct.GPR* %6633, i32 0, i32 33
  %6635 = getelementptr inbounds %struct.Reg, %struct.Reg* %6634, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %6635 to i64*
  %6636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6637 = getelementptr inbounds %struct.GPR, %struct.GPR* %6636, i32 0, i32 1
  %6638 = getelementptr inbounds %struct.Reg, %struct.Reg* %6637, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %6638 to i64*
  %6639 = load i64, i64* %RAX.i156
  %6640 = load i64, i64* %PC.i155
  %6641 = add i64 %6640, 3
  store i64 %6641, i64* %PC.i155
  %6642 = trunc i64 %6639 to i32
  %6643 = add i32 1, %6642
  %6644 = zext i32 %6643 to i64
  store i64 %6644, i64* %RAX.i156, align 8
  %6645 = icmp ult i32 %6643, %6642
  %6646 = icmp ult i32 %6643, 1
  %6647 = or i1 %6645, %6646
  %6648 = zext i1 %6647 to i8
  %6649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6648, i8* %6649, align 1
  %6650 = and i32 %6643, 255
  %6651 = call i32 @llvm.ctpop.i32(i32 %6650)
  %6652 = trunc i32 %6651 to i8
  %6653 = and i8 %6652, 1
  %6654 = xor i8 %6653, 1
  %6655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6654, i8* %6655, align 1
  %6656 = xor i64 1, %6639
  %6657 = trunc i64 %6656 to i32
  %6658 = xor i32 %6657, %6643
  %6659 = lshr i32 %6658, 4
  %6660 = trunc i32 %6659 to i8
  %6661 = and i8 %6660, 1
  %6662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6661, i8* %6662, align 1
  %6663 = icmp eq i32 %6643, 0
  %6664 = zext i1 %6663 to i8
  %6665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6664, i8* %6665, align 1
  %6666 = lshr i32 %6643, 31
  %6667 = trunc i32 %6666 to i8
  %6668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6667, i8* %6668, align 1
  %6669 = lshr i32 %6642, 31
  %6670 = xor i32 %6666, %6669
  %6671 = add i32 %6670, %6666
  %6672 = icmp eq i32 %6671, 2
  %6673 = zext i1 %6672 to i8
  %6674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6673, i8* %6674, align 1
  store %struct.Memory* %loadMem_4048dc, %struct.Memory** %MEMORY
  %loadMem_4048df = load %struct.Memory*, %struct.Memory** %MEMORY
  %6675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6676 = getelementptr inbounds %struct.GPR, %struct.GPR* %6675, i32 0, i32 33
  %6677 = getelementptr inbounds %struct.Reg, %struct.Reg* %6676, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %6677 to i64*
  %6678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6679 = getelementptr inbounds %struct.GPR, %struct.GPR* %6678, i32 0, i32 1
  %6680 = getelementptr inbounds %struct.Reg, %struct.Reg* %6679, i32 0, i32 0
  %EAX.i153 = bitcast %union.anon* %6680 to i32*
  %6681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6682 = getelementptr inbounds %struct.GPR, %struct.GPR* %6681, i32 0, i32 15
  %6683 = getelementptr inbounds %struct.Reg, %struct.Reg* %6682, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %6683 to i64*
  %6684 = load i64, i64* %RBP.i154
  %6685 = sub i64 %6684, 112
  %6686 = load i32, i32* %EAX.i153
  %6687 = zext i32 %6686 to i64
  %6688 = load i64, i64* %PC.i152
  %6689 = add i64 %6688, 3
  store i64 %6689, i64* %PC.i152
  %6690 = inttoptr i64 %6685 to i32*
  store i32 %6686, i32* %6690
  store %struct.Memory* %loadMem_4048df, %struct.Memory** %MEMORY
  %loadMem_4048e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6692 = getelementptr inbounds %struct.GPR, %struct.GPR* %6691, i32 0, i32 33
  %6693 = getelementptr inbounds %struct.Reg, %struct.Reg* %6692, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %6693 to i64*
  %6694 = load i64, i64* %PC.i151
  %6695 = add i64 %6694, -276
  %6696 = load i64, i64* %PC.i151
  %6697 = add i64 %6696, 5
  store i64 %6697, i64* %PC.i151
  %6698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6695, i64* %6698, align 8
  store %struct.Memory* %loadMem_4048e2, %struct.Memory** %MEMORY
  br label %block_.L_4047ce

block_.L_4048e7:                                  ; preds = %block_.L_4047ce
  %loadMem_4048e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6700 = getelementptr inbounds %struct.GPR, %struct.GPR* %6699, i32 0, i32 33
  %6701 = getelementptr inbounds %struct.Reg, %struct.Reg* %6700, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %6701 to i64*
  %6702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6703 = getelementptr inbounds %struct.GPR, %struct.GPR* %6702, i32 0, i32 1
  %6704 = getelementptr inbounds %struct.Reg, %struct.Reg* %6703, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %6704 to i64*
  %6705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6706 = getelementptr inbounds %struct.GPR, %struct.GPR* %6705, i32 0, i32 15
  %6707 = getelementptr inbounds %struct.Reg, %struct.Reg* %6706, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %6707 to i64*
  %6708 = load i64, i64* %RBP.i150
  %6709 = sub i64 %6708, 56
  %6710 = load i64, i64* %PC.i148
  %6711 = add i64 %6710, 4
  store i64 %6711, i64* %PC.i148
  %6712 = inttoptr i64 %6709 to i64*
  %6713 = load i64, i64* %6712
  store i64 %6713, i64* %RAX.i149, align 8
  store %struct.Memory* %loadMem_4048e7, %struct.Memory** %MEMORY
  %loadMem_4048eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6715 = getelementptr inbounds %struct.GPR, %struct.GPR* %6714, i32 0, i32 33
  %6716 = getelementptr inbounds %struct.Reg, %struct.Reg* %6715, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %6716 to i64*
  %6717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6718 = getelementptr inbounds %struct.GPR, %struct.GPR* %6717, i32 0, i32 5
  %6719 = getelementptr inbounds %struct.Reg, %struct.Reg* %6718, i32 0, i32 0
  %RCX.i146 = bitcast %union.anon* %6719 to i64*
  %6720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6721 = getelementptr inbounds %struct.GPR, %struct.GPR* %6720, i32 0, i32 15
  %6722 = getelementptr inbounds %struct.Reg, %struct.Reg* %6721, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %6722 to i64*
  %6723 = load i64, i64* %RBP.i147
  %6724 = sub i64 %6723, 108
  %6725 = load i64, i64* %PC.i145
  %6726 = add i64 %6725, 4
  store i64 %6726, i64* %PC.i145
  %6727 = inttoptr i64 %6724 to i32*
  %6728 = load i32, i32* %6727
  %6729 = sext i32 %6728 to i64
  store i64 %6729, i64* %RCX.i146, align 8
  store %struct.Memory* %loadMem_4048eb, %struct.Memory** %MEMORY
  %loadMem_4048ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %6730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6731 = getelementptr inbounds %struct.GPR, %struct.GPR* %6730, i32 0, i32 33
  %6732 = getelementptr inbounds %struct.Reg, %struct.Reg* %6731, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %6732 to i64*
  %6733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6734 = getelementptr inbounds %struct.GPR, %struct.GPR* %6733, i32 0, i32 1
  %6735 = getelementptr inbounds %struct.Reg, %struct.Reg* %6734, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %6735 to i64*
  %6736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6737 = getelementptr inbounds %struct.GPR, %struct.GPR* %6736, i32 0, i32 5
  %6738 = getelementptr inbounds %struct.Reg, %struct.Reg* %6737, i32 0, i32 0
  %RCX.i144 = bitcast %union.anon* %6738 to i64*
  %6739 = load i64, i64* %RAX.i143
  %6740 = load i64, i64* %RCX.i144
  %6741 = mul i64 %6740, 8
  %6742 = add i64 %6741, %6739
  %6743 = load i64, i64* %PC.i142
  %6744 = add i64 %6743, 4
  store i64 %6744, i64* %PC.i142
  %6745 = inttoptr i64 %6742 to i64*
  %6746 = load i64, i64* %6745
  store i64 %6746, i64* %RAX.i143, align 8
  store %struct.Memory* %loadMem_4048ef, %struct.Memory** %MEMORY
  %loadMem_4048f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6748 = getelementptr inbounds %struct.GPR, %struct.GPR* %6747, i32 0, i32 33
  %6749 = getelementptr inbounds %struct.Reg, %struct.Reg* %6748, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %6749 to i64*
  %6750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6751 = getelementptr inbounds %struct.GPR, %struct.GPR* %6750, i32 0, i32 5
  %6752 = getelementptr inbounds %struct.Reg, %struct.Reg* %6751, i32 0, i32 0
  %RCX.i140 = bitcast %union.anon* %6752 to i64*
  %6753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6754 = getelementptr inbounds %struct.GPR, %struct.GPR* %6753, i32 0, i32 15
  %6755 = getelementptr inbounds %struct.Reg, %struct.Reg* %6754, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %6755 to i64*
  %6756 = load i64, i64* %RBP.i141
  %6757 = sub i64 %6756, 60
  %6758 = load i64, i64* %PC.i139
  %6759 = add i64 %6758, 4
  store i64 %6759, i64* %PC.i139
  %6760 = inttoptr i64 %6757 to i32*
  %6761 = load i32, i32* %6760
  %6762 = sext i32 %6761 to i64
  store i64 %6762, i64* %RCX.i140, align 8
  store %struct.Memory* %loadMem_4048f3, %struct.Memory** %MEMORY
  %loadMem_4048f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6764 = getelementptr inbounds %struct.GPR, %struct.GPR* %6763, i32 0, i32 33
  %6765 = getelementptr inbounds %struct.Reg, %struct.Reg* %6764, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %6765 to i64*
  %6766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6767 = getelementptr inbounds %struct.GPR, %struct.GPR* %6766, i32 0, i32 1
  %6768 = getelementptr inbounds %struct.Reg, %struct.Reg* %6767, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %6768 to i64*
  %6769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6770 = getelementptr inbounds %struct.GPR, %struct.GPR* %6769, i32 0, i32 5
  %6771 = getelementptr inbounds %struct.Reg, %struct.Reg* %6770, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %6771 to i64*
  %6772 = load i64, i64* %RAX.i137
  %6773 = load i64, i64* %RCX.i138
  %6774 = add i64 %6773, %6772
  %6775 = load i64, i64* %PC.i136
  %6776 = add i64 %6775, 4
  store i64 %6776, i64* %PC.i136
  %6777 = inttoptr i64 %6774 to i8*
  store i8 0, i8* %6777
  store %struct.Memory* %loadMem_4048f7, %struct.Memory** %MEMORY
  %loadMem_4048fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6779 = getelementptr inbounds %struct.GPR, %struct.GPR* %6778, i32 0, i32 33
  %6780 = getelementptr inbounds %struct.Reg, %struct.Reg* %6779, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %6780 to i64*
  %6781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6782 = getelementptr inbounds %struct.GPR, %struct.GPR* %6781, i32 0, i32 1
  %6783 = getelementptr inbounds %struct.Reg, %struct.Reg* %6782, i32 0, i32 0
  %RAX.i134 = bitcast %union.anon* %6783 to i64*
  %6784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6785 = getelementptr inbounds %struct.GPR, %struct.GPR* %6784, i32 0, i32 15
  %6786 = getelementptr inbounds %struct.Reg, %struct.Reg* %6785, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %6786 to i64*
  %6787 = load i64, i64* %RBP.i135
  %6788 = sub i64 %6787, 108
  %6789 = load i64, i64* %PC.i133
  %6790 = add i64 %6789, 3
  store i64 %6790, i64* %PC.i133
  %6791 = inttoptr i64 %6788 to i32*
  %6792 = load i32, i32* %6791
  %6793 = zext i32 %6792 to i64
  store i64 %6793, i64* %RAX.i134, align 8
  store %struct.Memory* %loadMem_4048fb, %struct.Memory** %MEMORY
  %loadMem_4048fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %6794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6795 = getelementptr inbounds %struct.GPR, %struct.GPR* %6794, i32 0, i32 33
  %6796 = getelementptr inbounds %struct.Reg, %struct.Reg* %6795, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %6796 to i64*
  %6797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6798 = getelementptr inbounds %struct.GPR, %struct.GPR* %6797, i32 0, i32 1
  %6799 = getelementptr inbounds %struct.Reg, %struct.Reg* %6798, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %6799 to i64*
  %6800 = load i64, i64* %RAX.i132
  %6801 = load i64, i64* %PC.i131
  %6802 = add i64 %6801, 3
  store i64 %6802, i64* %PC.i131
  %6803 = trunc i64 %6800 to i32
  %6804 = add i32 1, %6803
  %6805 = zext i32 %6804 to i64
  store i64 %6805, i64* %RAX.i132, align 8
  %6806 = icmp ult i32 %6804, %6803
  %6807 = icmp ult i32 %6804, 1
  %6808 = or i1 %6806, %6807
  %6809 = zext i1 %6808 to i8
  %6810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6809, i8* %6810, align 1
  %6811 = and i32 %6804, 255
  %6812 = call i32 @llvm.ctpop.i32(i32 %6811)
  %6813 = trunc i32 %6812 to i8
  %6814 = and i8 %6813, 1
  %6815 = xor i8 %6814, 1
  %6816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6815, i8* %6816, align 1
  %6817 = xor i64 1, %6800
  %6818 = trunc i64 %6817 to i32
  %6819 = xor i32 %6818, %6804
  %6820 = lshr i32 %6819, 4
  %6821 = trunc i32 %6820 to i8
  %6822 = and i8 %6821, 1
  %6823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6822, i8* %6823, align 1
  %6824 = icmp eq i32 %6804, 0
  %6825 = zext i1 %6824 to i8
  %6826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6825, i8* %6826, align 1
  %6827 = lshr i32 %6804, 31
  %6828 = trunc i32 %6827 to i8
  %6829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6828, i8* %6829, align 1
  %6830 = lshr i32 %6803, 31
  %6831 = xor i32 %6827, %6830
  %6832 = add i32 %6831, %6827
  %6833 = icmp eq i32 %6832, 2
  %6834 = zext i1 %6833 to i8
  %6835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6834, i8* %6835, align 1
  store %struct.Memory* %loadMem_4048fe, %struct.Memory** %MEMORY
  %loadMem_404901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6837 = getelementptr inbounds %struct.GPR, %struct.GPR* %6836, i32 0, i32 33
  %6838 = getelementptr inbounds %struct.Reg, %struct.Reg* %6837, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %6838 to i64*
  %6839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6840 = getelementptr inbounds %struct.GPR, %struct.GPR* %6839, i32 0, i32 1
  %6841 = getelementptr inbounds %struct.Reg, %struct.Reg* %6840, i32 0, i32 0
  %EAX.i129 = bitcast %union.anon* %6841 to i32*
  %6842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6843 = getelementptr inbounds %struct.GPR, %struct.GPR* %6842, i32 0, i32 15
  %6844 = getelementptr inbounds %struct.Reg, %struct.Reg* %6843, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %6844 to i64*
  %6845 = load i64, i64* %RBP.i130
  %6846 = sub i64 %6845, 108
  %6847 = load i32, i32* %EAX.i129
  %6848 = zext i32 %6847 to i64
  %6849 = load i64, i64* %PC.i128
  %6850 = add i64 %6849, 3
  store i64 %6850, i64* %PC.i128
  %6851 = inttoptr i64 %6846 to i32*
  store i32 %6847, i32* %6851
  store %struct.Memory* %loadMem_404901, %struct.Memory** %MEMORY
  %loadMem_404904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6853 = getelementptr inbounds %struct.GPR, %struct.GPR* %6852, i32 0, i32 33
  %6854 = getelementptr inbounds %struct.Reg, %struct.Reg* %6853, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %6854 to i64*
  %6855 = load i64, i64* %PC.i127
  %6856 = add i64 %6855, -343
  %6857 = load i64, i64* %PC.i127
  %6858 = add i64 %6857, 5
  store i64 %6858, i64* %PC.i127
  %6859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6856, i64* %6859, align 8
  store %struct.Memory* %loadMem_404904, %struct.Memory** %MEMORY
  br label %block_.L_4047ad

block_.L_404909:                                  ; preds = %block_.L_4047ad
  %loadMem_404909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6861 = getelementptr inbounds %struct.GPR, %struct.GPR* %6860, i32 0, i32 33
  %6862 = getelementptr inbounds %struct.Reg, %struct.Reg* %6861, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %6862 to i64*
  %6863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6864 = getelementptr inbounds %struct.GPR, %struct.GPR* %6863, i32 0, i32 11
  %6865 = getelementptr inbounds %struct.Reg, %struct.Reg* %6864, i32 0, i32 0
  %RDI.i126 = bitcast %union.anon* %6865 to i64*
  %6866 = load i64, i64* %PC.i125
  %6867 = add i64 %6866, 10
  store i64 %6867, i64* %PC.i125
  store i64 ptrtoint (%G__0x4559fe_type* @G__0x4559fe to i64), i64* %RDI.i126, align 8
  store %struct.Memory* %loadMem_404909, %struct.Memory** %MEMORY
  %loadMem_404913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6869 = getelementptr inbounds %struct.GPR, %struct.GPR* %6868, i32 0, i32 33
  %6870 = getelementptr inbounds %struct.Reg, %struct.Reg* %6869, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %6870 to i64*
  %6871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6872 = getelementptr inbounds %struct.GPR, %struct.GPR* %6871, i32 0, i32 9
  %6873 = getelementptr inbounds %struct.Reg, %struct.Reg* %6872, i32 0, i32 0
  %RSI.i124 = bitcast %union.anon* %6873 to i64*
  %6874 = load i64, i64* %PC.i123
  %6875 = add i64 %6874, 5
  store i64 %6875, i64* %PC.i123
  store i64 603, i64* %RSI.i124, align 8
  store %struct.Memory* %loadMem_404913, %struct.Memory** %MEMORY
  %loadMem_404918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6877 = getelementptr inbounds %struct.GPR, %struct.GPR* %6876, i32 0, i32 33
  %6878 = getelementptr inbounds %struct.Reg, %struct.Reg* %6877, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %6878 to i64*
  %6879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6880 = getelementptr inbounds %struct.GPR, %struct.GPR* %6879, i32 0, i32 1
  %6881 = getelementptr inbounds %struct.Reg, %struct.Reg* %6880, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %6881 to i64*
  %6882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6883 = getelementptr inbounds %struct.GPR, %struct.GPR* %6882, i32 0, i32 15
  %6884 = getelementptr inbounds %struct.Reg, %struct.Reg* %6883, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %6884 to i64*
  %6885 = load i64, i64* %RBP.i122
  %6886 = sub i64 %6885, 48
  %6887 = load i64, i64* %PC.i120
  %6888 = add i64 %6887, 4
  store i64 %6888, i64* %PC.i120
  %6889 = inttoptr i64 %6886 to i64*
  %6890 = load i64, i64* %6889
  store i64 %6890, i64* %RAX.i121, align 8
  store %struct.Memory* %loadMem_404918, %struct.Memory** %MEMORY
  %loadMem_40491c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6892 = getelementptr inbounds %struct.GPR, %struct.GPR* %6891, i32 0, i32 33
  %6893 = getelementptr inbounds %struct.Reg, %struct.Reg* %6892, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %6893 to i64*
  %6894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6895 = getelementptr inbounds %struct.GPR, %struct.GPR* %6894, i32 0, i32 1
  %6896 = getelementptr inbounds %struct.Reg, %struct.Reg* %6895, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %6896 to i64*
  %6897 = load i64, i64* %RAX.i119
  %6898 = load i64, i64* %PC.i118
  %6899 = add i64 %6898, 6
  store i64 %6899, i64* %PC.i118
  %6900 = inttoptr i64 %6897 to i32*
  store i32 0, i32* %6900
  store %struct.Memory* %loadMem_40491c, %struct.Memory** %MEMORY
  %loadMem_404922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6902 = getelementptr inbounds %struct.GPR, %struct.GPR* %6901, i32 0, i32 33
  %6903 = getelementptr inbounds %struct.Reg, %struct.Reg* %6902, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %6903 to i64*
  %6904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6905 = getelementptr inbounds %struct.GPR, %struct.GPR* %6904, i32 0, i32 5
  %6906 = getelementptr inbounds %struct.Reg, %struct.Reg* %6905, i32 0, i32 0
  %RCX.i116 = bitcast %union.anon* %6906 to i64*
  %6907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6908 = getelementptr inbounds %struct.GPR, %struct.GPR* %6907, i32 0, i32 15
  %6909 = getelementptr inbounds %struct.Reg, %struct.Reg* %6908, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %6909 to i64*
  %6910 = load i64, i64* %RBP.i117
  %6911 = sub i64 %6910, 60
  %6912 = load i64, i64* %PC.i115
  %6913 = add i64 %6912, 3
  store i64 %6913, i64* %PC.i115
  %6914 = inttoptr i64 %6911 to i32*
  %6915 = load i32, i32* %6914
  %6916 = zext i32 %6915 to i64
  store i64 %6916, i64* %RCX.i116, align 8
  store %struct.Memory* %loadMem_404922, %struct.Memory** %MEMORY
  %loadMem_404925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6918 = getelementptr inbounds %struct.GPR, %struct.GPR* %6917, i32 0, i32 33
  %6919 = getelementptr inbounds %struct.Reg, %struct.Reg* %6918, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %6919 to i64*
  %6920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6921 = getelementptr inbounds %struct.GPR, %struct.GPR* %6920, i32 0, i32 1
  %6922 = getelementptr inbounds %struct.Reg, %struct.Reg* %6921, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %6922 to i64*
  %6923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6924 = getelementptr inbounds %struct.GPR, %struct.GPR* %6923, i32 0, i32 15
  %6925 = getelementptr inbounds %struct.Reg, %struct.Reg* %6924, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %6925 to i64*
  %6926 = load i64, i64* %RBP.i114
  %6927 = sub i64 %6926, 48
  %6928 = load i64, i64* %PC.i112
  %6929 = add i64 %6928, 4
  store i64 %6929, i64* %PC.i112
  %6930 = inttoptr i64 %6927 to i64*
  %6931 = load i64, i64* %6930
  store i64 %6931, i64* %RAX.i113, align 8
  store %struct.Memory* %loadMem_404925, %struct.Memory** %MEMORY
  %loadMem_404929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6933 = getelementptr inbounds %struct.GPR, %struct.GPR* %6932, i32 0, i32 33
  %6934 = getelementptr inbounds %struct.Reg, %struct.Reg* %6933, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %6934 to i64*
  %6935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6936 = getelementptr inbounds %struct.GPR, %struct.GPR* %6935, i32 0, i32 5
  %6937 = getelementptr inbounds %struct.Reg, %struct.Reg* %6936, i32 0, i32 0
  %ECX.i110 = bitcast %union.anon* %6937 to i32*
  %6938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6939 = getelementptr inbounds %struct.GPR, %struct.GPR* %6938, i32 0, i32 1
  %6940 = getelementptr inbounds %struct.Reg, %struct.Reg* %6939, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %6940 to i64*
  %6941 = load i64, i64* %RAX.i111
  %6942 = add i64 %6941, 4
  %6943 = load i32, i32* %ECX.i110
  %6944 = zext i32 %6943 to i64
  %6945 = load i64, i64* %PC.i109
  %6946 = add i64 %6945, 3
  store i64 %6946, i64* %PC.i109
  %6947 = inttoptr i64 %6942 to i32*
  store i32 %6943, i32* %6947
  store %struct.Memory* %loadMem_404929, %struct.Memory** %MEMORY
  %loadMem_40492c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6949 = getelementptr inbounds %struct.GPR, %struct.GPR* %6948, i32 0, i32 33
  %6950 = getelementptr inbounds %struct.Reg, %struct.Reg* %6949, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %6950 to i64*
  %6951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6952 = getelementptr inbounds %struct.GPR, %struct.GPR* %6951, i32 0, i32 5
  %6953 = getelementptr inbounds %struct.Reg, %struct.Reg* %6952, i32 0, i32 0
  %RCX.i107 = bitcast %union.anon* %6953 to i64*
  %6954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6955 = getelementptr inbounds %struct.GPR, %struct.GPR* %6954, i32 0, i32 15
  %6956 = getelementptr inbounds %struct.Reg, %struct.Reg* %6955, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %6956 to i64*
  %6957 = load i64, i64* %RBP.i108
  %6958 = sub i64 %6957, 20
  %6959 = load i64, i64* %PC.i106
  %6960 = add i64 %6959, 3
  store i64 %6960, i64* %PC.i106
  %6961 = inttoptr i64 %6958 to i32*
  %6962 = load i32, i32* %6961
  %6963 = zext i32 %6962 to i64
  store i64 %6963, i64* %RCX.i107, align 8
  store %struct.Memory* %loadMem_40492c, %struct.Memory** %MEMORY
  %loadMem_40492f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6965 = getelementptr inbounds %struct.GPR, %struct.GPR* %6964, i32 0, i32 33
  %6966 = getelementptr inbounds %struct.Reg, %struct.Reg* %6965, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %6966 to i64*
  %6967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6968 = getelementptr inbounds %struct.GPR, %struct.GPR* %6967, i32 0, i32 1
  %6969 = getelementptr inbounds %struct.Reg, %struct.Reg* %6968, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %6969 to i64*
  %6970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6971 = getelementptr inbounds %struct.GPR, %struct.GPR* %6970, i32 0, i32 15
  %6972 = getelementptr inbounds %struct.Reg, %struct.Reg* %6971, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %6972 to i64*
  %6973 = load i64, i64* %RBP.i105
  %6974 = sub i64 %6973, 48
  %6975 = load i64, i64* %PC.i103
  %6976 = add i64 %6975, 4
  store i64 %6976, i64* %PC.i103
  %6977 = inttoptr i64 %6974 to i64*
  %6978 = load i64, i64* %6977
  store i64 %6978, i64* %RAX.i104, align 8
  store %struct.Memory* %loadMem_40492f, %struct.Memory** %MEMORY
  %loadMem_404933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6980 = getelementptr inbounds %struct.GPR, %struct.GPR* %6979, i32 0, i32 33
  %6981 = getelementptr inbounds %struct.Reg, %struct.Reg* %6980, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %6981 to i64*
  %6982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6983 = getelementptr inbounds %struct.GPR, %struct.GPR* %6982, i32 0, i32 5
  %6984 = getelementptr inbounds %struct.Reg, %struct.Reg* %6983, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %6984 to i32*
  %6985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6986 = getelementptr inbounds %struct.GPR, %struct.GPR* %6985, i32 0, i32 1
  %6987 = getelementptr inbounds %struct.Reg, %struct.Reg* %6986, i32 0, i32 0
  %RAX.i102 = bitcast %union.anon* %6987 to i64*
  %6988 = load i64, i64* %RAX.i102
  %6989 = add i64 %6988, 8
  %6990 = load i32, i32* %ECX.i
  %6991 = zext i32 %6990 to i64
  %6992 = load i64, i64* %PC.i101
  %6993 = add i64 %6992, 3
  store i64 %6993, i64* %PC.i101
  %6994 = inttoptr i64 %6989 to i32*
  store i32 %6990, i32* %6994
  store %struct.Memory* %loadMem_404933, %struct.Memory** %MEMORY
  %loadMem_404936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6996 = getelementptr inbounds %struct.GPR, %struct.GPR* %6995, i32 0, i32 33
  %6997 = getelementptr inbounds %struct.Reg, %struct.Reg* %6996, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %6997 to i64*
  %6998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6999 = getelementptr inbounds %struct.GPR, %struct.GPR* %6998, i32 0, i32 1
  %7000 = getelementptr inbounds %struct.Reg, %struct.Reg* %6999, i32 0, i32 0
  %RAX.i99 = bitcast %union.anon* %7000 to i64*
  %7001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7002 = getelementptr inbounds %struct.GPR, %struct.GPR* %7001, i32 0, i32 15
  %7003 = getelementptr inbounds %struct.Reg, %struct.Reg* %7002, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %7003 to i64*
  %7004 = load i64, i64* %RBP.i100
  %7005 = sub i64 %7004, 20
  %7006 = load i64, i64* %PC.i98
  %7007 = add i64 %7006, 4
  store i64 %7007, i64* %PC.i98
  %7008 = inttoptr i64 %7005 to i32*
  %7009 = load i32, i32* %7008
  %7010 = sext i32 %7009 to i64
  store i64 %7010, i64* %RAX.i99, align 8
  store %struct.Memory* %loadMem_404936, %struct.Memory** %MEMORY
  %loadMem_40493a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7012 = getelementptr inbounds %struct.GPR, %struct.GPR* %7011, i32 0, i32 33
  %7013 = getelementptr inbounds %struct.Reg, %struct.Reg* %7012, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %7013 to i64*
  %7014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7015 = getelementptr inbounds %struct.GPR, %struct.GPR* %7014, i32 0, i32 1
  %7016 = getelementptr inbounds %struct.Reg, %struct.Reg* %7015, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %7016 to i64*
  %7017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7018 = getelementptr inbounds %struct.GPR, %struct.GPR* %7017, i32 0, i32 7
  %7019 = getelementptr inbounds %struct.Reg, %struct.Reg* %7018, i32 0, i32 0
  %RDX.i97 = bitcast %union.anon* %7019 to i64*
  %7020 = load i64, i64* %RAX.i96
  %7021 = load i64, i64* %PC.i95
  %7022 = add i64 %7021, 7
  store i64 %7022, i64* %PC.i95
  %7023 = sext i64 %7020 to i128
  %7024 = and i128 %7023, -18446744073709551616
  %7025 = zext i64 %7020 to i128
  %7026 = or i128 %7024, %7025
  %7027 = mul i128 360, %7026
  %7028 = trunc i128 %7027 to i64
  store i64 %7028, i64* %RDX.i97, align 8
  %7029 = sext i64 %7028 to i128
  %7030 = icmp ne i128 %7029, %7027
  %7031 = zext i1 %7030 to i8
  %7032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7031, i8* %7032, align 1
  %7033 = trunc i128 %7027 to i32
  %7034 = and i32 %7033, 255
  %7035 = call i32 @llvm.ctpop.i32(i32 %7034)
  %7036 = trunc i32 %7035 to i8
  %7037 = and i8 %7036, 1
  %7038 = xor i8 %7037, 1
  %7039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7038, i8* %7039, align 1
  %7040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7040, align 1
  %7041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7041, align 1
  %7042 = lshr i64 %7028, 63
  %7043 = trunc i64 %7042 to i8
  %7044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7043, i8* %7044, align 1
  %7045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7031, i8* %7045, align 1
  store %struct.Memory* %loadMem_40493a, %struct.Memory** %MEMORY
  %loadMem1_404941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7047 = getelementptr inbounds %struct.GPR, %struct.GPR* %7046, i32 0, i32 33
  %7048 = getelementptr inbounds %struct.Reg, %struct.Reg* %7047, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %7048 to i64*
  %7049 = load i64, i64* %PC.i94
  %7050 = add i64 %7049, 268063
  %7051 = load i64, i64* %PC.i94
  %7052 = add i64 %7051, 5
  %7053 = load i64, i64* %PC.i94
  %7054 = add i64 %7053, 5
  store i64 %7054, i64* %PC.i94
  %7055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7056 = load i64, i64* %7055, align 8
  %7057 = add i64 %7056, -8
  %7058 = inttoptr i64 %7057 to i64*
  store i64 %7052, i64* %7058
  store i64 %7057, i64* %7055, align 8
  %7059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7050, i64* %7059, align 8
  store %struct.Memory* %loadMem1_404941, %struct.Memory** %MEMORY
  %loadMem2_404941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_404941 = load i64, i64* %3
  %call2_404941 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_404941, %struct.Memory* %loadMem2_404941)
  store %struct.Memory* %call2_404941, %struct.Memory** %MEMORY
  %loadMem_404946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7061 = getelementptr inbounds %struct.GPR, %struct.GPR* %7060, i32 0, i32 33
  %7062 = getelementptr inbounds %struct.Reg, %struct.Reg* %7061, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %7062 to i64*
  %7063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7064 = getelementptr inbounds %struct.GPR, %struct.GPR* %7063, i32 0, i32 7
  %7065 = getelementptr inbounds %struct.Reg, %struct.Reg* %7064, i32 0, i32 0
  %RDX.i92 = bitcast %union.anon* %7065 to i64*
  %7066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7067 = getelementptr inbounds %struct.GPR, %struct.GPR* %7066, i32 0, i32 15
  %7068 = getelementptr inbounds %struct.Reg, %struct.Reg* %7067, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %7068 to i64*
  %7069 = load i64, i64* %RBP.i93
  %7070 = sub i64 %7069, 48
  %7071 = load i64, i64* %PC.i91
  %7072 = add i64 %7071, 4
  store i64 %7072, i64* %PC.i91
  %7073 = inttoptr i64 %7070 to i64*
  %7074 = load i64, i64* %7073
  store i64 %7074, i64* %RDX.i92, align 8
  store %struct.Memory* %loadMem_404946, %struct.Memory** %MEMORY
  %loadMem_40494a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7076 = getelementptr inbounds %struct.GPR, %struct.GPR* %7075, i32 0, i32 33
  %7077 = getelementptr inbounds %struct.Reg, %struct.Reg* %7076, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %7077 to i64*
  %7078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7079 = getelementptr inbounds %struct.GPR, %struct.GPR* %7078, i32 0, i32 1
  %7080 = getelementptr inbounds %struct.Reg, %struct.Reg* %7079, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %7080 to i64*
  %7081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7082 = getelementptr inbounds %struct.GPR, %struct.GPR* %7081, i32 0, i32 7
  %7083 = getelementptr inbounds %struct.Reg, %struct.Reg* %7082, i32 0, i32 0
  %RDX.i90 = bitcast %union.anon* %7083 to i64*
  %7084 = load i64, i64* %RDX.i90
  %7085 = add i64 %7084, 40
  %7086 = load i64, i64* %RAX.i89
  %7087 = load i64, i64* %PC.i88
  %7088 = add i64 %7087, 4
  store i64 %7088, i64* %PC.i88
  %7089 = inttoptr i64 %7085 to i64*
  store i64 %7086, i64* %7089
  store %struct.Memory* %loadMem_40494a, %struct.Memory** %MEMORY
  %loadMem_40494e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7091 = getelementptr inbounds %struct.GPR, %struct.GPR* %7090, i32 0, i32 33
  %7092 = getelementptr inbounds %struct.Reg, %struct.Reg* %7091, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %7092 to i64*
  %7093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7094 = getelementptr inbounds %struct.GPR, %struct.GPR* %7093, i32 0, i32 15
  %7095 = getelementptr inbounds %struct.Reg, %struct.Reg* %7094, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %7095 to i64*
  %7096 = load i64, i64* %RBP.i87
  %7097 = sub i64 %7096, 108
  %7098 = load i64, i64* %PC.i86
  %7099 = add i64 %7098, 7
  store i64 %7099, i64* %PC.i86
  %7100 = inttoptr i64 %7097 to i32*
  store i32 0, i32* %7100
  store %struct.Memory* %loadMem_40494e, %struct.Memory** %MEMORY
  br label %block_.L_404955

block_.L_404955:                                  ; preds = %block_404961, %block_.L_404909
  %loadMem_404955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7102 = getelementptr inbounds %struct.GPR, %struct.GPR* %7101, i32 0, i32 33
  %7103 = getelementptr inbounds %struct.Reg, %struct.Reg* %7102, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %7103 to i64*
  %7104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7105 = getelementptr inbounds %struct.GPR, %struct.GPR* %7104, i32 0, i32 1
  %7106 = getelementptr inbounds %struct.Reg, %struct.Reg* %7105, i32 0, i32 0
  %RAX.i84 = bitcast %union.anon* %7106 to i64*
  %7107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7108 = getelementptr inbounds %struct.GPR, %struct.GPR* %7107, i32 0, i32 15
  %7109 = getelementptr inbounds %struct.Reg, %struct.Reg* %7108, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %7109 to i64*
  %7110 = load i64, i64* %RBP.i85
  %7111 = sub i64 %7110, 108
  %7112 = load i64, i64* %PC.i83
  %7113 = add i64 %7112, 3
  store i64 %7113, i64* %PC.i83
  %7114 = inttoptr i64 %7111 to i32*
  %7115 = load i32, i32* %7114
  %7116 = zext i32 %7115 to i64
  store i64 %7116, i64* %RAX.i84, align 8
  store %struct.Memory* %loadMem_404955, %struct.Memory** %MEMORY
  %loadMem_404958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7118 = getelementptr inbounds %struct.GPR, %struct.GPR* %7117, i32 0, i32 33
  %7119 = getelementptr inbounds %struct.Reg, %struct.Reg* %7118, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %7119 to i64*
  %7120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7121 = getelementptr inbounds %struct.GPR, %struct.GPR* %7120, i32 0, i32 1
  %7122 = getelementptr inbounds %struct.Reg, %struct.Reg* %7121, i32 0, i32 0
  %EAX.i81 = bitcast %union.anon* %7122 to i32*
  %7123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7124 = getelementptr inbounds %struct.GPR, %struct.GPR* %7123, i32 0, i32 15
  %7125 = getelementptr inbounds %struct.Reg, %struct.Reg* %7124, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %7125 to i64*
  %7126 = load i32, i32* %EAX.i81
  %7127 = zext i32 %7126 to i64
  %7128 = load i64, i64* %RBP.i82
  %7129 = sub i64 %7128, 20
  %7130 = load i64, i64* %PC.i80
  %7131 = add i64 %7130, 3
  store i64 %7131, i64* %PC.i80
  %7132 = inttoptr i64 %7129 to i32*
  %7133 = load i32, i32* %7132
  %7134 = sub i32 %7126, %7133
  %7135 = icmp ult i32 %7126, %7133
  %7136 = zext i1 %7135 to i8
  %7137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7136, i8* %7137, align 1
  %7138 = and i32 %7134, 255
  %7139 = call i32 @llvm.ctpop.i32(i32 %7138)
  %7140 = trunc i32 %7139 to i8
  %7141 = and i8 %7140, 1
  %7142 = xor i8 %7141, 1
  %7143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7142, i8* %7143, align 1
  %7144 = xor i32 %7133, %7126
  %7145 = xor i32 %7144, %7134
  %7146 = lshr i32 %7145, 4
  %7147 = trunc i32 %7146 to i8
  %7148 = and i8 %7147, 1
  %7149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7148, i8* %7149, align 1
  %7150 = icmp eq i32 %7134, 0
  %7151 = zext i1 %7150 to i8
  %7152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7151, i8* %7152, align 1
  %7153 = lshr i32 %7134, 31
  %7154 = trunc i32 %7153 to i8
  %7155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7154, i8* %7155, align 1
  %7156 = lshr i32 %7126, 31
  %7157 = lshr i32 %7133, 31
  %7158 = xor i32 %7157, %7156
  %7159 = xor i32 %7153, %7156
  %7160 = add i32 %7159, %7158
  %7161 = icmp eq i32 %7160, 2
  %7162 = zext i1 %7161 to i8
  %7163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7162, i8* %7163, align 1
  store %struct.Memory* %loadMem_404958, %struct.Memory** %MEMORY
  %loadMem_40495b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7165 = getelementptr inbounds %struct.GPR, %struct.GPR* %7164, i32 0, i32 33
  %7166 = getelementptr inbounds %struct.Reg, %struct.Reg* %7165, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %7166 to i64*
  %7167 = load i64, i64* %PC.i79
  %7168 = add i64 %7167, 71
  %7169 = load i64, i64* %PC.i79
  %7170 = add i64 %7169, 6
  %7171 = load i64, i64* %PC.i79
  %7172 = add i64 %7171, 6
  store i64 %7172, i64* %PC.i79
  %7173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7174 = load i8, i8* %7173, align 1
  %7175 = icmp ne i8 %7174, 0
  %7176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7177 = load i8, i8* %7176, align 1
  %7178 = icmp ne i8 %7177, 0
  %7179 = xor i1 %7175, %7178
  %7180 = xor i1 %7179, true
  %7181 = zext i1 %7180 to i8
  store i8 %7181, i8* %BRANCH_TAKEN, align 1
  %7182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7183 = select i1 %7179, i64 %7170, i64 %7168
  store i64 %7183, i64* %7182, align 8
  store %struct.Memory* %loadMem_40495b, %struct.Memory** %MEMORY
  %loadBr_40495b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40495b = icmp eq i8 %loadBr_40495b, 1
  br i1 %cmpBr_40495b, label %block_.L_4049a2, label %block_404961

block_404961:                                     ; preds = %block_.L_404955
  %loadMem_404961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7185 = getelementptr inbounds %struct.GPR, %struct.GPR* %7184, i32 0, i32 33
  %7186 = getelementptr inbounds %struct.Reg, %struct.Reg* %7185, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %7186 to i64*
  %7187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7188 = getelementptr inbounds %struct.GPR, %struct.GPR* %7187, i32 0, i32 1
  %7189 = getelementptr inbounds %struct.Reg, %struct.Reg* %7188, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %7189 to i64*
  %7190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7191 = getelementptr inbounds %struct.GPR, %struct.GPR* %7190, i32 0, i32 15
  %7192 = getelementptr inbounds %struct.Reg, %struct.Reg* %7191, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %7192 to i64*
  %7193 = load i64, i64* %RBP.i78
  %7194 = sub i64 %7193, 48
  %7195 = load i64, i64* %PC.i76
  %7196 = add i64 %7195, 4
  store i64 %7196, i64* %PC.i76
  %7197 = inttoptr i64 %7194 to i64*
  %7198 = load i64, i64* %7197
  store i64 %7198, i64* %RAX.i77, align 8
  store %struct.Memory* %loadMem_404961, %struct.Memory** %MEMORY
  %loadMem_404965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7200 = getelementptr inbounds %struct.GPR, %struct.GPR* %7199, i32 0, i32 33
  %7201 = getelementptr inbounds %struct.Reg, %struct.Reg* %7200, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %7201 to i64*
  %7202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7203 = getelementptr inbounds %struct.GPR, %struct.GPR* %7202, i32 0, i32 1
  %7204 = getelementptr inbounds %struct.Reg, %struct.Reg* %7203, i32 0, i32 0
  %RAX.i75 = bitcast %union.anon* %7204 to i64*
  %7205 = load i64, i64* %RAX.i75
  %7206 = add i64 %7205, 40
  %7207 = load i64, i64* %PC.i74
  %7208 = add i64 %7207, 4
  store i64 %7208, i64* %PC.i74
  %7209 = inttoptr i64 %7206 to i64*
  %7210 = load i64, i64* %7209
  store i64 %7210, i64* %RAX.i75, align 8
  store %struct.Memory* %loadMem_404965, %struct.Memory** %MEMORY
  %loadMem_404969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7212 = getelementptr inbounds %struct.GPR, %struct.GPR* %7211, i32 0, i32 33
  %7213 = getelementptr inbounds %struct.Reg, %struct.Reg* %7212, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %7213 to i64*
  %7214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7215 = getelementptr inbounds %struct.GPR, %struct.GPR* %7214, i32 0, i32 5
  %7216 = getelementptr inbounds %struct.Reg, %struct.Reg* %7215, i32 0, i32 0
  %RCX.i72 = bitcast %union.anon* %7216 to i64*
  %7217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7218 = getelementptr inbounds %struct.GPR, %struct.GPR* %7217, i32 0, i32 15
  %7219 = getelementptr inbounds %struct.Reg, %struct.Reg* %7218, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %7219 to i64*
  %7220 = load i64, i64* %RBP.i73
  %7221 = sub i64 %7220, 108
  %7222 = load i64, i64* %PC.i71
  %7223 = add i64 %7222, 4
  store i64 %7223, i64* %PC.i71
  %7224 = inttoptr i64 %7221 to i32*
  %7225 = load i32, i32* %7224
  %7226 = sext i32 %7225 to i64
  store i64 %7226, i64* %RCX.i72, align 8
  store %struct.Memory* %loadMem_404969, %struct.Memory** %MEMORY
  %loadMem_40496d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7228 = getelementptr inbounds %struct.GPR, %struct.GPR* %7227, i32 0, i32 33
  %7229 = getelementptr inbounds %struct.Reg, %struct.Reg* %7228, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %7229 to i64*
  %7230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7231 = getelementptr inbounds %struct.GPR, %struct.GPR* %7230, i32 0, i32 5
  %7232 = getelementptr inbounds %struct.Reg, %struct.Reg* %7231, i32 0, i32 0
  %RCX.i70 = bitcast %union.anon* %7232 to i64*
  %7233 = load i64, i64* %RCX.i70
  %7234 = load i64, i64* %PC.i69
  %7235 = add i64 %7234, 7
  store i64 %7235, i64* %PC.i69
  %7236 = sext i64 %7233 to i128
  %7237 = and i128 %7236, -18446744073709551616
  %7238 = zext i64 %7233 to i128
  %7239 = or i128 %7237, %7238
  %7240 = mul i128 360, %7239
  %7241 = trunc i128 %7240 to i64
  store i64 %7241, i64* %RCX.i70, align 8
  %7242 = sext i64 %7241 to i128
  %7243 = icmp ne i128 %7242, %7240
  %7244 = zext i1 %7243 to i8
  %7245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7244, i8* %7245, align 1
  %7246 = trunc i128 %7240 to i32
  %7247 = and i32 %7246, 255
  %7248 = call i32 @llvm.ctpop.i32(i32 %7247)
  %7249 = trunc i32 %7248 to i8
  %7250 = and i8 %7249, 1
  %7251 = xor i8 %7250, 1
  %7252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7251, i8* %7252, align 1
  %7253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7253, align 1
  %7254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7254, align 1
  %7255 = lshr i64 %7241, 63
  %7256 = trunc i64 %7255 to i8
  %7257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7256, i8* %7257, align 1
  %7258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7244, i8* %7258, align 1
  store %struct.Memory* %loadMem_40496d, %struct.Memory** %MEMORY
  %loadMem_404974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7260 = getelementptr inbounds %struct.GPR, %struct.GPR* %7259, i32 0, i32 33
  %7261 = getelementptr inbounds %struct.Reg, %struct.Reg* %7260, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %7261 to i64*
  %7262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7263 = getelementptr inbounds %struct.GPR, %struct.GPR* %7262, i32 0, i32 1
  %7264 = getelementptr inbounds %struct.Reg, %struct.Reg* %7263, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %7264 to i64*
  %7265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7266 = getelementptr inbounds %struct.GPR, %struct.GPR* %7265, i32 0, i32 5
  %7267 = getelementptr inbounds %struct.Reg, %struct.Reg* %7266, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %7267 to i64*
  %7268 = load i64, i64* %RAX.i67
  %7269 = load i64, i64* %RCX.i68
  %7270 = load i64, i64* %PC.i66
  %7271 = add i64 %7270, 3
  store i64 %7271, i64* %PC.i66
  %7272 = add i64 %7269, %7268
  store i64 %7272, i64* %RAX.i67, align 8
  %7273 = icmp ult i64 %7272, %7268
  %7274 = icmp ult i64 %7272, %7269
  %7275 = or i1 %7273, %7274
  %7276 = zext i1 %7275 to i8
  %7277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7276, i8* %7277, align 1
  %7278 = trunc i64 %7272 to i32
  %7279 = and i32 %7278, 255
  %7280 = call i32 @llvm.ctpop.i32(i32 %7279)
  %7281 = trunc i32 %7280 to i8
  %7282 = and i8 %7281, 1
  %7283 = xor i8 %7282, 1
  %7284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7283, i8* %7284, align 1
  %7285 = xor i64 %7269, %7268
  %7286 = xor i64 %7285, %7272
  %7287 = lshr i64 %7286, 4
  %7288 = trunc i64 %7287 to i8
  %7289 = and i8 %7288, 1
  %7290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7289, i8* %7290, align 1
  %7291 = icmp eq i64 %7272, 0
  %7292 = zext i1 %7291 to i8
  %7293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7292, i8* %7293, align 1
  %7294 = lshr i64 %7272, 63
  %7295 = trunc i64 %7294 to i8
  %7296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7295, i8* %7296, align 1
  %7297 = lshr i64 %7268, 63
  %7298 = lshr i64 %7269, 63
  %7299 = xor i64 %7294, %7297
  %7300 = xor i64 %7294, %7298
  %7301 = add i64 %7299, %7300
  %7302 = icmp eq i64 %7301, 2
  %7303 = zext i1 %7302 to i8
  %7304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7303, i8* %7304, align 1
  store %struct.Memory* %loadMem_404974, %struct.Memory** %MEMORY
  %loadMem_404977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7306 = getelementptr inbounds %struct.GPR, %struct.GPR* %7305, i32 0, i32 33
  %7307 = getelementptr inbounds %struct.Reg, %struct.Reg* %7306, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %7307 to i64*
  %7308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7309 = getelementptr inbounds %struct.GPR, %struct.GPR* %7308, i32 0, i32 5
  %7310 = getelementptr inbounds %struct.Reg, %struct.Reg* %7309, i32 0, i32 0
  %RCX.i64 = bitcast %union.anon* %7310 to i64*
  %7311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7312 = getelementptr inbounds %struct.GPR, %struct.GPR* %7311, i32 0, i32 15
  %7313 = getelementptr inbounds %struct.Reg, %struct.Reg* %7312, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %7313 to i64*
  %7314 = load i64, i64* %RBP.i65
  %7315 = sub i64 %7314, 16
  %7316 = load i64, i64* %PC.i63
  %7317 = add i64 %7316, 4
  store i64 %7317, i64* %PC.i63
  %7318 = inttoptr i64 %7315 to i64*
  %7319 = load i64, i64* %7318
  store i64 %7319, i64* %RCX.i64, align 8
  store %struct.Memory* %loadMem_404977, %struct.Memory** %MEMORY
  %loadMem_40497b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7321 = getelementptr inbounds %struct.GPR, %struct.GPR* %7320, i32 0, i32 33
  %7322 = getelementptr inbounds %struct.Reg, %struct.Reg* %7321, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %7322 to i64*
  %7323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7324 = getelementptr inbounds %struct.GPR, %struct.GPR* %7323, i32 0, i32 7
  %7325 = getelementptr inbounds %struct.Reg, %struct.Reg* %7324, i32 0, i32 0
  %RDX.i61 = bitcast %union.anon* %7325 to i64*
  %7326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7327 = getelementptr inbounds %struct.GPR, %struct.GPR* %7326, i32 0, i32 15
  %7328 = getelementptr inbounds %struct.Reg, %struct.Reg* %7327, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %7328 to i64*
  %7329 = load i64, i64* %RBP.i62
  %7330 = sub i64 %7329, 108
  %7331 = load i64, i64* %PC.i60
  %7332 = add i64 %7331, 4
  store i64 %7332, i64* %PC.i60
  %7333 = inttoptr i64 %7330 to i32*
  %7334 = load i32, i32* %7333
  %7335 = sext i32 %7334 to i64
  store i64 %7335, i64* %RDX.i61, align 8
  store %struct.Memory* %loadMem_40497b, %struct.Memory** %MEMORY
  %loadMem_40497f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7337 = getelementptr inbounds %struct.GPR, %struct.GPR* %7336, i32 0, i32 33
  %7338 = getelementptr inbounds %struct.Reg, %struct.Reg* %7337, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %7338 to i64*
  %7339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7340 = getelementptr inbounds %struct.GPR, %struct.GPR* %7339, i32 0, i32 7
  %7341 = getelementptr inbounds %struct.Reg, %struct.Reg* %7340, i32 0, i32 0
  %RDX.i59 = bitcast %union.anon* %7341 to i64*
  %7342 = load i64, i64* %RDX.i59
  %7343 = load i64, i64* %PC.i58
  %7344 = add i64 %7343, 7
  store i64 %7344, i64* %PC.i58
  %7345 = sext i64 %7342 to i128
  %7346 = and i128 %7345, -18446744073709551616
  %7347 = zext i64 %7342 to i128
  %7348 = or i128 %7346, %7347
  %7349 = mul i128 360, %7348
  %7350 = trunc i128 %7349 to i64
  store i64 %7350, i64* %RDX.i59, align 8
  %7351 = sext i64 %7350 to i128
  %7352 = icmp ne i128 %7351, %7349
  %7353 = zext i1 %7352 to i8
  %7354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7353, i8* %7354, align 1
  %7355 = trunc i128 %7349 to i32
  %7356 = and i32 %7355, 255
  %7357 = call i32 @llvm.ctpop.i32(i32 %7356)
  %7358 = trunc i32 %7357 to i8
  %7359 = and i8 %7358, 1
  %7360 = xor i8 %7359, 1
  %7361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7360, i8* %7361, align 1
  %7362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7362, align 1
  %7363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7363, align 1
  %7364 = lshr i64 %7350, 63
  %7365 = trunc i64 %7364 to i8
  %7366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7365, i8* %7366, align 1
  %7367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7353, i8* %7367, align 1
  store %struct.Memory* %loadMem_40497f, %struct.Memory** %MEMORY
  %loadMem_404986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7369 = getelementptr inbounds %struct.GPR, %struct.GPR* %7368, i32 0, i32 33
  %7370 = getelementptr inbounds %struct.Reg, %struct.Reg* %7369, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %7370 to i64*
  %7371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7372 = getelementptr inbounds %struct.GPR, %struct.GPR* %7371, i32 0, i32 5
  %7373 = getelementptr inbounds %struct.Reg, %struct.Reg* %7372, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %7373 to i64*
  %7374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7375 = getelementptr inbounds %struct.GPR, %struct.GPR* %7374, i32 0, i32 7
  %7376 = getelementptr inbounds %struct.Reg, %struct.Reg* %7375, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7376 to i64*
  %7377 = load i64, i64* %RCX.i57
  %7378 = load i64, i64* %RDX.i
  %7379 = load i64, i64* %PC.i56
  %7380 = add i64 %7379, 3
  store i64 %7380, i64* %PC.i56
  %7381 = add i64 %7378, %7377
  store i64 %7381, i64* %RCX.i57, align 8
  %7382 = icmp ult i64 %7381, %7377
  %7383 = icmp ult i64 %7381, %7378
  %7384 = or i1 %7382, %7383
  %7385 = zext i1 %7384 to i8
  %7386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7385, i8* %7386, align 1
  %7387 = trunc i64 %7381 to i32
  %7388 = and i32 %7387, 255
  %7389 = call i32 @llvm.ctpop.i32(i32 %7388)
  %7390 = trunc i32 %7389 to i8
  %7391 = and i8 %7390, 1
  %7392 = xor i8 %7391, 1
  %7393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7392, i8* %7393, align 1
  %7394 = xor i64 %7378, %7377
  %7395 = xor i64 %7394, %7381
  %7396 = lshr i64 %7395, 4
  %7397 = trunc i64 %7396 to i8
  %7398 = and i8 %7397, 1
  %7399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7398, i8* %7399, align 1
  %7400 = icmp eq i64 %7381, 0
  %7401 = zext i1 %7400 to i8
  %7402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7401, i8* %7402, align 1
  %7403 = lshr i64 %7381, 63
  %7404 = trunc i64 %7403 to i8
  %7405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7404, i8* %7405, align 1
  %7406 = lshr i64 %7377, 63
  %7407 = lshr i64 %7378, 63
  %7408 = xor i64 %7403, %7406
  %7409 = xor i64 %7403, %7407
  %7410 = add i64 %7408, %7409
  %7411 = icmp eq i64 %7410, 2
  %7412 = zext i1 %7411 to i8
  %7413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7412, i8* %7413, align 1
  store %struct.Memory* %loadMem_404986, %struct.Memory** %MEMORY
  %loadMem_404989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7415 = getelementptr inbounds %struct.GPR, %struct.GPR* %7414, i32 0, i32 33
  %7416 = getelementptr inbounds %struct.Reg, %struct.Reg* %7415, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %7416 to i64*
  %7417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7418 = getelementptr inbounds %struct.GPR, %struct.GPR* %7417, i32 0, i32 1
  %7419 = getelementptr inbounds %struct.Reg, %struct.Reg* %7418, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %7419 to i64*
  %7420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7421 = getelementptr inbounds %struct.GPR, %struct.GPR* %7420, i32 0, i32 11
  %7422 = getelementptr inbounds %struct.Reg, %struct.Reg* %7421, i32 0, i32 0
  %RDI.i55 = bitcast %union.anon* %7422 to i64*
  %7423 = load i64, i64* %RAX.i54
  %7424 = load i64, i64* %PC.i53
  %7425 = add i64 %7424, 3
  store i64 %7425, i64* %PC.i53
  store i64 %7423, i64* %RDI.i55, align 8
  store %struct.Memory* %loadMem_404989, %struct.Memory** %MEMORY
  %loadMem_40498c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7427 = getelementptr inbounds %struct.GPR, %struct.GPR* %7426, i32 0, i32 33
  %7428 = getelementptr inbounds %struct.Reg, %struct.Reg* %7427, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %7428 to i64*
  %7429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7430 = getelementptr inbounds %struct.GPR, %struct.GPR* %7429, i32 0, i32 5
  %7431 = getelementptr inbounds %struct.Reg, %struct.Reg* %7430, i32 0, i32 0
  %RCX.i51 = bitcast %union.anon* %7431 to i64*
  %7432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7433 = getelementptr inbounds %struct.GPR, %struct.GPR* %7432, i32 0, i32 9
  %7434 = getelementptr inbounds %struct.Reg, %struct.Reg* %7433, i32 0, i32 0
  %RSI.i52 = bitcast %union.anon* %7434 to i64*
  %7435 = load i64, i64* %RCX.i51
  %7436 = load i64, i64* %PC.i50
  %7437 = add i64 %7436, 3
  store i64 %7437, i64* %PC.i50
  store i64 %7435, i64* %RSI.i52, align 8
  store %struct.Memory* %loadMem_40498c, %struct.Memory** %MEMORY
  %loadMem1_40498f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7439 = getelementptr inbounds %struct.GPR, %struct.GPR* %7438, i32 0, i32 33
  %7440 = getelementptr inbounds %struct.Reg, %struct.Reg* %7439, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %7440 to i64*
  %7441 = load i64, i64* %PC.i49
  %7442 = add i64 %7441, 244145
  %7443 = load i64, i64* %PC.i49
  %7444 = add i64 %7443, 5
  %7445 = load i64, i64* %PC.i49
  %7446 = add i64 %7445, 5
  store i64 %7446, i64* %PC.i49
  %7447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7448 = load i64, i64* %7447, align 8
  %7449 = add i64 %7448, -8
  %7450 = inttoptr i64 %7449 to i64*
  store i64 %7444, i64* %7450
  store i64 %7449, i64* %7447, align 8
  %7451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7442, i64* %7451, align 8
  store %struct.Memory* %loadMem1_40498f, %struct.Memory** %MEMORY
  %loadMem2_40498f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40498f = load i64, i64* %3
  %call2_40498f = call %struct.Memory* @sub_440340.SeqinfoCopy(%struct.State* %0, i64 %loadPC_40498f, %struct.Memory* %loadMem2_40498f)
  store %struct.Memory* %call2_40498f, %struct.Memory** %MEMORY
  %loadMem_404994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7453 = getelementptr inbounds %struct.GPR, %struct.GPR* %7452, i32 0, i32 33
  %7454 = getelementptr inbounds %struct.Reg, %struct.Reg* %7453, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %7454 to i64*
  %7455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7456 = getelementptr inbounds %struct.GPR, %struct.GPR* %7455, i32 0, i32 1
  %7457 = getelementptr inbounds %struct.Reg, %struct.Reg* %7456, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %7457 to i64*
  %7458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7459 = getelementptr inbounds %struct.GPR, %struct.GPR* %7458, i32 0, i32 15
  %7460 = getelementptr inbounds %struct.Reg, %struct.Reg* %7459, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %7460 to i64*
  %7461 = load i64, i64* %RBP.i48
  %7462 = sub i64 %7461, 108
  %7463 = load i64, i64* %PC.i46
  %7464 = add i64 %7463, 3
  store i64 %7464, i64* %PC.i46
  %7465 = inttoptr i64 %7462 to i32*
  %7466 = load i32, i32* %7465
  %7467 = zext i32 %7466 to i64
  store i64 %7467, i64* %RAX.i47, align 8
  store %struct.Memory* %loadMem_404994, %struct.Memory** %MEMORY
  %loadMem_404997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7469 = getelementptr inbounds %struct.GPR, %struct.GPR* %7468, i32 0, i32 33
  %7470 = getelementptr inbounds %struct.Reg, %struct.Reg* %7469, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %7470 to i64*
  %7471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7472 = getelementptr inbounds %struct.GPR, %struct.GPR* %7471, i32 0, i32 1
  %7473 = getelementptr inbounds %struct.Reg, %struct.Reg* %7472, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %7473 to i64*
  %7474 = load i64, i64* %RAX.i45
  %7475 = load i64, i64* %PC.i44
  %7476 = add i64 %7475, 3
  store i64 %7476, i64* %PC.i44
  %7477 = trunc i64 %7474 to i32
  %7478 = add i32 1, %7477
  %7479 = zext i32 %7478 to i64
  store i64 %7479, i64* %RAX.i45, align 8
  %7480 = icmp ult i32 %7478, %7477
  %7481 = icmp ult i32 %7478, 1
  %7482 = or i1 %7480, %7481
  %7483 = zext i1 %7482 to i8
  %7484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7483, i8* %7484, align 1
  %7485 = and i32 %7478, 255
  %7486 = call i32 @llvm.ctpop.i32(i32 %7485)
  %7487 = trunc i32 %7486 to i8
  %7488 = and i8 %7487, 1
  %7489 = xor i8 %7488, 1
  %7490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7489, i8* %7490, align 1
  %7491 = xor i64 1, %7474
  %7492 = trunc i64 %7491 to i32
  %7493 = xor i32 %7492, %7478
  %7494 = lshr i32 %7493, 4
  %7495 = trunc i32 %7494 to i8
  %7496 = and i8 %7495, 1
  %7497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7496, i8* %7497, align 1
  %7498 = icmp eq i32 %7478, 0
  %7499 = zext i1 %7498 to i8
  %7500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7499, i8* %7500, align 1
  %7501 = lshr i32 %7478, 31
  %7502 = trunc i32 %7501 to i8
  %7503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7502, i8* %7503, align 1
  %7504 = lshr i32 %7477, 31
  %7505 = xor i32 %7501, %7504
  %7506 = add i32 %7505, %7501
  %7507 = icmp eq i32 %7506, 2
  %7508 = zext i1 %7507 to i8
  %7509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7508, i8* %7509, align 1
  store %struct.Memory* %loadMem_404997, %struct.Memory** %MEMORY
  %loadMem_40499a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7511 = getelementptr inbounds %struct.GPR, %struct.GPR* %7510, i32 0, i32 33
  %7512 = getelementptr inbounds %struct.Reg, %struct.Reg* %7511, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %7512 to i64*
  %7513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7514 = getelementptr inbounds %struct.GPR, %struct.GPR* %7513, i32 0, i32 1
  %7515 = getelementptr inbounds %struct.Reg, %struct.Reg* %7514, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %7515 to i32*
  %7516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7517 = getelementptr inbounds %struct.GPR, %struct.GPR* %7516, i32 0, i32 15
  %7518 = getelementptr inbounds %struct.Reg, %struct.Reg* %7517, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %7518 to i64*
  %7519 = load i64, i64* %RBP.i43
  %7520 = sub i64 %7519, 108
  %7521 = load i32, i32* %EAX.i
  %7522 = zext i32 %7521 to i64
  %7523 = load i64, i64* %PC.i42
  %7524 = add i64 %7523, 3
  store i64 %7524, i64* %PC.i42
  %7525 = inttoptr i64 %7520 to i32*
  store i32 %7521, i32* %7525
  store %struct.Memory* %loadMem_40499a, %struct.Memory** %MEMORY
  %loadMem_40499d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7527 = getelementptr inbounds %struct.GPR, %struct.GPR* %7526, i32 0, i32 33
  %7528 = getelementptr inbounds %struct.Reg, %struct.Reg* %7527, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %7528 to i64*
  %7529 = load i64, i64* %PC.i41
  %7530 = add i64 %7529, -72
  %7531 = load i64, i64* %PC.i41
  %7532 = add i64 %7531, 5
  store i64 %7532, i64* %PC.i41
  %7533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7530, i64* %7533, align 8
  store %struct.Memory* %loadMem_40499d, %struct.Memory** %MEMORY
  br label %block_.L_404955

block_.L_4049a2:                                  ; preds = %block_.L_404955
  %loadMem_4049a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7535 = getelementptr inbounds %struct.GPR, %struct.GPR* %7534, i32 0, i32 33
  %7536 = getelementptr inbounds %struct.Reg, %struct.Reg* %7535, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %7536 to i64*
  %7537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7538 = getelementptr inbounds %struct.GPR, %struct.GPR* %7537, i32 0, i32 1
  %7539 = getelementptr inbounds %struct.Reg, %struct.Reg* %7538, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %7539 to i64*
  %7540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7541 = getelementptr inbounds %struct.GPR, %struct.GPR* %7540, i32 0, i32 15
  %7542 = getelementptr inbounds %struct.Reg, %struct.Reg* %7541, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %7542 to i64*
  %7543 = load i64, i64* %RBP.i40
  %7544 = sub i64 %7543, 72
  %7545 = load i64, i64* %PC.i38
  %7546 = add i64 %7545, 4
  store i64 %7546, i64* %PC.i38
  %7547 = inttoptr i64 %7544 to i64*
  %7548 = load i64, i64* %7547
  store i64 %7548, i64* %RAX.i39, align 8
  store %struct.Memory* %loadMem_4049a2, %struct.Memory** %MEMORY
  %loadMem_4049a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7550 = getelementptr inbounds %struct.GPR, %struct.GPR* %7549, i32 0, i32 33
  %7551 = getelementptr inbounds %struct.Reg, %struct.Reg* %7550, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %7551 to i64*
  %7552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7553 = getelementptr inbounds %struct.GPR, %struct.GPR* %7552, i32 0, i32 1
  %7554 = getelementptr inbounds %struct.Reg, %struct.Reg* %7553, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %7554 to i64*
  %7555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7556 = getelementptr inbounds %struct.GPR, %struct.GPR* %7555, i32 0, i32 11
  %7557 = getelementptr inbounds %struct.Reg, %struct.Reg* %7556, i32 0, i32 0
  %RDI.i37 = bitcast %union.anon* %7557 to i64*
  %7558 = load i64, i64* %RAX.i36
  %7559 = load i64, i64* %PC.i35
  %7560 = add i64 %7559, 3
  store i64 %7560, i64* %PC.i35
  store i64 %7558, i64* %RDI.i37, align 8
  store %struct.Memory* %loadMem_4049a6, %struct.Memory** %MEMORY
  %loadMem1_4049a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7562 = getelementptr inbounds %struct.GPR, %struct.GPR* %7561, i32 0, i32 33
  %7563 = getelementptr inbounds %struct.Reg, %struct.Reg* %7562, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %7563 to i64*
  %7564 = load i64, i64* %PC.i34
  %7565 = add i64 %7564, -13865
  %7566 = load i64, i64* %PC.i34
  %7567 = add i64 %7566, 5
  %7568 = load i64, i64* %PC.i34
  %7569 = add i64 %7568, 5
  store i64 %7569, i64* %PC.i34
  %7570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7571 = load i64, i64* %7570, align 8
  %7572 = add i64 %7571, -8
  %7573 = inttoptr i64 %7572 to i64*
  store i64 %7567, i64* %7573
  store i64 %7572, i64* %7570, align 8
  %7574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7565, i64* %7574, align 8
  store %struct.Memory* %loadMem1_4049a9, %struct.Memory** %MEMORY
  %loadMem2_4049a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4049a9 = load i64, i64* %3
  %7575 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_4049a9)
  store %struct.Memory* %7575, %struct.Memory** %MEMORY
  %loadMem_4049ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %7576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7577 = getelementptr inbounds %struct.GPR, %struct.GPR* %7576, i32 0, i32 33
  %7578 = getelementptr inbounds %struct.Reg, %struct.Reg* %7577, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %7578 to i64*
  %7579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7580 = getelementptr inbounds %struct.GPR, %struct.GPR* %7579, i32 0, i32 1
  %7581 = getelementptr inbounds %struct.Reg, %struct.Reg* %7580, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %7581 to i64*
  %7582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7583 = getelementptr inbounds %struct.GPR, %struct.GPR* %7582, i32 0, i32 15
  %7584 = getelementptr inbounds %struct.Reg, %struct.Reg* %7583, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %7584 to i64*
  %7585 = load i64, i64* %RBP.i31
  %7586 = sub i64 %7585, 96
  %7587 = load i64, i64* %PC.i29
  %7588 = add i64 %7587, 4
  store i64 %7588, i64* %PC.i29
  %7589 = inttoptr i64 %7586 to i64*
  %7590 = load i64, i64* %7589
  store i64 %7590, i64* %RAX.i30, align 8
  store %struct.Memory* %loadMem_4049ae, %struct.Memory** %MEMORY
  %loadMem_4049b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7592 = getelementptr inbounds %struct.GPR, %struct.GPR* %7591, i32 0, i32 33
  %7593 = getelementptr inbounds %struct.Reg, %struct.Reg* %7592, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %7593 to i64*
  %7594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7595 = getelementptr inbounds %struct.GPR, %struct.GPR* %7594, i32 0, i32 1
  %7596 = getelementptr inbounds %struct.Reg, %struct.Reg* %7595, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %7596 to i64*
  %7597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7598 = getelementptr inbounds %struct.GPR, %struct.GPR* %7597, i32 0, i32 11
  %7599 = getelementptr inbounds %struct.Reg, %struct.Reg* %7598, i32 0, i32 0
  %RDI.i28 = bitcast %union.anon* %7599 to i64*
  %7600 = load i64, i64* %RAX.i27
  %7601 = load i64, i64* %PC.i26
  %7602 = add i64 %7601, 3
  store i64 %7602, i64* %PC.i26
  store i64 %7600, i64* %RDI.i28, align 8
  store %struct.Memory* %loadMem_4049b2, %struct.Memory** %MEMORY
  %loadMem1_4049b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7604 = getelementptr inbounds %struct.GPR, %struct.GPR* %7603, i32 0, i32 33
  %7605 = getelementptr inbounds %struct.Reg, %struct.Reg* %7604, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %7605 to i64*
  %7606 = load i64, i64* %PC.i25
  %7607 = add i64 %7606, -13877
  %7608 = load i64, i64* %PC.i25
  %7609 = add i64 %7608, 5
  %7610 = load i64, i64* %PC.i25
  %7611 = add i64 %7610, 5
  store i64 %7611, i64* %PC.i25
  %7612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7613 = load i64, i64* %7612, align 8
  %7614 = add i64 %7613, -8
  %7615 = inttoptr i64 %7614 to i64*
  store i64 %7609, i64* %7615
  store i64 %7614, i64* %7612, align 8
  %7616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7607, i64* %7616, align 8
  store %struct.Memory* %loadMem1_4049b5, %struct.Memory** %MEMORY
  %loadMem2_4049b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4049b5 = load i64, i64* %3
  %7617 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_4049b5)
  store %struct.Memory* %7617, %struct.Memory** %MEMORY
  %loadMem_4049ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %7618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7619 = getelementptr inbounds %struct.GPR, %struct.GPR* %7618, i32 0, i32 33
  %7620 = getelementptr inbounds %struct.Reg, %struct.Reg* %7619, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %7620 to i64*
  %7621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7622 = getelementptr inbounds %struct.GPR, %struct.GPR* %7621, i32 0, i32 1
  %7623 = getelementptr inbounds %struct.Reg, %struct.Reg* %7622, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %7623 to i64*
  %7624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7625 = getelementptr inbounds %struct.GPR, %struct.GPR* %7624, i32 0, i32 15
  %7626 = getelementptr inbounds %struct.Reg, %struct.Reg* %7625, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %7626 to i64*
  %7627 = load i64, i64* %RBP.i21
  %7628 = sub i64 %7627, 88
  %7629 = load i64, i64* %PC.i19
  %7630 = add i64 %7629, 4
  store i64 %7630, i64* %PC.i19
  %7631 = inttoptr i64 %7628 to i64*
  %7632 = load i64, i64* %7631
  store i64 %7632, i64* %RAX.i20, align 8
  store %struct.Memory* %loadMem_4049ba, %struct.Memory** %MEMORY
  %loadMem_4049be = load %struct.Memory*, %struct.Memory** %MEMORY
  %7633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7634 = getelementptr inbounds %struct.GPR, %struct.GPR* %7633, i32 0, i32 33
  %7635 = getelementptr inbounds %struct.Reg, %struct.Reg* %7634, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %7635 to i64*
  %7636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7637 = getelementptr inbounds %struct.GPR, %struct.GPR* %7636, i32 0, i32 9
  %7638 = getelementptr inbounds %struct.Reg, %struct.Reg* %7637, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %7638 to i64*
  %7639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7640 = getelementptr inbounds %struct.GPR, %struct.GPR* %7639, i32 0, i32 15
  %7641 = getelementptr inbounds %struct.Reg, %struct.Reg* %7640, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %7641 to i64*
  %7642 = load i64, i64* %RBP.i18
  %7643 = sub i64 %7642, 20
  %7644 = load i64, i64* %PC.i17
  %7645 = add i64 %7644, 3
  store i64 %7645, i64* %PC.i17
  %7646 = inttoptr i64 %7643 to i32*
  %7647 = load i32, i32* %7646
  %7648 = zext i32 %7647 to i64
  store i64 %7648, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4049be, %struct.Memory** %MEMORY
  %loadMem_4049c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7650 = getelementptr inbounds %struct.GPR, %struct.GPR* %7649, i32 0, i32 33
  %7651 = getelementptr inbounds %struct.Reg, %struct.Reg* %7650, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %7651 to i64*
  %7652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7653 = getelementptr inbounds %struct.GPR, %struct.GPR* %7652, i32 0, i32 1
  %7654 = getelementptr inbounds %struct.Reg, %struct.Reg* %7653, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %7654 to i64*
  %7655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7656 = getelementptr inbounds %struct.GPR, %struct.GPR* %7655, i32 0, i32 11
  %7657 = getelementptr inbounds %struct.Reg, %struct.Reg* %7656, i32 0, i32 0
  %RDI.i16 = bitcast %union.anon* %7657 to i64*
  %7658 = load i64, i64* %RAX.i15
  %7659 = load i64, i64* %PC.i14
  %7660 = add i64 %7659, 3
  store i64 %7660, i64* %PC.i14
  store i64 %7658, i64* %RDI.i16, align 8
  store %struct.Memory* %loadMem_4049c1, %struct.Memory** %MEMORY
  %loadMem1_4049c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7662 = getelementptr inbounds %struct.GPR, %struct.GPR* %7661, i32 0, i32 33
  %7663 = getelementptr inbounds %struct.Reg, %struct.Reg* %7662, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %7663 to i64*
  %7664 = load i64, i64* %PC.i13
  %7665 = add i64 %7664, 268108
  %7666 = load i64, i64* %PC.i13
  %7667 = add i64 %7666, 5
  %7668 = load i64, i64* %PC.i13
  %7669 = add i64 %7668, 5
  store i64 %7669, i64* %PC.i13
  %7670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7671 = load i64, i64* %7670, align 8
  %7672 = add i64 %7671, -8
  %7673 = inttoptr i64 %7672 to i64*
  store i64 %7667, i64* %7673
  store i64 %7672, i64* %7670, align 8
  %7674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7665, i64* %7674, align 8
  store %struct.Memory* %loadMem1_4049c4, %struct.Memory** %MEMORY
  %loadMem2_4049c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4049c4 = load i64, i64* %3
  %call2_4049c4 = call %struct.Memory* @sub_446110.Free2DArray(%struct.State* %0, i64 %loadPC_4049c4, %struct.Memory* %loadMem2_4049c4)
  store %struct.Memory* %call2_4049c4, %struct.Memory** %MEMORY
  %loadMem_4049c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7676 = getelementptr inbounds %struct.GPR, %struct.GPR* %7675, i32 0, i32 33
  %7677 = getelementptr inbounds %struct.Reg, %struct.Reg* %7676, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %7677 to i64*
  %7678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7679 = getelementptr inbounds %struct.GPR, %struct.GPR* %7678, i32 0, i32 1
  %7680 = getelementptr inbounds %struct.Reg, %struct.Reg* %7679, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %7680 to i64*
  %7681 = load i64, i64* %PC.i12
  %7682 = add i64 %7681, 5
  store i64 %7682, i64* %PC.i12
  store i64 1, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_4049c9, %struct.Memory** %MEMORY
  %loadMem_4049ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %7683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7684 = getelementptr inbounds %struct.GPR, %struct.GPR* %7683, i32 0, i32 33
  %7685 = getelementptr inbounds %struct.Reg, %struct.Reg* %7684, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %7685 to i64*
  %7686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7687 = getelementptr inbounds %struct.GPR, %struct.GPR* %7686, i32 0, i32 11
  %7688 = getelementptr inbounds %struct.Reg, %struct.Reg* %7687, i32 0, i32 0
  %RDI.i10 = bitcast %union.anon* %7688 to i64*
  %7689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7690 = getelementptr inbounds %struct.GPR, %struct.GPR* %7689, i32 0, i32 15
  %7691 = getelementptr inbounds %struct.Reg, %struct.Reg* %7690, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %7691 to i64*
  %7692 = load i64, i64* %RBP.i11
  %7693 = sub i64 %7692, 56
  %7694 = load i64, i64* %PC.i9
  %7695 = add i64 %7694, 4
  store i64 %7695, i64* %PC.i9
  %7696 = inttoptr i64 %7693 to i64*
  %7697 = load i64, i64* %7696
  store i64 %7697, i64* %RDI.i10, align 8
  store %struct.Memory* %loadMem_4049ce, %struct.Memory** %MEMORY
  %loadMem_4049d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7699 = getelementptr inbounds %struct.GPR, %struct.GPR* %7698, i32 0, i32 33
  %7700 = getelementptr inbounds %struct.Reg, %struct.Reg* %7699, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %7700 to i64*
  %7701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7702 = getelementptr inbounds %struct.GPR, %struct.GPR* %7701, i32 0, i32 5
  %7703 = getelementptr inbounds %struct.Reg, %struct.Reg* %7702, i32 0, i32 0
  %RCX.i7 = bitcast %union.anon* %7703 to i64*
  %7704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7705 = getelementptr inbounds %struct.GPR, %struct.GPR* %7704, i32 0, i32 15
  %7706 = getelementptr inbounds %struct.Reg, %struct.Reg* %7705, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %7706 to i64*
  %7707 = load i64, i64* %RBP.i8
  %7708 = sub i64 %7707, 40
  %7709 = load i64, i64* %PC.i6
  %7710 = add i64 %7709, 4
  store i64 %7710, i64* %PC.i6
  %7711 = inttoptr i64 %7708 to i64*
  %7712 = load i64, i64* %7711
  store i64 %7712, i64* %RCX.i7, align 8
  store %struct.Memory* %loadMem_4049d2, %struct.Memory** %MEMORY
  %loadMem_4049d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7714 = getelementptr inbounds %struct.GPR, %struct.GPR* %7713, i32 0, i32 33
  %7715 = getelementptr inbounds %struct.Reg, %struct.Reg* %7714, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %7715 to i64*
  %7716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7717 = getelementptr inbounds %struct.GPR, %struct.GPR* %7716, i32 0, i32 5
  %7718 = getelementptr inbounds %struct.Reg, %struct.Reg* %7717, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7718 to i64*
  %7719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7720 = getelementptr inbounds %struct.GPR, %struct.GPR* %7719, i32 0, i32 11
  %7721 = getelementptr inbounds %struct.Reg, %struct.Reg* %7720, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %7721 to i64*
  %7722 = load i64, i64* %RCX.i
  %7723 = load i64, i64* %RDI.i
  %7724 = load i64, i64* %PC.i5
  %7725 = add i64 %7724, 3
  store i64 %7725, i64* %PC.i5
  %7726 = inttoptr i64 %7722 to i64*
  store i64 %7723, i64* %7726
  store %struct.Memory* %loadMem_4049d6, %struct.Memory** %MEMORY
  %loadMem_4049d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7728 = getelementptr inbounds %struct.GPR, %struct.GPR* %7727, i32 0, i32 33
  %7729 = getelementptr inbounds %struct.Reg, %struct.Reg* %7728, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %7729 to i64*
  %7730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7731 = getelementptr inbounds %struct.GPR, %struct.GPR* %7730, i32 0, i32 13
  %7732 = getelementptr inbounds %struct.Reg, %struct.Reg* %7731, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %7732 to i64*
  %7733 = load i64, i64* %RSP.i
  %7734 = load i64, i64* %PC.i4
  %7735 = add i64 %7734, 7
  store i64 %7735, i64* %PC.i4
  %7736 = add i64 128, %7733
  store i64 %7736, i64* %RSP.i, align 8
  %7737 = icmp ult i64 %7736, %7733
  %7738 = icmp ult i64 %7736, 128
  %7739 = or i1 %7737, %7738
  %7740 = zext i1 %7739 to i8
  %7741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7740, i8* %7741, align 1
  %7742 = trunc i64 %7736 to i32
  %7743 = and i32 %7742, 255
  %7744 = call i32 @llvm.ctpop.i32(i32 %7743)
  %7745 = trunc i32 %7744 to i8
  %7746 = and i8 %7745, 1
  %7747 = xor i8 %7746, 1
  %7748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7747, i8* %7748, align 1
  %7749 = xor i64 128, %7733
  %7750 = xor i64 %7749, %7736
  %7751 = lshr i64 %7750, 4
  %7752 = trunc i64 %7751 to i8
  %7753 = and i8 %7752, 1
  %7754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7753, i8* %7754, align 1
  %7755 = icmp eq i64 %7736, 0
  %7756 = zext i1 %7755 to i8
  %7757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7756, i8* %7757, align 1
  %7758 = lshr i64 %7736, 63
  %7759 = trunc i64 %7758 to i8
  %7760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7759, i8* %7760, align 1
  %7761 = lshr i64 %7733, 63
  %7762 = xor i64 %7758, %7761
  %7763 = add i64 %7762, %7758
  %7764 = icmp eq i64 %7763, 2
  %7765 = zext i1 %7764 to i8
  %7766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7765, i8* %7766, align 1
  store %struct.Memory* %loadMem_4049d9, %struct.Memory** %MEMORY
  %loadMem_4049e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7768 = getelementptr inbounds %struct.GPR, %struct.GPR* %7767, i32 0, i32 33
  %7769 = getelementptr inbounds %struct.Reg, %struct.Reg* %7768, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %7769 to i64*
  %7770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7771 = getelementptr inbounds %struct.GPR, %struct.GPR* %7770, i32 0, i32 15
  %7772 = getelementptr inbounds %struct.Reg, %struct.Reg* %7771, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %7772 to i64*
  %7773 = load i64, i64* %PC.i2
  %7774 = add i64 %7773, 1
  store i64 %7774, i64* %PC.i2
  %7775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7776 = load i64, i64* %7775, align 8
  %7777 = add i64 %7776, 8
  %7778 = inttoptr i64 %7776 to i64*
  %7779 = load i64, i64* %7778
  store i64 %7779, i64* %RBP.i3, align 8
  store i64 %7777, i64* %7775, align 8
  store %struct.Memory* %loadMem_4049e0, %struct.Memory** %MEMORY
  %loadMem_4049e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7781 = getelementptr inbounds %struct.GPR, %struct.GPR* %7780, i32 0, i32 33
  %7782 = getelementptr inbounds %struct.Reg, %struct.Reg* %7781, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %7782 to i64*
  %7783 = load i64, i64* %PC.i1
  %7784 = add i64 %7783, 1
  store i64 %7784, i64* %PC.i1
  %7785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7787 = load i64, i64* %7786, align 8
  %7788 = inttoptr i64 %7787 to i64*
  %7789 = load i64, i64* %7788
  store i64 %7789, i64* %7785, align 8
  %7790 = add i64 %7787, 8
  store i64 %7790, i64* %7786, align 8
  store %struct.Memory* %loadMem_4049e1, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4049e1
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

define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 128
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 128
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
  %23 = xor i64 128, %9
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

define %struct.Memory* @routine_movq__0x4559fe___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4559fe_type* @G__0x4559fe to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x212___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R9D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 530, i64* %9, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 28
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

define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq__rax___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sre_malloc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x98967f__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 120
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 9999999, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x6c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 108
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 20
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

define %struct.Memory* @routine_jge_.L_404463(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i64*
  %22 = load i64, i64* %21
  store i64 %22, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
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

define %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 76
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x78__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 120
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

define %struct.Memory* @routine_jge_.L_404449(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__edx__MINUS0x7c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 124
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40444f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x78__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 124
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
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

define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4043e7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x50375__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x50375__rip__type* @G_0x50375__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2ssl_MINUS0x4c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 28
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

define %struct.Memory* @routine_movaps__xmm0___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
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

define %struct.Memory* @routine_subsd__xmm3___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
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

define %struct.Memory* @routine_movaps__xmm0___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
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

define %struct.Memory* @routine_divsd__xmm4___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM4 to i8*
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

define %struct.Memory* @routine_addsd__xmm3___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
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

define %struct.Memory* @routine_mulsd__xmm4___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM4 to i8*
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

define %struct.Memory* @routine_addsd__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
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
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttsd2si__xmm1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %21, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
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

define %struct.Memory* @routine_movl_MINUS0x80__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
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

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x78__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 120
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

define %struct.Memory* @routine_jle_.L_4044cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4559fe___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4559fe_type* @G__0x4559fe to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x221___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 545, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x3___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 2
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__0x222___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 546, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq__ecx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x2___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 1
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4045a5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x225___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 549, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %22
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 76
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

define %struct.Memory* @routine_jg_.L_404592(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
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

define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_404561(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_404597(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40451e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x50233__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x50233__rip__type* @G_0x50233__rip_ to i64)
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

define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_addss_MINUS0x1c__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 28
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
  %25 = fadd float %24, %23
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

define %struct.Memory* @routine_divss__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movss__xmm1__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 28
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

define %struct.Memory* @routine_jge_.L_404683(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 100
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x4c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 76
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RSI, align 8
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

define %struct.Memory* @routine_cmpl__esi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ESI
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

define %struct.Memory* @routine_jge_.L_404670(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.sre_random(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_ja_.L_40462f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %17 = icmp eq i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 100
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, -1
  %16 = icmp ult i32 %14, -1
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
  %25 = xor i32 %14, -1
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
  %38 = xor i32 %37, 1
  %39 = xor i32 %34, %37
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_404649(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = sitofp i32 %12 to double
  %17 = bitcast i8* %11 to double*
  store double %16, double* %17, align 1
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

define %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
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
  store i64 %21, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_jmpq_.L_4045f8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_404675(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4045de(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 100
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_404732(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_404713(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RAX
  %18 = load i64, i64* %RCX
  %19 = mul i64 %18, 4
  %20 = add i64 %19, %17
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %20 to i32*
  %24 = load i32, i32* %23
  %25 = sub i32 %15, %24
  %26 = icmp ult i32 %15, %24
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %27, i8* %28, align 1
  %29 = and i32 %25, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = xor i32 %24, %15
  %36 = xor i32 %35, %25
  %37 = lshr i32 %36, 4
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %39, i8* %40, align 1
  %41 = icmp eq i32 %25, 0
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %25, 31
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %15, 31
  %48 = lshr i32 %24, 31
  %49 = xor i32 %48, %47
  %50 = xor i32 %44, %47
  %51 = add i32 %50, %49
  %52 = icmp eq i32 %51, 2
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %53, i8* %54, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_404700(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_404705(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4046b2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_404690(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x245___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 581, i64* %RSI, align 8
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

define %struct.Memory* @routine_jge_.L_4047a6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x247___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 583, i64* %RSI, align 8
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

define %struct.Memory* @routine_shlq__0x0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40475c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_404909(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_4048e7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 116
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movslq_MINUS0x70__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl___rcx__rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RCX
  %18 = load i64, i64* %RDX
  %19 = mul i64 %18, 4
  %20 = add i64 %19, %17
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %20 to i32*
  %24 = load i32, i32* %23
  %25 = sub i32 %15, %24
  %26 = icmp ult i32 %15, %24
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %27, i8* %28, align 1
  %29 = and i32 %25, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = xor i32 %24, %15
  %36 = xor i32 %35, %25
  %37 = lshr i32 %36, 4
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %39, i8* %40, align 1
  %41 = icmp eq i32 %25, 0
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %25, 31
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %15, 31
  %48 = lshr i32 %24, 31
  %49 = xor i32 %48, %47
  %50 = xor i32 %44, %47
  %51 = add i32 %50, %49
  %52 = icmp eq i32 %51, 2
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %53, i8* %54, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_404847(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x68__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
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

define %struct.Memory* @routine_movl__esi__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb___rax__rcx_1____dil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RCX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i8*
  %22 = load i8, i8* %21
  store i8 %22, i8* %DIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x64__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dil____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RCX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = add i64 %17, %16
  %19 = load i8, i8* %DIL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i8*
  store i8 %19, i8* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4047e1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40484c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_40488c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__0x20____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  store i8 32, i8* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4048d4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4048d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4047ce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  store i8 0, i8* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4047ad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x25b___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 603, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %12
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

define %struct.Memory* @routine_imulq__0x168___rax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 7
  store i64 %14, i64* %PC
  %15 = sext i64 %12 to i128
  %16 = and i128 %15, -18446744073709551616
  %17 = zext i64 %12 to i128
  %18 = or i128 %16, %17
  %19 = mul i128 360, %18
  %20 = trunc i128 %19 to i64
  store i64 %20, i64* %RDX, align 8
  %21 = sext i64 %20 to i128
  %22 = icmp ne i128 %21, %19
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = trunc i128 %19 to i32
  %26 = and i32 %25, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = lshr i64 %20, 63
  %35 = trunc i64 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %23, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x28__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4049a2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_imulq__0x168___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 360, %15
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

define %struct.Memory* @routine_imulq__0x168___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 360, %15
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

define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.SeqinfoCopy(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_404955(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.free_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.Free2DArray(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__rdi____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 128, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 128
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
  %25 = xor i64 128, %9
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
