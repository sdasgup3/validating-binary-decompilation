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
%G_0x663038_type = type <{ [4 x i8] }>
%G_0x66303c_type = type <{ [4 x i8] }>
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
@G_0x663038 = global %G_0x663038_type zeroinitializer
@G_0x66303c = global %G_0x66303c_type zeroinitializer

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

declare %struct.Memory* @sub_446f90.read_i32(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_447000.read_i16(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_447070.read_offset(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_447130.indexfile_position(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_401410.fread_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4471f0.SSIClose(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @load_indexfile(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_446930 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_446930, %struct.Memory** %MEMORY
  %loadMem_446931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i213 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i213
  %27 = load i64, i64* %PC.i212
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i212
  store i64 %26, i64* %RBP.i214, align 8
  store %struct.Memory* %loadMem_446931, %struct.Memory** %MEMORY
  %loadMem_446934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i282 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i282
  %36 = load i64, i64* %PC.i281
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i281
  %38 = sub i64 %35, 32
  store i64 %38, i64* %RSP.i282, align 8
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
  store %struct.Memory* %loadMem_446934, %struct.Memory** %MEMORY
  %loadMem_446938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 9
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RSI.i311 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i312
  %77 = sub i64 %76, 20
  %78 = load i64, i64* %PC.i310
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC.i310
  store i64 %77, i64* %RSI.i311, align 8
  store %struct.Memory* %loadMem_446938, %struct.Memory** %MEMORY
  %loadMem_44693c = load %struct.Memory*, %struct.Memory** %MEMORY
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %81 = getelementptr inbounds %struct.GPR, %struct.GPR* %80, i32 0, i32 33
  %82 = getelementptr inbounds %struct.Reg, %struct.Reg* %81, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %82 to i64*
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 11
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %RDI.i341 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 15
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %88 to i64*
  %89 = load i64, i64* %RBP.i342
  %90 = sub i64 %89, 16
  %91 = load i64, i64* %RDI.i341
  %92 = load i64, i64* %PC.i340
  %93 = add i64 %92, 4
  store i64 %93, i64* %PC.i340
  %94 = inttoptr i64 %90 to i64*
  store i64 %91, i64* %94
  store %struct.Memory* %loadMem_44693c, %struct.Memory** %MEMORY
  %loadMem_446940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 33
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %97 to i64*
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 15
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %100 to i64*
  %101 = load i64, i64* %RBP.i371
  %102 = sub i64 %101, 28
  %103 = load i64, i64* %PC.i370
  %104 = add i64 %103, 7
  store i64 %104, i64* %PC.i370
  %105 = inttoptr i64 %102 to i32*
  store i32 6, i32* %105
  store %struct.Memory* %loadMem_446940, %struct.Memory** %MEMORY
  %loadMem_446947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 11
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %RDI.i438 = bitcast %union.anon* %111 to i64*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 15
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %114 to i64*
  %115 = load i64, i64* %RBP.i439
  %116 = sub i64 %115, 16
  %117 = load i64, i64* %PC.i437
  %118 = add i64 %117, 4
  store i64 %118, i64* %PC.i437
  %119 = inttoptr i64 %116 to i64*
  %120 = load i64, i64* %119
  store i64 %120, i64* %RDI.i438, align 8
  store %struct.Memory* %loadMem_446947, %struct.Memory** %MEMORY
  %loadMem_44694b = load %struct.Memory*, %struct.Memory** %MEMORY
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 33
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %PC.i863 = bitcast %union.anon* %123 to i64*
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 11
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %RDI.i864 = bitcast %union.anon* %126 to i64*
  %127 = load i64, i64* %RDI.i864
  %128 = add i64 %127, 104
  %129 = load i64, i64* %PC.i863
  %130 = add i64 %129, 8
  store i64 %130, i64* %PC.i863
  %131 = inttoptr i64 %128 to i64*
  store i64 0, i64* %131
  store %struct.Memory* %loadMem_44694b, %struct.Memory** %MEMORY
  %loadMem_446953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 33
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %PC.i860 = bitcast %union.anon* %134 to i64*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 11
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %RDI.i861 = bitcast %union.anon* %137 to i64*
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 15
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %RBP.i862 = bitcast %union.anon* %140 to i64*
  %141 = load i64, i64* %RBP.i862
  %142 = sub i64 %141, 16
  %143 = load i64, i64* %PC.i860
  %144 = add i64 %143, 4
  store i64 %144, i64* %PC.i860
  %145 = inttoptr i64 %142 to i64*
  %146 = load i64, i64* %145
  store i64 %146, i64* %RDI.i861, align 8
  store %struct.Memory* %loadMem_446953, %struct.Memory** %MEMORY
  %loadMem_446957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 33
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %149 to i64*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 11
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %RDI.i859 = bitcast %union.anon* %152 to i64*
  %153 = load i64, i64* %RDI.i859
  %154 = add i64 %153, 112
  %155 = load i64, i64* %PC.i858
  %156 = add i64 %155, 8
  store i64 %156, i64* %PC.i858
  %157 = inttoptr i64 %154 to i64*
  store i64 0, i64* %157
  store %struct.Memory* %loadMem_446957, %struct.Memory** %MEMORY
  %loadMem_44695f = load %struct.Memory*, %struct.Memory** %MEMORY
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 33
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 11
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %RDI.i856 = bitcast %union.anon* %163 to i64*
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 15
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %RBP.i857 = bitcast %union.anon* %166 to i64*
  %167 = load i64, i64* %RBP.i857
  %168 = sub i64 %167, 16
  %169 = load i64, i64* %PC.i855
  %170 = add i64 %169, 4
  store i64 %170, i64* %PC.i855
  %171 = inttoptr i64 %168 to i64*
  %172 = load i64, i64* %171
  store i64 %172, i64* %RDI.i856, align 8
  store %struct.Memory* %loadMem_44695f, %struct.Memory** %MEMORY
  %loadMem_446963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 33
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %175 to i64*
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 11
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %RDI.i854 = bitcast %union.anon* %178 to i64*
  %179 = load i64, i64* %RDI.i854
  %180 = add i64 %179, 120
  %181 = load i64, i64* %PC.i853
  %182 = add i64 %181, 8
  store i64 %182, i64* %PC.i853
  %183 = inttoptr i64 %180 to i64*
  store i64 0, i64* %183
  store %struct.Memory* %loadMem_446963, %struct.Memory** %MEMORY
  %loadMem_44696b = load %struct.Memory*, %struct.Memory** %MEMORY
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 33
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %186 to i64*
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 11
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %RDI.i851 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 15
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %RBP.i852 = bitcast %union.anon* %192 to i64*
  %193 = load i64, i64* %RBP.i852
  %194 = sub i64 %193, 16
  %195 = load i64, i64* %PC.i850
  %196 = add i64 %195, 4
  store i64 %196, i64* %PC.i850
  %197 = inttoptr i64 %194 to i64*
  %198 = load i64, i64* %197
  store i64 %198, i64* %RDI.i851, align 8
  store %struct.Memory* %loadMem_44696b, %struct.Memory** %MEMORY
  %loadMem_44696f = load %struct.Memory*, %struct.Memory** %MEMORY
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 33
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %201 to i64*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 11
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %RDI.i849 = bitcast %union.anon* %204 to i64*
  %205 = load i64, i64* %RDI.i849
  %206 = add i64 %205, 128
  %207 = load i64, i64* %PC.i848
  %208 = add i64 %207, 11
  store i64 %208, i64* %PC.i848
  %209 = inttoptr i64 %206 to i64*
  store i64 0, i64* %209
  store %struct.Memory* %loadMem_44696f, %struct.Memory** %MEMORY
  %loadMem_44697a = load %struct.Memory*, %struct.Memory** %MEMORY
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 33
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %212 to i64*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 11
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %RDI.i846 = bitcast %union.anon* %215 to i64*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 15
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %RBP.i847 = bitcast %union.anon* %218 to i64*
  %219 = load i64, i64* %RBP.i847
  %220 = sub i64 %219, 16
  %221 = load i64, i64* %PC.i845
  %222 = add i64 %221, 4
  store i64 %222, i64* %PC.i845
  %223 = inttoptr i64 %220 to i64*
  %224 = load i64, i64* %223
  store i64 %224, i64* %RDI.i846, align 8
  store %struct.Memory* %loadMem_44697a, %struct.Memory** %MEMORY
  %loadMem_44697e = load %struct.Memory*, %struct.Memory** %MEMORY
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 33
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %PC.i843 = bitcast %union.anon* %227 to i64*
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 11
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %RDI.i844 = bitcast %union.anon* %230 to i64*
  %231 = load i64, i64* %RDI.i844
  %232 = add i64 %231, 136
  %233 = load i64, i64* %PC.i843
  %234 = add i64 %233, 11
  store i64 %234, i64* %PC.i843
  %235 = inttoptr i64 %232 to i64*
  store i64 0, i64* %235
  store %struct.Memory* %loadMem_44697e, %struct.Memory** %MEMORY
  %loadMem_446989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 33
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %PC.i840 = bitcast %union.anon* %238 to i64*
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 11
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %RDI.i841 = bitcast %union.anon* %241 to i64*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 15
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %RBP.i842 = bitcast %union.anon* %244 to i64*
  %245 = load i64, i64* %RBP.i842
  %246 = sub i64 %245, 16
  %247 = load i64, i64* %PC.i840
  %248 = add i64 %247, 4
  store i64 %248, i64* %PC.i840
  %249 = inttoptr i64 %246 to i64*
  %250 = load i64, i64* %249
  store i64 %250, i64* %RDI.i841, align 8
  store %struct.Memory* %loadMem_446989, %struct.Memory** %MEMORY
  %loadMem_44698d = load %struct.Memory*, %struct.Memory** %MEMORY
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 33
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %253 to i64*
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 11
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %RDI.i839 = bitcast %union.anon* %256 to i64*
  %257 = load i64, i64* %RDI.i839
  %258 = add i64 %257, 12
  %259 = load i64, i64* %PC.i838
  %260 = add i64 %259, 6
  store i64 %260, i64* %PC.i838
  %261 = inttoptr i64 %258 to i16*
  store i16 0, i16* %261
  store %struct.Memory* %loadMem_44698d, %struct.Memory** %MEMORY
  %loadMem_446993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 33
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %264 to i64*
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 11
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %RDI.i836 = bitcast %union.anon* %267 to i64*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 15
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %RBP.i837 = bitcast %union.anon* %270 to i64*
  %271 = load i64, i64* %RBP.i837
  %272 = sub i64 %271, 16
  %273 = load i64, i64* %PC.i835
  %274 = add i64 %273, 4
  store i64 %274, i64* %PC.i835
  %275 = inttoptr i64 %272 to i64*
  %276 = load i64, i64* %275
  store i64 %276, i64* %RDI.i836, align 8
  store %struct.Memory* %loadMem_446993, %struct.Memory** %MEMORY
  %loadMem_446997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 33
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %279 to i64*
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 11
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %RDI.i834 = bitcast %union.anon* %282 to i64*
  %283 = load i64, i64* %RDI.i834
  %284 = load i64, i64* %PC.i833
  %285 = add i64 %284, 3
  store i64 %285, i64* %PC.i833
  %286 = inttoptr i64 %283 to i64*
  %287 = load i64, i64* %286
  store i64 %287, i64* %RDI.i834, align 8
  store %struct.Memory* %loadMem_446997, %struct.Memory** %MEMORY
  %loadMem1_44699a = load %struct.Memory*, %struct.Memory** %MEMORY
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %289 = getelementptr inbounds %struct.GPR, %struct.GPR* %288, i32 0, i32 33
  %290 = getelementptr inbounds %struct.Reg, %struct.Reg* %289, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %290 to i64*
  %291 = load i64, i64* %PC.i832
  %292 = add i64 %291, 1526
  %293 = load i64, i64* %PC.i832
  %294 = add i64 %293, 5
  %295 = load i64, i64* %PC.i832
  %296 = add i64 %295, 5
  store i64 %296, i64* %PC.i832
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = add i64 %298, -8
  %300 = inttoptr i64 %299 to i64*
  store i64 %294, i64* %300
  store i64 %299, i64* %297, align 8
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %292, i64* %301, align 8
  store %struct.Memory* %loadMem1_44699a, %struct.Memory** %MEMORY
  %loadMem2_44699a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44699a = load i64, i64* %3
  %call2_44699a = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64 %loadPC_44699a, %struct.Memory* %loadMem2_44699a)
  store %struct.Memory* %call2_44699a, %struct.Memory** %MEMORY
  %loadMem_44699f = load %struct.Memory*, %struct.Memory** %MEMORY
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %303 = getelementptr inbounds %struct.GPR, %struct.GPR* %302, i32 0, i32 33
  %304 = getelementptr inbounds %struct.Reg, %struct.Reg* %303, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %304 to i64*
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %EAX.i831 = bitcast %union.anon* %307 to i32*
  %308 = load i32, i32* %EAX.i831
  %309 = zext i32 %308 to i64
  %310 = load i64, i64* %PC.i830
  %311 = add i64 %310, 3
  store i64 %311, i64* %PC.i830
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %312, align 1
  %313 = and i32 %308, 255
  %314 = call i32 @llvm.ctpop.i32(i32 %313)
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = xor i8 %316, 1
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %317, i8* %318, align 1
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %319, align 1
  %320 = icmp eq i32 %308, 0
  %321 = zext i1 %320 to i8
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %321, i8* %322, align 1
  %323 = lshr i32 %308, 31
  %324 = trunc i32 %323 to i8
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %324, i8* %325, align 1
  %326 = lshr i32 %308, 31
  %327 = xor i32 %323, %326
  %328 = add i32 %327, %326
  %329 = icmp eq i32 %328, 2
  %330 = zext i1 %329 to i8
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %330, i8* %331, align 1
  store %struct.Memory* %loadMem_44699f, %struct.Memory** %MEMORY
  %loadMem_4469a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 33
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %334 to i64*
  %335 = load i64, i64* %PC.i829
  %336 = add i64 %335, 18
  %337 = load i64, i64* %PC.i829
  %338 = add i64 %337, 6
  %339 = load i64, i64* %PC.i829
  %340 = add i64 %339, 6
  store i64 %340, i64* %PC.i829
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %342 = load i8, i8* %341, align 1
  %343 = icmp eq i8 %342, 0
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %BRANCH_TAKEN, align 1
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %346 = select i1 %343, i64 %336, i64 %338
  store i64 %346, i64* %345, align 8
  store %struct.Memory* %loadMem_4469a2, %struct.Memory** %MEMORY
  %loadBr_4469a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4469a2 = icmp eq i8 %loadBr_4469a2, 1
  br i1 %cmpBr_4469a2, label %block_.L_4469b4, label %block_4469a8

block_4469a8:                                     ; preds = %entry
  %loadMem_4469a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 33
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %PC.i827 = bitcast %union.anon* %349 to i64*
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 15
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %RBP.i828 = bitcast %union.anon* %352 to i64*
  %353 = load i64, i64* %RBP.i828
  %354 = sub i64 %353, 28
  %355 = load i64, i64* %PC.i827
  %356 = add i64 %355, 7
  store i64 %356, i64* %PC.i827
  %357 = inttoptr i64 %354 to i32*
  store i32 5, i32* %357
  store %struct.Memory* %loadMem_4469a8, %struct.Memory** %MEMORY
  %loadMem_4469af = load %struct.Memory*, %struct.Memory** %MEMORY
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 33
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %360 to i64*
  %361 = load i64, i64* %PC.i826
  %362 = add i64 %361, 1469
  %363 = load i64, i64* %PC.i826
  %364 = add i64 %363, 5
  store i64 %364, i64* %PC.i826
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %362, i64* %365, align 8
  store %struct.Memory* %loadMem_4469af, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_4469b4:                                  ; preds = %entry
  %loadMem_4469b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %367 = getelementptr inbounds %struct.GPR, %struct.GPR* %366, i32 0, i32 33
  %368 = getelementptr inbounds %struct.Reg, %struct.Reg* %367, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %368 to i64*
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %370 = getelementptr inbounds %struct.GPR, %struct.GPR* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.Reg, %struct.Reg* %370, i32 0, i32 0
  %RAX.i824 = bitcast %union.anon* %371 to i64*
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 15
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %RBP.i825 = bitcast %union.anon* %374 to i64*
  %375 = load i64, i64* %RBP.i825
  %376 = sub i64 %375, 20
  %377 = load i64, i64* %PC.i823
  %378 = add i64 %377, 3
  store i64 %378, i64* %PC.i823
  %379 = inttoptr i64 %376 to i32*
  %380 = load i32, i32* %379
  %381 = zext i32 %380 to i64
  store i64 %381, i64* %RAX.i824, align 8
  store %struct.Memory* %loadMem_4469b4, %struct.Memory** %MEMORY
  %loadMem_4469b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 33
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %384 to i64*
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %EAX.i822 = bitcast %union.anon* %387 to i32*
  %388 = load i32, i32* %EAX.i822
  %389 = zext i32 %388 to i64
  %390 = load i64, i64* %PC.i821
  %391 = add i64 %390, 7
  store i64 %391, i64* %PC.i821
  %392 = load i32, i32* bitcast (%G_0x663038_type* @G_0x663038 to i32*)
  %393 = sub i32 %388, %392
  %394 = icmp ult i32 %388, %392
  %395 = zext i1 %394 to i8
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %395, i8* %396, align 1
  %397 = and i32 %393, 255
  %398 = call i32 @llvm.ctpop.i32(i32 %397)
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  %401 = xor i8 %400, 1
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %401, i8* %402, align 1
  %403 = xor i32 %392, %388
  %404 = xor i32 %403, %393
  %405 = lshr i32 %404, 4
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %407, i8* %408, align 1
  %409 = icmp eq i32 %393, 0
  %410 = zext i1 %409 to i8
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %410, i8* %411, align 1
  %412 = lshr i32 %393, 31
  %413 = trunc i32 %412 to i8
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %413, i8* %414, align 1
  %415 = lshr i32 %388, 31
  %416 = lshr i32 %392, 31
  %417 = xor i32 %416, %415
  %418 = xor i32 %412, %415
  %419 = add i32 %418, %417
  %420 = icmp eq i32 %419, 2
  %421 = zext i1 %420 to i8
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %421, i8* %422, align 1
  store %struct.Memory* %loadMem_4469b7, %struct.Memory** %MEMORY
  %loadMem_4469be = load %struct.Memory*, %struct.Memory** %MEMORY
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 33
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %425 to i64*
  %426 = load i64, i64* %PC.i820
  %427 = add i64 %426, 34
  %428 = load i64, i64* %PC.i820
  %429 = add i64 %428, 6
  %430 = load i64, i64* %PC.i820
  %431 = add i64 %430, 6
  store i64 %431, i64* %PC.i820
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %433 = load i8, i8* %432, align 1
  store i8 %433, i8* %BRANCH_TAKEN, align 1
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %435 = icmp ne i8 %433, 0
  %436 = select i1 %435, i64 %427, i64 %429
  store i64 %436, i64* %434, align 8
  store %struct.Memory* %loadMem_4469be, %struct.Memory** %MEMORY
  %loadBr_4469be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4469be = icmp eq i8 %loadBr_4469be, 1
  br i1 %cmpBr_4469be, label %block_.L_4469e0, label %block_4469c4

block_4469c4:                                     ; preds = %block_.L_4469b4
  %loadMem_4469c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 33
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %439 to i64*
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %RAX.i818 = bitcast %union.anon* %442 to i64*
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 15
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %RBP.i819 = bitcast %union.anon* %445 to i64*
  %446 = load i64, i64* %RBP.i819
  %447 = sub i64 %446, 20
  %448 = load i64, i64* %PC.i817
  %449 = add i64 %448, 3
  store i64 %449, i64* %PC.i817
  %450 = inttoptr i64 %447 to i32*
  %451 = load i32, i32* %450
  %452 = zext i32 %451 to i64
  store i64 %452, i64* %RAX.i818, align 8
  store %struct.Memory* %loadMem_4469c4, %struct.Memory** %MEMORY
  %loadMem_4469c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 33
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %455 to i64*
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 1
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %EAX.i816 = bitcast %union.anon* %458 to i32*
  %459 = load i32, i32* %EAX.i816
  %460 = zext i32 %459 to i64
  %461 = load i64, i64* %PC.i815
  %462 = add i64 %461, 7
  store i64 %462, i64* %PC.i815
  %463 = load i32, i32* bitcast (%G_0x66303c_type* @G_0x66303c to i32*)
  %464 = sub i32 %459, %463
  %465 = icmp ult i32 %459, %463
  %466 = zext i1 %465 to i8
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %466, i8* %467, align 1
  %468 = and i32 %464, 255
  %469 = call i32 @llvm.ctpop.i32(i32 %468)
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  %472 = xor i8 %471, 1
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %472, i8* %473, align 1
  %474 = xor i32 %463, %459
  %475 = xor i32 %474, %464
  %476 = lshr i32 %475, 4
  %477 = trunc i32 %476 to i8
  %478 = and i8 %477, 1
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %478, i8* %479, align 1
  %480 = icmp eq i32 %464, 0
  %481 = zext i1 %480 to i8
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %481, i8* %482, align 1
  %483 = lshr i32 %464, 31
  %484 = trunc i32 %483 to i8
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %484, i8* %485, align 1
  %486 = lshr i32 %459, 31
  %487 = lshr i32 %463, 31
  %488 = xor i32 %487, %486
  %489 = xor i32 %483, %486
  %490 = add i32 %489, %488
  %491 = icmp eq i32 %490, 2
  %492 = zext i1 %491 to i8
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %492, i8* %493, align 1
  store %struct.Memory* %loadMem_4469c7, %struct.Memory** %MEMORY
  %loadMem_4469ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 33
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %496 to i64*
  %497 = load i64, i64* %PC.i814
  %498 = add i64 %497, 18
  %499 = load i64, i64* %PC.i814
  %500 = add i64 %499, 6
  %501 = load i64, i64* %PC.i814
  %502 = add i64 %501, 6
  store i64 %502, i64* %PC.i814
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %504 = load i8, i8* %503, align 1
  store i8 %504, i8* %BRANCH_TAKEN, align 1
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %506 = icmp ne i8 %504, 0
  %507 = select i1 %506, i64 %498, i64 %500
  store i64 %507, i64* %505, align 8
  store %struct.Memory* %loadMem_4469ce, %struct.Memory** %MEMORY
  %loadBr_4469ce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4469ce = icmp eq i8 %loadBr_4469ce, 1
  br i1 %cmpBr_4469ce, label %block_.L_4469e0, label %block_4469d4

block_4469d4:                                     ; preds = %block_4469c4
  %loadMem_4469d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %509 = getelementptr inbounds %struct.GPR, %struct.GPR* %508, i32 0, i32 33
  %510 = getelementptr inbounds %struct.Reg, %struct.Reg* %509, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %510 to i64*
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %512 = getelementptr inbounds %struct.GPR, %struct.GPR* %511, i32 0, i32 15
  %513 = getelementptr inbounds %struct.Reg, %struct.Reg* %512, i32 0, i32 0
  %RBP.i813 = bitcast %union.anon* %513 to i64*
  %514 = load i64, i64* %RBP.i813
  %515 = sub i64 %514, 28
  %516 = load i64, i64* %PC.i812
  %517 = add i64 %516, 7
  store i64 %517, i64* %PC.i812
  %518 = inttoptr i64 %515 to i32*
  store i32 5, i32* %518
  store %struct.Memory* %loadMem_4469d4, %struct.Memory** %MEMORY
  %loadMem_4469db = load %struct.Memory*, %struct.Memory** %MEMORY
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 33
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %PC.i811 = bitcast %union.anon* %521 to i64*
  %522 = load i64, i64* %PC.i811
  %523 = add i64 %522, 1425
  %524 = load i64, i64* %PC.i811
  %525 = add i64 %524, 5
  store i64 %525, i64* %PC.i811
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %523, i64* %526, align 8
  store %struct.Memory* %loadMem_4469db, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_4469e0:                                  ; preds = %block_4469c4, %block_.L_4469b4
  %loadMem_4469e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 33
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %PC.i808 = bitcast %union.anon* %529 to i64*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 1
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %RAX.i809 = bitcast %union.anon* %532 to i64*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 15
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %RBP.i810 = bitcast %union.anon* %535 to i64*
  %536 = load i64, i64* %RBP.i810
  %537 = sub i64 %536, 16
  %538 = load i64, i64* %PC.i808
  %539 = add i64 %538, 4
  store i64 %539, i64* %PC.i808
  %540 = inttoptr i64 %537 to i64*
  %541 = load i64, i64* %540
  store i64 %541, i64* %RAX.i809, align 8
  store %struct.Memory* %loadMem_4469e0, %struct.Memory** %MEMORY
  %loadMem_4469e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %543 = getelementptr inbounds %struct.GPR, %struct.GPR* %542, i32 0, i32 33
  %544 = getelementptr inbounds %struct.Reg, %struct.Reg* %543, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %544 to i64*
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 1
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %RAX.i806 = bitcast %union.anon* %547 to i64*
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 11
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %RDI.i807 = bitcast %union.anon* %550 to i64*
  %551 = load i64, i64* %RAX.i806
  %552 = load i64, i64* %PC.i805
  %553 = add i64 %552, 3
  store i64 %553, i64* %PC.i805
  %554 = inttoptr i64 %551 to i64*
  %555 = load i64, i64* %554
  store i64 %555, i64* %RDI.i807, align 8
  store %struct.Memory* %loadMem_4469e4, %struct.Memory** %MEMORY
  %loadMem_4469e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 33
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %558 to i64*
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 1
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %RAX.i803 = bitcast %union.anon* %561 to i64*
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %563 = getelementptr inbounds %struct.GPR, %struct.GPR* %562, i32 0, i32 15
  %564 = getelementptr inbounds %struct.Reg, %struct.Reg* %563, i32 0, i32 0
  %RBP.i804 = bitcast %union.anon* %564 to i64*
  %565 = load i64, i64* %RBP.i804
  %566 = sub i64 %565, 16
  %567 = load i64, i64* %PC.i802
  %568 = add i64 %567, 4
  store i64 %568, i64* %PC.i802
  %569 = inttoptr i64 %566 to i64*
  %570 = load i64, i64* %569
  store i64 %570, i64* %RAX.i803, align 8
  store %struct.Memory* %loadMem_4469e7, %struct.Memory** %MEMORY
  %loadMem_4469eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 33
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 1
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %RAX.i801 = bitcast %union.anon* %576 to i64*
  %577 = load i64, i64* %RAX.i801
  %578 = load i64, i64* %PC.i800
  %579 = add i64 %578, 4
  store i64 %579, i64* %PC.i800
  %580 = add i64 8, %577
  store i64 %580, i64* %RAX.i801, align 8
  %581 = icmp ult i64 %580, %577
  %582 = icmp ult i64 %580, 8
  %583 = or i1 %581, %582
  %584 = zext i1 %583 to i8
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %584, i8* %585, align 1
  %586 = trunc i64 %580 to i32
  %587 = and i32 %586, 255
  %588 = call i32 @llvm.ctpop.i32(i32 %587)
  %589 = trunc i32 %588 to i8
  %590 = and i8 %589, 1
  %591 = xor i8 %590, 1
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %591, i8* %592, align 1
  %593 = xor i64 8, %577
  %594 = xor i64 %593, %580
  %595 = lshr i64 %594, 4
  %596 = trunc i64 %595 to i8
  %597 = and i8 %596, 1
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %597, i8* %598, align 1
  %599 = icmp eq i64 %580, 0
  %600 = zext i1 %599 to i8
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %600, i8* %601, align 1
  %602 = lshr i64 %580, 63
  %603 = trunc i64 %602 to i8
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %603, i8* %604, align 1
  %605 = lshr i64 %577, 63
  %606 = xor i64 %602, %605
  %607 = add i64 %606, %602
  %608 = icmp eq i64 %607, 2
  %609 = zext i1 %608 to i8
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %609, i8* %610, align 1
  store %struct.Memory* %loadMem_4469eb, %struct.Memory** %MEMORY
  %loadMem_4469ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 33
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %613 to i64*
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 1
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %RAX.i798 = bitcast %union.anon* %616 to i64*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 9
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %RSI.i799 = bitcast %union.anon* %619 to i64*
  %620 = load i64, i64* %RAX.i798
  %621 = load i64, i64* %PC.i797
  %622 = add i64 %621, 3
  store i64 %622, i64* %PC.i797
  store i64 %620, i64* %RSI.i799, align 8
  store %struct.Memory* %loadMem_4469ef, %struct.Memory** %MEMORY
  %loadMem1_4469f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %624 = getelementptr inbounds %struct.GPR, %struct.GPR* %623, i32 0, i32 33
  %625 = getelementptr inbounds %struct.Reg, %struct.Reg* %624, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %625 to i64*
  %626 = load i64, i64* %PC.i796
  %627 = add i64 %626, 1438
  %628 = load i64, i64* %PC.i796
  %629 = add i64 %628, 5
  %630 = load i64, i64* %PC.i796
  %631 = add i64 %630, 5
  store i64 %631, i64* %PC.i796
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %633 = load i64, i64* %632, align 8
  %634 = add i64 %633, -8
  %635 = inttoptr i64 %634 to i64*
  store i64 %629, i64* %635
  store i64 %634, i64* %632, align 8
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %627, i64* %636, align 8
  store %struct.Memory* %loadMem1_4469f2, %struct.Memory** %MEMORY
  %loadMem2_4469f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4469f2 = load i64, i64* %3
  %call2_4469f2 = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64 %loadPC_4469f2, %struct.Memory* %loadMem2_4469f2)
  store %struct.Memory* %call2_4469f2, %struct.Memory** %MEMORY
  %loadMem_4469f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 33
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %639 to i64*
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 1
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %EAX.i795 = bitcast %union.anon* %642 to i32*
  %643 = load i32, i32* %EAX.i795
  %644 = zext i32 %643 to i64
  %645 = load i64, i64* %PC.i794
  %646 = add i64 %645, 3
  store i64 %646, i64* %PC.i794
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %647, align 1
  %648 = and i32 %643, 255
  %649 = call i32 @llvm.ctpop.i32(i32 %648)
  %650 = trunc i32 %649 to i8
  %651 = and i8 %650, 1
  %652 = xor i8 %651, 1
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %652, i8* %653, align 1
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %654, align 1
  %655 = icmp eq i32 %643, 0
  %656 = zext i1 %655 to i8
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %656, i8* %657, align 1
  %658 = lshr i32 %643, 31
  %659 = trunc i32 %658 to i8
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %659, i8* %660, align 1
  %661 = lshr i32 %643, 31
  %662 = xor i32 %658, %661
  %663 = add i32 %662, %661
  %664 = icmp eq i32 %663, 2
  %665 = zext i1 %664 to i8
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %665, i8* %666, align 1
  store %struct.Memory* %loadMem_4469f7, %struct.Memory** %MEMORY
  %loadMem_4469fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 33
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %669 to i64*
  %670 = load i64, i64* %PC.i793
  %671 = add i64 %670, 11
  %672 = load i64, i64* %PC.i793
  %673 = add i64 %672, 6
  %674 = load i64, i64* %PC.i793
  %675 = add i64 %674, 6
  store i64 %675, i64* %PC.i793
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %677 = load i8, i8* %676, align 1
  %678 = icmp eq i8 %677, 0
  %679 = zext i1 %678 to i8
  store i8 %679, i8* %BRANCH_TAKEN, align 1
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %681 = select i1 %678, i64 %671, i64 %673
  store i64 %681, i64* %680, align 8
  store %struct.Memory* %loadMem_4469fa, %struct.Memory** %MEMORY
  %loadBr_4469fa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4469fa = icmp eq i8 %loadBr_4469fa, 1
  br i1 %cmpBr_4469fa, label %block_.L_446a05, label %block_446a00

block_446a00:                                     ; preds = %block_.L_4469e0
  %loadMem_446a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 33
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %684 to i64*
  %685 = load i64, i64* %PC.i792
  %686 = add i64 %685, 1388
  %687 = load i64, i64* %PC.i792
  %688 = add i64 %687, 5
  store i64 %688, i64* %PC.i792
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %686, i64* %689, align 8
  store %struct.Memory* %loadMem_446a00, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446a05:                                  ; preds = %block_.L_4469e0
  %loadMem_446a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 33
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %692 to i64*
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 1
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %RAX.i790 = bitcast %union.anon* %695 to i64*
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 15
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %RBP.i791 = bitcast %union.anon* %698 to i64*
  %699 = load i64, i64* %RBP.i791
  %700 = sub i64 %699, 16
  %701 = load i64, i64* %PC.i789
  %702 = add i64 %701, 4
  store i64 %702, i64* %PC.i789
  %703 = inttoptr i64 %700 to i64*
  %704 = load i64, i64* %703
  store i64 %704, i64* %RAX.i790, align 8
  store %struct.Memory* %loadMem_446a05, %struct.Memory** %MEMORY
  %loadMem_446a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %706 = getelementptr inbounds %struct.GPR, %struct.GPR* %705, i32 0, i32 33
  %707 = getelementptr inbounds %struct.Reg, %struct.Reg* %706, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %707 to i64*
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %709 = getelementptr inbounds %struct.GPR, %struct.GPR* %708, i32 0, i32 1
  %710 = getelementptr inbounds %struct.Reg, %struct.Reg* %709, i32 0, i32 0
  %RAX.i787 = bitcast %union.anon* %710 to i64*
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 5
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %RCX.i788 = bitcast %union.anon* %713 to i64*
  %714 = load i64, i64* %RAX.i787
  %715 = add i64 %714, 8
  %716 = load i64, i64* %PC.i786
  %717 = add i64 %716, 3
  store i64 %717, i64* %PC.i786
  %718 = inttoptr i64 %715 to i32*
  %719 = load i32, i32* %718
  %720 = zext i32 %719 to i64
  store i64 %720, i64* %RCX.i788, align 8
  store %struct.Memory* %loadMem_446a09, %struct.Memory** %MEMORY
  %loadMem_446a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %722 = getelementptr inbounds %struct.GPR, %struct.GPR* %721, i32 0, i32 33
  %723 = getelementptr inbounds %struct.Reg, %struct.Reg* %722, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %723 to i64*
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 5
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %RCX.i785 = bitcast %union.anon* %726 to i64*
  %727 = load i64, i64* %RCX.i785
  %728 = load i64, i64* %PC.i784
  %729 = add i64 %728, 3
  store i64 %729, i64* %PC.i784
  %730 = and i64 2, %727
  %731 = trunc i64 %730 to i32
  store i64 %730, i64* %RCX.i785, align 8
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %732, align 1
  %733 = and i32 %731, 255
  %734 = call i32 @llvm.ctpop.i32(i32 %733)
  %735 = trunc i32 %734 to i8
  %736 = and i8 %735, 1
  %737 = xor i8 %736, 1
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %737, i8* %738, align 1
  %739 = icmp eq i32 %731, 0
  %740 = zext i1 %739 to i8
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %740, i8* %741, align 1
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %742, align 1
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %743, align 1
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %744, align 1
  store %struct.Memory* %loadMem_446a0c, %struct.Memory** %MEMORY
  %loadMem_446a0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 33
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %747 to i64*
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %749 = getelementptr inbounds %struct.GPR, %struct.GPR* %748, i32 0, i32 5
  %750 = getelementptr inbounds %struct.Reg, %struct.Reg* %749, i32 0, i32 0
  %ECX.i783 = bitcast %union.anon* %750 to i32*
  %751 = load i32, i32* %ECX.i783
  %752 = zext i32 %751 to i64
  %753 = load i64, i64* %PC.i782
  %754 = add i64 %753, 3
  store i64 %754, i64* %PC.i782
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %755, align 1
  %756 = and i32 %751, 255
  %757 = call i32 @llvm.ctpop.i32(i32 %756)
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  %760 = xor i8 %759, 1
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %760, i8* %761, align 1
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %762, align 1
  %763 = icmp eq i32 %751, 0
  %764 = zext i1 %763 to i8
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %764, i8* %765, align 1
  %766 = lshr i32 %751, 31
  %767 = trunc i32 %766 to i8
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %767, i8* %768, align 1
  %769 = lshr i32 %751, 31
  %770 = xor i32 %766, %769
  %771 = add i32 %770, %769
  %772 = icmp eq i32 %771, 2
  %773 = zext i1 %772 to i8
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %773, i8* %774, align 1
  store %struct.Memory* %loadMem_446a0f, %struct.Memory** %MEMORY
  %loadMem_446a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 33
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %777 to i64*
  %778 = load i64, i64* %PC.i781
  %779 = add i64 %778, 25
  %780 = load i64, i64* %PC.i781
  %781 = add i64 %780, 6
  %782 = load i64, i64* %PC.i781
  %783 = add i64 %782, 6
  store i64 %783, i64* %PC.i781
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %785 = load i8, i8* %784, align 1
  %786 = icmp eq i8 %785, 0
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %BRANCH_TAKEN, align 1
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %789 = select i1 %786, i64 %779, i64 %781
  store i64 %789, i64* %788, align 8
  store %struct.Memory* %loadMem_446a12, %struct.Memory** %MEMORY
  %loadBr_446a12 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446a12 = icmp eq i8 %loadBr_446a12, 1
  br i1 %cmpBr_446a12, label %block_.L_446a2b, label %block_446a18

block_446a18:                                     ; preds = %block_.L_446a05
  %loadMem_446a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 33
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %792 to i64*
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 1
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %RAX.i779 = bitcast %union.anon* %795 to i64*
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 15
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %RBP.i780 = bitcast %union.anon* %798 to i64*
  %799 = load i64, i64* %RBP.i780
  %800 = sub i64 %799, 16
  %801 = load i64, i64* %PC.i778
  %802 = add i64 %801, 4
  store i64 %802, i64* %PC.i778
  %803 = inttoptr i64 %800 to i64*
  %804 = load i64, i64* %803
  store i64 %804, i64* %RAX.i779, align 8
  store %struct.Memory* %loadMem_446a18, %struct.Memory** %MEMORY
  %loadMem_446a1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 33
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %807 to i64*
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 1
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %RAX.i776 = bitcast %union.anon* %810 to i64*
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 5
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %RCX.i777 = bitcast %union.anon* %813 to i64*
  %814 = load i64, i64* %RAX.i776
  %815 = add i64 %814, 8
  %816 = load i64, i64* %PC.i775
  %817 = add i64 %816, 3
  store i64 %817, i64* %PC.i775
  %818 = inttoptr i64 %815 to i32*
  %819 = load i32, i32* %818
  %820 = zext i32 %819 to i64
  store i64 %820, i64* %RCX.i777, align 8
  store %struct.Memory* %loadMem_446a1c, %struct.Memory** %MEMORY
  %loadMem_446a1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %822 = getelementptr inbounds %struct.GPR, %struct.GPR* %821, i32 0, i32 33
  %823 = getelementptr inbounds %struct.Reg, %struct.Reg* %822, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %823 to i64*
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 5
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %RCX.i774 = bitcast %union.anon* %826 to i64*
  %827 = load i64, i64* %RCX.i774
  %828 = load i64, i64* %PC.i773
  %829 = add i64 %828, 3
  store i64 %829, i64* %PC.i773
  %830 = and i64 1, %827
  %831 = trunc i64 %830 to i32
  store i64 %830, i64* %RCX.i774, align 8
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %832, align 1
  %833 = and i32 %831, 255
  %834 = call i32 @llvm.ctpop.i32(i32 %833)
  %835 = trunc i32 %834 to i8
  %836 = and i8 %835, 1
  %837 = xor i8 %836, 1
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %837, i8* %838, align 1
  %839 = icmp eq i32 %831, 0
  %840 = zext i1 %839 to i8
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %840, i8* %841, align 1
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %842, align 1
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %843, align 1
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %844, align 1
  store %struct.Memory* %loadMem_446a1f, %struct.Memory** %MEMORY
  %loadMem_446a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 33
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %847 to i64*
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 5
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %ECX.i772 = bitcast %union.anon* %850 to i32*
  %851 = load i32, i32* %ECX.i772
  %852 = zext i32 %851 to i64
  %853 = load i64, i64* %PC.i771
  %854 = add i64 %853, 3
  store i64 %854, i64* %PC.i771
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %855, align 1
  %856 = and i32 %851, 255
  %857 = call i32 @llvm.ctpop.i32(i32 %856)
  %858 = trunc i32 %857 to i8
  %859 = and i8 %858, 1
  %860 = xor i8 %859, 1
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %860, i8* %861, align 1
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %862, align 1
  %863 = icmp eq i32 %851, 0
  %864 = zext i1 %863 to i8
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %864, i8* %865, align 1
  %866 = lshr i32 %851, 31
  %867 = trunc i32 %866 to i8
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %867, i8* %868, align 1
  %869 = lshr i32 %851, 31
  %870 = xor i32 %866, %869
  %871 = add i32 %870, %869
  %872 = icmp eq i32 %871, 2
  %873 = zext i1 %872 to i8
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %873, i8* %874, align 1
  store %struct.Memory* %loadMem_446a22, %struct.Memory** %MEMORY
  %loadMem_446a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 33
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %877 to i64*
  %878 = load i64, i64* %PC.i770
  %879 = add i64 %878, 18
  %880 = load i64, i64* %PC.i770
  %881 = add i64 %880, 6
  %882 = load i64, i64* %PC.i770
  %883 = add i64 %882, 6
  store i64 %883, i64* %PC.i770
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %885 = load i8, i8* %884, align 1
  store i8 %885, i8* %BRANCH_TAKEN, align 1
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %887 = icmp ne i8 %885, 0
  %888 = select i1 %887, i64 %879, i64 %881
  store i64 %888, i64* %886, align 8
  store %struct.Memory* %loadMem_446a25, %struct.Memory** %MEMORY
  %loadBr_446a25 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446a25 = icmp eq i8 %loadBr_446a25, 1
  br i1 %cmpBr_446a25, label %block_.L_446a37, label %block_.L_446a2b

block_.L_446a2b:                                  ; preds = %block_446a18, %block_.L_446a05
  %loadMem_446a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 33
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %891 to i64*
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 15
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %RBP.i769 = bitcast %union.anon* %894 to i64*
  %895 = load i64, i64* %RBP.i769
  %896 = sub i64 %895, 28
  %897 = load i64, i64* %PC.i768
  %898 = add i64 %897, 7
  store i64 %898, i64* %PC.i768
  %899 = inttoptr i64 %896 to i32*
  store i32 7, i32* %899
  store %struct.Memory* %loadMem_446a2b, %struct.Memory** %MEMORY
  %loadMem_446a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 33
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %902 to i64*
  %903 = load i64, i64* %PC.i767
  %904 = add i64 %903, 1338
  %905 = load i64, i64* %PC.i767
  %906 = add i64 %905, 5
  store i64 %906, i64* %PC.i767
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %904, i64* %907, align 8
  store %struct.Memory* %loadMem_446a32, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446a37:                                  ; preds = %block_446a18
  %loadMem_446a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %909 = getelementptr inbounds %struct.GPR, %struct.GPR* %908, i32 0, i32 33
  %910 = getelementptr inbounds %struct.Reg, %struct.Reg* %909, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %910 to i64*
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %912 = getelementptr inbounds %struct.GPR, %struct.GPR* %911, i32 0, i32 1
  %913 = getelementptr inbounds %struct.Reg, %struct.Reg* %912, i32 0, i32 0
  %EAX.i765 = bitcast %union.anon* %913 to i32*
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %915 = getelementptr inbounds %struct.GPR, %struct.GPR* %914, i32 0, i32 1
  %916 = getelementptr inbounds %struct.Reg, %struct.Reg* %915, i32 0, i32 0
  %RAX.i766 = bitcast %union.anon* %916 to i64*
  %917 = load i64, i64* %RAX.i766
  %918 = load i32, i32* %EAX.i765
  %919 = zext i32 %918 to i64
  %920 = load i64, i64* %PC.i764
  %921 = add i64 %920, 2
  store i64 %921, i64* %PC.i764
  %922 = xor i64 %919, %917
  %923 = trunc i64 %922 to i32
  %924 = and i64 %922, 4294967295
  store i64 %924, i64* %RAX.i766, align 8
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %925, align 1
  %926 = and i32 %923, 255
  %927 = call i32 @llvm.ctpop.i32(i32 %926)
  %928 = trunc i32 %927 to i8
  %929 = and i8 %928, 1
  %930 = xor i8 %929, 1
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %930, i8* %931, align 1
  %932 = icmp eq i32 %923, 0
  %933 = zext i1 %932 to i8
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %933, i8* %934, align 1
  %935 = lshr i32 %923, 31
  %936 = trunc i32 %935 to i8
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %936, i8* %937, align 1
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %938, align 1
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %939, align 1
  store %struct.Memory* %loadMem_446a37, %struct.Memory** %MEMORY
  %loadMem_446a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 33
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %942 to i64*
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 5
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %RCX.i763 = bitcast %union.anon* %945 to i64*
  %946 = load i64, i64* %PC.i762
  %947 = add i64 %946, 5
  store i64 %947, i64* %PC.i762
  store i64 1, i64* %RCX.i763, align 8
  store %struct.Memory* %loadMem_446a39, %struct.Memory** %MEMORY
  %loadMem_446a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %949 = getelementptr inbounds %struct.GPR, %struct.GPR* %948, i32 0, i32 33
  %950 = getelementptr inbounds %struct.Reg, %struct.Reg* %949, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %950 to i64*
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 7
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %RDX.i760 = bitcast %union.anon* %953 to i64*
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 15
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %RBP.i761 = bitcast %union.anon* %956 to i64*
  %957 = load i64, i64* %RBP.i761
  %958 = sub i64 %957, 16
  %959 = load i64, i64* %PC.i759
  %960 = add i64 %959, 4
  store i64 %960, i64* %PC.i759
  %961 = inttoptr i64 %958 to i64*
  %962 = load i64, i64* %961
  store i64 %962, i64* %RDX.i760, align 8
  store %struct.Memory* %loadMem_446a3e, %struct.Memory** %MEMORY
  %loadMem_446a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 33
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 7
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %RDX.i757 = bitcast %union.anon* %968 to i64*
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 9
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %RSI.i758 = bitcast %union.anon* %971 to i64*
  %972 = load i64, i64* %RDX.i757
  %973 = add i64 %972, 8
  %974 = load i64, i64* %PC.i756
  %975 = add i64 %974, 3
  store i64 %975, i64* %PC.i756
  %976 = inttoptr i64 %973 to i32*
  %977 = load i32, i32* %976
  %978 = zext i32 %977 to i64
  store i64 %978, i64* %RSI.i758, align 8
  store %struct.Memory* %loadMem_446a42, %struct.Memory** %MEMORY
  %loadMem_446a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 33
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %981 to i64*
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %983 = getelementptr inbounds %struct.GPR, %struct.GPR* %982, i32 0, i32 9
  %984 = getelementptr inbounds %struct.Reg, %struct.Reg* %983, i32 0, i32 0
  %RSI.i755 = bitcast %union.anon* %984 to i64*
  %985 = load i64, i64* %RSI.i755
  %986 = load i64, i64* %PC.i754
  %987 = add i64 %986, 3
  store i64 %987, i64* %PC.i754
  %988 = and i64 2, %985
  %989 = trunc i64 %988 to i32
  store i64 %988, i64* %RSI.i755, align 8
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %990, align 1
  %991 = and i32 %989, 255
  %992 = call i32 @llvm.ctpop.i32(i32 %991)
  %993 = trunc i32 %992 to i8
  %994 = and i8 %993, 1
  %995 = xor i8 %994, 1
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %995, i8* %996, align 1
  %997 = icmp eq i32 %989, 0
  %998 = zext i1 %997 to i8
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %998, i8* %999, align 1
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1000, align 1
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1001, align 1
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1002, align 1
  store %struct.Memory* %loadMem_446a45, %struct.Memory** %MEMORY
  %loadMem_446a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 33
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %1005 to i64*
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 9
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %ESI.i753 = bitcast %union.anon* %1008 to i32*
  %1009 = load i32, i32* %ESI.i753
  %1010 = zext i32 %1009 to i64
  %1011 = load i64, i64* %PC.i752
  %1012 = add i64 %1011, 3
  store i64 %1012, i64* %PC.i752
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1013, align 1
  %1014 = and i32 %1009, 255
  %1015 = call i32 @llvm.ctpop.i32(i32 %1014)
  %1016 = trunc i32 %1015 to i8
  %1017 = and i8 %1016, 1
  %1018 = xor i8 %1017, 1
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1018, i8* %1019, align 1
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1020, align 1
  %1021 = icmp eq i32 %1009, 0
  %1022 = zext i1 %1021 to i8
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1022, i8* %1023, align 1
  %1024 = lshr i32 %1009, 31
  %1025 = trunc i32 %1024 to i8
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1025, i8* %1026, align 1
  %1027 = lshr i32 %1009, 31
  %1028 = xor i32 %1024, %1027
  %1029 = add i32 %1028, %1027
  %1030 = icmp eq i32 %1029, 2
  %1031 = zext i1 %1030 to i8
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1031, i8* %1032, align 1
  store %struct.Memory* %loadMem_446a48, %struct.Memory** %MEMORY
  %loadMem_446a4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 33
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %1035 to i64*
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 1
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %EAX.i750 = bitcast %union.anon* %1038 to i32*
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 9
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %RSI.i751 = bitcast %union.anon* %1041 to i64*
  %1042 = load i32, i32* %EAX.i750
  %1043 = zext i32 %1042 to i64
  %1044 = load i64, i64* %PC.i749
  %1045 = add i64 %1044, 2
  store i64 %1045, i64* %PC.i749
  %1046 = and i64 %1043, 4294967295
  store i64 %1046, i64* %RSI.i751, align 8
  store %struct.Memory* %loadMem_446a4b, %struct.Memory** %MEMORY
  %loadMem_446a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1048 = getelementptr inbounds %struct.GPR, %struct.GPR* %1047, i32 0, i32 33
  %1049 = getelementptr inbounds %struct.Reg, %struct.Reg* %1048, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %1049 to i64*
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1051 = getelementptr inbounds %struct.GPR, %struct.GPR* %1050, i32 0, i32 5
  %1052 = getelementptr inbounds %struct.Reg, %struct.Reg* %1051, i32 0, i32 0
  %ECX.i747 = bitcast %union.anon* %1052 to i32*
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 9
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %RSI.i748 = bitcast %union.anon* %1055 to i64*
  %1056 = load i32, i32* %ECX.i747
  %1057 = zext i32 %1056 to i64
  %1058 = load i64, i64* %PC.i746
  %1059 = add i64 %1058, 3
  store i64 %1059, i64* %PC.i746
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1061 = load i8, i8* %1060, align 1
  %1062 = icmp eq i8 %1061, 0
  %1063 = load i64, i64* %RSI.i748, align 8
  %1064 = select i1 %1062, i64 %1057, i64 %1063
  %1065 = and i64 %1064, 4294967295
  store i64 %1065, i64* %RSI.i748, align 8
  store %struct.Memory* %loadMem_446a4d, %struct.Memory** %MEMORY
  %loadMem_446a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1067 = getelementptr inbounds %struct.GPR, %struct.GPR* %1066, i32 0, i32 33
  %1068 = getelementptr inbounds %struct.Reg, %struct.Reg* %1067, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %1068 to i64*
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1070 = getelementptr inbounds %struct.GPR, %struct.GPR* %1069, i32 0, i32 9
  %1071 = getelementptr inbounds %struct.Reg, %struct.Reg* %1070, i32 0, i32 0
  %1072 = bitcast %union.anon* %1071 to %struct.anon.2*
  %SIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1072, i32 0, i32 0
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 11
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %1076 = bitcast %union.anon* %1075 to %struct.anon.2*
  %DIL.i745 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1076, i32 0, i32 0
  %1077 = load i8, i8* %SIL.i
  %1078 = zext i8 %1077 to i64
  %1079 = load i64, i64* %PC.i744
  %1080 = add i64 %1079, 3
  store i64 %1080, i64* %PC.i744
  store i8 %1077, i8* %DIL.i745, align 1
  store %struct.Memory* %loadMem_446a50, %struct.Memory** %MEMORY
  %loadMem_446a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 33
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %1083 to i64*
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 7
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %RDX.i742 = bitcast %union.anon* %1086 to i64*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 15
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %RBP.i743 = bitcast %union.anon* %1089 to i64*
  %1090 = load i64, i64* %RBP.i743
  %1091 = sub i64 %1090, 16
  %1092 = load i64, i64* %PC.i741
  %1093 = add i64 %1092, 4
  store i64 %1093, i64* %PC.i741
  %1094 = inttoptr i64 %1091 to i64*
  %1095 = load i64, i64* %1094
  store i64 %1095, i64* %RDX.i742, align 8
  store %struct.Memory* %loadMem_446a53, %struct.Memory** %MEMORY
  %loadMem_446a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 33
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %1098 to i64*
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 11
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %1102 = bitcast %union.anon* %1101 to %struct.anon.2*
  %DIL.i739 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1102, i32 0, i32 0
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 7
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %RDX.i740 = bitcast %union.anon* %1105 to i64*
  %1106 = load i64, i64* %RDX.i740
  %1107 = add i64 %1106, 96
  %1108 = load i8, i8* %DIL.i739
  %1109 = zext i8 %1108 to i64
  %1110 = load i64, i64* %PC.i738
  %1111 = add i64 %1110, 4
  store i64 %1111, i64* %PC.i738
  %1112 = inttoptr i64 %1107 to i8*
  store i8 %1108, i8* %1112
  store %struct.Memory* %loadMem_446a57, %struct.Memory** %MEMORY
  %loadMem_446a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 33
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %1115 to i64*
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1117 = getelementptr inbounds %struct.GPR, %struct.GPR* %1116, i32 0, i32 7
  %1118 = getelementptr inbounds %struct.Reg, %struct.Reg* %1117, i32 0, i32 0
  %RDX.i736 = bitcast %union.anon* %1118 to i64*
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 15
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %RBP.i737 = bitcast %union.anon* %1121 to i64*
  %1122 = load i64, i64* %RBP.i737
  %1123 = sub i64 %1122, 16
  %1124 = load i64, i64* %PC.i735
  %1125 = add i64 %1124, 4
  store i64 %1125, i64* %PC.i735
  %1126 = inttoptr i64 %1123 to i64*
  %1127 = load i64, i64* %1126
  store i64 %1127, i64* %RDX.i736, align 8
  store %struct.Memory* %loadMem_446a5b, %struct.Memory** %MEMORY
  %loadMem_446a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 33
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %1130 to i64*
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 7
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %RDX.i733 = bitcast %union.anon* %1133 to i64*
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 9
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %RSI.i734 = bitcast %union.anon* %1136 to i64*
  %1137 = load i64, i64* %RDX.i733
  %1138 = add i64 %1137, 8
  %1139 = load i64, i64* %PC.i732
  %1140 = add i64 %1139, 3
  store i64 %1140, i64* %PC.i732
  %1141 = inttoptr i64 %1138 to i32*
  %1142 = load i32, i32* %1141
  %1143 = zext i32 %1142 to i64
  store i64 %1143, i64* %RSI.i734, align 8
  store %struct.Memory* %loadMem_446a5f, %struct.Memory** %MEMORY
  %loadMem_446a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 33
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %1146 to i64*
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 9
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %RSI.i731 = bitcast %union.anon* %1149 to i64*
  %1150 = load i64, i64* %RSI.i731
  %1151 = load i64, i64* %PC.i730
  %1152 = add i64 %1151, 3
  store i64 %1152, i64* %PC.i730
  %1153 = and i64 1, %1150
  %1154 = trunc i64 %1153 to i32
  store i64 %1153, i64* %RSI.i731, align 8
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1155, align 1
  %1156 = and i32 %1154, 255
  %1157 = call i32 @llvm.ctpop.i32(i32 %1156)
  %1158 = trunc i32 %1157 to i8
  %1159 = and i8 %1158, 1
  %1160 = xor i8 %1159, 1
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1160, i8* %1161, align 1
  %1162 = icmp eq i32 %1154, 0
  %1163 = zext i1 %1162 to i8
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1163, i8* %1164, align 1
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1165, align 1
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1166, align 1
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1167, align 1
  store %struct.Memory* %loadMem_446a62, %struct.Memory** %MEMORY
  %loadMem_446a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1169 = getelementptr inbounds %struct.GPR, %struct.GPR* %1168, i32 0, i32 33
  %1170 = getelementptr inbounds %struct.Reg, %struct.Reg* %1169, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %1170 to i64*
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1172 = getelementptr inbounds %struct.GPR, %struct.GPR* %1171, i32 0, i32 9
  %1173 = getelementptr inbounds %struct.Reg, %struct.Reg* %1172, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %1173 to i32*
  %1174 = load i32, i32* %ESI.i
  %1175 = zext i32 %1174 to i64
  %1176 = load i64, i64* %PC.i729
  %1177 = add i64 %1176, 3
  store i64 %1177, i64* %PC.i729
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1178, align 1
  %1179 = and i32 %1174, 255
  %1180 = call i32 @llvm.ctpop.i32(i32 %1179)
  %1181 = trunc i32 %1180 to i8
  %1182 = and i8 %1181, 1
  %1183 = xor i8 %1182, 1
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1183, i8* %1184, align 1
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1185, align 1
  %1186 = icmp eq i32 %1174, 0
  %1187 = zext i1 %1186 to i8
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1187, i8* %1188, align 1
  %1189 = lshr i32 %1174, 31
  %1190 = trunc i32 %1189 to i8
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1190, i8* %1191, align 1
  %1192 = lshr i32 %1174, 31
  %1193 = xor i32 %1189, %1192
  %1194 = add i32 %1193, %1192
  %1195 = icmp eq i32 %1194, 2
  %1196 = zext i1 %1195 to i8
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1196, i8* %1197, align 1
  store %struct.Memory* %loadMem_446a65, %struct.Memory** %MEMORY
  %loadMem_446a68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1199 = getelementptr inbounds %struct.GPR, %struct.GPR* %1198, i32 0, i32 33
  %1200 = getelementptr inbounds %struct.Reg, %struct.Reg* %1199, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %1200 to i64*
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 5
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %ECX.i727 = bitcast %union.anon* %1203 to i32*
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 1
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %RAX.i728 = bitcast %union.anon* %1206 to i64*
  %1207 = load i32, i32* %ECX.i727
  %1208 = zext i32 %1207 to i64
  %1209 = load i64, i64* %PC.i726
  %1210 = add i64 %1209, 3
  store i64 %1210, i64* %PC.i726
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1212 = load i8, i8* %1211, align 1
  %1213 = icmp eq i8 %1212, 0
  %1214 = load i64, i64* %RAX.i728, align 8
  %1215 = select i1 %1213, i64 %1208, i64 %1214
  %1216 = and i64 %1215, 4294967295
  store i64 %1216, i64* %RAX.i728, align 8
  store %struct.Memory* %loadMem_446a68, %struct.Memory** %MEMORY
  %loadMem_446a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 33
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %1219 to i64*
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 1
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %1223 = bitcast %union.anon* %1222 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1223, i32 0, i32 0
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 11
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %1227 = bitcast %union.anon* %1226 to %struct.anon.2*
  %DIL.i725 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1227, i32 0, i32 0
  %1228 = load i8, i8* %AL.i
  %1229 = zext i8 %1228 to i64
  %1230 = load i64, i64* %PC.i724
  %1231 = add i64 %1230, 3
  store i64 %1231, i64* %PC.i724
  store i8 %1228, i8* %DIL.i725, align 1
  store %struct.Memory* %loadMem_446a6b, %struct.Memory** %MEMORY
  %loadMem_446a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1233 = getelementptr inbounds %struct.GPR, %struct.GPR* %1232, i32 0, i32 33
  %1234 = getelementptr inbounds %struct.Reg, %struct.Reg* %1233, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %1234 to i64*
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 7
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %RDX.i722 = bitcast %union.anon* %1237 to i64*
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 15
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %RBP.i723 = bitcast %union.anon* %1240 to i64*
  %1241 = load i64, i64* %RBP.i723
  %1242 = sub i64 %1241, 16
  %1243 = load i64, i64* %PC.i721
  %1244 = add i64 %1243, 4
  store i64 %1244, i64* %PC.i721
  %1245 = inttoptr i64 %1242 to i64*
  %1246 = load i64, i64* %1245
  store i64 %1246, i64* %RDX.i722, align 8
  store %struct.Memory* %loadMem_446a6e, %struct.Memory** %MEMORY
  %loadMem_446a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 33
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %1249 to i64*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 11
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %1253 = bitcast %union.anon* %1252 to %struct.anon.2*
  %DIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1253, i32 0, i32 0
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 7
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %RDX.i720 = bitcast %union.anon* %1256 to i64*
  %1257 = load i64, i64* %RDX.i720
  %1258 = add i64 %1257, 97
  %1259 = load i8, i8* %DIL.i
  %1260 = zext i8 %1259 to i64
  %1261 = load i64, i64* %PC.i719
  %1262 = add i64 %1261, 4
  store i64 %1262, i64* %PC.i719
  %1263 = inttoptr i64 %1258 to i8*
  store i8 %1259, i8* %1263
  store %struct.Memory* %loadMem_446a72, %struct.Memory** %MEMORY
  %loadMem_446a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 33
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %1266 to i64*
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 7
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %RDX.i717 = bitcast %union.anon* %1269 to i64*
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 15
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %RBP.i718 = bitcast %union.anon* %1272 to i64*
  %1273 = load i64, i64* %RBP.i718
  %1274 = sub i64 %1273, 16
  %1275 = load i64, i64* %PC.i716
  %1276 = add i64 %1275, 4
  store i64 %1276, i64* %PC.i716
  %1277 = inttoptr i64 %1274 to i64*
  %1278 = load i64, i64* %1277
  store i64 %1278, i64* %RDX.i717, align 8
  store %struct.Memory* %loadMem_446a76, %struct.Memory** %MEMORY
  %loadMem_446a7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1280 = getelementptr inbounds %struct.GPR, %struct.GPR* %1279, i32 0, i32 33
  %1281 = getelementptr inbounds %struct.Reg, %struct.Reg* %1280, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %1281 to i64*
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1283 = getelementptr inbounds %struct.GPR, %struct.GPR* %1282, i32 0, i32 7
  %1284 = getelementptr inbounds %struct.Reg, %struct.Reg* %1283, i32 0, i32 0
  %RDX.i714 = bitcast %union.anon* %1284 to i64*
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1286 = getelementptr inbounds %struct.GPR, %struct.GPR* %1285, i32 0, i32 11
  %1287 = getelementptr inbounds %struct.Reg, %struct.Reg* %1286, i32 0, i32 0
  %RDI.i715 = bitcast %union.anon* %1287 to i64*
  %1288 = load i64, i64* %RDX.i714
  %1289 = load i64, i64* %PC.i713
  %1290 = add i64 %1289, 3
  store i64 %1290, i64* %PC.i713
  %1291 = inttoptr i64 %1288 to i64*
  %1292 = load i64, i64* %1291
  store i64 %1292, i64* %RDI.i715, align 8
  store %struct.Memory* %loadMem_446a7a, %struct.Memory** %MEMORY
  %loadMem_446a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 33
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %1295 to i64*
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 7
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %RDX.i711 = bitcast %union.anon* %1298 to i64*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 15
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %RBP.i712 = bitcast %union.anon* %1301 to i64*
  %1302 = load i64, i64* %RBP.i712
  %1303 = sub i64 %1302, 16
  %1304 = load i64, i64* %PC.i710
  %1305 = add i64 %1304, 4
  store i64 %1305, i64* %PC.i710
  %1306 = inttoptr i64 %1303 to i64*
  %1307 = load i64, i64* %1306
  store i64 %1307, i64* %RDX.i711, align 8
  store %struct.Memory* %loadMem_446a7d, %struct.Memory** %MEMORY
  %loadMem_446a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 33
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %1310 to i64*
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 7
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %RDX.i709 = bitcast %union.anon* %1313 to i64*
  %1314 = load i64, i64* %RDX.i709
  %1315 = load i64, i64* %PC.i708
  %1316 = add i64 %1315, 4
  store i64 %1316, i64* %PC.i708
  %1317 = add i64 12, %1314
  store i64 %1317, i64* %RDX.i709, align 8
  %1318 = icmp ult i64 %1317, %1314
  %1319 = icmp ult i64 %1317, 12
  %1320 = or i1 %1318, %1319
  %1321 = zext i1 %1320 to i8
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1321, i8* %1322, align 1
  %1323 = trunc i64 %1317 to i32
  %1324 = and i32 %1323, 255
  %1325 = call i32 @llvm.ctpop.i32(i32 %1324)
  %1326 = trunc i32 %1325 to i8
  %1327 = and i8 %1326, 1
  %1328 = xor i8 %1327, 1
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1328, i8* %1329, align 1
  %1330 = xor i64 12, %1314
  %1331 = xor i64 %1330, %1317
  %1332 = lshr i64 %1331, 4
  %1333 = trunc i64 %1332 to i8
  %1334 = and i8 %1333, 1
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1334, i8* %1335, align 1
  %1336 = icmp eq i64 %1317, 0
  %1337 = zext i1 %1336 to i8
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1337, i8* %1338, align 1
  %1339 = lshr i64 %1317, 63
  %1340 = trunc i64 %1339 to i8
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1340, i8* %1341, align 1
  %1342 = lshr i64 %1314, 63
  %1343 = xor i64 %1339, %1342
  %1344 = add i64 %1343, %1339
  %1345 = icmp eq i64 %1344, 2
  %1346 = zext i1 %1345 to i8
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1346, i8* %1347, align 1
  store %struct.Memory* %loadMem_446a81, %struct.Memory** %MEMORY
  %loadMem_446a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 33
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %1350 to i64*
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 7
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %RDX.i706 = bitcast %union.anon* %1353 to i64*
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1355 = getelementptr inbounds %struct.GPR, %struct.GPR* %1354, i32 0, i32 9
  %1356 = getelementptr inbounds %struct.Reg, %struct.Reg* %1355, i32 0, i32 0
  %RSI.i707 = bitcast %union.anon* %1356 to i64*
  %1357 = load i64, i64* %RDX.i706
  %1358 = load i64, i64* %PC.i705
  %1359 = add i64 %1358, 3
  store i64 %1359, i64* %PC.i705
  store i64 %1357, i64* %RSI.i707, align 8
  store %struct.Memory* %loadMem_446a85, %struct.Memory** %MEMORY
  %loadMem1_446a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 33
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %1362 to i64*
  %1363 = load i64, i64* %PC.i704
  %1364 = add i64 %1363, 1400
  %1365 = load i64, i64* %PC.i704
  %1366 = add i64 %1365, 5
  %1367 = load i64, i64* %PC.i704
  %1368 = add i64 %1367, 5
  store i64 %1368, i64* %PC.i704
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1370 = load i64, i64* %1369, align 8
  %1371 = add i64 %1370, -8
  %1372 = inttoptr i64 %1371 to i64*
  store i64 %1366, i64* %1372
  store i64 %1371, i64* %1369, align 8
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1364, i64* %1373, align 8
  store %struct.Memory* %loadMem1_446a88, %struct.Memory** %MEMORY
  %loadMem2_446a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446a88 = load i64, i64* %3
  %call2_446a88 = call %struct.Memory* @sub_447000.read_i16(%struct.State* %0, i64 %loadPC_446a88, %struct.Memory* %loadMem2_446a88)
  store %struct.Memory* %call2_446a88, %struct.Memory** %MEMORY
  %loadMem_446a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 33
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %1376 to i64*
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 1
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %EAX.i703 = bitcast %union.anon* %1379 to i32*
  %1380 = load i32, i32* %EAX.i703
  %1381 = zext i32 %1380 to i64
  %1382 = load i64, i64* %PC.i702
  %1383 = add i64 %1382, 3
  store i64 %1383, i64* %PC.i702
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1384, align 1
  %1385 = and i32 %1380, 255
  %1386 = call i32 @llvm.ctpop.i32(i32 %1385)
  %1387 = trunc i32 %1386 to i8
  %1388 = and i8 %1387, 1
  %1389 = xor i8 %1388, 1
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1389, i8* %1390, align 1
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1391, align 1
  %1392 = icmp eq i32 %1380, 0
  %1393 = zext i1 %1392 to i8
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1393, i8* %1394, align 1
  %1395 = lshr i32 %1380, 31
  %1396 = trunc i32 %1395 to i8
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1396, i8* %1397, align 1
  %1398 = lshr i32 %1380, 31
  %1399 = xor i32 %1395, %1398
  %1400 = add i32 %1399, %1398
  %1401 = icmp eq i32 %1400, 2
  %1402 = zext i1 %1401 to i8
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1402, i8* %1403, align 1
  store %struct.Memory* %loadMem_446a8d, %struct.Memory** %MEMORY
  %loadMem_446a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 33
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %1406 to i64*
  %1407 = load i64, i64* %PC.i701
  %1408 = add i64 %1407, 11
  %1409 = load i64, i64* %PC.i701
  %1410 = add i64 %1409, 6
  %1411 = load i64, i64* %PC.i701
  %1412 = add i64 %1411, 6
  store i64 %1412, i64* %PC.i701
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1414 = load i8, i8* %1413, align 1
  %1415 = icmp eq i8 %1414, 0
  %1416 = zext i1 %1415 to i8
  store i8 %1416, i8* %BRANCH_TAKEN, align 1
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1418 = select i1 %1415, i64 %1408, i64 %1410
  store i64 %1418, i64* %1417, align 8
  store %struct.Memory* %loadMem_446a90, %struct.Memory** %MEMORY
  %loadBr_446a90 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446a90 = icmp eq i8 %loadBr_446a90, 1
  br i1 %cmpBr_446a90, label %block_.L_446a9b, label %block_446a96

block_446a96:                                     ; preds = %block_.L_446a37
  %loadMem_446a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 33
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %1421 to i64*
  %1422 = load i64, i64* %PC.i700
  %1423 = add i64 %1422, 1238
  %1424 = load i64, i64* %PC.i700
  %1425 = add i64 %1424, 5
  store i64 %1425, i64* %PC.i700
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1423, i64* %1426, align 8
  store %struct.Memory* %loadMem_446a96, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446a9b:                                  ; preds = %block_.L_446a37
  %loadMem_446a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 33
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %1429 to i64*
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 1
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %RAX.i698 = bitcast %union.anon* %1432 to i64*
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 15
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %RBP.i699 = bitcast %union.anon* %1435 to i64*
  %1436 = load i64, i64* %RBP.i699
  %1437 = sub i64 %1436, 16
  %1438 = load i64, i64* %PC.i697
  %1439 = add i64 %1438, 4
  store i64 %1439, i64* %PC.i697
  %1440 = inttoptr i64 %1437 to i64*
  %1441 = load i64, i64* %1440
  store i64 %1441, i64* %RAX.i698, align 8
  store %struct.Memory* %loadMem_446a9b, %struct.Memory** %MEMORY
  %loadMem_446a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 33
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %1444 to i64*
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1446 = getelementptr inbounds %struct.GPR, %struct.GPR* %1445, i32 0, i32 1
  %1447 = getelementptr inbounds %struct.Reg, %struct.Reg* %1446, i32 0, i32 0
  %RAX.i695 = bitcast %union.anon* %1447 to i64*
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 11
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %RDI.i696 = bitcast %union.anon* %1450 to i64*
  %1451 = load i64, i64* %RAX.i695
  %1452 = load i64, i64* %PC.i694
  %1453 = add i64 %1452, 3
  store i64 %1453, i64* %PC.i694
  %1454 = inttoptr i64 %1451 to i64*
  %1455 = load i64, i64* %1454
  store i64 %1455, i64* %RDI.i696, align 8
  store %struct.Memory* %loadMem_446a9f, %struct.Memory** %MEMORY
  %loadMem_446aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 33
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %1458 to i64*
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 1
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %RAX.i692 = bitcast %union.anon* %1461 to i64*
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 15
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %RBP.i693 = bitcast %union.anon* %1464 to i64*
  %1465 = load i64, i64* %RBP.i693
  %1466 = sub i64 %1465, 16
  %1467 = load i64, i64* %PC.i691
  %1468 = add i64 %1467, 4
  store i64 %1468, i64* %PC.i691
  %1469 = inttoptr i64 %1466 to i64*
  %1470 = load i64, i64* %1469
  store i64 %1470, i64* %RAX.i692, align 8
  store %struct.Memory* %loadMem_446aa2, %struct.Memory** %MEMORY
  %loadMem_446aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 33
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %1473 to i64*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 1
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %RAX.i690 = bitcast %union.anon* %1476 to i64*
  %1477 = load i64, i64* %RAX.i690
  %1478 = load i64, i64* %PC.i689
  %1479 = add i64 %1478, 4
  store i64 %1479, i64* %PC.i689
  %1480 = add i64 16, %1477
  store i64 %1480, i64* %RAX.i690, align 8
  %1481 = icmp ult i64 %1480, %1477
  %1482 = icmp ult i64 %1480, 16
  %1483 = or i1 %1481, %1482
  %1484 = zext i1 %1483 to i8
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1484, i8* %1485, align 1
  %1486 = trunc i64 %1480 to i32
  %1487 = and i32 %1486, 255
  %1488 = call i32 @llvm.ctpop.i32(i32 %1487)
  %1489 = trunc i32 %1488 to i8
  %1490 = and i8 %1489, 1
  %1491 = xor i8 %1490, 1
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1491, i8* %1492, align 1
  %1493 = xor i64 16, %1477
  %1494 = xor i64 %1493, %1480
  %1495 = lshr i64 %1494, 4
  %1496 = trunc i64 %1495 to i8
  %1497 = and i8 %1496, 1
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1497, i8* %1498, align 1
  %1499 = icmp eq i64 %1480, 0
  %1500 = zext i1 %1499 to i8
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1500, i8* %1501, align 1
  %1502 = lshr i64 %1480, 63
  %1503 = trunc i64 %1502 to i8
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1503, i8* %1504, align 1
  %1505 = lshr i64 %1477, 63
  %1506 = xor i64 %1502, %1505
  %1507 = add i64 %1506, %1502
  %1508 = icmp eq i64 %1507, 2
  %1509 = zext i1 %1508 to i8
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1509, i8* %1510, align 1
  store %struct.Memory* %loadMem_446aa6, %struct.Memory** %MEMORY
  %loadMem_446aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 33
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %1513 to i64*
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 1
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %RAX.i687 = bitcast %union.anon* %1516 to i64*
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 9
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %RSI.i688 = bitcast %union.anon* %1519 to i64*
  %1520 = load i64, i64* %RAX.i687
  %1521 = load i64, i64* %PC.i686
  %1522 = add i64 %1521, 3
  store i64 %1522, i64* %PC.i686
  store i64 %1520, i64* %RSI.i688, align 8
  store %struct.Memory* %loadMem_446aaa, %struct.Memory** %MEMORY
  %loadMem1_446aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 33
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %1525 to i64*
  %1526 = load i64, i64* %PC.i685
  %1527 = add i64 %1526, 1251
  %1528 = load i64, i64* %PC.i685
  %1529 = add i64 %1528, 5
  %1530 = load i64, i64* %PC.i685
  %1531 = add i64 %1530, 5
  store i64 %1531, i64* %PC.i685
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1533 = load i64, i64* %1532, align 8
  %1534 = add i64 %1533, -8
  %1535 = inttoptr i64 %1534 to i64*
  store i64 %1529, i64* %1535
  store i64 %1534, i64* %1532, align 8
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1527, i64* %1536, align 8
  store %struct.Memory* %loadMem1_446aad, %struct.Memory** %MEMORY
  %loadMem2_446aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446aad = load i64, i64* %3
  %call2_446aad = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64 %loadPC_446aad, %struct.Memory* %loadMem2_446aad)
  store %struct.Memory* %call2_446aad, %struct.Memory** %MEMORY
  %loadMem_446ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 33
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %1539 to i64*
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 1
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %EAX.i684 = bitcast %union.anon* %1542 to i32*
  %1543 = load i32, i32* %EAX.i684
  %1544 = zext i32 %1543 to i64
  %1545 = load i64, i64* %PC.i683
  %1546 = add i64 %1545, 3
  store i64 %1546, i64* %PC.i683
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1547, align 1
  %1548 = and i32 %1543, 255
  %1549 = call i32 @llvm.ctpop.i32(i32 %1548)
  %1550 = trunc i32 %1549 to i8
  %1551 = and i8 %1550, 1
  %1552 = xor i8 %1551, 1
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1552, i8* %1553, align 1
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1554, align 1
  %1555 = icmp eq i32 %1543, 0
  %1556 = zext i1 %1555 to i8
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1556, i8* %1557, align 1
  %1558 = lshr i32 %1543, 31
  %1559 = trunc i32 %1558 to i8
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1559, i8* %1560, align 1
  %1561 = lshr i32 %1543, 31
  %1562 = xor i32 %1558, %1561
  %1563 = add i32 %1562, %1561
  %1564 = icmp eq i32 %1563, 2
  %1565 = zext i1 %1564 to i8
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1565, i8* %1566, align 1
  store %struct.Memory* %loadMem_446ab2, %struct.Memory** %MEMORY
  %loadMem_446ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 33
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %1569 to i64*
  %1570 = load i64, i64* %PC.i682
  %1571 = add i64 %1570, 11
  %1572 = load i64, i64* %PC.i682
  %1573 = add i64 %1572, 6
  %1574 = load i64, i64* %PC.i682
  %1575 = add i64 %1574, 6
  store i64 %1575, i64* %PC.i682
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1577 = load i8, i8* %1576, align 1
  %1578 = icmp eq i8 %1577, 0
  %1579 = zext i1 %1578 to i8
  store i8 %1579, i8* %BRANCH_TAKEN, align 1
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1581 = select i1 %1578, i64 %1571, i64 %1573
  store i64 %1581, i64* %1580, align 8
  store %struct.Memory* %loadMem_446ab5, %struct.Memory** %MEMORY
  %loadBr_446ab5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446ab5 = icmp eq i8 %loadBr_446ab5, 1
  br i1 %cmpBr_446ab5, label %block_.L_446ac0, label %block_446abb

block_446abb:                                     ; preds = %block_.L_446a9b
  %loadMem_446abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 33
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %1584 to i64*
  %1585 = load i64, i64* %PC.i681
  %1586 = add i64 %1585, 1201
  %1587 = load i64, i64* %PC.i681
  %1588 = add i64 %1587, 5
  store i64 %1588, i64* %PC.i681
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1586, i64* %1589, align 8
  store %struct.Memory* %loadMem_446abb, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446ac0:                                  ; preds = %block_.L_446a9b
  %loadMem_446ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 33
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %1592 to i64*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 1
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %RAX.i679 = bitcast %union.anon* %1595 to i64*
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1597 = getelementptr inbounds %struct.GPR, %struct.GPR* %1596, i32 0, i32 15
  %1598 = getelementptr inbounds %struct.Reg, %struct.Reg* %1597, i32 0, i32 0
  %RBP.i680 = bitcast %union.anon* %1598 to i64*
  %1599 = load i64, i64* %RBP.i680
  %1600 = sub i64 %1599, 16
  %1601 = load i64, i64* %PC.i678
  %1602 = add i64 %1601, 4
  store i64 %1602, i64* %PC.i678
  %1603 = inttoptr i64 %1600 to i64*
  %1604 = load i64, i64* %1603
  store i64 %1604, i64* %RAX.i679, align 8
  store %struct.Memory* %loadMem_446ac0, %struct.Memory** %MEMORY
  %loadMem_446ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 33
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %1607 to i64*
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 1
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %RAX.i676 = bitcast %union.anon* %1610 to i64*
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1612 = getelementptr inbounds %struct.GPR, %struct.GPR* %1611, i32 0, i32 11
  %1613 = getelementptr inbounds %struct.Reg, %struct.Reg* %1612, i32 0, i32 0
  %RDI.i677 = bitcast %union.anon* %1613 to i64*
  %1614 = load i64, i64* %RAX.i676
  %1615 = load i64, i64* %PC.i675
  %1616 = add i64 %1615, 3
  store i64 %1616, i64* %PC.i675
  %1617 = inttoptr i64 %1614 to i64*
  %1618 = load i64, i64* %1617
  store i64 %1618, i64* %RDI.i677, align 8
  store %struct.Memory* %loadMem_446ac4, %struct.Memory** %MEMORY
  %loadMem_446ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1620 = getelementptr inbounds %struct.GPR, %struct.GPR* %1619, i32 0, i32 33
  %1621 = getelementptr inbounds %struct.Reg, %struct.Reg* %1620, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %1621 to i64*
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 1
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %RAX.i673 = bitcast %union.anon* %1624 to i64*
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 15
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %RBP.i674 = bitcast %union.anon* %1627 to i64*
  %1628 = load i64, i64* %RBP.i674
  %1629 = sub i64 %1628, 16
  %1630 = load i64, i64* %PC.i672
  %1631 = add i64 %1630, 4
  store i64 %1631, i64* %PC.i672
  %1632 = inttoptr i64 %1629 to i64*
  %1633 = load i64, i64* %1632
  store i64 %1633, i64* %RAX.i673, align 8
  store %struct.Memory* %loadMem_446ac7, %struct.Memory** %MEMORY
  %loadMem_446acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 33
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %1636 to i64*
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 1
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %RAX.i671 = bitcast %union.anon* %1639 to i64*
  %1640 = load i64, i64* %RAX.i671
  %1641 = load i64, i64* %PC.i670
  %1642 = add i64 %1641, 4
  store i64 %1642, i64* %PC.i670
  %1643 = add i64 20, %1640
  store i64 %1643, i64* %RAX.i671, align 8
  %1644 = icmp ult i64 %1643, %1640
  %1645 = icmp ult i64 %1643, 20
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
  %1656 = xor i64 20, %1640
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
  %1668 = lshr i64 %1640, 63
  %1669 = xor i64 %1665, %1668
  %1670 = add i64 %1669, %1665
  %1671 = icmp eq i64 %1670, 2
  %1672 = zext i1 %1671 to i8
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1672, i8* %1673, align 1
  store %struct.Memory* %loadMem_446acb, %struct.Memory** %MEMORY
  %loadMem_446acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 33
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %1676 to i64*
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1678 = getelementptr inbounds %struct.GPR, %struct.GPR* %1677, i32 0, i32 1
  %1679 = getelementptr inbounds %struct.Reg, %struct.Reg* %1678, i32 0, i32 0
  %RAX.i668 = bitcast %union.anon* %1679 to i64*
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1681 = getelementptr inbounds %struct.GPR, %struct.GPR* %1680, i32 0, i32 9
  %1682 = getelementptr inbounds %struct.Reg, %struct.Reg* %1681, i32 0, i32 0
  %RSI.i669 = bitcast %union.anon* %1682 to i64*
  %1683 = load i64, i64* %RAX.i668
  %1684 = load i64, i64* %PC.i667
  %1685 = add i64 %1684, 3
  store i64 %1685, i64* %PC.i667
  store i64 %1683, i64* %RSI.i669, align 8
  store %struct.Memory* %loadMem_446acf, %struct.Memory** %MEMORY
  %loadMem1_446ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 33
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %1688 to i64*
  %1689 = load i64, i64* %PC.i666
  %1690 = add i64 %1689, 1214
  %1691 = load i64, i64* %PC.i666
  %1692 = add i64 %1691, 5
  %1693 = load i64, i64* %PC.i666
  %1694 = add i64 %1693, 5
  store i64 %1694, i64* %PC.i666
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1696 = load i64, i64* %1695, align 8
  %1697 = add i64 %1696, -8
  %1698 = inttoptr i64 %1697 to i64*
  store i64 %1692, i64* %1698
  store i64 %1697, i64* %1695, align 8
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1690, i64* %1699, align 8
  store %struct.Memory* %loadMem1_446ad2, %struct.Memory** %MEMORY
  %loadMem2_446ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446ad2 = load i64, i64* %3
  %call2_446ad2 = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64 %loadPC_446ad2, %struct.Memory* %loadMem2_446ad2)
  store %struct.Memory* %call2_446ad2, %struct.Memory** %MEMORY
  %loadMem_446ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 33
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %1702 to i64*
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1704 = getelementptr inbounds %struct.GPR, %struct.GPR* %1703, i32 0, i32 1
  %1705 = getelementptr inbounds %struct.Reg, %struct.Reg* %1704, i32 0, i32 0
  %EAX.i665 = bitcast %union.anon* %1705 to i32*
  %1706 = load i32, i32* %EAX.i665
  %1707 = zext i32 %1706 to i64
  %1708 = load i64, i64* %PC.i664
  %1709 = add i64 %1708, 3
  store i64 %1709, i64* %PC.i664
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1710, align 1
  %1711 = and i32 %1706, 255
  %1712 = call i32 @llvm.ctpop.i32(i32 %1711)
  %1713 = trunc i32 %1712 to i8
  %1714 = and i8 %1713, 1
  %1715 = xor i8 %1714, 1
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1715, i8* %1716, align 1
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1717, align 1
  %1718 = icmp eq i32 %1706, 0
  %1719 = zext i1 %1718 to i8
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1719, i8* %1720, align 1
  %1721 = lshr i32 %1706, 31
  %1722 = trunc i32 %1721 to i8
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1722, i8* %1723, align 1
  %1724 = lshr i32 %1706, 31
  %1725 = xor i32 %1721, %1724
  %1726 = add i32 %1725, %1724
  %1727 = icmp eq i32 %1726, 2
  %1728 = zext i1 %1727 to i8
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1728, i8* %1729, align 1
  store %struct.Memory* %loadMem_446ad7, %struct.Memory** %MEMORY
  %loadMem_446ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 33
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %1732 to i64*
  %1733 = load i64, i64* %PC.i663
  %1734 = add i64 %1733, 11
  %1735 = load i64, i64* %PC.i663
  %1736 = add i64 %1735, 6
  %1737 = load i64, i64* %PC.i663
  %1738 = add i64 %1737, 6
  store i64 %1738, i64* %PC.i663
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1740 = load i8, i8* %1739, align 1
  %1741 = icmp eq i8 %1740, 0
  %1742 = zext i1 %1741 to i8
  store i8 %1742, i8* %BRANCH_TAKEN, align 1
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1744 = select i1 %1741, i64 %1734, i64 %1736
  store i64 %1744, i64* %1743, align 8
  store %struct.Memory* %loadMem_446ada, %struct.Memory** %MEMORY
  %loadBr_446ada = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446ada = icmp eq i8 %loadBr_446ada, 1
  br i1 %cmpBr_446ada, label %block_.L_446ae5, label %block_446ae0

block_446ae0:                                     ; preds = %block_.L_446ac0
  %loadMem_446ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 33
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %1747 to i64*
  %1748 = load i64, i64* %PC.i662
  %1749 = add i64 %1748, 1164
  %1750 = load i64, i64* %PC.i662
  %1751 = add i64 %1750, 5
  store i64 %1751, i64* %PC.i662
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1749, i64* %1752, align 8
  store %struct.Memory* %loadMem_446ae0, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446ae5:                                  ; preds = %block_.L_446ac0
  %loadMem_446ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 33
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %1755 to i64*
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 1
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %RAX.i660 = bitcast %union.anon* %1758 to i64*
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 15
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %RBP.i661 = bitcast %union.anon* %1761 to i64*
  %1762 = load i64, i64* %RBP.i661
  %1763 = sub i64 %1762, 16
  %1764 = load i64, i64* %PC.i659
  %1765 = add i64 %1764, 4
  store i64 %1765, i64* %PC.i659
  %1766 = inttoptr i64 %1763 to i64*
  %1767 = load i64, i64* %1766
  store i64 %1767, i64* %RAX.i660, align 8
  store %struct.Memory* %loadMem_446ae5, %struct.Memory** %MEMORY
  %loadMem_446ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 33
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %1770 to i64*
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1772 = getelementptr inbounds %struct.GPR, %struct.GPR* %1771, i32 0, i32 1
  %1773 = getelementptr inbounds %struct.Reg, %struct.Reg* %1772, i32 0, i32 0
  %RAX.i657 = bitcast %union.anon* %1773 to i64*
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1775 = getelementptr inbounds %struct.GPR, %struct.GPR* %1774, i32 0, i32 11
  %1776 = getelementptr inbounds %struct.Reg, %struct.Reg* %1775, i32 0, i32 0
  %RDI.i658 = bitcast %union.anon* %1776 to i64*
  %1777 = load i64, i64* %RAX.i657
  %1778 = load i64, i64* %PC.i656
  %1779 = add i64 %1778, 3
  store i64 %1779, i64* %PC.i656
  %1780 = inttoptr i64 %1777 to i64*
  %1781 = load i64, i64* %1780
  store i64 %1781, i64* %RDI.i658, align 8
  store %struct.Memory* %loadMem_446ae9, %struct.Memory** %MEMORY
  %loadMem_446aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1783 = getelementptr inbounds %struct.GPR, %struct.GPR* %1782, i32 0, i32 33
  %1784 = getelementptr inbounds %struct.Reg, %struct.Reg* %1783, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %1784 to i64*
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1786 = getelementptr inbounds %struct.GPR, %struct.GPR* %1785, i32 0, i32 1
  %1787 = getelementptr inbounds %struct.Reg, %struct.Reg* %1786, i32 0, i32 0
  %RAX.i654 = bitcast %union.anon* %1787 to i64*
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1789 = getelementptr inbounds %struct.GPR, %struct.GPR* %1788, i32 0, i32 15
  %1790 = getelementptr inbounds %struct.Reg, %struct.Reg* %1789, i32 0, i32 0
  %RBP.i655 = bitcast %union.anon* %1790 to i64*
  %1791 = load i64, i64* %RBP.i655
  %1792 = sub i64 %1791, 16
  %1793 = load i64, i64* %PC.i653
  %1794 = add i64 %1793, 4
  store i64 %1794, i64* %PC.i653
  %1795 = inttoptr i64 %1792 to i64*
  %1796 = load i64, i64* %1795
  store i64 %1796, i64* %RAX.i654, align 8
  store %struct.Memory* %loadMem_446aec, %struct.Memory** %MEMORY
  %loadMem_446af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 33
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %1799 to i64*
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 1
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %RAX.i652 = bitcast %union.anon* %1802 to i64*
  %1803 = load i64, i64* %RAX.i652
  %1804 = load i64, i64* %PC.i651
  %1805 = add i64 %1804, 4
  store i64 %1805, i64* %PC.i651
  %1806 = add i64 24, %1803
  store i64 %1806, i64* %RAX.i652, align 8
  %1807 = icmp ult i64 %1806, %1803
  %1808 = icmp ult i64 %1806, 24
  %1809 = or i1 %1807, %1808
  %1810 = zext i1 %1809 to i8
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1810, i8* %1811, align 1
  %1812 = trunc i64 %1806 to i32
  %1813 = and i32 %1812, 255
  %1814 = call i32 @llvm.ctpop.i32(i32 %1813)
  %1815 = trunc i32 %1814 to i8
  %1816 = and i8 %1815, 1
  %1817 = xor i8 %1816, 1
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1817, i8* %1818, align 1
  %1819 = xor i64 24, %1803
  %1820 = xor i64 %1819, %1806
  %1821 = lshr i64 %1820, 4
  %1822 = trunc i64 %1821 to i8
  %1823 = and i8 %1822, 1
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1823, i8* %1824, align 1
  %1825 = icmp eq i64 %1806, 0
  %1826 = zext i1 %1825 to i8
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1826, i8* %1827, align 1
  %1828 = lshr i64 %1806, 63
  %1829 = trunc i64 %1828 to i8
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1829, i8* %1830, align 1
  %1831 = lshr i64 %1803, 63
  %1832 = xor i64 %1828, %1831
  %1833 = add i64 %1832, %1828
  %1834 = icmp eq i64 %1833, 2
  %1835 = zext i1 %1834 to i8
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1835, i8* %1836, align 1
  store %struct.Memory* %loadMem_446af0, %struct.Memory** %MEMORY
  %loadMem_446af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 33
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %1839 to i64*
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 1
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %RAX.i649 = bitcast %union.anon* %1842 to i64*
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 9
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %RSI.i650 = bitcast %union.anon* %1845 to i64*
  %1846 = load i64, i64* %RAX.i649
  %1847 = load i64, i64* %PC.i648
  %1848 = add i64 %1847, 3
  store i64 %1848, i64* %PC.i648
  store i64 %1846, i64* %RSI.i650, align 8
  store %struct.Memory* %loadMem_446af4, %struct.Memory** %MEMORY
  %loadMem1_446af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1850 = getelementptr inbounds %struct.GPR, %struct.GPR* %1849, i32 0, i32 33
  %1851 = getelementptr inbounds %struct.Reg, %struct.Reg* %1850, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %1851 to i64*
  %1852 = load i64, i64* %PC.i647
  %1853 = add i64 %1852, 1177
  %1854 = load i64, i64* %PC.i647
  %1855 = add i64 %1854, 5
  %1856 = load i64, i64* %PC.i647
  %1857 = add i64 %1856, 5
  store i64 %1857, i64* %PC.i647
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1859 = load i64, i64* %1858, align 8
  %1860 = add i64 %1859, -8
  %1861 = inttoptr i64 %1860 to i64*
  store i64 %1855, i64* %1861
  store i64 %1860, i64* %1858, align 8
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1853, i64* %1862, align 8
  store %struct.Memory* %loadMem1_446af7, %struct.Memory** %MEMORY
  %loadMem2_446af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446af7 = load i64, i64* %3
  %call2_446af7 = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64 %loadPC_446af7, %struct.Memory* %loadMem2_446af7)
  store %struct.Memory* %call2_446af7, %struct.Memory** %MEMORY
  %loadMem_446afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1864 = getelementptr inbounds %struct.GPR, %struct.GPR* %1863, i32 0, i32 33
  %1865 = getelementptr inbounds %struct.Reg, %struct.Reg* %1864, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %1865 to i64*
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 1
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %EAX.i646 = bitcast %union.anon* %1868 to i32*
  %1869 = load i32, i32* %EAX.i646
  %1870 = zext i32 %1869 to i64
  %1871 = load i64, i64* %PC.i645
  %1872 = add i64 %1871, 3
  store i64 %1872, i64* %PC.i645
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1873, align 1
  %1874 = and i32 %1869, 255
  %1875 = call i32 @llvm.ctpop.i32(i32 %1874)
  %1876 = trunc i32 %1875 to i8
  %1877 = and i8 %1876, 1
  %1878 = xor i8 %1877, 1
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1878, i8* %1879, align 1
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1880, align 1
  %1881 = icmp eq i32 %1869, 0
  %1882 = zext i1 %1881 to i8
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1882, i8* %1883, align 1
  %1884 = lshr i32 %1869, 31
  %1885 = trunc i32 %1884 to i8
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1885, i8* %1886, align 1
  %1887 = lshr i32 %1869, 31
  %1888 = xor i32 %1884, %1887
  %1889 = add i32 %1888, %1887
  %1890 = icmp eq i32 %1889, 2
  %1891 = zext i1 %1890 to i8
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1891, i8* %1892, align 1
  store %struct.Memory* %loadMem_446afc, %struct.Memory** %MEMORY
  %loadMem_446aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 33
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %1895 to i64*
  %1896 = load i64, i64* %PC.i644
  %1897 = add i64 %1896, 11
  %1898 = load i64, i64* %PC.i644
  %1899 = add i64 %1898, 6
  %1900 = load i64, i64* %PC.i644
  %1901 = add i64 %1900, 6
  store i64 %1901, i64* %PC.i644
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1903 = load i8, i8* %1902, align 1
  %1904 = icmp eq i8 %1903, 0
  %1905 = zext i1 %1904 to i8
  store i8 %1905, i8* %BRANCH_TAKEN, align 1
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1907 = select i1 %1904, i64 %1897, i64 %1899
  store i64 %1907, i64* %1906, align 8
  store %struct.Memory* %loadMem_446aff, %struct.Memory** %MEMORY
  %loadBr_446aff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446aff = icmp eq i8 %loadBr_446aff, 1
  br i1 %cmpBr_446aff, label %block_.L_446b0a, label %block_446b05

block_446b05:                                     ; preds = %block_.L_446ae5
  %loadMem_446b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 33
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %1910 to i64*
  %1911 = load i64, i64* %PC.i643
  %1912 = add i64 %1911, 1127
  %1913 = load i64, i64* %PC.i643
  %1914 = add i64 %1913, 5
  store i64 %1914, i64* %PC.i643
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1912, i64* %1915, align 8
  store %struct.Memory* %loadMem_446b05, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446b0a:                                  ; preds = %block_.L_446ae5
  %loadMem_446b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 33
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %1918 to i64*
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 1
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %RAX.i641 = bitcast %union.anon* %1921 to i64*
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1923 = getelementptr inbounds %struct.GPR, %struct.GPR* %1922, i32 0, i32 15
  %1924 = getelementptr inbounds %struct.Reg, %struct.Reg* %1923, i32 0, i32 0
  %RBP.i642 = bitcast %union.anon* %1924 to i64*
  %1925 = load i64, i64* %RBP.i642
  %1926 = sub i64 %1925, 16
  %1927 = load i64, i64* %PC.i640
  %1928 = add i64 %1927, 4
  store i64 %1928, i64* %PC.i640
  %1929 = inttoptr i64 %1926 to i64*
  %1930 = load i64, i64* %1929
  store i64 %1930, i64* %RAX.i641, align 8
  store %struct.Memory* %loadMem_446b0a, %struct.Memory** %MEMORY
  %loadMem_446b0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 33
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %1933 to i64*
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 1
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %RAX.i638 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 11
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %RDI.i639 = bitcast %union.anon* %1939 to i64*
  %1940 = load i64, i64* %RAX.i638
  %1941 = load i64, i64* %PC.i637
  %1942 = add i64 %1941, 3
  store i64 %1942, i64* %PC.i637
  %1943 = inttoptr i64 %1940 to i64*
  %1944 = load i64, i64* %1943
  store i64 %1944, i64* %RDI.i639, align 8
  store %struct.Memory* %loadMem_446b0e, %struct.Memory** %MEMORY
  %loadMem_446b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 33
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %1947 to i64*
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 1
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %RAX.i635 = bitcast %union.anon* %1950 to i64*
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 15
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %1953 to i64*
  %1954 = load i64, i64* %RBP.i636
  %1955 = sub i64 %1954, 16
  %1956 = load i64, i64* %PC.i634
  %1957 = add i64 %1956, 4
  store i64 %1957, i64* %PC.i634
  %1958 = inttoptr i64 %1955 to i64*
  %1959 = load i64, i64* %1958
  store i64 %1959, i64* %RAX.i635, align 8
  store %struct.Memory* %loadMem_446b11, %struct.Memory** %MEMORY
  %loadMem_446b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1961 = getelementptr inbounds %struct.GPR, %struct.GPR* %1960, i32 0, i32 33
  %1962 = getelementptr inbounds %struct.Reg, %struct.Reg* %1961, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %1962 to i64*
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 1
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %RAX.i633 = bitcast %union.anon* %1965 to i64*
  %1966 = load i64, i64* %RAX.i633
  %1967 = load i64, i64* %PC.i632
  %1968 = add i64 %1967, 4
  store i64 %1968, i64* %PC.i632
  %1969 = add i64 28, %1966
  store i64 %1969, i64* %RAX.i633, align 8
  %1970 = icmp ult i64 %1969, %1966
  %1971 = icmp ult i64 %1969, 28
  %1972 = or i1 %1970, %1971
  %1973 = zext i1 %1972 to i8
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1973, i8* %1974, align 1
  %1975 = trunc i64 %1969 to i32
  %1976 = and i32 %1975, 255
  %1977 = call i32 @llvm.ctpop.i32(i32 %1976)
  %1978 = trunc i32 %1977 to i8
  %1979 = and i8 %1978, 1
  %1980 = xor i8 %1979, 1
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1980, i8* %1981, align 1
  %1982 = xor i64 28, %1966
  %1983 = xor i64 %1982, %1969
  %1984 = lshr i64 %1983, 4
  %1985 = trunc i64 %1984 to i8
  %1986 = and i8 %1985, 1
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1986, i8* %1987, align 1
  %1988 = icmp eq i64 %1969, 0
  %1989 = zext i1 %1988 to i8
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1989, i8* %1990, align 1
  %1991 = lshr i64 %1969, 63
  %1992 = trunc i64 %1991 to i8
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1992, i8* %1993, align 1
  %1994 = lshr i64 %1966, 63
  %1995 = xor i64 %1991, %1994
  %1996 = add i64 %1995, %1991
  %1997 = icmp eq i64 %1996, 2
  %1998 = zext i1 %1997 to i8
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1998, i8* %1999, align 1
  store %struct.Memory* %loadMem_446b15, %struct.Memory** %MEMORY
  %loadMem_446b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 33
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %2002 to i64*
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 1
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %RAX.i630 = bitcast %union.anon* %2005 to i64*
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 9
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %RSI.i631 = bitcast %union.anon* %2008 to i64*
  %2009 = load i64, i64* %RAX.i630
  %2010 = load i64, i64* %PC.i629
  %2011 = add i64 %2010, 3
  store i64 %2011, i64* %PC.i629
  store i64 %2009, i64* %RSI.i631, align 8
  store %struct.Memory* %loadMem_446b19, %struct.Memory** %MEMORY
  %loadMem1_446b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 33
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %2014 to i64*
  %2015 = load i64, i64* %PC.i628
  %2016 = add i64 %2015, 1140
  %2017 = load i64, i64* %PC.i628
  %2018 = add i64 %2017, 5
  %2019 = load i64, i64* %PC.i628
  %2020 = add i64 %2019, 5
  store i64 %2020, i64* %PC.i628
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2022 = load i64, i64* %2021, align 8
  %2023 = add i64 %2022, -8
  %2024 = inttoptr i64 %2023 to i64*
  store i64 %2018, i64* %2024
  store i64 %2023, i64* %2021, align 8
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2016, i64* %2025, align 8
  store %struct.Memory* %loadMem1_446b1c, %struct.Memory** %MEMORY
  %loadMem2_446b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446b1c = load i64, i64* %3
  %call2_446b1c = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64 %loadPC_446b1c, %struct.Memory* %loadMem2_446b1c)
  store %struct.Memory* %call2_446b1c, %struct.Memory** %MEMORY
  %loadMem_446b21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 33
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 1
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %EAX.i627 = bitcast %union.anon* %2031 to i32*
  %2032 = load i32, i32* %EAX.i627
  %2033 = zext i32 %2032 to i64
  %2034 = load i64, i64* %PC.i626
  %2035 = add i64 %2034, 3
  store i64 %2035, i64* %PC.i626
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2036, align 1
  %2037 = and i32 %2032, 255
  %2038 = call i32 @llvm.ctpop.i32(i32 %2037)
  %2039 = trunc i32 %2038 to i8
  %2040 = and i8 %2039, 1
  %2041 = xor i8 %2040, 1
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2041, i8* %2042, align 1
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2043, align 1
  %2044 = icmp eq i32 %2032, 0
  %2045 = zext i1 %2044 to i8
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2045, i8* %2046, align 1
  %2047 = lshr i32 %2032, 31
  %2048 = trunc i32 %2047 to i8
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2048, i8* %2049, align 1
  %2050 = lshr i32 %2032, 31
  %2051 = xor i32 %2047, %2050
  %2052 = add i32 %2051, %2050
  %2053 = icmp eq i32 %2052, 2
  %2054 = zext i1 %2053 to i8
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2054, i8* %2055, align 1
  store %struct.Memory* %loadMem_446b21, %struct.Memory** %MEMORY
  %loadMem_446b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 33
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %2058 to i64*
  %2059 = load i64, i64* %PC.i625
  %2060 = add i64 %2059, 11
  %2061 = load i64, i64* %PC.i625
  %2062 = add i64 %2061, 6
  %2063 = load i64, i64* %PC.i625
  %2064 = add i64 %2063, 6
  store i64 %2064, i64* %PC.i625
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2066 = load i8, i8* %2065, align 1
  %2067 = icmp eq i8 %2066, 0
  %2068 = zext i1 %2067 to i8
  store i8 %2068, i8* %BRANCH_TAKEN, align 1
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2070 = select i1 %2067, i64 %2060, i64 %2062
  store i64 %2070, i64* %2069, align 8
  store %struct.Memory* %loadMem_446b24, %struct.Memory** %MEMORY
  %loadBr_446b24 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446b24 = icmp eq i8 %loadBr_446b24, 1
  br i1 %cmpBr_446b24, label %block_.L_446b2f, label %block_446b2a

block_446b2a:                                     ; preds = %block_.L_446b0a
  %loadMem_446b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2072 = getelementptr inbounds %struct.GPR, %struct.GPR* %2071, i32 0, i32 33
  %2073 = getelementptr inbounds %struct.Reg, %struct.Reg* %2072, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %2073 to i64*
  %2074 = load i64, i64* %PC.i624
  %2075 = add i64 %2074, 1090
  %2076 = load i64, i64* %PC.i624
  %2077 = add i64 %2076, 5
  store i64 %2077, i64* %PC.i624
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2075, i64* %2078, align 8
  store %struct.Memory* %loadMem_446b2a, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446b2f:                                  ; preds = %block_.L_446b0a
  %loadMem_446b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2080 = getelementptr inbounds %struct.GPR, %struct.GPR* %2079, i32 0, i32 33
  %2081 = getelementptr inbounds %struct.Reg, %struct.Reg* %2080, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %2081 to i64*
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2083 = getelementptr inbounds %struct.GPR, %struct.GPR* %2082, i32 0, i32 1
  %2084 = getelementptr inbounds %struct.Reg, %struct.Reg* %2083, i32 0, i32 0
  %RAX.i622 = bitcast %union.anon* %2084 to i64*
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 15
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %RBP.i623 = bitcast %union.anon* %2087 to i64*
  %2088 = load i64, i64* %RBP.i623
  %2089 = sub i64 %2088, 16
  %2090 = load i64, i64* %PC.i621
  %2091 = add i64 %2090, 4
  store i64 %2091, i64* %PC.i621
  %2092 = inttoptr i64 %2089 to i64*
  %2093 = load i64, i64* %2092
  store i64 %2093, i64* %RAX.i622, align 8
  store %struct.Memory* %loadMem_446b2f, %struct.Memory** %MEMORY
  %loadMem_446b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 33
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %2096 to i64*
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 1
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %RAX.i619 = bitcast %union.anon* %2099 to i64*
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 11
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %RDI.i620 = bitcast %union.anon* %2102 to i64*
  %2103 = load i64, i64* %RAX.i619
  %2104 = load i64, i64* %PC.i618
  %2105 = add i64 %2104, 3
  store i64 %2105, i64* %PC.i618
  %2106 = inttoptr i64 %2103 to i64*
  %2107 = load i64, i64* %2106
  store i64 %2107, i64* %RDI.i620, align 8
  store %struct.Memory* %loadMem_446b33, %struct.Memory** %MEMORY
  %loadMem_446b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 33
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %2110 to i64*
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2112 = getelementptr inbounds %struct.GPR, %struct.GPR* %2111, i32 0, i32 1
  %2113 = getelementptr inbounds %struct.Reg, %struct.Reg* %2112, i32 0, i32 0
  %RAX.i616 = bitcast %union.anon* %2113 to i64*
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2115 = getelementptr inbounds %struct.GPR, %struct.GPR* %2114, i32 0, i32 15
  %2116 = getelementptr inbounds %struct.Reg, %struct.Reg* %2115, i32 0, i32 0
  %RBP.i617 = bitcast %union.anon* %2116 to i64*
  %2117 = load i64, i64* %RBP.i617
  %2118 = sub i64 %2117, 16
  %2119 = load i64, i64* %PC.i615
  %2120 = add i64 %2119, 4
  store i64 %2120, i64* %PC.i615
  %2121 = inttoptr i64 %2118 to i64*
  %2122 = load i64, i64* %2121
  store i64 %2122, i64* %RAX.i616, align 8
  store %struct.Memory* %loadMem_446b36, %struct.Memory** %MEMORY
  %loadMem_446b3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2124 = getelementptr inbounds %struct.GPR, %struct.GPR* %2123, i32 0, i32 33
  %2125 = getelementptr inbounds %struct.Reg, %struct.Reg* %2124, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %2125 to i64*
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 1
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %RAX.i614 = bitcast %union.anon* %2128 to i64*
  %2129 = load i64, i64* %RAX.i614
  %2130 = load i64, i64* %PC.i613
  %2131 = add i64 %2130, 4
  store i64 %2131, i64* %PC.i613
  %2132 = add i64 32, %2129
  store i64 %2132, i64* %RAX.i614, align 8
  %2133 = icmp ult i64 %2132, %2129
  %2134 = icmp ult i64 %2132, 32
  %2135 = or i1 %2133, %2134
  %2136 = zext i1 %2135 to i8
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2136, i8* %2137, align 1
  %2138 = trunc i64 %2132 to i32
  %2139 = and i32 %2138, 255
  %2140 = call i32 @llvm.ctpop.i32(i32 %2139)
  %2141 = trunc i32 %2140 to i8
  %2142 = and i8 %2141, 1
  %2143 = xor i8 %2142, 1
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2143, i8* %2144, align 1
  %2145 = xor i64 32, %2129
  %2146 = xor i64 %2145, %2132
  %2147 = lshr i64 %2146, 4
  %2148 = trunc i64 %2147 to i8
  %2149 = and i8 %2148, 1
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2149, i8* %2150, align 1
  %2151 = icmp eq i64 %2132, 0
  %2152 = zext i1 %2151 to i8
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2152, i8* %2153, align 1
  %2154 = lshr i64 %2132, 63
  %2155 = trunc i64 %2154 to i8
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2155, i8* %2156, align 1
  %2157 = lshr i64 %2129, 63
  %2158 = xor i64 %2154, %2157
  %2159 = add i64 %2158, %2154
  %2160 = icmp eq i64 %2159, 2
  %2161 = zext i1 %2160 to i8
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2161, i8* %2162, align 1
  store %struct.Memory* %loadMem_446b3a, %struct.Memory** %MEMORY
  %loadMem_446b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2164 = getelementptr inbounds %struct.GPR, %struct.GPR* %2163, i32 0, i32 33
  %2165 = getelementptr inbounds %struct.Reg, %struct.Reg* %2164, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %2165 to i64*
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2167 = getelementptr inbounds %struct.GPR, %struct.GPR* %2166, i32 0, i32 1
  %2168 = getelementptr inbounds %struct.Reg, %struct.Reg* %2167, i32 0, i32 0
  %RAX.i611 = bitcast %union.anon* %2168 to i64*
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2170 = getelementptr inbounds %struct.GPR, %struct.GPR* %2169, i32 0, i32 9
  %2171 = getelementptr inbounds %struct.Reg, %struct.Reg* %2170, i32 0, i32 0
  %RSI.i612 = bitcast %union.anon* %2171 to i64*
  %2172 = load i64, i64* %RAX.i611
  %2173 = load i64, i64* %PC.i610
  %2174 = add i64 %2173, 3
  store i64 %2174, i64* %PC.i610
  store i64 %2172, i64* %RSI.i612, align 8
  store %struct.Memory* %loadMem_446b3e, %struct.Memory** %MEMORY
  %loadMem1_446b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 33
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %2177 to i64*
  %2178 = load i64, i64* %PC.i609
  %2179 = add i64 %2178, 1103
  %2180 = load i64, i64* %PC.i609
  %2181 = add i64 %2180, 5
  %2182 = load i64, i64* %PC.i609
  %2183 = add i64 %2182, 5
  store i64 %2183, i64* %PC.i609
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2185 = load i64, i64* %2184, align 8
  %2186 = add i64 %2185, -8
  %2187 = inttoptr i64 %2186 to i64*
  store i64 %2181, i64* %2187
  store i64 %2186, i64* %2184, align 8
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2179, i64* %2188, align 8
  store %struct.Memory* %loadMem1_446b41, %struct.Memory** %MEMORY
  %loadMem2_446b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446b41 = load i64, i64* %3
  %call2_446b41 = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64 %loadPC_446b41, %struct.Memory* %loadMem2_446b41)
  store %struct.Memory* %call2_446b41, %struct.Memory** %MEMORY
  %loadMem_446b46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 33
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %2191 to i64*
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 1
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %EAX.i608 = bitcast %union.anon* %2194 to i32*
  %2195 = load i32, i32* %EAX.i608
  %2196 = zext i32 %2195 to i64
  %2197 = load i64, i64* %PC.i607
  %2198 = add i64 %2197, 3
  store i64 %2198, i64* %PC.i607
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2199, align 1
  %2200 = and i32 %2195, 255
  %2201 = call i32 @llvm.ctpop.i32(i32 %2200)
  %2202 = trunc i32 %2201 to i8
  %2203 = and i8 %2202, 1
  %2204 = xor i8 %2203, 1
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2204, i8* %2205, align 1
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2206, align 1
  %2207 = icmp eq i32 %2195, 0
  %2208 = zext i1 %2207 to i8
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2208, i8* %2209, align 1
  %2210 = lshr i32 %2195, 31
  %2211 = trunc i32 %2210 to i8
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2211, i8* %2212, align 1
  %2213 = lshr i32 %2195, 31
  %2214 = xor i32 %2210, %2213
  %2215 = add i32 %2214, %2213
  %2216 = icmp eq i32 %2215, 2
  %2217 = zext i1 %2216 to i8
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2217, i8* %2218, align 1
  store %struct.Memory* %loadMem_446b46, %struct.Memory** %MEMORY
  %loadMem_446b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 33
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %2221 to i64*
  %2222 = load i64, i64* %PC.i606
  %2223 = add i64 %2222, 11
  %2224 = load i64, i64* %PC.i606
  %2225 = add i64 %2224, 6
  %2226 = load i64, i64* %PC.i606
  %2227 = add i64 %2226, 6
  store i64 %2227, i64* %PC.i606
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2229 = load i8, i8* %2228, align 1
  %2230 = icmp eq i8 %2229, 0
  %2231 = zext i1 %2230 to i8
  store i8 %2231, i8* %BRANCH_TAKEN, align 1
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2233 = select i1 %2230, i64 %2223, i64 %2225
  store i64 %2233, i64* %2232, align 8
  store %struct.Memory* %loadMem_446b49, %struct.Memory** %MEMORY
  %loadBr_446b49 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446b49 = icmp eq i8 %loadBr_446b49, 1
  br i1 %cmpBr_446b49, label %block_.L_446b54, label %block_446b4f

block_446b4f:                                     ; preds = %block_.L_446b2f
  %loadMem_446b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 33
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %2236 to i64*
  %2237 = load i64, i64* %PC.i605
  %2238 = add i64 %2237, 1053
  %2239 = load i64, i64* %PC.i605
  %2240 = add i64 %2239, 5
  store i64 %2240, i64* %PC.i605
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2238, i64* %2241, align 8
  store %struct.Memory* %loadMem_446b4f, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446b54:                                  ; preds = %block_.L_446b2f
  %loadMem_446b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 33
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %2244 to i64*
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2246 = getelementptr inbounds %struct.GPR, %struct.GPR* %2245, i32 0, i32 1
  %2247 = getelementptr inbounds %struct.Reg, %struct.Reg* %2246, i32 0, i32 0
  %RAX.i603 = bitcast %union.anon* %2247 to i64*
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2249 = getelementptr inbounds %struct.GPR, %struct.GPR* %2248, i32 0, i32 15
  %2250 = getelementptr inbounds %struct.Reg, %struct.Reg* %2249, i32 0, i32 0
  %RBP.i604 = bitcast %union.anon* %2250 to i64*
  %2251 = load i64, i64* %RBP.i604
  %2252 = sub i64 %2251, 16
  %2253 = load i64, i64* %PC.i602
  %2254 = add i64 %2253, 4
  store i64 %2254, i64* %PC.i602
  %2255 = inttoptr i64 %2252 to i64*
  %2256 = load i64, i64* %2255
  store i64 %2256, i64* %RAX.i603, align 8
  store %struct.Memory* %loadMem_446b54, %struct.Memory** %MEMORY
  %loadMem_446b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 33
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %2259 to i64*
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 1
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %RAX.i600 = bitcast %union.anon* %2262 to i64*
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 11
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %RDI.i601 = bitcast %union.anon* %2265 to i64*
  %2266 = load i64, i64* %RAX.i600
  %2267 = load i64, i64* %PC.i599
  %2268 = add i64 %2267, 3
  store i64 %2268, i64* %PC.i599
  %2269 = inttoptr i64 %2266 to i64*
  %2270 = load i64, i64* %2269
  store i64 %2270, i64* %RDI.i601, align 8
  store %struct.Memory* %loadMem_446b58, %struct.Memory** %MEMORY
  %loadMem_446b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 33
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %2273 to i64*
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 1
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %RAX.i597 = bitcast %union.anon* %2276 to i64*
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 15
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %RBP.i598 = bitcast %union.anon* %2279 to i64*
  %2280 = load i64, i64* %RBP.i598
  %2281 = sub i64 %2280, 16
  %2282 = load i64, i64* %PC.i596
  %2283 = add i64 %2282, 4
  store i64 %2283, i64* %PC.i596
  %2284 = inttoptr i64 %2281 to i64*
  %2285 = load i64, i64* %2284
  store i64 %2285, i64* %RAX.i597, align 8
  store %struct.Memory* %loadMem_446b5b, %struct.Memory** %MEMORY
  %loadMem_446b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 33
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %2288 to i64*
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 1
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %RAX.i595 = bitcast %union.anon* %2291 to i64*
  %2292 = load i64, i64* %RAX.i595
  %2293 = load i64, i64* %PC.i594
  %2294 = add i64 %2293, 4
  store i64 %2294, i64* %PC.i594
  %2295 = add i64 36, %2292
  store i64 %2295, i64* %RAX.i595, align 8
  %2296 = icmp ult i64 %2295, %2292
  %2297 = icmp ult i64 %2295, 36
  %2298 = or i1 %2296, %2297
  %2299 = zext i1 %2298 to i8
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2299, i8* %2300, align 1
  %2301 = trunc i64 %2295 to i32
  %2302 = and i32 %2301, 255
  %2303 = call i32 @llvm.ctpop.i32(i32 %2302)
  %2304 = trunc i32 %2303 to i8
  %2305 = and i8 %2304, 1
  %2306 = xor i8 %2305, 1
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2306, i8* %2307, align 1
  %2308 = xor i64 36, %2292
  %2309 = xor i64 %2308, %2295
  %2310 = lshr i64 %2309, 4
  %2311 = trunc i64 %2310 to i8
  %2312 = and i8 %2311, 1
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2312, i8* %2313, align 1
  %2314 = icmp eq i64 %2295, 0
  %2315 = zext i1 %2314 to i8
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2315, i8* %2316, align 1
  %2317 = lshr i64 %2295, 63
  %2318 = trunc i64 %2317 to i8
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2318, i8* %2319, align 1
  %2320 = lshr i64 %2292, 63
  %2321 = xor i64 %2317, %2320
  %2322 = add i64 %2321, %2317
  %2323 = icmp eq i64 %2322, 2
  %2324 = zext i1 %2323 to i8
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2324, i8* %2325, align 1
  store %struct.Memory* %loadMem_446b5f, %struct.Memory** %MEMORY
  %loadMem_446b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 33
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %2328 to i64*
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 1
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %RAX.i592 = bitcast %union.anon* %2331 to i64*
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 9
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %RSI.i593 = bitcast %union.anon* %2334 to i64*
  %2335 = load i64, i64* %RAX.i592
  %2336 = load i64, i64* %PC.i591
  %2337 = add i64 %2336, 3
  store i64 %2337, i64* %PC.i591
  store i64 %2335, i64* %RSI.i593, align 8
  store %struct.Memory* %loadMem_446b63, %struct.Memory** %MEMORY
  %loadMem1_446b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 33
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %2340 to i64*
  %2341 = load i64, i64* %PC.i590
  %2342 = add i64 %2341, 1066
  %2343 = load i64, i64* %PC.i590
  %2344 = add i64 %2343, 5
  %2345 = load i64, i64* %PC.i590
  %2346 = add i64 %2345, 5
  store i64 %2346, i64* %PC.i590
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2348 = load i64, i64* %2347, align 8
  %2349 = add i64 %2348, -8
  %2350 = inttoptr i64 %2349 to i64*
  store i64 %2344, i64* %2350
  store i64 %2349, i64* %2347, align 8
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2342, i64* %2351, align 8
  store %struct.Memory* %loadMem1_446b66, %struct.Memory** %MEMORY
  %loadMem2_446b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446b66 = load i64, i64* %3
  %call2_446b66 = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64 %loadPC_446b66, %struct.Memory* %loadMem2_446b66)
  store %struct.Memory* %call2_446b66, %struct.Memory** %MEMORY
  %loadMem_446b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 33
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %2354 to i64*
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 1
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %EAX.i589 = bitcast %union.anon* %2357 to i32*
  %2358 = load i32, i32* %EAX.i589
  %2359 = zext i32 %2358 to i64
  %2360 = load i64, i64* %PC.i588
  %2361 = add i64 %2360, 3
  store i64 %2361, i64* %PC.i588
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2362, align 1
  %2363 = and i32 %2358, 255
  %2364 = call i32 @llvm.ctpop.i32(i32 %2363)
  %2365 = trunc i32 %2364 to i8
  %2366 = and i8 %2365, 1
  %2367 = xor i8 %2366, 1
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2367, i8* %2368, align 1
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2369, align 1
  %2370 = icmp eq i32 %2358, 0
  %2371 = zext i1 %2370 to i8
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2371, i8* %2372, align 1
  %2373 = lshr i32 %2358, 31
  %2374 = trunc i32 %2373 to i8
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2374, i8* %2375, align 1
  %2376 = lshr i32 %2358, 31
  %2377 = xor i32 %2373, %2376
  %2378 = add i32 %2377, %2376
  %2379 = icmp eq i32 %2378, 2
  %2380 = zext i1 %2379 to i8
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2380, i8* %2381, align 1
  store %struct.Memory* %loadMem_446b6b, %struct.Memory** %MEMORY
  %loadMem_446b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2383 = getelementptr inbounds %struct.GPR, %struct.GPR* %2382, i32 0, i32 33
  %2384 = getelementptr inbounds %struct.Reg, %struct.Reg* %2383, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %2384 to i64*
  %2385 = load i64, i64* %PC.i587
  %2386 = add i64 %2385, 11
  %2387 = load i64, i64* %PC.i587
  %2388 = add i64 %2387, 6
  %2389 = load i64, i64* %PC.i587
  %2390 = add i64 %2389, 6
  store i64 %2390, i64* %PC.i587
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2392 = load i8, i8* %2391, align 1
  %2393 = icmp eq i8 %2392, 0
  %2394 = zext i1 %2393 to i8
  store i8 %2394, i8* %BRANCH_TAKEN, align 1
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2396 = select i1 %2393, i64 %2386, i64 %2388
  store i64 %2396, i64* %2395, align 8
  store %struct.Memory* %loadMem_446b6e, %struct.Memory** %MEMORY
  %loadBr_446b6e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446b6e = icmp eq i8 %loadBr_446b6e, 1
  br i1 %cmpBr_446b6e, label %block_.L_446b79, label %block_446b74

block_446b74:                                     ; preds = %block_.L_446b54
  %loadMem_446b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 33
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %2399 to i64*
  %2400 = load i64, i64* %PC.i586
  %2401 = add i64 %2400, 1016
  %2402 = load i64, i64* %PC.i586
  %2403 = add i64 %2402, 5
  store i64 %2403, i64* %PC.i586
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2401, i64* %2404, align 8
  store %struct.Memory* %loadMem_446b74, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446b79:                                  ; preds = %block_.L_446b54
  %loadMem_446b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2406 = getelementptr inbounds %struct.GPR, %struct.GPR* %2405, i32 0, i32 33
  %2407 = getelementptr inbounds %struct.Reg, %struct.Reg* %2406, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %2407 to i64*
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2409 = getelementptr inbounds %struct.GPR, %struct.GPR* %2408, i32 0, i32 1
  %2410 = getelementptr inbounds %struct.Reg, %struct.Reg* %2409, i32 0, i32 0
  %RAX.i584 = bitcast %union.anon* %2410 to i64*
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 15
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %RBP.i585 = bitcast %union.anon* %2413 to i64*
  %2414 = load i64, i64* %RBP.i585
  %2415 = sub i64 %2414, 16
  %2416 = load i64, i64* %PC.i583
  %2417 = add i64 %2416, 4
  store i64 %2417, i64* %PC.i583
  %2418 = inttoptr i64 %2415 to i64*
  %2419 = load i64, i64* %2418
  store i64 %2419, i64* %RAX.i584, align 8
  store %struct.Memory* %loadMem_446b79, %struct.Memory** %MEMORY
  %loadMem_446b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 33
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %2422 to i64*
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2424 = getelementptr inbounds %struct.GPR, %struct.GPR* %2423, i32 0, i32 1
  %2425 = getelementptr inbounds %struct.Reg, %struct.Reg* %2424, i32 0, i32 0
  %RAX.i581 = bitcast %union.anon* %2425 to i64*
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 11
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %RDI.i582 = bitcast %union.anon* %2428 to i64*
  %2429 = load i64, i64* %RAX.i581
  %2430 = load i64, i64* %PC.i580
  %2431 = add i64 %2430, 3
  store i64 %2431, i64* %PC.i580
  %2432 = inttoptr i64 %2429 to i64*
  %2433 = load i64, i64* %2432
  store i64 %2433, i64* %RDI.i582, align 8
  store %struct.Memory* %loadMem_446b7d, %struct.Memory** %MEMORY
  %loadMem_446b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 33
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %2436 to i64*
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 1
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %RAX.i578 = bitcast %union.anon* %2439 to i64*
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 15
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %RBP.i579 = bitcast %union.anon* %2442 to i64*
  %2443 = load i64, i64* %RBP.i579
  %2444 = sub i64 %2443, 16
  %2445 = load i64, i64* %PC.i577
  %2446 = add i64 %2445, 4
  store i64 %2446, i64* %PC.i577
  %2447 = inttoptr i64 %2444 to i64*
  %2448 = load i64, i64* %2447
  store i64 %2448, i64* %RAX.i578, align 8
  store %struct.Memory* %loadMem_446b80, %struct.Memory** %MEMORY
  %loadMem_446b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 33
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %2451 to i64*
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2453 = getelementptr inbounds %struct.GPR, %struct.GPR* %2452, i32 0, i32 1
  %2454 = getelementptr inbounds %struct.Reg, %struct.Reg* %2453, i32 0, i32 0
  %RAX.i576 = bitcast %union.anon* %2454 to i64*
  %2455 = load i64, i64* %RAX.i576
  %2456 = load i64, i64* %PC.i575
  %2457 = add i64 %2456, 4
  store i64 %2457, i64* %PC.i575
  %2458 = add i64 40, %2455
  store i64 %2458, i64* %RAX.i576, align 8
  %2459 = icmp ult i64 %2458, %2455
  %2460 = icmp ult i64 %2458, 40
  %2461 = or i1 %2459, %2460
  %2462 = zext i1 %2461 to i8
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2462, i8* %2463, align 1
  %2464 = trunc i64 %2458 to i32
  %2465 = and i32 %2464, 255
  %2466 = call i32 @llvm.ctpop.i32(i32 %2465)
  %2467 = trunc i32 %2466 to i8
  %2468 = and i8 %2467, 1
  %2469 = xor i8 %2468, 1
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2469, i8* %2470, align 1
  %2471 = xor i64 40, %2455
  %2472 = xor i64 %2471, %2458
  %2473 = lshr i64 %2472, 4
  %2474 = trunc i64 %2473 to i8
  %2475 = and i8 %2474, 1
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2475, i8* %2476, align 1
  %2477 = icmp eq i64 %2458, 0
  %2478 = zext i1 %2477 to i8
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2478, i8* %2479, align 1
  %2480 = lshr i64 %2458, 63
  %2481 = trunc i64 %2480 to i8
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2481, i8* %2482, align 1
  %2483 = lshr i64 %2455, 63
  %2484 = xor i64 %2480, %2483
  %2485 = add i64 %2484, %2480
  %2486 = icmp eq i64 %2485, 2
  %2487 = zext i1 %2486 to i8
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2487, i8* %2488, align 1
  store %struct.Memory* %loadMem_446b84, %struct.Memory** %MEMORY
  %loadMem_446b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2490 = getelementptr inbounds %struct.GPR, %struct.GPR* %2489, i32 0, i32 33
  %2491 = getelementptr inbounds %struct.Reg, %struct.Reg* %2490, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %2491 to i64*
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2493 = getelementptr inbounds %struct.GPR, %struct.GPR* %2492, i32 0, i32 1
  %2494 = getelementptr inbounds %struct.Reg, %struct.Reg* %2493, i32 0, i32 0
  %RAX.i573 = bitcast %union.anon* %2494 to i64*
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 9
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %RSI.i574 = bitcast %union.anon* %2497 to i64*
  %2498 = load i64, i64* %RAX.i573
  %2499 = load i64, i64* %PC.i572
  %2500 = add i64 %2499, 3
  store i64 %2500, i64* %PC.i572
  store i64 %2498, i64* %RSI.i574, align 8
  store %struct.Memory* %loadMem_446b88, %struct.Memory** %MEMORY
  %loadMem1_446b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 33
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %2503 to i64*
  %2504 = load i64, i64* %PC.i571
  %2505 = add i64 %2504, 1029
  %2506 = load i64, i64* %PC.i571
  %2507 = add i64 %2506, 5
  %2508 = load i64, i64* %PC.i571
  %2509 = add i64 %2508, 5
  store i64 %2509, i64* %PC.i571
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2511 = load i64, i64* %2510, align 8
  %2512 = add i64 %2511, -8
  %2513 = inttoptr i64 %2512 to i64*
  store i64 %2507, i64* %2513
  store i64 %2512, i64* %2510, align 8
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2505, i64* %2514, align 8
  store %struct.Memory* %loadMem1_446b8b, %struct.Memory** %MEMORY
  %loadMem2_446b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446b8b = load i64, i64* %3
  %call2_446b8b = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64 %loadPC_446b8b, %struct.Memory* %loadMem2_446b8b)
  store %struct.Memory* %call2_446b8b, %struct.Memory** %MEMORY
  %loadMem_446b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2516 = getelementptr inbounds %struct.GPR, %struct.GPR* %2515, i32 0, i32 33
  %2517 = getelementptr inbounds %struct.Reg, %struct.Reg* %2516, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %2517 to i64*
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2519 = getelementptr inbounds %struct.GPR, %struct.GPR* %2518, i32 0, i32 1
  %2520 = getelementptr inbounds %struct.Reg, %struct.Reg* %2519, i32 0, i32 0
  %EAX.i570 = bitcast %union.anon* %2520 to i32*
  %2521 = load i32, i32* %EAX.i570
  %2522 = zext i32 %2521 to i64
  %2523 = load i64, i64* %PC.i569
  %2524 = add i64 %2523, 3
  store i64 %2524, i64* %PC.i569
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2525, align 1
  %2526 = and i32 %2521, 255
  %2527 = call i32 @llvm.ctpop.i32(i32 %2526)
  %2528 = trunc i32 %2527 to i8
  %2529 = and i8 %2528, 1
  %2530 = xor i8 %2529, 1
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2530, i8* %2531, align 1
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2532, align 1
  %2533 = icmp eq i32 %2521, 0
  %2534 = zext i1 %2533 to i8
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2534, i8* %2535, align 1
  %2536 = lshr i32 %2521, 31
  %2537 = trunc i32 %2536 to i8
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2537, i8* %2538, align 1
  %2539 = lshr i32 %2521, 31
  %2540 = xor i32 %2536, %2539
  %2541 = add i32 %2540, %2539
  %2542 = icmp eq i32 %2541, 2
  %2543 = zext i1 %2542 to i8
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2543, i8* %2544, align 1
  store %struct.Memory* %loadMem_446b90, %struct.Memory** %MEMORY
  %loadMem_446b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2546 = getelementptr inbounds %struct.GPR, %struct.GPR* %2545, i32 0, i32 33
  %2547 = getelementptr inbounds %struct.Reg, %struct.Reg* %2546, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %2547 to i64*
  %2548 = load i64, i64* %PC.i568
  %2549 = add i64 %2548, 11
  %2550 = load i64, i64* %PC.i568
  %2551 = add i64 %2550, 6
  %2552 = load i64, i64* %PC.i568
  %2553 = add i64 %2552, 6
  store i64 %2553, i64* %PC.i568
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2555 = load i8, i8* %2554, align 1
  %2556 = icmp eq i8 %2555, 0
  %2557 = zext i1 %2556 to i8
  store i8 %2557, i8* %BRANCH_TAKEN, align 1
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2559 = select i1 %2556, i64 %2549, i64 %2551
  store i64 %2559, i64* %2558, align 8
  store %struct.Memory* %loadMem_446b93, %struct.Memory** %MEMORY
  %loadBr_446b93 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446b93 = icmp eq i8 %loadBr_446b93, 1
  br i1 %cmpBr_446b93, label %block_.L_446b9e, label %block_446b99

block_446b99:                                     ; preds = %block_.L_446b79
  %loadMem_446b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2561 = getelementptr inbounds %struct.GPR, %struct.GPR* %2560, i32 0, i32 33
  %2562 = getelementptr inbounds %struct.Reg, %struct.Reg* %2561, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %2562 to i64*
  %2563 = load i64, i64* %PC.i567
  %2564 = add i64 %2563, 979
  %2565 = load i64, i64* %PC.i567
  %2566 = add i64 %2565, 5
  store i64 %2566, i64* %PC.i567
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2564, i64* %2567, align 8
  store %struct.Memory* %loadMem_446b99, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446b9e:                                  ; preds = %block_.L_446b79
  %loadMem_446b9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 33
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %2570 to i64*
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 1
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %RAX.i565 = bitcast %union.anon* %2573 to i64*
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2575 = getelementptr inbounds %struct.GPR, %struct.GPR* %2574, i32 0, i32 15
  %2576 = getelementptr inbounds %struct.Reg, %struct.Reg* %2575, i32 0, i32 0
  %RBP.i566 = bitcast %union.anon* %2576 to i64*
  %2577 = load i64, i64* %RBP.i566
  %2578 = sub i64 %2577, 16
  %2579 = load i64, i64* %PC.i564
  %2580 = add i64 %2579, 4
  store i64 %2580, i64* %PC.i564
  %2581 = inttoptr i64 %2578 to i64*
  %2582 = load i64, i64* %2581
  store i64 %2582, i64* %RAX.i565, align 8
  store %struct.Memory* %loadMem_446b9e, %struct.Memory** %MEMORY
  %loadMem_446ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 33
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %2585 to i64*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 1
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %2588 to i64*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 11
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %RDI.i563 = bitcast %union.anon* %2591 to i64*
  %2592 = load i64, i64* %RAX.i562
  %2593 = load i64, i64* %PC.i561
  %2594 = add i64 %2593, 3
  store i64 %2594, i64* %PC.i561
  %2595 = inttoptr i64 %2592 to i64*
  %2596 = load i64, i64* %2595
  store i64 %2596, i64* %RDI.i563, align 8
  store %struct.Memory* %loadMem_446ba2, %struct.Memory** %MEMORY
  %loadMem_446ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2598 = getelementptr inbounds %struct.GPR, %struct.GPR* %2597, i32 0, i32 33
  %2599 = getelementptr inbounds %struct.Reg, %struct.Reg* %2598, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %2599 to i64*
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2601 = getelementptr inbounds %struct.GPR, %struct.GPR* %2600, i32 0, i32 1
  %2602 = getelementptr inbounds %struct.Reg, %struct.Reg* %2601, i32 0, i32 0
  %RAX.i559 = bitcast %union.anon* %2602 to i64*
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2604 = getelementptr inbounds %struct.GPR, %struct.GPR* %2603, i32 0, i32 15
  %2605 = getelementptr inbounds %struct.Reg, %struct.Reg* %2604, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %2605 to i64*
  %2606 = load i64, i64* %RBP.i560
  %2607 = sub i64 %2606, 16
  %2608 = load i64, i64* %PC.i558
  %2609 = add i64 %2608, 4
  store i64 %2609, i64* %PC.i558
  %2610 = inttoptr i64 %2607 to i64*
  %2611 = load i64, i64* %2610
  store i64 %2611, i64* %RAX.i559, align 8
  store %struct.Memory* %loadMem_446ba5, %struct.Memory** %MEMORY
  %loadMem_446ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 33
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %2614 to i64*
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 1
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %RAX.i557 = bitcast %union.anon* %2617 to i64*
  %2618 = load i64, i64* %RAX.i557
  %2619 = load i64, i64* %PC.i556
  %2620 = add i64 %2619, 4
  store i64 %2620, i64* %PC.i556
  %2621 = add i64 44, %2618
  store i64 %2621, i64* %RAX.i557, align 8
  %2622 = icmp ult i64 %2621, %2618
  %2623 = icmp ult i64 %2621, 44
  %2624 = or i1 %2622, %2623
  %2625 = zext i1 %2624 to i8
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2625, i8* %2626, align 1
  %2627 = trunc i64 %2621 to i32
  %2628 = and i32 %2627, 255
  %2629 = call i32 @llvm.ctpop.i32(i32 %2628)
  %2630 = trunc i32 %2629 to i8
  %2631 = and i8 %2630, 1
  %2632 = xor i8 %2631, 1
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2632, i8* %2633, align 1
  %2634 = xor i64 44, %2618
  %2635 = xor i64 %2634, %2621
  %2636 = lshr i64 %2635, 4
  %2637 = trunc i64 %2636 to i8
  %2638 = and i8 %2637, 1
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2638, i8* %2639, align 1
  %2640 = icmp eq i64 %2621, 0
  %2641 = zext i1 %2640 to i8
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2641, i8* %2642, align 1
  %2643 = lshr i64 %2621, 63
  %2644 = trunc i64 %2643 to i8
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2644, i8* %2645, align 1
  %2646 = lshr i64 %2618, 63
  %2647 = xor i64 %2643, %2646
  %2648 = add i64 %2647, %2643
  %2649 = icmp eq i64 %2648, 2
  %2650 = zext i1 %2649 to i8
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2650, i8* %2651, align 1
  store %struct.Memory* %loadMem_446ba9, %struct.Memory** %MEMORY
  %loadMem_446bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 33
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %2654 to i64*
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2656 = getelementptr inbounds %struct.GPR, %struct.GPR* %2655, i32 0, i32 1
  %2657 = getelementptr inbounds %struct.Reg, %struct.Reg* %2656, i32 0, i32 0
  %RAX.i554 = bitcast %union.anon* %2657 to i64*
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2659 = getelementptr inbounds %struct.GPR, %struct.GPR* %2658, i32 0, i32 9
  %2660 = getelementptr inbounds %struct.Reg, %struct.Reg* %2659, i32 0, i32 0
  %RSI.i555 = bitcast %union.anon* %2660 to i64*
  %2661 = load i64, i64* %RAX.i554
  %2662 = load i64, i64* %PC.i553
  %2663 = add i64 %2662, 3
  store i64 %2663, i64* %PC.i553
  store i64 %2661, i64* %RSI.i555, align 8
  store %struct.Memory* %loadMem_446bad, %struct.Memory** %MEMORY
  %loadMem1_446bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 33
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %2666 to i64*
  %2667 = load i64, i64* %PC.i552
  %2668 = add i64 %2667, 992
  %2669 = load i64, i64* %PC.i552
  %2670 = add i64 %2669, 5
  %2671 = load i64, i64* %PC.i552
  %2672 = add i64 %2671, 5
  store i64 %2672, i64* %PC.i552
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2674 = load i64, i64* %2673, align 8
  %2675 = add i64 %2674, -8
  %2676 = inttoptr i64 %2675 to i64*
  store i64 %2670, i64* %2676
  store i64 %2675, i64* %2673, align 8
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2668, i64* %2677, align 8
  store %struct.Memory* %loadMem1_446bb0, %struct.Memory** %MEMORY
  %loadMem2_446bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446bb0 = load i64, i64* %3
  %call2_446bb0 = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64 %loadPC_446bb0, %struct.Memory* %loadMem2_446bb0)
  store %struct.Memory* %call2_446bb0, %struct.Memory** %MEMORY
  %loadMem_446bb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 33
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %2680 to i64*
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 1
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %EAX.i551 = bitcast %union.anon* %2683 to i32*
  %2684 = load i32, i32* %EAX.i551
  %2685 = zext i32 %2684 to i64
  %2686 = load i64, i64* %PC.i550
  %2687 = add i64 %2686, 3
  store i64 %2687, i64* %PC.i550
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2688, align 1
  %2689 = and i32 %2684, 255
  %2690 = call i32 @llvm.ctpop.i32(i32 %2689)
  %2691 = trunc i32 %2690 to i8
  %2692 = and i8 %2691, 1
  %2693 = xor i8 %2692, 1
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2693, i8* %2694, align 1
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2695, align 1
  %2696 = icmp eq i32 %2684, 0
  %2697 = zext i1 %2696 to i8
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2697, i8* %2698, align 1
  %2699 = lshr i32 %2684, 31
  %2700 = trunc i32 %2699 to i8
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2700, i8* %2701, align 1
  %2702 = lshr i32 %2684, 31
  %2703 = xor i32 %2699, %2702
  %2704 = add i32 %2703, %2702
  %2705 = icmp eq i32 %2704, 2
  %2706 = zext i1 %2705 to i8
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2706, i8* %2707, align 1
  store %struct.Memory* %loadMem_446bb5, %struct.Memory** %MEMORY
  %loadMem_446bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2709 = getelementptr inbounds %struct.GPR, %struct.GPR* %2708, i32 0, i32 33
  %2710 = getelementptr inbounds %struct.Reg, %struct.Reg* %2709, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %2710 to i64*
  %2711 = load i64, i64* %PC.i549
  %2712 = add i64 %2711, 11
  %2713 = load i64, i64* %PC.i549
  %2714 = add i64 %2713, 6
  %2715 = load i64, i64* %PC.i549
  %2716 = add i64 %2715, 6
  store i64 %2716, i64* %PC.i549
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2718 = load i8, i8* %2717, align 1
  %2719 = icmp eq i8 %2718, 0
  %2720 = zext i1 %2719 to i8
  store i8 %2720, i8* %BRANCH_TAKEN, align 1
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2722 = select i1 %2719, i64 %2712, i64 %2714
  store i64 %2722, i64* %2721, align 8
  store %struct.Memory* %loadMem_446bb8, %struct.Memory** %MEMORY
  %loadBr_446bb8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446bb8 = icmp eq i8 %loadBr_446bb8, 1
  br i1 %cmpBr_446bb8, label %block_.L_446bc3, label %block_446bbe

block_446bbe:                                     ; preds = %block_.L_446b9e
  %loadMem_446bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 33
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %2725 to i64*
  %2726 = load i64, i64* %PC.i548
  %2727 = add i64 %2726, 942
  %2728 = load i64, i64* %PC.i548
  %2729 = add i64 %2728, 5
  store i64 %2729, i64* %PC.i548
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2727, i64* %2730, align 8
  store %struct.Memory* %loadMem_446bbe, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446bc3:                                  ; preds = %block_.L_446b9e
  %loadMem_446bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2732 = getelementptr inbounds %struct.GPR, %struct.GPR* %2731, i32 0, i32 33
  %2733 = getelementptr inbounds %struct.Reg, %struct.Reg* %2732, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %2733 to i64*
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2735 = getelementptr inbounds %struct.GPR, %struct.GPR* %2734, i32 0, i32 1
  %2736 = getelementptr inbounds %struct.Reg, %struct.Reg* %2735, i32 0, i32 0
  %RAX.i546 = bitcast %union.anon* %2736 to i64*
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2738 = getelementptr inbounds %struct.GPR, %struct.GPR* %2737, i32 0, i32 15
  %2739 = getelementptr inbounds %struct.Reg, %struct.Reg* %2738, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %2739 to i64*
  %2740 = load i64, i64* %RBP.i547
  %2741 = sub i64 %2740, 16
  %2742 = load i64, i64* %PC.i545
  %2743 = add i64 %2742, 4
  store i64 %2743, i64* %PC.i545
  %2744 = inttoptr i64 %2741 to i64*
  %2745 = load i64, i64* %2744
  store i64 %2745, i64* %RAX.i546, align 8
  store %struct.Memory* %loadMem_446bc3, %struct.Memory** %MEMORY
  %loadMem_446bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2747 = getelementptr inbounds %struct.GPR, %struct.GPR* %2746, i32 0, i32 33
  %2748 = getelementptr inbounds %struct.Reg, %struct.Reg* %2747, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %2748 to i64*
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 1
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %RAX.i543 = bitcast %union.anon* %2751 to i64*
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 11
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %RDI.i544 = bitcast %union.anon* %2754 to i64*
  %2755 = load i64, i64* %RAX.i543
  %2756 = load i64, i64* %PC.i542
  %2757 = add i64 %2756, 3
  store i64 %2757, i64* %PC.i542
  %2758 = inttoptr i64 %2755 to i64*
  %2759 = load i64, i64* %2758
  store i64 %2759, i64* %RDI.i544, align 8
  store %struct.Memory* %loadMem_446bc7, %struct.Memory** %MEMORY
  %loadMem_446bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2761 = getelementptr inbounds %struct.GPR, %struct.GPR* %2760, i32 0, i32 33
  %2762 = getelementptr inbounds %struct.Reg, %struct.Reg* %2761, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %2762 to i64*
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2764 = getelementptr inbounds %struct.GPR, %struct.GPR* %2763, i32 0, i32 1
  %2765 = getelementptr inbounds %struct.Reg, %struct.Reg* %2764, i32 0, i32 0
  %RAX.i540 = bitcast %union.anon* %2765 to i64*
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2767 = getelementptr inbounds %struct.GPR, %struct.GPR* %2766, i32 0, i32 15
  %2768 = getelementptr inbounds %struct.Reg, %struct.Reg* %2767, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %2768 to i64*
  %2769 = load i64, i64* %RBP.i541
  %2770 = sub i64 %2769, 16
  %2771 = load i64, i64* %PC.i539
  %2772 = add i64 %2771, 4
  store i64 %2772, i64* %PC.i539
  %2773 = inttoptr i64 %2770 to i64*
  %2774 = load i64, i64* %2773
  store i64 %2774, i64* %RAX.i540, align 8
  store %struct.Memory* %loadMem_446bca, %struct.Memory** %MEMORY
  %loadMem_446bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2776 = getelementptr inbounds %struct.GPR, %struct.GPR* %2775, i32 0, i32 33
  %2777 = getelementptr inbounds %struct.Reg, %struct.Reg* %2776, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %2777 to i64*
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2779 = getelementptr inbounds %struct.GPR, %struct.GPR* %2778, i32 0, i32 5
  %2780 = getelementptr inbounds %struct.Reg, %struct.Reg* %2779, i32 0, i32 0
  %2781 = bitcast %union.anon* %2780 to %struct.anon.2*
  %CL.i537 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2781, i32 0, i32 0
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2783 = getelementptr inbounds %struct.GPR, %struct.GPR* %2782, i32 0, i32 1
  %2784 = getelementptr inbounds %struct.Reg, %struct.Reg* %2783, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %2784 to i64*
  %2785 = load i64, i64* %RAX.i538
  %2786 = add i64 %2785, 96
  %2787 = load i64, i64* %PC.i536
  %2788 = add i64 %2787, 3
  store i64 %2788, i64* %PC.i536
  %2789 = inttoptr i64 %2786 to i8*
  %2790 = load i8, i8* %2789
  store i8 %2790, i8* %CL.i537, align 1
  store %struct.Memory* %loadMem_446bce, %struct.Memory** %MEMORY
  %loadMem_446bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2792 = getelementptr inbounds %struct.GPR, %struct.GPR* %2791, i32 0, i32 33
  %2793 = getelementptr inbounds %struct.Reg, %struct.Reg* %2792, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %2793 to i64*
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2795 = getelementptr inbounds %struct.GPR, %struct.GPR* %2794, i32 0, i32 1
  %2796 = getelementptr inbounds %struct.Reg, %struct.Reg* %2795, i32 0, i32 0
  %RAX.i534 = bitcast %union.anon* %2796 to i64*
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 15
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %2799 to i64*
  %2800 = load i64, i64* %RBP.i535
  %2801 = sub i64 %2800, 16
  %2802 = load i64, i64* %PC.i533
  %2803 = add i64 %2802, 4
  store i64 %2803, i64* %PC.i533
  %2804 = inttoptr i64 %2801 to i64*
  %2805 = load i64, i64* %2804
  store i64 %2805, i64* %RAX.i534, align 8
  store %struct.Memory* %loadMem_446bd1, %struct.Memory** %MEMORY
  %loadMem_446bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2807 = getelementptr inbounds %struct.GPR, %struct.GPR* %2806, i32 0, i32 33
  %2808 = getelementptr inbounds %struct.Reg, %struct.Reg* %2807, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %2808 to i64*
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2810 = getelementptr inbounds %struct.GPR, %struct.GPR* %2809, i32 0, i32 1
  %2811 = getelementptr inbounds %struct.Reg, %struct.Reg* %2810, i32 0, i32 0
  %RAX.i532 = bitcast %union.anon* %2811 to i64*
  %2812 = load i64, i64* %RAX.i532
  %2813 = load i64, i64* %PC.i531
  %2814 = add i64 %2813, 4
  store i64 %2814, i64* %PC.i531
  %2815 = add i64 48, %2812
  store i64 %2815, i64* %RAX.i532, align 8
  %2816 = icmp ult i64 %2815, %2812
  %2817 = icmp ult i64 %2815, 48
  %2818 = or i1 %2816, %2817
  %2819 = zext i1 %2818 to i8
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2819, i8* %2820, align 1
  %2821 = trunc i64 %2815 to i32
  %2822 = and i32 %2821, 255
  %2823 = call i32 @llvm.ctpop.i32(i32 %2822)
  %2824 = trunc i32 %2823 to i8
  %2825 = and i8 %2824, 1
  %2826 = xor i8 %2825, 1
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2826, i8* %2827, align 1
  %2828 = xor i64 48, %2812
  %2829 = xor i64 %2828, %2815
  %2830 = lshr i64 %2829, 4
  %2831 = trunc i64 %2830 to i8
  %2832 = and i8 %2831, 1
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2832, i8* %2833, align 1
  %2834 = icmp eq i64 %2815, 0
  %2835 = zext i1 %2834 to i8
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2835, i8* %2836, align 1
  %2837 = lshr i64 %2815, 63
  %2838 = trunc i64 %2837 to i8
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2838, i8* %2839, align 1
  %2840 = lshr i64 %2812, 63
  %2841 = xor i64 %2837, %2840
  %2842 = add i64 %2841, %2837
  %2843 = icmp eq i64 %2842, 2
  %2844 = zext i1 %2843 to i8
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2844, i8* %2845, align 1
  store %struct.Memory* %loadMem_446bd5, %struct.Memory** %MEMORY
  %loadMem_446bd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 33
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %2848 to i64*
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2850 = getelementptr inbounds %struct.GPR, %struct.GPR* %2849, i32 0, i32 5
  %2851 = getelementptr inbounds %struct.Reg, %struct.Reg* %2850, i32 0, i32 0
  %2852 = bitcast %union.anon* %2851 to %struct.anon.2*
  %CL.i529 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2852, i32 0, i32 0
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 9
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %RSI.i530 = bitcast %union.anon* %2855 to i64*
  %2856 = load i8, i8* %CL.i529
  %2857 = zext i8 %2856 to i64
  %2858 = load i64, i64* %PC.i528
  %2859 = add i64 %2858, 3
  store i64 %2859, i64* %PC.i528
  %2860 = trunc i64 %2857 to i32
  %2861 = shl i32 %2860, 24
  %2862 = ashr exact i32 %2861, 24
  %2863 = zext i32 %2862 to i64
  store i64 %2863, i64* %RSI.i530, align 8
  store %struct.Memory* %loadMem_446bd9, %struct.Memory** %MEMORY
  %loadMem_446bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 33
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %2866 to i64*
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 1
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %RAX.i526 = bitcast %union.anon* %2869 to i64*
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 7
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %RDX.i527 = bitcast %union.anon* %2872 to i64*
  %2873 = load i64, i64* %RAX.i526
  %2874 = load i64, i64* %PC.i525
  %2875 = add i64 %2874, 3
  store i64 %2875, i64* %PC.i525
  store i64 %2873, i64* %RDX.i527, align 8
  store %struct.Memory* %loadMem_446bdc, %struct.Memory** %MEMORY
  %loadMem1_446bdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2877 = getelementptr inbounds %struct.GPR, %struct.GPR* %2876, i32 0, i32 33
  %2878 = getelementptr inbounds %struct.Reg, %struct.Reg* %2877, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %2878 to i64*
  %2879 = load i64, i64* %PC.i524
  %2880 = add i64 %2879, 1169
  %2881 = load i64, i64* %PC.i524
  %2882 = add i64 %2881, 5
  %2883 = load i64, i64* %PC.i524
  %2884 = add i64 %2883, 5
  store i64 %2884, i64* %PC.i524
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2886 = load i64, i64* %2885, align 8
  %2887 = add i64 %2886, -8
  %2888 = inttoptr i64 %2887 to i64*
  store i64 %2882, i64* %2888
  store i64 %2887, i64* %2885, align 8
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2880, i64* %2889, align 8
  store %struct.Memory* %loadMem1_446bdf, %struct.Memory** %MEMORY
  %loadMem2_446bdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446bdf = load i64, i64* %3
  %call2_446bdf = call %struct.Memory* @sub_447070.read_offset(%struct.State* %0, i64 %loadPC_446bdf, %struct.Memory* %loadMem2_446bdf)
  store %struct.Memory* %call2_446bdf, %struct.Memory** %MEMORY
  %loadMem_446be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 33
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %2892 to i64*
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2894 = getelementptr inbounds %struct.GPR, %struct.GPR* %2893, i32 0, i32 1
  %2895 = getelementptr inbounds %struct.Reg, %struct.Reg* %2894, i32 0, i32 0
  %EAX.i523 = bitcast %union.anon* %2895 to i32*
  %2896 = load i32, i32* %EAX.i523
  %2897 = zext i32 %2896 to i64
  %2898 = load i64, i64* %PC.i522
  %2899 = add i64 %2898, 3
  store i64 %2899, i64* %PC.i522
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2900, align 1
  %2901 = and i32 %2896, 255
  %2902 = call i32 @llvm.ctpop.i32(i32 %2901)
  %2903 = trunc i32 %2902 to i8
  %2904 = and i8 %2903, 1
  %2905 = xor i8 %2904, 1
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2905, i8* %2906, align 1
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2907, align 1
  %2908 = icmp eq i32 %2896, 0
  %2909 = zext i1 %2908 to i8
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2909, i8* %2910, align 1
  %2911 = lshr i32 %2896, 31
  %2912 = trunc i32 %2911 to i8
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2912, i8* %2913, align 1
  %2914 = lshr i32 %2896, 31
  %2915 = xor i32 %2911, %2914
  %2916 = add i32 %2915, %2914
  %2917 = icmp eq i32 %2916, 2
  %2918 = zext i1 %2917 to i8
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2918, i8* %2919, align 1
  store %struct.Memory* %loadMem_446be4, %struct.Memory** %MEMORY
  %loadMem_446be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 33
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %2922 to i64*
  %2923 = load i64, i64* %PC.i521
  %2924 = add i64 %2923, 11
  %2925 = load i64, i64* %PC.i521
  %2926 = add i64 %2925, 6
  %2927 = load i64, i64* %PC.i521
  %2928 = add i64 %2927, 6
  store i64 %2928, i64* %PC.i521
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2930 = load i8, i8* %2929, align 1
  %2931 = icmp eq i8 %2930, 0
  %2932 = zext i1 %2931 to i8
  store i8 %2932, i8* %BRANCH_TAKEN, align 1
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2934 = select i1 %2931, i64 %2924, i64 %2926
  store i64 %2934, i64* %2933, align 8
  store %struct.Memory* %loadMem_446be7, %struct.Memory** %MEMORY
  %loadBr_446be7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446be7 = icmp eq i8 %loadBr_446be7, 1
  br i1 %cmpBr_446be7, label %block_.L_446bf2, label %block_446bed

block_446bed:                                     ; preds = %block_.L_446bc3
  %loadMem_446bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2936 = getelementptr inbounds %struct.GPR, %struct.GPR* %2935, i32 0, i32 33
  %2937 = getelementptr inbounds %struct.Reg, %struct.Reg* %2936, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %2937 to i64*
  %2938 = load i64, i64* %PC.i520
  %2939 = add i64 %2938, 895
  %2940 = load i64, i64* %PC.i520
  %2941 = add i64 %2940, 5
  store i64 %2941, i64* %PC.i520
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2939, i64* %2942, align 8
  store %struct.Memory* %loadMem_446bed, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446bf2:                                  ; preds = %block_.L_446bc3
  %loadMem_446bf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2944 = getelementptr inbounds %struct.GPR, %struct.GPR* %2943, i32 0, i32 33
  %2945 = getelementptr inbounds %struct.Reg, %struct.Reg* %2944, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %2945 to i64*
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 1
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %RAX.i518 = bitcast %union.anon* %2948 to i64*
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2950 = getelementptr inbounds %struct.GPR, %struct.GPR* %2949, i32 0, i32 15
  %2951 = getelementptr inbounds %struct.Reg, %struct.Reg* %2950, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %2951 to i64*
  %2952 = load i64, i64* %RBP.i519
  %2953 = sub i64 %2952, 16
  %2954 = load i64, i64* %PC.i517
  %2955 = add i64 %2954, 4
  store i64 %2955, i64* %PC.i517
  %2956 = inttoptr i64 %2953 to i64*
  %2957 = load i64, i64* %2956
  store i64 %2957, i64* %RAX.i518, align 8
  store %struct.Memory* %loadMem_446bf2, %struct.Memory** %MEMORY
  %loadMem_446bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2959 = getelementptr inbounds %struct.GPR, %struct.GPR* %2958, i32 0, i32 33
  %2960 = getelementptr inbounds %struct.Reg, %struct.Reg* %2959, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %2960 to i64*
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 1
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %RAX.i515 = bitcast %union.anon* %2963 to i64*
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2965 = getelementptr inbounds %struct.GPR, %struct.GPR* %2964, i32 0, i32 11
  %2966 = getelementptr inbounds %struct.Reg, %struct.Reg* %2965, i32 0, i32 0
  %RDI.i516 = bitcast %union.anon* %2966 to i64*
  %2967 = load i64, i64* %RAX.i515
  %2968 = load i64, i64* %PC.i514
  %2969 = add i64 %2968, 3
  store i64 %2969, i64* %PC.i514
  %2970 = inttoptr i64 %2967 to i64*
  %2971 = load i64, i64* %2970
  store i64 %2971, i64* %RDI.i516, align 8
  store %struct.Memory* %loadMem_446bf6, %struct.Memory** %MEMORY
  %loadMem_446bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 33
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %2974 to i64*
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2976 = getelementptr inbounds %struct.GPR, %struct.GPR* %2975, i32 0, i32 1
  %2977 = getelementptr inbounds %struct.Reg, %struct.Reg* %2976, i32 0, i32 0
  %RAX.i512 = bitcast %union.anon* %2977 to i64*
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 15
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %2980 to i64*
  %2981 = load i64, i64* %RBP.i513
  %2982 = sub i64 %2981, 16
  %2983 = load i64, i64* %PC.i511
  %2984 = add i64 %2983, 4
  store i64 %2984, i64* %PC.i511
  %2985 = inttoptr i64 %2982 to i64*
  %2986 = load i64, i64* %2985
  store i64 %2986, i64* %RAX.i512, align 8
  store %struct.Memory* %loadMem_446bf9, %struct.Memory** %MEMORY
  %loadMem_446bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 33
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %2989 to i64*
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2991 = getelementptr inbounds %struct.GPR, %struct.GPR* %2990, i32 0, i32 5
  %2992 = getelementptr inbounds %struct.Reg, %struct.Reg* %2991, i32 0, i32 0
  %2993 = bitcast %union.anon* %2992 to %struct.anon.2*
  %CL.i509 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2993, i32 0, i32 0
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2995 = getelementptr inbounds %struct.GPR, %struct.GPR* %2994, i32 0, i32 1
  %2996 = getelementptr inbounds %struct.Reg, %struct.Reg* %2995, i32 0, i32 0
  %RAX.i510 = bitcast %union.anon* %2996 to i64*
  %2997 = load i64, i64* %RAX.i510
  %2998 = add i64 %2997, 96
  %2999 = load i64, i64* %PC.i508
  %3000 = add i64 %2999, 3
  store i64 %3000, i64* %PC.i508
  %3001 = inttoptr i64 %2998 to i8*
  %3002 = load i8, i8* %3001
  store i8 %3002, i8* %CL.i509, align 1
  store %struct.Memory* %loadMem_446bfd, %struct.Memory** %MEMORY
  %loadMem_446c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 33
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %3005 to i64*
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 1
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %RAX.i506 = bitcast %union.anon* %3008 to i64*
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3010 = getelementptr inbounds %struct.GPR, %struct.GPR* %3009, i32 0, i32 15
  %3011 = getelementptr inbounds %struct.Reg, %struct.Reg* %3010, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %3011 to i64*
  %3012 = load i64, i64* %RBP.i507
  %3013 = sub i64 %3012, 16
  %3014 = load i64, i64* %PC.i505
  %3015 = add i64 %3014, 4
  store i64 %3015, i64* %PC.i505
  %3016 = inttoptr i64 %3013 to i64*
  %3017 = load i64, i64* %3016
  store i64 %3017, i64* %RAX.i506, align 8
  store %struct.Memory* %loadMem_446c00, %struct.Memory** %MEMORY
  %loadMem_446c04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3019 = getelementptr inbounds %struct.GPR, %struct.GPR* %3018, i32 0, i32 33
  %3020 = getelementptr inbounds %struct.Reg, %struct.Reg* %3019, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %3020 to i64*
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3022 = getelementptr inbounds %struct.GPR, %struct.GPR* %3021, i32 0, i32 1
  %3023 = getelementptr inbounds %struct.Reg, %struct.Reg* %3022, i32 0, i32 0
  %RAX.i504 = bitcast %union.anon* %3023 to i64*
  %3024 = load i64, i64* %RAX.i504
  %3025 = load i64, i64* %PC.i503
  %3026 = add i64 %3025, 4
  store i64 %3026, i64* %PC.i503
  %3027 = add i64 64, %3024
  store i64 %3027, i64* %RAX.i504, align 8
  %3028 = icmp ult i64 %3027, %3024
  %3029 = icmp ult i64 %3027, 64
  %3030 = or i1 %3028, %3029
  %3031 = zext i1 %3030 to i8
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3031, i8* %3032, align 1
  %3033 = trunc i64 %3027 to i32
  %3034 = and i32 %3033, 255
  %3035 = call i32 @llvm.ctpop.i32(i32 %3034)
  %3036 = trunc i32 %3035 to i8
  %3037 = and i8 %3036, 1
  %3038 = xor i8 %3037, 1
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3038, i8* %3039, align 1
  %3040 = xor i64 64, %3024
  %3041 = xor i64 %3040, %3027
  %3042 = lshr i64 %3041, 4
  %3043 = trunc i64 %3042 to i8
  %3044 = and i8 %3043, 1
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3044, i8* %3045, align 1
  %3046 = icmp eq i64 %3027, 0
  %3047 = zext i1 %3046 to i8
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3047, i8* %3048, align 1
  %3049 = lshr i64 %3027, 63
  %3050 = trunc i64 %3049 to i8
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3050, i8* %3051, align 1
  %3052 = lshr i64 %3024, 63
  %3053 = xor i64 %3049, %3052
  %3054 = add i64 %3053, %3049
  %3055 = icmp eq i64 %3054, 2
  %3056 = zext i1 %3055 to i8
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3056, i8* %3057, align 1
  store %struct.Memory* %loadMem_446c04, %struct.Memory** %MEMORY
  %loadMem_446c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3059 = getelementptr inbounds %struct.GPR, %struct.GPR* %3058, i32 0, i32 33
  %3060 = getelementptr inbounds %struct.Reg, %struct.Reg* %3059, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %3060 to i64*
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 5
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %3064 = bitcast %union.anon* %3063 to %struct.anon.2*
  %CL.i501 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3064, i32 0, i32 0
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 9
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %RSI.i502 = bitcast %union.anon* %3067 to i64*
  %3068 = load i8, i8* %CL.i501
  %3069 = zext i8 %3068 to i64
  %3070 = load i64, i64* %PC.i500
  %3071 = add i64 %3070, 3
  store i64 %3071, i64* %PC.i500
  %3072 = trunc i64 %3069 to i32
  %3073 = shl i32 %3072, 24
  %3074 = ashr exact i32 %3073, 24
  %3075 = zext i32 %3074 to i64
  store i64 %3075, i64* %RSI.i502, align 8
  store %struct.Memory* %loadMem_446c08, %struct.Memory** %MEMORY
  %loadMem_446c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3077 = getelementptr inbounds %struct.GPR, %struct.GPR* %3076, i32 0, i32 33
  %3078 = getelementptr inbounds %struct.Reg, %struct.Reg* %3077, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %3078 to i64*
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3080 = getelementptr inbounds %struct.GPR, %struct.GPR* %3079, i32 0, i32 1
  %3081 = getelementptr inbounds %struct.Reg, %struct.Reg* %3080, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %3081 to i64*
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 7
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %RDX.i499 = bitcast %union.anon* %3084 to i64*
  %3085 = load i64, i64* %RAX.i498
  %3086 = load i64, i64* %PC.i497
  %3087 = add i64 %3086, 3
  store i64 %3087, i64* %PC.i497
  store i64 %3085, i64* %RDX.i499, align 8
  store %struct.Memory* %loadMem_446c0b, %struct.Memory** %MEMORY
  %loadMem1_446c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 33
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %3090 to i64*
  %3091 = load i64, i64* %PC.i496
  %3092 = add i64 %3091, 1122
  %3093 = load i64, i64* %PC.i496
  %3094 = add i64 %3093, 5
  %3095 = load i64, i64* %PC.i496
  %3096 = add i64 %3095, 5
  store i64 %3096, i64* %PC.i496
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3098 = load i64, i64* %3097, align 8
  %3099 = add i64 %3098, -8
  %3100 = inttoptr i64 %3099 to i64*
  store i64 %3094, i64* %3100
  store i64 %3099, i64* %3097, align 8
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3092, i64* %3101, align 8
  store %struct.Memory* %loadMem1_446c0e, %struct.Memory** %MEMORY
  %loadMem2_446c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446c0e = load i64, i64* %3
  %call2_446c0e = call %struct.Memory* @sub_447070.read_offset(%struct.State* %0, i64 %loadPC_446c0e, %struct.Memory* %loadMem2_446c0e)
  store %struct.Memory* %call2_446c0e, %struct.Memory** %MEMORY
  %loadMem_446c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3103 = getelementptr inbounds %struct.GPR, %struct.GPR* %3102, i32 0, i32 33
  %3104 = getelementptr inbounds %struct.Reg, %struct.Reg* %3103, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %3104 to i64*
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3106 = getelementptr inbounds %struct.GPR, %struct.GPR* %3105, i32 0, i32 1
  %3107 = getelementptr inbounds %struct.Reg, %struct.Reg* %3106, i32 0, i32 0
  %EAX.i495 = bitcast %union.anon* %3107 to i32*
  %3108 = load i32, i32* %EAX.i495
  %3109 = zext i32 %3108 to i64
  %3110 = load i64, i64* %PC.i494
  %3111 = add i64 %3110, 3
  store i64 %3111, i64* %PC.i494
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3112, align 1
  %3113 = and i32 %3108, 255
  %3114 = call i32 @llvm.ctpop.i32(i32 %3113)
  %3115 = trunc i32 %3114 to i8
  %3116 = and i8 %3115, 1
  %3117 = xor i8 %3116, 1
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3117, i8* %3118, align 1
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3119, align 1
  %3120 = icmp eq i32 %3108, 0
  %3121 = zext i1 %3120 to i8
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3121, i8* %3122, align 1
  %3123 = lshr i32 %3108, 31
  %3124 = trunc i32 %3123 to i8
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3124, i8* %3125, align 1
  %3126 = lshr i32 %3108, 31
  %3127 = xor i32 %3123, %3126
  %3128 = add i32 %3127, %3126
  %3129 = icmp eq i32 %3128, 2
  %3130 = zext i1 %3129 to i8
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3130, i8* %3131, align 1
  store %struct.Memory* %loadMem_446c13, %struct.Memory** %MEMORY
  %loadMem_446c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3133 = getelementptr inbounds %struct.GPR, %struct.GPR* %3132, i32 0, i32 33
  %3134 = getelementptr inbounds %struct.Reg, %struct.Reg* %3133, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %3134 to i64*
  %3135 = load i64, i64* %PC.i493
  %3136 = add i64 %3135, 11
  %3137 = load i64, i64* %PC.i493
  %3138 = add i64 %3137, 6
  %3139 = load i64, i64* %PC.i493
  %3140 = add i64 %3139, 6
  store i64 %3140, i64* %PC.i493
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3142 = load i8, i8* %3141, align 1
  %3143 = icmp eq i8 %3142, 0
  %3144 = zext i1 %3143 to i8
  store i8 %3144, i8* %BRANCH_TAKEN, align 1
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3146 = select i1 %3143, i64 %3136, i64 %3138
  store i64 %3146, i64* %3145, align 8
  store %struct.Memory* %loadMem_446c16, %struct.Memory** %MEMORY
  %loadBr_446c16 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446c16 = icmp eq i8 %loadBr_446c16, 1
  br i1 %cmpBr_446c16, label %block_.L_446c21, label %block_446c1c

block_446c1c:                                     ; preds = %block_.L_446bf2
  %loadMem_446c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3148 = getelementptr inbounds %struct.GPR, %struct.GPR* %3147, i32 0, i32 33
  %3149 = getelementptr inbounds %struct.Reg, %struct.Reg* %3148, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %3149 to i64*
  %3150 = load i64, i64* %PC.i492
  %3151 = add i64 %3150, 848
  %3152 = load i64, i64* %PC.i492
  %3153 = add i64 %3152, 5
  store i64 %3153, i64* %PC.i492
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3151, i64* %3154, align 8
  store %struct.Memory* %loadMem_446c1c, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446c21:                                  ; preds = %block_.L_446bf2
  %loadMem_446c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 33
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %3157 to i64*
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3159 = getelementptr inbounds %struct.GPR, %struct.GPR* %3158, i32 0, i32 1
  %3160 = getelementptr inbounds %struct.Reg, %struct.Reg* %3159, i32 0, i32 0
  %RAX.i490 = bitcast %union.anon* %3160 to i64*
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3162 = getelementptr inbounds %struct.GPR, %struct.GPR* %3161, i32 0, i32 15
  %3163 = getelementptr inbounds %struct.Reg, %struct.Reg* %3162, i32 0, i32 0
  %RBP.i491 = bitcast %union.anon* %3163 to i64*
  %3164 = load i64, i64* %RBP.i491
  %3165 = sub i64 %3164, 16
  %3166 = load i64, i64* %PC.i489
  %3167 = add i64 %3166, 4
  store i64 %3167, i64* %PC.i489
  %3168 = inttoptr i64 %3165 to i64*
  %3169 = load i64, i64* %3168
  store i64 %3169, i64* %RAX.i490, align 8
  store %struct.Memory* %loadMem_446c21, %struct.Memory** %MEMORY
  %loadMem_446c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3171 = getelementptr inbounds %struct.GPR, %struct.GPR* %3170, i32 0, i32 33
  %3172 = getelementptr inbounds %struct.Reg, %struct.Reg* %3171, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %3172 to i64*
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3174 = getelementptr inbounds %struct.GPR, %struct.GPR* %3173, i32 0, i32 1
  %3175 = getelementptr inbounds %struct.Reg, %struct.Reg* %3174, i32 0, i32 0
  %RAX.i487 = bitcast %union.anon* %3175 to i64*
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3177 = getelementptr inbounds %struct.GPR, %struct.GPR* %3176, i32 0, i32 11
  %3178 = getelementptr inbounds %struct.Reg, %struct.Reg* %3177, i32 0, i32 0
  %RDI.i488 = bitcast %union.anon* %3178 to i64*
  %3179 = load i64, i64* %RAX.i487
  %3180 = load i64, i64* %PC.i486
  %3181 = add i64 %3180, 3
  store i64 %3181, i64* %PC.i486
  %3182 = inttoptr i64 %3179 to i64*
  %3183 = load i64, i64* %3182
  store i64 %3183, i64* %RDI.i488, align 8
  store %struct.Memory* %loadMem_446c25, %struct.Memory** %MEMORY
  %loadMem_446c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3185 = getelementptr inbounds %struct.GPR, %struct.GPR* %3184, i32 0, i32 33
  %3186 = getelementptr inbounds %struct.Reg, %struct.Reg* %3185, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %3186 to i64*
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3188 = getelementptr inbounds %struct.GPR, %struct.GPR* %3187, i32 0, i32 1
  %3189 = getelementptr inbounds %struct.Reg, %struct.Reg* %3188, i32 0, i32 0
  %RAX.i484 = bitcast %union.anon* %3189 to i64*
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 15
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %RBP.i485 = bitcast %union.anon* %3192 to i64*
  %3193 = load i64, i64* %RBP.i485
  %3194 = sub i64 %3193, 16
  %3195 = load i64, i64* %PC.i483
  %3196 = add i64 %3195, 4
  store i64 %3196, i64* %PC.i483
  %3197 = inttoptr i64 %3194 to i64*
  %3198 = load i64, i64* %3197
  store i64 %3198, i64* %RAX.i484, align 8
  store %struct.Memory* %loadMem_446c28, %struct.Memory** %MEMORY
  %loadMem_446c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3200 = getelementptr inbounds %struct.GPR, %struct.GPR* %3199, i32 0, i32 33
  %3201 = getelementptr inbounds %struct.Reg, %struct.Reg* %3200, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %3201 to i64*
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3203 = getelementptr inbounds %struct.GPR, %struct.GPR* %3202, i32 0, i32 5
  %3204 = getelementptr inbounds %struct.Reg, %struct.Reg* %3203, i32 0, i32 0
  %3205 = bitcast %union.anon* %3204 to %struct.anon.2*
  %CL.i481 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3205, i32 0, i32 0
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3207 = getelementptr inbounds %struct.GPR, %struct.GPR* %3206, i32 0, i32 1
  %3208 = getelementptr inbounds %struct.Reg, %struct.Reg* %3207, i32 0, i32 0
  %RAX.i482 = bitcast %union.anon* %3208 to i64*
  %3209 = load i64, i64* %RAX.i482
  %3210 = add i64 %3209, 96
  %3211 = load i64, i64* %PC.i480
  %3212 = add i64 %3211, 3
  store i64 %3212, i64* %PC.i480
  %3213 = inttoptr i64 %3210 to i8*
  %3214 = load i8, i8* %3213
  store i8 %3214, i8* %CL.i481, align 1
  store %struct.Memory* %loadMem_446c2c, %struct.Memory** %MEMORY
  %loadMem_446c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3216 = getelementptr inbounds %struct.GPR, %struct.GPR* %3215, i32 0, i32 33
  %3217 = getelementptr inbounds %struct.Reg, %struct.Reg* %3216, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %3217 to i64*
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3219 = getelementptr inbounds %struct.GPR, %struct.GPR* %3218, i32 0, i32 1
  %3220 = getelementptr inbounds %struct.Reg, %struct.Reg* %3219, i32 0, i32 0
  %RAX.i478 = bitcast %union.anon* %3220 to i64*
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3222 = getelementptr inbounds %struct.GPR, %struct.GPR* %3221, i32 0, i32 15
  %3223 = getelementptr inbounds %struct.Reg, %struct.Reg* %3222, i32 0, i32 0
  %RBP.i479 = bitcast %union.anon* %3223 to i64*
  %3224 = load i64, i64* %RBP.i479
  %3225 = sub i64 %3224, 16
  %3226 = load i64, i64* %PC.i477
  %3227 = add i64 %3226, 4
  store i64 %3227, i64* %PC.i477
  %3228 = inttoptr i64 %3225 to i64*
  %3229 = load i64, i64* %3228
  store i64 %3229, i64* %RAX.i478, align 8
  store %struct.Memory* %loadMem_446c2f, %struct.Memory** %MEMORY
  %loadMem_446c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3231 = getelementptr inbounds %struct.GPR, %struct.GPR* %3230, i32 0, i32 33
  %3232 = getelementptr inbounds %struct.Reg, %struct.Reg* %3231, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %3232 to i64*
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3234 = getelementptr inbounds %struct.GPR, %struct.GPR* %3233, i32 0, i32 1
  %3235 = getelementptr inbounds %struct.Reg, %struct.Reg* %3234, i32 0, i32 0
  %RAX.i476 = bitcast %union.anon* %3235 to i64*
  %3236 = load i64, i64* %RAX.i476
  %3237 = load i64, i64* %PC.i475
  %3238 = add i64 %3237, 4
  store i64 %3238, i64* %PC.i475
  %3239 = add i64 80, %3236
  store i64 %3239, i64* %RAX.i476, align 8
  %3240 = icmp ult i64 %3239, %3236
  %3241 = icmp ult i64 %3239, 80
  %3242 = or i1 %3240, %3241
  %3243 = zext i1 %3242 to i8
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3243, i8* %3244, align 1
  %3245 = trunc i64 %3239 to i32
  %3246 = and i32 %3245, 255
  %3247 = call i32 @llvm.ctpop.i32(i32 %3246)
  %3248 = trunc i32 %3247 to i8
  %3249 = and i8 %3248, 1
  %3250 = xor i8 %3249, 1
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3250, i8* %3251, align 1
  %3252 = xor i64 80, %3236
  %3253 = xor i64 %3252, %3239
  %3254 = lshr i64 %3253, 4
  %3255 = trunc i64 %3254 to i8
  %3256 = and i8 %3255, 1
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3256, i8* %3257, align 1
  %3258 = icmp eq i64 %3239, 0
  %3259 = zext i1 %3258 to i8
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3259, i8* %3260, align 1
  %3261 = lshr i64 %3239, 63
  %3262 = trunc i64 %3261 to i8
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3262, i8* %3263, align 1
  %3264 = lshr i64 %3236, 63
  %3265 = xor i64 %3261, %3264
  %3266 = add i64 %3265, %3261
  %3267 = icmp eq i64 %3266, 2
  %3268 = zext i1 %3267 to i8
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3268, i8* %3269, align 1
  store %struct.Memory* %loadMem_446c33, %struct.Memory** %MEMORY
  %loadMem_446c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 33
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %3272 to i64*
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3274 = getelementptr inbounds %struct.GPR, %struct.GPR* %3273, i32 0, i32 5
  %3275 = getelementptr inbounds %struct.Reg, %struct.Reg* %3274, i32 0, i32 0
  %3276 = bitcast %union.anon* %3275 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3276, i32 0, i32 0
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3278 = getelementptr inbounds %struct.GPR, %struct.GPR* %3277, i32 0, i32 9
  %3279 = getelementptr inbounds %struct.Reg, %struct.Reg* %3278, i32 0, i32 0
  %RSI.i474 = bitcast %union.anon* %3279 to i64*
  %3280 = load i8, i8* %CL.i
  %3281 = zext i8 %3280 to i64
  %3282 = load i64, i64* %PC.i473
  %3283 = add i64 %3282, 3
  store i64 %3283, i64* %PC.i473
  %3284 = trunc i64 %3281 to i32
  %3285 = shl i32 %3284, 24
  %3286 = ashr exact i32 %3285, 24
  %3287 = zext i32 %3286 to i64
  store i64 %3287, i64* %RSI.i474, align 8
  store %struct.Memory* %loadMem_446c37, %struct.Memory** %MEMORY
  %loadMem_446c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 33
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %3290 to i64*
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 1
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %RAX.i471 = bitcast %union.anon* %3293 to i64*
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 7
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %RDX.i472 = bitcast %union.anon* %3296 to i64*
  %3297 = load i64, i64* %RAX.i471
  %3298 = load i64, i64* %PC.i470
  %3299 = add i64 %3298, 3
  store i64 %3299, i64* %PC.i470
  store i64 %3297, i64* %RDX.i472, align 8
  store %struct.Memory* %loadMem_446c3a, %struct.Memory** %MEMORY
  %loadMem1_446c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3301 = getelementptr inbounds %struct.GPR, %struct.GPR* %3300, i32 0, i32 33
  %3302 = getelementptr inbounds %struct.Reg, %struct.Reg* %3301, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %3302 to i64*
  %3303 = load i64, i64* %PC.i469
  %3304 = add i64 %3303, 1075
  %3305 = load i64, i64* %PC.i469
  %3306 = add i64 %3305, 5
  %3307 = load i64, i64* %PC.i469
  %3308 = add i64 %3307, 5
  store i64 %3308, i64* %PC.i469
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3310 = load i64, i64* %3309, align 8
  %3311 = add i64 %3310, -8
  %3312 = inttoptr i64 %3311 to i64*
  store i64 %3306, i64* %3312
  store i64 %3311, i64* %3309, align 8
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3304, i64* %3313, align 8
  store %struct.Memory* %loadMem1_446c3d, %struct.Memory** %MEMORY
  %loadMem2_446c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446c3d = load i64, i64* %3
  %call2_446c3d = call %struct.Memory* @sub_447070.read_offset(%struct.State* %0, i64 %loadPC_446c3d, %struct.Memory* %loadMem2_446c3d)
  store %struct.Memory* %call2_446c3d, %struct.Memory** %MEMORY
  %loadMem_446c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3315 = getelementptr inbounds %struct.GPR, %struct.GPR* %3314, i32 0, i32 33
  %3316 = getelementptr inbounds %struct.Reg, %struct.Reg* %3315, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %3316 to i64*
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3318 = getelementptr inbounds %struct.GPR, %struct.GPR* %3317, i32 0, i32 1
  %3319 = getelementptr inbounds %struct.Reg, %struct.Reg* %3318, i32 0, i32 0
  %EAX.i468 = bitcast %union.anon* %3319 to i32*
  %3320 = load i32, i32* %EAX.i468
  %3321 = zext i32 %3320 to i64
  %3322 = load i64, i64* %PC.i467
  %3323 = add i64 %3322, 3
  store i64 %3323, i64* %PC.i467
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3324, align 1
  %3325 = and i32 %3320, 255
  %3326 = call i32 @llvm.ctpop.i32(i32 %3325)
  %3327 = trunc i32 %3326 to i8
  %3328 = and i8 %3327, 1
  %3329 = xor i8 %3328, 1
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3329, i8* %3330, align 1
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3331, align 1
  %3332 = icmp eq i32 %3320, 0
  %3333 = zext i1 %3332 to i8
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3333, i8* %3334, align 1
  %3335 = lshr i32 %3320, 31
  %3336 = trunc i32 %3335 to i8
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3336, i8* %3337, align 1
  %3338 = lshr i32 %3320, 31
  %3339 = xor i32 %3335, %3338
  %3340 = add i32 %3339, %3338
  %3341 = icmp eq i32 %3340, 2
  %3342 = zext i1 %3341 to i8
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3342, i8* %3343, align 1
  store %struct.Memory* %loadMem_446c42, %struct.Memory** %MEMORY
  %loadMem_446c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 33
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %3346 to i64*
  %3347 = load i64, i64* %PC.i466
  %3348 = add i64 %3347, 11
  %3349 = load i64, i64* %PC.i466
  %3350 = add i64 %3349, 6
  %3351 = load i64, i64* %PC.i466
  %3352 = add i64 %3351, 6
  store i64 %3352, i64* %PC.i466
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3354 = load i8, i8* %3353, align 1
  %3355 = icmp eq i8 %3354, 0
  %3356 = zext i1 %3355 to i8
  store i8 %3356, i8* %BRANCH_TAKEN, align 1
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3358 = select i1 %3355, i64 %3348, i64 %3350
  store i64 %3358, i64* %3357, align 8
  store %struct.Memory* %loadMem_446c45, %struct.Memory** %MEMORY
  %loadBr_446c45 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446c45 = icmp eq i8 %loadBr_446c45, 1
  br i1 %cmpBr_446c45, label %block_.L_446c50, label %block_446c4b

block_446c4b:                                     ; preds = %block_.L_446c21
  %loadMem_446c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3360 = getelementptr inbounds %struct.GPR, %struct.GPR* %3359, i32 0, i32 33
  %3361 = getelementptr inbounds %struct.Reg, %struct.Reg* %3360, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %3361 to i64*
  %3362 = load i64, i64* %PC.i465
  %3363 = add i64 %3362, 801
  %3364 = load i64, i64* %PC.i465
  %3365 = add i64 %3364, 5
  store i64 %3365, i64* %PC.i465
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3363, i64* %3366, align 8
  store %struct.Memory* %loadMem_446c4b, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446c50:                                  ; preds = %block_.L_446c21
  %loadMem_446c50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3368 = getelementptr inbounds %struct.GPR, %struct.GPR* %3367, i32 0, i32 33
  %3369 = getelementptr inbounds %struct.Reg, %struct.Reg* %3368, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %3369 to i64*
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 1
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %RAX.i463 = bitcast %union.anon* %3372 to i64*
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 15
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %3375 to i64*
  %3376 = load i64, i64* %RBP.i464
  %3377 = sub i64 %3376, 16
  %3378 = load i64, i64* %PC.i462
  %3379 = add i64 %3378, 4
  store i64 %3379, i64* %PC.i462
  %3380 = inttoptr i64 %3377 to i64*
  %3381 = load i64, i64* %3380
  store i64 %3381, i64* %RAX.i463, align 8
  store %struct.Memory* %loadMem_446c50, %struct.Memory** %MEMORY
  %loadMem_446c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3383 = getelementptr inbounds %struct.GPR, %struct.GPR* %3382, i32 0, i32 33
  %3384 = getelementptr inbounds %struct.Reg, %struct.Reg* %3383, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %3384 to i64*
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3386 = getelementptr inbounds %struct.GPR, %struct.GPR* %3385, i32 0, i32 1
  %3387 = getelementptr inbounds %struct.Reg, %struct.Reg* %3386, i32 0, i32 0
  %RAX.i460 = bitcast %union.anon* %3387 to i64*
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3389 = getelementptr inbounds %struct.GPR, %struct.GPR* %3388, i32 0, i32 5
  %3390 = getelementptr inbounds %struct.Reg, %struct.Reg* %3389, i32 0, i32 0
  %RCX.i461 = bitcast %union.anon* %3390 to i64*
  %3391 = load i64, i64* %RAX.i460
  %3392 = add i64 %3391, 12
  %3393 = load i64, i64* %PC.i459
  %3394 = add i64 %3393, 4
  store i64 %3394, i64* %PC.i459
  %3395 = inttoptr i64 %3392 to i16*
  %3396 = load i16, i16* %3395
  %3397 = zext i16 %3396 to i64
  store i64 %3397, i64* %RCX.i461, align 8
  store %struct.Memory* %loadMem_446c54, %struct.Memory** %MEMORY
  %loadMem_446c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3399 = getelementptr inbounds %struct.GPR, %struct.GPR* %3398, i32 0, i32 33
  %3400 = getelementptr inbounds %struct.Reg, %struct.Reg* %3399, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %3400 to i64*
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3402 = getelementptr inbounds %struct.GPR, %struct.GPR* %3401, i32 0, i32 5
  %3403 = getelementptr inbounds %struct.Reg, %struct.Reg* %3402, i32 0, i32 0
  %ECX.i458 = bitcast %union.anon* %3403 to i32*
  %3404 = load i32, i32* %ECX.i458
  %3405 = zext i32 %3404 to i64
  %3406 = load i64, i64* %PC.i457
  %3407 = add i64 %3406, 3
  store i64 %3407, i64* %PC.i457
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3408, align 1
  %3409 = and i32 %3404, 255
  %3410 = call i32 @llvm.ctpop.i32(i32 %3409)
  %3411 = trunc i32 %3410 to i8
  %3412 = and i8 %3411, 1
  %3413 = xor i8 %3412, 1
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3413, i8* %3414, align 1
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3415, align 1
  %3416 = icmp eq i32 %3404, 0
  %3417 = zext i1 %3416 to i8
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3417, i8* %3418, align 1
  %3419 = lshr i32 %3404, 31
  %3420 = trunc i32 %3419 to i8
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3420, i8* %3421, align 1
  %3422 = lshr i32 %3404, 31
  %3423 = xor i32 %3419, %3422
  %3424 = add i32 %3423, %3422
  %3425 = icmp eq i32 %3424, 2
  %3426 = zext i1 %3425 to i8
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3426, i8* %3427, align 1
  store %struct.Memory* %loadMem_446c58, %struct.Memory** %MEMORY
  %loadMem_446c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3429 = getelementptr inbounds %struct.GPR, %struct.GPR* %3428, i32 0, i32 33
  %3430 = getelementptr inbounds %struct.Reg, %struct.Reg* %3429, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %3430 to i64*
  %3431 = load i64, i64* %PC.i456
  %3432 = add i64 %3431, 11
  %3433 = load i64, i64* %PC.i456
  %3434 = add i64 %3433, 6
  %3435 = load i64, i64* %PC.i456
  %3436 = add i64 %3435, 6
  store i64 %3436, i64* %PC.i456
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3438 = load i8, i8* %3437, align 1
  %3439 = icmp eq i8 %3438, 0
  %3440 = zext i1 %3439 to i8
  store i8 %3440, i8* %BRANCH_TAKEN, align 1
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3442 = select i1 %3439, i64 %3432, i64 %3434
  store i64 %3442, i64* %3441, align 8
  store %struct.Memory* %loadMem_446c5b, %struct.Memory** %MEMORY
  %loadBr_446c5b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446c5b = icmp eq i8 %loadBr_446c5b, 1
  br i1 %cmpBr_446c5b, label %block_.L_446c66, label %block_446c61

block_446c61:                                     ; preds = %block_.L_446c50
  %loadMem_446c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 33
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %3445 to i64*
  %3446 = load i64, i64* %PC.i455
  %3447 = add i64 %3446, 779
  %3448 = load i64, i64* %PC.i455
  %3449 = add i64 %3448, 5
  store i64 %3449, i64* %PC.i455
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3447, i64* %3450, align 8
  store %struct.Memory* %loadMem_446c61, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446c66:                                  ; preds = %block_.L_446c50
  %loadMem_446c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 33
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %3453 to i64*
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3455 = getelementptr inbounds %struct.GPR, %struct.GPR* %3454, i32 0, i32 1
  %3456 = getelementptr inbounds %struct.Reg, %struct.Reg* %3455, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %3456 to i64*
  %3457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3458 = getelementptr inbounds %struct.GPR, %struct.GPR* %3457, i32 0, i32 15
  %3459 = getelementptr inbounds %struct.Reg, %struct.Reg* %3458, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %3459 to i64*
  %3460 = load i64, i64* %RBP.i454
  %3461 = sub i64 %3460, 16
  %3462 = load i64, i64* %PC.i452
  %3463 = add i64 %3462, 4
  store i64 %3463, i64* %PC.i452
  %3464 = inttoptr i64 %3461 to i64*
  %3465 = load i64, i64* %3464
  store i64 %3465, i64* %RAX.i453, align 8
  store %struct.Memory* %loadMem_446c66, %struct.Memory** %MEMORY
  %loadMem_446c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3467 = getelementptr inbounds %struct.GPR, %struct.GPR* %3466, i32 0, i32 33
  %3468 = getelementptr inbounds %struct.Reg, %struct.Reg* %3467, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %3468 to i64*
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3470 = getelementptr inbounds %struct.GPR, %struct.GPR* %3469, i32 0, i32 1
  %3471 = getelementptr inbounds %struct.Reg, %struct.Reg* %3470, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %3471 to i64*
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3473 = getelementptr inbounds %struct.GPR, %struct.GPR* %3472, i32 0, i32 5
  %3474 = getelementptr inbounds %struct.Reg, %struct.Reg* %3473, i32 0, i32 0
  %RCX.i451 = bitcast %union.anon* %3474 to i64*
  %3475 = load i64, i64* %RAX.i450
  %3476 = add i64 %3475, 12
  %3477 = load i64, i64* %PC.i449
  %3478 = add i64 %3477, 4
  store i64 %3478, i64* %PC.i449
  %3479 = inttoptr i64 %3476 to i16*
  %3480 = load i16, i16* %3479
  %3481 = zext i16 %3480 to i64
  store i64 %3481, i64* %RCX.i451, align 8
  store %struct.Memory* %loadMem_446c6a, %struct.Memory** %MEMORY
  %loadMem_446c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 33
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %3484 to i64*
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3486 = getelementptr inbounds %struct.GPR, %struct.GPR* %3485, i32 0, i32 5
  %3487 = getelementptr inbounds %struct.Reg, %struct.Reg* %3486, i32 0, i32 0
  %ECX.i447 = bitcast %union.anon* %3487 to i32*
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3489 = getelementptr inbounds %struct.GPR, %struct.GPR* %3488, i32 0, i32 1
  %3490 = getelementptr inbounds %struct.Reg, %struct.Reg* %3489, i32 0, i32 0
  %RAX.i448 = bitcast %union.anon* %3490 to i64*
  %3491 = load i32, i32* %ECX.i447
  %3492 = zext i32 %3491 to i64
  %3493 = load i64, i64* %PC.i446
  %3494 = add i64 %3493, 2
  store i64 %3494, i64* %PC.i446
  %3495 = and i64 %3492, 4294967295
  store i64 %3495, i64* %RAX.i448, align 8
  store %struct.Memory* %loadMem_446c6e, %struct.Memory** %MEMORY
  %loadMem_446c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 33
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %3498 to i64*
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3500 = getelementptr inbounds %struct.GPR, %struct.GPR* %3499, i32 0, i32 1
  %3501 = getelementptr inbounds %struct.Reg, %struct.Reg* %3500, i32 0, i32 0
  %RAX.i445 = bitcast %union.anon* %3501 to i64*
  %3502 = load i64, i64* %RAX.i445
  %3503 = load i64, i64* %PC.i444
  %3504 = add i64 %3503, 4
  store i64 %3504, i64* %PC.i444
  %3505 = shl i64 %3502, 2
  %3506 = icmp slt i64 %3505, 0
  %3507 = shl i64 %3505, 1
  store i64 %3507, i64* %RAX.i445, align 8
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3509 = zext i1 %3506 to i8
  store i8 %3509, i8* %3508, align 1
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3511 = trunc i64 %3507 to i32
  %3512 = and i32 %3511, 254
  %3513 = call i32 @llvm.ctpop.i32(i32 %3512)
  %3514 = trunc i32 %3513 to i8
  %3515 = and i8 %3514, 1
  %3516 = xor i8 %3515, 1
  store i8 %3516, i8* %3510, align 1
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3517, align 1
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3519 = icmp eq i64 %3507, 0
  %3520 = zext i1 %3519 to i8
  store i8 %3520, i8* %3518, align 1
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3522 = lshr i64 %3507, 63
  %3523 = trunc i64 %3522 to i8
  store i8 %3523, i8* %3521, align 1
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3524, align 1
  store %struct.Memory* %loadMem_446c70, %struct.Memory** %MEMORY
  %loadMem_446c74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3526 = getelementptr inbounds %struct.GPR, %struct.GPR* %3525, i32 0, i32 33
  %3527 = getelementptr inbounds %struct.Reg, %struct.Reg* %3526, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %3527 to i64*
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3529 = getelementptr inbounds %struct.GPR, %struct.GPR* %3528, i32 0, i32 1
  %3530 = getelementptr inbounds %struct.Reg, %struct.Reg* %3529, i32 0, i32 0
  %RAX.i442 = bitcast %union.anon* %3530 to i64*
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 11
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %RDI.i443 = bitcast %union.anon* %3533 to i64*
  %3534 = load i64, i64* %RAX.i442
  %3535 = load i64, i64* %PC.i441
  %3536 = add i64 %3535, 3
  store i64 %3536, i64* %PC.i441
  store i64 %3534, i64* %RDI.i443, align 8
  store %struct.Memory* %loadMem_446c74, %struct.Memory** %MEMORY
  %loadMem1_446c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3538 = getelementptr inbounds %struct.GPR, %struct.GPR* %3537, i32 0, i32 33
  %3539 = getelementptr inbounds %struct.Reg, %struct.Reg* %3538, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %3539 to i64*
  %3540 = load i64, i64* %PC.i440
  %3541 = add i64 %3540, -284327
  %3542 = load i64, i64* %PC.i440
  %3543 = add i64 %3542, 5
  %3544 = load i64, i64* %PC.i440
  %3545 = add i64 %3544, 5
  store i64 %3545, i64* %PC.i440
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3547 = load i64, i64* %3546, align 8
  %3548 = add i64 %3547, -8
  %3549 = inttoptr i64 %3548 to i64*
  store i64 %3543, i64* %3549
  store i64 %3548, i64* %3546, align 8
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3541, i64* %3550, align 8
  store %struct.Memory* %loadMem1_446c77, %struct.Memory** %MEMORY
  %loadMem2_446c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446c77 = load i64, i64* %3
  %3551 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %loadMem2_446c77)
  store %struct.Memory* %3551, %struct.Memory** %MEMORY
  %loadMem_446c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3553 = getelementptr inbounds %struct.GPR, %struct.GPR* %3552, i32 0, i32 33
  %3554 = getelementptr inbounds %struct.Reg, %struct.Reg* %3553, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %3554 to i64*
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3556 = getelementptr inbounds %struct.GPR, %struct.GPR* %3555, i32 0, i32 11
  %3557 = getelementptr inbounds %struct.Reg, %struct.Reg* %3556, i32 0, i32 0
  %RDI.i435 = bitcast %union.anon* %3557 to i64*
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3559 = getelementptr inbounds %struct.GPR, %struct.GPR* %3558, i32 0, i32 15
  %3560 = getelementptr inbounds %struct.Reg, %struct.Reg* %3559, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %3560 to i64*
  %3561 = load i64, i64* %RBP.i436
  %3562 = sub i64 %3561, 16
  %3563 = load i64, i64* %PC.i434
  %3564 = add i64 %3563, 4
  store i64 %3564, i64* %PC.i434
  %3565 = inttoptr i64 %3562 to i64*
  %3566 = load i64, i64* %3565
  store i64 %3566, i64* %RDI.i435, align 8
  store %struct.Memory* %loadMem_446c7c, %struct.Memory** %MEMORY
  %loadMem_446c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 33
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %3569 to i64*
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3571 = getelementptr inbounds %struct.GPR, %struct.GPR* %3570, i32 0, i32 1
  %3572 = getelementptr inbounds %struct.Reg, %struct.Reg* %3571, i32 0, i32 0
  %RAX.i432 = bitcast %union.anon* %3572 to i64*
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3574 = getelementptr inbounds %struct.GPR, %struct.GPR* %3573, i32 0, i32 11
  %3575 = getelementptr inbounds %struct.Reg, %struct.Reg* %3574, i32 0, i32 0
  %RDI.i433 = bitcast %union.anon* %3575 to i64*
  %3576 = load i64, i64* %RDI.i433
  %3577 = add i64 %3576, 104
  %3578 = load i64, i64* %RAX.i432
  %3579 = load i64, i64* %PC.i431
  %3580 = add i64 %3579, 4
  store i64 %3580, i64* %PC.i431
  %3581 = inttoptr i64 %3577 to i64*
  store i64 %3578, i64* %3581
  store %struct.Memory* %loadMem_446c80, %struct.Memory** %MEMORY
  %loadMem_446c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3583 = getelementptr inbounds %struct.GPR, %struct.GPR* %3582, i32 0, i32 33
  %3584 = getelementptr inbounds %struct.Reg, %struct.Reg* %3583, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %3584 to i64*
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3586 = getelementptr inbounds %struct.GPR, %struct.GPR* %3585, i32 0, i32 1
  %3587 = getelementptr inbounds %struct.Reg, %struct.Reg* %3586, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %3587 to i64*
  %3588 = load i64, i64* %RAX.i430
  %3589 = load i64, i64* %PC.i429
  %3590 = add i64 %3589, 4
  store i64 %3590, i64* %PC.i429
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3591, align 1
  %3592 = trunc i64 %3588 to i32
  %3593 = and i32 %3592, 255
  %3594 = call i32 @llvm.ctpop.i32(i32 %3593)
  %3595 = trunc i32 %3594 to i8
  %3596 = and i8 %3595, 1
  %3597 = xor i8 %3596, 1
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3597, i8* %3598, align 1
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3599, align 1
  %3600 = icmp eq i64 %3588, 0
  %3601 = zext i1 %3600 to i8
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3601, i8* %3602, align 1
  %3603 = lshr i64 %3588, 63
  %3604 = trunc i64 %3603 to i8
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3604, i8* %3605, align 1
  %3606 = lshr i64 %3588, 63
  %3607 = xor i64 %3603, %3606
  %3608 = add i64 %3607, %3606
  %3609 = icmp eq i64 %3608, 2
  %3610 = zext i1 %3609 to i8
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3610, i8* %3611, align 1
  store %struct.Memory* %loadMem_446c84, %struct.Memory** %MEMORY
  %loadMem_446c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3613 = getelementptr inbounds %struct.GPR, %struct.GPR* %3612, i32 0, i32 33
  %3614 = getelementptr inbounds %struct.Reg, %struct.Reg* %3613, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %3614 to i64*
  %3615 = load i64, i64* %PC.i428
  %3616 = add i64 %3615, 18
  %3617 = load i64, i64* %PC.i428
  %3618 = add i64 %3617, 6
  %3619 = load i64, i64* %PC.i428
  %3620 = add i64 %3619, 6
  store i64 %3620, i64* %PC.i428
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3622 = load i8, i8* %3621, align 1
  %3623 = icmp eq i8 %3622, 0
  %3624 = zext i1 %3623 to i8
  store i8 %3624, i8* %BRANCH_TAKEN, align 1
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3626 = select i1 %3623, i64 %3616, i64 %3618
  store i64 %3626, i64* %3625, align 8
  store %struct.Memory* %loadMem_446c88, %struct.Memory** %MEMORY
  %loadBr_446c88 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446c88 = icmp eq i8 %loadBr_446c88, 1
  br i1 %cmpBr_446c88, label %block_.L_446c9a, label %block_446c8e

block_446c8e:                                     ; preds = %block_.L_446c66
  %loadMem_446c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3628 = getelementptr inbounds %struct.GPR, %struct.GPR* %3627, i32 0, i32 33
  %3629 = getelementptr inbounds %struct.Reg, %struct.Reg* %3628, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %3629 to i64*
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3631 = getelementptr inbounds %struct.GPR, %struct.GPR* %3630, i32 0, i32 15
  %3632 = getelementptr inbounds %struct.Reg, %struct.Reg* %3631, i32 0, i32 0
  %RBP.i427 = bitcast %union.anon* %3632 to i64*
  %3633 = load i64, i64* %RBP.i427
  %3634 = sub i64 %3633, 28
  %3635 = load i64, i64* %PC.i426
  %3636 = add i64 %3635, 7
  store i64 %3636, i64* %PC.i426
  %3637 = inttoptr i64 %3634 to i32*
  store i32 3, i32* %3637
  store %struct.Memory* %loadMem_446c8e, %struct.Memory** %MEMORY
  %loadMem_446c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3639 = getelementptr inbounds %struct.GPR, %struct.GPR* %3638, i32 0, i32 33
  %3640 = getelementptr inbounds %struct.Reg, %struct.Reg* %3639, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %3640 to i64*
  %3641 = load i64, i64* %PC.i425
  %3642 = add i64 %3641, 727
  %3643 = load i64, i64* %PC.i425
  %3644 = add i64 %3643, 5
  store i64 %3644, i64* %PC.i425
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3642, i64* %3645, align 8
  store %struct.Memory* %loadMem_446c95, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446c9a:                                  ; preds = %block_.L_446c66
  %loadMem_446c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3647 = getelementptr inbounds %struct.GPR, %struct.GPR* %3646, i32 0, i32 33
  %3648 = getelementptr inbounds %struct.Reg, %struct.Reg* %3647, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %3648 to i64*
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3650 = getelementptr inbounds %struct.GPR, %struct.GPR* %3649, i32 0, i32 15
  %3651 = getelementptr inbounds %struct.Reg, %struct.Reg* %3650, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %3651 to i64*
  %3652 = load i64, i64* %RBP.i424
  %3653 = sub i64 %3652, 22
  %3654 = load i64, i64* %PC.i423
  %3655 = add i64 %3654, 6
  store i64 %3655, i64* %PC.i423
  %3656 = inttoptr i64 %3653 to i16*
  store i16 0, i16* %3656
  store %struct.Memory* %loadMem_446c9a, %struct.Memory** %MEMORY
  br label %block_.L_446ca0

block_.L_446ca0:                                  ; preds = %block_446cb4, %block_.L_446c9a
  %loadMem_446ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3658 = getelementptr inbounds %struct.GPR, %struct.GPR* %3657, i32 0, i32 33
  %3659 = getelementptr inbounds %struct.Reg, %struct.Reg* %3658, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %3659 to i64*
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3661 = getelementptr inbounds %struct.GPR, %struct.GPR* %3660, i32 0, i32 1
  %3662 = getelementptr inbounds %struct.Reg, %struct.Reg* %3661, i32 0, i32 0
  %RAX.i421 = bitcast %union.anon* %3662 to i64*
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3664 = getelementptr inbounds %struct.GPR, %struct.GPR* %3663, i32 0, i32 15
  %3665 = getelementptr inbounds %struct.Reg, %struct.Reg* %3664, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %3665 to i64*
  %3666 = load i64, i64* %RBP.i422
  %3667 = sub i64 %3666, 22
  %3668 = load i64, i64* %PC.i420
  %3669 = add i64 %3668, 4
  store i64 %3669, i64* %PC.i420
  %3670 = inttoptr i64 %3667 to i16*
  %3671 = load i16, i16* %3670
  %3672 = zext i16 %3671 to i64
  store i64 %3672, i64* %RAX.i421, align 8
  store %struct.Memory* %loadMem_446ca0, %struct.Memory** %MEMORY
  %loadMem_446ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 33
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %3675 to i64*
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3677 = getelementptr inbounds %struct.GPR, %struct.GPR* %3676, i32 0, i32 5
  %3678 = getelementptr inbounds %struct.Reg, %struct.Reg* %3677, i32 0, i32 0
  %RCX.i418 = bitcast %union.anon* %3678 to i64*
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3680 = getelementptr inbounds %struct.GPR, %struct.GPR* %3679, i32 0, i32 15
  %3681 = getelementptr inbounds %struct.Reg, %struct.Reg* %3680, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %3681 to i64*
  %3682 = load i64, i64* %RBP.i419
  %3683 = sub i64 %3682, 16
  %3684 = load i64, i64* %PC.i417
  %3685 = add i64 %3684, 4
  store i64 %3685, i64* %PC.i417
  %3686 = inttoptr i64 %3683 to i64*
  %3687 = load i64, i64* %3686
  store i64 %3687, i64* %RCX.i418, align 8
  store %struct.Memory* %loadMem_446ca4, %struct.Memory** %MEMORY
  %loadMem_446ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 33
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %3690 to i64*
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3692 = getelementptr inbounds %struct.GPR, %struct.GPR* %3691, i32 0, i32 5
  %3693 = getelementptr inbounds %struct.Reg, %struct.Reg* %3692, i32 0, i32 0
  %RCX.i415 = bitcast %union.anon* %3693 to i64*
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3695 = getelementptr inbounds %struct.GPR, %struct.GPR* %3694, i32 0, i32 7
  %3696 = getelementptr inbounds %struct.Reg, %struct.Reg* %3695, i32 0, i32 0
  %RDX.i416 = bitcast %union.anon* %3696 to i64*
  %3697 = load i64, i64* %RCX.i415
  %3698 = add i64 %3697, 12
  %3699 = load i64, i64* %PC.i414
  %3700 = add i64 %3699, 4
  store i64 %3700, i64* %PC.i414
  %3701 = inttoptr i64 %3698 to i16*
  %3702 = load i16, i16* %3701
  %3703 = zext i16 %3702 to i64
  store i64 %3703, i64* %RDX.i416, align 8
  store %struct.Memory* %loadMem_446ca8, %struct.Memory** %MEMORY
  %loadMem_446cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3705 = getelementptr inbounds %struct.GPR, %struct.GPR* %3704, i32 0, i32 33
  %3706 = getelementptr inbounds %struct.Reg, %struct.Reg* %3705, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %3706 to i64*
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3708 = getelementptr inbounds %struct.GPR, %struct.GPR* %3707, i32 0, i32 1
  %3709 = getelementptr inbounds %struct.Reg, %struct.Reg* %3708, i32 0, i32 0
  %EAX.i412 = bitcast %union.anon* %3709 to i32*
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3711 = getelementptr inbounds %struct.GPR, %struct.GPR* %3710, i32 0, i32 7
  %3712 = getelementptr inbounds %struct.Reg, %struct.Reg* %3711, i32 0, i32 0
  %EDX.i413 = bitcast %union.anon* %3712 to i32*
  %3713 = load i32, i32* %EAX.i412
  %3714 = zext i32 %3713 to i64
  %3715 = load i32, i32* %EDX.i413
  %3716 = zext i32 %3715 to i64
  %3717 = load i64, i64* %PC.i411
  %3718 = add i64 %3717, 2
  store i64 %3718, i64* %PC.i411
  %3719 = sub i32 %3713, %3715
  %3720 = icmp ult i32 %3713, %3715
  %3721 = zext i1 %3720 to i8
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3721, i8* %3722, align 1
  %3723 = and i32 %3719, 255
  %3724 = call i32 @llvm.ctpop.i32(i32 %3723)
  %3725 = trunc i32 %3724 to i8
  %3726 = and i8 %3725, 1
  %3727 = xor i8 %3726, 1
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3727, i8* %3728, align 1
  %3729 = xor i64 %3716, %3714
  %3730 = trunc i64 %3729 to i32
  %3731 = xor i32 %3730, %3719
  %3732 = lshr i32 %3731, 4
  %3733 = trunc i32 %3732 to i8
  %3734 = and i8 %3733, 1
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3734, i8* %3735, align 1
  %3736 = icmp eq i32 %3719, 0
  %3737 = zext i1 %3736 to i8
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3737, i8* %3738, align 1
  %3739 = lshr i32 %3719, 31
  %3740 = trunc i32 %3739 to i8
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3740, i8* %3741, align 1
  %3742 = lshr i32 %3713, 31
  %3743 = lshr i32 %3715, 31
  %3744 = xor i32 %3743, %3742
  %3745 = xor i32 %3739, %3742
  %3746 = add i32 %3745, %3744
  %3747 = icmp eq i32 %3746, 2
  %3748 = zext i1 %3747 to i8
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3748, i8* %3749, align 1
  store %struct.Memory* %loadMem_446cac, %struct.Memory** %MEMORY
  %loadMem_446cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3751 = getelementptr inbounds %struct.GPR, %struct.GPR* %3750, i32 0, i32 33
  %3752 = getelementptr inbounds %struct.Reg, %struct.Reg* %3751, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %3752 to i64*
  %3753 = load i64, i64* %PC.i410
  %3754 = add i64 %3753, 45
  %3755 = load i64, i64* %PC.i410
  %3756 = add i64 %3755, 6
  %3757 = load i64, i64* %PC.i410
  %3758 = add i64 %3757, 6
  store i64 %3758, i64* %PC.i410
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3760 = load i8, i8* %3759, align 1
  %3761 = icmp ne i8 %3760, 0
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3763 = load i8, i8* %3762, align 1
  %3764 = icmp ne i8 %3763, 0
  %3765 = xor i1 %3761, %3764
  %3766 = xor i1 %3765, true
  %3767 = zext i1 %3766 to i8
  store i8 %3767, i8* %BRANCH_TAKEN, align 1
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3769 = select i1 %3765, i64 %3756, i64 %3754
  store i64 %3769, i64* %3768, align 8
  store %struct.Memory* %loadMem_446cae, %struct.Memory** %MEMORY
  %loadBr_446cae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446cae = icmp eq i8 %loadBr_446cae, 1
  br i1 %cmpBr_446cae, label %block_.L_446cdb, label %block_446cb4

block_446cb4:                                     ; preds = %block_.L_446ca0
  %loadMem_446cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3771 = getelementptr inbounds %struct.GPR, %struct.GPR* %3770, i32 0, i32 33
  %3772 = getelementptr inbounds %struct.Reg, %struct.Reg* %3771, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %3772 to i64*
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3774 = getelementptr inbounds %struct.GPR, %struct.GPR* %3773, i32 0, i32 1
  %3775 = getelementptr inbounds %struct.Reg, %struct.Reg* %3774, i32 0, i32 0
  %RAX.i408 = bitcast %union.anon* %3775 to i64*
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3777 = getelementptr inbounds %struct.GPR, %struct.GPR* %3776, i32 0, i32 15
  %3778 = getelementptr inbounds %struct.Reg, %struct.Reg* %3777, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %3778 to i64*
  %3779 = load i64, i64* %RBP.i409
  %3780 = sub i64 %3779, 16
  %3781 = load i64, i64* %PC.i407
  %3782 = add i64 %3781, 4
  store i64 %3782, i64* %PC.i407
  %3783 = inttoptr i64 %3780 to i64*
  %3784 = load i64, i64* %3783
  store i64 %3784, i64* %RAX.i408, align 8
  store %struct.Memory* %loadMem_446cb4, %struct.Memory** %MEMORY
  %loadMem_446cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3786 = getelementptr inbounds %struct.GPR, %struct.GPR* %3785, i32 0, i32 33
  %3787 = getelementptr inbounds %struct.Reg, %struct.Reg* %3786, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %3787 to i64*
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 1
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %RAX.i406 = bitcast %union.anon* %3790 to i64*
  %3791 = load i64, i64* %RAX.i406
  %3792 = add i64 %3791, 104
  %3793 = load i64, i64* %PC.i405
  %3794 = add i64 %3793, 4
  store i64 %3794, i64* %PC.i405
  %3795 = inttoptr i64 %3792 to i64*
  %3796 = load i64, i64* %3795
  store i64 %3796, i64* %RAX.i406, align 8
  store %struct.Memory* %loadMem_446cb8, %struct.Memory** %MEMORY
  %loadMem_446cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3798 = getelementptr inbounds %struct.GPR, %struct.GPR* %3797, i32 0, i32 33
  %3799 = getelementptr inbounds %struct.Reg, %struct.Reg* %3798, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %3799 to i64*
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3801 = getelementptr inbounds %struct.GPR, %struct.GPR* %3800, i32 0, i32 5
  %3802 = getelementptr inbounds %struct.Reg, %struct.Reg* %3801, i32 0, i32 0
  %RCX.i403 = bitcast %union.anon* %3802 to i64*
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 15
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %3805 to i64*
  %3806 = load i64, i64* %RBP.i404
  %3807 = sub i64 %3806, 22
  %3808 = load i64, i64* %PC.i402
  %3809 = add i64 %3808, 4
  store i64 %3809, i64* %PC.i402
  %3810 = inttoptr i64 %3807 to i16*
  %3811 = load i16, i16* %3810
  %3812 = zext i16 %3811 to i64
  store i64 %3812, i64* %RCX.i403, align 8
  store %struct.Memory* %loadMem_446cbc, %struct.Memory** %MEMORY
  %loadMem_446cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3814 = getelementptr inbounds %struct.GPR, %struct.GPR* %3813, i32 0, i32 33
  %3815 = getelementptr inbounds %struct.Reg, %struct.Reg* %3814, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %3815 to i64*
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 5
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %ECX.i400 = bitcast %union.anon* %3818 to i32*
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 7
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %RDX.i401 = bitcast %union.anon* %3821 to i64*
  %3822 = load i32, i32* %ECX.i400
  %3823 = zext i32 %3822 to i64
  %3824 = load i64, i64* %PC.i399
  %3825 = add i64 %3824, 2
  store i64 %3825, i64* %PC.i399
  %3826 = and i64 %3823, 4294967295
  store i64 %3826, i64* %RDX.i401, align 8
  store %struct.Memory* %loadMem_446cc0, %struct.Memory** %MEMORY
  %loadMem_446cc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3828 = getelementptr inbounds %struct.GPR, %struct.GPR* %3827, i32 0, i32 33
  %3829 = getelementptr inbounds %struct.Reg, %struct.Reg* %3828, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %3829 to i64*
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3831 = getelementptr inbounds %struct.GPR, %struct.GPR* %3830, i32 0, i32 1
  %3832 = getelementptr inbounds %struct.Reg, %struct.Reg* %3831, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %3832 to i64*
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3834 = getelementptr inbounds %struct.GPR, %struct.GPR* %3833, i32 0, i32 7
  %3835 = getelementptr inbounds %struct.Reg, %struct.Reg* %3834, i32 0, i32 0
  %RDX.i398 = bitcast %union.anon* %3835 to i64*
  %3836 = load i64, i64* %RAX.i397
  %3837 = load i64, i64* %RDX.i398
  %3838 = mul i64 %3837, 8
  %3839 = add i64 %3838, %3836
  %3840 = load i64, i64* %PC.i396
  %3841 = add i64 %3840, 8
  store i64 %3841, i64* %PC.i396
  %3842 = inttoptr i64 %3839 to i64*
  store i64 0, i64* %3842
  store %struct.Memory* %loadMem_446cc2, %struct.Memory** %MEMORY
  %loadMem_446cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3844 = getelementptr inbounds %struct.GPR, %struct.GPR* %3843, i32 0, i32 33
  %3845 = getelementptr inbounds %struct.Reg, %struct.Reg* %3844, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %3845 to i64*
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3847 = getelementptr inbounds %struct.GPR, %struct.GPR* %3846, i32 0, i32 1
  %3848 = getelementptr inbounds %struct.Reg, %struct.Reg* %3847, i32 0, i32 0
  %AX.i394 = bitcast %union.anon* %3848 to i16*
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3850 = getelementptr inbounds %struct.GPR, %struct.GPR* %3849, i32 0, i32 15
  %3851 = getelementptr inbounds %struct.Reg, %struct.Reg* %3850, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %3851 to i64*
  %3852 = load i64, i64* %RBP.i395
  %3853 = sub i64 %3852, 22
  %3854 = load i64, i64* %PC.i393
  %3855 = add i64 %3854, 4
  store i64 %3855, i64* %PC.i393
  %3856 = inttoptr i64 %3853 to i16*
  %3857 = load i16, i16* %3856
  store i16 %3857, i16* %AX.i394, align 2
  store %struct.Memory* %loadMem_446cca, %struct.Memory** %MEMORY
  %loadMem_446cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3859 = getelementptr inbounds %struct.GPR, %struct.GPR* %3858, i32 0, i32 33
  %3860 = getelementptr inbounds %struct.Reg, %struct.Reg* %3859, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %3860 to i64*
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3862 = getelementptr inbounds %struct.GPR, %struct.GPR* %3861, i32 0, i32 1
  %3863 = getelementptr inbounds %struct.Reg, %struct.Reg* %3862, i32 0, i32 0
  %AX.i392 = bitcast %union.anon* %3863 to i16*
  %3864 = load i16, i16* %AX.i392
  %3865 = zext i16 %3864 to i64
  %3866 = load i64, i64* %PC.i391
  %3867 = add i64 %3866, 4
  store i64 %3867, i64* %PC.i391
  %3868 = add i16 1, %3864
  store i16 %3868, i16* %AX.i392, align 2
  %3869 = icmp ult i16 %3868, %3864
  %3870 = icmp ult i16 %3868, 1
  %3871 = or i1 %3869, %3870
  %3872 = zext i1 %3871 to i8
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3872, i8* %3873, align 1
  %3874 = and i16 %3868, 255
  %3875 = zext i16 %3874 to i32
  %3876 = call i32 @llvm.ctpop.i32(i32 %3875)
  %3877 = trunc i32 %3876 to i8
  %3878 = and i8 %3877, 1
  %3879 = xor i8 %3878, 1
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3879, i8* %3880, align 1
  %3881 = xor i64 1, %3865
  %3882 = trunc i64 %3881 to i16
  %3883 = xor i16 %3882, %3868
  %3884 = lshr i16 %3883, 4
  %3885 = trunc i16 %3884 to i8
  %3886 = and i8 %3885, 1
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3886, i8* %3887, align 1
  %3888 = icmp eq i16 %3868, 0
  %3889 = zext i1 %3888 to i8
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3889, i8* %3890, align 1
  %3891 = lshr i16 %3868, 15
  %3892 = trunc i16 %3891 to i8
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3892, i8* %3893, align 1
  %3894 = lshr i16 %3864, 15
  %3895 = xor i16 %3891, %3894
  %3896 = add i16 %3895, %3891
  %3897 = icmp eq i16 %3896, 2
  %3898 = zext i1 %3897 to i8
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3898, i8* %3899, align 1
  store %struct.Memory* %loadMem_446cce, %struct.Memory** %MEMORY
  %loadMem_446cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3901 = getelementptr inbounds %struct.GPR, %struct.GPR* %3900, i32 0, i32 33
  %3902 = getelementptr inbounds %struct.Reg, %struct.Reg* %3901, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %3902 to i64*
  %3903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3904 = getelementptr inbounds %struct.GPR, %struct.GPR* %3903, i32 0, i32 1
  %3905 = getelementptr inbounds %struct.Reg, %struct.Reg* %3904, i32 0, i32 0
  %AX.i389 = bitcast %union.anon* %3905 to i16*
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3907 = getelementptr inbounds %struct.GPR, %struct.GPR* %3906, i32 0, i32 15
  %3908 = getelementptr inbounds %struct.Reg, %struct.Reg* %3907, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %3908 to i64*
  %3909 = load i64, i64* %RBP.i390
  %3910 = sub i64 %3909, 22
  %3911 = load i16, i16* %AX.i389
  %3912 = zext i16 %3911 to i64
  %3913 = load i64, i64* %PC.i388
  %3914 = add i64 %3913, 4
  store i64 %3914, i64* %PC.i388
  %3915 = inttoptr i64 %3910 to i16*
  store i16 %3911, i16* %3915
  store %struct.Memory* %loadMem_446cd2, %struct.Memory** %MEMORY
  %loadMem_446cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3917 = getelementptr inbounds %struct.GPR, %struct.GPR* %3916, i32 0, i32 33
  %3918 = getelementptr inbounds %struct.Reg, %struct.Reg* %3917, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %3918 to i64*
  %3919 = load i64, i64* %PC.i387
  %3920 = add i64 %3919, -54
  %3921 = load i64, i64* %PC.i387
  %3922 = add i64 %3921, 5
  store i64 %3922, i64* %PC.i387
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3920, i64* %3923, align 8
  store %struct.Memory* %loadMem_446cd6, %struct.Memory** %MEMORY
  br label %block_.L_446ca0

block_.L_446cdb:                                  ; preds = %block_.L_446ca0
  %loadMem_446cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3925 = getelementptr inbounds %struct.GPR, %struct.GPR* %3924, i32 0, i32 33
  %3926 = getelementptr inbounds %struct.Reg, %struct.Reg* %3925, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %3926 to i64*
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3928 = getelementptr inbounds %struct.GPR, %struct.GPR* %3927, i32 0, i32 1
  %3929 = getelementptr inbounds %struct.Reg, %struct.Reg* %3928, i32 0, i32 0
  %RAX.i385 = bitcast %union.anon* %3929 to i64*
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3931 = getelementptr inbounds %struct.GPR, %struct.GPR* %3930, i32 0, i32 15
  %3932 = getelementptr inbounds %struct.Reg, %struct.Reg* %3931, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %3932 to i64*
  %3933 = load i64, i64* %RBP.i386
  %3934 = sub i64 %3933, 16
  %3935 = load i64, i64* %PC.i384
  %3936 = add i64 %3935, 4
  store i64 %3936, i64* %PC.i384
  %3937 = inttoptr i64 %3934 to i64*
  %3938 = load i64, i64* %3937
  store i64 %3938, i64* %RAX.i385, align 8
  store %struct.Memory* %loadMem_446cdb, %struct.Memory** %MEMORY
  %loadMem_446cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 33
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %3941 to i64*
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 1
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %RAX.i382 = bitcast %union.anon* %3944 to i64*
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 5
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %RCX.i383 = bitcast %union.anon* %3947 to i64*
  %3948 = load i64, i64* %RAX.i382
  %3949 = add i64 %3948, 12
  %3950 = load i64, i64* %PC.i381
  %3951 = add i64 %3950, 4
  store i64 %3951, i64* %PC.i381
  %3952 = inttoptr i64 %3949 to i16*
  %3953 = load i16, i16* %3952
  %3954 = zext i16 %3953 to i64
  store i64 %3954, i64* %RCX.i383, align 8
  store %struct.Memory* %loadMem_446cdf, %struct.Memory** %MEMORY
  %loadMem_446ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3956 = getelementptr inbounds %struct.GPR, %struct.GPR* %3955, i32 0, i32 33
  %3957 = getelementptr inbounds %struct.Reg, %struct.Reg* %3956, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %3957 to i64*
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3959 = getelementptr inbounds %struct.GPR, %struct.GPR* %3958, i32 0, i32 5
  %3960 = getelementptr inbounds %struct.Reg, %struct.Reg* %3959, i32 0, i32 0
  %ECX.i379 = bitcast %union.anon* %3960 to i32*
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3962 = getelementptr inbounds %struct.GPR, %struct.GPR* %3961, i32 0, i32 1
  %3963 = getelementptr inbounds %struct.Reg, %struct.Reg* %3962, i32 0, i32 0
  %RAX.i380 = bitcast %union.anon* %3963 to i64*
  %3964 = load i32, i32* %ECX.i379
  %3965 = zext i32 %3964 to i64
  %3966 = load i64, i64* %PC.i378
  %3967 = add i64 %3966, 2
  store i64 %3967, i64* %PC.i378
  %3968 = and i64 %3965, 4294967295
  store i64 %3968, i64* %RAX.i380, align 8
  store %struct.Memory* %loadMem_446ce3, %struct.Memory** %MEMORY
  %loadMem_446ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3970 = getelementptr inbounds %struct.GPR, %struct.GPR* %3969, i32 0, i32 33
  %3971 = getelementptr inbounds %struct.Reg, %struct.Reg* %3970, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %3971 to i64*
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 1
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %3974 to i64*
  %3975 = load i64, i64* %RAX.i377
  %3976 = load i64, i64* %PC.i376
  %3977 = add i64 %3976, 4
  store i64 %3977, i64* %PC.i376
  %3978 = shl i64 %3975, 1
  %3979 = icmp slt i64 %3978, 0
  %3980 = shl i64 %3978, 1
  store i64 %3980, i64* %RAX.i377, align 8
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3982 = zext i1 %3979 to i8
  store i8 %3982, i8* %3981, align 1
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3984 = trunc i64 %3980 to i32
  %3985 = and i32 %3984, 254
  %3986 = call i32 @llvm.ctpop.i32(i32 %3985)
  %3987 = trunc i32 %3986 to i8
  %3988 = and i8 %3987, 1
  %3989 = xor i8 %3988, 1
  store i8 %3989, i8* %3983, align 1
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3990, align 1
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3992 = icmp eq i64 %3980, 0
  %3993 = zext i1 %3992 to i8
  store i8 %3993, i8* %3991, align 1
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3995 = lshr i64 %3980, 63
  %3996 = trunc i64 %3995 to i8
  store i8 %3996, i8* %3994, align 1
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3997, align 1
  store %struct.Memory* %loadMem_446ce5, %struct.Memory** %MEMORY
  %loadMem_446ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3999 = getelementptr inbounds %struct.GPR, %struct.GPR* %3998, i32 0, i32 33
  %4000 = getelementptr inbounds %struct.Reg, %struct.Reg* %3999, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %4000 to i64*
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4002 = getelementptr inbounds %struct.GPR, %struct.GPR* %4001, i32 0, i32 1
  %4003 = getelementptr inbounds %struct.Reg, %struct.Reg* %4002, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %4003 to i64*
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4005 = getelementptr inbounds %struct.GPR, %struct.GPR* %4004, i32 0, i32 11
  %4006 = getelementptr inbounds %struct.Reg, %struct.Reg* %4005, i32 0, i32 0
  %RDI.i375 = bitcast %union.anon* %4006 to i64*
  %4007 = load i64, i64* %RAX.i374
  %4008 = load i64, i64* %PC.i373
  %4009 = add i64 %4008, 3
  store i64 %4009, i64* %PC.i373
  store i64 %4007, i64* %RDI.i375, align 8
  store %struct.Memory* %loadMem_446ce9, %struct.Memory** %MEMORY
  %loadMem1_446cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4011 = getelementptr inbounds %struct.GPR, %struct.GPR* %4010, i32 0, i32 33
  %4012 = getelementptr inbounds %struct.Reg, %struct.Reg* %4011, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %4012 to i64*
  %4013 = load i64, i64* %PC.i372
  %4014 = add i64 %4013, -284444
  %4015 = load i64, i64* %PC.i372
  %4016 = add i64 %4015, 5
  %4017 = load i64, i64* %PC.i372
  %4018 = add i64 %4017, 5
  store i64 %4018, i64* %PC.i372
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4020 = load i64, i64* %4019, align 8
  %4021 = add i64 %4020, -8
  %4022 = inttoptr i64 %4021 to i64*
  store i64 %4016, i64* %4022
  store i64 %4021, i64* %4019, align 8
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4014, i64* %4023, align 8
  store %struct.Memory* %loadMem1_446cec, %struct.Memory** %MEMORY
  %loadMem2_446cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446cec = load i64, i64* %3
  %4024 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %loadMem2_446cec)
  store %struct.Memory* %4024, %struct.Memory** %MEMORY
  %loadMem_446cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4026 = getelementptr inbounds %struct.GPR, %struct.GPR* %4025, i32 0, i32 33
  %4027 = getelementptr inbounds %struct.Reg, %struct.Reg* %4026, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %4027 to i64*
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4029 = getelementptr inbounds %struct.GPR, %struct.GPR* %4028, i32 0, i32 11
  %4030 = getelementptr inbounds %struct.Reg, %struct.Reg* %4029, i32 0, i32 0
  %RDI.i368 = bitcast %union.anon* %4030 to i64*
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4032 = getelementptr inbounds %struct.GPR, %struct.GPR* %4031, i32 0, i32 15
  %4033 = getelementptr inbounds %struct.Reg, %struct.Reg* %4032, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %4033 to i64*
  %4034 = load i64, i64* %RBP.i369
  %4035 = sub i64 %4034, 16
  %4036 = load i64, i64* %PC.i367
  %4037 = add i64 %4036, 4
  store i64 %4037, i64* %PC.i367
  %4038 = inttoptr i64 %4035 to i64*
  %4039 = load i64, i64* %4038
  store i64 %4039, i64* %RDI.i368, align 8
  store %struct.Memory* %loadMem_446cf1, %struct.Memory** %MEMORY
  %loadMem_446cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4041 = getelementptr inbounds %struct.GPR, %struct.GPR* %4040, i32 0, i32 33
  %4042 = getelementptr inbounds %struct.Reg, %struct.Reg* %4041, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %4042 to i64*
  %4043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4044 = getelementptr inbounds %struct.GPR, %struct.GPR* %4043, i32 0, i32 1
  %4045 = getelementptr inbounds %struct.Reg, %struct.Reg* %4044, i32 0, i32 0
  %RAX.i365 = bitcast %union.anon* %4045 to i64*
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4047 = getelementptr inbounds %struct.GPR, %struct.GPR* %4046, i32 0, i32 11
  %4048 = getelementptr inbounds %struct.Reg, %struct.Reg* %4047, i32 0, i32 0
  %RDI.i366 = bitcast %union.anon* %4048 to i64*
  %4049 = load i64, i64* %RDI.i366
  %4050 = add i64 %4049, 112
  %4051 = load i64, i64* %RAX.i365
  %4052 = load i64, i64* %PC.i364
  %4053 = add i64 %4052, 4
  store i64 %4053, i64* %PC.i364
  %4054 = inttoptr i64 %4050 to i64*
  store i64 %4051, i64* %4054
  store %struct.Memory* %loadMem_446cf5, %struct.Memory** %MEMORY
  %loadMem_446cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4056 = getelementptr inbounds %struct.GPR, %struct.GPR* %4055, i32 0, i32 33
  %4057 = getelementptr inbounds %struct.Reg, %struct.Reg* %4056, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %4057 to i64*
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4059 = getelementptr inbounds %struct.GPR, %struct.GPR* %4058, i32 0, i32 1
  %4060 = getelementptr inbounds %struct.Reg, %struct.Reg* %4059, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %4060 to i64*
  %4061 = load i64, i64* %RAX.i363
  %4062 = load i64, i64* %PC.i362
  %4063 = add i64 %4062, 4
  store i64 %4063, i64* %PC.i362
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4064, align 1
  %4065 = trunc i64 %4061 to i32
  %4066 = and i32 %4065, 255
  %4067 = call i32 @llvm.ctpop.i32(i32 %4066)
  %4068 = trunc i32 %4067 to i8
  %4069 = and i8 %4068, 1
  %4070 = xor i8 %4069, 1
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4070, i8* %4071, align 1
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4072, align 1
  %4073 = icmp eq i64 %4061, 0
  %4074 = zext i1 %4073 to i8
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4074, i8* %4075, align 1
  %4076 = lshr i64 %4061, 63
  %4077 = trunc i64 %4076 to i8
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4077, i8* %4078, align 1
  %4079 = lshr i64 %4061, 63
  %4080 = xor i64 %4076, %4079
  %4081 = add i64 %4080, %4079
  %4082 = icmp eq i64 %4081, 2
  %4083 = zext i1 %4082 to i8
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4083, i8* %4084, align 1
  store %struct.Memory* %loadMem_446cf9, %struct.Memory** %MEMORY
  %loadMem_446cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4086 = getelementptr inbounds %struct.GPR, %struct.GPR* %4085, i32 0, i32 33
  %4087 = getelementptr inbounds %struct.Reg, %struct.Reg* %4086, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %4087 to i64*
  %4088 = load i64, i64* %PC.i361
  %4089 = add i64 %4088, 18
  %4090 = load i64, i64* %PC.i361
  %4091 = add i64 %4090, 6
  %4092 = load i64, i64* %PC.i361
  %4093 = add i64 %4092, 6
  store i64 %4093, i64* %PC.i361
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4095 = load i8, i8* %4094, align 1
  %4096 = icmp eq i8 %4095, 0
  %4097 = zext i1 %4096 to i8
  store i8 %4097, i8* %BRANCH_TAKEN, align 1
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4099 = select i1 %4096, i64 %4089, i64 %4091
  store i64 %4099, i64* %4098, align 8
  store %struct.Memory* %loadMem_446cfd, %struct.Memory** %MEMORY
  %loadBr_446cfd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446cfd = icmp eq i8 %loadBr_446cfd, 1
  br i1 %cmpBr_446cfd, label %block_.L_446d0f, label %block_446d03

block_446d03:                                     ; preds = %block_.L_446cdb
  %loadMem_446d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4101 = getelementptr inbounds %struct.GPR, %struct.GPR* %4100, i32 0, i32 33
  %4102 = getelementptr inbounds %struct.Reg, %struct.Reg* %4101, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %4102 to i64*
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4104 = getelementptr inbounds %struct.GPR, %struct.GPR* %4103, i32 0, i32 15
  %4105 = getelementptr inbounds %struct.Reg, %struct.Reg* %4104, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %4105 to i64*
  %4106 = load i64, i64* %RBP.i360
  %4107 = sub i64 %4106, 28
  %4108 = load i64, i64* %PC.i359
  %4109 = add i64 %4108, 7
  store i64 %4109, i64* %PC.i359
  %4110 = inttoptr i64 %4107 to i32*
  store i32 3, i32* %4110
  store %struct.Memory* %loadMem_446d03, %struct.Memory** %MEMORY
  %loadMem_446d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4112 = getelementptr inbounds %struct.GPR, %struct.GPR* %4111, i32 0, i32 33
  %4113 = getelementptr inbounds %struct.Reg, %struct.Reg* %4112, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %4113 to i64*
  %4114 = load i64, i64* %PC.i358
  %4115 = add i64 %4114, 610
  %4116 = load i64, i64* %PC.i358
  %4117 = add i64 %4116, 5
  store i64 %4117, i64* %PC.i358
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4115, i64* %4118, align 8
  store %struct.Memory* %loadMem_446d0a, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446d0f:                                  ; preds = %block_.L_446cdb
  %loadMem_446d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 33
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %4121 to i64*
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4123 = getelementptr inbounds %struct.GPR, %struct.GPR* %4122, i32 0, i32 1
  %4124 = getelementptr inbounds %struct.Reg, %struct.Reg* %4123, i32 0, i32 0
  %RAX.i356 = bitcast %union.anon* %4124 to i64*
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4126 = getelementptr inbounds %struct.GPR, %struct.GPR* %4125, i32 0, i32 15
  %4127 = getelementptr inbounds %struct.Reg, %struct.Reg* %4126, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %4127 to i64*
  %4128 = load i64, i64* %RBP.i357
  %4129 = sub i64 %4128, 16
  %4130 = load i64, i64* %PC.i355
  %4131 = add i64 %4130, 4
  store i64 %4131, i64* %PC.i355
  %4132 = inttoptr i64 %4129 to i64*
  %4133 = load i64, i64* %4132
  store i64 %4133, i64* %RAX.i356, align 8
  store %struct.Memory* %loadMem_446d0f, %struct.Memory** %MEMORY
  %loadMem_446d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4135 = getelementptr inbounds %struct.GPR, %struct.GPR* %4134, i32 0, i32 33
  %4136 = getelementptr inbounds %struct.Reg, %struct.Reg* %4135, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %4136 to i64*
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4138 = getelementptr inbounds %struct.GPR, %struct.GPR* %4137, i32 0, i32 1
  %4139 = getelementptr inbounds %struct.Reg, %struct.Reg* %4138, i32 0, i32 0
  %RAX.i353 = bitcast %union.anon* %4139 to i64*
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4141 = getelementptr inbounds %struct.GPR, %struct.GPR* %4140, i32 0, i32 5
  %4142 = getelementptr inbounds %struct.Reg, %struct.Reg* %4141, i32 0, i32 0
  %RCX.i354 = bitcast %union.anon* %4142 to i64*
  %4143 = load i64, i64* %RAX.i353
  %4144 = add i64 %4143, 12
  %4145 = load i64, i64* %PC.i352
  %4146 = add i64 %4145, 4
  store i64 %4146, i64* %PC.i352
  %4147 = inttoptr i64 %4144 to i16*
  %4148 = load i16, i16* %4147
  %4149 = zext i16 %4148 to i64
  store i64 %4149, i64* %RCX.i354, align 8
  store %struct.Memory* %loadMem_446d13, %struct.Memory** %MEMORY
  %loadMem_446d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 33
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %4152 to i64*
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4154 = getelementptr inbounds %struct.GPR, %struct.GPR* %4153, i32 0, i32 5
  %4155 = getelementptr inbounds %struct.Reg, %struct.Reg* %4154, i32 0, i32 0
  %ECX.i350 = bitcast %union.anon* %4155 to i32*
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4157 = getelementptr inbounds %struct.GPR, %struct.GPR* %4156, i32 0, i32 1
  %4158 = getelementptr inbounds %struct.Reg, %struct.Reg* %4157, i32 0, i32 0
  %RAX.i351 = bitcast %union.anon* %4158 to i64*
  %4159 = load i32, i32* %ECX.i350
  %4160 = zext i32 %4159 to i64
  %4161 = load i64, i64* %PC.i349
  %4162 = add i64 %4161, 2
  store i64 %4162, i64* %PC.i349
  %4163 = and i64 %4160, 4294967295
  store i64 %4163, i64* %RAX.i351, align 8
  store %struct.Memory* %loadMem_446d17, %struct.Memory** %MEMORY
  %loadMem_446d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4165 = getelementptr inbounds %struct.GPR, %struct.GPR* %4164, i32 0, i32 33
  %4166 = getelementptr inbounds %struct.Reg, %struct.Reg* %4165, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %4166 to i64*
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4168 = getelementptr inbounds %struct.GPR, %struct.GPR* %4167, i32 0, i32 1
  %4169 = getelementptr inbounds %struct.Reg, %struct.Reg* %4168, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %4169 to i64*
  %4170 = load i64, i64* %RAX.i348
  %4171 = load i64, i64* %PC.i347
  %4172 = add i64 %4171, 4
  store i64 %4172, i64* %PC.i347
  %4173 = shl i64 %4170, 1
  %4174 = icmp slt i64 %4173, 0
  %4175 = shl i64 %4173, 1
  store i64 %4175, i64* %RAX.i348, align 8
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4177 = zext i1 %4174 to i8
  store i8 %4177, i8* %4176, align 1
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4179 = trunc i64 %4175 to i32
  %4180 = and i32 %4179, 254
  %4181 = call i32 @llvm.ctpop.i32(i32 %4180)
  %4182 = trunc i32 %4181 to i8
  %4183 = and i8 %4182, 1
  %4184 = xor i8 %4183, 1
  store i8 %4184, i8* %4178, align 1
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4185, align 1
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4187 = icmp eq i64 %4175, 0
  %4188 = zext i1 %4187 to i8
  store i8 %4188, i8* %4186, align 1
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4190 = lshr i64 %4175, 63
  %4191 = trunc i64 %4190 to i8
  store i8 %4191, i8* %4189, align 1
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4192, align 1
  store %struct.Memory* %loadMem_446d19, %struct.Memory** %MEMORY
  %loadMem_446d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4194 = getelementptr inbounds %struct.GPR, %struct.GPR* %4193, i32 0, i32 33
  %4195 = getelementptr inbounds %struct.Reg, %struct.Reg* %4194, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %4195 to i64*
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4197 = getelementptr inbounds %struct.GPR, %struct.GPR* %4196, i32 0, i32 1
  %4198 = getelementptr inbounds %struct.Reg, %struct.Reg* %4197, i32 0, i32 0
  %RAX.i345 = bitcast %union.anon* %4198 to i64*
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4200 = getelementptr inbounds %struct.GPR, %struct.GPR* %4199, i32 0, i32 11
  %4201 = getelementptr inbounds %struct.Reg, %struct.Reg* %4200, i32 0, i32 0
  %RDI.i346 = bitcast %union.anon* %4201 to i64*
  %4202 = load i64, i64* %RAX.i345
  %4203 = load i64, i64* %PC.i344
  %4204 = add i64 %4203, 3
  store i64 %4204, i64* %PC.i344
  store i64 %4202, i64* %RDI.i346, align 8
  store %struct.Memory* %loadMem_446d1d, %struct.Memory** %MEMORY
  %loadMem1_446d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4206 = getelementptr inbounds %struct.GPR, %struct.GPR* %4205, i32 0, i32 33
  %4207 = getelementptr inbounds %struct.Reg, %struct.Reg* %4206, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %4207 to i64*
  %4208 = load i64, i64* %PC.i343
  %4209 = add i64 %4208, -284496
  %4210 = load i64, i64* %PC.i343
  %4211 = add i64 %4210, 5
  %4212 = load i64, i64* %PC.i343
  %4213 = add i64 %4212, 5
  store i64 %4213, i64* %PC.i343
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4215 = load i64, i64* %4214, align 8
  %4216 = add i64 %4215, -8
  %4217 = inttoptr i64 %4216 to i64*
  store i64 %4211, i64* %4217
  store i64 %4216, i64* %4214, align 8
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4209, i64* %4218, align 8
  store %struct.Memory* %loadMem1_446d20, %struct.Memory** %MEMORY
  %loadMem2_446d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446d20 = load i64, i64* %3
  %4219 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %loadMem2_446d20)
  store %struct.Memory* %4219, %struct.Memory** %MEMORY
  %loadMem_446d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4221 = getelementptr inbounds %struct.GPR, %struct.GPR* %4220, i32 0, i32 33
  %4222 = getelementptr inbounds %struct.Reg, %struct.Reg* %4221, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %4222 to i64*
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4224 = getelementptr inbounds %struct.GPR, %struct.GPR* %4223, i32 0, i32 11
  %4225 = getelementptr inbounds %struct.Reg, %struct.Reg* %4224, i32 0, i32 0
  %RDI.i338 = bitcast %union.anon* %4225 to i64*
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4227 = getelementptr inbounds %struct.GPR, %struct.GPR* %4226, i32 0, i32 15
  %4228 = getelementptr inbounds %struct.Reg, %struct.Reg* %4227, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %4228 to i64*
  %4229 = load i64, i64* %RBP.i339
  %4230 = sub i64 %4229, 16
  %4231 = load i64, i64* %PC.i337
  %4232 = add i64 %4231, 4
  store i64 %4232, i64* %PC.i337
  %4233 = inttoptr i64 %4230 to i64*
  %4234 = load i64, i64* %4233
  store i64 %4234, i64* %RDI.i338, align 8
  store %struct.Memory* %loadMem_446d25, %struct.Memory** %MEMORY
  %loadMem_446d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4236 = getelementptr inbounds %struct.GPR, %struct.GPR* %4235, i32 0, i32 33
  %4237 = getelementptr inbounds %struct.Reg, %struct.Reg* %4236, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %4237 to i64*
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4239 = getelementptr inbounds %struct.GPR, %struct.GPR* %4238, i32 0, i32 1
  %4240 = getelementptr inbounds %struct.Reg, %struct.Reg* %4239, i32 0, i32 0
  %RAX.i335 = bitcast %union.anon* %4240 to i64*
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4242 = getelementptr inbounds %struct.GPR, %struct.GPR* %4241, i32 0, i32 11
  %4243 = getelementptr inbounds %struct.Reg, %struct.Reg* %4242, i32 0, i32 0
  %RDI.i336 = bitcast %union.anon* %4243 to i64*
  %4244 = load i64, i64* %RDI.i336
  %4245 = add i64 %4244, 120
  %4246 = load i64, i64* %RAX.i335
  %4247 = load i64, i64* %PC.i334
  %4248 = add i64 %4247, 4
  store i64 %4248, i64* %PC.i334
  %4249 = inttoptr i64 %4245 to i64*
  store i64 %4246, i64* %4249
  store %struct.Memory* %loadMem_446d29, %struct.Memory** %MEMORY
  %loadMem_446d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4251 = getelementptr inbounds %struct.GPR, %struct.GPR* %4250, i32 0, i32 33
  %4252 = getelementptr inbounds %struct.Reg, %struct.Reg* %4251, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %4252 to i64*
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4254 = getelementptr inbounds %struct.GPR, %struct.GPR* %4253, i32 0, i32 1
  %4255 = getelementptr inbounds %struct.Reg, %struct.Reg* %4254, i32 0, i32 0
  %RAX.i333 = bitcast %union.anon* %4255 to i64*
  %4256 = load i64, i64* %RAX.i333
  %4257 = load i64, i64* %PC.i332
  %4258 = add i64 %4257, 4
  store i64 %4258, i64* %PC.i332
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4259, align 1
  %4260 = trunc i64 %4256 to i32
  %4261 = and i32 %4260, 255
  %4262 = call i32 @llvm.ctpop.i32(i32 %4261)
  %4263 = trunc i32 %4262 to i8
  %4264 = and i8 %4263, 1
  %4265 = xor i8 %4264, 1
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4265, i8* %4266, align 1
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4267, align 1
  %4268 = icmp eq i64 %4256, 0
  %4269 = zext i1 %4268 to i8
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4269, i8* %4270, align 1
  %4271 = lshr i64 %4256, 63
  %4272 = trunc i64 %4271 to i8
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4272, i8* %4273, align 1
  %4274 = lshr i64 %4256, 63
  %4275 = xor i64 %4271, %4274
  %4276 = add i64 %4275, %4274
  %4277 = icmp eq i64 %4276, 2
  %4278 = zext i1 %4277 to i8
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4278, i8* %4279, align 1
  store %struct.Memory* %loadMem_446d2d, %struct.Memory** %MEMORY
  %loadMem_446d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4281 = getelementptr inbounds %struct.GPR, %struct.GPR* %4280, i32 0, i32 33
  %4282 = getelementptr inbounds %struct.Reg, %struct.Reg* %4281, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %4282 to i64*
  %4283 = load i64, i64* %PC.i331
  %4284 = add i64 %4283, 18
  %4285 = load i64, i64* %PC.i331
  %4286 = add i64 %4285, 6
  %4287 = load i64, i64* %PC.i331
  %4288 = add i64 %4287, 6
  store i64 %4288, i64* %PC.i331
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4290 = load i8, i8* %4289, align 1
  %4291 = icmp eq i8 %4290, 0
  %4292 = zext i1 %4291 to i8
  store i8 %4292, i8* %BRANCH_TAKEN, align 1
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4294 = select i1 %4291, i64 %4284, i64 %4286
  store i64 %4294, i64* %4293, align 8
  store %struct.Memory* %loadMem_446d31, %struct.Memory** %MEMORY
  %loadBr_446d31 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446d31 = icmp eq i8 %loadBr_446d31, 1
  br i1 %cmpBr_446d31, label %block_.L_446d43, label %block_446d37

block_446d37:                                     ; preds = %block_.L_446d0f
  %loadMem_446d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4296 = getelementptr inbounds %struct.GPR, %struct.GPR* %4295, i32 0, i32 33
  %4297 = getelementptr inbounds %struct.Reg, %struct.Reg* %4296, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %4297 to i64*
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4299 = getelementptr inbounds %struct.GPR, %struct.GPR* %4298, i32 0, i32 15
  %4300 = getelementptr inbounds %struct.Reg, %struct.Reg* %4299, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %4300 to i64*
  %4301 = load i64, i64* %RBP.i330
  %4302 = sub i64 %4301, 28
  %4303 = load i64, i64* %PC.i329
  %4304 = add i64 %4303, 7
  store i64 %4304, i64* %PC.i329
  %4305 = inttoptr i64 %4302 to i32*
  store i32 3, i32* %4305
  store %struct.Memory* %loadMem_446d37, %struct.Memory** %MEMORY
  %loadMem_446d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4307 = getelementptr inbounds %struct.GPR, %struct.GPR* %4306, i32 0, i32 33
  %4308 = getelementptr inbounds %struct.Reg, %struct.Reg* %4307, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %4308 to i64*
  %4309 = load i64, i64* %PC.i328
  %4310 = add i64 %4309, 558
  %4311 = load i64, i64* %PC.i328
  %4312 = add i64 %4311, 5
  store i64 %4312, i64* %PC.i328
  %4313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4310, i64* %4313, align 8
  store %struct.Memory* %loadMem_446d3e, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446d43:                                  ; preds = %block_.L_446d0f
  %loadMem_446d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4315 = getelementptr inbounds %struct.GPR, %struct.GPR* %4314, i32 0, i32 33
  %4316 = getelementptr inbounds %struct.Reg, %struct.Reg* %4315, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %4316 to i64*
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4318 = getelementptr inbounds %struct.GPR, %struct.GPR* %4317, i32 0, i32 1
  %4319 = getelementptr inbounds %struct.Reg, %struct.Reg* %4318, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %4319 to i64*
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4321 = getelementptr inbounds %struct.GPR, %struct.GPR* %4320, i32 0, i32 15
  %4322 = getelementptr inbounds %struct.Reg, %struct.Reg* %4321, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %4322 to i64*
  %4323 = load i64, i64* %RBP.i327
  %4324 = sub i64 %4323, 16
  %4325 = load i64, i64* %PC.i325
  %4326 = add i64 %4325, 4
  store i64 %4326, i64* %PC.i325
  %4327 = inttoptr i64 %4324 to i64*
  %4328 = load i64, i64* %4327
  store i64 %4328, i64* %RAX.i326, align 8
  store %struct.Memory* %loadMem_446d43, %struct.Memory** %MEMORY
  %loadMem_446d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4330 = getelementptr inbounds %struct.GPR, %struct.GPR* %4329, i32 0, i32 33
  %4331 = getelementptr inbounds %struct.Reg, %struct.Reg* %4330, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %4331 to i64*
  %4332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4333 = getelementptr inbounds %struct.GPR, %struct.GPR* %4332, i32 0, i32 1
  %4334 = getelementptr inbounds %struct.Reg, %struct.Reg* %4333, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %4334 to i64*
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4336 = getelementptr inbounds %struct.GPR, %struct.GPR* %4335, i32 0, i32 5
  %4337 = getelementptr inbounds %struct.Reg, %struct.Reg* %4336, i32 0, i32 0
  %RCX.i324 = bitcast %union.anon* %4337 to i64*
  %4338 = load i64, i64* %RAX.i323
  %4339 = add i64 %4338, 12
  %4340 = load i64, i64* %PC.i322
  %4341 = add i64 %4340, 4
  store i64 %4341, i64* %PC.i322
  %4342 = inttoptr i64 %4339 to i16*
  %4343 = load i16, i16* %4342
  %4344 = zext i16 %4343 to i64
  store i64 %4344, i64* %RCX.i324, align 8
  store %struct.Memory* %loadMem_446d47, %struct.Memory** %MEMORY
  %loadMem_446d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4346 = getelementptr inbounds %struct.GPR, %struct.GPR* %4345, i32 0, i32 33
  %4347 = getelementptr inbounds %struct.Reg, %struct.Reg* %4346, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %4347 to i64*
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4349 = getelementptr inbounds %struct.GPR, %struct.GPR* %4348, i32 0, i32 5
  %4350 = getelementptr inbounds %struct.Reg, %struct.Reg* %4349, i32 0, i32 0
  %ECX.i320 = bitcast %union.anon* %4350 to i32*
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4352 = getelementptr inbounds %struct.GPR, %struct.GPR* %4351, i32 0, i32 1
  %4353 = getelementptr inbounds %struct.Reg, %struct.Reg* %4352, i32 0, i32 0
  %RAX.i321 = bitcast %union.anon* %4353 to i64*
  %4354 = load i32, i32* %ECX.i320
  %4355 = zext i32 %4354 to i64
  %4356 = load i64, i64* %PC.i319
  %4357 = add i64 %4356, 2
  store i64 %4357, i64* %PC.i319
  %4358 = and i64 %4355, 4294967295
  store i64 %4358, i64* %RAX.i321, align 8
  store %struct.Memory* %loadMem_446d4b, %struct.Memory** %MEMORY
  %loadMem_446d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4360 = getelementptr inbounds %struct.GPR, %struct.GPR* %4359, i32 0, i32 33
  %4361 = getelementptr inbounds %struct.Reg, %struct.Reg* %4360, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %4361 to i64*
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 1
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %4364 to i64*
  %4365 = load i64, i64* %RAX.i318
  %4366 = load i64, i64* %PC.i317
  %4367 = add i64 %4366, 4
  store i64 %4367, i64* %PC.i317
  %4368 = shl i64 %4365, 1
  %4369 = icmp slt i64 %4368, 0
  %4370 = shl i64 %4368, 1
  store i64 %4370, i64* %RAX.i318, align 8
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4372 = zext i1 %4369 to i8
  store i8 %4372, i8* %4371, align 1
  %4373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4374 = trunc i64 %4370 to i32
  %4375 = and i32 %4374, 254
  %4376 = call i32 @llvm.ctpop.i32(i32 %4375)
  %4377 = trunc i32 %4376 to i8
  %4378 = and i8 %4377, 1
  %4379 = xor i8 %4378, 1
  store i8 %4379, i8* %4373, align 1
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4380, align 1
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4382 = icmp eq i64 %4370, 0
  %4383 = zext i1 %4382 to i8
  store i8 %4383, i8* %4381, align 1
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4385 = lshr i64 %4370, 63
  %4386 = trunc i64 %4385 to i8
  store i8 %4386, i8* %4384, align 1
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4387, align 1
  store %struct.Memory* %loadMem_446d4d, %struct.Memory** %MEMORY
  %loadMem_446d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4389 = getelementptr inbounds %struct.GPR, %struct.GPR* %4388, i32 0, i32 33
  %4390 = getelementptr inbounds %struct.Reg, %struct.Reg* %4389, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %4390 to i64*
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4392 = getelementptr inbounds %struct.GPR, %struct.GPR* %4391, i32 0, i32 1
  %4393 = getelementptr inbounds %struct.Reg, %struct.Reg* %4392, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %4393 to i64*
  %4394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4395 = getelementptr inbounds %struct.GPR, %struct.GPR* %4394, i32 0, i32 11
  %4396 = getelementptr inbounds %struct.Reg, %struct.Reg* %4395, i32 0, i32 0
  %RDI.i316 = bitcast %union.anon* %4396 to i64*
  %4397 = load i64, i64* %RAX.i315
  %4398 = load i64, i64* %PC.i314
  %4399 = add i64 %4398, 3
  store i64 %4399, i64* %PC.i314
  store i64 %4397, i64* %RDI.i316, align 8
  store %struct.Memory* %loadMem_446d51, %struct.Memory** %MEMORY
  %loadMem1_446d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4401 = getelementptr inbounds %struct.GPR, %struct.GPR* %4400, i32 0, i32 33
  %4402 = getelementptr inbounds %struct.Reg, %struct.Reg* %4401, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %4402 to i64*
  %4403 = load i64, i64* %PC.i313
  %4404 = add i64 %4403, -284548
  %4405 = load i64, i64* %PC.i313
  %4406 = add i64 %4405, 5
  %4407 = load i64, i64* %PC.i313
  %4408 = add i64 %4407, 5
  store i64 %4408, i64* %PC.i313
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4410 = load i64, i64* %4409, align 8
  %4411 = add i64 %4410, -8
  %4412 = inttoptr i64 %4411 to i64*
  store i64 %4406, i64* %4412
  store i64 %4411, i64* %4409, align 8
  %4413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4404, i64* %4413, align 8
  store %struct.Memory* %loadMem1_446d54, %struct.Memory** %MEMORY
  %loadMem2_446d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446d54 = load i64, i64* %3
  %4414 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %loadMem2_446d54)
  store %struct.Memory* %4414, %struct.Memory** %MEMORY
  %loadMem_446d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4416 = getelementptr inbounds %struct.GPR, %struct.GPR* %4415, i32 0, i32 33
  %4417 = getelementptr inbounds %struct.Reg, %struct.Reg* %4416, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %4417 to i64*
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4419 = getelementptr inbounds %struct.GPR, %struct.GPR* %4418, i32 0, i32 11
  %4420 = getelementptr inbounds %struct.Reg, %struct.Reg* %4419, i32 0, i32 0
  %RDI.i308 = bitcast %union.anon* %4420 to i64*
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4422 = getelementptr inbounds %struct.GPR, %struct.GPR* %4421, i32 0, i32 15
  %4423 = getelementptr inbounds %struct.Reg, %struct.Reg* %4422, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %4423 to i64*
  %4424 = load i64, i64* %RBP.i309
  %4425 = sub i64 %4424, 16
  %4426 = load i64, i64* %PC.i307
  %4427 = add i64 %4426, 4
  store i64 %4427, i64* %PC.i307
  %4428 = inttoptr i64 %4425 to i64*
  %4429 = load i64, i64* %4428
  store i64 %4429, i64* %RDI.i308, align 8
  store %struct.Memory* %loadMem_446d59, %struct.Memory** %MEMORY
  %loadMem_446d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4431 = getelementptr inbounds %struct.GPR, %struct.GPR* %4430, i32 0, i32 33
  %4432 = getelementptr inbounds %struct.Reg, %struct.Reg* %4431, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %4432 to i64*
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4434 = getelementptr inbounds %struct.GPR, %struct.GPR* %4433, i32 0, i32 1
  %4435 = getelementptr inbounds %struct.Reg, %struct.Reg* %4434, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %4435 to i64*
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4437 = getelementptr inbounds %struct.GPR, %struct.GPR* %4436, i32 0, i32 11
  %4438 = getelementptr inbounds %struct.Reg, %struct.Reg* %4437, i32 0, i32 0
  %RDI.i306 = bitcast %union.anon* %4438 to i64*
  %4439 = load i64, i64* %RDI.i306
  %4440 = add i64 %4439, 128
  %4441 = load i64, i64* %RAX.i305
  %4442 = load i64, i64* %PC.i304
  %4443 = add i64 %4442, 7
  store i64 %4443, i64* %PC.i304
  %4444 = inttoptr i64 %4440 to i64*
  store i64 %4441, i64* %4444
  store %struct.Memory* %loadMem_446d5d, %struct.Memory** %MEMORY
  %loadMem_446d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4446 = getelementptr inbounds %struct.GPR, %struct.GPR* %4445, i32 0, i32 33
  %4447 = getelementptr inbounds %struct.Reg, %struct.Reg* %4446, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %4447 to i64*
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4449 = getelementptr inbounds %struct.GPR, %struct.GPR* %4448, i32 0, i32 1
  %4450 = getelementptr inbounds %struct.Reg, %struct.Reg* %4449, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %4450 to i64*
  %4451 = load i64, i64* %RAX.i303
  %4452 = load i64, i64* %PC.i302
  %4453 = add i64 %4452, 4
  store i64 %4453, i64* %PC.i302
  %4454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4454, align 1
  %4455 = trunc i64 %4451 to i32
  %4456 = and i32 %4455, 255
  %4457 = call i32 @llvm.ctpop.i32(i32 %4456)
  %4458 = trunc i32 %4457 to i8
  %4459 = and i8 %4458, 1
  %4460 = xor i8 %4459, 1
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4460, i8* %4461, align 1
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4462, align 1
  %4463 = icmp eq i64 %4451, 0
  %4464 = zext i1 %4463 to i8
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4464, i8* %4465, align 1
  %4466 = lshr i64 %4451, 63
  %4467 = trunc i64 %4466 to i8
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4467, i8* %4468, align 1
  %4469 = lshr i64 %4451, 63
  %4470 = xor i64 %4466, %4469
  %4471 = add i64 %4470, %4469
  %4472 = icmp eq i64 %4471, 2
  %4473 = zext i1 %4472 to i8
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4473, i8* %4474, align 1
  store %struct.Memory* %loadMem_446d64, %struct.Memory** %MEMORY
  %loadMem_446d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4476 = getelementptr inbounds %struct.GPR, %struct.GPR* %4475, i32 0, i32 33
  %4477 = getelementptr inbounds %struct.Reg, %struct.Reg* %4476, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %4477 to i64*
  %4478 = load i64, i64* %PC.i301
  %4479 = add i64 %4478, 18
  %4480 = load i64, i64* %PC.i301
  %4481 = add i64 %4480, 6
  %4482 = load i64, i64* %PC.i301
  %4483 = add i64 %4482, 6
  store i64 %4483, i64* %PC.i301
  %4484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4485 = load i8, i8* %4484, align 1
  %4486 = icmp eq i8 %4485, 0
  %4487 = zext i1 %4486 to i8
  store i8 %4487, i8* %BRANCH_TAKEN, align 1
  %4488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4489 = select i1 %4486, i64 %4479, i64 %4481
  store i64 %4489, i64* %4488, align 8
  store %struct.Memory* %loadMem_446d68, %struct.Memory** %MEMORY
  %loadBr_446d68 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446d68 = icmp eq i8 %loadBr_446d68, 1
  br i1 %cmpBr_446d68, label %block_.L_446d7a, label %block_446d6e

block_446d6e:                                     ; preds = %block_.L_446d43
  %loadMem_446d6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4491 = getelementptr inbounds %struct.GPR, %struct.GPR* %4490, i32 0, i32 33
  %4492 = getelementptr inbounds %struct.Reg, %struct.Reg* %4491, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %4492 to i64*
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 15
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %4495 to i64*
  %4496 = load i64, i64* %RBP.i300
  %4497 = sub i64 %4496, 28
  %4498 = load i64, i64* %PC.i299
  %4499 = add i64 %4498, 7
  store i64 %4499, i64* %PC.i299
  %4500 = inttoptr i64 %4497 to i32*
  store i32 3, i32* %4500
  store %struct.Memory* %loadMem_446d6e, %struct.Memory** %MEMORY
  %loadMem_446d75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4502 = getelementptr inbounds %struct.GPR, %struct.GPR* %4501, i32 0, i32 33
  %4503 = getelementptr inbounds %struct.Reg, %struct.Reg* %4502, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %4503 to i64*
  %4504 = load i64, i64* %PC.i298
  %4505 = add i64 %4504, 503
  %4506 = load i64, i64* %PC.i298
  %4507 = add i64 %4506, 5
  store i64 %4507, i64* %PC.i298
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4505, i64* %4508, align 8
  store %struct.Memory* %loadMem_446d75, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446d7a:                                  ; preds = %block_.L_446d43
  %loadMem_446d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 33
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %4511 to i64*
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4513 = getelementptr inbounds %struct.GPR, %struct.GPR* %4512, i32 0, i32 1
  %4514 = getelementptr inbounds %struct.Reg, %struct.Reg* %4513, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %4514 to i64*
  %4515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4516 = getelementptr inbounds %struct.GPR, %struct.GPR* %4515, i32 0, i32 15
  %4517 = getelementptr inbounds %struct.Reg, %struct.Reg* %4516, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %4517 to i64*
  %4518 = load i64, i64* %RBP.i297
  %4519 = sub i64 %4518, 16
  %4520 = load i64, i64* %PC.i295
  %4521 = add i64 %4520, 4
  store i64 %4521, i64* %PC.i295
  %4522 = inttoptr i64 %4519 to i64*
  %4523 = load i64, i64* %4522
  store i64 %4523, i64* %RAX.i296, align 8
  store %struct.Memory* %loadMem_446d7a, %struct.Memory** %MEMORY
  %loadMem_446d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4525 = getelementptr inbounds %struct.GPR, %struct.GPR* %4524, i32 0, i32 33
  %4526 = getelementptr inbounds %struct.Reg, %struct.Reg* %4525, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %4526 to i64*
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 1
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %RAX.i293 = bitcast %union.anon* %4529 to i64*
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4531 = getelementptr inbounds %struct.GPR, %struct.GPR* %4530, i32 0, i32 5
  %4532 = getelementptr inbounds %struct.Reg, %struct.Reg* %4531, i32 0, i32 0
  %RCX.i294 = bitcast %union.anon* %4532 to i64*
  %4533 = load i64, i64* %RAX.i293
  %4534 = add i64 %4533, 12
  %4535 = load i64, i64* %PC.i292
  %4536 = add i64 %4535, 4
  store i64 %4536, i64* %PC.i292
  %4537 = inttoptr i64 %4534 to i16*
  %4538 = load i16, i16* %4537
  %4539 = zext i16 %4538 to i64
  store i64 %4539, i64* %RCX.i294, align 8
  store %struct.Memory* %loadMem_446d7e, %struct.Memory** %MEMORY
  %loadMem_446d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4541 = getelementptr inbounds %struct.GPR, %struct.GPR* %4540, i32 0, i32 33
  %4542 = getelementptr inbounds %struct.Reg, %struct.Reg* %4541, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %4542 to i64*
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4544 = getelementptr inbounds %struct.GPR, %struct.GPR* %4543, i32 0, i32 5
  %4545 = getelementptr inbounds %struct.Reg, %struct.Reg* %4544, i32 0, i32 0
  %ECX.i290 = bitcast %union.anon* %4545 to i32*
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4547 = getelementptr inbounds %struct.GPR, %struct.GPR* %4546, i32 0, i32 1
  %4548 = getelementptr inbounds %struct.Reg, %struct.Reg* %4547, i32 0, i32 0
  %RAX.i291 = bitcast %union.anon* %4548 to i64*
  %4549 = load i32, i32* %ECX.i290
  %4550 = zext i32 %4549 to i64
  %4551 = load i64, i64* %PC.i289
  %4552 = add i64 %4551, 2
  store i64 %4552, i64* %PC.i289
  %4553 = and i64 %4550, 4294967295
  store i64 %4553, i64* %RAX.i291, align 8
  store %struct.Memory* %loadMem_446d82, %struct.Memory** %MEMORY
  %loadMem_446d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4555 = getelementptr inbounds %struct.GPR, %struct.GPR* %4554, i32 0, i32 33
  %4556 = getelementptr inbounds %struct.Reg, %struct.Reg* %4555, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %4556 to i64*
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4558 = getelementptr inbounds %struct.GPR, %struct.GPR* %4557, i32 0, i32 1
  %4559 = getelementptr inbounds %struct.Reg, %struct.Reg* %4558, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %4559 to i64*
  %4560 = load i64, i64* %RAX.i288
  %4561 = load i64, i64* %PC.i287
  %4562 = add i64 %4561, 4
  store i64 %4562, i64* %PC.i287
  %4563 = shl i64 %4560, 1
  %4564 = icmp slt i64 %4563, 0
  %4565 = shl i64 %4563, 1
  store i64 %4565, i64* %RAX.i288, align 8
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4567 = zext i1 %4564 to i8
  store i8 %4567, i8* %4566, align 1
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4569 = trunc i64 %4565 to i32
  %4570 = and i32 %4569, 254
  %4571 = call i32 @llvm.ctpop.i32(i32 %4570)
  %4572 = trunc i32 %4571 to i8
  %4573 = and i8 %4572, 1
  %4574 = xor i8 %4573, 1
  store i8 %4574, i8* %4568, align 1
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4575, align 1
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4577 = icmp eq i64 %4565, 0
  %4578 = zext i1 %4577 to i8
  store i8 %4578, i8* %4576, align 1
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4580 = lshr i64 %4565, 63
  %4581 = trunc i64 %4580 to i8
  store i8 %4581, i8* %4579, align 1
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4582, align 1
  store %struct.Memory* %loadMem_446d84, %struct.Memory** %MEMORY
  %loadMem_446d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4584 = getelementptr inbounds %struct.GPR, %struct.GPR* %4583, i32 0, i32 33
  %4585 = getelementptr inbounds %struct.Reg, %struct.Reg* %4584, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %4585 to i64*
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4587 = getelementptr inbounds %struct.GPR, %struct.GPR* %4586, i32 0, i32 1
  %4588 = getelementptr inbounds %struct.Reg, %struct.Reg* %4587, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %4588 to i64*
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4590 = getelementptr inbounds %struct.GPR, %struct.GPR* %4589, i32 0, i32 11
  %4591 = getelementptr inbounds %struct.Reg, %struct.Reg* %4590, i32 0, i32 0
  %RDI.i286 = bitcast %union.anon* %4591 to i64*
  %4592 = load i64, i64* %RAX.i285
  %4593 = load i64, i64* %PC.i284
  %4594 = add i64 %4593, 3
  store i64 %4594, i64* %PC.i284
  store i64 %4592, i64* %RDI.i286, align 8
  store %struct.Memory* %loadMem_446d88, %struct.Memory** %MEMORY
  %loadMem1_446d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4596 = getelementptr inbounds %struct.GPR, %struct.GPR* %4595, i32 0, i32 33
  %4597 = getelementptr inbounds %struct.Reg, %struct.Reg* %4596, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %4597 to i64*
  %4598 = load i64, i64* %PC.i283
  %4599 = add i64 %4598, -284603
  %4600 = load i64, i64* %PC.i283
  %4601 = add i64 %4600, 5
  %4602 = load i64, i64* %PC.i283
  %4603 = add i64 %4602, 5
  store i64 %4603, i64* %PC.i283
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4605 = load i64, i64* %4604, align 8
  %4606 = add i64 %4605, -8
  %4607 = inttoptr i64 %4606 to i64*
  store i64 %4601, i64* %4607
  store i64 %4606, i64* %4604, align 8
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4599, i64* %4608, align 8
  store %struct.Memory* %loadMem1_446d8b, %struct.Memory** %MEMORY
  %loadMem2_446d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446d8b = load i64, i64* %3
  %4609 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %loadMem2_446d8b)
  store %struct.Memory* %4609, %struct.Memory** %MEMORY
  %loadMem_446d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4611 = getelementptr inbounds %struct.GPR, %struct.GPR* %4610, i32 0, i32 33
  %4612 = getelementptr inbounds %struct.Reg, %struct.Reg* %4611, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %4612 to i64*
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4614 = getelementptr inbounds %struct.GPR, %struct.GPR* %4613, i32 0, i32 11
  %4615 = getelementptr inbounds %struct.Reg, %struct.Reg* %4614, i32 0, i32 0
  %RDI.i279 = bitcast %union.anon* %4615 to i64*
  %4616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4617 = getelementptr inbounds %struct.GPR, %struct.GPR* %4616, i32 0, i32 15
  %4618 = getelementptr inbounds %struct.Reg, %struct.Reg* %4617, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %4618 to i64*
  %4619 = load i64, i64* %RBP.i280
  %4620 = sub i64 %4619, 16
  %4621 = load i64, i64* %PC.i278
  %4622 = add i64 %4621, 4
  store i64 %4622, i64* %PC.i278
  %4623 = inttoptr i64 %4620 to i64*
  %4624 = load i64, i64* %4623
  store i64 %4624, i64* %RDI.i279, align 8
  store %struct.Memory* %loadMem_446d90, %struct.Memory** %MEMORY
  %loadMem_446d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4626 = getelementptr inbounds %struct.GPR, %struct.GPR* %4625, i32 0, i32 33
  %4627 = getelementptr inbounds %struct.Reg, %struct.Reg* %4626, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %4627 to i64*
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4629 = getelementptr inbounds %struct.GPR, %struct.GPR* %4628, i32 0, i32 1
  %4630 = getelementptr inbounds %struct.Reg, %struct.Reg* %4629, i32 0, i32 0
  %RAX.i276 = bitcast %union.anon* %4630 to i64*
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4632 = getelementptr inbounds %struct.GPR, %struct.GPR* %4631, i32 0, i32 11
  %4633 = getelementptr inbounds %struct.Reg, %struct.Reg* %4632, i32 0, i32 0
  %RDI.i277 = bitcast %union.anon* %4633 to i64*
  %4634 = load i64, i64* %RDI.i277
  %4635 = add i64 %4634, 136
  %4636 = load i64, i64* %RAX.i276
  %4637 = load i64, i64* %PC.i275
  %4638 = add i64 %4637, 7
  store i64 %4638, i64* %PC.i275
  %4639 = inttoptr i64 %4635 to i64*
  store i64 %4636, i64* %4639
  store %struct.Memory* %loadMem_446d94, %struct.Memory** %MEMORY
  %loadMem_446d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4641 = getelementptr inbounds %struct.GPR, %struct.GPR* %4640, i32 0, i32 33
  %4642 = getelementptr inbounds %struct.Reg, %struct.Reg* %4641, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %4642 to i64*
  %4643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4644 = getelementptr inbounds %struct.GPR, %struct.GPR* %4643, i32 0, i32 1
  %4645 = getelementptr inbounds %struct.Reg, %struct.Reg* %4644, i32 0, i32 0
  %RAX.i274 = bitcast %union.anon* %4645 to i64*
  %4646 = load i64, i64* %RAX.i274
  %4647 = load i64, i64* %PC.i273
  %4648 = add i64 %4647, 4
  store i64 %4648, i64* %PC.i273
  %4649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4649, align 1
  %4650 = trunc i64 %4646 to i32
  %4651 = and i32 %4650, 255
  %4652 = call i32 @llvm.ctpop.i32(i32 %4651)
  %4653 = trunc i32 %4652 to i8
  %4654 = and i8 %4653, 1
  %4655 = xor i8 %4654, 1
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4655, i8* %4656, align 1
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4657, align 1
  %4658 = icmp eq i64 %4646, 0
  %4659 = zext i1 %4658 to i8
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4659, i8* %4660, align 1
  %4661 = lshr i64 %4646, 63
  %4662 = trunc i64 %4661 to i8
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4662, i8* %4663, align 1
  %4664 = lshr i64 %4646, 63
  %4665 = xor i64 %4661, %4664
  %4666 = add i64 %4665, %4664
  %4667 = icmp eq i64 %4666, 2
  %4668 = zext i1 %4667 to i8
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4668, i8* %4669, align 1
  store %struct.Memory* %loadMem_446d9b, %struct.Memory** %MEMORY
  %loadMem_446d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4671 = getelementptr inbounds %struct.GPR, %struct.GPR* %4670, i32 0, i32 33
  %4672 = getelementptr inbounds %struct.Reg, %struct.Reg* %4671, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %4672 to i64*
  %4673 = load i64, i64* %PC.i272
  %4674 = add i64 %4673, 18
  %4675 = load i64, i64* %PC.i272
  %4676 = add i64 %4675, 6
  %4677 = load i64, i64* %PC.i272
  %4678 = add i64 %4677, 6
  store i64 %4678, i64* %PC.i272
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4680 = load i8, i8* %4679, align 1
  %4681 = icmp eq i8 %4680, 0
  %4682 = zext i1 %4681 to i8
  store i8 %4682, i8* %BRANCH_TAKEN, align 1
  %4683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4684 = select i1 %4681, i64 %4674, i64 %4676
  store i64 %4684, i64* %4683, align 8
  store %struct.Memory* %loadMem_446d9f, %struct.Memory** %MEMORY
  %loadBr_446d9f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446d9f = icmp eq i8 %loadBr_446d9f, 1
  br i1 %cmpBr_446d9f, label %block_.L_446db1, label %block_446da5

block_446da5:                                     ; preds = %block_.L_446d7a
  %loadMem_446da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4686 = getelementptr inbounds %struct.GPR, %struct.GPR* %4685, i32 0, i32 33
  %4687 = getelementptr inbounds %struct.Reg, %struct.Reg* %4686, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %4687 to i64*
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4689 = getelementptr inbounds %struct.GPR, %struct.GPR* %4688, i32 0, i32 15
  %4690 = getelementptr inbounds %struct.Reg, %struct.Reg* %4689, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %4690 to i64*
  %4691 = load i64, i64* %RBP.i271
  %4692 = sub i64 %4691, 28
  %4693 = load i64, i64* %PC.i270
  %4694 = add i64 %4693, 7
  store i64 %4694, i64* %PC.i270
  %4695 = inttoptr i64 %4692 to i32*
  store i32 3, i32* %4695
  store %struct.Memory* %loadMem_446da5, %struct.Memory** %MEMORY
  %loadMem_446dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4697 = getelementptr inbounds %struct.GPR, %struct.GPR* %4696, i32 0, i32 33
  %4698 = getelementptr inbounds %struct.Reg, %struct.Reg* %4697, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %4698 to i64*
  %4699 = load i64, i64* %PC.i269
  %4700 = add i64 %4699, 448
  %4701 = load i64, i64* %PC.i269
  %4702 = add i64 %4701, 5
  store i64 %4702, i64* %PC.i269
  %4703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4700, i64* %4703, align 8
  store %struct.Memory* %loadMem_446dac, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446db1:                                  ; preds = %block_.L_446d7a
  %loadMem_446db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4705 = getelementptr inbounds %struct.GPR, %struct.GPR* %4704, i32 0, i32 33
  %4706 = getelementptr inbounds %struct.Reg, %struct.Reg* %4705, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %4706 to i64*
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4708 = getelementptr inbounds %struct.GPR, %struct.GPR* %4707, i32 0, i32 15
  %4709 = getelementptr inbounds %struct.Reg, %struct.Reg* %4708, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %4709 to i64*
  %4710 = load i64, i64* %RBP.i268
  %4711 = sub i64 %4710, 22
  %4712 = load i64, i64* %PC.i267
  %4713 = add i64 %4712, 6
  store i64 %4713, i64* %PC.i267
  %4714 = inttoptr i64 %4711 to i16*
  store i16 0, i16* %4714
  store %struct.Memory* %loadMem_446db1, %struct.Memory** %MEMORY
  br label %block_.L_446db7

block_.L_446db7:                                  ; preds = %block_.L_446f4f, %block_.L_446db1
  %loadMem_446db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4716 = getelementptr inbounds %struct.GPR, %struct.GPR* %4715, i32 0, i32 33
  %4717 = getelementptr inbounds %struct.Reg, %struct.Reg* %4716, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %4717 to i64*
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4719 = getelementptr inbounds %struct.GPR, %struct.GPR* %4718, i32 0, i32 1
  %4720 = getelementptr inbounds %struct.Reg, %struct.Reg* %4719, i32 0, i32 0
  %RAX.i265 = bitcast %union.anon* %4720 to i64*
  %4721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4722 = getelementptr inbounds %struct.GPR, %struct.GPR* %4721, i32 0, i32 15
  %4723 = getelementptr inbounds %struct.Reg, %struct.Reg* %4722, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %4723 to i64*
  %4724 = load i64, i64* %RBP.i266
  %4725 = sub i64 %4724, 22
  %4726 = load i64, i64* %PC.i264
  %4727 = add i64 %4726, 4
  store i64 %4727, i64* %PC.i264
  %4728 = inttoptr i64 %4725 to i16*
  %4729 = load i16, i16* %4728
  %4730 = zext i16 %4729 to i64
  store i64 %4730, i64* %RAX.i265, align 8
  store %struct.Memory* %loadMem_446db7, %struct.Memory** %MEMORY
  %loadMem_446dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4732 = getelementptr inbounds %struct.GPR, %struct.GPR* %4731, i32 0, i32 33
  %4733 = getelementptr inbounds %struct.Reg, %struct.Reg* %4732, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %4733 to i64*
  %4734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4735 = getelementptr inbounds %struct.GPR, %struct.GPR* %4734, i32 0, i32 5
  %4736 = getelementptr inbounds %struct.Reg, %struct.Reg* %4735, i32 0, i32 0
  %RCX.i262 = bitcast %union.anon* %4736 to i64*
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4738 = getelementptr inbounds %struct.GPR, %struct.GPR* %4737, i32 0, i32 15
  %4739 = getelementptr inbounds %struct.Reg, %struct.Reg* %4738, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %4739 to i64*
  %4740 = load i64, i64* %RBP.i263
  %4741 = sub i64 %4740, 16
  %4742 = load i64, i64* %PC.i261
  %4743 = add i64 %4742, 4
  store i64 %4743, i64* %PC.i261
  %4744 = inttoptr i64 %4741 to i64*
  %4745 = load i64, i64* %4744
  store i64 %4745, i64* %RCX.i262, align 8
  store %struct.Memory* %loadMem_446dbb, %struct.Memory** %MEMORY
  %loadMem_446dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4747 = getelementptr inbounds %struct.GPR, %struct.GPR* %4746, i32 0, i32 33
  %4748 = getelementptr inbounds %struct.Reg, %struct.Reg* %4747, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %4748 to i64*
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4750 = getelementptr inbounds %struct.GPR, %struct.GPR* %4749, i32 0, i32 5
  %4751 = getelementptr inbounds %struct.Reg, %struct.Reg* %4750, i32 0, i32 0
  %RCX.i259 = bitcast %union.anon* %4751 to i64*
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4753 = getelementptr inbounds %struct.GPR, %struct.GPR* %4752, i32 0, i32 7
  %4754 = getelementptr inbounds %struct.Reg, %struct.Reg* %4753, i32 0, i32 0
  %RDX.i260 = bitcast %union.anon* %4754 to i64*
  %4755 = load i64, i64* %RCX.i259
  %4756 = add i64 %4755, 12
  %4757 = load i64, i64* %PC.i258
  %4758 = add i64 %4757, 4
  store i64 %4758, i64* %PC.i258
  %4759 = inttoptr i64 %4756 to i16*
  %4760 = load i16, i16* %4759
  %4761 = zext i16 %4760 to i64
  store i64 %4761, i64* %RDX.i260, align 8
  store %struct.Memory* %loadMem_446dbf, %struct.Memory** %MEMORY
  %loadMem_446dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4763 = getelementptr inbounds %struct.GPR, %struct.GPR* %4762, i32 0, i32 33
  %4764 = getelementptr inbounds %struct.Reg, %struct.Reg* %4763, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %4764 to i64*
  %4765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4766 = getelementptr inbounds %struct.GPR, %struct.GPR* %4765, i32 0, i32 1
  %4767 = getelementptr inbounds %struct.Reg, %struct.Reg* %4766, i32 0, i32 0
  %EAX.i257 = bitcast %union.anon* %4767 to i32*
  %4768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4769 = getelementptr inbounds %struct.GPR, %struct.GPR* %4768, i32 0, i32 7
  %4770 = getelementptr inbounds %struct.Reg, %struct.Reg* %4769, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %4770 to i32*
  %4771 = load i32, i32* %EAX.i257
  %4772 = zext i32 %4771 to i64
  %4773 = load i32, i32* %EDX.i
  %4774 = zext i32 %4773 to i64
  %4775 = load i64, i64* %PC.i256
  %4776 = add i64 %4775, 2
  store i64 %4776, i64* %PC.i256
  %4777 = sub i32 %4771, %4773
  %4778 = icmp ult i32 %4771, %4773
  %4779 = zext i1 %4778 to i8
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4779, i8* %4780, align 1
  %4781 = and i32 %4777, 255
  %4782 = call i32 @llvm.ctpop.i32(i32 %4781)
  %4783 = trunc i32 %4782 to i8
  %4784 = and i8 %4783, 1
  %4785 = xor i8 %4784, 1
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4785, i8* %4786, align 1
  %4787 = xor i64 %4774, %4772
  %4788 = trunc i64 %4787 to i32
  %4789 = xor i32 %4788, %4777
  %4790 = lshr i32 %4789, 4
  %4791 = trunc i32 %4790 to i8
  %4792 = and i8 %4791, 1
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4792, i8* %4793, align 1
  %4794 = icmp eq i32 %4777, 0
  %4795 = zext i1 %4794 to i8
  %4796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4795, i8* %4796, align 1
  %4797 = lshr i32 %4777, 31
  %4798 = trunc i32 %4797 to i8
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4798, i8* %4799, align 1
  %4800 = lshr i32 %4771, 31
  %4801 = lshr i32 %4773, 31
  %4802 = xor i32 %4801, %4800
  %4803 = xor i32 %4797, %4800
  %4804 = add i32 %4803, %4802
  %4805 = icmp eq i32 %4804, 2
  %4806 = zext i1 %4805 to i8
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4806, i8* %4807, align 1
  store %struct.Memory* %loadMem_446dc3, %struct.Memory** %MEMORY
  %loadMem_446dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4809 = getelementptr inbounds %struct.GPR, %struct.GPR* %4808, i32 0, i32 33
  %4810 = getelementptr inbounds %struct.Reg, %struct.Reg* %4809, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %4810 to i64*
  %4811 = load i64, i64* %PC.i255
  %4812 = add i64 %4811, 411
  %4813 = load i64, i64* %PC.i255
  %4814 = add i64 %4813, 6
  %4815 = load i64, i64* %PC.i255
  %4816 = add i64 %4815, 6
  store i64 %4816, i64* %PC.i255
  %4817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4818 = load i8, i8* %4817, align 1
  %4819 = icmp ne i8 %4818, 0
  %4820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4821 = load i8, i8* %4820, align 1
  %4822 = icmp ne i8 %4821, 0
  %4823 = xor i1 %4819, %4822
  %4824 = xor i1 %4823, true
  %4825 = zext i1 %4824 to i8
  store i8 %4825, i8* %BRANCH_TAKEN, align 1
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4827 = select i1 %4823, i64 %4814, i64 %4812
  store i64 %4827, i64* %4826, align 8
  store %struct.Memory* %loadMem_446dc5, %struct.Memory** %MEMORY
  %loadBr_446dc5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446dc5 = icmp eq i8 %loadBr_446dc5, 1
  br i1 %cmpBr_446dc5, label %block_.L_446f60, label %block_446dcb

block_446dcb:                                     ; preds = %block_.L_446db7
  %loadMem_446dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4829 = getelementptr inbounds %struct.GPR, %struct.GPR* %4828, i32 0, i32 33
  %4830 = getelementptr inbounds %struct.Reg, %struct.Reg* %4829, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %4830 to i64*
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4832 = getelementptr inbounds %struct.GPR, %struct.GPR* %4831, i32 0, i32 11
  %4833 = getelementptr inbounds %struct.Reg, %struct.Reg* %4832, i32 0, i32 0
  %RDI.i253 = bitcast %union.anon* %4833 to i64*
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4835 = getelementptr inbounds %struct.GPR, %struct.GPR* %4834, i32 0, i32 15
  %4836 = getelementptr inbounds %struct.Reg, %struct.Reg* %4835, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %4836 to i64*
  %4837 = load i64, i64* %RBP.i254
  %4838 = sub i64 %4837, 16
  %4839 = load i64, i64* %PC.i252
  %4840 = add i64 %4839, 4
  store i64 %4840, i64* %PC.i252
  %4841 = inttoptr i64 %4838 to i64*
  %4842 = load i64, i64* %4841
  store i64 %4842, i64* %RDI.i253, align 8
  store %struct.Memory* %loadMem_446dcb, %struct.Memory** %MEMORY
  %loadMem_446dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4844 = getelementptr inbounds %struct.GPR, %struct.GPR* %4843, i32 0, i32 33
  %4845 = getelementptr inbounds %struct.Reg, %struct.Reg* %4844, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %4845 to i64*
  %4846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4847 = getelementptr inbounds %struct.GPR, %struct.GPR* %4846, i32 0, i32 1
  %4848 = getelementptr inbounds %struct.Reg, %struct.Reg* %4847, i32 0, i32 0
  %RAX.i250 = bitcast %union.anon* %4848 to i64*
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4850 = getelementptr inbounds %struct.GPR, %struct.GPR* %4849, i32 0, i32 15
  %4851 = getelementptr inbounds %struct.Reg, %struct.Reg* %4850, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %4851 to i64*
  %4852 = load i64, i64* %RBP.i251
  %4853 = sub i64 %4852, 16
  %4854 = load i64, i64* %PC.i249
  %4855 = add i64 %4854, 4
  store i64 %4855, i64* %PC.i249
  %4856 = inttoptr i64 %4853 to i64*
  %4857 = load i64, i64* %4856
  store i64 %4857, i64* %RAX.i250, align 8
  store %struct.Memory* %loadMem_446dcf, %struct.Memory** %MEMORY
  %loadMem_446dd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4859 = getelementptr inbounds %struct.GPR, %struct.GPR* %4858, i32 0, i32 33
  %4860 = getelementptr inbounds %struct.Reg, %struct.Reg* %4859, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %4860 to i64*
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4862 = getelementptr inbounds %struct.GPR, %struct.GPR* %4861, i32 0, i32 1
  %4863 = getelementptr inbounds %struct.Reg, %struct.Reg* %4862, i32 0, i32 0
  %RAX.i248 = bitcast %union.anon* %4863 to i64*
  %4864 = load i64, i64* %RAX.i248
  %4865 = load i64, i64* %PC.i247
  %4866 = add i64 %4865, 4
  store i64 %4866, i64* %PC.i247
  %4867 = add i64 48, %4864
  store i64 %4867, i64* %RAX.i248, align 8
  %4868 = icmp ult i64 %4867, %4864
  %4869 = icmp ult i64 %4867, 48
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
  %4880 = xor i64 48, %4864
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
  %4892 = lshr i64 %4864, 63
  %4893 = xor i64 %4889, %4892
  %4894 = add i64 %4893, %4889
  %4895 = icmp eq i64 %4894, 2
  %4896 = zext i1 %4895 to i8
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4896, i8* %4897, align 1
  store %struct.Memory* %loadMem_446dd3, %struct.Memory** %MEMORY
  %loadMem_446dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4899 = getelementptr inbounds %struct.GPR, %struct.GPR* %4898, i32 0, i32 33
  %4900 = getelementptr inbounds %struct.Reg, %struct.Reg* %4899, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %4900 to i64*
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4902 = getelementptr inbounds %struct.GPR, %struct.GPR* %4901, i32 0, i32 5
  %4903 = getelementptr inbounds %struct.Reg, %struct.Reg* %4902, i32 0, i32 0
  %RCX.i245 = bitcast %union.anon* %4903 to i64*
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4905 = getelementptr inbounds %struct.GPR, %struct.GPR* %4904, i32 0, i32 15
  %4906 = getelementptr inbounds %struct.Reg, %struct.Reg* %4905, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %4906 to i64*
  %4907 = load i64, i64* %RBP.i246
  %4908 = sub i64 %4907, 16
  %4909 = load i64, i64* %PC.i244
  %4910 = add i64 %4909, 4
  store i64 %4910, i64* %PC.i244
  %4911 = inttoptr i64 %4908 to i64*
  %4912 = load i64, i64* %4911
  store i64 %4912, i64* %RCX.i245, align 8
  store %struct.Memory* %loadMem_446dd7, %struct.Memory** %MEMORY
  %loadMem_446ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4914 = getelementptr inbounds %struct.GPR, %struct.GPR* %4913, i32 0, i32 33
  %4915 = getelementptr inbounds %struct.Reg, %struct.Reg* %4914, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %4915 to i64*
  %4916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4917 = getelementptr inbounds %struct.GPR, %struct.GPR* %4916, i32 0, i32 5
  %4918 = getelementptr inbounds %struct.Reg, %struct.Reg* %4917, i32 0, i32 0
  %RCX.i242 = bitcast %union.anon* %4918 to i64*
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4920 = getelementptr inbounds %struct.GPR, %struct.GPR* %4919, i32 0, i32 7
  %4921 = getelementptr inbounds %struct.Reg, %struct.Reg* %4920, i32 0, i32 0
  %RDX.i243 = bitcast %union.anon* %4921 to i64*
  %4922 = load i64, i64* %RCX.i242
  %4923 = add i64 %4922, 36
  %4924 = load i64, i64* %PC.i241
  %4925 = add i64 %4924, 3
  store i64 %4925, i64* %PC.i241
  %4926 = inttoptr i64 %4923 to i32*
  %4927 = load i32, i32* %4926
  %4928 = zext i32 %4927 to i64
  store i64 %4928, i64* %RDX.i243, align 8
  store %struct.Memory* %loadMem_446ddb, %struct.Memory** %MEMORY
  %loadMem_446dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %4929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4930 = getelementptr inbounds %struct.GPR, %struct.GPR* %4929, i32 0, i32 33
  %4931 = getelementptr inbounds %struct.Reg, %struct.Reg* %4930, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %4931 to i64*
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4933 = getelementptr inbounds %struct.GPR, %struct.GPR* %4932, i32 0, i32 5
  %4934 = getelementptr inbounds %struct.Reg, %struct.Reg* %4933, i32 0, i32 0
  %RCX.i239 = bitcast %union.anon* %4934 to i64*
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4936 = getelementptr inbounds %struct.GPR, %struct.GPR* %4935, i32 0, i32 15
  %4937 = getelementptr inbounds %struct.Reg, %struct.Reg* %4936, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %4937 to i64*
  %4938 = load i64, i64* %RBP.i240
  %4939 = sub i64 %4938, 22
  %4940 = load i64, i64* %PC.i238
  %4941 = add i64 %4940, 4
  store i64 %4941, i64* %PC.i238
  %4942 = inttoptr i64 %4939 to i16*
  %4943 = load i16, i16* %4942
  %4944 = zext i16 %4943 to i64
  store i64 %4944, i64* %RCX.i239, align 8
  store %struct.Memory* %loadMem_446dde, %struct.Memory** %MEMORY
  %loadMem_446de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4946 = getelementptr inbounds %struct.GPR, %struct.GPR* %4945, i32 0, i32 33
  %4947 = getelementptr inbounds %struct.Reg, %struct.Reg* %4946, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %4947 to i64*
  %4948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4949 = getelementptr inbounds %struct.GPR, %struct.GPR* %4948, i32 0, i32 1
  %4950 = getelementptr inbounds %struct.Reg, %struct.Reg* %4949, i32 0, i32 0
  %RAX.i236 = bitcast %union.anon* %4950 to i64*
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4952 = getelementptr inbounds %struct.GPR, %struct.GPR* %4951, i32 0, i32 9
  %4953 = getelementptr inbounds %struct.Reg, %struct.Reg* %4952, i32 0, i32 0
  %RSI.i237 = bitcast %union.anon* %4953 to i64*
  %4954 = load i64, i64* %RAX.i236
  %4955 = load i64, i64* %PC.i235
  %4956 = add i64 %4955, 3
  store i64 %4956, i64* %PC.i235
  store i64 %4954, i64* %RSI.i237, align 8
  store %struct.Memory* %loadMem_446de2, %struct.Memory** %MEMORY
  %loadMem1_446de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4958 = getelementptr inbounds %struct.GPR, %struct.GPR* %4957, i32 0, i32 33
  %4959 = getelementptr inbounds %struct.Reg, %struct.Reg* %4958, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %4959 to i64*
  %4960 = load i64, i64* %PC.i234
  %4961 = add i64 %4960, 843
  %4962 = load i64, i64* %PC.i234
  %4963 = add i64 %4962, 5
  %4964 = load i64, i64* %PC.i234
  %4965 = add i64 %4964, 5
  store i64 %4965, i64* %PC.i234
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4967 = load i64, i64* %4966, align 8
  %4968 = add i64 %4967, -8
  %4969 = inttoptr i64 %4968 to i64*
  store i64 %4963, i64* %4969
  store i64 %4968, i64* %4966, align 8
  %4970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4961, i64* %4970, align 8
  store %struct.Memory* %loadMem1_446de5, %struct.Memory** %MEMORY
  %loadMem2_446de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446de5 = load i64, i64* %3
  %call2_446de5 = call %struct.Memory* @sub_447130.indexfile_position(%struct.State* %0, i64 %loadPC_446de5, %struct.Memory* %loadMem2_446de5)
  store %struct.Memory* %call2_446de5, %struct.Memory** %MEMORY
  %loadMem_446dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4972 = getelementptr inbounds %struct.GPR, %struct.GPR* %4971, i32 0, i32 33
  %4973 = getelementptr inbounds %struct.Reg, %struct.Reg* %4972, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %4973 to i64*
  %4974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4975 = getelementptr inbounds %struct.GPR, %struct.GPR* %4974, i32 0, i32 1
  %4976 = getelementptr inbounds %struct.Reg, %struct.Reg* %4975, i32 0, i32 0
  %EAX.i233 = bitcast %union.anon* %4976 to i32*
  %4977 = load i32, i32* %EAX.i233
  %4978 = zext i32 %4977 to i64
  %4979 = load i64, i64* %PC.i232
  %4980 = add i64 %4979, 3
  store i64 %4980, i64* %PC.i232
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4981, align 1
  %4982 = and i32 %4977, 255
  %4983 = call i32 @llvm.ctpop.i32(i32 %4982)
  %4984 = trunc i32 %4983 to i8
  %4985 = and i8 %4984, 1
  %4986 = xor i8 %4985, 1
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4986, i8* %4987, align 1
  %4988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4988, align 1
  %4989 = icmp eq i32 %4977, 0
  %4990 = zext i1 %4989 to i8
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4990, i8* %4991, align 1
  %4992 = lshr i32 %4977, 31
  %4993 = trunc i32 %4992 to i8
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4993, i8* %4994, align 1
  %4995 = lshr i32 %4977, 31
  %4996 = xor i32 %4992, %4995
  %4997 = add i32 %4996, %4995
  %4998 = icmp eq i32 %4997, 2
  %4999 = zext i1 %4998 to i8
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4999, i8* %5000, align 1
  store %struct.Memory* %loadMem_446dea, %struct.Memory** %MEMORY
  %loadMem_446ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %5001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5002 = getelementptr inbounds %struct.GPR, %struct.GPR* %5001, i32 0, i32 33
  %5003 = getelementptr inbounds %struct.Reg, %struct.Reg* %5002, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %5003 to i64*
  %5004 = load i64, i64* %PC.i231
  %5005 = add i64 %5004, 11
  %5006 = load i64, i64* %PC.i231
  %5007 = add i64 %5006, 6
  %5008 = load i64, i64* %PC.i231
  %5009 = add i64 %5008, 6
  store i64 %5009, i64* %PC.i231
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5011 = load i8, i8* %5010, align 1
  store i8 %5011, i8* %BRANCH_TAKEN, align 1
  %5012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5013 = icmp ne i8 %5011, 0
  %5014 = select i1 %5013, i64 %5005, i64 %5007
  store i64 %5014, i64* %5012, align 8
  store %struct.Memory* %loadMem_446ded, %struct.Memory** %MEMORY
  %loadBr_446ded = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446ded = icmp eq i8 %loadBr_446ded, 1
  br i1 %cmpBr_446ded, label %block_.L_446df8, label %block_446df3

block_446df3:                                     ; preds = %block_446dcb
  %loadMem_446df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5016 = getelementptr inbounds %struct.GPR, %struct.GPR* %5015, i32 0, i32 33
  %5017 = getelementptr inbounds %struct.Reg, %struct.Reg* %5016, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %5017 to i64*
  %5018 = load i64, i64* %PC.i230
  %5019 = add i64 %5018, 377
  %5020 = load i64, i64* %PC.i230
  %5021 = add i64 %5020, 5
  store i64 %5021, i64* %PC.i230
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5019, i64* %5022, align 8
  store %struct.Memory* %loadMem_446df3, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446df8:                                  ; preds = %block_446dcb
  %loadMem_446df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5024 = getelementptr inbounds %struct.GPR, %struct.GPR* %5023, i32 0, i32 33
  %5025 = getelementptr inbounds %struct.Reg, %struct.Reg* %5024, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %5025 to i64*
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5027 = getelementptr inbounds %struct.GPR, %struct.GPR* %5026, i32 0, i32 1
  %5028 = getelementptr inbounds %struct.Reg, %struct.Reg* %5027, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %5028 to i64*
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5030 = getelementptr inbounds %struct.GPR, %struct.GPR* %5029, i32 0, i32 15
  %5031 = getelementptr inbounds %struct.Reg, %struct.Reg* %5030, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %5031 to i64*
  %5032 = load i64, i64* %RBP.i229
  %5033 = sub i64 %5032, 16
  %5034 = load i64, i64* %PC.i227
  %5035 = add i64 %5034, 4
  store i64 %5035, i64* %PC.i227
  %5036 = inttoptr i64 %5033 to i64*
  %5037 = load i64, i64* %5036
  store i64 %5037, i64* %RAX.i228, align 8
  store %struct.Memory* %loadMem_446df8, %struct.Memory** %MEMORY
  %loadMem_446dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5039 = getelementptr inbounds %struct.GPR, %struct.GPR* %5038, i32 0, i32 33
  %5040 = getelementptr inbounds %struct.Reg, %struct.Reg* %5039, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %5040 to i64*
  %5041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5042 = getelementptr inbounds %struct.GPR, %struct.GPR* %5041, i32 0, i32 1
  %5043 = getelementptr inbounds %struct.Reg, %struct.Reg* %5042, i32 0, i32 0
  %RAX.i225 = bitcast %union.anon* %5043 to i64*
  %5044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5045 = getelementptr inbounds %struct.GPR, %struct.GPR* %5044, i32 0, i32 5
  %5046 = getelementptr inbounds %struct.Reg, %struct.Reg* %5045, i32 0, i32 0
  %RCX.i226 = bitcast %union.anon* %5046 to i64*
  %5047 = load i64, i64* %RAX.i225
  %5048 = add i64 %5047, 24
  %5049 = load i64, i64* %PC.i224
  %5050 = add i64 %5049, 3
  store i64 %5050, i64* %PC.i224
  %5051 = inttoptr i64 %5048 to i32*
  %5052 = load i32, i32* %5051
  %5053 = zext i32 %5052 to i64
  store i64 %5053, i64* %RCX.i226, align 8
  store %struct.Memory* %loadMem_446dfc, %struct.Memory** %MEMORY
  %loadMem_446dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %5054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5055 = getelementptr inbounds %struct.GPR, %struct.GPR* %5054, i32 0, i32 33
  %5056 = getelementptr inbounds %struct.Reg, %struct.Reg* %5055, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %5056 to i64*
  %5057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5058 = getelementptr inbounds %struct.GPR, %struct.GPR* %5057, i32 0, i32 5
  %5059 = getelementptr inbounds %struct.Reg, %struct.Reg* %5058, i32 0, i32 0
  %ECX.i222 = bitcast %union.anon* %5059 to i32*
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5061 = getelementptr inbounds %struct.GPR, %struct.GPR* %5060, i32 0, i32 1
  %5062 = getelementptr inbounds %struct.Reg, %struct.Reg* %5061, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %5062 to i64*
  %5063 = load i32, i32* %ECX.i222
  %5064 = zext i32 %5063 to i64
  %5065 = load i64, i64* %PC.i221
  %5066 = add i64 %5065, 2
  store i64 %5066, i64* %PC.i221
  %5067 = and i64 %5064, 4294967295
  store i64 %5067, i64* %RAX.i223, align 8
  store %struct.Memory* %loadMem_446dff, %struct.Memory** %MEMORY
  %loadMem_446e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5069 = getelementptr inbounds %struct.GPR, %struct.GPR* %5068, i32 0, i32 33
  %5070 = getelementptr inbounds %struct.Reg, %struct.Reg* %5069, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %5070 to i64*
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5072 = getelementptr inbounds %struct.GPR, %struct.GPR* %5071, i32 0, i32 1
  %5073 = getelementptr inbounds %struct.Reg, %struct.Reg* %5072, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %5073 to i64*
  %5074 = load i64, i64* %RAX.i220
  %5075 = load i64, i64* %PC.i219
  %5076 = add i64 %5075, 4
  store i64 %5076, i64* %PC.i219
  store %struct.Memory* %loadMem_446e01, %struct.Memory** %MEMORY
  %loadMem_446e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5078 = getelementptr inbounds %struct.GPR, %struct.GPR* %5077, i32 0, i32 33
  %5079 = getelementptr inbounds %struct.Reg, %struct.Reg* %5078, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %5079 to i64*
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 1
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %5082 to i64*
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5084 = getelementptr inbounds %struct.GPR, %struct.GPR* %5083, i32 0, i32 11
  %5085 = getelementptr inbounds %struct.Reg, %struct.Reg* %5084, i32 0, i32 0
  %RDI.i218 = bitcast %union.anon* %5085 to i64*
  %5086 = load i64, i64* %RAX.i217
  %5087 = load i64, i64* %PC.i216
  %5088 = add i64 %5087, 3
  store i64 %5088, i64* %PC.i216
  store i64 %5086, i64* %RDI.i218, align 8
  store %struct.Memory* %loadMem_446e05, %struct.Memory** %MEMORY
  %loadMem1_446e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5090 = getelementptr inbounds %struct.GPR, %struct.GPR* %5089, i32 0, i32 33
  %5091 = getelementptr inbounds %struct.Reg, %struct.Reg* %5090, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %5091 to i64*
  %5092 = load i64, i64* %PC.i215
  %5093 = add i64 %5092, -284728
  %5094 = load i64, i64* %PC.i215
  %5095 = add i64 %5094, 5
  %5096 = load i64, i64* %PC.i215
  %5097 = add i64 %5096, 5
  store i64 %5097, i64* %PC.i215
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5099 = load i64, i64* %5098, align 8
  %5100 = add i64 %5099, -8
  %5101 = inttoptr i64 %5100 to i64*
  store i64 %5095, i64* %5101
  store i64 %5100, i64* %5098, align 8
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5093, i64* %5102, align 8
  store %struct.Memory* %loadMem1_446e08, %struct.Memory** %MEMORY
  %loadMem2_446e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446e08 = load i64, i64* %3
  %5103 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %loadMem2_446e08)
  store %struct.Memory* %5103, %struct.Memory** %MEMORY
  %loadMem_446e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5105 = getelementptr inbounds %struct.GPR, %struct.GPR* %5104, i32 0, i32 33
  %5106 = getelementptr inbounds %struct.Reg, %struct.Reg* %5105, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %5106 to i64*
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5108 = getelementptr inbounds %struct.GPR, %struct.GPR* %5107, i32 0, i32 11
  %5109 = getelementptr inbounds %struct.Reg, %struct.Reg* %5108, i32 0, i32 0
  %RDI.i210 = bitcast %union.anon* %5109 to i64*
  %5110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5111 = getelementptr inbounds %struct.GPR, %struct.GPR* %5110, i32 0, i32 15
  %5112 = getelementptr inbounds %struct.Reg, %struct.Reg* %5111, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %5112 to i64*
  %5113 = load i64, i64* %RBP.i211
  %5114 = sub i64 %5113, 16
  %5115 = load i64, i64* %PC.i209
  %5116 = add i64 %5115, 4
  store i64 %5116, i64* %PC.i209
  %5117 = inttoptr i64 %5114 to i64*
  %5118 = load i64, i64* %5117
  store i64 %5118, i64* %RDI.i210, align 8
  store %struct.Memory* %loadMem_446e0d, %struct.Memory** %MEMORY
  %loadMem_446e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5120 = getelementptr inbounds %struct.GPR, %struct.GPR* %5119, i32 0, i32 33
  %5121 = getelementptr inbounds %struct.Reg, %struct.Reg* %5120, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %5121 to i64*
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5123 = getelementptr inbounds %struct.GPR, %struct.GPR* %5122, i32 0, i32 11
  %5124 = getelementptr inbounds %struct.Reg, %struct.Reg* %5123, i32 0, i32 0
  %RDI.i208 = bitcast %union.anon* %5124 to i64*
  %5125 = load i64, i64* %RDI.i208
  %5126 = add i64 %5125, 104
  %5127 = load i64, i64* %PC.i207
  %5128 = add i64 %5127, 4
  store i64 %5128, i64* %PC.i207
  %5129 = inttoptr i64 %5126 to i64*
  %5130 = load i64, i64* %5129
  store i64 %5130, i64* %RDI.i208, align 8
  store %struct.Memory* %loadMem_446e11, %struct.Memory** %MEMORY
  %loadMem_446e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5132 = getelementptr inbounds %struct.GPR, %struct.GPR* %5131, i32 0, i32 33
  %5133 = getelementptr inbounds %struct.Reg, %struct.Reg* %5132, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %5133 to i64*
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5135 = getelementptr inbounds %struct.GPR, %struct.GPR* %5134, i32 0, i32 5
  %5136 = getelementptr inbounds %struct.Reg, %struct.Reg* %5135, i32 0, i32 0
  %RCX.i205 = bitcast %union.anon* %5136 to i64*
  %5137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5138 = getelementptr inbounds %struct.GPR, %struct.GPR* %5137, i32 0, i32 15
  %5139 = getelementptr inbounds %struct.Reg, %struct.Reg* %5138, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %5139 to i64*
  %5140 = load i64, i64* %RBP.i206
  %5141 = sub i64 %5140, 22
  %5142 = load i64, i64* %PC.i204
  %5143 = add i64 %5142, 4
  store i64 %5143, i64* %PC.i204
  %5144 = inttoptr i64 %5141 to i16*
  %5145 = load i16, i16* %5144
  %5146 = zext i16 %5145 to i64
  store i64 %5146, i64* %RCX.i205, align 8
  store %struct.Memory* %loadMem_446e15, %struct.Memory** %MEMORY
  %loadMem_446e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5148 = getelementptr inbounds %struct.GPR, %struct.GPR* %5147, i32 0, i32 33
  %5149 = getelementptr inbounds %struct.Reg, %struct.Reg* %5148, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %5149 to i64*
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5151 = getelementptr inbounds %struct.GPR, %struct.GPR* %5150, i32 0, i32 5
  %5152 = getelementptr inbounds %struct.Reg, %struct.Reg* %5151, i32 0, i32 0
  %ECX.i202 = bitcast %union.anon* %5152 to i32*
  %5153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5154 = getelementptr inbounds %struct.GPR, %struct.GPR* %5153, i32 0, i32 7
  %5155 = getelementptr inbounds %struct.Reg, %struct.Reg* %5154, i32 0, i32 0
  %RDX.i203 = bitcast %union.anon* %5155 to i64*
  %5156 = load i32, i32* %ECX.i202
  %5157 = zext i32 %5156 to i64
  %5158 = load i64, i64* %PC.i201
  %5159 = add i64 %5158, 2
  store i64 %5159, i64* %PC.i201
  %5160 = and i64 %5157, 4294967295
  store i64 %5160, i64* %RDX.i203, align 8
  store %struct.Memory* %loadMem_446e19, %struct.Memory** %MEMORY
  %loadMem_446e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5162 = getelementptr inbounds %struct.GPR, %struct.GPR* %5161, i32 0, i32 33
  %5163 = getelementptr inbounds %struct.Reg, %struct.Reg* %5162, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %5163 to i64*
  %5164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5165 = getelementptr inbounds %struct.GPR, %struct.GPR* %5164, i32 0, i32 1
  %5166 = getelementptr inbounds %struct.Reg, %struct.Reg* %5165, i32 0, i32 0
  %RAX.i198 = bitcast %union.anon* %5166 to i64*
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5168 = getelementptr inbounds %struct.GPR, %struct.GPR* %5167, i32 0, i32 7
  %5169 = getelementptr inbounds %struct.Reg, %struct.Reg* %5168, i32 0, i32 0
  %RDX.i199 = bitcast %union.anon* %5169 to i64*
  %5170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5171 = getelementptr inbounds %struct.GPR, %struct.GPR* %5170, i32 0, i32 11
  %5172 = getelementptr inbounds %struct.Reg, %struct.Reg* %5171, i32 0, i32 0
  %RDI.i200 = bitcast %union.anon* %5172 to i64*
  %5173 = load i64, i64* %RDI.i200
  %5174 = load i64, i64* %RDX.i199
  %5175 = mul i64 %5174, 8
  %5176 = add i64 %5175, %5173
  %5177 = load i64, i64* %RAX.i198
  %5178 = load i64, i64* %PC.i197
  %5179 = add i64 %5178, 4
  store i64 %5179, i64* %PC.i197
  %5180 = inttoptr i64 %5176 to i64*
  store i64 %5177, i64* %5180
  store %struct.Memory* %loadMem_446e1b, %struct.Memory** %MEMORY
  %loadMem_446e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5182 = getelementptr inbounds %struct.GPR, %struct.GPR* %5181, i32 0, i32 33
  %5183 = getelementptr inbounds %struct.Reg, %struct.Reg* %5182, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %5183 to i64*
  %5184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5185 = getelementptr inbounds %struct.GPR, %struct.GPR* %5184, i32 0, i32 1
  %5186 = getelementptr inbounds %struct.Reg, %struct.Reg* %5185, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %5186 to i64*
  %5187 = load i64, i64* %RAX.i196
  %5188 = load i64, i64* %PC.i195
  %5189 = add i64 %5188, 4
  store i64 %5189, i64* %PC.i195
  %5190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5190, align 1
  %5191 = trunc i64 %5187 to i32
  %5192 = and i32 %5191, 255
  %5193 = call i32 @llvm.ctpop.i32(i32 %5192)
  %5194 = trunc i32 %5193 to i8
  %5195 = and i8 %5194, 1
  %5196 = xor i8 %5195, 1
  %5197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5196, i8* %5197, align 1
  %5198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5198, align 1
  %5199 = icmp eq i64 %5187, 0
  %5200 = zext i1 %5199 to i8
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5200, i8* %5201, align 1
  %5202 = lshr i64 %5187, 63
  %5203 = trunc i64 %5202 to i8
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5203, i8* %5204, align 1
  %5205 = lshr i64 %5187, 63
  %5206 = xor i64 %5202, %5205
  %5207 = add i64 %5206, %5205
  %5208 = icmp eq i64 %5207, 2
  %5209 = zext i1 %5208 to i8
  %5210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5209, i8* %5210, align 1
  store %struct.Memory* %loadMem_446e1f, %struct.Memory** %MEMORY
  %loadMem_446e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5212 = getelementptr inbounds %struct.GPR, %struct.GPR* %5211, i32 0, i32 33
  %5213 = getelementptr inbounds %struct.Reg, %struct.Reg* %5212, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %5213 to i64*
  %5214 = load i64, i64* %PC.i194
  %5215 = add i64 %5214, 18
  %5216 = load i64, i64* %PC.i194
  %5217 = add i64 %5216, 6
  %5218 = load i64, i64* %PC.i194
  %5219 = add i64 %5218, 6
  store i64 %5219, i64* %PC.i194
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5221 = load i8, i8* %5220, align 1
  %5222 = icmp eq i8 %5221, 0
  %5223 = zext i1 %5222 to i8
  store i8 %5223, i8* %BRANCH_TAKEN, align 1
  %5224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5225 = select i1 %5222, i64 %5215, i64 %5217
  store i64 %5225, i64* %5224, align 8
  store %struct.Memory* %loadMem_446e23, %struct.Memory** %MEMORY
  %loadBr_446e23 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446e23 = icmp eq i8 %loadBr_446e23, 1
  br i1 %cmpBr_446e23, label %block_.L_446e35, label %block_446e29

block_446e29:                                     ; preds = %block_.L_446df8
  %loadMem_446e29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5227 = getelementptr inbounds %struct.GPR, %struct.GPR* %5226, i32 0, i32 33
  %5228 = getelementptr inbounds %struct.Reg, %struct.Reg* %5227, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %5228 to i64*
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5230 = getelementptr inbounds %struct.GPR, %struct.GPR* %5229, i32 0, i32 15
  %5231 = getelementptr inbounds %struct.Reg, %struct.Reg* %5230, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %5231 to i64*
  %5232 = load i64, i64* %RBP.i193
  %5233 = sub i64 %5232, 28
  %5234 = load i64, i64* %PC.i192
  %5235 = add i64 %5234, 7
  store i64 %5235, i64* %PC.i192
  %5236 = inttoptr i64 %5233 to i32*
  store i32 3, i32* %5236
  store %struct.Memory* %loadMem_446e29, %struct.Memory** %MEMORY
  %loadMem_446e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5238 = getelementptr inbounds %struct.GPR, %struct.GPR* %5237, i32 0, i32 33
  %5239 = getelementptr inbounds %struct.Reg, %struct.Reg* %5238, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %5239 to i64*
  %5240 = load i64, i64* %PC.i191
  %5241 = add i64 %5240, 316
  %5242 = load i64, i64* %PC.i191
  %5243 = add i64 %5242, 5
  store i64 %5243, i64* %PC.i191
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5241, i64* %5244, align 8
  store %struct.Memory* %loadMem_446e30, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446e35:                                  ; preds = %block_.L_446df8
  %loadMem_446e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5246 = getelementptr inbounds %struct.GPR, %struct.GPR* %5245, i32 0, i32 33
  %5247 = getelementptr inbounds %struct.Reg, %struct.Reg* %5246, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %5247 to i64*
  %5248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5249 = getelementptr inbounds %struct.GPR, %struct.GPR* %5248, i32 0, i32 1
  %5250 = getelementptr inbounds %struct.Reg, %struct.Reg* %5249, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %5250 to i64*
  %5251 = load i64, i64* %PC.i189
  %5252 = add i64 %5251, 5
  store i64 %5252, i64* %PC.i189
  store i64 1, i64* %RAX.i190, align 8
  store %struct.Memory* %loadMem_446e35, %struct.Memory** %MEMORY
  %loadMem_446e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5254 = getelementptr inbounds %struct.GPR, %struct.GPR* %5253, i32 0, i32 33
  %5255 = getelementptr inbounds %struct.Reg, %struct.Reg* %5254, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %5255 to i64*
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5257 = getelementptr inbounds %struct.GPR, %struct.GPR* %5256, i32 0, i32 1
  %5258 = getelementptr inbounds %struct.Reg, %struct.Reg* %5257, i32 0, i32 0
  %EAX.i187 = bitcast %union.anon* %5258 to i32*
  %5259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5260 = getelementptr inbounds %struct.GPR, %struct.GPR* %5259, i32 0, i32 9
  %5261 = getelementptr inbounds %struct.Reg, %struct.Reg* %5260, i32 0, i32 0
  %RSI.i188 = bitcast %union.anon* %5261 to i64*
  %5262 = load i32, i32* %EAX.i187
  %5263 = zext i32 %5262 to i64
  %5264 = load i64, i64* %PC.i186
  %5265 = add i64 %5264, 2
  store i64 %5265, i64* %PC.i186
  %5266 = and i64 %5263, 4294967295
  store i64 %5266, i64* %RSI.i188, align 8
  store %struct.Memory* %loadMem_446e3a, %struct.Memory** %MEMORY
  %loadMem_446e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5268 = getelementptr inbounds %struct.GPR, %struct.GPR* %5267, i32 0, i32 33
  %5269 = getelementptr inbounds %struct.Reg, %struct.Reg* %5268, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %5269 to i64*
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5271 = getelementptr inbounds %struct.GPR, %struct.GPR* %5270, i32 0, i32 5
  %5272 = getelementptr inbounds %struct.Reg, %struct.Reg* %5271, i32 0, i32 0
  %RCX.i184 = bitcast %union.anon* %5272 to i64*
  %5273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5274 = getelementptr inbounds %struct.GPR, %struct.GPR* %5273, i32 0, i32 15
  %5275 = getelementptr inbounds %struct.Reg, %struct.Reg* %5274, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %5275 to i64*
  %5276 = load i64, i64* %RBP.i185
  %5277 = sub i64 %5276, 16
  %5278 = load i64, i64* %PC.i183
  %5279 = add i64 %5278, 4
  store i64 %5279, i64* %PC.i183
  %5280 = inttoptr i64 %5277 to i64*
  %5281 = load i64, i64* %5280
  store i64 %5281, i64* %RCX.i184, align 8
  store %struct.Memory* %loadMem_446e3c, %struct.Memory** %MEMORY
  %loadMem_446e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5283 = getelementptr inbounds %struct.GPR, %struct.GPR* %5282, i32 0, i32 33
  %5284 = getelementptr inbounds %struct.Reg, %struct.Reg* %5283, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %5284 to i64*
  %5285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5286 = getelementptr inbounds %struct.GPR, %struct.GPR* %5285, i32 0, i32 5
  %5287 = getelementptr inbounds %struct.Reg, %struct.Reg* %5286, i32 0, i32 0
  %RCX.i182 = bitcast %union.anon* %5287 to i64*
  %5288 = load i64, i64* %RCX.i182
  %5289 = add i64 %5288, 104
  %5290 = load i64, i64* %PC.i181
  %5291 = add i64 %5290, 4
  store i64 %5291, i64* %PC.i181
  %5292 = inttoptr i64 %5289 to i64*
  %5293 = load i64, i64* %5292
  store i64 %5293, i64* %RCX.i182, align 8
  store %struct.Memory* %loadMem_446e40, %struct.Memory** %MEMORY
  %loadMem_446e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5295 = getelementptr inbounds %struct.GPR, %struct.GPR* %5294, i32 0, i32 33
  %5296 = getelementptr inbounds %struct.Reg, %struct.Reg* %5295, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %5296 to i64*
  %5297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5298 = getelementptr inbounds %struct.GPR, %struct.GPR* %5297, i32 0, i32 1
  %5299 = getelementptr inbounds %struct.Reg, %struct.Reg* %5298, i32 0, i32 0
  %RAX.i179 = bitcast %union.anon* %5299 to i64*
  %5300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5301 = getelementptr inbounds %struct.GPR, %struct.GPR* %5300, i32 0, i32 15
  %5302 = getelementptr inbounds %struct.Reg, %struct.Reg* %5301, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %5302 to i64*
  %5303 = load i64, i64* %RBP.i180
  %5304 = sub i64 %5303, 22
  %5305 = load i64, i64* %PC.i178
  %5306 = add i64 %5305, 4
  store i64 %5306, i64* %PC.i178
  %5307 = inttoptr i64 %5304 to i16*
  %5308 = load i16, i16* %5307
  %5309 = zext i16 %5308 to i64
  store i64 %5309, i64* %RAX.i179, align 8
  store %struct.Memory* %loadMem_446e44, %struct.Memory** %MEMORY
  %loadMem_446e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5311 = getelementptr inbounds %struct.GPR, %struct.GPR* %5310, i32 0, i32 33
  %5312 = getelementptr inbounds %struct.Reg, %struct.Reg* %5311, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %5312 to i64*
  %5313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5314 = getelementptr inbounds %struct.GPR, %struct.GPR* %5313, i32 0, i32 1
  %5315 = getelementptr inbounds %struct.Reg, %struct.Reg* %5314, i32 0, i32 0
  %EAX.i176 = bitcast %union.anon* %5315 to i32*
  %5316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5317 = getelementptr inbounds %struct.GPR, %struct.GPR* %5316, i32 0, i32 7
  %5318 = getelementptr inbounds %struct.Reg, %struct.Reg* %5317, i32 0, i32 0
  %RDX.i177 = bitcast %union.anon* %5318 to i64*
  %5319 = load i32, i32* %EAX.i176
  %5320 = zext i32 %5319 to i64
  %5321 = load i64, i64* %PC.i175
  %5322 = add i64 %5321, 2
  store i64 %5322, i64* %PC.i175
  %5323 = and i64 %5320, 4294967295
  store i64 %5323, i64* %RDX.i177, align 8
  store %struct.Memory* %loadMem_446e48, %struct.Memory** %MEMORY
  %loadMem_446e4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5325 = getelementptr inbounds %struct.GPR, %struct.GPR* %5324, i32 0, i32 33
  %5326 = getelementptr inbounds %struct.Reg, %struct.Reg* %5325, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %5326 to i64*
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5328 = getelementptr inbounds %struct.GPR, %struct.GPR* %5327, i32 0, i32 5
  %5329 = getelementptr inbounds %struct.Reg, %struct.Reg* %5328, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %5329 to i64*
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5331 = getelementptr inbounds %struct.GPR, %struct.GPR* %5330, i32 0, i32 7
  %5332 = getelementptr inbounds %struct.Reg, %struct.Reg* %5331, i32 0, i32 0
  %RDX.i173 = bitcast %union.anon* %5332 to i64*
  %5333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5334 = getelementptr inbounds %struct.GPR, %struct.GPR* %5333, i32 0, i32 11
  %5335 = getelementptr inbounds %struct.Reg, %struct.Reg* %5334, i32 0, i32 0
  %RDI.i174 = bitcast %union.anon* %5335 to i64*
  %5336 = load i64, i64* %RCX.i172
  %5337 = load i64, i64* %RDX.i173
  %5338 = mul i64 %5337, 8
  %5339 = add i64 %5338, %5336
  %5340 = load i64, i64* %PC.i171
  %5341 = add i64 %5340, 4
  store i64 %5341, i64* %PC.i171
  %5342 = inttoptr i64 %5339 to i64*
  %5343 = load i64, i64* %5342
  store i64 %5343, i64* %RDI.i174, align 8
  store %struct.Memory* %loadMem_446e4a, %struct.Memory** %MEMORY
  %loadMem_446e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5345 = getelementptr inbounds %struct.GPR, %struct.GPR* %5344, i32 0, i32 33
  %5346 = getelementptr inbounds %struct.Reg, %struct.Reg* %5345, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %5346 to i64*
  %5347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5348 = getelementptr inbounds %struct.GPR, %struct.GPR* %5347, i32 0, i32 5
  %5349 = getelementptr inbounds %struct.Reg, %struct.Reg* %5348, i32 0, i32 0
  %RCX.i169 = bitcast %union.anon* %5349 to i64*
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5351 = getelementptr inbounds %struct.GPR, %struct.GPR* %5350, i32 0, i32 15
  %5352 = getelementptr inbounds %struct.Reg, %struct.Reg* %5351, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %5352 to i64*
  %5353 = load i64, i64* %RBP.i170
  %5354 = sub i64 %5353, 16
  %5355 = load i64, i64* %PC.i168
  %5356 = add i64 %5355, 4
  store i64 %5356, i64* %PC.i168
  %5357 = inttoptr i64 %5354 to i64*
  %5358 = load i64, i64* %5357
  store i64 %5358, i64* %RCX.i169, align 8
  store %struct.Memory* %loadMem_446e4e, %struct.Memory** %MEMORY
  %loadMem_446e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5360 = getelementptr inbounds %struct.GPR, %struct.GPR* %5359, i32 0, i32 33
  %5361 = getelementptr inbounds %struct.Reg, %struct.Reg* %5360, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %5361 to i64*
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5363 = getelementptr inbounds %struct.GPR, %struct.GPR* %5362, i32 0, i32 1
  %5364 = getelementptr inbounds %struct.Reg, %struct.Reg* %5363, i32 0, i32 0
  %RAX.i166 = bitcast %union.anon* %5364 to i64*
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5366 = getelementptr inbounds %struct.GPR, %struct.GPR* %5365, i32 0, i32 5
  %5367 = getelementptr inbounds %struct.Reg, %struct.Reg* %5366, i32 0, i32 0
  %RCX.i167 = bitcast %union.anon* %5367 to i64*
  %5368 = load i64, i64* %RCX.i167
  %5369 = add i64 %5368, 24
  %5370 = load i64, i64* %PC.i165
  %5371 = add i64 %5370, 3
  store i64 %5371, i64* %PC.i165
  %5372 = inttoptr i64 %5369 to i32*
  %5373 = load i32, i32* %5372
  %5374 = zext i32 %5373 to i64
  store i64 %5374, i64* %RAX.i166, align 8
  store %struct.Memory* %loadMem_446e52, %struct.Memory** %MEMORY
  %loadMem_446e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5376 = getelementptr inbounds %struct.GPR, %struct.GPR* %5375, i32 0, i32 33
  %5377 = getelementptr inbounds %struct.Reg, %struct.Reg* %5376, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %5377 to i64*
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5379 = getelementptr inbounds %struct.GPR, %struct.GPR* %5378, i32 0, i32 1
  %5380 = getelementptr inbounds %struct.Reg, %struct.Reg* %5379, i32 0, i32 0
  %EAX.i163 = bitcast %union.anon* %5380 to i32*
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5382 = getelementptr inbounds %struct.GPR, %struct.GPR* %5381, i32 0, i32 7
  %5383 = getelementptr inbounds %struct.Reg, %struct.Reg* %5382, i32 0, i32 0
  %RDX.i164 = bitcast %union.anon* %5383 to i64*
  %5384 = load i32, i32* %EAX.i163
  %5385 = zext i32 %5384 to i64
  %5386 = load i64, i64* %PC.i162
  %5387 = add i64 %5386, 2
  store i64 %5387, i64* %PC.i162
  %5388 = and i64 %5385, 4294967295
  store i64 %5388, i64* %RDX.i164, align 8
  store %struct.Memory* %loadMem_446e55, %struct.Memory** %MEMORY
  %loadMem_446e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5390 = getelementptr inbounds %struct.GPR, %struct.GPR* %5389, i32 0, i32 33
  %5391 = getelementptr inbounds %struct.Reg, %struct.Reg* %5390, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %5391 to i64*
  %5392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5393 = getelementptr inbounds %struct.GPR, %struct.GPR* %5392, i32 0, i32 5
  %5394 = getelementptr inbounds %struct.Reg, %struct.Reg* %5393, i32 0, i32 0
  %RCX.i160 = bitcast %union.anon* %5394 to i64*
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5396 = getelementptr inbounds %struct.GPR, %struct.GPR* %5395, i32 0, i32 15
  %5397 = getelementptr inbounds %struct.Reg, %struct.Reg* %5396, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %5397 to i64*
  %5398 = load i64, i64* %RBP.i161
  %5399 = sub i64 %5398, 16
  %5400 = load i64, i64* %PC.i159
  %5401 = add i64 %5400, 4
  store i64 %5401, i64* %PC.i159
  %5402 = inttoptr i64 %5399 to i64*
  %5403 = load i64, i64* %5402
  store i64 %5403, i64* %RCX.i160, align 8
  store %struct.Memory* %loadMem_446e57, %struct.Memory** %MEMORY
  %loadMem_446e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5405 = getelementptr inbounds %struct.GPR, %struct.GPR* %5404, i32 0, i32 33
  %5406 = getelementptr inbounds %struct.Reg, %struct.Reg* %5405, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %5406 to i64*
  %5407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5408 = getelementptr inbounds %struct.GPR, %struct.GPR* %5407, i32 0, i32 5
  %5409 = getelementptr inbounds %struct.Reg, %struct.Reg* %5408, i32 0, i32 0
  %RCX.i158 = bitcast %union.anon* %5409 to i64*
  %5410 = load i64, i64* %RCX.i158
  %5411 = load i64, i64* %PC.i157
  %5412 = add i64 %5411, 3
  store i64 %5412, i64* %PC.i157
  %5413 = inttoptr i64 %5410 to i64*
  %5414 = load i64, i64* %5413
  store i64 %5414, i64* %RCX.i158, align 8
  store %struct.Memory* %loadMem_446e5b, %struct.Memory** %MEMORY
  %loadMem1_446e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5416 = getelementptr inbounds %struct.GPR, %struct.GPR* %5415, i32 0, i32 33
  %5417 = getelementptr inbounds %struct.Reg, %struct.Reg* %5416, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %5417 to i64*
  %5418 = load i64, i64* %PC.i156
  %5419 = add i64 %5418, -285262
  %5420 = load i64, i64* %PC.i156
  %5421 = add i64 %5420, 5
  %5422 = load i64, i64* %PC.i156
  %5423 = add i64 %5422, 5
  store i64 %5423, i64* %PC.i156
  %5424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5425 = load i64, i64* %5424, align 8
  %5426 = add i64 %5425, -8
  %5427 = inttoptr i64 %5426 to i64*
  store i64 %5421, i64* %5427
  store i64 %5426, i64* %5424, align 8
  %5428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5419, i64* %5428, align 8
  store %struct.Memory* %loadMem1_446e5e, %struct.Memory** %MEMORY
  %loadMem2_446e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446e5e = load i64, i64* %3
  %call2_446e5e = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64 %loadPC_446e5e, %struct.Memory* %loadMem2_446e5e)
  store %struct.Memory* %call2_446e5e, %struct.Memory** %MEMORY
  %loadMem_446e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5430 = getelementptr inbounds %struct.GPR, %struct.GPR* %5429, i32 0, i32 33
  %5431 = getelementptr inbounds %struct.Reg, %struct.Reg* %5430, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %5431 to i64*
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5433 = getelementptr inbounds %struct.GPR, %struct.GPR* %5432, i32 0, i32 5
  %5434 = getelementptr inbounds %struct.Reg, %struct.Reg* %5433, i32 0, i32 0
  %RCX.i154 = bitcast %union.anon* %5434 to i64*
  %5435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5436 = getelementptr inbounds %struct.GPR, %struct.GPR* %5435, i32 0, i32 15
  %5437 = getelementptr inbounds %struct.Reg, %struct.Reg* %5436, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %5437 to i64*
  %5438 = load i64, i64* %RBP.i155
  %5439 = sub i64 %5438, 16
  %5440 = load i64, i64* %PC.i153
  %5441 = add i64 %5440, 4
  store i64 %5441, i64* %PC.i153
  %5442 = inttoptr i64 %5439 to i64*
  %5443 = load i64, i64* %5442
  store i64 %5443, i64* %RCX.i154, align 8
  store %struct.Memory* %loadMem_446e63, %struct.Memory** %MEMORY
  %loadMem_446e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5445 = getelementptr inbounds %struct.GPR, %struct.GPR* %5444, i32 0, i32 33
  %5446 = getelementptr inbounds %struct.Reg, %struct.Reg* %5445, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %5446 to i64*
  %5447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5448 = getelementptr inbounds %struct.GPR, %struct.GPR* %5447, i32 0, i32 17
  %5449 = getelementptr inbounds %struct.Reg, %struct.Reg* %5448, i32 0, i32 0
  %R8D.i151 = bitcast %union.anon* %5449 to i32*
  %5450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5451 = getelementptr inbounds %struct.GPR, %struct.GPR* %5450, i32 0, i32 5
  %5452 = getelementptr inbounds %struct.Reg, %struct.Reg* %5451, i32 0, i32 0
  %RCX.i152 = bitcast %union.anon* %5452 to i64*
  %5453 = bitcast i32* %R8D.i151 to i64*
  %5454 = load i64, i64* %RCX.i152
  %5455 = add i64 %5454, 24
  %5456 = load i64, i64* %PC.i150
  %5457 = add i64 %5456, 4
  store i64 %5457, i64* %PC.i150
  %5458 = inttoptr i64 %5455 to i32*
  %5459 = load i32, i32* %5458
  %5460 = zext i32 %5459 to i64
  store i64 %5460, i64* %5453, align 8
  store %struct.Memory* %loadMem_446e67, %struct.Memory** %MEMORY
  %loadMem_446e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5462 = getelementptr inbounds %struct.GPR, %struct.GPR* %5461, i32 0, i32 33
  %5463 = getelementptr inbounds %struct.Reg, %struct.Reg* %5462, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %5463 to i64*
  %5464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5465 = getelementptr inbounds %struct.GPR, %struct.GPR* %5464, i32 0, i32 17
  %5466 = getelementptr inbounds %struct.Reg, %struct.Reg* %5465, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %5466 to i32*
  %5467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5468 = getelementptr inbounds %struct.GPR, %struct.GPR* %5467, i32 0, i32 5
  %5469 = getelementptr inbounds %struct.Reg, %struct.Reg* %5468, i32 0, i32 0
  %RCX.i149 = bitcast %union.anon* %5469 to i64*
  %5470 = load i32, i32* %R8D.i
  %5471 = zext i32 %5470 to i64
  %5472 = load i64, i64* %PC.i148
  %5473 = add i64 %5472, 3
  store i64 %5473, i64* %PC.i148
  %5474 = and i64 %5471, 4294967295
  store i64 %5474, i64* %RCX.i149, align 8
  store %struct.Memory* %loadMem_446e6b, %struct.Memory** %MEMORY
  %loadMem_446e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5476 = getelementptr inbounds %struct.GPR, %struct.GPR* %5475, i32 0, i32 33
  %5477 = getelementptr inbounds %struct.Reg, %struct.Reg* %5476, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %5477 to i64*
  %5478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5479 = getelementptr inbounds %struct.GPR, %struct.GPR* %5478, i32 0, i32 1
  %5480 = getelementptr inbounds %struct.Reg, %struct.Reg* %5479, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %5480 to i64*
  %5481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5482 = getelementptr inbounds %struct.GPR, %struct.GPR* %5481, i32 0, i32 5
  %5483 = getelementptr inbounds %struct.Reg, %struct.Reg* %5482, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %5483 to i64*
  %5484 = load i64, i64* %RAX.i146
  %5485 = load i64, i64* %RCX.i147
  %5486 = load i64, i64* %PC.i145
  %5487 = add i64 %5486, 3
  store i64 %5487, i64* %PC.i145
  %5488 = sub i64 %5484, %5485
  %5489 = icmp ult i64 %5484, %5485
  %5490 = zext i1 %5489 to i8
  %5491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5490, i8* %5491, align 1
  %5492 = trunc i64 %5488 to i32
  %5493 = and i32 %5492, 255
  %5494 = call i32 @llvm.ctpop.i32(i32 %5493)
  %5495 = trunc i32 %5494 to i8
  %5496 = and i8 %5495, 1
  %5497 = xor i8 %5496, 1
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5497, i8* %5498, align 1
  %5499 = xor i64 %5485, %5484
  %5500 = xor i64 %5499, %5488
  %5501 = lshr i64 %5500, 4
  %5502 = trunc i64 %5501 to i8
  %5503 = and i8 %5502, 1
  %5504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5503, i8* %5504, align 1
  %5505 = icmp eq i64 %5488, 0
  %5506 = zext i1 %5505 to i8
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5506, i8* %5507, align 1
  %5508 = lshr i64 %5488, 63
  %5509 = trunc i64 %5508 to i8
  %5510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5509, i8* %5510, align 1
  %5511 = lshr i64 %5484, 63
  %5512 = lshr i64 %5485, 63
  %5513 = xor i64 %5512, %5511
  %5514 = xor i64 %5508, %5511
  %5515 = add i64 %5514, %5513
  %5516 = icmp eq i64 %5515, 2
  %5517 = zext i1 %5516 to i8
  %5518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5517, i8* %5518, align 1
  store %struct.Memory* %loadMem_446e6e, %struct.Memory** %MEMORY
  %loadMem_446e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5520 = getelementptr inbounds %struct.GPR, %struct.GPR* %5519, i32 0, i32 33
  %5521 = getelementptr inbounds %struct.Reg, %struct.Reg* %5520, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %5521 to i64*
  %5522 = load i64, i64* %PC.i144
  %5523 = add i64 %5522, 11
  %5524 = load i64, i64* %PC.i144
  %5525 = add i64 %5524, 6
  %5526 = load i64, i64* %PC.i144
  %5527 = add i64 %5526, 6
  store i64 %5527, i64* %PC.i144
  %5528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5529 = load i8, i8* %5528, align 1
  store i8 %5529, i8* %BRANCH_TAKEN, align 1
  %5530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5531 = icmp ne i8 %5529, 0
  %5532 = select i1 %5531, i64 %5523, i64 %5525
  store i64 %5532, i64* %5530, align 8
  store %struct.Memory* %loadMem_446e71, %struct.Memory** %MEMORY
  %loadBr_446e71 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446e71 = icmp eq i8 %loadBr_446e71, 1
  br i1 %cmpBr_446e71, label %block_.L_446e7c, label %block_446e77

block_446e77:                                     ; preds = %block_.L_446e35
  %loadMem_446e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5534 = getelementptr inbounds %struct.GPR, %struct.GPR* %5533, i32 0, i32 33
  %5535 = getelementptr inbounds %struct.Reg, %struct.Reg* %5534, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %5535 to i64*
  %5536 = load i64, i64* %PC.i143
  %5537 = add i64 %5536, 245
  %5538 = load i64, i64* %PC.i143
  %5539 = add i64 %5538, 5
  store i64 %5539, i64* %PC.i143
  %5540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5537, i64* %5540, align 8
  store %struct.Memory* %loadMem_446e77, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446e7c:                                  ; preds = %block_.L_446e35
  %loadMem_446e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5542 = getelementptr inbounds %struct.GPR, %struct.GPR* %5541, i32 0, i32 33
  %5543 = getelementptr inbounds %struct.Reg, %struct.Reg* %5542, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %5543 to i64*
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5545 = getelementptr inbounds %struct.GPR, %struct.GPR* %5544, i32 0, i32 1
  %5546 = getelementptr inbounds %struct.Reg, %struct.Reg* %5545, i32 0, i32 0
  %RAX.i141 = bitcast %union.anon* %5546 to i64*
  %5547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5548 = getelementptr inbounds %struct.GPR, %struct.GPR* %5547, i32 0, i32 15
  %5549 = getelementptr inbounds %struct.Reg, %struct.Reg* %5548, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %5549 to i64*
  %5550 = load i64, i64* %RBP.i142
  %5551 = sub i64 %5550, 16
  %5552 = load i64, i64* %PC.i140
  %5553 = add i64 %5552, 4
  store i64 %5553, i64* %PC.i140
  %5554 = inttoptr i64 %5551 to i64*
  %5555 = load i64, i64* %5554
  store i64 %5555, i64* %RAX.i141, align 8
  store %struct.Memory* %loadMem_446e7c, %struct.Memory** %MEMORY
  %loadMem_446e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5557 = getelementptr inbounds %struct.GPR, %struct.GPR* %5556, i32 0, i32 33
  %5558 = getelementptr inbounds %struct.Reg, %struct.Reg* %5557, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %5558 to i64*
  %5559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5560 = getelementptr inbounds %struct.GPR, %struct.GPR* %5559, i32 0, i32 1
  %5561 = getelementptr inbounds %struct.Reg, %struct.Reg* %5560, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %5561 to i64*
  %5562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5563 = getelementptr inbounds %struct.GPR, %struct.GPR* %5562, i32 0, i32 11
  %5564 = getelementptr inbounds %struct.Reg, %struct.Reg* %5563, i32 0, i32 0
  %RDI.i139 = bitcast %union.anon* %5564 to i64*
  %5565 = load i64, i64* %RAX.i138
  %5566 = load i64, i64* %PC.i137
  %5567 = add i64 %5566, 3
  store i64 %5567, i64* %PC.i137
  %5568 = inttoptr i64 %5565 to i64*
  %5569 = load i64, i64* %5568
  store i64 %5569, i64* %RDI.i139, align 8
  store %struct.Memory* %loadMem_446e80, %struct.Memory** %MEMORY
  %loadMem_446e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5571 = getelementptr inbounds %struct.GPR, %struct.GPR* %5570, i32 0, i32 33
  %5572 = getelementptr inbounds %struct.Reg, %struct.Reg* %5571, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %5572 to i64*
  %5573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5574 = getelementptr inbounds %struct.GPR, %struct.GPR* %5573, i32 0, i32 1
  %5575 = getelementptr inbounds %struct.Reg, %struct.Reg* %5574, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %5575 to i64*
  %5576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5577 = getelementptr inbounds %struct.GPR, %struct.GPR* %5576, i32 0, i32 15
  %5578 = getelementptr inbounds %struct.Reg, %struct.Reg* %5577, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %5578 to i64*
  %5579 = load i64, i64* %RBP.i136
  %5580 = sub i64 %5579, 16
  %5581 = load i64, i64* %PC.i134
  %5582 = add i64 %5581, 4
  store i64 %5582, i64* %PC.i134
  %5583 = inttoptr i64 %5580 to i64*
  %5584 = load i64, i64* %5583
  store i64 %5584, i64* %RAX.i135, align 8
  store %struct.Memory* %loadMem_446e83, %struct.Memory** %MEMORY
  %loadMem_446e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5586 = getelementptr inbounds %struct.GPR, %struct.GPR* %5585, i32 0, i32 33
  %5587 = getelementptr inbounds %struct.Reg, %struct.Reg* %5586, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %5587 to i64*
  %5588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5589 = getelementptr inbounds %struct.GPR, %struct.GPR* %5588, i32 0, i32 1
  %5590 = getelementptr inbounds %struct.Reg, %struct.Reg* %5589, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %5590 to i64*
  %5591 = load i64, i64* %RAX.i133
  %5592 = add i64 %5591, 112
  %5593 = load i64, i64* %PC.i132
  %5594 = add i64 %5593, 4
  store i64 %5594, i64* %PC.i132
  %5595 = inttoptr i64 %5592 to i64*
  %5596 = load i64, i64* %5595
  store i64 %5596, i64* %RAX.i133, align 8
  store %struct.Memory* %loadMem_446e87, %struct.Memory** %MEMORY
  %loadMem_446e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5598 = getelementptr inbounds %struct.GPR, %struct.GPR* %5597, i32 0, i32 33
  %5599 = getelementptr inbounds %struct.Reg, %struct.Reg* %5598, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %5599 to i64*
  %5600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5601 = getelementptr inbounds %struct.GPR, %struct.GPR* %5600, i32 0, i32 5
  %5602 = getelementptr inbounds %struct.Reg, %struct.Reg* %5601, i32 0, i32 0
  %RCX.i130 = bitcast %union.anon* %5602 to i64*
  %5603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5604 = getelementptr inbounds %struct.GPR, %struct.GPR* %5603, i32 0, i32 15
  %5605 = getelementptr inbounds %struct.Reg, %struct.Reg* %5604, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %5605 to i64*
  %5606 = load i64, i64* %RBP.i131
  %5607 = sub i64 %5606, 22
  %5608 = load i64, i64* %PC.i129
  %5609 = add i64 %5608, 4
  store i64 %5609, i64* %PC.i129
  %5610 = inttoptr i64 %5607 to i16*
  %5611 = load i16, i16* %5610
  %5612 = zext i16 %5611 to i64
  store i64 %5612, i64* %RCX.i130, align 8
  store %struct.Memory* %loadMem_446e8b, %struct.Memory** %MEMORY
  %loadMem_446e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5614 = getelementptr inbounds %struct.GPR, %struct.GPR* %5613, i32 0, i32 33
  %5615 = getelementptr inbounds %struct.Reg, %struct.Reg* %5614, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %5615 to i64*
  %5616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5617 = getelementptr inbounds %struct.GPR, %struct.GPR* %5616, i32 0, i32 5
  %5618 = getelementptr inbounds %struct.Reg, %struct.Reg* %5617, i32 0, i32 0
  %ECX.i127 = bitcast %union.anon* %5618 to i32*
  %5619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5620 = getelementptr inbounds %struct.GPR, %struct.GPR* %5619, i32 0, i32 7
  %5621 = getelementptr inbounds %struct.Reg, %struct.Reg* %5620, i32 0, i32 0
  %RDX.i128 = bitcast %union.anon* %5621 to i64*
  %5622 = load i32, i32* %ECX.i127
  %5623 = zext i32 %5622 to i64
  %5624 = load i64, i64* %PC.i126
  %5625 = add i64 %5624, 2
  store i64 %5625, i64* %PC.i126
  %5626 = and i64 %5623, 4294967295
  store i64 %5626, i64* %RDX.i128, align 8
  store %struct.Memory* %loadMem_446e8f, %struct.Memory** %MEMORY
  %loadMem_446e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5628 = getelementptr inbounds %struct.GPR, %struct.GPR* %5627, i32 0, i32 33
  %5629 = getelementptr inbounds %struct.Reg, %struct.Reg* %5628, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %5629 to i64*
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5631 = getelementptr inbounds %struct.GPR, %struct.GPR* %5630, i32 0, i32 7
  %5632 = getelementptr inbounds %struct.Reg, %struct.Reg* %5631, i32 0, i32 0
  %RDX.i125 = bitcast %union.anon* %5632 to i64*
  %5633 = load i64, i64* %RDX.i125
  %5634 = load i64, i64* %PC.i124
  %5635 = add i64 %5634, 4
  store i64 %5635, i64* %PC.i124
  %5636 = shl i64 %5633, 1
  %5637 = icmp slt i64 %5636, 0
  %5638 = shl i64 %5636, 1
  store i64 %5638, i64* %RDX.i125, align 8
  %5639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5640 = zext i1 %5637 to i8
  store i8 %5640, i8* %5639, align 1
  %5641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5642 = trunc i64 %5638 to i32
  %5643 = and i32 %5642, 254
  %5644 = call i32 @llvm.ctpop.i32(i32 %5643)
  %5645 = trunc i32 %5644 to i8
  %5646 = and i8 %5645, 1
  %5647 = xor i8 %5646, 1
  store i8 %5647, i8* %5641, align 1
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5648, align 1
  %5649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5650 = icmp eq i64 %5638, 0
  %5651 = zext i1 %5650 to i8
  store i8 %5651, i8* %5649, align 1
  %5652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5653 = lshr i64 %5638, 63
  %5654 = trunc i64 %5653 to i8
  store i8 %5654, i8* %5652, align 1
  %5655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5655, align 1
  store %struct.Memory* %loadMem_446e91, %struct.Memory** %MEMORY
  %loadMem_446e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5657 = getelementptr inbounds %struct.GPR, %struct.GPR* %5656, i32 0, i32 33
  %5658 = getelementptr inbounds %struct.Reg, %struct.Reg* %5657, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %5658 to i64*
  %5659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5660 = getelementptr inbounds %struct.GPR, %struct.GPR* %5659, i32 0, i32 1
  %5661 = getelementptr inbounds %struct.Reg, %struct.Reg* %5660, i32 0, i32 0
  %RAX.i122 = bitcast %union.anon* %5661 to i64*
  %5662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5663 = getelementptr inbounds %struct.GPR, %struct.GPR* %5662, i32 0, i32 7
  %5664 = getelementptr inbounds %struct.Reg, %struct.Reg* %5663, i32 0, i32 0
  %RDX.i123 = bitcast %union.anon* %5664 to i64*
  %5665 = load i64, i64* %RAX.i122
  %5666 = load i64, i64* %RDX.i123
  %5667 = load i64, i64* %PC.i121
  %5668 = add i64 %5667, 3
  store i64 %5668, i64* %PC.i121
  %5669 = add i64 %5666, %5665
  store i64 %5669, i64* %RAX.i122, align 8
  %5670 = icmp ult i64 %5669, %5665
  %5671 = icmp ult i64 %5669, %5666
  %5672 = or i1 %5670, %5671
  %5673 = zext i1 %5672 to i8
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5673, i8* %5674, align 1
  %5675 = trunc i64 %5669 to i32
  %5676 = and i32 %5675, 255
  %5677 = call i32 @llvm.ctpop.i32(i32 %5676)
  %5678 = trunc i32 %5677 to i8
  %5679 = and i8 %5678, 1
  %5680 = xor i8 %5679, 1
  %5681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5680, i8* %5681, align 1
  %5682 = xor i64 %5666, %5665
  %5683 = xor i64 %5682, %5669
  %5684 = lshr i64 %5683, 4
  %5685 = trunc i64 %5684 to i8
  %5686 = and i8 %5685, 1
  %5687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5686, i8* %5687, align 1
  %5688 = icmp eq i64 %5669, 0
  %5689 = zext i1 %5688 to i8
  %5690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5689, i8* %5690, align 1
  %5691 = lshr i64 %5669, 63
  %5692 = trunc i64 %5691 to i8
  %5693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5692, i8* %5693, align 1
  %5694 = lshr i64 %5665, 63
  %5695 = lshr i64 %5666, 63
  %5696 = xor i64 %5691, %5694
  %5697 = xor i64 %5691, %5695
  %5698 = add i64 %5696, %5697
  %5699 = icmp eq i64 %5698, 2
  %5700 = zext i1 %5699 to i8
  %5701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5700, i8* %5701, align 1
  store %struct.Memory* %loadMem_446e95, %struct.Memory** %MEMORY
  %loadMem_446e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5703 = getelementptr inbounds %struct.GPR, %struct.GPR* %5702, i32 0, i32 33
  %5704 = getelementptr inbounds %struct.Reg, %struct.Reg* %5703, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %5704 to i64*
  %5705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5706 = getelementptr inbounds %struct.GPR, %struct.GPR* %5705, i32 0, i32 1
  %5707 = getelementptr inbounds %struct.Reg, %struct.Reg* %5706, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %5707 to i64*
  %5708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5709 = getelementptr inbounds %struct.GPR, %struct.GPR* %5708, i32 0, i32 9
  %5710 = getelementptr inbounds %struct.Reg, %struct.Reg* %5709, i32 0, i32 0
  %RSI.i120 = bitcast %union.anon* %5710 to i64*
  %5711 = load i64, i64* %RAX.i119
  %5712 = load i64, i64* %PC.i118
  %5713 = add i64 %5712, 3
  store i64 %5713, i64* %PC.i118
  store i64 %5711, i64* %RSI.i120, align 8
  store %struct.Memory* %loadMem_446e98, %struct.Memory** %MEMORY
  %loadMem1_446e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5715 = getelementptr inbounds %struct.GPR, %struct.GPR* %5714, i32 0, i32 33
  %5716 = getelementptr inbounds %struct.Reg, %struct.Reg* %5715, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %5716 to i64*
  %5717 = load i64, i64* %PC.i117
  %5718 = add i64 %5717, 245
  %5719 = load i64, i64* %PC.i117
  %5720 = add i64 %5719, 5
  %5721 = load i64, i64* %PC.i117
  %5722 = add i64 %5721, 5
  store i64 %5722, i64* %PC.i117
  %5723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5724 = load i64, i64* %5723, align 8
  %5725 = add i64 %5724, -8
  %5726 = inttoptr i64 %5725 to i64*
  store i64 %5720, i64* %5726
  store i64 %5725, i64* %5723, align 8
  %5727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5718, i64* %5727, align 8
  store %struct.Memory* %loadMem1_446e9b, %struct.Memory** %MEMORY
  %loadMem2_446e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446e9b = load i64, i64* %3
  %call2_446e9b = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64 %loadPC_446e9b, %struct.Memory* %loadMem2_446e9b)
  store %struct.Memory* %call2_446e9b, %struct.Memory** %MEMORY
  %loadMem_446ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5729 = getelementptr inbounds %struct.GPR, %struct.GPR* %5728, i32 0, i32 33
  %5730 = getelementptr inbounds %struct.Reg, %struct.Reg* %5729, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %5730 to i64*
  %5731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5732 = getelementptr inbounds %struct.GPR, %struct.GPR* %5731, i32 0, i32 1
  %5733 = getelementptr inbounds %struct.Reg, %struct.Reg* %5732, i32 0, i32 0
  %EAX.i116 = bitcast %union.anon* %5733 to i32*
  %5734 = load i32, i32* %EAX.i116
  %5735 = zext i32 %5734 to i64
  %5736 = load i64, i64* %PC.i115
  %5737 = add i64 %5736, 3
  store i64 %5737, i64* %PC.i115
  %5738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5738, align 1
  %5739 = and i32 %5734, 255
  %5740 = call i32 @llvm.ctpop.i32(i32 %5739)
  %5741 = trunc i32 %5740 to i8
  %5742 = and i8 %5741, 1
  %5743 = xor i8 %5742, 1
  %5744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5743, i8* %5744, align 1
  %5745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5745, align 1
  %5746 = icmp eq i32 %5734, 0
  %5747 = zext i1 %5746 to i8
  %5748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5747, i8* %5748, align 1
  %5749 = lshr i32 %5734, 31
  %5750 = trunc i32 %5749 to i8
  %5751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5750, i8* %5751, align 1
  %5752 = lshr i32 %5734, 31
  %5753 = xor i32 %5749, %5752
  %5754 = add i32 %5753, %5752
  %5755 = icmp eq i32 %5754, 2
  %5756 = zext i1 %5755 to i8
  %5757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5756, i8* %5757, align 1
  store %struct.Memory* %loadMem_446ea0, %struct.Memory** %MEMORY
  %loadMem_446ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5759 = getelementptr inbounds %struct.GPR, %struct.GPR* %5758, i32 0, i32 33
  %5760 = getelementptr inbounds %struct.Reg, %struct.Reg* %5759, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %5760 to i64*
  %5761 = load i64, i64* %PC.i114
  %5762 = add i64 %5761, 11
  %5763 = load i64, i64* %PC.i114
  %5764 = add i64 %5763, 6
  %5765 = load i64, i64* %PC.i114
  %5766 = add i64 %5765, 6
  store i64 %5766, i64* %PC.i114
  %5767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5768 = load i8, i8* %5767, align 1
  %5769 = icmp eq i8 %5768, 0
  %5770 = zext i1 %5769 to i8
  store i8 %5770, i8* %BRANCH_TAKEN, align 1
  %5771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5772 = select i1 %5769, i64 %5762, i64 %5764
  store i64 %5772, i64* %5771, align 8
  store %struct.Memory* %loadMem_446ea3, %struct.Memory** %MEMORY
  %loadBr_446ea3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446ea3 = icmp eq i8 %loadBr_446ea3, 1
  br i1 %cmpBr_446ea3, label %block_.L_446eae, label %block_446ea9

block_446ea9:                                     ; preds = %block_.L_446e7c
  %loadMem_446ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5774 = getelementptr inbounds %struct.GPR, %struct.GPR* %5773, i32 0, i32 33
  %5775 = getelementptr inbounds %struct.Reg, %struct.Reg* %5774, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %5775 to i64*
  %5776 = load i64, i64* %PC.i113
  %5777 = add i64 %5776, 195
  %5778 = load i64, i64* %PC.i113
  %5779 = add i64 %5778, 5
  store i64 %5779, i64* %PC.i113
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5777, i64* %5780, align 8
  store %struct.Memory* %loadMem_446ea9, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446eae:                                  ; preds = %block_.L_446e7c
  %loadMem_446eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %5781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5782 = getelementptr inbounds %struct.GPR, %struct.GPR* %5781, i32 0, i32 33
  %5783 = getelementptr inbounds %struct.Reg, %struct.Reg* %5782, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %5783 to i64*
  %5784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5785 = getelementptr inbounds %struct.GPR, %struct.GPR* %5784, i32 0, i32 1
  %5786 = getelementptr inbounds %struct.Reg, %struct.Reg* %5785, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %5786 to i64*
  %5787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5788 = getelementptr inbounds %struct.GPR, %struct.GPR* %5787, i32 0, i32 15
  %5789 = getelementptr inbounds %struct.Reg, %struct.Reg* %5788, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %5789 to i64*
  %5790 = load i64, i64* %RBP.i112
  %5791 = sub i64 %5790, 16
  %5792 = load i64, i64* %PC.i110
  %5793 = add i64 %5792, 4
  store i64 %5793, i64* %PC.i110
  %5794 = inttoptr i64 %5791 to i64*
  %5795 = load i64, i64* %5794
  store i64 %5795, i64* %RAX.i111, align 8
  store %struct.Memory* %loadMem_446eae, %struct.Memory** %MEMORY
  %loadMem_446eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5797 = getelementptr inbounds %struct.GPR, %struct.GPR* %5796, i32 0, i32 33
  %5798 = getelementptr inbounds %struct.Reg, %struct.Reg* %5797, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %5798 to i64*
  %5799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5800 = getelementptr inbounds %struct.GPR, %struct.GPR* %5799, i32 0, i32 1
  %5801 = getelementptr inbounds %struct.Reg, %struct.Reg* %5800, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %5801 to i64*
  %5802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5803 = getelementptr inbounds %struct.GPR, %struct.GPR* %5802, i32 0, i32 11
  %5804 = getelementptr inbounds %struct.Reg, %struct.Reg* %5803, i32 0, i32 0
  %RDI.i109 = bitcast %union.anon* %5804 to i64*
  %5805 = load i64, i64* %RAX.i108
  %5806 = load i64, i64* %PC.i107
  %5807 = add i64 %5806, 3
  store i64 %5807, i64* %PC.i107
  %5808 = inttoptr i64 %5805 to i64*
  %5809 = load i64, i64* %5808
  store i64 %5809, i64* %RDI.i109, align 8
  store %struct.Memory* %loadMem_446eb2, %struct.Memory** %MEMORY
  %loadMem_446eb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5811 = getelementptr inbounds %struct.GPR, %struct.GPR* %5810, i32 0, i32 33
  %5812 = getelementptr inbounds %struct.Reg, %struct.Reg* %5811, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %5812 to i64*
  %5813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5814 = getelementptr inbounds %struct.GPR, %struct.GPR* %5813, i32 0, i32 1
  %5815 = getelementptr inbounds %struct.Reg, %struct.Reg* %5814, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %5815 to i64*
  %5816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5817 = getelementptr inbounds %struct.GPR, %struct.GPR* %5816, i32 0, i32 15
  %5818 = getelementptr inbounds %struct.Reg, %struct.Reg* %5817, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %5818 to i64*
  %5819 = load i64, i64* %RBP.i106
  %5820 = sub i64 %5819, 16
  %5821 = load i64, i64* %PC.i104
  %5822 = add i64 %5821, 4
  store i64 %5822, i64* %PC.i104
  %5823 = inttoptr i64 %5820 to i64*
  %5824 = load i64, i64* %5823
  store i64 %5824, i64* %RAX.i105, align 8
  store %struct.Memory* %loadMem_446eb5, %struct.Memory** %MEMORY
  %loadMem_446eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5826 = getelementptr inbounds %struct.GPR, %struct.GPR* %5825, i32 0, i32 33
  %5827 = getelementptr inbounds %struct.Reg, %struct.Reg* %5826, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %5827 to i64*
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5829 = getelementptr inbounds %struct.GPR, %struct.GPR* %5828, i32 0, i32 1
  %5830 = getelementptr inbounds %struct.Reg, %struct.Reg* %5829, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %5830 to i64*
  %5831 = load i64, i64* %RAX.i103
  %5832 = add i64 %5831, 120
  %5833 = load i64, i64* %PC.i102
  %5834 = add i64 %5833, 4
  store i64 %5834, i64* %PC.i102
  %5835 = inttoptr i64 %5832 to i64*
  %5836 = load i64, i64* %5835
  store i64 %5836, i64* %RAX.i103, align 8
  store %struct.Memory* %loadMem_446eb9, %struct.Memory** %MEMORY
  %loadMem_446ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5838 = getelementptr inbounds %struct.GPR, %struct.GPR* %5837, i32 0, i32 33
  %5839 = getelementptr inbounds %struct.Reg, %struct.Reg* %5838, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %5839 to i64*
  %5840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5841 = getelementptr inbounds %struct.GPR, %struct.GPR* %5840, i32 0, i32 5
  %5842 = getelementptr inbounds %struct.Reg, %struct.Reg* %5841, i32 0, i32 0
  %RCX.i100 = bitcast %union.anon* %5842 to i64*
  %5843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5844 = getelementptr inbounds %struct.GPR, %struct.GPR* %5843, i32 0, i32 15
  %5845 = getelementptr inbounds %struct.Reg, %struct.Reg* %5844, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %5845 to i64*
  %5846 = load i64, i64* %RBP.i101
  %5847 = sub i64 %5846, 22
  %5848 = load i64, i64* %PC.i99
  %5849 = add i64 %5848, 4
  store i64 %5849, i64* %PC.i99
  %5850 = inttoptr i64 %5847 to i16*
  %5851 = load i16, i16* %5850
  %5852 = zext i16 %5851 to i64
  store i64 %5852, i64* %RCX.i100, align 8
  store %struct.Memory* %loadMem_446ebd, %struct.Memory** %MEMORY
  %loadMem_446ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5854 = getelementptr inbounds %struct.GPR, %struct.GPR* %5853, i32 0, i32 33
  %5855 = getelementptr inbounds %struct.Reg, %struct.Reg* %5854, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %5855 to i64*
  %5856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5857 = getelementptr inbounds %struct.GPR, %struct.GPR* %5856, i32 0, i32 5
  %5858 = getelementptr inbounds %struct.Reg, %struct.Reg* %5857, i32 0, i32 0
  %ECX.i97 = bitcast %union.anon* %5858 to i32*
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5860 = getelementptr inbounds %struct.GPR, %struct.GPR* %5859, i32 0, i32 7
  %5861 = getelementptr inbounds %struct.Reg, %struct.Reg* %5860, i32 0, i32 0
  %RDX.i98 = bitcast %union.anon* %5861 to i64*
  %5862 = load i32, i32* %ECX.i97
  %5863 = zext i32 %5862 to i64
  %5864 = load i64, i64* %PC.i96
  %5865 = add i64 %5864, 2
  store i64 %5865, i64* %PC.i96
  %5866 = and i64 %5863, 4294967295
  store i64 %5866, i64* %RDX.i98, align 8
  store %struct.Memory* %loadMem_446ec1, %struct.Memory** %MEMORY
  %loadMem_446ec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5868 = getelementptr inbounds %struct.GPR, %struct.GPR* %5867, i32 0, i32 33
  %5869 = getelementptr inbounds %struct.Reg, %struct.Reg* %5868, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %5869 to i64*
  %5870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5871 = getelementptr inbounds %struct.GPR, %struct.GPR* %5870, i32 0, i32 7
  %5872 = getelementptr inbounds %struct.Reg, %struct.Reg* %5871, i32 0, i32 0
  %RDX.i95 = bitcast %union.anon* %5872 to i64*
  %5873 = load i64, i64* %RDX.i95
  %5874 = load i64, i64* %PC.i94
  %5875 = add i64 %5874, 4
  store i64 %5875, i64* %PC.i94
  %5876 = shl i64 %5873, 1
  %5877 = icmp slt i64 %5876, 0
  %5878 = shl i64 %5876, 1
  store i64 %5878, i64* %RDX.i95, align 8
  %5879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5880 = zext i1 %5877 to i8
  store i8 %5880, i8* %5879, align 1
  %5881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5882 = trunc i64 %5878 to i32
  %5883 = and i32 %5882, 254
  %5884 = call i32 @llvm.ctpop.i32(i32 %5883)
  %5885 = trunc i32 %5884 to i8
  %5886 = and i8 %5885, 1
  %5887 = xor i8 %5886, 1
  store i8 %5887, i8* %5881, align 1
  %5888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5888, align 1
  %5889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5890 = icmp eq i64 %5878, 0
  %5891 = zext i1 %5890 to i8
  store i8 %5891, i8* %5889, align 1
  %5892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5893 = lshr i64 %5878, 63
  %5894 = trunc i64 %5893 to i8
  store i8 %5894, i8* %5892, align 1
  %5895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5895, align 1
  store %struct.Memory* %loadMem_446ec3, %struct.Memory** %MEMORY
  %loadMem_446ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5897 = getelementptr inbounds %struct.GPR, %struct.GPR* %5896, i32 0, i32 33
  %5898 = getelementptr inbounds %struct.Reg, %struct.Reg* %5897, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %5898 to i64*
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5900 = getelementptr inbounds %struct.GPR, %struct.GPR* %5899, i32 0, i32 1
  %5901 = getelementptr inbounds %struct.Reg, %struct.Reg* %5900, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %5901 to i64*
  %5902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5903 = getelementptr inbounds %struct.GPR, %struct.GPR* %5902, i32 0, i32 7
  %5904 = getelementptr inbounds %struct.Reg, %struct.Reg* %5903, i32 0, i32 0
  %RDX.i93 = bitcast %union.anon* %5904 to i64*
  %5905 = load i64, i64* %RAX.i92
  %5906 = load i64, i64* %RDX.i93
  %5907 = load i64, i64* %PC.i91
  %5908 = add i64 %5907, 3
  store i64 %5908, i64* %PC.i91
  %5909 = add i64 %5906, %5905
  store i64 %5909, i64* %RAX.i92, align 8
  %5910 = icmp ult i64 %5909, %5905
  %5911 = icmp ult i64 %5909, %5906
  %5912 = or i1 %5910, %5911
  %5913 = zext i1 %5912 to i8
  %5914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5913, i8* %5914, align 1
  %5915 = trunc i64 %5909 to i32
  %5916 = and i32 %5915, 255
  %5917 = call i32 @llvm.ctpop.i32(i32 %5916)
  %5918 = trunc i32 %5917 to i8
  %5919 = and i8 %5918, 1
  %5920 = xor i8 %5919, 1
  %5921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5920, i8* %5921, align 1
  %5922 = xor i64 %5906, %5905
  %5923 = xor i64 %5922, %5909
  %5924 = lshr i64 %5923, 4
  %5925 = trunc i64 %5924 to i8
  %5926 = and i8 %5925, 1
  %5927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5926, i8* %5927, align 1
  %5928 = icmp eq i64 %5909, 0
  %5929 = zext i1 %5928 to i8
  %5930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5929, i8* %5930, align 1
  %5931 = lshr i64 %5909, 63
  %5932 = trunc i64 %5931 to i8
  %5933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5932, i8* %5933, align 1
  %5934 = lshr i64 %5905, 63
  %5935 = lshr i64 %5906, 63
  %5936 = xor i64 %5931, %5934
  %5937 = xor i64 %5931, %5935
  %5938 = add i64 %5936, %5937
  %5939 = icmp eq i64 %5938, 2
  %5940 = zext i1 %5939 to i8
  %5941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5940, i8* %5941, align 1
  store %struct.Memory* %loadMem_446ec7, %struct.Memory** %MEMORY
  %loadMem_446eca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5943 = getelementptr inbounds %struct.GPR, %struct.GPR* %5942, i32 0, i32 33
  %5944 = getelementptr inbounds %struct.Reg, %struct.Reg* %5943, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %5944 to i64*
  %5945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5946 = getelementptr inbounds %struct.GPR, %struct.GPR* %5945, i32 0, i32 1
  %5947 = getelementptr inbounds %struct.Reg, %struct.Reg* %5946, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %5947 to i64*
  %5948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5949 = getelementptr inbounds %struct.GPR, %struct.GPR* %5948, i32 0, i32 9
  %5950 = getelementptr inbounds %struct.Reg, %struct.Reg* %5949, i32 0, i32 0
  %RSI.i90 = bitcast %union.anon* %5950 to i64*
  %5951 = load i64, i64* %RAX.i89
  %5952 = load i64, i64* %PC.i88
  %5953 = add i64 %5952, 3
  store i64 %5953, i64* %PC.i88
  store i64 %5951, i64* %RSI.i90, align 8
  store %struct.Memory* %loadMem_446eca, %struct.Memory** %MEMORY
  %loadMem1_446ecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5955 = getelementptr inbounds %struct.GPR, %struct.GPR* %5954, i32 0, i32 33
  %5956 = getelementptr inbounds %struct.Reg, %struct.Reg* %5955, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %5956 to i64*
  %5957 = load i64, i64* %PC.i87
  %5958 = add i64 %5957, 195
  %5959 = load i64, i64* %PC.i87
  %5960 = add i64 %5959, 5
  %5961 = load i64, i64* %PC.i87
  %5962 = add i64 %5961, 5
  store i64 %5962, i64* %PC.i87
  %5963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5964 = load i64, i64* %5963, align 8
  %5965 = add i64 %5964, -8
  %5966 = inttoptr i64 %5965 to i64*
  store i64 %5960, i64* %5966
  store i64 %5965, i64* %5963, align 8
  %5967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5958, i64* %5967, align 8
  store %struct.Memory* %loadMem1_446ecd, %struct.Memory** %MEMORY
  %loadMem2_446ecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446ecd = load i64, i64* %3
  %call2_446ecd = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64 %loadPC_446ecd, %struct.Memory* %loadMem2_446ecd)
  store %struct.Memory* %call2_446ecd, %struct.Memory** %MEMORY
  %loadMem_446ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5969 = getelementptr inbounds %struct.GPR, %struct.GPR* %5968, i32 0, i32 33
  %5970 = getelementptr inbounds %struct.Reg, %struct.Reg* %5969, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %5970 to i64*
  %5971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5972 = getelementptr inbounds %struct.GPR, %struct.GPR* %5971, i32 0, i32 1
  %5973 = getelementptr inbounds %struct.Reg, %struct.Reg* %5972, i32 0, i32 0
  %EAX.i86 = bitcast %union.anon* %5973 to i32*
  %5974 = load i32, i32* %EAX.i86
  %5975 = zext i32 %5974 to i64
  %5976 = load i64, i64* %PC.i85
  %5977 = add i64 %5976, 3
  store i64 %5977, i64* %PC.i85
  %5978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5978, align 1
  %5979 = and i32 %5974, 255
  %5980 = call i32 @llvm.ctpop.i32(i32 %5979)
  %5981 = trunc i32 %5980 to i8
  %5982 = and i8 %5981, 1
  %5983 = xor i8 %5982, 1
  %5984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5983, i8* %5984, align 1
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5985, align 1
  %5986 = icmp eq i32 %5974, 0
  %5987 = zext i1 %5986 to i8
  %5988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5987, i8* %5988, align 1
  %5989 = lshr i32 %5974, 31
  %5990 = trunc i32 %5989 to i8
  %5991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5990, i8* %5991, align 1
  %5992 = lshr i32 %5974, 31
  %5993 = xor i32 %5989, %5992
  %5994 = add i32 %5993, %5992
  %5995 = icmp eq i32 %5994, 2
  %5996 = zext i1 %5995 to i8
  %5997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5996, i8* %5997, align 1
  store %struct.Memory* %loadMem_446ed2, %struct.Memory** %MEMORY
  %loadMem_446ed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5999 = getelementptr inbounds %struct.GPR, %struct.GPR* %5998, i32 0, i32 33
  %6000 = getelementptr inbounds %struct.Reg, %struct.Reg* %5999, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %6000 to i64*
  %6001 = load i64, i64* %PC.i84
  %6002 = add i64 %6001, 11
  %6003 = load i64, i64* %PC.i84
  %6004 = add i64 %6003, 6
  %6005 = load i64, i64* %PC.i84
  %6006 = add i64 %6005, 6
  store i64 %6006, i64* %PC.i84
  %6007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6008 = load i8, i8* %6007, align 1
  %6009 = icmp eq i8 %6008, 0
  %6010 = zext i1 %6009 to i8
  store i8 %6010, i8* %BRANCH_TAKEN, align 1
  %6011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6012 = select i1 %6009, i64 %6002, i64 %6004
  store i64 %6012, i64* %6011, align 8
  store %struct.Memory* %loadMem_446ed5, %struct.Memory** %MEMORY
  %loadBr_446ed5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446ed5 = icmp eq i8 %loadBr_446ed5, 1
  br i1 %cmpBr_446ed5, label %block_.L_446ee0, label %block_446edb

block_446edb:                                     ; preds = %block_.L_446eae
  %loadMem_446edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6014 = getelementptr inbounds %struct.GPR, %struct.GPR* %6013, i32 0, i32 33
  %6015 = getelementptr inbounds %struct.Reg, %struct.Reg* %6014, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %6015 to i64*
  %6016 = load i64, i64* %PC.i83
  %6017 = add i64 %6016, 145
  %6018 = load i64, i64* %PC.i83
  %6019 = add i64 %6018, 5
  store i64 %6019, i64* %PC.i83
  %6020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6017, i64* %6020, align 8
  store %struct.Memory* %loadMem_446edb, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446ee0:                                  ; preds = %block_.L_446eae
  %loadMem_446ee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6022 = getelementptr inbounds %struct.GPR, %struct.GPR* %6021, i32 0, i32 33
  %6023 = getelementptr inbounds %struct.Reg, %struct.Reg* %6022, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %6023 to i64*
  %6024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6025 = getelementptr inbounds %struct.GPR, %struct.GPR* %6024, i32 0, i32 1
  %6026 = getelementptr inbounds %struct.Reg, %struct.Reg* %6025, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %6026 to i64*
  %6027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6028 = getelementptr inbounds %struct.GPR, %struct.GPR* %6027, i32 0, i32 15
  %6029 = getelementptr inbounds %struct.Reg, %struct.Reg* %6028, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %6029 to i64*
  %6030 = load i64, i64* %RBP.i82
  %6031 = sub i64 %6030, 16
  %6032 = load i64, i64* %PC.i80
  %6033 = add i64 %6032, 4
  store i64 %6033, i64* %PC.i80
  %6034 = inttoptr i64 %6031 to i64*
  %6035 = load i64, i64* %6034
  store i64 %6035, i64* %RAX.i81, align 8
  store %struct.Memory* %loadMem_446ee0, %struct.Memory** %MEMORY
  %loadMem_446ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6037 = getelementptr inbounds %struct.GPR, %struct.GPR* %6036, i32 0, i32 33
  %6038 = getelementptr inbounds %struct.Reg, %struct.Reg* %6037, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %6038 to i64*
  %6039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6040 = getelementptr inbounds %struct.GPR, %struct.GPR* %6039, i32 0, i32 1
  %6041 = getelementptr inbounds %struct.Reg, %struct.Reg* %6040, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %6041 to i64*
  %6042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6043 = getelementptr inbounds %struct.GPR, %struct.GPR* %6042, i32 0, i32 11
  %6044 = getelementptr inbounds %struct.Reg, %struct.Reg* %6043, i32 0, i32 0
  %RDI.i79 = bitcast %union.anon* %6044 to i64*
  %6045 = load i64, i64* %RAX.i78
  %6046 = load i64, i64* %PC.i77
  %6047 = add i64 %6046, 3
  store i64 %6047, i64* %PC.i77
  %6048 = inttoptr i64 %6045 to i64*
  %6049 = load i64, i64* %6048
  store i64 %6049, i64* %RDI.i79, align 8
  store %struct.Memory* %loadMem_446ee4, %struct.Memory** %MEMORY
  %loadMem_446ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6051 = getelementptr inbounds %struct.GPR, %struct.GPR* %6050, i32 0, i32 33
  %6052 = getelementptr inbounds %struct.Reg, %struct.Reg* %6051, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %6052 to i64*
  %6053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6054 = getelementptr inbounds %struct.GPR, %struct.GPR* %6053, i32 0, i32 1
  %6055 = getelementptr inbounds %struct.Reg, %struct.Reg* %6054, i32 0, i32 0
  %RAX.i75 = bitcast %union.anon* %6055 to i64*
  %6056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6057 = getelementptr inbounds %struct.GPR, %struct.GPR* %6056, i32 0, i32 15
  %6058 = getelementptr inbounds %struct.Reg, %struct.Reg* %6057, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %6058 to i64*
  %6059 = load i64, i64* %RBP.i76
  %6060 = sub i64 %6059, 16
  %6061 = load i64, i64* %PC.i74
  %6062 = add i64 %6061, 4
  store i64 %6062, i64* %PC.i74
  %6063 = inttoptr i64 %6060 to i64*
  %6064 = load i64, i64* %6063
  store i64 %6064, i64* %RAX.i75, align 8
  store %struct.Memory* %loadMem_446ee7, %struct.Memory** %MEMORY
  %loadMem_446eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6066 = getelementptr inbounds %struct.GPR, %struct.GPR* %6065, i32 0, i32 33
  %6067 = getelementptr inbounds %struct.Reg, %struct.Reg* %6066, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %6067 to i64*
  %6068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6069 = getelementptr inbounds %struct.GPR, %struct.GPR* %6068, i32 0, i32 1
  %6070 = getelementptr inbounds %struct.Reg, %struct.Reg* %6069, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %6070 to i64*
  %6071 = load i64, i64* %RAX.i73
  %6072 = add i64 %6071, 128
  %6073 = load i64, i64* %PC.i72
  %6074 = add i64 %6073, 7
  store i64 %6074, i64* %PC.i72
  %6075 = inttoptr i64 %6072 to i64*
  %6076 = load i64, i64* %6075
  store i64 %6076, i64* %RAX.i73, align 8
  store %struct.Memory* %loadMem_446eeb, %struct.Memory** %MEMORY
  %loadMem_446ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6078 = getelementptr inbounds %struct.GPR, %struct.GPR* %6077, i32 0, i32 33
  %6079 = getelementptr inbounds %struct.Reg, %struct.Reg* %6078, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %6079 to i64*
  %6080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6081 = getelementptr inbounds %struct.GPR, %struct.GPR* %6080, i32 0, i32 5
  %6082 = getelementptr inbounds %struct.Reg, %struct.Reg* %6081, i32 0, i32 0
  %RCX.i70 = bitcast %union.anon* %6082 to i64*
  %6083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6084 = getelementptr inbounds %struct.GPR, %struct.GPR* %6083, i32 0, i32 15
  %6085 = getelementptr inbounds %struct.Reg, %struct.Reg* %6084, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %6085 to i64*
  %6086 = load i64, i64* %RBP.i71
  %6087 = sub i64 %6086, 22
  %6088 = load i64, i64* %PC.i69
  %6089 = add i64 %6088, 4
  store i64 %6089, i64* %PC.i69
  %6090 = inttoptr i64 %6087 to i16*
  %6091 = load i16, i16* %6090
  %6092 = zext i16 %6091 to i64
  store i64 %6092, i64* %RCX.i70, align 8
  store %struct.Memory* %loadMem_446ef2, %struct.Memory** %MEMORY
  %loadMem_446ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6094 = getelementptr inbounds %struct.GPR, %struct.GPR* %6093, i32 0, i32 33
  %6095 = getelementptr inbounds %struct.Reg, %struct.Reg* %6094, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %6095 to i64*
  %6096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6097 = getelementptr inbounds %struct.GPR, %struct.GPR* %6096, i32 0, i32 5
  %6098 = getelementptr inbounds %struct.Reg, %struct.Reg* %6097, i32 0, i32 0
  %ECX.i67 = bitcast %union.anon* %6098 to i32*
  %6099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6100 = getelementptr inbounds %struct.GPR, %struct.GPR* %6099, i32 0, i32 7
  %6101 = getelementptr inbounds %struct.Reg, %struct.Reg* %6100, i32 0, i32 0
  %RDX.i68 = bitcast %union.anon* %6101 to i64*
  %6102 = load i32, i32* %ECX.i67
  %6103 = zext i32 %6102 to i64
  %6104 = load i64, i64* %PC.i66
  %6105 = add i64 %6104, 2
  store i64 %6105, i64* %PC.i66
  %6106 = and i64 %6103, 4294967295
  store i64 %6106, i64* %RDX.i68, align 8
  store %struct.Memory* %loadMem_446ef6, %struct.Memory** %MEMORY
  %loadMem_446ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6108 = getelementptr inbounds %struct.GPR, %struct.GPR* %6107, i32 0, i32 33
  %6109 = getelementptr inbounds %struct.Reg, %struct.Reg* %6108, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %6109 to i64*
  %6110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6111 = getelementptr inbounds %struct.GPR, %struct.GPR* %6110, i32 0, i32 7
  %6112 = getelementptr inbounds %struct.Reg, %struct.Reg* %6111, i32 0, i32 0
  %RDX.i65 = bitcast %union.anon* %6112 to i64*
  %6113 = load i64, i64* %RDX.i65
  %6114 = load i64, i64* %PC.i64
  %6115 = add i64 %6114, 4
  store i64 %6115, i64* %PC.i64
  %6116 = shl i64 %6113, 1
  %6117 = icmp slt i64 %6116, 0
  %6118 = shl i64 %6116, 1
  store i64 %6118, i64* %RDX.i65, align 8
  %6119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6120 = zext i1 %6117 to i8
  store i8 %6120, i8* %6119, align 1
  %6121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6122 = trunc i64 %6118 to i32
  %6123 = and i32 %6122, 254
  %6124 = call i32 @llvm.ctpop.i32(i32 %6123)
  %6125 = trunc i32 %6124 to i8
  %6126 = and i8 %6125, 1
  %6127 = xor i8 %6126, 1
  store i8 %6127, i8* %6121, align 1
  %6128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6128, align 1
  %6129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6130 = icmp eq i64 %6118, 0
  %6131 = zext i1 %6130 to i8
  store i8 %6131, i8* %6129, align 1
  %6132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6133 = lshr i64 %6118, 63
  %6134 = trunc i64 %6133 to i8
  store i8 %6134, i8* %6132, align 1
  %6135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6135, align 1
  store %struct.Memory* %loadMem_446ef8, %struct.Memory** %MEMORY
  %loadMem_446efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6137 = getelementptr inbounds %struct.GPR, %struct.GPR* %6136, i32 0, i32 33
  %6138 = getelementptr inbounds %struct.Reg, %struct.Reg* %6137, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %6138 to i64*
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6140 = getelementptr inbounds %struct.GPR, %struct.GPR* %6139, i32 0, i32 1
  %6141 = getelementptr inbounds %struct.Reg, %struct.Reg* %6140, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %6141 to i64*
  %6142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6143 = getelementptr inbounds %struct.GPR, %struct.GPR* %6142, i32 0, i32 7
  %6144 = getelementptr inbounds %struct.Reg, %struct.Reg* %6143, i32 0, i32 0
  %RDX.i63 = bitcast %union.anon* %6144 to i64*
  %6145 = load i64, i64* %RAX.i62
  %6146 = load i64, i64* %RDX.i63
  %6147 = load i64, i64* %PC.i61
  %6148 = add i64 %6147, 3
  store i64 %6148, i64* %PC.i61
  %6149 = add i64 %6146, %6145
  store i64 %6149, i64* %RAX.i62, align 8
  %6150 = icmp ult i64 %6149, %6145
  %6151 = icmp ult i64 %6149, %6146
  %6152 = or i1 %6150, %6151
  %6153 = zext i1 %6152 to i8
  %6154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6153, i8* %6154, align 1
  %6155 = trunc i64 %6149 to i32
  %6156 = and i32 %6155, 255
  %6157 = call i32 @llvm.ctpop.i32(i32 %6156)
  %6158 = trunc i32 %6157 to i8
  %6159 = and i8 %6158, 1
  %6160 = xor i8 %6159, 1
  %6161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6160, i8* %6161, align 1
  %6162 = xor i64 %6146, %6145
  %6163 = xor i64 %6162, %6149
  %6164 = lshr i64 %6163, 4
  %6165 = trunc i64 %6164 to i8
  %6166 = and i8 %6165, 1
  %6167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6166, i8* %6167, align 1
  %6168 = icmp eq i64 %6149, 0
  %6169 = zext i1 %6168 to i8
  %6170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6169, i8* %6170, align 1
  %6171 = lshr i64 %6149, 63
  %6172 = trunc i64 %6171 to i8
  %6173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6172, i8* %6173, align 1
  %6174 = lshr i64 %6145, 63
  %6175 = lshr i64 %6146, 63
  %6176 = xor i64 %6171, %6174
  %6177 = xor i64 %6171, %6175
  %6178 = add i64 %6176, %6177
  %6179 = icmp eq i64 %6178, 2
  %6180 = zext i1 %6179 to i8
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6180, i8* %6181, align 1
  store %struct.Memory* %loadMem_446efc, %struct.Memory** %MEMORY
  %loadMem_446eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %6182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6183 = getelementptr inbounds %struct.GPR, %struct.GPR* %6182, i32 0, i32 33
  %6184 = getelementptr inbounds %struct.Reg, %struct.Reg* %6183, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %6184 to i64*
  %6185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6186 = getelementptr inbounds %struct.GPR, %struct.GPR* %6185, i32 0, i32 1
  %6187 = getelementptr inbounds %struct.Reg, %struct.Reg* %6186, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %6187 to i64*
  %6188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6189 = getelementptr inbounds %struct.GPR, %struct.GPR* %6188, i32 0, i32 9
  %6190 = getelementptr inbounds %struct.Reg, %struct.Reg* %6189, i32 0, i32 0
  %RSI.i60 = bitcast %union.anon* %6190 to i64*
  %6191 = load i64, i64* %RAX.i59
  %6192 = load i64, i64* %PC.i58
  %6193 = add i64 %6192, 3
  store i64 %6193, i64* %PC.i58
  store i64 %6191, i64* %RSI.i60, align 8
  store %struct.Memory* %loadMem_446eff, %struct.Memory** %MEMORY
  %loadMem1_446f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6195 = getelementptr inbounds %struct.GPR, %struct.GPR* %6194, i32 0, i32 33
  %6196 = getelementptr inbounds %struct.Reg, %struct.Reg* %6195, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %6196 to i64*
  %6197 = load i64, i64* %PC.i57
  %6198 = add i64 %6197, 142
  %6199 = load i64, i64* %PC.i57
  %6200 = add i64 %6199, 5
  %6201 = load i64, i64* %PC.i57
  %6202 = add i64 %6201, 5
  store i64 %6202, i64* %PC.i57
  %6203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6204 = load i64, i64* %6203, align 8
  %6205 = add i64 %6204, -8
  %6206 = inttoptr i64 %6205 to i64*
  store i64 %6200, i64* %6206
  store i64 %6205, i64* %6203, align 8
  %6207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6198, i64* %6207, align 8
  store %struct.Memory* %loadMem1_446f02, %struct.Memory** %MEMORY
  %loadMem2_446f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446f02 = load i64, i64* %3
  %call2_446f02 = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64 %loadPC_446f02, %struct.Memory* %loadMem2_446f02)
  store %struct.Memory* %call2_446f02, %struct.Memory** %MEMORY
  %loadMem_446f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6209 = getelementptr inbounds %struct.GPR, %struct.GPR* %6208, i32 0, i32 33
  %6210 = getelementptr inbounds %struct.Reg, %struct.Reg* %6209, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %6210 to i64*
  %6211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6212 = getelementptr inbounds %struct.GPR, %struct.GPR* %6211, i32 0, i32 1
  %6213 = getelementptr inbounds %struct.Reg, %struct.Reg* %6212, i32 0, i32 0
  %EAX.i56 = bitcast %union.anon* %6213 to i32*
  %6214 = load i32, i32* %EAX.i56
  %6215 = zext i32 %6214 to i64
  %6216 = load i64, i64* %PC.i55
  %6217 = add i64 %6216, 3
  store i64 %6217, i64* %PC.i55
  %6218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6218, align 1
  %6219 = and i32 %6214, 255
  %6220 = call i32 @llvm.ctpop.i32(i32 %6219)
  %6221 = trunc i32 %6220 to i8
  %6222 = and i8 %6221, 1
  %6223 = xor i8 %6222, 1
  %6224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6223, i8* %6224, align 1
  %6225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6225, align 1
  %6226 = icmp eq i32 %6214, 0
  %6227 = zext i1 %6226 to i8
  %6228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6227, i8* %6228, align 1
  %6229 = lshr i32 %6214, 31
  %6230 = trunc i32 %6229 to i8
  %6231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6230, i8* %6231, align 1
  %6232 = lshr i32 %6214, 31
  %6233 = xor i32 %6229, %6232
  %6234 = add i32 %6233, %6232
  %6235 = icmp eq i32 %6234, 2
  %6236 = zext i1 %6235 to i8
  %6237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6236, i8* %6237, align 1
  store %struct.Memory* %loadMem_446f07, %struct.Memory** %MEMORY
  %loadMem_446f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6239 = getelementptr inbounds %struct.GPR, %struct.GPR* %6238, i32 0, i32 33
  %6240 = getelementptr inbounds %struct.Reg, %struct.Reg* %6239, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %6240 to i64*
  %6241 = load i64, i64* %PC.i54
  %6242 = add i64 %6241, 11
  %6243 = load i64, i64* %PC.i54
  %6244 = add i64 %6243, 6
  %6245 = load i64, i64* %PC.i54
  %6246 = add i64 %6245, 6
  store i64 %6246, i64* %PC.i54
  %6247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6248 = load i8, i8* %6247, align 1
  %6249 = icmp eq i8 %6248, 0
  %6250 = zext i1 %6249 to i8
  store i8 %6250, i8* %BRANCH_TAKEN, align 1
  %6251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6252 = select i1 %6249, i64 %6242, i64 %6244
  store i64 %6252, i64* %6251, align 8
  store %struct.Memory* %loadMem_446f0a, %struct.Memory** %MEMORY
  %loadBr_446f0a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446f0a = icmp eq i8 %loadBr_446f0a, 1
  br i1 %cmpBr_446f0a, label %block_.L_446f15, label %block_446f10

block_446f10:                                     ; preds = %block_.L_446ee0
  %loadMem_446f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6254 = getelementptr inbounds %struct.GPR, %struct.GPR* %6253, i32 0, i32 33
  %6255 = getelementptr inbounds %struct.Reg, %struct.Reg* %6254, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %6255 to i64*
  %6256 = load i64, i64* %PC.i53
  %6257 = add i64 %6256, 92
  %6258 = load i64, i64* %PC.i53
  %6259 = add i64 %6258, 5
  store i64 %6259, i64* %PC.i53
  %6260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6257, i64* %6260, align 8
  store %struct.Memory* %loadMem_446f10, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446f15:                                  ; preds = %block_.L_446ee0
  %loadMem_446f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6262 = getelementptr inbounds %struct.GPR, %struct.GPR* %6261, i32 0, i32 33
  %6263 = getelementptr inbounds %struct.Reg, %struct.Reg* %6262, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %6263 to i64*
  %6264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6265 = getelementptr inbounds %struct.GPR, %struct.GPR* %6264, i32 0, i32 1
  %6266 = getelementptr inbounds %struct.Reg, %struct.Reg* %6265, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %6266 to i64*
  %6267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6268 = getelementptr inbounds %struct.GPR, %struct.GPR* %6267, i32 0, i32 15
  %6269 = getelementptr inbounds %struct.Reg, %struct.Reg* %6268, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %6269 to i64*
  %6270 = load i64, i64* %RBP.i52
  %6271 = sub i64 %6270, 16
  %6272 = load i64, i64* %PC.i50
  %6273 = add i64 %6272, 4
  store i64 %6273, i64* %PC.i50
  %6274 = inttoptr i64 %6271 to i64*
  %6275 = load i64, i64* %6274
  store i64 %6275, i64* %RAX.i51, align 8
  store %struct.Memory* %loadMem_446f15, %struct.Memory** %MEMORY
  %loadMem_446f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6277 = getelementptr inbounds %struct.GPR, %struct.GPR* %6276, i32 0, i32 33
  %6278 = getelementptr inbounds %struct.Reg, %struct.Reg* %6277, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %6278 to i64*
  %6279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6280 = getelementptr inbounds %struct.GPR, %struct.GPR* %6279, i32 0, i32 1
  %6281 = getelementptr inbounds %struct.Reg, %struct.Reg* %6280, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %6281 to i64*
  %6282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6283 = getelementptr inbounds %struct.GPR, %struct.GPR* %6282, i32 0, i32 11
  %6284 = getelementptr inbounds %struct.Reg, %struct.Reg* %6283, i32 0, i32 0
  %RDI.i49 = bitcast %union.anon* %6284 to i64*
  %6285 = load i64, i64* %RAX.i48
  %6286 = load i64, i64* %PC.i47
  %6287 = add i64 %6286, 3
  store i64 %6287, i64* %PC.i47
  %6288 = inttoptr i64 %6285 to i64*
  %6289 = load i64, i64* %6288
  store i64 %6289, i64* %RDI.i49, align 8
  store %struct.Memory* %loadMem_446f19, %struct.Memory** %MEMORY
  %loadMem_446f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6291 = getelementptr inbounds %struct.GPR, %struct.GPR* %6290, i32 0, i32 33
  %6292 = getelementptr inbounds %struct.Reg, %struct.Reg* %6291, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %6292 to i64*
  %6293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6294 = getelementptr inbounds %struct.GPR, %struct.GPR* %6293, i32 0, i32 1
  %6295 = getelementptr inbounds %struct.Reg, %struct.Reg* %6294, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %6295 to i64*
  %6296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6297 = getelementptr inbounds %struct.GPR, %struct.GPR* %6296, i32 0, i32 15
  %6298 = getelementptr inbounds %struct.Reg, %struct.Reg* %6297, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %6298 to i64*
  %6299 = load i64, i64* %RBP.i46
  %6300 = sub i64 %6299, 16
  %6301 = load i64, i64* %PC.i44
  %6302 = add i64 %6301, 4
  store i64 %6302, i64* %PC.i44
  %6303 = inttoptr i64 %6300 to i64*
  %6304 = load i64, i64* %6303
  store i64 %6304, i64* %RAX.i45, align 8
  store %struct.Memory* %loadMem_446f1c, %struct.Memory** %MEMORY
  %loadMem_446f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6306 = getelementptr inbounds %struct.GPR, %struct.GPR* %6305, i32 0, i32 33
  %6307 = getelementptr inbounds %struct.Reg, %struct.Reg* %6306, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %6307 to i64*
  %6308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6309 = getelementptr inbounds %struct.GPR, %struct.GPR* %6308, i32 0, i32 1
  %6310 = getelementptr inbounds %struct.Reg, %struct.Reg* %6309, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %6310 to i64*
  %6311 = load i64, i64* %RAX.i43
  %6312 = add i64 %6311, 136
  %6313 = load i64, i64* %PC.i42
  %6314 = add i64 %6313, 7
  store i64 %6314, i64* %PC.i42
  %6315 = inttoptr i64 %6312 to i64*
  %6316 = load i64, i64* %6315
  store i64 %6316, i64* %RAX.i43, align 8
  store %struct.Memory* %loadMem_446f20, %struct.Memory** %MEMORY
  %loadMem_446f27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6318 = getelementptr inbounds %struct.GPR, %struct.GPR* %6317, i32 0, i32 33
  %6319 = getelementptr inbounds %struct.Reg, %struct.Reg* %6318, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %6319 to i64*
  %6320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6321 = getelementptr inbounds %struct.GPR, %struct.GPR* %6320, i32 0, i32 5
  %6322 = getelementptr inbounds %struct.Reg, %struct.Reg* %6321, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %6322 to i64*
  %6323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6324 = getelementptr inbounds %struct.GPR, %struct.GPR* %6323, i32 0, i32 15
  %6325 = getelementptr inbounds %struct.Reg, %struct.Reg* %6324, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %6325 to i64*
  %6326 = load i64, i64* %RBP.i41
  %6327 = sub i64 %6326, 22
  %6328 = load i64, i64* %PC.i40
  %6329 = add i64 %6328, 4
  store i64 %6329, i64* %PC.i40
  %6330 = inttoptr i64 %6327 to i16*
  %6331 = load i16, i16* %6330
  %6332 = zext i16 %6331 to i64
  store i64 %6332, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_446f27, %struct.Memory** %MEMORY
  %loadMem_446f2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6334 = getelementptr inbounds %struct.GPR, %struct.GPR* %6333, i32 0, i32 33
  %6335 = getelementptr inbounds %struct.Reg, %struct.Reg* %6334, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %6335 to i64*
  %6336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6337 = getelementptr inbounds %struct.GPR, %struct.GPR* %6336, i32 0, i32 5
  %6338 = getelementptr inbounds %struct.Reg, %struct.Reg* %6337, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %6338 to i32*
  %6339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6340 = getelementptr inbounds %struct.GPR, %struct.GPR* %6339, i32 0, i32 7
  %6341 = getelementptr inbounds %struct.Reg, %struct.Reg* %6340, i32 0, i32 0
  %RDX.i39 = bitcast %union.anon* %6341 to i64*
  %6342 = load i32, i32* %ECX.i
  %6343 = zext i32 %6342 to i64
  %6344 = load i64, i64* %PC.i38
  %6345 = add i64 %6344, 2
  store i64 %6345, i64* %PC.i38
  %6346 = and i64 %6343, 4294967295
  store i64 %6346, i64* %RDX.i39, align 8
  store %struct.Memory* %loadMem_446f2b, %struct.Memory** %MEMORY
  %loadMem_446f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6348 = getelementptr inbounds %struct.GPR, %struct.GPR* %6347, i32 0, i32 33
  %6349 = getelementptr inbounds %struct.Reg, %struct.Reg* %6348, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %6349 to i64*
  %6350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6351 = getelementptr inbounds %struct.GPR, %struct.GPR* %6350, i32 0, i32 7
  %6352 = getelementptr inbounds %struct.Reg, %struct.Reg* %6351, i32 0, i32 0
  %RDX.i37 = bitcast %union.anon* %6352 to i64*
  %6353 = load i64, i64* %RDX.i37
  %6354 = load i64, i64* %PC.i36
  %6355 = add i64 %6354, 4
  store i64 %6355, i64* %PC.i36
  %6356 = shl i64 %6353, 1
  %6357 = icmp slt i64 %6356, 0
  %6358 = shl i64 %6356, 1
  store i64 %6358, i64* %RDX.i37, align 8
  %6359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6360 = zext i1 %6357 to i8
  store i8 %6360, i8* %6359, align 1
  %6361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6362 = trunc i64 %6358 to i32
  %6363 = and i32 %6362, 254
  %6364 = call i32 @llvm.ctpop.i32(i32 %6363)
  %6365 = trunc i32 %6364 to i8
  %6366 = and i8 %6365, 1
  %6367 = xor i8 %6366, 1
  store i8 %6367, i8* %6361, align 1
  %6368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6368, align 1
  %6369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6370 = icmp eq i64 %6358, 0
  %6371 = zext i1 %6370 to i8
  store i8 %6371, i8* %6369, align 1
  %6372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6373 = lshr i64 %6358, 63
  %6374 = trunc i64 %6373 to i8
  store i8 %6374, i8* %6372, align 1
  %6375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6375, align 1
  store %struct.Memory* %loadMem_446f2d, %struct.Memory** %MEMORY
  %loadMem_446f31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6377 = getelementptr inbounds %struct.GPR, %struct.GPR* %6376, i32 0, i32 33
  %6378 = getelementptr inbounds %struct.Reg, %struct.Reg* %6377, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %6378 to i64*
  %6379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6380 = getelementptr inbounds %struct.GPR, %struct.GPR* %6379, i32 0, i32 1
  %6381 = getelementptr inbounds %struct.Reg, %struct.Reg* %6380, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %6381 to i64*
  %6382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6383 = getelementptr inbounds %struct.GPR, %struct.GPR* %6382, i32 0, i32 7
  %6384 = getelementptr inbounds %struct.Reg, %struct.Reg* %6383, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %6384 to i64*
  %6385 = load i64, i64* %RAX.i35
  %6386 = load i64, i64* %RDX.i
  %6387 = load i64, i64* %PC.i34
  %6388 = add i64 %6387, 3
  store i64 %6388, i64* %PC.i34
  %6389 = add i64 %6386, %6385
  store i64 %6389, i64* %RAX.i35, align 8
  %6390 = icmp ult i64 %6389, %6385
  %6391 = icmp ult i64 %6389, %6386
  %6392 = or i1 %6390, %6391
  %6393 = zext i1 %6392 to i8
  %6394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6393, i8* %6394, align 1
  %6395 = trunc i64 %6389 to i32
  %6396 = and i32 %6395, 255
  %6397 = call i32 @llvm.ctpop.i32(i32 %6396)
  %6398 = trunc i32 %6397 to i8
  %6399 = and i8 %6398, 1
  %6400 = xor i8 %6399, 1
  %6401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6400, i8* %6401, align 1
  %6402 = xor i64 %6386, %6385
  %6403 = xor i64 %6402, %6389
  %6404 = lshr i64 %6403, 4
  %6405 = trunc i64 %6404 to i8
  %6406 = and i8 %6405, 1
  %6407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6406, i8* %6407, align 1
  %6408 = icmp eq i64 %6389, 0
  %6409 = zext i1 %6408 to i8
  %6410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6409, i8* %6410, align 1
  %6411 = lshr i64 %6389, 63
  %6412 = trunc i64 %6411 to i8
  %6413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6412, i8* %6413, align 1
  %6414 = lshr i64 %6385, 63
  %6415 = lshr i64 %6386, 63
  %6416 = xor i64 %6411, %6414
  %6417 = xor i64 %6411, %6415
  %6418 = add i64 %6416, %6417
  %6419 = icmp eq i64 %6418, 2
  %6420 = zext i1 %6419 to i8
  %6421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6420, i8* %6421, align 1
  store %struct.Memory* %loadMem_446f31, %struct.Memory** %MEMORY
  %loadMem_446f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6423 = getelementptr inbounds %struct.GPR, %struct.GPR* %6422, i32 0, i32 33
  %6424 = getelementptr inbounds %struct.Reg, %struct.Reg* %6423, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %6424 to i64*
  %6425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6426 = getelementptr inbounds %struct.GPR, %struct.GPR* %6425, i32 0, i32 1
  %6427 = getelementptr inbounds %struct.Reg, %struct.Reg* %6426, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %6427 to i64*
  %6428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6429 = getelementptr inbounds %struct.GPR, %struct.GPR* %6428, i32 0, i32 9
  %6430 = getelementptr inbounds %struct.Reg, %struct.Reg* %6429, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %6430 to i64*
  %6431 = load i64, i64* %RAX.i33
  %6432 = load i64, i64* %PC.i32
  %6433 = add i64 %6432, 3
  store i64 %6433, i64* %PC.i32
  store i64 %6431, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_446f34, %struct.Memory** %MEMORY
  %loadMem1_446f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6435 = getelementptr inbounds %struct.GPR, %struct.GPR* %6434, i32 0, i32 33
  %6436 = getelementptr inbounds %struct.Reg, %struct.Reg* %6435, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %6436 to i64*
  %6437 = load i64, i64* %PC.i31
  %6438 = add i64 %6437, 89
  %6439 = load i64, i64* %PC.i31
  %6440 = add i64 %6439, 5
  %6441 = load i64, i64* %PC.i31
  %6442 = add i64 %6441, 5
  store i64 %6442, i64* %PC.i31
  %6443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6444 = load i64, i64* %6443, align 8
  %6445 = add i64 %6444, -8
  %6446 = inttoptr i64 %6445 to i64*
  store i64 %6440, i64* %6446
  store i64 %6445, i64* %6443, align 8
  %6447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6438, i64* %6447, align 8
  store %struct.Memory* %loadMem1_446f37, %struct.Memory** %MEMORY
  %loadMem2_446f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446f37 = load i64, i64* %3
  %call2_446f37 = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64 %loadPC_446f37, %struct.Memory* %loadMem2_446f37)
  store %struct.Memory* %call2_446f37, %struct.Memory** %MEMORY
  %loadMem_446f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6449 = getelementptr inbounds %struct.GPR, %struct.GPR* %6448, i32 0, i32 33
  %6450 = getelementptr inbounds %struct.Reg, %struct.Reg* %6449, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %6450 to i64*
  %6451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6452 = getelementptr inbounds %struct.GPR, %struct.GPR* %6451, i32 0, i32 1
  %6453 = getelementptr inbounds %struct.Reg, %struct.Reg* %6452, i32 0, i32 0
  %EAX.i30 = bitcast %union.anon* %6453 to i32*
  %6454 = load i32, i32* %EAX.i30
  %6455 = zext i32 %6454 to i64
  %6456 = load i64, i64* %PC.i29
  %6457 = add i64 %6456, 3
  store i64 %6457, i64* %PC.i29
  %6458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6458, align 1
  %6459 = and i32 %6454, 255
  %6460 = call i32 @llvm.ctpop.i32(i32 %6459)
  %6461 = trunc i32 %6460 to i8
  %6462 = and i8 %6461, 1
  %6463 = xor i8 %6462, 1
  %6464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6463, i8* %6464, align 1
  %6465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6465, align 1
  %6466 = icmp eq i32 %6454, 0
  %6467 = zext i1 %6466 to i8
  %6468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6467, i8* %6468, align 1
  %6469 = lshr i32 %6454, 31
  %6470 = trunc i32 %6469 to i8
  %6471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6470, i8* %6471, align 1
  %6472 = lshr i32 %6454, 31
  %6473 = xor i32 %6469, %6472
  %6474 = add i32 %6473, %6472
  %6475 = icmp eq i32 %6474, 2
  %6476 = zext i1 %6475 to i8
  %6477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6476, i8* %6477, align 1
  store %struct.Memory* %loadMem_446f3c, %struct.Memory** %MEMORY
  %loadMem_446f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6479 = getelementptr inbounds %struct.GPR, %struct.GPR* %6478, i32 0, i32 33
  %6480 = getelementptr inbounds %struct.Reg, %struct.Reg* %6479, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %6480 to i64*
  %6481 = load i64, i64* %PC.i28
  %6482 = add i64 %6481, 11
  %6483 = load i64, i64* %PC.i28
  %6484 = add i64 %6483, 6
  %6485 = load i64, i64* %PC.i28
  %6486 = add i64 %6485, 6
  store i64 %6486, i64* %PC.i28
  %6487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6488 = load i8, i8* %6487, align 1
  %6489 = icmp eq i8 %6488, 0
  %6490 = zext i1 %6489 to i8
  store i8 %6490, i8* %BRANCH_TAKEN, align 1
  %6491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6492 = select i1 %6489, i64 %6482, i64 %6484
  store i64 %6492, i64* %6491, align 8
  store %struct.Memory* %loadMem_446f3f, %struct.Memory** %MEMORY
  %loadBr_446f3f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446f3f = icmp eq i8 %loadBr_446f3f, 1
  br i1 %cmpBr_446f3f, label %block_.L_446f4a, label %block_446f45

block_446f45:                                     ; preds = %block_.L_446f15
  %loadMem_446f45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6494 = getelementptr inbounds %struct.GPR, %struct.GPR* %6493, i32 0, i32 33
  %6495 = getelementptr inbounds %struct.Reg, %struct.Reg* %6494, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %6495 to i64*
  %6496 = load i64, i64* %PC.i27
  %6497 = add i64 %6496, 39
  %6498 = load i64, i64* %PC.i27
  %6499 = add i64 %6498, 5
  store i64 %6499, i64* %PC.i27
  %6500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6497, i64* %6500, align 8
  store %struct.Memory* %loadMem_446f45, %struct.Memory** %MEMORY
  br label %block_.L_446f6c

block_.L_446f4a:                                  ; preds = %block_.L_446f15
  %loadMem_446f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6502 = getelementptr inbounds %struct.GPR, %struct.GPR* %6501, i32 0, i32 33
  %6503 = getelementptr inbounds %struct.Reg, %struct.Reg* %6502, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %6503 to i64*
  %6504 = load i64, i64* %PC.i26
  %6505 = add i64 %6504, 5
  %6506 = load i64, i64* %PC.i26
  %6507 = add i64 %6506, 5
  store i64 %6507, i64* %PC.i26
  %6508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6505, i64* %6508, align 8
  store %struct.Memory* %loadMem_446f4a, %struct.Memory** %MEMORY
  br label %block_.L_446f4f

block_.L_446f4f:                                  ; preds = %block_.L_446f4a
  %loadMem_446f4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6510 = getelementptr inbounds %struct.GPR, %struct.GPR* %6509, i32 0, i32 33
  %6511 = getelementptr inbounds %struct.Reg, %struct.Reg* %6510, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %6511 to i64*
  %6512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6513 = getelementptr inbounds %struct.GPR, %struct.GPR* %6512, i32 0, i32 1
  %6514 = getelementptr inbounds %struct.Reg, %struct.Reg* %6513, i32 0, i32 0
  %AX.i24 = bitcast %union.anon* %6514 to i16*
  %6515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6516 = getelementptr inbounds %struct.GPR, %struct.GPR* %6515, i32 0, i32 15
  %6517 = getelementptr inbounds %struct.Reg, %struct.Reg* %6516, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %6517 to i64*
  %6518 = load i64, i64* %RBP.i25
  %6519 = sub i64 %6518, 22
  %6520 = load i64, i64* %PC.i23
  %6521 = add i64 %6520, 4
  store i64 %6521, i64* %PC.i23
  %6522 = inttoptr i64 %6519 to i16*
  %6523 = load i16, i16* %6522
  store i16 %6523, i16* %AX.i24, align 2
  store %struct.Memory* %loadMem_446f4f, %struct.Memory** %MEMORY
  %loadMem_446f53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6525 = getelementptr inbounds %struct.GPR, %struct.GPR* %6524, i32 0, i32 33
  %6526 = getelementptr inbounds %struct.Reg, %struct.Reg* %6525, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %6526 to i64*
  %6527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6528 = getelementptr inbounds %struct.GPR, %struct.GPR* %6527, i32 0, i32 1
  %6529 = getelementptr inbounds %struct.Reg, %struct.Reg* %6528, i32 0, i32 0
  %AX.i22 = bitcast %union.anon* %6529 to i16*
  %6530 = load i16, i16* %AX.i22
  %6531 = zext i16 %6530 to i64
  %6532 = load i64, i64* %PC.i21
  %6533 = add i64 %6532, 4
  store i64 %6533, i64* %PC.i21
  %6534 = add i16 1, %6530
  store i16 %6534, i16* %AX.i22, align 2
  %6535 = icmp ult i16 %6534, %6530
  %6536 = icmp ult i16 %6534, 1
  %6537 = or i1 %6535, %6536
  %6538 = zext i1 %6537 to i8
  %6539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6538, i8* %6539, align 1
  %6540 = and i16 %6534, 255
  %6541 = zext i16 %6540 to i32
  %6542 = call i32 @llvm.ctpop.i32(i32 %6541)
  %6543 = trunc i32 %6542 to i8
  %6544 = and i8 %6543, 1
  %6545 = xor i8 %6544, 1
  %6546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6545, i8* %6546, align 1
  %6547 = xor i64 1, %6531
  %6548 = trunc i64 %6547 to i16
  %6549 = xor i16 %6548, %6534
  %6550 = lshr i16 %6549, 4
  %6551 = trunc i16 %6550 to i8
  %6552 = and i8 %6551, 1
  %6553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6552, i8* %6553, align 1
  %6554 = icmp eq i16 %6534, 0
  %6555 = zext i1 %6554 to i8
  %6556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6555, i8* %6556, align 1
  %6557 = lshr i16 %6534, 15
  %6558 = trunc i16 %6557 to i8
  %6559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6558, i8* %6559, align 1
  %6560 = lshr i16 %6530, 15
  %6561 = xor i16 %6557, %6560
  %6562 = add i16 %6561, %6557
  %6563 = icmp eq i16 %6562, 2
  %6564 = zext i1 %6563 to i8
  %6565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6564, i8* %6565, align 1
  store %struct.Memory* %loadMem_446f53, %struct.Memory** %MEMORY
  %loadMem_446f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6567 = getelementptr inbounds %struct.GPR, %struct.GPR* %6566, i32 0, i32 33
  %6568 = getelementptr inbounds %struct.Reg, %struct.Reg* %6567, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %6568 to i64*
  %6569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6570 = getelementptr inbounds %struct.GPR, %struct.GPR* %6569, i32 0, i32 1
  %6571 = getelementptr inbounds %struct.Reg, %struct.Reg* %6570, i32 0, i32 0
  %AX.i = bitcast %union.anon* %6571 to i16*
  %6572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6573 = getelementptr inbounds %struct.GPR, %struct.GPR* %6572, i32 0, i32 15
  %6574 = getelementptr inbounds %struct.Reg, %struct.Reg* %6573, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %6574 to i64*
  %6575 = load i64, i64* %RBP.i20
  %6576 = sub i64 %6575, 22
  %6577 = load i16, i16* %AX.i
  %6578 = zext i16 %6577 to i64
  %6579 = load i64, i64* %PC.i19
  %6580 = add i64 %6579, 4
  store i64 %6580, i64* %PC.i19
  %6581 = inttoptr i64 %6576 to i16*
  store i16 %6577, i16* %6581
  store %struct.Memory* %loadMem_446f57, %struct.Memory** %MEMORY
  %loadMem_446f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6583 = getelementptr inbounds %struct.GPR, %struct.GPR* %6582, i32 0, i32 33
  %6584 = getelementptr inbounds %struct.Reg, %struct.Reg* %6583, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %6584 to i64*
  %6585 = load i64, i64* %PC.i18
  %6586 = add i64 %6585, -420
  %6587 = load i64, i64* %PC.i18
  %6588 = add i64 %6587, 5
  store i64 %6588, i64* %PC.i18
  %6589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6586, i64* %6589, align 8
  store %struct.Memory* %loadMem_446f5b, %struct.Memory** %MEMORY
  br label %block_.L_446db7

block_.L_446f60:                                  ; preds = %block_.L_446db7
  %loadMem_446f60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6591 = getelementptr inbounds %struct.GPR, %struct.GPR* %6590, i32 0, i32 33
  %6592 = getelementptr inbounds %struct.Reg, %struct.Reg* %6591, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %6592 to i64*
  %6593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6594 = getelementptr inbounds %struct.GPR, %struct.GPR* %6593, i32 0, i32 15
  %6595 = getelementptr inbounds %struct.Reg, %struct.Reg* %6594, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %6595 to i64*
  %6596 = load i64, i64* %RBP.i17
  %6597 = sub i64 %6596, 4
  %6598 = load i64, i64* %PC.i16
  %6599 = add i64 %6598, 7
  store i64 %6599, i64* %PC.i16
  %6600 = inttoptr i64 %6597 to i32*
  store i32 0, i32* %6600
  store %struct.Memory* %loadMem_446f60, %struct.Memory** %MEMORY
  %loadMem_446f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6602 = getelementptr inbounds %struct.GPR, %struct.GPR* %6601, i32 0, i32 33
  %6603 = getelementptr inbounds %struct.Reg, %struct.Reg* %6602, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %6603 to i64*
  %6604 = load i64, i64* %PC.i15
  %6605 = add i64 %6604, 20
  %6606 = load i64, i64* %PC.i15
  %6607 = add i64 %6606, 5
  store i64 %6607, i64* %PC.i15
  %6608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6605, i64* %6608, align 8
  store %struct.Memory* %loadMem_446f67, %struct.Memory** %MEMORY
  br label %block_.L_446f7b

block_.L_446f6c:                                  ; preds = %block_446f45, %block_446f10, %block_446edb, %block_446ea9, %block_446e77, %block_446e29, %block_446df3, %block_446da5, %block_446d6e, %block_446d37, %block_446d03, %block_446c8e, %block_446c61, %block_446c4b, %block_446c1c, %block_446bed, %block_446bbe, %block_446b99, %block_446b74, %block_446b4f, %block_446b2a, %block_446b05, %block_446ae0, %block_446abb, %block_446a96, %block_.L_446a2b, %block_446a00, %block_4469d4, %block_4469a8
  %loadMem_446f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6610 = getelementptr inbounds %struct.GPR, %struct.GPR* %6609, i32 0, i32 33
  %6611 = getelementptr inbounds %struct.Reg, %struct.Reg* %6610, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %6611 to i64*
  %6612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6613 = getelementptr inbounds %struct.GPR, %struct.GPR* %6612, i32 0, i32 11
  %6614 = getelementptr inbounds %struct.Reg, %struct.Reg* %6613, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %6614 to i64*
  %6615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6616 = getelementptr inbounds %struct.GPR, %struct.GPR* %6615, i32 0, i32 15
  %6617 = getelementptr inbounds %struct.Reg, %struct.Reg* %6616, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %6617 to i64*
  %6618 = load i64, i64* %RBP.i14
  %6619 = sub i64 %6618, 16
  %6620 = load i64, i64* %PC.i13
  %6621 = add i64 %6620, 4
  store i64 %6621, i64* %PC.i13
  %6622 = inttoptr i64 %6619 to i64*
  %6623 = load i64, i64* %6622
  store i64 %6623, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_446f6c, %struct.Memory** %MEMORY
  %loadMem1_446f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6625 = getelementptr inbounds %struct.GPR, %struct.GPR* %6624, i32 0, i32 33
  %6626 = getelementptr inbounds %struct.Reg, %struct.Reg* %6625, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %6626 to i64*
  %6627 = load i64, i64* %PC.i12
  %6628 = add i64 %6627, 640
  %6629 = load i64, i64* %PC.i12
  %6630 = add i64 %6629, 5
  %6631 = load i64, i64* %PC.i12
  %6632 = add i64 %6631, 5
  store i64 %6632, i64* %PC.i12
  %6633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6634 = load i64, i64* %6633, align 8
  %6635 = add i64 %6634, -8
  %6636 = inttoptr i64 %6635 to i64*
  store i64 %6630, i64* %6636
  store i64 %6635, i64* %6633, align 8
  %6637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6628, i64* %6637, align 8
  store %struct.Memory* %loadMem1_446f70, %struct.Memory** %MEMORY
  %loadMem2_446f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446f70 = load i64, i64* %3
  %call2_446f70 = call %struct.Memory* @sub_4471f0.SSIClose(%struct.State* %0, i64 %loadPC_446f70, %struct.Memory* %loadMem2_446f70)
  store %struct.Memory* %call2_446f70, %struct.Memory** %MEMORY
  %loadMem_446f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6639 = getelementptr inbounds %struct.GPR, %struct.GPR* %6638, i32 0, i32 33
  %6640 = getelementptr inbounds %struct.Reg, %struct.Reg* %6639, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %6640 to i64*
  %6641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6642 = getelementptr inbounds %struct.GPR, %struct.GPR* %6641, i32 0, i32 1
  %6643 = getelementptr inbounds %struct.Reg, %struct.Reg* %6642, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %6643 to i64*
  %6644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6645 = getelementptr inbounds %struct.GPR, %struct.GPR* %6644, i32 0, i32 15
  %6646 = getelementptr inbounds %struct.Reg, %struct.Reg* %6645, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %6646 to i64*
  %6647 = load i64, i64* %RBP.i11
  %6648 = sub i64 %6647, 28
  %6649 = load i64, i64* %PC.i9
  %6650 = add i64 %6649, 3
  store i64 %6650, i64* %PC.i9
  %6651 = inttoptr i64 %6648 to i32*
  %6652 = load i32, i32* %6651
  %6653 = zext i32 %6652 to i64
  store i64 %6653, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_446f75, %struct.Memory** %MEMORY
  %loadMem_446f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6655 = getelementptr inbounds %struct.GPR, %struct.GPR* %6654, i32 0, i32 33
  %6656 = getelementptr inbounds %struct.Reg, %struct.Reg* %6655, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %6656 to i64*
  %6657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6658 = getelementptr inbounds %struct.GPR, %struct.GPR* %6657, i32 0, i32 1
  %6659 = getelementptr inbounds %struct.Reg, %struct.Reg* %6658, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %6659 to i32*
  %6660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6661 = getelementptr inbounds %struct.GPR, %struct.GPR* %6660, i32 0, i32 15
  %6662 = getelementptr inbounds %struct.Reg, %struct.Reg* %6661, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %6662 to i64*
  %6663 = load i64, i64* %RBP.i8
  %6664 = sub i64 %6663, 4
  %6665 = load i32, i32* %EAX.i
  %6666 = zext i32 %6665 to i64
  %6667 = load i64, i64* %PC.i7
  %6668 = add i64 %6667, 3
  store i64 %6668, i64* %PC.i7
  %6669 = inttoptr i64 %6664 to i32*
  store i32 %6665, i32* %6669
  store %struct.Memory* %loadMem_446f78, %struct.Memory** %MEMORY
  br label %block_.L_446f7b

block_.L_446f7b:                                  ; preds = %block_.L_446f6c, %block_.L_446f60
  %loadMem_446f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6671 = getelementptr inbounds %struct.GPR, %struct.GPR* %6670, i32 0, i32 33
  %6672 = getelementptr inbounds %struct.Reg, %struct.Reg* %6671, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %6672 to i64*
  %6673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6674 = getelementptr inbounds %struct.GPR, %struct.GPR* %6673, i32 0, i32 1
  %6675 = getelementptr inbounds %struct.Reg, %struct.Reg* %6674, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %6675 to i64*
  %6676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6677 = getelementptr inbounds %struct.GPR, %struct.GPR* %6676, i32 0, i32 15
  %6678 = getelementptr inbounds %struct.Reg, %struct.Reg* %6677, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %6678 to i64*
  %6679 = load i64, i64* %RBP.i6
  %6680 = sub i64 %6679, 4
  %6681 = load i64, i64* %PC.i5
  %6682 = add i64 %6681, 3
  store i64 %6682, i64* %PC.i5
  %6683 = inttoptr i64 %6680 to i32*
  %6684 = load i32, i32* %6683
  %6685 = zext i32 %6684 to i64
  store i64 %6685, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_446f7b, %struct.Memory** %MEMORY
  %loadMem_446f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6687 = getelementptr inbounds %struct.GPR, %struct.GPR* %6686, i32 0, i32 33
  %6688 = getelementptr inbounds %struct.Reg, %struct.Reg* %6687, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %6688 to i64*
  %6689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6690 = getelementptr inbounds %struct.GPR, %struct.GPR* %6689, i32 0, i32 13
  %6691 = getelementptr inbounds %struct.Reg, %struct.Reg* %6690, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %6691 to i64*
  %6692 = load i64, i64* %RSP.i
  %6693 = load i64, i64* %PC.i4
  %6694 = add i64 %6693, 4
  store i64 %6694, i64* %PC.i4
  %6695 = add i64 32, %6692
  store i64 %6695, i64* %RSP.i, align 8
  %6696 = icmp ult i64 %6695, %6692
  %6697 = icmp ult i64 %6695, 32
  %6698 = or i1 %6696, %6697
  %6699 = zext i1 %6698 to i8
  %6700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6699, i8* %6700, align 1
  %6701 = trunc i64 %6695 to i32
  %6702 = and i32 %6701, 255
  %6703 = call i32 @llvm.ctpop.i32(i32 %6702)
  %6704 = trunc i32 %6703 to i8
  %6705 = and i8 %6704, 1
  %6706 = xor i8 %6705, 1
  %6707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6706, i8* %6707, align 1
  %6708 = xor i64 32, %6692
  %6709 = xor i64 %6708, %6695
  %6710 = lshr i64 %6709, 4
  %6711 = trunc i64 %6710 to i8
  %6712 = and i8 %6711, 1
  %6713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6712, i8* %6713, align 1
  %6714 = icmp eq i64 %6695, 0
  %6715 = zext i1 %6714 to i8
  %6716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6715, i8* %6716, align 1
  %6717 = lshr i64 %6695, 63
  %6718 = trunc i64 %6717 to i8
  %6719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6718, i8* %6719, align 1
  %6720 = lshr i64 %6692, 63
  %6721 = xor i64 %6717, %6720
  %6722 = add i64 %6721, %6717
  %6723 = icmp eq i64 %6722, 2
  %6724 = zext i1 %6723 to i8
  %6725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6724, i8* %6725, align 1
  store %struct.Memory* %loadMem_446f7e, %struct.Memory** %MEMORY
  %loadMem_446f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6727 = getelementptr inbounds %struct.GPR, %struct.GPR* %6726, i32 0, i32 33
  %6728 = getelementptr inbounds %struct.Reg, %struct.Reg* %6727, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6728 to i64*
  %6729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6730 = getelementptr inbounds %struct.GPR, %struct.GPR* %6729, i32 0, i32 15
  %6731 = getelementptr inbounds %struct.Reg, %struct.Reg* %6730, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6731 to i64*
  %6732 = load i64, i64* %PC.i2
  %6733 = add i64 %6732, 1
  store i64 %6733, i64* %PC.i2
  %6734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6735 = load i64, i64* %6734, align 8
  %6736 = add i64 %6735, 8
  %6737 = inttoptr i64 %6735 to i64*
  %6738 = load i64, i64* %6737
  store i64 %6738, i64* %RBP.i3, align 8
  store i64 %6736, i64* %6734, align 8
  store %struct.Memory* %loadMem_446f82, %struct.Memory** %MEMORY
  %loadMem_446f83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6740 = getelementptr inbounds %struct.GPR, %struct.GPR* %6739, i32 0, i32 33
  %6741 = getelementptr inbounds %struct.Reg, %struct.Reg* %6740, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6741 to i64*
  %6742 = load i64, i64* %PC.i1
  %6743 = add i64 %6742, 1
  store i64 %6743, i64* %PC.i1
  %6744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6746 = load i64, i64* %6745, align 8
  %6747 = inttoptr i64 %6746 to i64*
  %6748 = load i64, i64* %6747
  store i64 %6748, i64* %6744, align 8
  %6749 = add i64 %6746, 8
  store i64 %6749, i64* %6745, align 8
  store %struct.Memory* %loadMem_446f83, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_446f83
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

define %struct.Memory* @routine_leaq_MINUS0x14__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x6__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 6, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__0x68__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__0x70__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__0x78__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 120
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__0x80__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 128
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__0x88__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__0x0__0xc__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i16*
  store i16 0, i16* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rdi____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i64*
  %13 = load i64, i64* %12
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.read_i32(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_4469b4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x5__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 5, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_0x663038___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0x663038_type* @G_0x663038 to i32*)
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

define %struct.Memory* @routine_je_.L_4469e0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0x66303c___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0x66303c_type* @G_0x66303c to i32*)
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

define %struct.Memory* @routine_movq___rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = inttoptr i64 %12 to i64*
  %16 = load i64, i64* %15
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x8___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 8, %9
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__rax___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_446a05(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_446a2b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_446a37(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x7__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 7, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__eax___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 1, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_0x8__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 2, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RSI, align 8
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

define %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmovnel__ecx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %17 = load i8, i8* %16, align 1
  %18 = icmp eq i8 %17, 0
  %19 = load i64, i64* %RSI, align 8
  %20 = select i1 %18, i64 %13, i64 %19
  %21 = and i64 %20, 4294967295
  store i64 %21, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__sil___dil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %SIL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  store i8 %14, i8* %DIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dil__0x60__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 96
  %15 = load i8, i8* %DIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 1, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RSI, align 8
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

define %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %17 = load i8, i8* %16, align 1
  %18 = icmp eq i8 %17, 0
  %19 = load i64, i64* %RAX, align 8
  %20 = select i1 %18, i64 %13, i64 %19
  %21 = and i64 %20, 4294967295
  store i64 %21, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al___dil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  store i8 %14, i8* %DIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dil__0x61__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 97
  %15 = load i8, i8* %DIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rdx____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i64*
  %16 = load i64, i64* %15
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xc___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 12, %9
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 12
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
  %25 = xor i64 12, %9
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

define %struct.Memory* @routine_movq__rdx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.read_i16(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_446a9b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x10___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 16, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 16
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
  %25 = xor i64 16, %9
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

define %struct.Memory* @routine_jne_.L_446ac0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x14___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 20, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 20
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
  %25 = xor i64 20, %9
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

define %struct.Memory* @routine_jne_.L_446ae5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x18___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 24, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 24
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
  %25 = xor i64 24, %9
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

define %struct.Memory* @routine_jne_.L_446b0a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x1c___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 28, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 28
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
  %25 = xor i64 28, %9
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

define %struct.Memory* @routine_jne_.L_446b2f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x20___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 32, %9
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_jne_.L_446b54(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x24___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 36, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 36
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
  %25 = xor i64 36, %9
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

define %struct.Memory* @routine_jne_.L_446b79(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x28___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 40, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 40
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
  %25 = xor i64 40, %9
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

define %struct.Memory* @routine_jne_.L_446b9e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x2c___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 44, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 44
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
  %25 = xor i64 44, %9
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

define %struct.Memory* @routine_jne_.L_446bc3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb_0x60__rax____cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x30___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 48, %9
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_movsbl__cl___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RSI = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %CL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %14 to i32
  %18 = shl i32 %17, 24
  %19 = ashr exact i32 %18, 24
  %20 = zext i32 %19 to i64
  store i64 %20, i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.read_offset(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_446bf2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x40___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 64, %9
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_jne_.L_446c21(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x50___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 80, %9
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_jne_.L_446c50(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movzwl_0xc__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i16*
  %17 = load i16, i16* %16
  %18 = zext i16 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_446c66(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__0x68__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 104
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = trunc i64 %9 to i32
  %14 = and i32 %13, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = icmp eq i64 %9, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i64 %9, 63
  %25 = trunc i64 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %9, 63
  %28 = xor i64 %24, %27
  %29 = add i64 %28, %27
  %30 = icmp eq i64 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_446c9a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x3__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 3, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__0x0__MINUS0x16__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 22
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i16*
  store i16 0, i16* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzwl_MINUS0x16__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 22
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i16*
  %17 = load i16, i16* %16
  %18 = zext i16 %17 to i64
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

define %struct.Memory* @routine_movzwl_0xc__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i16*
  %17 = load i16, i16* %16
  %18 = zext i16 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__edx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %EDX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EDX
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

define %struct.Memory* @routine_jge_.L_446cdb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzwl_MINUS0x16__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 22
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i16*
  %17 = load i16, i16* %16
  %18 = zext i16 %17 to i64
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

define %struct.Memory* @routine_movq__0x0____rax__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  store i64 0, i64* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw_MINUS0x16__rbp____ax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 22
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i16*
  %17 = load i16, i16* %16
  store i16 %17, i16* %AX, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addw__0x1___ax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = load i16, i16* %AX
  %10 = zext i16 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = add i16 1, %9
  store i16 %13, i16* %AX, align 2
  %14 = icmp ult i16 %13, %9
  %15 = icmp ult i16 %13, 1
  %16 = or i1 %14, %15
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i16 %13, 255
  %20 = zext i16 %19 to i32
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i64 1, %10
  %27 = trunc i64 %26 to i16
  %28 = xor i16 %27, %13
  %29 = lshr i16 %28, 4
  %30 = trunc i16 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i16 %13, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i16 %13, 15
  %37 = trunc i16 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i16 %9, 15
  %40 = xor i16 %36, %39
  %41 = add i16 %40, %36
  %42 = icmp eq i16 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__ax__MINUS0x16__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 22
  %14 = load i16, i16* %AX
  %15 = zext i16 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i16*
  store i16 %14, i16* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_446ca0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__rax__0x70__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 112
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_446d0f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__0x78__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 120
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_446d43(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__0x80__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 128
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_446d7a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__0x88__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_446db1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_446f60(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x24__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.indexfile_position(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_446df8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x68__rdi____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rdi__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDI
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

define %struct.Memory* @routine_jne_.L_446e35(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x68__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq___rcx__rdx_8____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
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

define %struct.Memory* @routine_movl_0x18__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i64*
  %13 = load i64, i64* %12
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.fread_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x18__rcx____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_446e7c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x2___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 1
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

define %struct.Memory* @routine_jne_.L_446eae(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 120
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_446ee0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x80__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 128
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_446f15(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x88__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_446f4a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_446f4f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_446db7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_446f7b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.SSIClose(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
