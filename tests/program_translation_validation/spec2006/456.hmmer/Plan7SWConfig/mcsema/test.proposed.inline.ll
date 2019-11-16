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
%G_0x201b1__rip__type = type <{ [4 x i8] }>
%G_0x2020d__rip__type = type <{ [8 x i8] }>
%G_0x202ed__rip__type = type <{ [4 x i8] }>
%G_0x203b0__rip__type = type <{ [8 x i8] }>
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
@G_0x201b1__rip_ = global %G_0x201b1__rip__type zeroinitializer
@G_0x2020d__rip_ = global %G_0x2020d__rip__type zeroinitializer
@G_0x202ed__rip_ = global %G_0x202ed__rip__type zeroinitializer
@G_0x203b0__rip_ = global %G_0x203b0__rip__type zeroinitializer

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

declare %struct.Memory* @sub_451f40.FSet(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_433f00.Plan7RenormalizeExits(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @Plan7SWConfig(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_434420 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_434420, %struct.Memory** %MEMORY
  %loadMem_434421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i288 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i288
  %27 = load i64, i64* %PC.i287
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i287
  store i64 %26, i64* %RBP.i289, align 8
  store %struct.Memory* %loadMem_434421, %struct.Memory** %MEMORY
  %loadMem_434424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i286 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i286
  %36 = load i64, i64* %PC.i285
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i285
  %38 = sub i64 %35, 32
  store i64 %38, i64* %RSP.i286, align 8
  %39 = icmp ult i64 %35, 32
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
  %49 = xor i64 32, %35
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
  store %struct.Memory* %loadMem_434424, %struct.Memory** %MEMORY
  %loadMem_434428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 2
  %YMM2.i284 = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = bitcast %"class.std::bitset"* %YMM2.i284 to i8*
  %73 = load i64, i64* %PC.i283
  %74 = add i64 %73, ptrtoint (%G_0x203b0__rip__type* @G_0x203b0__rip_ to i64)
  %75 = load i64, i64* %PC.i283
  %76 = add i64 %75, 8
  store i64 %76, i64* %PC.i283
  %77 = inttoptr i64 %74 to double*
  %78 = load double, double* %77
  %79 = bitcast i8* %72 to double*
  store double %78, double* %79, align 1
  %80 = getelementptr inbounds i8, i8* %72, i64 8
  %81 = bitcast i8* %80 to double*
  store double 0.000000e+00, double* %81, align 1
  store %struct.Memory* %loadMem_434428, %struct.Memory** %MEMORY
  %loadMem_434430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %86 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %85, i64 0, i64 3
  %YMM3.i281 = bitcast %union.VectorReg* %86 to %"class.std::bitset"*
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %88 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %87, i64 0, i64 3
  %XMM3.i282 = bitcast %union.VectorReg* %88 to %union.vec128_t*
  %89 = bitcast %"class.std::bitset"* %YMM3.i281 to i8*
  %90 = bitcast %"class.std::bitset"* %YMM3.i281 to i8*
  %91 = bitcast %union.vec128_t* %XMM3.i282 to i8*
  %92 = load i64, i64* %PC.i280
  %93 = add i64 %92, 3
  store i64 %93, i64* %PC.i280
  %94 = bitcast i8* %90 to i64*
  %95 = load i64, i64* %94, align 1
  %96 = getelementptr inbounds i8, i8* %90, i64 8
  %97 = bitcast i8* %96 to i64*
  %98 = load i64, i64* %97, align 1
  %99 = bitcast i8* %91 to i64*
  %100 = load i64, i64* %99, align 1
  %101 = getelementptr inbounds i8, i8* %91, i64 8
  %102 = bitcast i8* %101 to i64*
  %103 = load i64, i64* %102, align 1
  %104 = xor i64 %100, %95
  %105 = xor i64 %103, %98
  %106 = trunc i64 %104 to i32
  %107 = lshr i64 %104, 32
  %108 = trunc i64 %107 to i32
  %109 = bitcast i8* %89 to i32*
  store i32 %106, i32* %109, align 1
  %110 = getelementptr inbounds i8, i8* %89, i64 4
  %111 = bitcast i8* %110 to i32*
  store i32 %108, i32* %111, align 1
  %112 = trunc i64 %105 to i32
  %113 = getelementptr inbounds i8, i8* %89, i64 8
  %114 = bitcast i8* %113 to i32*
  store i32 %112, i32* %114, align 1
  %115 = lshr i64 %105, 32
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds i8, i8* %89, i64 12
  %118 = bitcast i8* %117 to i32*
  store i32 %116, i32* %118, align 1
  store %struct.Memory* %loadMem_434430, %struct.Memory** %MEMORY
  %loadMem_434433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 33
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %121 to i64*
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %123 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %122, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %123 to %"class.std::bitset"*
  %124 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %125 = load i64, i64* %PC.i279
  %126 = add i64 %125, ptrtoint (%G_0x202ed__rip__type* @G_0x202ed__rip_ to i64)
  %127 = load i64, i64* %PC.i279
  %128 = add i64 %127, 8
  store i64 %128, i64* %PC.i279
  %129 = inttoptr i64 %126 to float*
  %130 = load float, float* %129
  %131 = bitcast i8* %124 to float*
  store float %130, float* %131, align 1
  %132 = getelementptr inbounds i8, i8* %124, i64 4
  %133 = bitcast i8* %132 to float*
  store float 0.000000e+00, float* %133, align 1
  %134 = getelementptr inbounds i8, i8* %124, i64 8
  %135 = bitcast i8* %134 to float*
  store float 0.000000e+00, float* %135, align 1
  %136 = getelementptr inbounds i8, i8* %124, i64 12
  %137 = bitcast i8* %136 to float*
  store float 0.000000e+00, float* %137, align 1
  store %struct.Memory* %loadMem_434433, %struct.Memory** %MEMORY
  %loadMem_43443b = load %struct.Memory*, %struct.Memory** %MEMORY
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 33
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %140 to i64*
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 11
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %RDI.i277 = bitcast %union.anon* %143 to i64*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 15
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %146 to i64*
  %147 = load i64, i64* %RBP.i278
  %148 = sub i64 %147, 8
  %149 = load i64, i64* %RDI.i277
  %150 = load i64, i64* %PC.i276
  %151 = add i64 %150, 4
  store i64 %151, i64* %PC.i276
  %152 = inttoptr i64 %148 to i64*
  store i64 %149, i64* %152
  store %struct.Memory* %loadMem_43443b, %struct.Memory** %MEMORY
  %loadMem_43443f = load %struct.Memory*, %struct.Memory** %MEMORY
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 33
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 15
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %158 to i64*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %160 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %159, i64 0, i64 0
  %XMM0.i275 = bitcast %union.VectorReg* %160 to %union.vec128_t*
  %161 = load i64, i64* %RBP.i274
  %162 = sub i64 %161, 12
  %163 = bitcast %union.vec128_t* %XMM0.i275 to i8*
  %164 = load i64, i64* %PC.i273
  %165 = add i64 %164, 5
  store i64 %165, i64* %PC.i273
  %166 = bitcast i8* %163 to <2 x float>*
  %167 = load <2 x float>, <2 x float>* %166, align 1
  %168 = extractelement <2 x float> %167, i32 0
  %169 = inttoptr i64 %162 to float*
  store float %168, float* %169
  store %struct.Memory* %loadMem_43443f, %struct.Memory** %MEMORY
  %loadMem_434444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 33
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %172 to i64*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 15
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %175 to i64*
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %177 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %176, i64 0, i64 1
  %XMM1.i272 = bitcast %union.VectorReg* %177 to %union.vec128_t*
  %178 = load i64, i64* %RBP.i271
  %179 = sub i64 %178, 16
  %180 = bitcast %union.vec128_t* %XMM1.i272 to i8*
  %181 = load i64, i64* %PC.i270
  %182 = add i64 %181, 5
  store i64 %182, i64* %PC.i270
  %183 = bitcast i8* %180 to <2 x float>*
  %184 = load <2 x float>, <2 x float>* %183, align 1
  %185 = extractelement <2 x float> %184, i32 0
  %186 = inttoptr i64 %179 to float*
  store float %185, float* %186
  store %struct.Memory* %loadMem_434444, %struct.Memory** %MEMORY
  %loadMem_434449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 33
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 11
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %RDI.i268 = bitcast %union.anon* %192 to i64*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 15
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %195 to i64*
  %196 = load i64, i64* %RBP.i269
  %197 = sub i64 %196, 8
  %198 = load i64, i64* %PC.i267
  %199 = add i64 %198, 4
  store i64 %199, i64* %PC.i267
  %200 = inttoptr i64 %197 to i64*
  %201 = load i64, i64* %200
  store i64 %201, i64* %RDI.i268, align 8
  store %struct.Memory* %loadMem_434449, %struct.Memory** %MEMORY
  %loadMem_43444d = load %struct.Memory*, %struct.Memory** %MEMORY
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 33
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %204 to i64*
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %206 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %205, i64 0, i64 0
  %YMM0.i265 = bitcast %union.VectorReg* %206 to %"class.std::bitset"*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %208 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %207, i64 0, i64 4
  %XMM4.i266 = bitcast %union.VectorReg* %208 to %union.vec128_t*
  %209 = bitcast %"class.std::bitset"* %YMM0.i265 to i8*
  %210 = bitcast %union.vec128_t* %XMM4.i266 to i8*
  %211 = load i64, i64* %PC.i264
  %212 = add i64 %211, 3
  store i64 %212, i64* %PC.i264
  %213 = bitcast i8* %210 to <2 x i32>*
  %214 = load <2 x i32>, <2 x i32>* %213, align 1
  %215 = getelementptr inbounds i8, i8* %210, i64 8
  %216 = bitcast i8* %215 to <2 x i32>*
  %217 = load <2 x i32>, <2 x i32>* %216, align 1
  %218 = extractelement <2 x i32> %214, i32 0
  %219 = bitcast i8* %209 to i32*
  store i32 %218, i32* %219, align 1
  %220 = extractelement <2 x i32> %214, i32 1
  %221 = getelementptr inbounds i8, i8* %209, i64 4
  %222 = bitcast i8* %221 to i32*
  store i32 %220, i32* %222, align 1
  %223 = extractelement <2 x i32> %217, i32 0
  %224 = getelementptr inbounds i8, i8* %209, i64 8
  %225 = bitcast i8* %224 to i32*
  store i32 %223, i32* %225, align 1
  %226 = extractelement <2 x i32> %217, i32 1
  %227 = getelementptr inbounds i8, i8* %209, i64 12
  %228 = bitcast i8* %227 to i32*
  store i32 %226, i32* %228, align 1
  store %struct.Memory* %loadMem_43444d, %struct.Memory** %MEMORY
  %loadMem_434450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 33
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %231 to i64*
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 11
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %RDI.i262 = bitcast %union.anon* %234 to i64*
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %236 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %235, i64 0, i64 0
  %YMM0.i263 = bitcast %union.VectorReg* %236 to %"class.std::bitset"*
  %237 = bitcast %"class.std::bitset"* %YMM0.i263 to i8*
  %238 = bitcast %"class.std::bitset"* %YMM0.i263 to i8*
  %239 = load i64, i64* %RDI.i262
  %240 = add i64 %239, 304
  %241 = load i64, i64* %PC.i261
  %242 = add i64 %241, 8
  store i64 %242, i64* %PC.i261
  %243 = bitcast i8* %238 to <2 x float>*
  %244 = load <2 x float>, <2 x float>* %243, align 1
  %245 = getelementptr inbounds i8, i8* %238, i64 8
  %246 = bitcast i8* %245 to <2 x i32>*
  %247 = load <2 x i32>, <2 x i32>* %246, align 1
  %248 = inttoptr i64 %240 to float*
  %249 = load float, float* %248
  %250 = extractelement <2 x float> %244, i32 0
  %251 = fsub float %250, %249
  %252 = bitcast i8* %237 to float*
  store float %251, float* %252, align 1
  %253 = bitcast <2 x float> %244 to <2 x i32>
  %254 = extractelement <2 x i32> %253, i32 1
  %255 = getelementptr inbounds i8, i8* %237, i64 4
  %256 = bitcast i8* %255 to i32*
  store i32 %254, i32* %256, align 1
  %257 = extractelement <2 x i32> %247, i32 0
  %258 = getelementptr inbounds i8, i8* %237, i64 8
  %259 = bitcast i8* %258 to i32*
  store i32 %257, i32* %259, align 1
  %260 = extractelement <2 x i32> %247, i32 1
  %261 = getelementptr inbounds i8, i8* %237, i64 12
  %262 = bitcast i8* %261 to i32*
  store i32 %260, i32* %262, align 1
  store %struct.Memory* %loadMem_434450, %struct.Memory** %MEMORY
  %loadMem_434458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 33
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %265 to i64*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 11
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %RDI.i259 = bitcast %union.anon* %268 to i64*
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 15
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %271 to i64*
  %272 = load i64, i64* %RBP.i260
  %273 = sub i64 %272, 8
  %274 = load i64, i64* %PC.i258
  %275 = add i64 %274, 4
  store i64 %275, i64* %PC.i258
  %276 = inttoptr i64 %273 to i64*
  %277 = load i64, i64* %276
  store i64 %277, i64* %RDI.i259, align 8
  store %struct.Memory* %loadMem_434458, %struct.Memory** %MEMORY
  %loadMem_43445c = load %struct.Memory*, %struct.Memory** %MEMORY
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 33
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %280 to i64*
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 11
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %RDI.i256 = bitcast %union.anon* %283 to i64*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %285 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %284, i64 0, i64 0
  %XMM0.i257 = bitcast %union.VectorReg* %285 to %union.vec128_t*
  %286 = load i64, i64* %RDI.i256
  %287 = add i64 %286, 172
  %288 = bitcast %union.vec128_t* %XMM0.i257 to i8*
  %289 = load i64, i64* %PC.i255
  %290 = add i64 %289, 8
  store i64 %290, i64* %PC.i255
  %291 = bitcast i8* %288 to <2 x float>*
  %292 = load <2 x float>, <2 x float>* %291, align 1
  %293 = extractelement <2 x float> %292, i32 0
  %294 = inttoptr i64 %287 to float*
  store float %293, float* %294
  store %struct.Memory* %loadMem_43445c, %struct.Memory** %MEMORY
  %loadMem_434464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 33
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %297 to i64*
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 11
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %RDI.i253 = bitcast %union.anon* %300 to i64*
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 15
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %303 to i64*
  %304 = load i64, i64* %RBP.i254
  %305 = sub i64 %304, 8
  %306 = load i64, i64* %PC.i252
  %307 = add i64 %306, 4
  store i64 %307, i64* %PC.i252
  %308 = inttoptr i64 %305 to i64*
  %309 = load i64, i64* %308
  store i64 %309, i64* %RDI.i253, align 8
  store %struct.Memory* %loadMem_434464, %struct.Memory** %MEMORY
  %loadMem_434468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 33
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %312 to i64*
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 11
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %RDI.i250 = bitcast %union.anon* %315 to i64*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %317 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %316, i64 0, i64 0
  %YMM0.i251 = bitcast %union.VectorReg* %317 to %"class.std::bitset"*
  %318 = bitcast %"class.std::bitset"* %YMM0.i251 to i8*
  %319 = load i64, i64* %RDI.i250
  %320 = add i64 %319, 304
  %321 = load i64, i64* %PC.i249
  %322 = add i64 %321, 8
  store i64 %322, i64* %PC.i249
  %323 = inttoptr i64 %320 to float*
  %324 = load float, float* %323
  %325 = bitcast i8* %318 to float*
  store float %324, float* %325, align 1
  %326 = getelementptr inbounds i8, i8* %318, i64 4
  %327 = bitcast i8* %326 to float*
  store float 0.000000e+00, float* %327, align 1
  %328 = getelementptr inbounds i8, i8* %318, i64 8
  %329 = bitcast i8* %328 to float*
  store float 0.000000e+00, float* %329, align 1
  %330 = getelementptr inbounds i8, i8* %318, i64 12
  %331 = bitcast i8* %330 to float*
  store float 0.000000e+00, float* %331, align 1
  store %struct.Memory* %loadMem_434468, %struct.Memory** %MEMORY
  %loadMem_434470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 33
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %334 to i64*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 11
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %RDI.i247 = bitcast %union.anon* %337 to i64*
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 15
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %340 to i64*
  %341 = load i64, i64* %RBP.i248
  %342 = sub i64 %341, 8
  %343 = load i64, i64* %PC.i246
  %344 = add i64 %343, 4
  store i64 %344, i64* %PC.i246
  %345 = inttoptr i64 %342 to i64*
  %346 = load i64, i64* %345
  store i64 %346, i64* %RDI.i247, align 8
  store %struct.Memory* %loadMem_434470, %struct.Memory** %MEMORY
  %loadMem_434474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 33
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %349 to i64*
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 11
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %RDI.i244 = bitcast %union.anon* %352 to i64*
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %354 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %353, i64 0, i64 0
  %XMM0.i245 = bitcast %union.VectorReg* %354 to %union.vec128_t*
  %355 = load i64, i64* %RDI.i244
  %356 = add i64 %355, 176
  %357 = bitcast %union.vec128_t* %XMM0.i245 to i8*
  %358 = load i64, i64* %PC.i243
  %359 = add i64 %358, 8
  store i64 %359, i64* %PC.i243
  %360 = bitcast i8* %357 to <2 x float>*
  %361 = load <2 x float>, <2 x float>* %360, align 1
  %362 = extractelement <2 x float> %361, i32 0
  %363 = inttoptr i64 %356 to float*
  store float %362, float* %363
  store %struct.Memory* %loadMem_434474, %struct.Memory** %MEMORY
  %loadMem_43447c = load %struct.Memory*, %struct.Memory** %MEMORY
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 33
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 11
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %RDI.i241 = bitcast %union.anon* %369 to i64*
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 15
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %372 to i64*
  %373 = load i64, i64* %RBP.i242
  %374 = sub i64 %373, 8
  %375 = load i64, i64* %PC.i240
  %376 = add i64 %375, 4
  store i64 %376, i64* %PC.i240
  %377 = inttoptr i64 %374 to i64*
  %378 = load i64, i64* %377
  store i64 %378, i64* %RDI.i241, align 8
  store %struct.Memory* %loadMem_43447c, %struct.Memory** %MEMORY
  %loadMem_434480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 33
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %381 to i64*
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 11
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %RDI.i238 = bitcast %union.anon* %384 to i64*
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %386 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %385, i64 0, i64 4
  %XMM4.i239 = bitcast %union.VectorReg* %386 to %union.vec128_t*
  %387 = load i64, i64* %RDI.i238
  %388 = add i64 %387, 180
  %389 = bitcast %union.vec128_t* %XMM4.i239 to i8*
  %390 = load i64, i64* %PC.i237
  %391 = add i64 %390, 8
  store i64 %391, i64* %PC.i237
  %392 = bitcast i8* %389 to <2 x float>*
  %393 = load <2 x float>, <2 x float>* %392, align 1
  %394 = extractelement <2 x float> %393, i32 0
  %395 = inttoptr i64 %388 to float*
  store float %394, float* %395
  store %struct.Memory* %loadMem_434480, %struct.Memory** %MEMORY
  %loadMem_434488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 33
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %398 to i64*
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 11
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %RDI.i235 = bitcast %union.anon* %401 to i64*
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 15
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %404 to i64*
  %405 = load i64, i64* %RBP.i236
  %406 = sub i64 %405, 8
  %407 = load i64, i64* %PC.i234
  %408 = add i64 %407, 4
  store i64 %408, i64* %PC.i234
  %409 = inttoptr i64 %406 to i64*
  %410 = load i64, i64* %409
  store i64 %410, i64* %RDI.i235, align 8
  store %struct.Memory* %loadMem_434488, %struct.Memory** %MEMORY
  %loadMem_43448c = load %struct.Memory*, %struct.Memory** %MEMORY
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 33
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %413 to i64*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 11
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %RDI.i232 = bitcast %union.anon* %416 to i64*
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %418 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %417, i64 0, i64 3
  %XMM3.i233 = bitcast %union.VectorReg* %418 to %union.vec128_t*
  %419 = load i64, i64* %RDI.i232
  %420 = add i64 %419, 184
  %421 = bitcast %union.vec128_t* %XMM3.i233 to i8*
  %422 = load i64, i64* %PC.i231
  %423 = add i64 %422, 8
  store i64 %423, i64* %PC.i231
  %424 = bitcast i8* %421 to <2 x float>*
  %425 = load <2 x float>, <2 x float>* %424, align 1
  %426 = extractelement <2 x float> %425, i32 0
  %427 = inttoptr i64 %420 to float*
  store float %426, float* %427
  store %struct.Memory* %loadMem_43448c, %struct.Memory** %MEMORY
  %loadMem_434494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 33
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %430 to i64*
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 11
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %RDI.i229 = bitcast %union.anon* %433 to i64*
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 15
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %436 to i64*
  %437 = load i64, i64* %RBP.i230
  %438 = sub i64 %437, 8
  %439 = load i64, i64* %PC.i228
  %440 = add i64 %439, 4
  store i64 %440, i64* %PC.i228
  %441 = inttoptr i64 %438 to i64*
  %442 = load i64, i64* %441
  store i64 %442, i64* %RDI.i229, align 8
  store %struct.Memory* %loadMem_434494, %struct.Memory** %MEMORY
  %loadMem_434498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 33
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %445 to i64*
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %447 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %446, i64 0, i64 0
  %YMM0.i226 = bitcast %union.VectorReg* %447 to %"class.std::bitset"*
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %449 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %448, i64 0, i64 4
  %XMM4.i227 = bitcast %union.VectorReg* %449 to %union.vec128_t*
  %450 = bitcast %"class.std::bitset"* %YMM0.i226 to i8*
  %451 = bitcast %union.vec128_t* %XMM4.i227 to i8*
  %452 = load i64, i64* %PC.i225
  %453 = add i64 %452, 3
  store i64 %453, i64* %PC.i225
  %454 = bitcast i8* %451 to <2 x i32>*
  %455 = load <2 x i32>, <2 x i32>* %454, align 1
  %456 = getelementptr inbounds i8, i8* %451, i64 8
  %457 = bitcast i8* %456 to <2 x i32>*
  %458 = load <2 x i32>, <2 x i32>* %457, align 1
  %459 = extractelement <2 x i32> %455, i32 0
  %460 = bitcast i8* %450 to i32*
  store i32 %459, i32* %460, align 1
  %461 = extractelement <2 x i32> %455, i32 1
  %462 = getelementptr inbounds i8, i8* %450, i64 4
  %463 = bitcast i8* %462 to i32*
  store i32 %461, i32* %463, align 1
  %464 = extractelement <2 x i32> %458, i32 0
  %465 = getelementptr inbounds i8, i8* %450, i64 8
  %466 = bitcast i8* %465 to i32*
  store i32 %464, i32* %466, align 1
  %467 = extractelement <2 x i32> %458, i32 1
  %468 = getelementptr inbounds i8, i8* %450, i64 12
  %469 = bitcast i8* %468 to i32*
  store i32 %467, i32* %469, align 1
  store %struct.Memory* %loadMem_434498, %struct.Memory** %MEMORY
  %loadMem_43449b = load %struct.Memory*, %struct.Memory** %MEMORY
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 33
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %472 to i64*
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 11
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %RDI.i223 = bitcast %union.anon* %475 to i64*
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %477 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %476, i64 0, i64 0
  %YMM0.i224 = bitcast %union.VectorReg* %477 to %"class.std::bitset"*
  %478 = bitcast %"class.std::bitset"* %YMM0.i224 to i8*
  %479 = bitcast %"class.std::bitset"* %YMM0.i224 to i8*
  %480 = load i64, i64* %RDI.i223
  %481 = add i64 %480, 304
  %482 = load i64, i64* %PC.i222
  %483 = add i64 %482, 8
  store i64 %483, i64* %PC.i222
  %484 = bitcast i8* %479 to <2 x float>*
  %485 = load <2 x float>, <2 x float>* %484, align 1
  %486 = getelementptr inbounds i8, i8* %479, i64 8
  %487 = bitcast i8* %486 to <2 x i32>*
  %488 = load <2 x i32>, <2 x i32>* %487, align 1
  %489 = inttoptr i64 %481 to float*
  %490 = load float, float* %489
  %491 = extractelement <2 x float> %485, i32 0
  %492 = fsub float %491, %490
  %493 = bitcast i8* %478 to float*
  store float %492, float* %493, align 1
  %494 = bitcast <2 x float> %485 to <2 x i32>
  %495 = extractelement <2 x i32> %494, i32 1
  %496 = getelementptr inbounds i8, i8* %478, i64 4
  %497 = bitcast i8* %496 to i32*
  store i32 %495, i32* %497, align 1
  %498 = extractelement <2 x i32> %488, i32 0
  %499 = getelementptr inbounds i8, i8* %478, i64 8
  %500 = bitcast i8* %499 to i32*
  store i32 %498, i32* %500, align 1
  %501 = extractelement <2 x i32> %488, i32 1
  %502 = getelementptr inbounds i8, i8* %478, i64 12
  %503 = bitcast i8* %502 to i32*
  store i32 %501, i32* %503, align 1
  store %struct.Memory* %loadMem_43449b, %struct.Memory** %MEMORY
  %loadMem_4344a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 33
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %506 to i64*
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 11
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %RDI.i220 = bitcast %union.anon* %509 to i64*
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 15
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %512 to i64*
  %513 = load i64, i64* %RBP.i221
  %514 = sub i64 %513, 8
  %515 = load i64, i64* %PC.i219
  %516 = add i64 %515, 4
  store i64 %516, i64* %PC.i219
  %517 = inttoptr i64 %514 to i64*
  %518 = load i64, i64* %517
  store i64 %518, i64* %RDI.i220, align 8
  store %struct.Memory* %loadMem_4344a3, %struct.Memory** %MEMORY
  %loadMem_4344a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 33
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %521 to i64*
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 11
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %RDI.i217 = bitcast %union.anon* %524 to i64*
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %526 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %525, i64 0, i64 0
  %XMM0.i218 = bitcast %union.VectorReg* %526 to %union.vec128_t*
  %527 = load i64, i64* %RDI.i217
  %528 = add i64 %527, 188
  %529 = bitcast %union.vec128_t* %XMM0.i218 to i8*
  %530 = load i64, i64* %PC.i216
  %531 = add i64 %530, 8
  store i64 %531, i64* %PC.i216
  %532 = bitcast i8* %529 to <2 x float>*
  %533 = load <2 x float>, <2 x float>* %532, align 1
  %534 = extractelement <2 x float> %533, i32 0
  %535 = inttoptr i64 %528 to float*
  store float %534, float* %535
  store %struct.Memory* %loadMem_4344a7, %struct.Memory** %MEMORY
  %loadMem_4344af = load %struct.Memory*, %struct.Memory** %MEMORY
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 33
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %538 to i64*
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 11
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %RDI.i214 = bitcast %union.anon* %541 to i64*
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %543 = getelementptr inbounds %struct.GPR, %struct.GPR* %542, i32 0, i32 15
  %544 = getelementptr inbounds %struct.Reg, %struct.Reg* %543, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %544 to i64*
  %545 = load i64, i64* %RBP.i215
  %546 = sub i64 %545, 8
  %547 = load i64, i64* %PC.i213
  %548 = add i64 %547, 4
  store i64 %548, i64* %PC.i213
  %549 = inttoptr i64 %546 to i64*
  %550 = load i64, i64* %549
  store i64 %550, i64* %RDI.i214, align 8
  store %struct.Memory* %loadMem_4344af, %struct.Memory** %MEMORY
  %loadMem_4344b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 33
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %553 to i64*
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 11
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %RDI.i211 = bitcast %union.anon* %556 to i64*
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %558 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %557, i64 0, i64 0
  %YMM0.i212 = bitcast %union.VectorReg* %558 to %"class.std::bitset"*
  %559 = bitcast %"class.std::bitset"* %YMM0.i212 to i8*
  %560 = load i64, i64* %RDI.i211
  %561 = add i64 %560, 304
  %562 = load i64, i64* %PC.i210
  %563 = add i64 %562, 8
  store i64 %563, i64* %PC.i210
  %564 = inttoptr i64 %561 to float*
  %565 = load float, float* %564
  %566 = bitcast i8* %559 to float*
  store float %565, float* %566, align 1
  %567 = getelementptr inbounds i8, i8* %559, i64 4
  %568 = bitcast i8* %567 to float*
  store float 0.000000e+00, float* %568, align 1
  %569 = getelementptr inbounds i8, i8* %559, i64 8
  %570 = bitcast i8* %569 to float*
  store float 0.000000e+00, float* %570, align 1
  %571 = getelementptr inbounds i8, i8* %559, i64 12
  %572 = bitcast i8* %571 to float*
  store float 0.000000e+00, float* %572, align 1
  store %struct.Memory* %loadMem_4344b3, %struct.Memory** %MEMORY
  %loadMem_4344bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 33
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %575 to i64*
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 11
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %RDI.i208 = bitcast %union.anon* %578 to i64*
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %580 = getelementptr inbounds %struct.GPR, %struct.GPR* %579, i32 0, i32 15
  %581 = getelementptr inbounds %struct.Reg, %struct.Reg* %580, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %581 to i64*
  %582 = load i64, i64* %RBP.i209
  %583 = sub i64 %582, 8
  %584 = load i64, i64* %PC.i207
  %585 = add i64 %584, 4
  store i64 %585, i64* %PC.i207
  %586 = inttoptr i64 %583 to i64*
  %587 = load i64, i64* %586
  store i64 %587, i64* %RDI.i208, align 8
  store %struct.Memory* %loadMem_4344bb, %struct.Memory** %MEMORY
  %loadMem_4344bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 33
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %590 to i64*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 11
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %RDI.i205 = bitcast %union.anon* %593 to i64*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %595 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %594, i64 0, i64 0
  %XMM0.i206 = bitcast %union.VectorReg* %595 to %union.vec128_t*
  %596 = load i64, i64* %RDI.i205
  %597 = add i64 %596, 192
  %598 = bitcast %union.vec128_t* %XMM0.i206 to i8*
  %599 = load i64, i64* %PC.i204
  %600 = add i64 %599, 8
  store i64 %600, i64* %PC.i204
  %601 = bitcast i8* %598 to <2 x float>*
  %602 = load <2 x float>, <2 x float>* %601, align 1
  %603 = extractelement <2 x float> %602, i32 0
  %604 = inttoptr i64 %597 to float*
  store float %603, float* %604
  store %struct.Memory* %loadMem_4344bf, %struct.Memory** %MEMORY
  %loadMem_4344c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 33
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %607 to i64*
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 11
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %RDI.i202 = bitcast %union.anon* %610 to i64*
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 15
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %613 to i64*
  %614 = load i64, i64* %RBP.i203
  %615 = sub i64 %614, 8
  %616 = load i64, i64* %PC.i201
  %617 = add i64 %616, 4
  store i64 %617, i64* %PC.i201
  %618 = inttoptr i64 %615 to i64*
  %619 = load i64, i64* %618
  store i64 %619, i64* %RDI.i202, align 8
  store %struct.Memory* %loadMem_4344c7, %struct.Memory** %MEMORY
  %loadMem_4344cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 33
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %622 to i64*
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %624 = getelementptr inbounds %struct.GPR, %struct.GPR* %623, i32 0, i32 11
  %625 = getelementptr inbounds %struct.Reg, %struct.Reg* %624, i32 0, i32 0
  %RDI.i200 = bitcast %union.anon* %625 to i64*
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %627 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %626, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %627 to %union.vec128_t*
  %628 = load i64, i64* %RDI.i200
  %629 = add i64 %628, 196
  %630 = bitcast %union.vec128_t* %XMM4.i to i8*
  %631 = load i64, i64* %PC.i199
  %632 = add i64 %631, 8
  store i64 %632, i64* %PC.i199
  %633 = bitcast i8* %630 to <2 x float>*
  %634 = load <2 x float>, <2 x float>* %633, align 1
  %635 = extractelement <2 x float> %634, i32 0
  %636 = inttoptr i64 %629 to float*
  store float %635, float* %636
  store %struct.Memory* %loadMem_4344cb, %struct.Memory** %MEMORY
  %loadMem_4344d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 33
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %639 to i64*
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 11
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %RDI.i197 = bitcast %union.anon* %642 to i64*
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 15
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %645 to i64*
  %646 = load i64, i64* %RBP.i198
  %647 = sub i64 %646, 8
  %648 = load i64, i64* %PC.i196
  %649 = add i64 %648, 4
  store i64 %649, i64* %PC.i196
  %650 = inttoptr i64 %647 to i64*
  %651 = load i64, i64* %650
  store i64 %651, i64* %RDI.i197, align 8
  store %struct.Memory* %loadMem_4344d3, %struct.Memory** %MEMORY
  %loadMem_4344d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 33
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %654 to i64*
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 11
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %RDI.i194 = bitcast %union.anon* %657 to i64*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %659 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %658, i64 0, i64 3
  %XMM3.i195 = bitcast %union.VectorReg* %659 to %union.vec128_t*
  %660 = load i64, i64* %RDI.i194
  %661 = add i64 %660, 200
  %662 = bitcast %union.vec128_t* %XMM3.i195 to i8*
  %663 = load i64, i64* %PC.i193
  %664 = add i64 %663, 8
  store i64 %664, i64* %PC.i193
  %665 = bitcast i8* %662 to <2 x float>*
  %666 = load <2 x float>, <2 x float>* %665, align 1
  %667 = extractelement <2 x float> %666, i32 0
  %668 = inttoptr i64 %661 to float*
  store float %667, float* %668
  store %struct.Memory* %loadMem_4344d7, %struct.Memory** %MEMORY
  %loadMem_4344df = load %struct.Memory*, %struct.Memory** %MEMORY
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %670 = getelementptr inbounds %struct.GPR, %struct.GPR* %669, i32 0, i32 33
  %671 = getelementptr inbounds %struct.Reg, %struct.Reg* %670, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %671 to i64*
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 15
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %674 to i64*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %676 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %675, i64 0, i64 0
  %YMM0.i192 = bitcast %union.VectorReg* %676 to %"class.std::bitset"*
  %677 = bitcast %"class.std::bitset"* %YMM0.i192 to i8*
  %678 = load i64, i64* %RBP.i191
  %679 = sub i64 %678, 12
  %680 = load i64, i64* %PC.i190
  %681 = add i64 %680, 5
  store i64 %681, i64* %PC.i190
  %682 = inttoptr i64 %679 to float*
  %683 = load float, float* %682
  %684 = fpext float %683 to double
  %685 = bitcast i8* %677 to double*
  store double %684, double* %685, align 1
  store %struct.Memory* %loadMem_4344df, %struct.Memory** %MEMORY
  %loadMem_4344e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 33
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %688 to i64*
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %690 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %689, i64 0, i64 1
  %YMM1.i188 = bitcast %union.VectorReg* %690 to %"class.std::bitset"*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %692 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %691, i64 0, i64 2
  %XMM2.i189 = bitcast %union.VectorReg* %692 to %union.vec128_t*
  %693 = bitcast %"class.std::bitset"* %YMM1.i188 to i8*
  %694 = bitcast %union.vec128_t* %XMM2.i189 to i8*
  %695 = load i64, i64* %PC.i187
  %696 = add i64 %695, 3
  store i64 %696, i64* %PC.i187
  %697 = bitcast i8* %694 to <2 x i32>*
  %698 = load <2 x i32>, <2 x i32>* %697, align 1
  %699 = getelementptr inbounds i8, i8* %694, i64 8
  %700 = bitcast i8* %699 to <2 x i32>*
  %701 = load <2 x i32>, <2 x i32>* %700, align 1
  %702 = extractelement <2 x i32> %698, i32 0
  %703 = bitcast i8* %693 to i32*
  store i32 %702, i32* %703, align 1
  %704 = extractelement <2 x i32> %698, i32 1
  %705 = getelementptr inbounds i8, i8* %693, i64 4
  %706 = bitcast i8* %705 to i32*
  store i32 %704, i32* %706, align 1
  %707 = extractelement <2 x i32> %701, i32 0
  %708 = getelementptr inbounds i8, i8* %693, i64 8
  %709 = bitcast i8* %708 to i32*
  store i32 %707, i32* %709, align 1
  %710 = extractelement <2 x i32> %701, i32 1
  %711 = getelementptr inbounds i8, i8* %693, i64 12
  %712 = bitcast i8* %711 to i32*
  store i32 %710, i32* %712, align 1
  store %struct.Memory* %loadMem_4344e4, %struct.Memory** %MEMORY
  %loadMem_4344e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 33
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %715 to i64*
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %717 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %716, i64 0, i64 1
  %YMM1.i185 = bitcast %union.VectorReg* %717 to %"class.std::bitset"*
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %719 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %718, i64 0, i64 0
  %XMM0.i186 = bitcast %union.VectorReg* %719 to %union.vec128_t*
  %720 = bitcast %"class.std::bitset"* %YMM1.i185 to i8*
  %721 = bitcast %"class.std::bitset"* %YMM1.i185 to i8*
  %722 = bitcast %union.vec128_t* %XMM0.i186 to i8*
  %723 = load i64, i64* %PC.i184
  %724 = add i64 %723, 4
  store i64 %724, i64* %PC.i184
  %725 = bitcast i8* %721 to double*
  %726 = load double, double* %725, align 1
  %727 = getelementptr inbounds i8, i8* %721, i64 8
  %728 = bitcast i8* %727 to i64*
  %729 = load i64, i64* %728, align 1
  %730 = bitcast i8* %722 to double*
  %731 = load double, double* %730, align 1
  %732 = fsub double %726, %731
  %733 = bitcast i8* %720 to double*
  store double %732, double* %733, align 1
  %734 = getelementptr inbounds i8, i8* %720, i64 8
  %735 = bitcast i8* %734 to i64*
  store i64 %729, i64* %735, align 1
  store %struct.Memory* %loadMem_4344e7, %struct.Memory** %MEMORY
  %loadMem_4344eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 33
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 11
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %RDI.i182 = bitcast %union.anon* %741 to i64*
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 15
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %744 to i64*
  %745 = load i64, i64* %RBP.i183
  %746 = sub i64 %745, 8
  %747 = load i64, i64* %PC.i181
  %748 = add i64 %747, 4
  store i64 %748, i64* %PC.i181
  %749 = inttoptr i64 %746 to i64*
  %750 = load i64, i64* %749
  store i64 %750, i64* %RDI.i182, align 8
  store %struct.Memory* %loadMem_4344eb, %struct.Memory** %MEMORY
  %loadMem_4344ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %752 = getelementptr inbounds %struct.GPR, %struct.GPR* %751, i32 0, i32 33
  %753 = getelementptr inbounds %struct.Reg, %struct.Reg* %752, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %753 to i64*
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 11
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %RDI.i179 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %758 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %757, i64 0, i64 0
  %YMM0.i180 = bitcast %union.VectorReg* %758 to %"class.std::bitset"*
  %759 = bitcast %"class.std::bitset"* %YMM0.i180 to i8*
  %760 = load i64, i64* %RDI.i179
  %761 = add i64 %760, 168
  %762 = load i64, i64* %PC.i178
  %763 = add i64 %762, 8
  store i64 %763, i64* %PC.i178
  %764 = inttoptr i64 %761 to float*
  %765 = load float, float* %764
  %766 = fpext float %765 to double
  %767 = bitcast i8* %759 to double*
  store double %766, double* %767, align 1
  store %struct.Memory* %loadMem_4344ef, %struct.Memory** %MEMORY
  %loadMem_4344f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %769 = getelementptr inbounds %struct.GPR, %struct.GPR* %768, i32 0, i32 33
  %770 = getelementptr inbounds %struct.Reg, %struct.Reg* %769, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %770 to i64*
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %772 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %771, i64 0, i64 3
  %YMM3.i176 = bitcast %union.VectorReg* %772 to %"class.std::bitset"*
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %774 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %773, i64 0, i64 2
  %XMM2.i177 = bitcast %union.VectorReg* %774 to %union.vec128_t*
  %775 = bitcast %"class.std::bitset"* %YMM3.i176 to i8*
  %776 = bitcast %union.vec128_t* %XMM2.i177 to i8*
  %777 = load i64, i64* %PC.i175
  %778 = add i64 %777, 3
  store i64 %778, i64* %PC.i175
  %779 = bitcast i8* %776 to <2 x i32>*
  %780 = load <2 x i32>, <2 x i32>* %779, align 1
  %781 = getelementptr inbounds i8, i8* %776, i64 8
  %782 = bitcast i8* %781 to <2 x i32>*
  %783 = load <2 x i32>, <2 x i32>* %782, align 1
  %784 = extractelement <2 x i32> %780, i32 0
  %785 = bitcast i8* %775 to i32*
  store i32 %784, i32* %785, align 1
  %786 = extractelement <2 x i32> %780, i32 1
  %787 = getelementptr inbounds i8, i8* %775, i64 4
  %788 = bitcast i8* %787 to i32*
  store i32 %786, i32* %788, align 1
  %789 = extractelement <2 x i32> %783, i32 0
  %790 = getelementptr inbounds i8, i8* %775, i64 8
  %791 = bitcast i8* %790 to i32*
  store i32 %789, i32* %791, align 1
  %792 = extractelement <2 x i32> %783, i32 1
  %793 = getelementptr inbounds i8, i8* %775, i64 12
  %794 = bitcast i8* %793 to i32*
  store i32 %792, i32* %794, align 1
  store %struct.Memory* %loadMem_4344f7, %struct.Memory** %MEMORY
  %loadMem_4344fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 33
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %797 to i64*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %799 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %798, i64 0, i64 3
  %YMM3.i173 = bitcast %union.VectorReg* %799 to %"class.std::bitset"*
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %801 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %800, i64 0, i64 0
  %XMM0.i174 = bitcast %union.VectorReg* %801 to %union.vec128_t*
  %802 = bitcast %"class.std::bitset"* %YMM3.i173 to i8*
  %803 = bitcast %"class.std::bitset"* %YMM3.i173 to i8*
  %804 = bitcast %union.vec128_t* %XMM0.i174 to i8*
  %805 = load i64, i64* %PC.i172
  %806 = add i64 %805, 4
  store i64 %806, i64* %PC.i172
  %807 = bitcast i8* %803 to double*
  %808 = load double, double* %807, align 1
  %809 = getelementptr inbounds i8, i8* %803, i64 8
  %810 = bitcast i8* %809 to i64*
  %811 = load i64, i64* %810, align 1
  %812 = bitcast i8* %804 to double*
  %813 = load double, double* %812, align 1
  %814 = fsub double %808, %813
  %815 = bitcast i8* %802 to double*
  store double %814, double* %815, align 1
  %816 = getelementptr inbounds i8, i8* %802, i64 8
  %817 = bitcast i8* %816 to i64*
  store i64 %811, i64* %817, align 1
  store %struct.Memory* %loadMem_4344fa, %struct.Memory** %MEMORY
  %loadMem_4344fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 33
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %820 to i64*
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %822 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %821, i64 0, i64 1
  %YMM1.i170 = bitcast %union.VectorReg* %822 to %"class.std::bitset"*
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %824 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %823, i64 0, i64 3
  %XMM3.i171 = bitcast %union.VectorReg* %824 to %union.vec128_t*
  %825 = bitcast %"class.std::bitset"* %YMM1.i170 to i8*
  %826 = bitcast %"class.std::bitset"* %YMM1.i170 to i8*
  %827 = bitcast %union.vec128_t* %XMM3.i171 to i8*
  %828 = load i64, i64* %PC.i169
  %829 = add i64 %828, 4
  store i64 %829, i64* %PC.i169
  %830 = bitcast i8* %826 to double*
  %831 = load double, double* %830, align 1
  %832 = getelementptr inbounds i8, i8* %826, i64 8
  %833 = bitcast i8* %832 to i64*
  %834 = load i64, i64* %833, align 1
  %835 = bitcast i8* %827 to double*
  %836 = load double, double* %835, align 1
  %837 = fmul double %831, %836
  %838 = bitcast i8* %825 to double*
  store double %837, double* %838, align 1
  %839 = getelementptr inbounds i8, i8* %825, i64 8
  %840 = bitcast i8* %839 to i64*
  store i64 %834, i64* %840, align 1
  store %struct.Memory* %loadMem_4344fe, %struct.Memory** %MEMORY
  %loadMem_434502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 33
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %843 to i64*
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %845 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %844, i64 0, i64 0
  %YMM0.i167 = bitcast %union.VectorReg* %845 to %"class.std::bitset"*
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %847 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %846, i64 0, i64 1
  %XMM1.i168 = bitcast %union.VectorReg* %847 to %union.vec128_t*
  %848 = bitcast %"class.std::bitset"* %YMM0.i167 to i8*
  %849 = bitcast %union.vec128_t* %XMM1.i168 to i8*
  %850 = load i64, i64* %PC.i166
  %851 = add i64 %850, 4
  store i64 %851, i64* %PC.i166
  %852 = bitcast i8* %848 to <2 x i32>*
  %853 = load <2 x i32>, <2 x i32>* %852, align 1
  %854 = getelementptr inbounds i8, i8* %848, i64 8
  %855 = bitcast i8* %854 to <2 x i32>*
  %856 = load <2 x i32>, <2 x i32>* %855, align 1
  %857 = bitcast i8* %849 to double*
  %858 = load double, double* %857, align 1
  %859 = fptrunc double %858 to float
  %860 = bitcast i8* %848 to float*
  store float %859, float* %860, align 1
  %861 = extractelement <2 x i32> %853, i32 1
  %862 = getelementptr inbounds i8, i8* %848, i64 4
  %863 = bitcast i8* %862 to i32*
  store i32 %861, i32* %863, align 1
  %864 = extractelement <2 x i32> %856, i32 0
  %865 = bitcast i8* %854 to i32*
  store i32 %864, i32* %865, align 1
  %866 = extractelement <2 x i32> %856, i32 1
  %867 = getelementptr inbounds i8, i8* %848, i64 12
  %868 = bitcast i8* %867 to i32*
  store i32 %866, i32* %868, align 1
  store %struct.Memory* %loadMem_434502, %struct.Memory** %MEMORY
  %loadMem_434506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 33
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %871 to i64*
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %873 = getelementptr inbounds %struct.GPR, %struct.GPR* %872, i32 0, i32 11
  %874 = getelementptr inbounds %struct.Reg, %struct.Reg* %873, i32 0, i32 0
  %RDI.i164 = bitcast %union.anon* %874 to i64*
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 15
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %877 to i64*
  %878 = load i64, i64* %RBP.i165
  %879 = sub i64 %878, 8
  %880 = load i64, i64* %PC.i163
  %881 = add i64 %880, 4
  store i64 %881, i64* %PC.i163
  %882 = inttoptr i64 %879 to i64*
  %883 = load i64, i64* %882
  store i64 %883, i64* %RDI.i164, align 8
  store %struct.Memory* %loadMem_434506, %struct.Memory** %MEMORY
  %loadMem_43450a = load %struct.Memory*, %struct.Memory** %MEMORY
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 33
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %886 to i64*
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 11
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %RDI.i162 = bitcast %union.anon* %889 to i64*
  %890 = load i64, i64* %RDI.i162
  %891 = add i64 %890, 208
  %892 = load i64, i64* %PC.i161
  %893 = add i64 %892, 7
  store i64 %893, i64* %PC.i161
  %894 = inttoptr i64 %891 to i64*
  %895 = load i64, i64* %894
  store i64 %895, i64* %RDI.i162, align 8
  store %struct.Memory* %loadMem_43450a, %struct.Memory** %MEMORY
  %loadMem_434511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %897 = getelementptr inbounds %struct.GPR, %struct.GPR* %896, i32 0, i32 33
  %898 = getelementptr inbounds %struct.Reg, %struct.Reg* %897, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %898 to i64*
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 11
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %RDI.i159 = bitcast %union.anon* %901 to i64*
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %903 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %902, i64 0, i64 0
  %XMM0.i160 = bitcast %union.VectorReg* %903 to %union.vec128_t*
  %904 = load i64, i64* %RDI.i159
  %905 = add i64 %904, 4
  %906 = bitcast %union.vec128_t* %XMM0.i160 to i8*
  %907 = load i64, i64* %PC.i158
  %908 = add i64 %907, 5
  store i64 %908, i64* %PC.i158
  %909 = bitcast i8* %906 to <2 x float>*
  %910 = load <2 x float>, <2 x float>* %909, align 1
  %911 = extractelement <2 x float> %910, i32 0
  %912 = inttoptr i64 %905 to float*
  store float %911, float* %912
  store %struct.Memory* %loadMem_434511, %struct.Memory** %MEMORY
  %loadMem_434516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 33
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 11
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %RDI.i156 = bitcast %union.anon* %918 to i64*
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 15
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %921 to i64*
  %922 = load i64, i64* %RBP.i157
  %923 = sub i64 %922, 8
  %924 = load i64, i64* %PC.i155
  %925 = add i64 %924, 4
  store i64 %925, i64* %PC.i155
  %926 = inttoptr i64 %923 to i64*
  %927 = load i64, i64* %926
  store i64 %927, i64* %RDI.i156, align 8
  store %struct.Memory* %loadMem_434516, %struct.Memory** %MEMORY
  %loadMem_43451a = load %struct.Memory*, %struct.Memory** %MEMORY
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 33
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %930 to i64*
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 11
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %RDI.i154 = bitcast %union.anon* %933 to i64*
  %934 = load i64, i64* %RDI.i154
  %935 = add i64 %934, 208
  %936 = load i64, i64* %PC.i153
  %937 = add i64 %936, 7
  store i64 %937, i64* %PC.i153
  %938 = inttoptr i64 %935 to i64*
  %939 = load i64, i64* %938
  store i64 %939, i64* %RDI.i154, align 8
  store %struct.Memory* %loadMem_43451a, %struct.Memory** %MEMORY
  %loadMem_434521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 33
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %942 to i64*
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 11
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %RDI.i152 = bitcast %union.anon* %945 to i64*
  %946 = load i64, i64* %RDI.i152
  %947 = load i64, i64* %PC.i151
  %948 = add i64 %947, 4
  store i64 %948, i64* %PC.i151
  %949 = add i64 8, %946
  store i64 %949, i64* %RDI.i152, align 8
  %950 = icmp ult i64 %949, %946
  %951 = icmp ult i64 %949, 8
  %952 = or i1 %950, %951
  %953 = zext i1 %952 to i8
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %953, i8* %954, align 1
  %955 = trunc i64 %949 to i32
  %956 = and i32 %955, 255
  %957 = call i32 @llvm.ctpop.i32(i32 %956)
  %958 = trunc i32 %957 to i8
  %959 = and i8 %958, 1
  %960 = xor i8 %959, 1
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %960, i8* %961, align 1
  %962 = xor i64 8, %946
  %963 = xor i64 %962, %949
  %964 = lshr i64 %963, 4
  %965 = trunc i64 %964 to i8
  %966 = and i8 %965, 1
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %966, i8* %967, align 1
  %968 = icmp eq i64 %949, 0
  %969 = zext i1 %968 to i8
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %969, i8* %970, align 1
  %971 = lshr i64 %949, 63
  %972 = trunc i64 %971 to i8
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %972, i8* %973, align 1
  %974 = lshr i64 %946, 63
  %975 = xor i64 %971, %974
  %976 = add i64 %975, %971
  %977 = icmp eq i64 %976, 2
  %978 = zext i1 %977 to i8
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %978, i8* %979, align 1
  store %struct.Memory* %loadMem_434521, %struct.Memory** %MEMORY
  %loadMem_434525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %981 = getelementptr inbounds %struct.GPR, %struct.GPR* %980, i32 0, i32 33
  %982 = getelementptr inbounds %struct.Reg, %struct.Reg* %981, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %982 to i64*
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 1
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %985 to i64*
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 15
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %988 to i64*
  %989 = load i64, i64* %RBP.i150
  %990 = sub i64 %989, 8
  %991 = load i64, i64* %PC.i148
  %992 = add i64 %991, 4
  store i64 %992, i64* %PC.i148
  %993 = inttoptr i64 %990 to i64*
  %994 = load i64, i64* %993
  store i64 %994, i64* %RAX.i149, align 8
  store %struct.Memory* %loadMem_434525, %struct.Memory** %MEMORY
  %loadMem_434529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 33
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %997 to i64*
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 1
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %1000 to i64*
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1002 = getelementptr inbounds %struct.GPR, %struct.GPR* %1001, i32 0, i32 5
  %1003 = getelementptr inbounds %struct.Reg, %struct.Reg* %1002, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %1003 to i64*
  %1004 = load i64, i64* %RAX.i146
  %1005 = add i64 %1004, 136
  %1006 = load i64, i64* %PC.i145
  %1007 = add i64 %1006, 6
  store i64 %1007, i64* %PC.i145
  %1008 = inttoptr i64 %1005 to i32*
  %1009 = load i32, i32* %1008
  %1010 = zext i32 %1009 to i64
  store i64 %1010, i64* %RCX.i147, align 8
  store %struct.Memory* %loadMem_434529, %struct.Memory** %MEMORY
  %loadMem_43452f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 33
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %1013 to i64*
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1015 = getelementptr inbounds %struct.GPR, %struct.GPR* %1014, i32 0, i32 5
  %1016 = getelementptr inbounds %struct.Reg, %struct.Reg* %1015, i32 0, i32 0
  %RCX.i144 = bitcast %union.anon* %1016 to i64*
  %1017 = load i64, i64* %RCX.i144
  %1018 = load i64, i64* %PC.i143
  %1019 = add i64 %1018, 3
  store i64 %1019, i64* %PC.i143
  %1020 = trunc i64 %1017 to i32
  %1021 = sub i32 %1020, 1
  %1022 = zext i32 %1021 to i64
  store i64 %1022, i64* %RCX.i144, align 8
  %1023 = icmp ult i32 %1020, 1
  %1024 = zext i1 %1023 to i8
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1024, i8* %1025, align 1
  %1026 = and i32 %1021, 255
  %1027 = call i32 @llvm.ctpop.i32(i32 %1026)
  %1028 = trunc i32 %1027 to i8
  %1029 = and i8 %1028, 1
  %1030 = xor i8 %1029, 1
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1030, i8* %1031, align 1
  %1032 = xor i64 1, %1017
  %1033 = trunc i64 %1032 to i32
  %1034 = xor i32 %1033, %1021
  %1035 = lshr i32 %1034, 4
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1037, i8* %1038, align 1
  %1039 = icmp eq i32 %1021, 0
  %1040 = zext i1 %1039 to i8
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1040, i8* %1041, align 1
  %1042 = lshr i32 %1021, 31
  %1043 = trunc i32 %1042 to i8
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1043, i8* %1044, align 1
  %1045 = lshr i32 %1020, 31
  %1046 = xor i32 %1042, %1045
  %1047 = add i32 %1046, %1045
  %1048 = icmp eq i32 %1047, 2
  %1049 = zext i1 %1048 to i8
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1049, i8* %1050, align 1
  store %struct.Memory* %loadMem_43452f, %struct.Memory** %MEMORY
  %loadMem_434532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 33
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %1053 to i64*
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1055 = getelementptr inbounds %struct.GPR, %struct.GPR* %1054, i32 0, i32 15
  %1056 = getelementptr inbounds %struct.Reg, %struct.Reg* %1055, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %1056 to i64*
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1058 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1057, i64 0, i64 0
  %YMM0.i142 = bitcast %union.VectorReg* %1058 to %"class.std::bitset"*
  %1059 = bitcast %"class.std::bitset"* %YMM0.i142 to i8*
  %1060 = load i64, i64* %RBP.i141
  %1061 = sub i64 %1060, 12
  %1062 = load i64, i64* %PC.i140
  %1063 = add i64 %1062, 5
  store i64 %1063, i64* %PC.i140
  %1064 = inttoptr i64 %1061 to float*
  %1065 = load float, float* %1064
  %1066 = fpext float %1065 to double
  %1067 = bitcast i8* %1059 to double*
  store double %1066, double* %1067, align 1
  store %struct.Memory* %loadMem_434532, %struct.Memory** %MEMORY
  %loadMem_434537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 33
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %1070 to i64*
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 1
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %1073 to i64*
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 15
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %1076 to i64*
  %1077 = load i64, i64* %RBP.i139
  %1078 = sub i64 %1077, 8
  %1079 = load i64, i64* %PC.i137
  %1080 = add i64 %1079, 4
  store i64 %1080, i64* %PC.i137
  %1081 = inttoptr i64 %1078 to i64*
  %1082 = load i64, i64* %1081
  store i64 %1082, i64* %RAX.i138, align 8
  store %struct.Memory* %loadMem_434537, %struct.Memory** %MEMORY
  %loadMem_43453b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1084 = getelementptr inbounds %struct.GPR, %struct.GPR* %1083, i32 0, i32 33
  %1085 = getelementptr inbounds %struct.Reg, %struct.Reg* %1084, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %1085 to i64*
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 1
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %1088 to i64*
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1090 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1089, i64 0, i64 1
  %YMM1.i136 = bitcast %union.VectorReg* %1090 to %"class.std::bitset"*
  %1091 = bitcast %"class.std::bitset"* %YMM1.i136 to i8*
  %1092 = load i64, i64* %RAX.i135
  %1093 = add i64 %1092, 168
  %1094 = load i64, i64* %PC.i134
  %1095 = add i64 %1094, 8
  store i64 %1095, i64* %PC.i134
  %1096 = inttoptr i64 %1093 to float*
  %1097 = load float, float* %1096
  %1098 = fpext float %1097 to double
  %1099 = bitcast i8* %1091 to double*
  store double %1098, double* %1099, align 1
  store %struct.Memory* %loadMem_43453b, %struct.Memory** %MEMORY
  %loadMem_434543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1101 = getelementptr inbounds %struct.GPR, %struct.GPR* %1100, i32 0, i32 33
  %1102 = getelementptr inbounds %struct.Reg, %struct.Reg* %1101, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %1102 to i64*
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1104 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1103, i64 0, i64 2
  %YMM2.i132 = bitcast %union.VectorReg* %1104 to %"class.std::bitset"*
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1106 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1105, i64 0, i64 1
  %XMM1.i133 = bitcast %union.VectorReg* %1106 to %union.vec128_t*
  %1107 = bitcast %"class.std::bitset"* %YMM2.i132 to i8*
  %1108 = bitcast %"class.std::bitset"* %YMM2.i132 to i8*
  %1109 = bitcast %union.vec128_t* %XMM1.i133 to i8*
  %1110 = load i64, i64* %PC.i131
  %1111 = add i64 %1110, 4
  store i64 %1111, i64* %PC.i131
  %1112 = bitcast i8* %1108 to double*
  %1113 = load double, double* %1112, align 1
  %1114 = getelementptr inbounds i8, i8* %1108, i64 8
  %1115 = bitcast i8* %1114 to i64*
  %1116 = load i64, i64* %1115, align 1
  %1117 = bitcast i8* %1109 to double*
  %1118 = load double, double* %1117, align 1
  %1119 = fsub double %1113, %1118
  %1120 = bitcast i8* %1107 to double*
  store double %1119, double* %1120, align 1
  %1121 = getelementptr inbounds i8, i8* %1107, i64 8
  %1122 = bitcast i8* %1121 to i64*
  store i64 %1116, i64* %1122, align 1
  store %struct.Memory* %loadMem_434543, %struct.Memory** %MEMORY
  %loadMem_434547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 33
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %1125 to i64*
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1127 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1126, i64 0, i64 0
  %YMM0.i129 = bitcast %union.VectorReg* %1127 to %"class.std::bitset"*
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1129 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1128, i64 0, i64 2
  %XMM2.i130 = bitcast %union.VectorReg* %1129 to %union.vec128_t*
  %1130 = bitcast %"class.std::bitset"* %YMM0.i129 to i8*
  %1131 = bitcast %"class.std::bitset"* %YMM0.i129 to i8*
  %1132 = bitcast %union.vec128_t* %XMM2.i130 to i8*
  %1133 = load i64, i64* %PC.i128
  %1134 = add i64 %1133, 4
  store i64 %1134, i64* %PC.i128
  %1135 = bitcast i8* %1131 to double*
  %1136 = load double, double* %1135, align 1
  %1137 = getelementptr inbounds i8, i8* %1131, i64 8
  %1138 = bitcast i8* %1137 to i64*
  %1139 = load i64, i64* %1138, align 1
  %1140 = bitcast i8* %1132 to double*
  %1141 = load double, double* %1140, align 1
  %1142 = fmul double %1136, %1141
  %1143 = bitcast i8* %1130 to double*
  store double %1142, double* %1143, align 1
  %1144 = getelementptr inbounds i8, i8* %1130, i64 8
  %1145 = bitcast i8* %1144 to i64*
  store i64 %1139, i64* %1145, align 1
  store %struct.Memory* %loadMem_434547, %struct.Memory** %MEMORY
  %loadMem_43454b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1147 = getelementptr inbounds %struct.GPR, %struct.GPR* %1146, i32 0, i32 33
  %1148 = getelementptr inbounds %struct.Reg, %struct.Reg* %1147, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %1148 to i64*
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 1
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %1151 to i64*
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 15
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %1154 to i64*
  %1155 = load i64, i64* %RBP.i127
  %1156 = sub i64 %1155, 8
  %1157 = load i64, i64* %PC.i125
  %1158 = add i64 %1157, 4
  store i64 %1158, i64* %PC.i125
  %1159 = inttoptr i64 %1156 to i64*
  %1160 = load i64, i64* %1159
  store i64 %1160, i64* %RAX.i126, align 8
  store %struct.Memory* %loadMem_43454b, %struct.Memory** %MEMORY
  %loadMem_43454f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1162 = getelementptr inbounds %struct.GPR, %struct.GPR* %1161, i32 0, i32 33
  %1163 = getelementptr inbounds %struct.Reg, %struct.Reg* %1162, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %1163 to i64*
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1165 = getelementptr inbounds %struct.GPR, %struct.GPR* %1164, i32 0, i32 1
  %1166 = getelementptr inbounds %struct.Reg, %struct.Reg* %1165, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %1166 to i64*
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 7
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %RDX.i124 = bitcast %union.anon* %1169 to i64*
  %1170 = load i64, i64* %RAX.i123
  %1171 = add i64 %1170, 136
  %1172 = load i64, i64* %PC.i122
  %1173 = add i64 %1172, 6
  store i64 %1173, i64* %PC.i122
  %1174 = inttoptr i64 %1171 to i32*
  %1175 = load i32, i32* %1174
  %1176 = zext i32 %1175 to i64
  store i64 %1176, i64* %RDX.i124, align 8
  store %struct.Memory* %loadMem_43454f, %struct.Memory** %MEMORY
  %loadMem_434555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 33
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %1179 to i64*
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 7
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %RDX.i121 = bitcast %union.anon* %1182 to i64*
  %1183 = load i64, i64* %RDX.i121
  %1184 = load i64, i64* %PC.i120
  %1185 = add i64 %1184, 3
  store i64 %1185, i64* %PC.i120
  %1186 = trunc i64 %1183 to i32
  %1187 = sub i32 %1186, 1
  %1188 = zext i32 %1187 to i64
  store i64 %1188, i64* %RDX.i121, align 8
  %1189 = icmp ult i32 %1186, 1
  %1190 = zext i1 %1189 to i8
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1190, i8* %1191, align 1
  %1192 = and i32 %1187, 255
  %1193 = call i32 @llvm.ctpop.i32(i32 %1192)
  %1194 = trunc i32 %1193 to i8
  %1195 = and i8 %1194, 1
  %1196 = xor i8 %1195, 1
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1196, i8* %1197, align 1
  %1198 = xor i64 1, %1183
  %1199 = trunc i64 %1198 to i32
  %1200 = xor i32 %1199, %1187
  %1201 = lshr i32 %1200, 4
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1203, i8* %1204, align 1
  %1205 = icmp eq i32 %1187, 0
  %1206 = zext i1 %1205 to i8
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1206, i8* %1207, align 1
  %1208 = lshr i32 %1187, 31
  %1209 = trunc i32 %1208 to i8
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1209, i8* %1210, align 1
  %1211 = lshr i32 %1186, 31
  %1212 = xor i32 %1208, %1211
  %1213 = add i32 %1212, %1211
  %1214 = icmp eq i32 %1213, 2
  %1215 = zext i1 %1214 to i8
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1215, i8* %1216, align 1
  store %struct.Memory* %loadMem_434555, %struct.Memory** %MEMORY
  %loadMem_434558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 33
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %1219 to i64*
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 7
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %1222 to i32*
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1224 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1223, i64 0, i64 1
  %YMM1.i119 = bitcast %union.VectorReg* %1224 to %"class.std::bitset"*
  %1225 = bitcast %"class.std::bitset"* %YMM1.i119 to i8*
  %1226 = load i32, i32* %EDX.i
  %1227 = zext i32 %1226 to i64
  %1228 = load i64, i64* %PC.i118
  %1229 = add i64 %1228, 4
  store i64 %1229, i64* %PC.i118
  %1230 = bitcast i8* %1225 to <2 x i32>*
  %1231 = load <2 x i32>, <2 x i32>* %1230, align 1
  %1232 = getelementptr inbounds i8, i8* %1225, i64 8
  %1233 = bitcast i8* %1232 to <2 x i32>*
  %1234 = load <2 x i32>, <2 x i32>* %1233, align 1
  %1235 = sitofp i32 %1226 to float
  %1236 = bitcast i8* %1225 to float*
  store float %1235, float* %1236, align 1
  %1237 = extractelement <2 x i32> %1231, i32 1
  %1238 = getelementptr inbounds i8, i8* %1225, i64 4
  %1239 = bitcast i8* %1238 to i32*
  store i32 %1237, i32* %1239, align 1
  %1240 = extractelement <2 x i32> %1234, i32 0
  %1241 = bitcast i8* %1232 to i32*
  store i32 %1240, i32* %1241, align 1
  %1242 = extractelement <2 x i32> %1234, i32 1
  %1243 = getelementptr inbounds i8, i8* %1225, i64 12
  %1244 = bitcast i8* %1243 to i32*
  store i32 %1242, i32* %1244, align 1
  store %struct.Memory* %loadMem_434558, %struct.Memory** %MEMORY
  %loadMem_43455c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1246 = getelementptr inbounds %struct.GPR, %struct.GPR* %1245, i32 0, i32 33
  %1247 = getelementptr inbounds %struct.Reg, %struct.Reg* %1246, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %1247 to i64*
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1249 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1248, i64 0, i64 1
  %YMM1.i116 = bitcast %union.VectorReg* %1249 to %"class.std::bitset"*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1251 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1250, i64 0, i64 1
  %XMM1.i117 = bitcast %union.VectorReg* %1251 to %union.vec128_t*
  %1252 = bitcast %"class.std::bitset"* %YMM1.i116 to i8*
  %1253 = bitcast %union.vec128_t* %XMM1.i117 to i8*
  %1254 = load i64, i64* %PC.i115
  %1255 = add i64 %1254, 4
  store i64 %1255, i64* %PC.i115
  %1256 = bitcast i8* %1253 to <2 x float>*
  %1257 = load <2 x float>, <2 x float>* %1256, align 1
  %1258 = extractelement <2 x float> %1257, i32 0
  %1259 = fpext float %1258 to double
  %1260 = bitcast i8* %1252 to double*
  store double %1259, double* %1260, align 1
  store %struct.Memory* %loadMem_43455c, %struct.Memory** %MEMORY
  %loadMem_434560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 33
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %1263 to i64*
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1264, i64 0, i64 0
  %YMM0.i113 = bitcast %union.VectorReg* %1265 to %"class.std::bitset"*
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1266, i64 0, i64 1
  %XMM1.i114 = bitcast %union.VectorReg* %1267 to %union.vec128_t*
  %1268 = bitcast %"class.std::bitset"* %YMM0.i113 to i8*
  %1269 = bitcast %"class.std::bitset"* %YMM0.i113 to i8*
  %1270 = bitcast %union.vec128_t* %XMM1.i114 to i8*
  %1271 = load i64, i64* %PC.i112
  %1272 = add i64 %1271, 4
  store i64 %1272, i64* %PC.i112
  %1273 = bitcast i8* %1269 to double*
  %1274 = load double, double* %1273, align 1
  %1275 = getelementptr inbounds i8, i8* %1269, i64 8
  %1276 = bitcast i8* %1275 to i64*
  %1277 = load i64, i64* %1276, align 1
  %1278 = bitcast i8* %1270 to double*
  %1279 = load double, double* %1278, align 1
  %1280 = fdiv double %1274, %1279
  %1281 = bitcast i8* %1268 to double*
  store double %1280, double* %1281, align 1
  %1282 = getelementptr inbounds i8, i8* %1268, i64 8
  %1283 = bitcast i8* %1282 to i64*
  store i64 %1277, i64* %1283, align 1
  store %struct.Memory* %loadMem_434560, %struct.Memory** %MEMORY
  %loadMem_434564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 33
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %1286 to i64*
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1288 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1287, i64 0, i64 0
  %YMM0.i110 = bitcast %union.VectorReg* %1288 to %"class.std::bitset"*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1290 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1289, i64 0, i64 0
  %XMM0.i111 = bitcast %union.VectorReg* %1290 to %union.vec128_t*
  %1291 = bitcast %"class.std::bitset"* %YMM0.i110 to i8*
  %1292 = bitcast %union.vec128_t* %XMM0.i111 to i8*
  %1293 = load i64, i64* %PC.i109
  %1294 = add i64 %1293, 4
  store i64 %1294, i64* %PC.i109
  %1295 = bitcast i8* %1291 to <2 x i32>*
  %1296 = load <2 x i32>, <2 x i32>* %1295, align 1
  %1297 = getelementptr inbounds i8, i8* %1291, i64 8
  %1298 = bitcast i8* %1297 to <2 x i32>*
  %1299 = load <2 x i32>, <2 x i32>* %1298, align 1
  %1300 = bitcast i8* %1292 to double*
  %1301 = load double, double* %1300, align 1
  %1302 = fptrunc double %1301 to float
  %1303 = bitcast i8* %1291 to float*
  store float %1302, float* %1303, align 1
  %1304 = extractelement <2 x i32> %1296, i32 1
  %1305 = getelementptr inbounds i8, i8* %1291, i64 4
  %1306 = bitcast i8* %1305 to i32*
  store i32 %1304, i32* %1306, align 1
  %1307 = extractelement <2 x i32> %1299, i32 0
  %1308 = bitcast i8* %1297 to i32*
  store i32 %1307, i32* %1308, align 1
  %1309 = extractelement <2 x i32> %1299, i32 1
  %1310 = getelementptr inbounds i8, i8* %1291, i64 12
  %1311 = bitcast i8* %1310 to i32*
  store i32 %1309, i32* %1311, align 1
  store %struct.Memory* %loadMem_434564, %struct.Memory** %MEMORY
  %loadMem_434568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 33
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %1314 to i64*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 5
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %ECX.i108 = bitcast %union.anon* %1317 to i32*
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 9
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %1320 to i64*
  %1321 = load i32, i32* %ECX.i108
  %1322 = zext i32 %1321 to i64
  %1323 = load i64, i64* %PC.i107
  %1324 = add i64 %1323, 2
  store i64 %1324, i64* %PC.i107
  %1325 = and i64 %1322, 4294967295
  store i64 %1325, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_434568, %struct.Memory** %MEMORY
  %loadMem1_43456a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 33
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %1328 to i64*
  %1329 = load i64, i64* %PC.i106
  %1330 = add i64 %1329, 121302
  %1331 = load i64, i64* %PC.i106
  %1332 = add i64 %1331, 5
  %1333 = load i64, i64* %PC.i106
  %1334 = add i64 %1333, 5
  store i64 %1334, i64* %PC.i106
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1336 = load i64, i64* %1335, align 8
  %1337 = add i64 %1336, -8
  %1338 = inttoptr i64 %1337 to i64*
  store i64 %1332, i64* %1338
  store i64 %1337, i64* %1335, align 8
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1330, i64* %1339, align 8
  store %struct.Memory* %loadMem1_43456a, %struct.Memory** %MEMORY
  %loadMem2_43456a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43456a = load i64, i64* %3
  %call2_43456a = call %struct.Memory* @sub_451f40.FSet(%struct.State* %0, i64 %loadPC_43456a, %struct.Memory* %loadMem2_43456a)
  store %struct.Memory* %call2_43456a, %struct.Memory** %MEMORY
  %loadMem_43456f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1341 = getelementptr inbounds %struct.GPR, %struct.GPR* %1340, i32 0, i32 33
  %1342 = getelementptr inbounds %struct.Reg, %struct.Reg* %1341, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %1342 to i64*
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1344 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1343, i64 0, i64 0
  %YMM0.i105 = bitcast %union.VectorReg* %1344 to %"class.std::bitset"*
  %1345 = bitcast %"class.std::bitset"* %YMM0.i105 to i8*
  %1346 = load i64, i64* %PC.i104
  %1347 = add i64 %1346, ptrtoint (%G_0x201b1__rip__type* @G_0x201b1__rip_ to i64)
  %1348 = load i64, i64* %PC.i104
  %1349 = add i64 %1348, 8
  store i64 %1349, i64* %PC.i104
  %1350 = inttoptr i64 %1347 to float*
  %1351 = load float, float* %1350
  %1352 = bitcast i8* %1345 to float*
  store float %1351, float* %1352, align 1
  %1353 = getelementptr inbounds i8, i8* %1345, i64 4
  %1354 = bitcast i8* %1353 to float*
  store float 0.000000e+00, float* %1354, align 1
  %1355 = getelementptr inbounds i8, i8* %1345, i64 8
  %1356 = bitcast i8* %1355 to float*
  store float 0.000000e+00, float* %1356, align 1
  %1357 = getelementptr inbounds i8, i8* %1345, i64 12
  %1358 = bitcast i8* %1357 to float*
  store float 0.000000e+00, float* %1358, align 1
  store %struct.Memory* %loadMem_43456f, %struct.Memory** %MEMORY
  %loadMem_434577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.GPR, %struct.GPR* %1359, i32 0, i32 33
  %1361 = getelementptr inbounds %struct.Reg, %struct.Reg* %1360, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %1361 to i64*
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 1
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %RAX.i102 = bitcast %union.anon* %1364 to i64*
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 15
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %1367 to i64*
  %1368 = load i64, i64* %RBP.i103
  %1369 = sub i64 %1368, 8
  %1370 = load i64, i64* %PC.i101
  %1371 = add i64 %1370, 4
  store i64 %1371, i64* %PC.i101
  %1372 = inttoptr i64 %1369 to i64*
  %1373 = load i64, i64* %1372
  store i64 %1373, i64* %RAX.i102, align 8
  store %struct.Memory* %loadMem_434577, %struct.Memory** %MEMORY
  %loadMem_43457b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 33
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %1376 to i64*
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 1
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %RAX.i100 = bitcast %union.anon* %1379 to i64*
  %1380 = load i64, i64* %RAX.i100
  %1381 = add i64 %1380, 216
  %1382 = load i64, i64* %PC.i99
  %1383 = add i64 %1382, 7
  store i64 %1383, i64* %PC.i99
  %1384 = inttoptr i64 %1381 to i64*
  %1385 = load i64, i64* %1384
  store i64 %1385, i64* %RAX.i100, align 8
  store %struct.Memory* %loadMem_43457b, %struct.Memory** %MEMORY
  %loadMem_434582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1387 = getelementptr inbounds %struct.GPR, %struct.GPR* %1386, i32 0, i32 33
  %1388 = getelementptr inbounds %struct.Reg, %struct.Reg* %1387, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %1388 to i64*
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 11
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %RDI.i97 = bitcast %union.anon* %1391 to i64*
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 15
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %1394 to i64*
  %1395 = load i64, i64* %RBP.i98
  %1396 = sub i64 %1395, 8
  %1397 = load i64, i64* %PC.i96
  %1398 = add i64 %1397, 4
  store i64 %1398, i64* %PC.i96
  %1399 = inttoptr i64 %1396 to i64*
  %1400 = load i64, i64* %1399
  store i64 %1400, i64* %RDI.i97, align 8
  store %struct.Memory* %loadMem_434582, %struct.Memory** %MEMORY
  %loadMem_434586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 33
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %1403 to i64*
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 11
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %RDI.i95 = bitcast %union.anon* %1406 to i64*
  %1407 = load i64, i64* %RDI.i95
  %1408 = add i64 %1407, 136
  %1409 = load i64, i64* %PC.i94
  %1410 = add i64 %1409, 7
  store i64 %1410, i64* %PC.i94
  %1411 = inttoptr i64 %1408 to i32*
  %1412 = load i32, i32* %1411
  %1413 = sext i32 %1412 to i64
  store i64 %1413, i64* %RDI.i95, align 8
  store %struct.Memory* %loadMem_434586, %struct.Memory** %MEMORY
  %loadMem_43458d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 33
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %1416 to i64*
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 1
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %1419 to i64*
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 11
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %RDI.i92 = bitcast %union.anon* %1422 to i64*
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1424 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1423, i64 0, i64 0
  %XMM0.i93 = bitcast %union.VectorReg* %1424 to %union.vec128_t*
  %1425 = load i64, i64* %RAX.i91
  %1426 = load i64, i64* %RDI.i92
  %1427 = mul i64 %1426, 4
  %1428 = add i64 %1427, %1425
  %1429 = bitcast %union.vec128_t* %XMM0.i93 to i8*
  %1430 = load i64, i64* %PC.i90
  %1431 = add i64 %1430, 5
  store i64 %1431, i64* %PC.i90
  %1432 = bitcast i8* %1429 to <2 x float>*
  %1433 = load <2 x float>, <2 x float>* %1432, align 1
  %1434 = extractelement <2 x float> %1433, i32 0
  %1435 = inttoptr i64 %1428 to float*
  store float %1434, float* %1435
  store %struct.Memory* %loadMem_43458d, %struct.Memory** %MEMORY
  %loadMem_434592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 33
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %1438 to i64*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 15
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %1441 to i64*
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1443 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1442, i64 0, i64 0
  %YMM0.i89 = bitcast %union.VectorReg* %1443 to %"class.std::bitset"*
  %1444 = bitcast %"class.std::bitset"* %YMM0.i89 to i8*
  %1445 = load i64, i64* %RBP.i88
  %1446 = sub i64 %1445, 16
  %1447 = load i64, i64* %PC.i87
  %1448 = add i64 %1447, 5
  store i64 %1448, i64* %PC.i87
  %1449 = inttoptr i64 %1446 to float*
  %1450 = load float, float* %1449
  %1451 = bitcast i8* %1444 to float*
  store float %1450, float* %1451, align 1
  %1452 = getelementptr inbounds i8, i8* %1444, i64 4
  %1453 = bitcast i8* %1452 to float*
  store float 0.000000e+00, float* %1453, align 1
  %1454 = getelementptr inbounds i8, i8* %1444, i64 8
  %1455 = bitcast i8* %1454 to float*
  store float 0.000000e+00, float* %1455, align 1
  %1456 = getelementptr inbounds i8, i8* %1444, i64 12
  %1457 = bitcast i8* %1456 to float*
  store float 0.000000e+00, float* %1457, align 1
  store %struct.Memory* %loadMem_434592, %struct.Memory** %MEMORY
  %loadMem_434597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1459 = getelementptr inbounds %struct.GPR, %struct.GPR* %1458, i32 0, i32 33
  %1460 = getelementptr inbounds %struct.Reg, %struct.Reg* %1459, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %1460 to i64*
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 1
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %1463 to i64*
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1465 = getelementptr inbounds %struct.GPR, %struct.GPR* %1464, i32 0, i32 15
  %1466 = getelementptr inbounds %struct.Reg, %struct.Reg* %1465, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %1466 to i64*
  %1467 = load i64, i64* %RBP.i86
  %1468 = sub i64 %1467, 8
  %1469 = load i64, i64* %PC.i84
  %1470 = add i64 %1469, 4
  store i64 %1470, i64* %PC.i84
  %1471 = inttoptr i64 %1468 to i64*
  %1472 = load i64, i64* %1471
  store i64 %1472, i64* %RAX.i85, align 8
  store %struct.Memory* %loadMem_434597, %struct.Memory** %MEMORY
  %loadMem_43459b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 33
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %1475 to i64*
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 1
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %1478 to i64*
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 5
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %RCX.i83 = bitcast %union.anon* %1481 to i64*
  %1482 = load i64, i64* %RAX.i82
  %1483 = add i64 %1482, 136
  %1484 = load i64, i64* %PC.i81
  %1485 = add i64 %1484, 6
  store i64 %1485, i64* %PC.i81
  %1486 = inttoptr i64 %1483 to i32*
  %1487 = load i32, i32* %1486
  %1488 = zext i32 %1487 to i64
  store i64 %1488, i64* %RCX.i83, align 8
  store %struct.Memory* %loadMem_43459b, %struct.Memory** %MEMORY
  %loadMem_4345a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 33
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %1491 to i64*
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 5
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %RCX.i80 = bitcast %union.anon* %1494 to i64*
  %1495 = load i64, i64* %RCX.i80
  %1496 = load i64, i64* %PC.i79
  %1497 = add i64 %1496, 3
  store i64 %1497, i64* %PC.i79
  %1498 = trunc i64 %1495 to i32
  %1499 = sub i32 %1498, 1
  %1500 = zext i32 %1499 to i64
  store i64 %1500, i64* %RCX.i80, align 8
  %1501 = icmp ult i32 %1498, 1
  %1502 = zext i1 %1501 to i8
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1502, i8* %1503, align 1
  %1504 = and i32 %1499, 255
  %1505 = call i32 @llvm.ctpop.i32(i32 %1504)
  %1506 = trunc i32 %1505 to i8
  %1507 = and i8 %1506, 1
  %1508 = xor i8 %1507, 1
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1508, i8* %1509, align 1
  %1510 = xor i64 1, %1495
  %1511 = trunc i64 %1510 to i32
  %1512 = xor i32 %1511, %1499
  %1513 = lshr i32 %1512, 4
  %1514 = trunc i32 %1513 to i8
  %1515 = and i8 %1514, 1
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1515, i8* %1516, align 1
  %1517 = icmp eq i32 %1499, 0
  %1518 = zext i1 %1517 to i8
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1518, i8* %1519, align 1
  %1520 = lshr i32 %1499, 31
  %1521 = trunc i32 %1520 to i8
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1521, i8* %1522, align 1
  %1523 = lshr i32 %1498, 31
  %1524 = xor i32 %1520, %1523
  %1525 = add i32 %1524, %1523
  %1526 = icmp eq i32 %1525, 2
  %1527 = zext i1 %1526 to i8
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1527, i8* %1528, align 1
  store %struct.Memory* %loadMem_4345a1, %struct.Memory** %MEMORY
  %loadMem_4345a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 33
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %1531 to i64*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 5
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %1534 to i32*
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1536 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1535, i64 0, i64 1
  %YMM1.i78 = bitcast %union.VectorReg* %1536 to %"class.std::bitset"*
  %1537 = bitcast %"class.std::bitset"* %YMM1.i78 to i8*
  %1538 = load i32, i32* %ECX.i
  %1539 = zext i32 %1538 to i64
  %1540 = load i64, i64* %PC.i77
  %1541 = add i64 %1540, 4
  store i64 %1541, i64* %PC.i77
  %1542 = bitcast i8* %1537 to <2 x i32>*
  %1543 = load <2 x i32>, <2 x i32>* %1542, align 1
  %1544 = getelementptr inbounds i8, i8* %1537, i64 8
  %1545 = bitcast i8* %1544 to <2 x i32>*
  %1546 = load <2 x i32>, <2 x i32>* %1545, align 1
  %1547 = sitofp i32 %1538 to float
  %1548 = bitcast i8* %1537 to float*
  store float %1547, float* %1548, align 1
  %1549 = extractelement <2 x i32> %1543, i32 1
  %1550 = getelementptr inbounds i8, i8* %1537, i64 4
  %1551 = bitcast i8* %1550 to i32*
  store i32 %1549, i32* %1551, align 1
  %1552 = extractelement <2 x i32> %1546, i32 0
  %1553 = bitcast i8* %1544 to i32*
  store i32 %1552, i32* %1553, align 1
  %1554 = extractelement <2 x i32> %1546, i32 1
  %1555 = getelementptr inbounds i8, i8* %1537, i64 12
  %1556 = bitcast i8* %1555 to i32*
  store i32 %1554, i32* %1556, align 1
  store %struct.Memory* %loadMem_4345a4, %struct.Memory** %MEMORY
  %loadMem_4345a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1558 = getelementptr inbounds %struct.GPR, %struct.GPR* %1557, i32 0, i32 33
  %1559 = getelementptr inbounds %struct.Reg, %struct.Reg* %1558, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %1559 to i64*
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1561 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1560, i64 0, i64 0
  %YMM0.i75 = bitcast %union.VectorReg* %1561 to %"class.std::bitset"*
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1563 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1562, i64 0, i64 1
  %XMM1.i76 = bitcast %union.VectorReg* %1563 to %union.vec128_t*
  %1564 = bitcast %"class.std::bitset"* %YMM0.i75 to i8*
  %1565 = bitcast %"class.std::bitset"* %YMM0.i75 to i8*
  %1566 = bitcast %union.vec128_t* %XMM1.i76 to i8*
  %1567 = load i64, i64* %PC.i74
  %1568 = add i64 %1567, 4
  store i64 %1568, i64* %PC.i74
  %1569 = bitcast i8* %1565 to <2 x float>*
  %1570 = load <2 x float>, <2 x float>* %1569, align 1
  %1571 = getelementptr inbounds i8, i8* %1565, i64 8
  %1572 = bitcast i8* %1571 to <2 x i32>*
  %1573 = load <2 x i32>, <2 x i32>* %1572, align 1
  %1574 = bitcast i8* %1566 to <2 x float>*
  %1575 = load <2 x float>, <2 x float>* %1574, align 1
  %1576 = extractelement <2 x float> %1570, i32 0
  %1577 = extractelement <2 x float> %1575, i32 0
  %1578 = fdiv float %1576, %1577
  %1579 = bitcast i8* %1564 to float*
  store float %1578, float* %1579, align 1
  %1580 = bitcast <2 x float> %1570 to <2 x i32>
  %1581 = extractelement <2 x i32> %1580, i32 1
  %1582 = getelementptr inbounds i8, i8* %1564, i64 4
  %1583 = bitcast i8* %1582 to i32*
  store i32 %1581, i32* %1583, align 1
  %1584 = extractelement <2 x i32> %1573, i32 0
  %1585 = getelementptr inbounds i8, i8* %1564, i64 8
  %1586 = bitcast i8* %1585 to i32*
  store i32 %1584, i32* %1586, align 1
  %1587 = extractelement <2 x i32> %1573, i32 1
  %1588 = getelementptr inbounds i8, i8* %1564, i64 12
  %1589 = bitcast i8* %1588 to i32*
  store i32 %1587, i32* %1589, align 1
  store %struct.Memory* %loadMem_4345a8, %struct.Memory** %MEMORY
  %loadMem_4345ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 33
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %1592 to i64*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 15
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %1595 to i64*
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1597 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1596, i64 0, i64 0
  %XMM0.i73 = bitcast %union.VectorReg* %1597 to %union.vec128_t*
  %1598 = load i64, i64* %RBP.i72
  %1599 = sub i64 %1598, 20
  %1600 = bitcast %union.vec128_t* %XMM0.i73 to i8*
  %1601 = load i64, i64* %PC.i71
  %1602 = add i64 %1601, 5
  store i64 %1602, i64* %PC.i71
  %1603 = bitcast i8* %1600 to <2 x float>*
  %1604 = load <2 x float>, <2 x float>* %1603, align 1
  %1605 = extractelement <2 x float> %1604, i32 0
  %1606 = inttoptr i64 %1599 to float*
  store float %1605, float* %1606
  store %struct.Memory* %loadMem_4345ac, %struct.Memory** %MEMORY
  %loadMem_4345b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 33
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %1609 to i64*
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 15
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %1612 to i64*
  %1613 = load i64, i64* %RBP.i70
  %1614 = sub i64 %1613, 24
  %1615 = load i64, i64* %PC.i69
  %1616 = add i64 %1615, 7
  store i64 %1616, i64* %PC.i69
  %1617 = inttoptr i64 %1614 to i32*
  store i32 1, i32* %1617
  store %struct.Memory* %loadMem_4345b1, %struct.Memory** %MEMORY
  br label %block_.L_4345b8

block_.L_4345b8:                                  ; preds = %block_4345cb, %entry
  %loadMem_4345b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1619 = getelementptr inbounds %struct.GPR, %struct.GPR* %1618, i32 0, i32 33
  %1620 = getelementptr inbounds %struct.Reg, %struct.Reg* %1619, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %1620 to i64*
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1622 = getelementptr inbounds %struct.GPR, %struct.GPR* %1621, i32 0, i32 1
  %1623 = getelementptr inbounds %struct.Reg, %struct.Reg* %1622, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %1623 to i64*
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 15
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %1626 to i64*
  %1627 = load i64, i64* %RBP.i68
  %1628 = sub i64 %1627, 24
  %1629 = load i64, i64* %PC.i66
  %1630 = add i64 %1629, 3
  store i64 %1630, i64* %PC.i66
  %1631 = inttoptr i64 %1628 to i32*
  %1632 = load i32, i32* %1631
  %1633 = zext i32 %1632 to i64
  store i64 %1633, i64* %RAX.i67, align 8
  store %struct.Memory* %loadMem_4345b8, %struct.Memory** %MEMORY
  %loadMem_4345bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 33
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %1636 to i64*
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 5
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %RCX.i64 = bitcast %union.anon* %1639 to i64*
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 15
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %1642 to i64*
  %1643 = load i64, i64* %RBP.i65
  %1644 = sub i64 %1643, 8
  %1645 = load i64, i64* %PC.i63
  %1646 = add i64 %1645, 4
  store i64 %1646, i64* %PC.i63
  %1647 = inttoptr i64 %1644 to i64*
  %1648 = load i64, i64* %1647
  store i64 %1648, i64* %RCX.i64, align 8
  store %struct.Memory* %loadMem_4345bb, %struct.Memory** %MEMORY
  %loadMem_4345bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 33
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %1651 to i64*
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 1
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %EAX.i61 = bitcast %union.anon* %1654 to i32*
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 5
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %RCX.i62 = bitcast %union.anon* %1657 to i64*
  %1658 = load i32, i32* %EAX.i61
  %1659 = zext i32 %1658 to i64
  %1660 = load i64, i64* %RCX.i62
  %1661 = add i64 %1660, 136
  %1662 = load i64, i64* %PC.i60
  %1663 = add i64 %1662, 6
  store i64 %1663, i64* %PC.i60
  %1664 = inttoptr i64 %1661 to i32*
  %1665 = load i32, i32* %1664
  %1666 = sub i32 %1658, %1665
  %1667 = icmp ult i32 %1658, %1665
  %1668 = zext i1 %1667 to i8
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1668, i8* %1669, align 1
  %1670 = and i32 %1666, 255
  %1671 = call i32 @llvm.ctpop.i32(i32 %1670)
  %1672 = trunc i32 %1671 to i8
  %1673 = and i8 %1672, 1
  %1674 = xor i8 %1673, 1
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1674, i8* %1675, align 1
  %1676 = xor i32 %1665, %1658
  %1677 = xor i32 %1676, %1666
  %1678 = lshr i32 %1677, 4
  %1679 = trunc i32 %1678 to i8
  %1680 = and i8 %1679, 1
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1680, i8* %1681, align 1
  %1682 = icmp eq i32 %1666, 0
  %1683 = zext i1 %1682 to i8
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1683, i8* %1684, align 1
  %1685 = lshr i32 %1666, 31
  %1686 = trunc i32 %1685 to i8
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1686, i8* %1687, align 1
  %1688 = lshr i32 %1658, 31
  %1689 = lshr i32 %1665, 31
  %1690 = xor i32 %1689, %1688
  %1691 = xor i32 %1685, %1688
  %1692 = add i32 %1691, %1690
  %1693 = icmp eq i32 %1692, 2
  %1694 = zext i1 %1693 to i8
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1694, i8* %1695, align 1
  store %struct.Memory* %loadMem_4345bf, %struct.Memory** %MEMORY
  %loadMem_4345c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 33
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %1698 to i64*
  %1699 = load i64, i64* %PC.i59
  %1700 = add i64 %1699, 88
  %1701 = load i64, i64* %PC.i59
  %1702 = add i64 %1701, 6
  %1703 = load i64, i64* %PC.i59
  %1704 = add i64 %1703, 6
  store i64 %1704, i64* %PC.i59
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1706 = load i8, i8* %1705, align 1
  %1707 = icmp ne i8 %1706, 0
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1709 = load i8, i8* %1708, align 1
  %1710 = icmp ne i8 %1709, 0
  %1711 = xor i1 %1707, %1710
  %1712 = xor i1 %1711, true
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %BRANCH_TAKEN, align 1
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1715 = select i1 %1711, i64 %1702, i64 %1700
  store i64 %1715, i64* %1714, align 8
  store %struct.Memory* %loadMem_4345c5, %struct.Memory** %MEMORY
  %loadBr_4345c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4345c5 = icmp eq i8 %loadBr_4345c5, 1
  br i1 %cmpBr_4345c5, label %block_.L_43461d, label %block_4345cb

block_4345cb:                                     ; preds = %block_.L_4345b8
  %loadMem_4345cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 33
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %1718 to i64*
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1720 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1719, i64 0, i64 0
  %YMM0.i58 = bitcast %union.VectorReg* %1720 to %"class.std::bitset"*
  %1721 = bitcast %"class.std::bitset"* %YMM0.i58 to i8*
  %1722 = load i64, i64* %PC.i57
  %1723 = add i64 %1722, ptrtoint (%G_0x2020d__rip__type* @G_0x2020d__rip_ to i64)
  %1724 = load i64, i64* %PC.i57
  %1725 = add i64 %1724, 8
  store i64 %1725, i64* %PC.i57
  %1726 = inttoptr i64 %1723 to double*
  %1727 = load double, double* %1726
  %1728 = bitcast i8* %1721 to double*
  store double %1727, double* %1728, align 1
  %1729 = getelementptr inbounds i8, i8* %1721, i64 8
  %1730 = bitcast i8* %1729 to double*
  store double 0.000000e+00, double* %1730, align 1
  store %struct.Memory* %loadMem_4345cb, %struct.Memory** %MEMORY
  %loadMem_4345d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1732 = getelementptr inbounds %struct.GPR, %struct.GPR* %1731, i32 0, i32 33
  %1733 = getelementptr inbounds %struct.Reg, %struct.Reg* %1732, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %1733 to i64*
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1735 = getelementptr inbounds %struct.GPR, %struct.GPR* %1734, i32 0, i32 15
  %1736 = getelementptr inbounds %struct.Reg, %struct.Reg* %1735, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %1736 to i64*
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1738 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1737, i64 0, i64 1
  %YMM1.i56 = bitcast %union.VectorReg* %1738 to %"class.std::bitset"*
  %1739 = bitcast %"class.std::bitset"* %YMM1.i56 to i8*
  %1740 = load i64, i64* %RBP.i55
  %1741 = sub i64 %1740, 20
  %1742 = load i64, i64* %PC.i54
  %1743 = add i64 %1742, 5
  store i64 %1743, i64* %PC.i54
  %1744 = inttoptr i64 %1741 to float*
  %1745 = load float, float* %1744
  %1746 = fpext float %1745 to double
  %1747 = bitcast i8* %1739 to double*
  store double %1746, double* %1747, align 1
  store %struct.Memory* %loadMem_4345d3, %struct.Memory** %MEMORY
  %loadMem_4345d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 33
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %1750 to i64*
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1752 = getelementptr inbounds %struct.GPR, %struct.GPR* %1751, i32 0, i32 15
  %1753 = getelementptr inbounds %struct.Reg, %struct.Reg* %1752, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %1753 to i64*
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1755 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1754, i64 0, i64 2
  %YMM2.i53 = bitcast %union.VectorReg* %1755 to %"class.std::bitset"*
  %1756 = bitcast %"class.std::bitset"* %YMM2.i53 to i8*
  %1757 = load i64, i64* %RBP.i52
  %1758 = sub i64 %1757, 20
  %1759 = load i64, i64* %PC.i51
  %1760 = add i64 %1759, 5
  store i64 %1760, i64* %PC.i51
  %1761 = inttoptr i64 %1758 to float*
  %1762 = load float, float* %1761
  %1763 = bitcast i8* %1756 to float*
  store float %1762, float* %1763, align 1
  %1764 = getelementptr inbounds i8, i8* %1756, i64 4
  %1765 = bitcast i8* %1764 to float*
  store float 0.000000e+00, float* %1765, align 1
  %1766 = getelementptr inbounds i8, i8* %1756, i64 8
  %1767 = bitcast i8* %1766 to float*
  store float 0.000000e+00, float* %1767, align 1
  %1768 = getelementptr inbounds i8, i8* %1756, i64 12
  %1769 = bitcast i8* %1768 to float*
  store float 0.000000e+00, float* %1769, align 1
  store %struct.Memory* %loadMem_4345d8, %struct.Memory** %MEMORY
  %loadMem_4345dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1771 = getelementptr inbounds %struct.GPR, %struct.GPR* %1770, i32 0, i32 33
  %1772 = getelementptr inbounds %struct.Reg, %struct.Reg* %1771, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %1772 to i64*
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 1
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %1775 to i64*
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 15
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %1778 to i64*
  %1779 = load i64, i64* %RBP.i50
  %1780 = sub i64 %1779, 24
  %1781 = load i64, i64* %PC.i48
  %1782 = add i64 %1781, 3
  store i64 %1782, i64* %PC.i48
  %1783 = inttoptr i64 %1780 to i32*
  %1784 = load i32, i32* %1783
  %1785 = zext i32 %1784 to i64
  store i64 %1785, i64* %RAX.i49, align 8
  store %struct.Memory* %loadMem_4345dd, %struct.Memory** %MEMORY
  %loadMem_4345e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1787 = getelementptr inbounds %struct.GPR, %struct.GPR* %1786, i32 0, i32 33
  %1788 = getelementptr inbounds %struct.Reg, %struct.Reg* %1787, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %1788 to i64*
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 1
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %1791 to i64*
  %1792 = load i64, i64* %RAX.i47
  %1793 = load i64, i64* %PC.i46
  %1794 = add i64 %1793, 3
  store i64 %1794, i64* %PC.i46
  %1795 = trunc i64 %1792 to i32
  %1796 = sub i32 %1795, 1
  %1797 = zext i32 %1796 to i64
  store i64 %1797, i64* %RAX.i47, align 8
  %1798 = icmp ult i32 %1795, 1
  %1799 = zext i1 %1798 to i8
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1799, i8* %1800, align 1
  %1801 = and i32 %1796, 255
  %1802 = call i32 @llvm.ctpop.i32(i32 %1801)
  %1803 = trunc i32 %1802 to i8
  %1804 = and i8 %1803, 1
  %1805 = xor i8 %1804, 1
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1805, i8* %1806, align 1
  %1807 = xor i64 1, %1792
  %1808 = trunc i64 %1807 to i32
  %1809 = xor i32 %1808, %1796
  %1810 = lshr i32 %1809, 4
  %1811 = trunc i32 %1810 to i8
  %1812 = and i8 %1811, 1
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1812, i8* %1813, align 1
  %1814 = icmp eq i32 %1796, 0
  %1815 = zext i1 %1814 to i8
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1815, i8* %1816, align 1
  %1817 = lshr i32 %1796, 31
  %1818 = trunc i32 %1817 to i8
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1818, i8* %1819, align 1
  %1820 = lshr i32 %1795, 31
  %1821 = xor i32 %1817, %1820
  %1822 = add i32 %1821, %1820
  %1823 = icmp eq i32 %1822, 2
  %1824 = zext i1 %1823 to i8
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1824, i8* %1825, align 1
  store %struct.Memory* %loadMem_4345e0, %struct.Memory** %MEMORY
  %loadMem_4345e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1827 = getelementptr inbounds %struct.GPR, %struct.GPR* %1826, i32 0, i32 33
  %1828 = getelementptr inbounds %struct.Reg, %struct.Reg* %1827, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %1828 to i64*
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1830 = getelementptr inbounds %struct.GPR, %struct.GPR* %1829, i32 0, i32 1
  %1831 = getelementptr inbounds %struct.Reg, %struct.Reg* %1830, i32 0, i32 0
  %EAX.i45 = bitcast %union.anon* %1831 to i32*
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1833 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1832, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %1833 to %"class.std::bitset"*
  %1834 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %1835 = load i32, i32* %EAX.i45
  %1836 = zext i32 %1835 to i64
  %1837 = load i64, i64* %PC.i44
  %1838 = add i64 %1837, 4
  store i64 %1838, i64* %PC.i44
  %1839 = bitcast i8* %1834 to <2 x i32>*
  %1840 = load <2 x i32>, <2 x i32>* %1839, align 1
  %1841 = getelementptr inbounds i8, i8* %1834, i64 8
  %1842 = bitcast i8* %1841 to <2 x i32>*
  %1843 = load <2 x i32>, <2 x i32>* %1842, align 1
  %1844 = sitofp i32 %1835 to float
  %1845 = bitcast i8* %1834 to float*
  store float %1844, float* %1845, align 1
  %1846 = extractelement <2 x i32> %1840, i32 1
  %1847 = getelementptr inbounds i8, i8* %1834, i64 4
  %1848 = bitcast i8* %1847 to i32*
  store i32 %1846, i32* %1848, align 1
  %1849 = extractelement <2 x i32> %1843, i32 0
  %1850 = bitcast i8* %1841 to i32*
  store i32 %1849, i32* %1850, align 1
  %1851 = extractelement <2 x i32> %1843, i32 1
  %1852 = getelementptr inbounds i8, i8* %1834, i64 12
  %1853 = bitcast i8* %1852 to i32*
  store i32 %1851, i32* %1853, align 1
  store %struct.Memory* %loadMem_4345e3, %struct.Memory** %MEMORY
  %loadMem_4345e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 33
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %1856 to i64*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1858 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1857, i64 0, i64 2
  %YMM2.i43 = bitcast %union.VectorReg* %1858 to %"class.std::bitset"*
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1860 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1859, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %1860 to %union.vec128_t*
  %1861 = bitcast %"class.std::bitset"* %YMM2.i43 to i8*
  %1862 = bitcast %"class.std::bitset"* %YMM2.i43 to i8*
  %1863 = bitcast %union.vec128_t* %XMM3.i to i8*
  %1864 = load i64, i64* %PC.i42
  %1865 = add i64 %1864, 4
  store i64 %1865, i64* %PC.i42
  %1866 = bitcast i8* %1862 to <2 x float>*
  %1867 = load <2 x float>, <2 x float>* %1866, align 1
  %1868 = getelementptr inbounds i8, i8* %1862, i64 8
  %1869 = bitcast i8* %1868 to <2 x i32>*
  %1870 = load <2 x i32>, <2 x i32>* %1869, align 1
  %1871 = bitcast i8* %1863 to <2 x float>*
  %1872 = load <2 x float>, <2 x float>* %1871, align 1
  %1873 = extractelement <2 x float> %1867, i32 0
  %1874 = extractelement <2 x float> %1872, i32 0
  %1875 = fmul float %1873, %1874
  %1876 = bitcast i8* %1861 to float*
  store float %1875, float* %1876, align 1
  %1877 = bitcast <2 x float> %1867 to <2 x i32>
  %1878 = extractelement <2 x i32> %1877, i32 1
  %1879 = getelementptr inbounds i8, i8* %1861, i64 4
  %1880 = bitcast i8* %1879 to i32*
  store i32 %1878, i32* %1880, align 1
  %1881 = extractelement <2 x i32> %1870, i32 0
  %1882 = getelementptr inbounds i8, i8* %1861, i64 8
  %1883 = bitcast i8* %1882 to i32*
  store i32 %1881, i32* %1883, align 1
  %1884 = extractelement <2 x i32> %1870, i32 1
  %1885 = getelementptr inbounds i8, i8* %1861, i64 12
  %1886 = bitcast i8* %1885 to i32*
  store i32 %1884, i32* %1886, align 1
  store %struct.Memory* %loadMem_4345e7, %struct.Memory** %MEMORY
  %loadMem_4345eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1888 = getelementptr inbounds %struct.GPR, %struct.GPR* %1887, i32 0, i32 33
  %1889 = getelementptr inbounds %struct.Reg, %struct.Reg* %1888, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %1889 to i64*
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1891 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1890, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %1891 to %"class.std::bitset"*
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1893 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1892, i64 0, i64 2
  %XMM2.i41 = bitcast %union.VectorReg* %1893 to %union.vec128_t*
  %1894 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %1895 = bitcast %union.vec128_t* %XMM2.i41 to i8*
  %1896 = load i64, i64* %PC.i40
  %1897 = add i64 %1896, 4
  store i64 %1897, i64* %PC.i40
  %1898 = bitcast i8* %1895 to <2 x float>*
  %1899 = load <2 x float>, <2 x float>* %1898, align 1
  %1900 = extractelement <2 x float> %1899, i32 0
  %1901 = fpext float %1900 to double
  %1902 = bitcast i8* %1894 to double*
  store double %1901, double* %1902, align 1
  store %struct.Memory* %loadMem_4345eb, %struct.Memory** %MEMORY
  %loadMem_4345ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1904 = getelementptr inbounds %struct.GPR, %struct.GPR* %1903, i32 0, i32 33
  %1905 = getelementptr inbounds %struct.Reg, %struct.Reg* %1904, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %1905 to i64*
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1907 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1906, i64 0, i64 0
  %YMM0.i39 = bitcast %union.VectorReg* %1907 to %"class.std::bitset"*
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1909 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1908, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %1909 to %union.vec128_t*
  %1910 = bitcast %"class.std::bitset"* %YMM0.i39 to i8*
  %1911 = bitcast %"class.std::bitset"* %YMM0.i39 to i8*
  %1912 = bitcast %union.vec128_t* %XMM2.i to i8*
  %1913 = load i64, i64* %PC.i38
  %1914 = add i64 %1913, 4
  store i64 %1914, i64* %PC.i38
  %1915 = bitcast i8* %1911 to double*
  %1916 = load double, double* %1915, align 1
  %1917 = getelementptr inbounds i8, i8* %1911, i64 8
  %1918 = bitcast i8* %1917 to i64*
  %1919 = load i64, i64* %1918, align 1
  %1920 = bitcast i8* %1912 to double*
  %1921 = load double, double* %1920, align 1
  %1922 = fsub double %1916, %1921
  %1923 = bitcast i8* %1910 to double*
  store double %1922, double* %1923, align 1
  %1924 = getelementptr inbounds i8, i8* %1910, i64 8
  %1925 = bitcast i8* %1924 to i64*
  store i64 %1919, i64* %1925, align 1
  store %struct.Memory* %loadMem_4345ef, %struct.Memory** %MEMORY
  %loadMem_4345f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1927 = getelementptr inbounds %struct.GPR, %struct.GPR* %1926, i32 0, i32 33
  %1928 = getelementptr inbounds %struct.Reg, %struct.Reg* %1927, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %1928 to i64*
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1930 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1929, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %1930 to %"class.std::bitset"*
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1932 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1931, i64 0, i64 0
  %XMM0.i37 = bitcast %union.VectorReg* %1932 to %union.vec128_t*
  %1933 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %1934 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %1935 = bitcast %union.vec128_t* %XMM0.i37 to i8*
  %1936 = load i64, i64* %PC.i36
  %1937 = add i64 %1936, 4
  store i64 %1937, i64* %PC.i36
  %1938 = bitcast i8* %1934 to double*
  %1939 = load double, double* %1938, align 1
  %1940 = getelementptr inbounds i8, i8* %1934, i64 8
  %1941 = bitcast i8* %1940 to i64*
  %1942 = load i64, i64* %1941, align 1
  %1943 = bitcast i8* %1935 to double*
  %1944 = load double, double* %1943, align 1
  %1945 = fdiv double %1939, %1944
  %1946 = bitcast i8* %1933 to double*
  store double %1945, double* %1946, align 1
  %1947 = getelementptr inbounds i8, i8* %1933, i64 8
  %1948 = bitcast i8* %1947 to i64*
  store i64 %1942, i64* %1948, align 1
  store %struct.Memory* %loadMem_4345f3, %struct.Memory** %MEMORY
  %loadMem_4345f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1950 = getelementptr inbounds %struct.GPR, %struct.GPR* %1949, i32 0, i32 33
  %1951 = getelementptr inbounds %struct.Reg, %struct.Reg* %1950, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %1951 to i64*
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1953 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1952, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %1953 to %"class.std::bitset"*
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1955 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1954, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %1955 to %union.vec128_t*
  %1956 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %1957 = bitcast %union.vec128_t* %XMM1.i to i8*
  %1958 = load i64, i64* %PC.i35
  %1959 = add i64 %1958, 4
  store i64 %1959, i64* %PC.i35
  %1960 = bitcast i8* %1956 to <2 x i32>*
  %1961 = load <2 x i32>, <2 x i32>* %1960, align 1
  %1962 = getelementptr inbounds i8, i8* %1956, i64 8
  %1963 = bitcast i8* %1962 to <2 x i32>*
  %1964 = load <2 x i32>, <2 x i32>* %1963, align 1
  %1965 = bitcast i8* %1957 to double*
  %1966 = load double, double* %1965, align 1
  %1967 = fptrunc double %1966 to float
  %1968 = bitcast i8* %1956 to float*
  store float %1967, float* %1968, align 1
  %1969 = extractelement <2 x i32> %1961, i32 1
  %1970 = getelementptr inbounds i8, i8* %1956, i64 4
  %1971 = bitcast i8* %1970 to i32*
  store i32 %1969, i32* %1971, align 1
  %1972 = extractelement <2 x i32> %1964, i32 0
  %1973 = bitcast i8* %1962 to i32*
  store i32 %1972, i32* %1973, align 1
  %1974 = extractelement <2 x i32> %1964, i32 1
  %1975 = getelementptr inbounds i8, i8* %1956, i64 12
  %1976 = bitcast i8* %1975 to i32*
  store i32 %1974, i32* %1976, align 1
  store %struct.Memory* %loadMem_4345f7, %struct.Memory** %MEMORY
  %loadMem_4345fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 33
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %1979 to i64*
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 5
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %RCX.i33 = bitcast %union.anon* %1982 to i64*
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1984 = getelementptr inbounds %struct.GPR, %struct.GPR* %1983, i32 0, i32 15
  %1985 = getelementptr inbounds %struct.Reg, %struct.Reg* %1984, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %1985 to i64*
  %1986 = load i64, i64* %RBP.i34
  %1987 = sub i64 %1986, 8
  %1988 = load i64, i64* %PC.i32
  %1989 = add i64 %1988, 4
  store i64 %1989, i64* %PC.i32
  %1990 = inttoptr i64 %1987 to i64*
  %1991 = load i64, i64* %1990
  store i64 %1991, i64* %RCX.i33, align 8
  store %struct.Memory* %loadMem_4345fb, %struct.Memory** %MEMORY
  %loadMem_4345ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 33
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %1994 to i64*
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 5
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %RCX.i31 = bitcast %union.anon* %1997 to i64*
  %1998 = load i64, i64* %RCX.i31
  %1999 = add i64 %1998, 216
  %2000 = load i64, i64* %PC.i30
  %2001 = add i64 %2000, 7
  store i64 %2001, i64* %PC.i30
  %2002 = inttoptr i64 %1999 to i64*
  %2003 = load i64, i64* %2002
  store i64 %2003, i64* %RCX.i31, align 8
  store %struct.Memory* %loadMem_4345ff, %struct.Memory** %MEMORY
  %loadMem_434606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 33
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %2006 to i64*
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 7
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %RDX.i28 = bitcast %union.anon* %2009 to i64*
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 15
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %2012 to i64*
  %2013 = load i64, i64* %RBP.i29
  %2014 = sub i64 %2013, 24
  %2015 = load i64, i64* %PC.i27
  %2016 = add i64 %2015, 4
  store i64 %2016, i64* %PC.i27
  %2017 = inttoptr i64 %2014 to i32*
  %2018 = load i32, i32* %2017
  %2019 = sext i32 %2018 to i64
  store i64 %2019, i64* %RDX.i28, align 8
  store %struct.Memory* %loadMem_434606, %struct.Memory** %MEMORY
  %loadMem_43460a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2021 = getelementptr inbounds %struct.GPR, %struct.GPR* %2020, i32 0, i32 33
  %2022 = getelementptr inbounds %struct.Reg, %struct.Reg* %2021, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %2022 to i64*
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 5
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2025 to i64*
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 7
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2030 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2029, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2030 to %union.vec128_t*
  %2031 = load i64, i64* %RCX.i
  %2032 = load i64, i64* %RDX.i
  %2033 = mul i64 %2032, 4
  %2034 = add i64 %2033, %2031
  %2035 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2036 = load i64, i64* %PC.i26
  %2037 = add i64 %2036, 5
  store i64 %2037, i64* %PC.i26
  %2038 = bitcast i8* %2035 to <2 x float>*
  %2039 = load <2 x float>, <2 x float>* %2038, align 1
  %2040 = extractelement <2 x float> %2039, i32 0
  %2041 = inttoptr i64 %2034 to float*
  store float %2040, float* %2041
  store %struct.Memory* %loadMem_43460a, %struct.Memory** %MEMORY
  %loadMem_43460f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2043 = getelementptr inbounds %struct.GPR, %struct.GPR* %2042, i32 0, i32 33
  %2044 = getelementptr inbounds %struct.Reg, %struct.Reg* %2043, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %2044 to i64*
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2046 = getelementptr inbounds %struct.GPR, %struct.GPR* %2045, i32 0, i32 1
  %2047 = getelementptr inbounds %struct.Reg, %struct.Reg* %2046, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %2047 to i64*
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 15
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %2050 to i64*
  %2051 = load i64, i64* %RBP.i25
  %2052 = sub i64 %2051, 24
  %2053 = load i64, i64* %PC.i23
  %2054 = add i64 %2053, 3
  store i64 %2054, i64* %PC.i23
  %2055 = inttoptr i64 %2052 to i32*
  %2056 = load i32, i32* %2055
  %2057 = zext i32 %2056 to i64
  store i64 %2057, i64* %RAX.i24, align 8
  store %struct.Memory* %loadMem_43460f, %struct.Memory** %MEMORY
  %loadMem_434612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2059 = getelementptr inbounds %struct.GPR, %struct.GPR* %2058, i32 0, i32 33
  %2060 = getelementptr inbounds %struct.Reg, %struct.Reg* %2059, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %2060 to i64*
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 1
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %2063 to i64*
  %2064 = load i64, i64* %RAX.i22
  %2065 = load i64, i64* %PC.i21
  %2066 = add i64 %2065, 3
  store i64 %2066, i64* %PC.i21
  %2067 = trunc i64 %2064 to i32
  %2068 = add i32 1, %2067
  %2069 = zext i32 %2068 to i64
  store i64 %2069, i64* %RAX.i22, align 8
  %2070 = icmp ult i32 %2068, %2067
  %2071 = icmp ult i32 %2068, 1
  %2072 = or i1 %2070, %2071
  %2073 = zext i1 %2072 to i8
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2073, i8* %2074, align 1
  %2075 = and i32 %2068, 255
  %2076 = call i32 @llvm.ctpop.i32(i32 %2075)
  %2077 = trunc i32 %2076 to i8
  %2078 = and i8 %2077, 1
  %2079 = xor i8 %2078, 1
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2079, i8* %2080, align 1
  %2081 = xor i64 1, %2064
  %2082 = trunc i64 %2081 to i32
  %2083 = xor i32 %2082, %2068
  %2084 = lshr i32 %2083, 4
  %2085 = trunc i32 %2084 to i8
  %2086 = and i8 %2085, 1
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2086, i8* %2087, align 1
  %2088 = icmp eq i32 %2068, 0
  %2089 = zext i1 %2088 to i8
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2089, i8* %2090, align 1
  %2091 = lshr i32 %2068, 31
  %2092 = trunc i32 %2091 to i8
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2092, i8* %2093, align 1
  %2094 = lshr i32 %2067, 31
  %2095 = xor i32 %2091, %2094
  %2096 = add i32 %2095, %2091
  %2097 = icmp eq i32 %2096, 2
  %2098 = zext i1 %2097 to i8
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2098, i8* %2099, align 1
  store %struct.Memory* %loadMem_434612, %struct.Memory** %MEMORY
  %loadMem_434615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 33
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %2102 to i64*
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2104 = getelementptr inbounds %struct.GPR, %struct.GPR* %2103, i32 0, i32 1
  %2105 = getelementptr inbounds %struct.Reg, %struct.Reg* %2104, i32 0, i32 0
  %EAX.i19 = bitcast %union.anon* %2105 to i32*
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2107 = getelementptr inbounds %struct.GPR, %struct.GPR* %2106, i32 0, i32 15
  %2108 = getelementptr inbounds %struct.Reg, %struct.Reg* %2107, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %2108 to i64*
  %2109 = load i64, i64* %RBP.i20
  %2110 = sub i64 %2109, 24
  %2111 = load i32, i32* %EAX.i19
  %2112 = zext i32 %2111 to i64
  %2113 = load i64, i64* %PC.i18
  %2114 = add i64 %2113, 3
  store i64 %2114, i64* %PC.i18
  %2115 = inttoptr i64 %2110 to i32*
  store i32 %2111, i32* %2115
  store %struct.Memory* %loadMem_434615, %struct.Memory** %MEMORY
  %loadMem_434618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 33
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %2118 to i64*
  %2119 = load i64, i64* %PC.i17
  %2120 = add i64 %2119, -96
  %2121 = load i64, i64* %PC.i17
  %2122 = add i64 %2121, 5
  store i64 %2122, i64* %PC.i17
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2120, i64* %2123, align 8
  store %struct.Memory* %loadMem_434618, %struct.Memory** %MEMORY
  br label %block_.L_4345b8

block_.L_43461d:                                  ; preds = %block_.L_4345b8
  %loadMem_43461d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 33
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %2126 to i64*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 11
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %RDI.i15 = bitcast %union.anon* %2129 to i64*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 15
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %2132 to i64*
  %2133 = load i64, i64* %RBP.i16
  %2134 = sub i64 %2133, 8
  %2135 = load i64, i64* %PC.i14
  %2136 = add i64 %2135, 4
  store i64 %2136, i64* %PC.i14
  %2137 = inttoptr i64 %2134 to i64*
  %2138 = load i64, i64* %2137
  store i64 %2138, i64* %RDI.i15, align 8
  store %struct.Memory* %loadMem_43461d, %struct.Memory** %MEMORY
  %loadMem1_434621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 33
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %2141 to i64*
  %2142 = load i64, i64* %PC.i13
  %2143 = add i64 %2142, -1825
  %2144 = load i64, i64* %PC.i13
  %2145 = add i64 %2144, 5
  %2146 = load i64, i64* %PC.i13
  %2147 = add i64 %2146, 5
  store i64 %2147, i64* %PC.i13
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2149 = load i64, i64* %2148, align 8
  %2150 = add i64 %2149, -8
  %2151 = inttoptr i64 %2150 to i64*
  store i64 %2145, i64* %2151
  store i64 %2150, i64* %2148, align 8
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2143, i64* %2152, align 8
  store %struct.Memory* %loadMem1_434621, %struct.Memory** %MEMORY
  %loadMem2_434621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434621 = load i64, i64* %3
  %call2_434621 = call %struct.Memory* @sub_433f00.Plan7RenormalizeExits(%struct.State* %0, i64 %loadPC_434621, %struct.Memory* %loadMem2_434621)
  store %struct.Memory* %call2_434621, %struct.Memory** %MEMORY
  %loadMem_434626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2154 = getelementptr inbounds %struct.GPR, %struct.GPR* %2153, i32 0, i32 33
  %2155 = getelementptr inbounds %struct.Reg, %struct.Reg* %2154, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %2155 to i64*
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 11
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %RDI.i11 = bitcast %union.anon* %2158 to i64*
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 15
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %2161 to i64*
  %2162 = load i64, i64* %RBP.i12
  %2163 = sub i64 %2162, 8
  %2164 = load i64, i64* %PC.i10
  %2165 = add i64 %2164, 4
  store i64 %2165, i64* %PC.i10
  %2166 = inttoptr i64 %2163 to i64*
  %2167 = load i64, i64* %2166
  store i64 %2167, i64* %RDI.i11, align 8
  store %struct.Memory* %loadMem_434626, %struct.Memory** %MEMORY
  %loadMem_43462a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 33
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %2170 to i64*
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2172 = getelementptr inbounds %struct.GPR, %struct.GPR* %2171, i32 0, i32 1
  %2173 = getelementptr inbounds %struct.Reg, %struct.Reg* %2172, i32 0, i32 0
  %RAX.i8 = bitcast %union.anon* %2173 to i64*
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2175 = getelementptr inbounds %struct.GPR, %struct.GPR* %2174, i32 0, i32 11
  %2176 = getelementptr inbounds %struct.Reg, %struct.Reg* %2175, i32 0, i32 0
  %RDI.i9 = bitcast %union.anon* %2176 to i64*
  %2177 = load i64, i64* %RDI.i9
  %2178 = add i64 %2177, 456
  %2179 = load i64, i64* %PC.i7
  %2180 = add i64 %2179, 6
  store i64 %2180, i64* %PC.i7
  %2181 = inttoptr i64 %2178 to i32*
  %2182 = load i32, i32* %2181
  %2183 = zext i32 %2182 to i64
  store i64 %2183, i64* %RAX.i8, align 8
  store %struct.Memory* %loadMem_43462a, %struct.Memory** %MEMORY
  %loadMem_434630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2185 = getelementptr inbounds %struct.GPR, %struct.GPR* %2184, i32 0, i32 33
  %2186 = getelementptr inbounds %struct.Reg, %struct.Reg* %2185, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %2186 to i64*
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2188 = getelementptr inbounds %struct.GPR, %struct.GPR* %2187, i32 0, i32 1
  %2189 = getelementptr inbounds %struct.Reg, %struct.Reg* %2188, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %2189 to i64*
  %2190 = load i64, i64* %RAX.i
  %2191 = load i64, i64* %PC.i6
  %2192 = add i64 %2191, 3
  store i64 %2192, i64* %PC.i6
  %2193 = and i64 -2, %2190
  %2194 = trunc i64 %2193 to i32
  %2195 = and i64 %2193, 4294967295
  store i64 %2195, i64* %RAX.i, align 8
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2196, align 1
  %2197 = and i32 %2194, 255
  %2198 = call i32 @llvm.ctpop.i32(i32 %2197)
  %2199 = trunc i32 %2198 to i8
  %2200 = and i8 %2199, 1
  %2201 = xor i8 %2200, 1
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2201, i8* %2202, align 1
  %2203 = icmp eq i32 %2194, 0
  %2204 = zext i1 %2203 to i8
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2204, i8* %2205, align 1
  %2206 = lshr i32 %2194, 31
  %2207 = trunc i32 %2206 to i8
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2207, i8* %2208, align 1
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2209, align 1
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2210, align 1
  store %struct.Memory* %loadMem_434630, %struct.Memory** %MEMORY
  %loadMem_434633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2212 = getelementptr inbounds %struct.GPR, %struct.GPR* %2211, i32 0, i32 33
  %2213 = getelementptr inbounds %struct.Reg, %struct.Reg* %2212, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %2213 to i64*
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2215 = getelementptr inbounds %struct.GPR, %struct.GPR* %2214, i32 0, i32 1
  %2216 = getelementptr inbounds %struct.Reg, %struct.Reg* %2215, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %2216 to i32*
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2218 = getelementptr inbounds %struct.GPR, %struct.GPR* %2217, i32 0, i32 11
  %2219 = getelementptr inbounds %struct.Reg, %struct.Reg* %2218, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %2219 to i64*
  %2220 = load i64, i64* %RDI.i
  %2221 = add i64 %2220, 456
  %2222 = load i32, i32* %EAX.i
  %2223 = zext i32 %2222 to i64
  %2224 = load i64, i64* %PC.i5
  %2225 = add i64 %2224, 6
  store i64 %2225, i64* %PC.i5
  %2226 = inttoptr i64 %2221 to i32*
  store i32 %2222, i32* %2226
  store %struct.Memory* %loadMem_434633, %struct.Memory** %MEMORY
  %loadMem_434639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2228 = getelementptr inbounds %struct.GPR, %struct.GPR* %2227, i32 0, i32 33
  %2229 = getelementptr inbounds %struct.Reg, %struct.Reg* %2228, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %2229 to i64*
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2231 = getelementptr inbounds %struct.GPR, %struct.GPR* %2230, i32 0, i32 13
  %2232 = getelementptr inbounds %struct.Reg, %struct.Reg* %2231, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %2232 to i64*
  %2233 = load i64, i64* %RSP.i
  %2234 = load i64, i64* %PC.i4
  %2235 = add i64 %2234, 4
  store i64 %2235, i64* %PC.i4
  %2236 = add i64 32, %2233
  store i64 %2236, i64* %RSP.i, align 8
  %2237 = icmp ult i64 %2236, %2233
  %2238 = icmp ult i64 %2236, 32
  %2239 = or i1 %2237, %2238
  %2240 = zext i1 %2239 to i8
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2240, i8* %2241, align 1
  %2242 = trunc i64 %2236 to i32
  %2243 = and i32 %2242, 255
  %2244 = call i32 @llvm.ctpop.i32(i32 %2243)
  %2245 = trunc i32 %2244 to i8
  %2246 = and i8 %2245, 1
  %2247 = xor i8 %2246, 1
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2247, i8* %2248, align 1
  %2249 = xor i64 32, %2233
  %2250 = xor i64 %2249, %2236
  %2251 = lshr i64 %2250, 4
  %2252 = trunc i64 %2251 to i8
  %2253 = and i8 %2252, 1
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2253, i8* %2254, align 1
  %2255 = icmp eq i64 %2236, 0
  %2256 = zext i1 %2255 to i8
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2256, i8* %2257, align 1
  %2258 = lshr i64 %2236, 63
  %2259 = trunc i64 %2258 to i8
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2259, i8* %2260, align 1
  %2261 = lshr i64 %2233, 63
  %2262 = xor i64 %2258, %2261
  %2263 = add i64 %2262, %2258
  %2264 = icmp eq i64 %2263, 2
  %2265 = zext i1 %2264 to i8
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2265, i8* %2266, align 1
  store %struct.Memory* %loadMem_434639, %struct.Memory** %MEMORY
  %loadMem_43463d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 33
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 15
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %2272 to i64*
  %2273 = load i64, i64* %PC.i2
  %2274 = add i64 %2273, 1
  store i64 %2274, i64* %PC.i2
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2276 = load i64, i64* %2275, align 8
  %2277 = add i64 %2276, 8
  %2278 = inttoptr i64 %2276 to i64*
  %2279 = load i64, i64* %2278
  store i64 %2279, i64* %RBP.i3, align 8
  store i64 %2277, i64* %2275, align 8
  store %struct.Memory* %loadMem_43463d, %struct.Memory** %MEMORY
  %loadMem_43463e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 33
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %2282 to i64*
  %2283 = load i64, i64* %PC.i1
  %2284 = add i64 %2283, 1
  store i64 %2284, i64* %PC.i1
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2287 = load i64, i64* %2286, align 8
  %2288 = inttoptr i64 %2287 to i64*
  %2289 = load i64, i64* %2288
  store i64 %2289, i64* %2285, align 8
  %2290 = add i64 %2287, 8
  store i64 %2290, i64* %2286, align 8
  store %struct.Memory* %loadMem_43463e, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_43463e
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

define %struct.Memory* @routine_subq__0x20___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 32
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 32
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
  %23 = xor i64 32, %9
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

define %struct.Memory* @routine_movsd_0x203b0__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x203b0__rip__type* @G_0x203b0__rip_ to i64)
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

define %struct.Memory* @routine_xorps__xmm3___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
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

define %struct.Memory* @routine_movss_0x202ed__rip____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x202ed__rip__type* @G_0x202ed__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = bitcast i8* %8 to float*
  store float %14, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 4
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %8, i64 8
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 12
  %21 = bitcast i8* %20 to float*
  store float 0.000000e+00, float* %21, align 1
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

define %struct.Memory* @routine_movss__xmm0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 12
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

define %struct.Memory* @routine_movss__xmm1__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 16
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

define %struct.Memory* @routine_movaps__xmm4___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM4 to i8*
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

define %struct.Memory* @routine_subss_0x130__rdi____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDI
  %14 = add i64 %13, 304
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
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

define %struct.Memory* @routine_movss__xmm0__0xac__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDI
  %12 = add i64 %11, 172
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x130__rdi____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movss__xmm0__0xb0__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDI
  %12 = add i64 %11, 176
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm4__0xb4__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDI
  %12 = add i64 %11, 180
  %13 = bitcast %union.vec128_t* %XMM4 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm3__0xb8__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDI
  %12 = add i64 %11, 184
  %13 = bitcast %union.vec128_t* %XMM3 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0xbc__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDI
  %12 = add i64 %11, 188
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0xc0__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDI
  %12 = add i64 %11, 192
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm4__0xc4__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDI
  %12 = add i64 %11, 196
  %13 = bitcast %union.vec128_t* %XMM4 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm3__0xc8__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDI
  %12 = add i64 %11, 200
  %13 = bitcast %union.vec128_t* %XMM3 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
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

define %struct.Memory* @routine_movaps__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_cvtss2sd_0xa8__rdi____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm2___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_subsd__xmm0___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
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

define %struct.Memory* @routine_mulsd__xmm3___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
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
  %22 = fmul double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq_0xd0__rdi____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 208
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x4__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDI
  %12 = add i64 %11, 4
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

define %struct.Memory* @routine_addq__0x8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 8, %9
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 8
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
  %25 = xor i64 8, %9
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

define %struct.Memory* @routine_movl_0x88__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_cvtss2sd_0xa8__rax____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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

define %struct.Memory* @routine_mulsd__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fmul double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x88__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_cvtsi2ssl__edx___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to <2 x i32>*
  %17 = load <2 x i32>, <2 x i32>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %11, i64 8
  %19 = bitcast i8* %18 to <2 x i32>*
  %20 = load <2 x i32>, <2 x i32>* %19, align 1
  %21 = sitofp i32 %12 to float
  %22 = bitcast i8* %11 to float*
  store float %21, float* %22, align 1
  %23 = extractelement <2 x i32> %17, i32 1
  %24 = getelementptr inbounds i8, i8* %11, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %20, i32 0
  %27 = bitcast i8* %18 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %20, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
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

define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fdiv double %16, %21
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

define %struct.Memory* @routine_movl__ecx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.FSet(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0x201b1__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x201b1__rip__type* @G_0x201b1__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = bitcast i8* %8 to float*
  store float %14, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 4
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %8, i64 8
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 12
  %21 = bitcast i8* %20 to float*
  store float 0.000000e+00, float* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0xd8__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 216
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x88__rdi____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0____rax__rdi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RDI
  %16 = mul i64 %15, 4
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to <2 x float>*
  %22 = load <2 x float>, <2 x float>* %21, align 1
  %23 = extractelement <2 x float> %22, i32 0
  %24 = inttoptr i64 %17 to float*
  store float %23, float* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
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

define %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to <2 x i32>*
  %17 = load <2 x i32>, <2 x i32>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %11, i64 8
  %19 = bitcast i8* %18 to <2 x i32>*
  %20 = load <2 x i32>, <2 x i32>* %19, align 1
  %21 = sitofp i32 %12 to float
  %22 = bitcast i8* %11 to float*
  store float %21, float* %22, align 1
  %23 = extractelement <2 x i32> %17, i32 1
  %24 = getelementptr inbounds i8, i8* %11, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %20, i32 0
  %27 = bitcast i8* %18 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %20, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 20
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

define %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 136
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

define %struct.Memory* @routine_jge_.L_43461d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x2020d__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x2020d__rip__type* @G_0x2020d__rip_ to i64)
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x14__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x14__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
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

define %struct.Memory* @routine_cvtsi2ssl__eax___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to <2 x i32>*
  %17 = load <2 x i32>, <2 x i32>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %11, i64 8
  %19 = bitcast i8* %18 to <2 x i32>*
  %20 = load <2 x i32>, <2 x i32>* %19, align 1
  %21 = sitofp i32 %12 to float
  %22 = bitcast i8* %11 to float*
  store float %21, float* %22, align 1
  %23 = extractelement <2 x i32> %17, i32 1
  %24 = getelementptr inbounds i8, i8* %11, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %20, i32 0
  %27 = bitcast i8* %18 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %20, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss__xmm3___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
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
  %24 = fmul float %22, %23
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

define %struct.Memory* @routine_cvtss2sd__xmm2___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_subsd__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fsub double %16, %21
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

define %struct.Memory* @routine_movq_0xd8__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 216
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_movss__xmm0____rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %RDX
  %16 = mul i64 %15, 4
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to <2 x float>*
  %22 = load <2 x float>, <2 x float>* %21, align 1
  %23 = extractelement <2 x float> %22, i32 0
  %24 = inttoptr i64 %17 to float*
  store float %23, float* %24
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

define %struct.Memory* @routine_jmpq_.L_4345b8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.Plan7RenormalizeExits(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x1c8__rdi____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0xfffffffe___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 -2, %9
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
  %22 = icmp eq i32 %13, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %13, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x1c8__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 456
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x20___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 32, %9
  store i64 %12, i64* %RSP, align 8
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
