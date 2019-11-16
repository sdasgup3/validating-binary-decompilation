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
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6cb908_type = type <{ [8 x i8] }>
%G_0x6cb910_type = type <{ [8 x i8] }>
%G_0x6d12b0_type = type <{ [8 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
%G_0x710a50_type = type <{ [8 x i8] }>
%G_0x722b50_type = type <{ [8 x i8] }>
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
@G_0x6cb8f8 = global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = global %G_0x6cb900_type zeroinitializer
@G_0x6cb908 = global %G_0x6cb908_type zeroinitializer
@G_0x6cb910 = global %G_0x6cb910_type zeroinitializer
@G_0x6d12b0 = global %G_0x6d12b0_type zeroinitializer
@G_0x70fcf0 = global %G_0x70fcf0_type zeroinitializer
@G_0x710a50 = global %G_0x710a50_type zeroinitializer
@G_0x722b50 = global %G_0x722b50_type zeroinitializer

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

declare %struct.Memory* @sub_44bd60.alloc_storable_picture(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_42c7a0.copy_params(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_427a20.code_a_picture(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_42c8d0.find_distortion(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @frame_picture(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_42a450 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_42a450, %struct.Memory** %MEMORY
  %loadMem_42a451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i473 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i473
  %27 = load i64, i64* %PC.i472
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i472
  store i64 %26, i64* %RBP.i474, align 8
  store %struct.Memory* %loadMem_42a451, %struct.Memory** %MEMORY
  %loadMem_42a454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i471 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i471
  %36 = load i64, i64* %PC.i470
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i470
  %38 = sub i64 %35, 16
  store i64 %38, i64* %RSP.i471, align 8
  %39 = icmp ult i64 %35, 16
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
  %49 = xor i64 16, %35
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
  store %struct.Memory* %loadMem_42a454, %struct.Memory** %MEMORY
  %loadMem_42a458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i468 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i469
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i468
  %79 = load i64, i64* %PC.i467
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i467
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_42a458, %struct.Memory** %MEMORY
  %loadMem_42a45c = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %ESI.i465 = bitcast %union.anon* %87 to i32*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i466
  %92 = sub i64 %91, 12
  %93 = load i32, i32* %ESI.i465
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %PC.i464
  %96 = add i64 %95, 3
  store i64 %96, i64* %PC.i464
  %97 = inttoptr i64 %92 to i32*
  store i32 %93, i32* %97
  store %struct.Memory* %loadMem_42a45c, %struct.Memory** %MEMORY
  %loadMem_42a45f = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 11
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %RDI.i463 = bitcast %union.anon* %103 to i64*
  %104 = load i64, i64* %PC.i462
  %105 = add i64 %104, 8
  store i64 %105, i64* %PC.i462
  %106 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %106, i64* %RDI.i463, align 8
  store %struct.Memory* %loadMem_42a45f, %struct.Memory** %MEMORY
  %loadMem_42a467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 33
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 11
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %RDI.i461 = bitcast %union.anon* %112 to i64*
  %113 = load i64, i64* %RDI.i461
  %114 = add i64 %113, 28
  %115 = load i64, i64* %PC.i460
  %116 = add i64 %115, 7
  store i64 %116, i64* %PC.i460
  %117 = inttoptr i64 %114 to i32*
  store i32 0, i32* %117
  store %struct.Memory* %loadMem_42a467, %struct.Memory** %MEMORY
  %loadMem_42a46e = load %struct.Memory*, %struct.Memory** %MEMORY
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 33
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %120 to i64*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 11
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %RDI.i459 = bitcast %union.anon* %123 to i64*
  %124 = load i64, i64* %PC.i458
  %125 = add i64 %124, 8
  store i64 %125, i64* %PC.i458
  %126 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %126, i64* %RDI.i459, align 8
  store %struct.Memory* %loadMem_42a46e, %struct.Memory** %MEMORY
  %loadMem_42a476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 33
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %129 to i64*
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 9
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %RSI.i456 = bitcast %union.anon* %132 to i64*
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 11
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %RDI.i457 = bitcast %union.anon* %135 to i64*
  %136 = load i64, i64* %RDI.i457
  %137 = add i64 %136, 72488
  %138 = load i64, i64* %PC.i455
  %139 = add i64 %138, 6
  store i64 %139, i64* %PC.i455
  %140 = inttoptr i64 %137 to i32*
  %141 = load i32, i32* %140
  %142 = zext i32 %141 to i64
  store i64 %142, i64* %RSI.i456, align 8
  store %struct.Memory* %loadMem_42a476, %struct.Memory** %MEMORY
  %loadMem_42a47c = load %struct.Memory*, %struct.Memory** %MEMORY
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 33
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %145 to i64*
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 11
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %RDI.i454 = bitcast %union.anon* %148 to i64*
  %149 = load i64, i64* %PC.i453
  %150 = add i64 %149, 8
  store i64 %150, i64* %PC.i453
  %151 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %151, i64* %RDI.i454, align 8
  store %struct.Memory* %loadMem_42a47c, %struct.Memory** %MEMORY
  %loadMem_42a484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 33
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %154 to i64*
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 9
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %157 to i32*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 11
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %RDI.i452 = bitcast %union.anon* %160 to i64*
  %161 = load i64, i64* %RDI.i452
  %162 = add i64 %161, 72484
  %163 = load i32, i32* %ESI.i
  %164 = zext i32 %163 to i64
  %165 = load i64, i64* %PC.i451
  %166 = add i64 %165, 6
  store i64 %166, i64* %PC.i451
  %167 = inttoptr i64 %162 to i32*
  store i32 %163, i32* %167
  store %struct.Memory* %loadMem_42a484, %struct.Memory** %MEMORY
  %loadMem_42a48a = load %struct.Memory*, %struct.Memory** %MEMORY
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 33
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %170 to i64*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 15
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %RBP.i450 = bitcast %union.anon* %173 to i64*
  %174 = load i64, i64* %RBP.i450
  %175 = sub i64 %174, 12
  %176 = load i64, i64* %PC.i449
  %177 = add i64 %176, 4
  store i64 %177, i64* %PC.i449
  %178 = inttoptr i64 %175 to i32*
  %179 = load i32, i32* %178
  %180 = sub i32 %179, 2
  %181 = icmp ult i32 %179, 2
  %182 = zext i1 %181 to i8
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %182, i8* %183, align 1
  %184 = and i32 %180, 255
  %185 = call i32 @llvm.ctpop.i32(i32 %184)
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  %188 = xor i8 %187, 1
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %188, i8* %189, align 1
  %190 = xor i32 %179, 2
  %191 = xor i32 %190, %180
  %192 = lshr i32 %191, 4
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %194, i8* %195, align 1
  %196 = icmp eq i32 %180, 0
  %197 = zext i1 %196 to i8
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %197, i8* %198, align 1
  %199 = lshr i32 %180, 31
  %200 = trunc i32 %199 to i8
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %200, i8* %201, align 1
  %202 = lshr i32 %179, 31
  %203 = xor i32 %199, %202
  %204 = add i32 %203, %202
  %205 = icmp eq i32 %204, 2
  %206 = zext i1 %205 to i8
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %206, i8* %207, align 1
  store %struct.Memory* %loadMem_42a48a, %struct.Memory** %MEMORY
  %loadMem_42a48e = load %struct.Memory*, %struct.Memory** %MEMORY
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %209 = getelementptr inbounds %struct.GPR, %struct.GPR* %208, i32 0, i32 33
  %210 = getelementptr inbounds %struct.Reg, %struct.Reg* %209, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %210 to i64*
  %211 = load i64, i64* %PC.i448
  %212 = add i64 %211, 344
  %213 = load i64, i64* %PC.i448
  %214 = add i64 %213, 6
  %215 = load i64, i64* %PC.i448
  %216 = add i64 %215, 6
  store i64 %216, i64* %PC.i448
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %218 = load i8, i8* %217, align 1
  %219 = icmp eq i8 %218, 0
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %BRANCH_TAKEN, align 1
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %222 = select i1 %219, i64 %212, i64 %214
  store i64 %222, i64* %221, align 8
  store %struct.Memory* %loadMem_42a48e, %struct.Memory** %MEMORY
  %loadBr_42a48e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a48e = icmp eq i8 %loadBr_42a48e, 1
  br i1 %cmpBr_42a48e, label %block_.L_42a5e6, label %block_42a494

block_42a494:                                     ; preds = %entry
  %loadMem_42a494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 33
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %225 to i64*
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %RAX.i447 = bitcast %union.anon* %228 to i64*
  %229 = load i64, i64* %PC.i446
  %230 = add i64 %229, 8
  store i64 %230, i64* %PC.i446
  %231 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %231, i64* %RAX.i447, align 8
  store %struct.Memory* %loadMem_42a494, %struct.Memory** %MEMORY
  %loadMem_42a49c = load %struct.Memory*, %struct.Memory** %MEMORY
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 33
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %234 to i64*
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %236 = getelementptr inbounds %struct.GPR, %struct.GPR* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.Reg, %struct.Reg* %236, i32 0, i32 0
  %RAX.i444 = bitcast %union.anon* %237 to i64*
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 11
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %RDI.i445 = bitcast %union.anon* %240 to i64*
  %241 = load i64, i64* %RAX.i444
  %242 = add i64 %241, 28
  %243 = load i64, i64* %PC.i443
  %244 = add i64 %243, 3
  store i64 %244, i64* %PC.i443
  %245 = inttoptr i64 %242 to i32*
  %246 = load i32, i32* %245
  %247 = zext i32 %246 to i64
  store i64 %247, i64* %RDI.i445, align 8
  store %struct.Memory* %loadMem_42a49c, %struct.Memory** %MEMORY
  %loadMem_42a49f = load %struct.Memory*, %struct.Memory** %MEMORY
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 33
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %250 to i64*
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %RAX.i442 = bitcast %union.anon* %253 to i64*
  %254 = load i64, i64* %PC.i441
  %255 = add i64 %254, 8
  store i64 %255, i64* %PC.i441
  %256 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %256, i64* %RAX.i442, align 8
  store %struct.Memory* %loadMem_42a49f, %struct.Memory** %MEMORY
  %loadMem_42a4a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %258 = getelementptr inbounds %struct.GPR, %struct.GPR* %257, i32 0, i32 33
  %259 = getelementptr inbounds %struct.Reg, %struct.Reg* %258, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %259 to i64*
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %261 = getelementptr inbounds %struct.GPR, %struct.GPR* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.Reg, %struct.Reg* %261, i32 0, i32 0
  %RAX.i439 = bitcast %union.anon* %262 to i64*
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 9
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %RSI.i440 = bitcast %union.anon* %265 to i64*
  %266 = load i64, i64* %RAX.i439
  %267 = add i64 %266, 52
  %268 = load i64, i64* %PC.i438
  %269 = add i64 %268, 3
  store i64 %269, i64* %PC.i438
  %270 = inttoptr i64 %267 to i32*
  %271 = load i32, i32* %270
  %272 = zext i32 %271 to i64
  store i64 %272, i64* %RSI.i440, align 8
  store %struct.Memory* %loadMem_42a4a7, %struct.Memory** %MEMORY
  %loadMem_42a4aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 33
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %275 to i64*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %RAX.i437 = bitcast %union.anon* %278 to i64*
  %279 = load i64, i64* %PC.i436
  %280 = add i64 %279, 8
  store i64 %280, i64* %PC.i436
  %281 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %281, i64* %RAX.i437, align 8
  store %struct.Memory* %loadMem_42a4aa, %struct.Memory** %MEMORY
  %loadMem_42a4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 33
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %284 to i64*
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %RAX.i434 = bitcast %union.anon* %287 to i64*
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %289 = getelementptr inbounds %struct.GPR, %struct.GPR* %288, i32 0, i32 7
  %290 = getelementptr inbounds %struct.Reg, %struct.Reg* %289, i32 0, i32 0
  %RDX.i435 = bitcast %union.anon* %290 to i64*
  %291 = load i64, i64* %RAX.i434
  %292 = add i64 %291, 60
  %293 = load i64, i64* %PC.i433
  %294 = add i64 %293, 3
  store i64 %294, i64* %PC.i433
  %295 = inttoptr i64 %292 to i32*
  %296 = load i32, i32* %295
  %297 = zext i32 %296 to i64
  store i64 %297, i64* %RDX.i435, align 8
  store %struct.Memory* %loadMem_42a4b2, %struct.Memory** %MEMORY
  %loadMem_42a4b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 33
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %300 to i64*
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %RAX.i432 = bitcast %union.anon* %303 to i64*
  %304 = load i64, i64* %PC.i431
  %305 = add i64 %304, 8
  store i64 %305, i64* %PC.i431
  %306 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %306, i64* %RAX.i432, align 8
  store %struct.Memory* %loadMem_42a4b5, %struct.Memory** %MEMORY
  %loadMem_42a4bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 33
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %309 to i64*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %RAX.i429 = bitcast %union.anon* %312 to i64*
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 5
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %RCX.i430 = bitcast %union.anon* %315 to i64*
  %316 = load i64, i64* %RAX.i429
  %317 = add i64 %316, 56
  %318 = load i64, i64* %PC.i428
  %319 = add i64 %318, 3
  store i64 %319, i64* %PC.i428
  %320 = inttoptr i64 %317 to i32*
  %321 = load i32, i32* %320
  %322 = zext i32 %321 to i64
  store i64 %322, i64* %RCX.i430, align 8
  store %struct.Memory* %loadMem_42a4bd, %struct.Memory** %MEMORY
  %loadMem_42a4c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %324 = getelementptr inbounds %struct.GPR, %struct.GPR* %323, i32 0, i32 33
  %325 = getelementptr inbounds %struct.Reg, %struct.Reg* %324, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %325 to i64*
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %RAX.i427 = bitcast %union.anon* %328 to i64*
  %329 = load i64, i64* %PC.i426
  %330 = add i64 %329, 8
  store i64 %330, i64* %PC.i426
  %331 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %331, i64* %RAX.i427, align 8
  store %struct.Memory* %loadMem_42a4c0, %struct.Memory** %MEMORY
  %loadMem_42a4c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 33
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %334 to i64*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 17
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %R8D.i424 = bitcast %union.anon* %337 to i32*
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %RAX.i425 = bitcast %union.anon* %340 to i64*
  %341 = bitcast i32* %R8D.i424 to i64*
  %342 = load i64, i64* %RAX.i425
  %343 = add i64 %342, 64
  %344 = load i64, i64* %PC.i423
  %345 = add i64 %344, 4
  store i64 %345, i64* %PC.i423
  %346 = inttoptr i64 %343 to i32*
  %347 = load i32, i32* %346
  %348 = zext i32 %347 to i64
  store i64 %348, i64* %341, align 8
  store %struct.Memory* %loadMem_42a4c8, %struct.Memory** %MEMORY
  %loadMem1_42a4cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 33
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %351 to i64*
  %352 = load i64, i64* %PC.i422
  %353 = add i64 %352, 137364
  %354 = load i64, i64* %PC.i422
  %355 = add i64 %354, 5
  %356 = load i64, i64* %PC.i422
  %357 = add i64 %356, 5
  store i64 %357, i64* %PC.i422
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = add i64 %359, -8
  %361 = inttoptr i64 %360 to i64*
  store i64 %355, i64* %361
  store i64 %360, i64* %358, align 8
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %353, i64* %362, align 8
  store %struct.Memory* %loadMem1_42a4cc, %struct.Memory** %MEMORY
  %loadMem2_42a4cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a4cc = load i64, i64* %3
  %call2_42a4cc = call %struct.Memory* @sub_44bd60.alloc_storable_picture(%struct.State* %0, i64 %loadPC_42a4cc, %struct.Memory* %loadMem2_42a4cc)
  store %struct.Memory* %call2_42a4cc, %struct.Memory** %MEMORY
  %loadMem_42a4d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 33
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %365 to i64*
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %367 = getelementptr inbounds %struct.GPR, %struct.GPR* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.Reg, %struct.Reg* %367, i32 0, i32 0
  %RAX.i421 = bitcast %union.anon* %368 to i64*
  %369 = load i64, i64* %RAX.i421
  %370 = load i64, i64* %PC.i420
  %371 = add i64 %370, 8
  store i64 %371, i64* %PC.i420
  store i64 %369, i64* bitcast (%G_0x722b50_type* @G_0x722b50 to i64*)
  store %struct.Memory* %loadMem_42a4d1, %struct.Memory** %MEMORY
  %loadMem_42a4d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 33
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %374 to i64*
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %377 to i64*
  %378 = load i64, i64* %PC.i418
  %379 = add i64 %378, 8
  store i64 %379, i64* %PC.i418
  %380 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %380, i64* %RAX.i419, align 8
  store %struct.Memory* %loadMem_42a4d9, %struct.Memory** %MEMORY
  %loadMem_42a4e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 33
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %383 to i64*
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %RAX.i416 = bitcast %union.anon* %386 to i64*
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 5
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %RCX.i417 = bitcast %union.anon* %389 to i64*
  %390 = load i64, i64* %RAX.i416
  %391 = add i64 %390, 72456
  %392 = load i64, i64* %PC.i415
  %393 = add i64 %392, 6
  store i64 %393, i64* %PC.i415
  %394 = inttoptr i64 %391 to i32*
  %395 = load i32, i32* %394
  %396 = zext i32 %395 to i64
  store i64 %396, i64* %RCX.i417, align 8
  store %struct.Memory* %loadMem_42a4e1, %struct.Memory** %MEMORY
  %loadMem_42a4e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 33
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %399 to i64*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %RAX.i414 = bitcast %union.anon* %402 to i64*
  %403 = load i64, i64* %PC.i413
  %404 = add i64 %403, 8
  store i64 %404, i64* %PC.i413
  %405 = load i64, i64* bitcast (%G_0x722b50_type* @G_0x722b50 to i64*)
  store i64 %405, i64* %RAX.i414, align 8
  store %struct.Memory* %loadMem_42a4e7, %struct.Memory** %MEMORY
  %loadMem_42a4ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 33
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %408 to i64*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 5
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %ECX.i411 = bitcast %union.anon* %411 to i32*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 1
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %414 to i64*
  %415 = load i64, i64* %RAX.i412
  %416 = add i64 %415, 4
  %417 = load i32, i32* %ECX.i411
  %418 = zext i32 %417 to i64
  %419 = load i64, i64* %PC.i410
  %420 = add i64 %419, 3
  store i64 %420, i64* %PC.i410
  %421 = inttoptr i64 %416 to i32*
  store i32 %417, i32* %421
  store %struct.Memory* %loadMem_42a4ef, %struct.Memory** %MEMORY
  %loadMem_42a4f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 33
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %424 to i64*
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %RAX.i409 = bitcast %union.anon* %427 to i64*
  %428 = load i64, i64* %PC.i408
  %429 = add i64 %428, 8
  store i64 %429, i64* %PC.i408
  %430 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %430, i64* %RAX.i409, align 8
  store %struct.Memory* %loadMem_42a4f2, %struct.Memory** %MEMORY
  %loadMem_42a4fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 33
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %433 to i64*
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 5
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %ECX.i406 = bitcast %union.anon* %436 to i32*
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 1
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %RAX.i407 = bitcast %union.anon* %439 to i64*
  %440 = load i64, i64* %RAX.i407
  %441 = add i64 %440, 72460
  %442 = load i32, i32* %ECX.i406
  %443 = zext i32 %442 to i64
  %444 = load i64, i64* %PC.i405
  %445 = add i64 %444, 6
  store i64 %445, i64* %PC.i405
  %446 = inttoptr i64 %441 to i32*
  store i32 %442, i32* %446
  store %struct.Memory* %loadMem_42a4fa, %struct.Memory** %MEMORY
  %loadMem_42a500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %448 = getelementptr inbounds %struct.GPR, %struct.GPR* %447, i32 0, i32 33
  %449 = getelementptr inbounds %struct.Reg, %struct.Reg* %448, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %449 to i64*
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 1
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %RAX.i404 = bitcast %union.anon* %452 to i64*
  %453 = load i64, i64* %PC.i403
  %454 = add i64 %453, 8
  store i64 %454, i64* %PC.i403
  %455 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %455, i64* %RAX.i404, align 8
  store %struct.Memory* %loadMem_42a500, %struct.Memory** %MEMORY
  %loadMem_42a508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 33
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %458 to i64*
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %RAX.i401 = bitcast %union.anon* %461 to i64*
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 5
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %RCX.i402 = bitcast %union.anon* %464 to i64*
  %465 = load i64, i64* %RAX.i401
  %466 = add i64 %465, 72448
  %467 = load i64, i64* %PC.i400
  %468 = add i64 %467, 6
  store i64 %468, i64* %PC.i400
  %469 = inttoptr i64 %466 to i32*
  %470 = load i32, i32* %469
  %471 = zext i32 %470 to i64
  store i64 %471, i64* %RCX.i402, align 8
  store %struct.Memory* %loadMem_42a508, %struct.Memory** %MEMORY
  %loadMem_42a50e = load %struct.Memory*, %struct.Memory** %MEMORY
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 33
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %474 to i64*
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %RAX.i399 = bitcast %union.anon* %477 to i64*
  %478 = load i64, i64* %PC.i398
  %479 = add i64 %478, 8
  store i64 %479, i64* %PC.i398
  %480 = load i64, i64* bitcast (%G_0x722b50_type* @G_0x722b50 to i64*)
  store i64 %480, i64* %RAX.i399, align 8
  store %struct.Memory* %loadMem_42a50e, %struct.Memory** %MEMORY
  %loadMem_42a516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %482 = getelementptr inbounds %struct.GPR, %struct.GPR* %481, i32 0, i32 33
  %483 = getelementptr inbounds %struct.Reg, %struct.Reg* %482, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %483 to i64*
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %485 = getelementptr inbounds %struct.GPR, %struct.GPR* %484, i32 0, i32 5
  %486 = getelementptr inbounds %struct.Reg, %struct.Reg* %485, i32 0, i32 0
  %ECX.i396 = bitcast %union.anon* %486 to i32*
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %488 = getelementptr inbounds %struct.GPR, %struct.GPR* %487, i32 0, i32 1
  %489 = getelementptr inbounds %struct.Reg, %struct.Reg* %488, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %489 to i64*
  %490 = load i64, i64* %RAX.i397
  %491 = add i64 %490, 8
  %492 = load i32, i32* %ECX.i396
  %493 = zext i32 %492 to i64
  %494 = load i64, i64* %PC.i395
  %495 = add i64 %494, 3
  store i64 %495, i64* %PC.i395
  %496 = inttoptr i64 %491 to i32*
  store i32 %492, i32* %496
  store %struct.Memory* %loadMem_42a516, %struct.Memory** %MEMORY
  %loadMem_42a519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 33
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %499 to i64*
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %501 = getelementptr inbounds %struct.GPR, %struct.GPR* %500, i32 0, i32 1
  %502 = getelementptr inbounds %struct.Reg, %struct.Reg* %501, i32 0, i32 0
  %RAX.i394 = bitcast %union.anon* %502 to i64*
  %503 = load i64, i64* %PC.i393
  %504 = add i64 %503, 8
  store i64 %504, i64* %PC.i393
  %505 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %505, i64* %RAX.i394, align 8
  store %struct.Memory* %loadMem_42a519, %struct.Memory** %MEMORY
  %loadMem_42a521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 33
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %508 to i64*
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 1
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %RAX.i391 = bitcast %union.anon* %511 to i64*
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 5
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %RCX.i392 = bitcast %union.anon* %514 to i64*
  %515 = load i64, i64* %RAX.i391
  %516 = add i64 %515, 72452
  %517 = load i64, i64* %PC.i390
  %518 = add i64 %517, 6
  store i64 %518, i64* %PC.i390
  %519 = inttoptr i64 %516 to i32*
  %520 = load i32, i32* %519
  %521 = zext i32 %520 to i64
  store i64 %521, i64* %RCX.i392, align 8
  store %struct.Memory* %loadMem_42a521, %struct.Memory** %MEMORY
  %loadMem_42a527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 33
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %524 to i64*
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 1
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %RAX.i389 = bitcast %union.anon* %527 to i64*
  %528 = load i64, i64* %PC.i388
  %529 = add i64 %528, 8
  store i64 %529, i64* %PC.i388
  %530 = load i64, i64* bitcast (%G_0x722b50_type* @G_0x722b50 to i64*)
  store i64 %530, i64* %RAX.i389, align 8
  store %struct.Memory* %loadMem_42a527, %struct.Memory** %MEMORY
  %loadMem_42a52f = load %struct.Memory*, %struct.Memory** %MEMORY
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 33
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %533 to i64*
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.GPR, %struct.GPR* %534, i32 0, i32 5
  %536 = getelementptr inbounds %struct.Reg, %struct.Reg* %535, i32 0, i32 0
  %ECX.i386 = bitcast %union.anon* %536 to i32*
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 1
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %539 to i64*
  %540 = load i64, i64* %RAX.i387
  %541 = add i64 %540, 12
  %542 = load i32, i32* %ECX.i386
  %543 = zext i32 %542 to i64
  %544 = load i64, i64* %PC.i385
  %545 = add i64 %544, 3
  store i64 %545, i64* %PC.i385
  %546 = inttoptr i64 %541 to i32*
  store i32 %542, i32* %546
  store %struct.Memory* %loadMem_42a52f, %struct.Memory** %MEMORY
  %loadMem_42a532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 33
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %549 to i64*
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 1
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %RAX.i384 = bitcast %union.anon* %552 to i64*
  %553 = load i64, i64* %PC.i383
  %554 = add i64 %553, 8
  store i64 %554, i64* %PC.i383
  %555 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %555, i64* %RAX.i384, align 8
  store %struct.Memory* %loadMem_42a532, %struct.Memory** %MEMORY
  %loadMem_42a53a = load %struct.Memory*, %struct.Memory** %MEMORY
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 33
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %558 to i64*
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 1
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %RAX.i381 = bitcast %union.anon* %561 to i64*
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %563 = getelementptr inbounds %struct.GPR, %struct.GPR* %562, i32 0, i32 5
  %564 = getelementptr inbounds %struct.Reg, %struct.Reg* %563, i32 0, i32 0
  %RCX.i382 = bitcast %union.anon* %564 to i64*
  %565 = load i64, i64* %RAX.i381
  %566 = add i64 %565, 72456
  %567 = load i64, i64* %PC.i380
  %568 = add i64 %567, 6
  store i64 %568, i64* %PC.i380
  %569 = inttoptr i64 %566 to i32*
  %570 = load i32, i32* %569
  %571 = zext i32 %570 to i64
  store i64 %571, i64* %RCX.i382, align 8
  store %struct.Memory* %loadMem_42a53a, %struct.Memory** %MEMORY
  %loadMem_42a540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 33
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %574 to i64*
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 1
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %RAX.i379 = bitcast %union.anon* %577 to i64*
  %578 = load i64, i64* %PC.i378
  %579 = add i64 %578, 8
  store i64 %579, i64* %PC.i378
  %580 = load i64, i64* bitcast (%G_0x722b50_type* @G_0x722b50 to i64*)
  store i64 %580, i64* %RAX.i379, align 8
  store %struct.Memory* %loadMem_42a540, %struct.Memory** %MEMORY
  %loadMem_42a548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 33
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %583 to i64*
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 5
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %ECX.i376 = bitcast %union.anon* %586 to i32*
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 1
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %589 to i64*
  %590 = load i64, i64* %RAX.i377
  %591 = add i64 %590, 16
  %592 = load i32, i32* %ECX.i376
  %593 = zext i32 %592 to i64
  %594 = load i64, i64* %PC.i375
  %595 = add i64 %594, 3
  store i64 %595, i64* %PC.i375
  %596 = inttoptr i64 %591 to i32*
  store i32 %592, i32* %596
  store %struct.Memory* %loadMem_42a548, %struct.Memory** %MEMORY
  %loadMem_42a54b = load %struct.Memory*, %struct.Memory** %MEMORY
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 33
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %599 to i64*
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 1
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %602 to i64*
  %603 = load i64, i64* %PC.i373
  %604 = add i64 %603, 8
  store i64 %604, i64* %PC.i373
  %605 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %605, i64* %RAX.i374, align 8
  store %struct.Memory* %loadMem_42a54b, %struct.Memory** %MEMORY
  %loadMem_42a553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 33
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %608 to i64*
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 1
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %611 to i64*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 5
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %RCX.i372 = bitcast %union.anon* %614 to i64*
  %615 = load i64, i64* %RAX.i371
  %616 = add i64 %615, 72464
  %617 = load i64, i64* %PC.i370
  %618 = add i64 %617, 6
  store i64 %618, i64* %PC.i370
  %619 = inttoptr i64 %616 to i32*
  %620 = load i32, i32* %619
  %621 = zext i32 %620 to i64
  store i64 %621, i64* %RCX.i372, align 8
  store %struct.Memory* %loadMem_42a553, %struct.Memory** %MEMORY
  %loadMem_42a559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 33
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %624 to i64*
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 1
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %627 to i64*
  %628 = load i64, i64* %PC.i368
  %629 = add i64 %628, 8
  store i64 %629, i64* %PC.i368
  %630 = load i64, i64* bitcast (%G_0x722b50_type* @G_0x722b50 to i64*)
  store i64 %630, i64* %RAX.i369, align 8
  store %struct.Memory* %loadMem_42a559, %struct.Memory** %MEMORY
  %loadMem_42a561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 33
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %633 to i64*
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 5
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %ECX.i366 = bitcast %union.anon* %636 to i32*
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 1
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %RAX.i367 = bitcast %union.anon* %639 to i64*
  %640 = load i64, i64* %RAX.i367
  %641 = add i64 %640, 6364
  %642 = load i32, i32* %ECX.i366
  %643 = zext i32 %642 to i64
  %644 = load i64, i64* %PC.i365
  %645 = add i64 %644, 6
  store i64 %645, i64* %PC.i365
  %646 = inttoptr i64 %641 to i32*
  store i32 %642, i32* %646
  store %struct.Memory* %loadMem_42a561, %struct.Memory** %MEMORY
  %loadMem_42a567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 33
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %649 to i64*
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 1
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %RAX.i364 = bitcast %union.anon* %652 to i64*
  %653 = load i64, i64* %PC.i363
  %654 = add i64 %653, 8
  store i64 %654, i64* %PC.i363
  %655 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %655, i64* %RAX.i364, align 8
  store %struct.Memory* %loadMem_42a567, %struct.Memory** %MEMORY
  %loadMem_42a56f = load %struct.Memory*, %struct.Memory** %MEMORY
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 33
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %658 to i64*
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 1
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %RAX.i361 = bitcast %union.anon* %661 to i64*
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 5
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %RCX.i362 = bitcast %union.anon* %664 to i64*
  %665 = load i64, i64* %RAX.i361
  %666 = add i64 %665, 72464
  %667 = load i64, i64* %PC.i360
  %668 = add i64 %667, 6
  store i64 %668, i64* %PC.i360
  %669 = inttoptr i64 %666 to i32*
  %670 = load i32, i32* %669
  %671 = zext i32 %670 to i64
  store i64 %671, i64* %RCX.i362, align 8
  store %struct.Memory* %loadMem_42a56f, %struct.Memory** %MEMORY
  %loadMem_42a575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 33
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %674 to i64*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 1
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %RAX.i359 = bitcast %union.anon* %677 to i64*
  %678 = load i64, i64* %PC.i358
  %679 = add i64 %678, 8
  store i64 %679, i64* %PC.i358
  %680 = load i64, i64* bitcast (%G_0x722b50_type* @G_0x722b50 to i64*)
  store i64 %680, i64* %RAX.i359, align 8
  store %struct.Memory* %loadMem_42a575, %struct.Memory** %MEMORY
  %loadMem_42a57d = load %struct.Memory*, %struct.Memory** %MEMORY
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %682 = getelementptr inbounds %struct.GPR, %struct.GPR* %681, i32 0, i32 33
  %683 = getelementptr inbounds %struct.Reg, %struct.Reg* %682, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %683 to i64*
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 5
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %ECX.i356 = bitcast %union.anon* %686 to i32*
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 1
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %RAX.i357 = bitcast %union.anon* %689 to i64*
  %690 = load i64, i64* %RAX.i357
  %691 = add i64 %690, 6360
  %692 = load i32, i32* %ECX.i356
  %693 = zext i32 %692 to i64
  %694 = load i64, i64* %PC.i355
  %695 = add i64 %694, 6
  store i64 %695, i64* %PC.i355
  %696 = inttoptr i64 %691 to i32*
  store i32 %692, i32* %696
  store %struct.Memory* %loadMem_42a57d, %struct.Memory** %MEMORY
  %loadMem_42a583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 33
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %699 to i64*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 1
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %702 to i64*
  %703 = load i64, i64* %PC.i353
  %704 = add i64 %703, 8
  store i64 %704, i64* %PC.i353
  %705 = load i64, i64* bitcast (%G_0x722b50_type* @G_0x722b50 to i64*)
  store i64 %705, i64* %RAX.i354, align 8
  store %struct.Memory* %loadMem_42a583, %struct.Memory** %MEMORY
  %loadMem_42a58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 33
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %708 to i64*
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 1
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %711 to i64*
  %712 = load i64, i64* %RAX.i352
  %713 = add i64 %712, 6412
  %714 = load i64, i64* %PC.i351
  %715 = add i64 %714, 10
  store i64 %715, i64* %PC.i351
  %716 = inttoptr i64 %713 to i32*
  store i32 1, i32* %716
  store %struct.Memory* %loadMem_42a58b, %struct.Memory** %MEMORY
  %loadMem_42a595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 33
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %719 to i64*
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 1
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %RAX.i350 = bitcast %union.anon* %722 to i64*
  %723 = load i64, i64* %PC.i349
  %724 = add i64 %723, 8
  store i64 %724, i64* %PC.i349
  %725 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %725, i64* %RAX.i350, align 8
  store %struct.Memory* %loadMem_42a595, %struct.Memory** %MEMORY
  %loadMem_42a59d = load %struct.Memory*, %struct.Memory** %MEMORY
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 33
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %728 to i64*
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 1
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %731 to i64*
  %732 = load i64, i64* %RAX.i348
  %733 = add i64 %732, 2884
  %734 = load i64, i64* %PC.i347
  %735 = add i64 %734, 7
  store i64 %735, i64* %PC.i347
  %736 = inttoptr i64 %733 to i32*
  %737 = load i32, i32* %736
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %738, align 1
  %739 = and i32 %737, 255
  %740 = call i32 @llvm.ctpop.i32(i32 %739)
  %741 = trunc i32 %740 to i8
  %742 = and i8 %741, 1
  %743 = xor i8 %742, 1
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %743, i8* %744, align 1
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %745, align 1
  %746 = icmp eq i32 %737, 0
  %747 = zext i1 %746 to i8
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %747, i8* %748, align 1
  %749 = lshr i32 %737, 31
  %750 = trunc i32 %749 to i8
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %750, i8* %751, align 1
  %752 = lshr i32 %737, 31
  %753 = xor i32 %749, %752
  %754 = add i32 %753, %752
  %755 = icmp eq i32 %754, 2
  %756 = zext i1 %755 to i8
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %756, i8* %757, align 1
  store %struct.Memory* %loadMem_42a59d, %struct.Memory** %MEMORY
  %loadMem_42a5a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 33
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %760 to i64*
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %762 = getelementptr inbounds %struct.GPR, %struct.GPR* %761, i32 0, i32 19
  %763 = getelementptr inbounds %struct.Reg, %struct.Reg* %762, i32 0, i32 0
  %764 = bitcast %union.anon* %763 to %struct.anon.2*
  %R9B.i346 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %764, i32 0, i32 0
  %765 = load i64, i64* %PC.i345
  %766 = add i64 %765, 4
  store i64 %766, i64* %PC.i345
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %768 = load i8, i8* %767, align 1
  %769 = icmp eq i8 %768, 0
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %R9B.i346, align 1
  store %struct.Memory* %loadMem_42a5a4, %struct.Memory** %MEMORY
  %loadMem_42a5a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %772 = getelementptr inbounds %struct.GPR, %struct.GPR* %771, i32 0, i32 33
  %773 = getelementptr inbounds %struct.Reg, %struct.Reg* %772, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %773 to i64*
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 19
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %777 = bitcast %union.anon* %776 to %struct.anon.2*
  %R9B.i344 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %777, i32 0, i32 0
  %778 = load i8, i8* %R9B.i344
  %779 = zext i8 %778 to i64
  %780 = load i64, i64* %PC.i343
  %781 = add i64 %780, 4
  store i64 %781, i64* %PC.i343
  %782 = and i64 1, %779
  %783 = trunc i64 %782 to i8
  store i8 %783, i8* %R9B.i344, align 1
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %784, align 1
  %785 = trunc i64 %782 to i32
  %786 = and i32 %785, 255
  %787 = call i32 @llvm.ctpop.i32(i32 %786)
  %788 = trunc i32 %787 to i8
  %789 = and i8 %788, 1
  %790 = xor i8 %789, 1
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %790, i8* %791, align 1
  %792 = icmp eq i8 %783, 0
  %793 = zext i1 %792 to i8
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %793, i8* %794, align 1
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %795, align 1
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %796, align 1
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %797, align 1
  store %struct.Memory* %loadMem_42a5a8, %struct.Memory** %MEMORY
  %loadMem_42a5ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 33
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %800 to i64*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 19
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %804 = bitcast %union.anon* %803 to %struct.anon.2*
  %R9B.i341 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %804, i32 0, i32 0
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 5
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %RCX.i342 = bitcast %union.anon* %807 to i64*
  %808 = load i8, i8* %R9B.i341
  %809 = zext i8 %808 to i64
  %810 = load i64, i64* %PC.i340
  %811 = add i64 %810, 4
  store i64 %811, i64* %PC.i340
  %812 = and i64 %809, 255
  store i64 %812, i64* %RCX.i342, align 8
  store %struct.Memory* %loadMem_42a5ac, %struct.Memory** %MEMORY
  %loadMem_42a5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %814 = getelementptr inbounds %struct.GPR, %struct.GPR* %813, i32 0, i32 33
  %815 = getelementptr inbounds %struct.Reg, %struct.Reg* %814, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %815 to i64*
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 1
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %RAX.i339 = bitcast %union.anon* %818 to i64*
  %819 = load i64, i64* %PC.i338
  %820 = add i64 %819, 8
  store i64 %820, i64* %PC.i338
  %821 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %821, i64* %RAX.i339, align 8
  store %struct.Memory* %loadMem_42a5b0, %struct.Memory** %MEMORY
  %loadMem_42a5b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 33
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %824 to i64*
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %826 = getelementptr inbounds %struct.GPR, %struct.GPR* %825, i32 0, i32 5
  %827 = getelementptr inbounds %struct.Reg, %struct.Reg* %826, i32 0, i32 0
  %ECX.i336 = bitcast %union.anon* %827 to i32*
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %829 = getelementptr inbounds %struct.GPR, %struct.GPR* %828, i32 0, i32 1
  %830 = getelementptr inbounds %struct.Reg, %struct.Reg* %829, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %830 to i64*
  %831 = load i64, i64* %RAX.i337
  %832 = add i64 %831, 72400
  %833 = load i32, i32* %ECX.i336
  %834 = zext i32 %833 to i64
  %835 = load i64, i64* %PC.i335
  %836 = add i64 %835, 6
  store i64 %836, i64* %PC.i335
  %837 = inttoptr i64 %832 to i32*
  store i32 %833, i32* %837
  store %struct.Memory* %loadMem_42a5b8, %struct.Memory** %MEMORY
  %loadMem_42a5be = load %struct.Memory*, %struct.Memory** %MEMORY
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 33
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %840 to i64*
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 1
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %RAX.i334 = bitcast %union.anon* %843 to i64*
  %844 = load i64, i64* %PC.i333
  %845 = add i64 %844, 8
  store i64 %845, i64* %PC.i333
  %846 = load i64, i64* bitcast (%G_0x722b50_type* @G_0x722b50 to i64*)
  store i64 %846, i64* %RAX.i334, align 8
  store %struct.Memory* %loadMem_42a5be, %struct.Memory** %MEMORY
  %loadMem_42a5c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 33
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %849 to i64*
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 5
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %ECX.i331 = bitcast %union.anon* %852 to i32*
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %854 = getelementptr inbounds %struct.GPR, %struct.GPR* %853, i32 0, i32 1
  %855 = getelementptr inbounds %struct.Reg, %struct.Reg* %854, i32 0, i32 0
  %RAX.i332 = bitcast %union.anon* %855 to i64*
  %856 = load i64, i64* %RAX.i332
  %857 = add i64 %856, 6416
  %858 = load i32, i32* %ECX.i331
  %859 = zext i32 %858 to i64
  %860 = load i64, i64* %PC.i330
  %861 = add i64 %860, 6
  store i64 %861, i64* %PC.i330
  %862 = inttoptr i64 %857 to i32*
  store i32 %858, i32* %862
  store %struct.Memory* %loadMem_42a5c6, %struct.Memory** %MEMORY
  %loadMem_42a5cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 33
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %865 to i64*
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 1
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %RAX.i329 = bitcast %union.anon* %868 to i64*
  %869 = load i64, i64* %PC.i328
  %870 = add i64 %869, 8
  store i64 %870, i64* %PC.i328
  %871 = load i64, i64* bitcast (%G_0x722b50_type* @G_0x722b50 to i64*)
  store i64 %871, i64* %RAX.i329, align 8
  store %struct.Memory* %loadMem_42a5cc, %struct.Memory** %MEMORY
  %loadMem_42a5d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %873 = getelementptr inbounds %struct.GPR, %struct.GPR* %872, i32 0, i32 33
  %874 = getelementptr inbounds %struct.Reg, %struct.Reg* %873, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %874 to i64*
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 1
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %RAX.i327 = bitcast %union.anon* %877 to i64*
  %878 = load i64, i64* %RAX.i327
  %879 = load i64, i64* %PC.i326
  %880 = add i64 %879, 8
  store i64 %880, i64* %PC.i326
  store i64 %878, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store %struct.Memory* %loadMem_42a5d4, %struct.Memory** %MEMORY
  %loadMem1_42a5dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 33
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %883 to i64*
  %884 = load i64, i64* %PC.i325
  %885 = add i64 %884, 8644
  %886 = load i64, i64* %PC.i325
  %887 = add i64 %886, 5
  %888 = load i64, i64* %PC.i325
  %889 = add i64 %888, 5
  store i64 %889, i64* %PC.i325
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %891 = load i64, i64* %890, align 8
  %892 = add i64 %891, -8
  %893 = inttoptr i64 %892 to i64*
  store i64 %887, i64* %893
  store i64 %892, i64* %890, align 8
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %885, i64* %894, align 8
  store %struct.Memory* %loadMem1_42a5dc, %struct.Memory** %MEMORY
  %loadMem2_42a5dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a5dc = load i64, i64* %3
  %call2_42a5dc = call %struct.Memory* @sub_42c7a0.copy_params(%struct.State* %0, i64 %loadPC_42a5dc, %struct.Memory* %loadMem2_42a5dc)
  store %struct.Memory* %call2_42a5dc, %struct.Memory** %MEMORY
  %loadMem_42a5e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 33
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %897 to i64*
  %898 = load i64, i64* %PC.i324
  %899 = add i64 %898, 691
  %900 = load i64, i64* %PC.i324
  %901 = add i64 %900, 5
  store i64 %901, i64* %PC.i324
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %899, i64* %902, align 8
  store %struct.Memory* %loadMem_42a5e1, %struct.Memory** %MEMORY
  br label %block_.L_42a894

block_.L_42a5e6:                                  ; preds = %entry
  %loadMem_42a5e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 33
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %905 to i64*
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %907 = getelementptr inbounds %struct.GPR, %struct.GPR* %906, i32 0, i32 15
  %908 = getelementptr inbounds %struct.Reg, %struct.Reg* %907, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %908 to i64*
  %909 = load i64, i64* %RBP.i323
  %910 = sub i64 %909, 12
  %911 = load i64, i64* %PC.i322
  %912 = add i64 %911, 4
  store i64 %912, i64* %PC.i322
  %913 = inttoptr i64 %910 to i32*
  %914 = load i32, i32* %913
  %915 = sub i32 %914, 1
  %916 = icmp ult i32 %914, 1
  %917 = zext i1 %916 to i8
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %917, i8* %918, align 1
  %919 = and i32 %915, 255
  %920 = call i32 @llvm.ctpop.i32(i32 %919)
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  %923 = xor i8 %922, 1
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %923, i8* %924, align 1
  %925 = xor i32 %914, 1
  %926 = xor i32 %925, %915
  %927 = lshr i32 %926, 4
  %928 = trunc i32 %927 to i8
  %929 = and i8 %928, 1
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %929, i8* %930, align 1
  %931 = icmp eq i32 %915, 0
  %932 = zext i1 %931 to i8
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %932, i8* %933, align 1
  %934 = lshr i32 %915, 31
  %935 = trunc i32 %934 to i8
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %935, i8* %936, align 1
  %937 = lshr i32 %914, 31
  %938 = xor i32 %934, %937
  %939 = add i32 %938, %937
  %940 = icmp eq i32 %939, 2
  %941 = zext i1 %940 to i8
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %941, i8* %942, align 1
  store %struct.Memory* %loadMem_42a5e6, %struct.Memory** %MEMORY
  %loadMem_42a5ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 33
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %945 to i64*
  %946 = load i64, i64* %PC.i321
  %947 = add i64 %946, 344
  %948 = load i64, i64* %PC.i321
  %949 = add i64 %948, 6
  %950 = load i64, i64* %PC.i321
  %951 = add i64 %950, 6
  store i64 %951, i64* %PC.i321
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %953 = load i8, i8* %952, align 1
  %954 = icmp eq i8 %953, 0
  %955 = zext i1 %954 to i8
  store i8 %955, i8* %BRANCH_TAKEN, align 1
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %957 = select i1 %954, i64 %947, i64 %949
  store i64 %957, i64* %956, align 8
  store %struct.Memory* %loadMem_42a5ea, %struct.Memory** %MEMORY
  %loadBr_42a5ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a5ea = icmp eq i8 %loadBr_42a5ea, 1
  br i1 %cmpBr_42a5ea, label %block_.L_42a742, label %block_42a5f0

block_42a5f0:                                     ; preds = %block_.L_42a5e6
  %loadMem_42a5f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 33
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %960 to i64*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 1
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %963 to i64*
  %964 = load i64, i64* %PC.i319
  %965 = add i64 %964, 8
  store i64 %965, i64* %PC.i319
  %966 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %966, i64* %RAX.i320, align 8
  store %struct.Memory* %loadMem_42a5f0, %struct.Memory** %MEMORY
  %loadMem_42a5f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %968 = getelementptr inbounds %struct.GPR, %struct.GPR* %967, i32 0, i32 33
  %969 = getelementptr inbounds %struct.Reg, %struct.Reg* %968, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %969 to i64*
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %971 = getelementptr inbounds %struct.GPR, %struct.GPR* %970, i32 0, i32 1
  %972 = getelementptr inbounds %struct.Reg, %struct.Reg* %971, i32 0, i32 0
  %RAX.i317 = bitcast %union.anon* %972 to i64*
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %974 = getelementptr inbounds %struct.GPR, %struct.GPR* %973, i32 0, i32 11
  %975 = getelementptr inbounds %struct.Reg, %struct.Reg* %974, i32 0, i32 0
  %RDI.i318 = bitcast %union.anon* %975 to i64*
  %976 = load i64, i64* %RAX.i317
  %977 = add i64 %976, 28
  %978 = load i64, i64* %PC.i316
  %979 = add i64 %978, 3
  store i64 %979, i64* %PC.i316
  %980 = inttoptr i64 %977 to i32*
  %981 = load i32, i32* %980
  %982 = zext i32 %981 to i64
  store i64 %982, i64* %RDI.i318, align 8
  store %struct.Memory* %loadMem_42a5f8, %struct.Memory** %MEMORY
  %loadMem_42a5fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 33
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %985 to i64*
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 1
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %988 to i64*
  %989 = load i64, i64* %PC.i314
  %990 = add i64 %989, 8
  store i64 %990, i64* %PC.i314
  %991 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %991, i64* %RAX.i315, align 8
  store %struct.Memory* %loadMem_42a5fb, %struct.Memory** %MEMORY
  %loadMem_42a603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 33
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %994 to i64*
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 1
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %997 to i64*
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 9
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %RSI.i313 = bitcast %union.anon* %1000 to i64*
  %1001 = load i64, i64* %RAX.i312
  %1002 = add i64 %1001, 52
  %1003 = load i64, i64* %PC.i311
  %1004 = add i64 %1003, 3
  store i64 %1004, i64* %PC.i311
  %1005 = inttoptr i64 %1002 to i32*
  %1006 = load i32, i32* %1005
  %1007 = zext i32 %1006 to i64
  store i64 %1007, i64* %RSI.i313, align 8
  store %struct.Memory* %loadMem_42a603, %struct.Memory** %MEMORY
  %loadMem_42a606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 33
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %1010 to i64*
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 1
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %1013 to i64*
  %1014 = load i64, i64* %PC.i309
  %1015 = add i64 %1014, 8
  store i64 %1015, i64* %PC.i309
  %1016 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1016, i64* %RAX.i310, align 8
  store %struct.Memory* %loadMem_42a606, %struct.Memory** %MEMORY
  %loadMem_42a60e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 33
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1019 to i64*
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 1
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %1022 to i64*
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1024 = getelementptr inbounds %struct.GPR, %struct.GPR* %1023, i32 0, i32 7
  %1025 = getelementptr inbounds %struct.Reg, %struct.Reg* %1024, i32 0, i32 0
  %RDX.i308 = bitcast %union.anon* %1025 to i64*
  %1026 = load i64, i64* %RAX.i307
  %1027 = add i64 %1026, 60
  %1028 = load i64, i64* %PC.i306
  %1029 = add i64 %1028, 3
  store i64 %1029, i64* %PC.i306
  %1030 = inttoptr i64 %1027 to i32*
  %1031 = load i32, i32* %1030
  %1032 = zext i32 %1031 to i64
  store i64 %1032, i64* %RDX.i308, align 8
  store %struct.Memory* %loadMem_42a60e, %struct.Memory** %MEMORY
  %loadMem_42a611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 33
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %1035 to i64*
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 1
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %1038 to i64*
  %1039 = load i64, i64* %PC.i304
  %1040 = add i64 %1039, 8
  store i64 %1040, i64* %PC.i304
  %1041 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1041, i64* %RAX.i305, align 8
  store %struct.Memory* %loadMem_42a611, %struct.Memory** %MEMORY
  %loadMem_42a619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 33
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %1044 to i64*
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 1
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %RAX.i302 = bitcast %union.anon* %1047 to i64*
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 5
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %RCX.i303 = bitcast %union.anon* %1050 to i64*
  %1051 = load i64, i64* %RAX.i302
  %1052 = add i64 %1051, 56
  %1053 = load i64, i64* %PC.i301
  %1054 = add i64 %1053, 3
  store i64 %1054, i64* %PC.i301
  %1055 = inttoptr i64 %1052 to i32*
  %1056 = load i32, i32* %1055
  %1057 = zext i32 %1056 to i64
  store i64 %1057, i64* %RCX.i303, align 8
  store %struct.Memory* %loadMem_42a619, %struct.Memory** %MEMORY
  %loadMem_42a61c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1059 = getelementptr inbounds %struct.GPR, %struct.GPR* %1058, i32 0, i32 33
  %1060 = getelementptr inbounds %struct.Reg, %struct.Reg* %1059, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %1060 to i64*
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 1
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %RAX.i300 = bitcast %union.anon* %1063 to i64*
  %1064 = load i64, i64* %PC.i299
  %1065 = add i64 %1064, 8
  store i64 %1065, i64* %PC.i299
  %1066 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1066, i64* %RAX.i300, align 8
  store %struct.Memory* %loadMem_42a61c, %struct.Memory** %MEMORY
  %loadMem_42a624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 33
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %1069 to i64*
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 17
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %R8D.i297 = bitcast %union.anon* %1072 to i32*
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 1
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %RAX.i298 = bitcast %union.anon* %1075 to i64*
  %1076 = bitcast i32* %R8D.i297 to i64*
  %1077 = load i64, i64* %RAX.i298
  %1078 = add i64 %1077, 64
  %1079 = load i64, i64* %PC.i296
  %1080 = add i64 %1079, 4
  store i64 %1080, i64* %PC.i296
  %1081 = inttoptr i64 %1078 to i32*
  %1082 = load i32, i32* %1081
  %1083 = zext i32 %1082 to i64
  store i64 %1083, i64* %1076, align 8
  store %struct.Memory* %loadMem_42a624, %struct.Memory** %MEMORY
  %loadMem1_42a628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 33
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %1086 to i64*
  %1087 = load i64, i64* %PC.i295
  %1088 = add i64 %1087, 137016
  %1089 = load i64, i64* %PC.i295
  %1090 = add i64 %1089, 5
  %1091 = load i64, i64* %PC.i295
  %1092 = add i64 %1091, 5
  store i64 %1092, i64* %PC.i295
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1094 = load i64, i64* %1093, align 8
  %1095 = add i64 %1094, -8
  %1096 = inttoptr i64 %1095 to i64*
  store i64 %1090, i64* %1096
  store i64 %1095, i64* %1093, align 8
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1088, i64* %1097, align 8
  store %struct.Memory* %loadMem1_42a628, %struct.Memory** %MEMORY
  %loadMem2_42a628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a628 = load i64, i64* %3
  %call2_42a628 = call %struct.Memory* @sub_44bd60.alloc_storable_picture(%struct.State* %0, i64 %loadPC_42a628, %struct.Memory* %loadMem2_42a628)
  store %struct.Memory* %call2_42a628, %struct.Memory** %MEMORY
  %loadMem_42a62d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1099 = getelementptr inbounds %struct.GPR, %struct.GPR* %1098, i32 0, i32 33
  %1100 = getelementptr inbounds %struct.Reg, %struct.Reg* %1099, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %1100 to i64*
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 1
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %1103 to i64*
  %1104 = load i64, i64* %RAX.i294
  %1105 = load i64, i64* %PC.i293
  %1106 = add i64 %1105, 8
  store i64 %1106, i64* %PC.i293
  store i64 %1104, i64* bitcast (%G_0x6d12b0_type* @G_0x6d12b0 to i64*)
  store %struct.Memory* %loadMem_42a62d, %struct.Memory** %MEMORY
  %loadMem_42a635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 33
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %1109 to i64*
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1111 = getelementptr inbounds %struct.GPR, %struct.GPR* %1110, i32 0, i32 1
  %1112 = getelementptr inbounds %struct.Reg, %struct.Reg* %1111, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %1112 to i64*
  %1113 = load i64, i64* %PC.i291
  %1114 = add i64 %1113, 8
  store i64 %1114, i64* %PC.i291
  %1115 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1115, i64* %RAX.i292, align 8
  store %struct.Memory* %loadMem_42a635, %struct.Memory** %MEMORY
  %loadMem_42a63d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1117 = getelementptr inbounds %struct.GPR, %struct.GPR* %1116, i32 0, i32 33
  %1118 = getelementptr inbounds %struct.Reg, %struct.Reg* %1117, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %1118 to i64*
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 1
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %1121 to i64*
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 5
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %RCX.i290 = bitcast %union.anon* %1124 to i64*
  %1125 = load i64, i64* %RAX.i289
  %1126 = add i64 %1125, 72456
  %1127 = load i64, i64* %PC.i288
  %1128 = add i64 %1127, 6
  store i64 %1128, i64* %PC.i288
  %1129 = inttoptr i64 %1126 to i32*
  %1130 = load i32, i32* %1129
  %1131 = zext i32 %1130 to i64
  store i64 %1131, i64* %RCX.i290, align 8
  store %struct.Memory* %loadMem_42a63d, %struct.Memory** %MEMORY
  %loadMem_42a643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 33
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %1134 to i64*
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 1
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %1137 to i64*
  %1138 = load i64, i64* %PC.i286
  %1139 = add i64 %1138, 8
  store i64 %1139, i64* %PC.i286
  %1140 = load i64, i64* bitcast (%G_0x6d12b0_type* @G_0x6d12b0 to i64*)
  store i64 %1140, i64* %RAX.i287, align 8
  store %struct.Memory* %loadMem_42a643, %struct.Memory** %MEMORY
  %loadMem_42a64b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 33
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %1143 to i64*
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 5
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %ECX.i284 = bitcast %union.anon* %1146 to i32*
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 1
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %1149 to i64*
  %1150 = load i64, i64* %RAX.i285
  %1151 = add i64 %1150, 4
  %1152 = load i32, i32* %ECX.i284
  %1153 = zext i32 %1152 to i64
  %1154 = load i64, i64* %PC.i283
  %1155 = add i64 %1154, 3
  store i64 %1155, i64* %PC.i283
  %1156 = inttoptr i64 %1151 to i32*
  store i32 %1152, i32* %1156
  store %struct.Memory* %loadMem_42a64b, %struct.Memory** %MEMORY
  %loadMem_42a64e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 33
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %1159 to i64*
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1161 = getelementptr inbounds %struct.GPR, %struct.GPR* %1160, i32 0, i32 1
  %1162 = getelementptr inbounds %struct.Reg, %struct.Reg* %1161, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %1162 to i64*
  %1163 = load i64, i64* %PC.i281
  %1164 = add i64 %1163, 8
  store i64 %1164, i64* %PC.i281
  %1165 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1165, i64* %RAX.i282, align 8
  store %struct.Memory* %loadMem_42a64e, %struct.Memory** %MEMORY
  %loadMem_42a656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 33
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %1168 to i64*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 5
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %ECX.i279 = bitcast %union.anon* %1171 to i32*
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 1
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %RAX.i280 = bitcast %union.anon* %1174 to i64*
  %1175 = load i64, i64* %RAX.i280
  %1176 = add i64 %1175, 72460
  %1177 = load i32, i32* %ECX.i279
  %1178 = zext i32 %1177 to i64
  %1179 = load i64, i64* %PC.i278
  %1180 = add i64 %1179, 6
  store i64 %1180, i64* %PC.i278
  %1181 = inttoptr i64 %1176 to i32*
  store i32 %1177, i32* %1181
  store %struct.Memory* %loadMem_42a656, %struct.Memory** %MEMORY
  %loadMem_42a65c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 33
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %1184 to i64*
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 1
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %1187 to i64*
  %1188 = load i64, i64* %PC.i276
  %1189 = add i64 %1188, 8
  store i64 %1189, i64* %PC.i276
  %1190 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1190, i64* %RAX.i277, align 8
  store %struct.Memory* %loadMem_42a65c, %struct.Memory** %MEMORY
  %loadMem_42a664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 33
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %1193 to i64*
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 1
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %RAX.i274 = bitcast %union.anon* %1196 to i64*
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 5
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %RCX.i275 = bitcast %union.anon* %1199 to i64*
  %1200 = load i64, i64* %RAX.i274
  %1201 = add i64 %1200, 72448
  %1202 = load i64, i64* %PC.i273
  %1203 = add i64 %1202, 6
  store i64 %1203, i64* %PC.i273
  %1204 = inttoptr i64 %1201 to i32*
  %1205 = load i32, i32* %1204
  %1206 = zext i32 %1205 to i64
  store i64 %1206, i64* %RCX.i275, align 8
  store %struct.Memory* %loadMem_42a664, %struct.Memory** %MEMORY
  %loadMem_42a66a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 33
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %1209 to i64*
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 1
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %RAX.i272 = bitcast %union.anon* %1212 to i64*
  %1213 = load i64, i64* %PC.i271
  %1214 = add i64 %1213, 8
  store i64 %1214, i64* %PC.i271
  %1215 = load i64, i64* bitcast (%G_0x6d12b0_type* @G_0x6d12b0 to i64*)
  store i64 %1215, i64* %RAX.i272, align 8
  store %struct.Memory* %loadMem_42a66a, %struct.Memory** %MEMORY
  %loadMem_42a672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1217 = getelementptr inbounds %struct.GPR, %struct.GPR* %1216, i32 0, i32 33
  %1218 = getelementptr inbounds %struct.Reg, %struct.Reg* %1217, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %1218 to i64*
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 5
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %ECX.i269 = bitcast %union.anon* %1221 to i32*
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1223 = getelementptr inbounds %struct.GPR, %struct.GPR* %1222, i32 0, i32 1
  %1224 = getelementptr inbounds %struct.Reg, %struct.Reg* %1223, i32 0, i32 0
  %RAX.i270 = bitcast %union.anon* %1224 to i64*
  %1225 = load i64, i64* %RAX.i270
  %1226 = add i64 %1225, 8
  %1227 = load i32, i32* %ECX.i269
  %1228 = zext i32 %1227 to i64
  %1229 = load i64, i64* %PC.i268
  %1230 = add i64 %1229, 3
  store i64 %1230, i64* %PC.i268
  %1231 = inttoptr i64 %1226 to i32*
  store i32 %1227, i32* %1231
  store %struct.Memory* %loadMem_42a672, %struct.Memory** %MEMORY
  %loadMem_42a675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1233 = getelementptr inbounds %struct.GPR, %struct.GPR* %1232, i32 0, i32 33
  %1234 = getelementptr inbounds %struct.Reg, %struct.Reg* %1233, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %1234 to i64*
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 1
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %1237 to i64*
  %1238 = load i64, i64* %PC.i266
  %1239 = add i64 %1238, 8
  store i64 %1239, i64* %PC.i266
  %1240 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1240, i64* %RAX.i267, align 8
  store %struct.Memory* %loadMem_42a675, %struct.Memory** %MEMORY
  %loadMem_42a67d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.GPR, %struct.GPR* %1241, i32 0, i32 33
  %1243 = getelementptr inbounds %struct.Reg, %struct.Reg* %1242, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %1243 to i64*
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1245 = getelementptr inbounds %struct.GPR, %struct.GPR* %1244, i32 0, i32 1
  %1246 = getelementptr inbounds %struct.Reg, %struct.Reg* %1245, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %1246 to i64*
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 5
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %RCX.i265 = bitcast %union.anon* %1249 to i64*
  %1250 = load i64, i64* %RAX.i264
  %1251 = add i64 %1250, 72452
  %1252 = load i64, i64* %PC.i263
  %1253 = add i64 %1252, 6
  store i64 %1253, i64* %PC.i263
  %1254 = inttoptr i64 %1251 to i32*
  %1255 = load i32, i32* %1254
  %1256 = zext i32 %1255 to i64
  store i64 %1256, i64* %RCX.i265, align 8
  store %struct.Memory* %loadMem_42a67d, %struct.Memory** %MEMORY
  %loadMem_42a683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 33
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %1259 to i64*
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 1
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %RAX.i262 = bitcast %union.anon* %1262 to i64*
  %1263 = load i64, i64* %PC.i261
  %1264 = add i64 %1263, 8
  store i64 %1264, i64* %PC.i261
  %1265 = load i64, i64* bitcast (%G_0x6d12b0_type* @G_0x6d12b0 to i64*)
  store i64 %1265, i64* %RAX.i262, align 8
  store %struct.Memory* %loadMem_42a683, %struct.Memory** %MEMORY
  %loadMem_42a68b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1267 = getelementptr inbounds %struct.GPR, %struct.GPR* %1266, i32 0, i32 33
  %1268 = getelementptr inbounds %struct.Reg, %struct.Reg* %1267, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %1268 to i64*
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 5
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %ECX.i259 = bitcast %union.anon* %1271 to i32*
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 1
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %RAX.i260 = bitcast %union.anon* %1274 to i64*
  %1275 = load i64, i64* %RAX.i260
  %1276 = add i64 %1275, 12
  %1277 = load i32, i32* %ECX.i259
  %1278 = zext i32 %1277 to i64
  %1279 = load i64, i64* %PC.i258
  %1280 = add i64 %1279, 3
  store i64 %1280, i64* %PC.i258
  %1281 = inttoptr i64 %1276 to i32*
  store i32 %1277, i32* %1281
  store %struct.Memory* %loadMem_42a68b, %struct.Memory** %MEMORY
  %loadMem_42a68e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1283 = getelementptr inbounds %struct.GPR, %struct.GPR* %1282, i32 0, i32 33
  %1284 = getelementptr inbounds %struct.Reg, %struct.Reg* %1283, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %1284 to i64*
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1286 = getelementptr inbounds %struct.GPR, %struct.GPR* %1285, i32 0, i32 1
  %1287 = getelementptr inbounds %struct.Reg, %struct.Reg* %1286, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %1287 to i64*
  %1288 = load i64, i64* %PC.i256
  %1289 = add i64 %1288, 8
  store i64 %1289, i64* %PC.i256
  %1290 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1290, i64* %RAX.i257, align 8
  store %struct.Memory* %loadMem_42a68e, %struct.Memory** %MEMORY
  %loadMem_42a696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 33
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %1293 to i64*
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 1
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %RAX.i254 = bitcast %union.anon* %1296 to i64*
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1298 = getelementptr inbounds %struct.GPR, %struct.GPR* %1297, i32 0, i32 5
  %1299 = getelementptr inbounds %struct.Reg, %struct.Reg* %1298, i32 0, i32 0
  %RCX.i255 = bitcast %union.anon* %1299 to i64*
  %1300 = load i64, i64* %RAX.i254
  %1301 = add i64 %1300, 72456
  %1302 = load i64, i64* %PC.i253
  %1303 = add i64 %1302, 6
  store i64 %1303, i64* %PC.i253
  %1304 = inttoptr i64 %1301 to i32*
  %1305 = load i32, i32* %1304
  %1306 = zext i32 %1305 to i64
  store i64 %1306, i64* %RCX.i255, align 8
  store %struct.Memory* %loadMem_42a696, %struct.Memory** %MEMORY
  %loadMem_42a69c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1308 = getelementptr inbounds %struct.GPR, %struct.GPR* %1307, i32 0, i32 33
  %1309 = getelementptr inbounds %struct.Reg, %struct.Reg* %1308, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %1309 to i64*
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 1
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %RAX.i252 = bitcast %union.anon* %1312 to i64*
  %1313 = load i64, i64* %PC.i251
  %1314 = add i64 %1313, 8
  store i64 %1314, i64* %PC.i251
  %1315 = load i64, i64* bitcast (%G_0x6d12b0_type* @G_0x6d12b0 to i64*)
  store i64 %1315, i64* %RAX.i252, align 8
  store %struct.Memory* %loadMem_42a69c, %struct.Memory** %MEMORY
  %loadMem_42a6a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 33
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %1318 to i64*
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1320 = getelementptr inbounds %struct.GPR, %struct.GPR* %1319, i32 0, i32 5
  %1321 = getelementptr inbounds %struct.Reg, %struct.Reg* %1320, i32 0, i32 0
  %ECX.i249 = bitcast %union.anon* %1321 to i32*
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1323 = getelementptr inbounds %struct.GPR, %struct.GPR* %1322, i32 0, i32 1
  %1324 = getelementptr inbounds %struct.Reg, %struct.Reg* %1323, i32 0, i32 0
  %RAX.i250 = bitcast %union.anon* %1324 to i64*
  %1325 = load i64, i64* %RAX.i250
  %1326 = add i64 %1325, 16
  %1327 = load i32, i32* %ECX.i249
  %1328 = zext i32 %1327 to i64
  %1329 = load i64, i64* %PC.i248
  %1330 = add i64 %1329, 3
  store i64 %1330, i64* %PC.i248
  %1331 = inttoptr i64 %1326 to i32*
  store i32 %1327, i32* %1331
  store %struct.Memory* %loadMem_42a6a4, %struct.Memory** %MEMORY
  %loadMem_42a6a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1333 = getelementptr inbounds %struct.GPR, %struct.GPR* %1332, i32 0, i32 33
  %1334 = getelementptr inbounds %struct.Reg, %struct.Reg* %1333, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %1334 to i64*
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 1
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %1337 to i64*
  %1338 = load i64, i64* %PC.i246
  %1339 = add i64 %1338, 8
  store i64 %1339, i64* %PC.i246
  %1340 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1340, i64* %RAX.i247, align 8
  store %struct.Memory* %loadMem_42a6a7, %struct.Memory** %MEMORY
  %loadMem_42a6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1342 = getelementptr inbounds %struct.GPR, %struct.GPR* %1341, i32 0, i32 33
  %1343 = getelementptr inbounds %struct.Reg, %struct.Reg* %1342, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %1343 to i64*
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 1
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %1346 to i64*
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 5
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %RCX.i245 = bitcast %union.anon* %1349 to i64*
  %1350 = load i64, i64* %RAX.i244
  %1351 = add i64 %1350, 72464
  %1352 = load i64, i64* %PC.i243
  %1353 = add i64 %1352, 6
  store i64 %1353, i64* %PC.i243
  %1354 = inttoptr i64 %1351 to i32*
  %1355 = load i32, i32* %1354
  %1356 = zext i32 %1355 to i64
  store i64 %1356, i64* %RCX.i245, align 8
  store %struct.Memory* %loadMem_42a6af, %struct.Memory** %MEMORY
  %loadMem_42a6b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 33
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %1359 to i64*
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 1
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %RAX.i242 = bitcast %union.anon* %1362 to i64*
  %1363 = load i64, i64* %PC.i241
  %1364 = add i64 %1363, 8
  store i64 %1364, i64* %PC.i241
  %1365 = load i64, i64* bitcast (%G_0x6d12b0_type* @G_0x6d12b0 to i64*)
  store i64 %1365, i64* %RAX.i242, align 8
  store %struct.Memory* %loadMem_42a6b5, %struct.Memory** %MEMORY
  %loadMem_42a6bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 33
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %1368 to i64*
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1370 = getelementptr inbounds %struct.GPR, %struct.GPR* %1369, i32 0, i32 5
  %1371 = getelementptr inbounds %struct.Reg, %struct.Reg* %1370, i32 0, i32 0
  %ECX.i239 = bitcast %union.anon* %1371 to i32*
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1373 = getelementptr inbounds %struct.GPR, %struct.GPR* %1372, i32 0, i32 1
  %1374 = getelementptr inbounds %struct.Reg, %struct.Reg* %1373, i32 0, i32 0
  %RAX.i240 = bitcast %union.anon* %1374 to i64*
  %1375 = load i64, i64* %RAX.i240
  %1376 = add i64 %1375, 6364
  %1377 = load i32, i32* %ECX.i239
  %1378 = zext i32 %1377 to i64
  %1379 = load i64, i64* %PC.i238
  %1380 = add i64 %1379, 6
  store i64 %1380, i64* %PC.i238
  %1381 = inttoptr i64 %1376 to i32*
  store i32 %1377, i32* %1381
  store %struct.Memory* %loadMem_42a6bd, %struct.Memory** %MEMORY
  %loadMem_42a6c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1383 = getelementptr inbounds %struct.GPR, %struct.GPR* %1382, i32 0, i32 33
  %1384 = getelementptr inbounds %struct.Reg, %struct.Reg* %1383, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %1384 to i64*
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1386 = getelementptr inbounds %struct.GPR, %struct.GPR* %1385, i32 0, i32 1
  %1387 = getelementptr inbounds %struct.Reg, %struct.Reg* %1386, i32 0, i32 0
  %RAX.i237 = bitcast %union.anon* %1387 to i64*
  %1388 = load i64, i64* %PC.i236
  %1389 = add i64 %1388, 8
  store i64 %1389, i64* %PC.i236
  %1390 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1390, i64* %RAX.i237, align 8
  store %struct.Memory* %loadMem_42a6c3, %struct.Memory** %MEMORY
  %loadMem_42a6cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1392 = getelementptr inbounds %struct.GPR, %struct.GPR* %1391, i32 0, i32 33
  %1393 = getelementptr inbounds %struct.Reg, %struct.Reg* %1392, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %1393 to i64*
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 1
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %1396 to i64*
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 5
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %RCX.i235 = bitcast %union.anon* %1399 to i64*
  %1400 = load i64, i64* %RAX.i234
  %1401 = add i64 %1400, 72464
  %1402 = load i64, i64* %PC.i233
  %1403 = add i64 %1402, 6
  store i64 %1403, i64* %PC.i233
  %1404 = inttoptr i64 %1401 to i32*
  %1405 = load i32, i32* %1404
  %1406 = zext i32 %1405 to i64
  store i64 %1406, i64* %RCX.i235, align 8
  store %struct.Memory* %loadMem_42a6cb, %struct.Memory** %MEMORY
  %loadMem_42a6d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 33
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %1409 to i64*
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1411 = getelementptr inbounds %struct.GPR, %struct.GPR* %1410, i32 0, i32 1
  %1412 = getelementptr inbounds %struct.Reg, %struct.Reg* %1411, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %1412 to i64*
  %1413 = load i64, i64* %PC.i231
  %1414 = add i64 %1413, 8
  store i64 %1414, i64* %PC.i231
  %1415 = load i64, i64* bitcast (%G_0x6d12b0_type* @G_0x6d12b0 to i64*)
  store i64 %1415, i64* %RAX.i232, align 8
  store %struct.Memory* %loadMem_42a6d1, %struct.Memory** %MEMORY
  %loadMem_42a6d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 33
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %1418 to i64*
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 5
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %ECX.i229 = bitcast %union.anon* %1421 to i32*
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1423 = getelementptr inbounds %struct.GPR, %struct.GPR* %1422, i32 0, i32 1
  %1424 = getelementptr inbounds %struct.Reg, %struct.Reg* %1423, i32 0, i32 0
  %RAX.i230 = bitcast %union.anon* %1424 to i64*
  %1425 = load i64, i64* %RAX.i230
  %1426 = add i64 %1425, 6360
  %1427 = load i32, i32* %ECX.i229
  %1428 = zext i32 %1427 to i64
  %1429 = load i64, i64* %PC.i228
  %1430 = add i64 %1429, 6
  store i64 %1430, i64* %PC.i228
  %1431 = inttoptr i64 %1426 to i32*
  store i32 %1427, i32* %1431
  store %struct.Memory* %loadMem_42a6d9, %struct.Memory** %MEMORY
  %loadMem_42a6df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 33
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %1434 to i64*
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 1
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %RAX.i227 = bitcast %union.anon* %1437 to i64*
  %1438 = load i64, i64* %PC.i226
  %1439 = add i64 %1438, 8
  store i64 %1439, i64* %PC.i226
  %1440 = load i64, i64* bitcast (%G_0x6d12b0_type* @G_0x6d12b0 to i64*)
  store i64 %1440, i64* %RAX.i227, align 8
  store %struct.Memory* %loadMem_42a6df, %struct.Memory** %MEMORY
  %loadMem_42a6e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 33
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1443 to i64*
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1445 = getelementptr inbounds %struct.GPR, %struct.GPR* %1444, i32 0, i32 1
  %1446 = getelementptr inbounds %struct.Reg, %struct.Reg* %1445, i32 0, i32 0
  %RAX.i225 = bitcast %union.anon* %1446 to i64*
  %1447 = load i64, i64* %RAX.i225
  %1448 = add i64 %1447, 6412
  %1449 = load i64, i64* %PC.i224
  %1450 = add i64 %1449, 10
  store i64 %1450, i64* %PC.i224
  %1451 = inttoptr i64 %1448 to i32*
  store i32 1, i32* %1451
  store %struct.Memory* %loadMem_42a6e7, %struct.Memory** %MEMORY
  %loadMem_42a6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 33
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %1454 to i64*
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1456 = getelementptr inbounds %struct.GPR, %struct.GPR* %1455, i32 0, i32 1
  %1457 = getelementptr inbounds %struct.Reg, %struct.Reg* %1456, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %1457 to i64*
  %1458 = load i64, i64* %PC.i222
  %1459 = add i64 %1458, 8
  store i64 %1459, i64* %PC.i222
  %1460 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %1460, i64* %RAX.i223, align 8
  store %struct.Memory* %loadMem_42a6f1, %struct.Memory** %MEMORY
  %loadMem_42a6f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 33
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %1463 to i64*
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1465 = getelementptr inbounds %struct.GPR, %struct.GPR* %1464, i32 0, i32 1
  %1466 = getelementptr inbounds %struct.Reg, %struct.Reg* %1465, i32 0, i32 0
  %RAX.i221 = bitcast %union.anon* %1466 to i64*
  %1467 = load i64, i64* %RAX.i221
  %1468 = add i64 %1467, 2884
  %1469 = load i64, i64* %PC.i220
  %1470 = add i64 %1469, 7
  store i64 %1470, i64* %PC.i220
  %1471 = inttoptr i64 %1468 to i32*
  %1472 = load i32, i32* %1471
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1473, align 1
  %1474 = and i32 %1472, 255
  %1475 = call i32 @llvm.ctpop.i32(i32 %1474)
  %1476 = trunc i32 %1475 to i8
  %1477 = and i8 %1476, 1
  %1478 = xor i8 %1477, 1
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1478, i8* %1479, align 1
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1480, align 1
  %1481 = icmp eq i32 %1472, 0
  %1482 = zext i1 %1481 to i8
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1482, i8* %1483, align 1
  %1484 = lshr i32 %1472, 31
  %1485 = trunc i32 %1484 to i8
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1485, i8* %1486, align 1
  %1487 = lshr i32 %1472, 31
  %1488 = xor i32 %1484, %1487
  %1489 = add i32 %1488, %1487
  %1490 = icmp eq i32 %1489, 2
  %1491 = zext i1 %1490 to i8
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1491, i8* %1492, align 1
  store %struct.Memory* %loadMem_42a6f9, %struct.Memory** %MEMORY
  %loadMem_42a700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 33
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %1495 to i64*
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 19
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %1499 = bitcast %union.anon* %1498 to %struct.anon.2*
  %R9B.i219 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1499, i32 0, i32 0
  %1500 = load i64, i64* %PC.i218
  %1501 = add i64 %1500, 4
  store i64 %1501, i64* %PC.i218
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1503 = load i8, i8* %1502, align 1
  %1504 = icmp eq i8 %1503, 0
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %R9B.i219, align 1
  store %struct.Memory* %loadMem_42a700, %struct.Memory** %MEMORY
  %loadMem_42a704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 33
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %1508 to i64*
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 19
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %1512 = bitcast %union.anon* %1511 to %struct.anon.2*
  %R9B.i217 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1512, i32 0, i32 0
  %1513 = load i8, i8* %R9B.i217
  %1514 = zext i8 %1513 to i64
  %1515 = load i64, i64* %PC.i216
  %1516 = add i64 %1515, 4
  store i64 %1516, i64* %PC.i216
  %1517 = and i64 1, %1514
  %1518 = trunc i64 %1517 to i8
  store i8 %1518, i8* %R9B.i217, align 1
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1519, align 1
  %1520 = trunc i64 %1517 to i32
  %1521 = and i32 %1520, 255
  %1522 = call i32 @llvm.ctpop.i32(i32 %1521)
  %1523 = trunc i32 %1522 to i8
  %1524 = and i8 %1523, 1
  %1525 = xor i8 %1524, 1
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1525, i8* %1526, align 1
  %1527 = icmp eq i8 %1518, 0
  %1528 = zext i1 %1527 to i8
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1528, i8* %1529, align 1
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1530, align 1
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1531, align 1
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1532, align 1
  store %struct.Memory* %loadMem_42a704, %struct.Memory** %MEMORY
  %loadMem_42a708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 33
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %1535 to i64*
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1537 = getelementptr inbounds %struct.GPR, %struct.GPR* %1536, i32 0, i32 19
  %1538 = getelementptr inbounds %struct.Reg, %struct.Reg* %1537, i32 0, i32 0
  %1539 = bitcast %union.anon* %1538 to %struct.anon.2*
  %R9B.i214 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1539, i32 0, i32 0
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 5
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %RCX.i215 = bitcast %union.anon* %1542 to i64*
  %1543 = load i8, i8* %R9B.i214
  %1544 = zext i8 %1543 to i64
  %1545 = load i64, i64* %PC.i213
  %1546 = add i64 %1545, 4
  store i64 %1546, i64* %PC.i213
  %1547 = and i64 %1544, 255
  store i64 %1547, i64* %RCX.i215, align 8
  store %struct.Memory* %loadMem_42a708, %struct.Memory** %MEMORY
  %loadMem_42a70c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 33
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %1550 to i64*
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 1
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %RAX.i212 = bitcast %union.anon* %1553 to i64*
  %1554 = load i64, i64* %PC.i211
  %1555 = add i64 %1554, 8
  store i64 %1555, i64* %PC.i211
  %1556 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1556, i64* %RAX.i212, align 8
  store %struct.Memory* %loadMem_42a70c, %struct.Memory** %MEMORY
  %loadMem_42a714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1558 = getelementptr inbounds %struct.GPR, %struct.GPR* %1557, i32 0, i32 33
  %1559 = getelementptr inbounds %struct.Reg, %struct.Reg* %1558, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %1559 to i64*
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1561 = getelementptr inbounds %struct.GPR, %struct.GPR* %1560, i32 0, i32 5
  %1562 = getelementptr inbounds %struct.Reg, %struct.Reg* %1561, i32 0, i32 0
  %ECX.i209 = bitcast %union.anon* %1562 to i32*
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1564 = getelementptr inbounds %struct.GPR, %struct.GPR* %1563, i32 0, i32 1
  %1565 = getelementptr inbounds %struct.Reg, %struct.Reg* %1564, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %1565 to i64*
  %1566 = load i64, i64* %RAX.i210
  %1567 = add i64 %1566, 72400
  %1568 = load i32, i32* %ECX.i209
  %1569 = zext i32 %1568 to i64
  %1570 = load i64, i64* %PC.i208
  %1571 = add i64 %1570, 6
  store i64 %1571, i64* %PC.i208
  %1572 = inttoptr i64 %1567 to i32*
  store i32 %1568, i32* %1572
  store %struct.Memory* %loadMem_42a714, %struct.Memory** %MEMORY
  %loadMem_42a71a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1574 = getelementptr inbounds %struct.GPR, %struct.GPR* %1573, i32 0, i32 33
  %1575 = getelementptr inbounds %struct.Reg, %struct.Reg* %1574, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %1575 to i64*
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 1
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %RAX.i207 = bitcast %union.anon* %1578 to i64*
  %1579 = load i64, i64* %PC.i206
  %1580 = add i64 %1579, 8
  store i64 %1580, i64* %PC.i206
  %1581 = load i64, i64* bitcast (%G_0x6d12b0_type* @G_0x6d12b0 to i64*)
  store i64 %1581, i64* %RAX.i207, align 8
  store %struct.Memory* %loadMem_42a71a, %struct.Memory** %MEMORY
  %loadMem_42a722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 33
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %1584 to i64*
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 5
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %ECX.i204 = bitcast %union.anon* %1587 to i32*
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 1
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %RAX.i205 = bitcast %union.anon* %1590 to i64*
  %1591 = load i64, i64* %RAX.i205
  %1592 = add i64 %1591, 6416
  %1593 = load i32, i32* %ECX.i204
  %1594 = zext i32 %1593 to i64
  %1595 = load i64, i64* %PC.i203
  %1596 = add i64 %1595, 6
  store i64 %1596, i64* %PC.i203
  %1597 = inttoptr i64 %1592 to i32*
  store i32 %1593, i32* %1597
  store %struct.Memory* %loadMem_42a722, %struct.Memory** %MEMORY
  %loadMem_42a728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 33
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %1600 to i64*
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1602 = getelementptr inbounds %struct.GPR, %struct.GPR* %1601, i32 0, i32 1
  %1603 = getelementptr inbounds %struct.Reg, %struct.Reg* %1602, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %1603 to i64*
  %1604 = load i64, i64* %PC.i201
  %1605 = add i64 %1604, 8
  store i64 %1605, i64* %PC.i201
  %1606 = load i64, i64* bitcast (%G_0x6d12b0_type* @G_0x6d12b0 to i64*)
  store i64 %1606, i64* %RAX.i202, align 8
  store %struct.Memory* %loadMem_42a728, %struct.Memory** %MEMORY
  %loadMem_42a730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 33
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %1609 to i64*
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 1
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %1612 to i64*
  %1613 = load i64, i64* %RAX.i200
  %1614 = load i64, i64* %PC.i199
  %1615 = add i64 %1614, 8
  store i64 %1615, i64* %PC.i199
  store i64 %1613, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store %struct.Memory* %loadMem_42a730, %struct.Memory** %MEMORY
  %loadMem1_42a738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1617 = getelementptr inbounds %struct.GPR, %struct.GPR* %1616, i32 0, i32 33
  %1618 = getelementptr inbounds %struct.Reg, %struct.Reg* %1617, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %1618 to i64*
  %1619 = load i64, i64* %PC.i198
  %1620 = add i64 %1619, 8296
  %1621 = load i64, i64* %PC.i198
  %1622 = add i64 %1621, 5
  %1623 = load i64, i64* %PC.i198
  %1624 = add i64 %1623, 5
  store i64 %1624, i64* %PC.i198
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1626 = load i64, i64* %1625, align 8
  %1627 = add i64 %1626, -8
  %1628 = inttoptr i64 %1627 to i64*
  store i64 %1622, i64* %1628
  store i64 %1627, i64* %1625, align 8
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1620, i64* %1629, align 8
  store %struct.Memory* %loadMem1_42a738, %struct.Memory** %MEMORY
  %loadMem2_42a738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a738 = load i64, i64* %3
  %call2_42a738 = call %struct.Memory* @sub_42c7a0.copy_params(%struct.State* %0, i64 %loadPC_42a738, %struct.Memory* %loadMem2_42a738)
  store %struct.Memory* %call2_42a738, %struct.Memory** %MEMORY
  %loadMem_42a73d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 33
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %1632 to i64*
  %1633 = load i64, i64* %PC.i197
  %1634 = add i64 %1633, 338
  %1635 = load i64, i64* %PC.i197
  %1636 = add i64 %1635, 5
  store i64 %1636, i64* %PC.i197
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1634, i64* %1637, align 8
  store %struct.Memory* %loadMem_42a73d, %struct.Memory** %MEMORY
  br label %block_.L_42a88f

block_.L_42a742:                                  ; preds = %block_.L_42a5e6
  %loadMem_42a742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 33
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %1640 to i64*
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 1
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %1643 to i64*
  %1644 = load i64, i64* %PC.i195
  %1645 = add i64 %1644, 8
  store i64 %1645, i64* %PC.i195
  %1646 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1646, i64* %RAX.i196, align 8
  store %struct.Memory* %loadMem_42a742, %struct.Memory** %MEMORY
  %loadMem_42a74a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1648 = getelementptr inbounds %struct.GPR, %struct.GPR* %1647, i32 0, i32 33
  %1649 = getelementptr inbounds %struct.Reg, %struct.Reg* %1648, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %1649 to i64*
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 1
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %1652 to i64*
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1654 = getelementptr inbounds %struct.GPR, %struct.GPR* %1653, i32 0, i32 11
  %1655 = getelementptr inbounds %struct.Reg, %struct.Reg* %1654, i32 0, i32 0
  %RDI.i194 = bitcast %union.anon* %1655 to i64*
  %1656 = load i64, i64* %RAX.i193
  %1657 = add i64 %1656, 28
  %1658 = load i64, i64* %PC.i192
  %1659 = add i64 %1658, 3
  store i64 %1659, i64* %PC.i192
  %1660 = inttoptr i64 %1657 to i32*
  %1661 = load i32, i32* %1660
  %1662 = zext i32 %1661 to i64
  store i64 %1662, i64* %RDI.i194, align 8
  store %struct.Memory* %loadMem_42a74a, %struct.Memory** %MEMORY
  %loadMem_42a74d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 33
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %1665 to i64*
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 1
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %1668 to i64*
  %1669 = load i64, i64* %PC.i190
  %1670 = add i64 %1669, 8
  store i64 %1670, i64* %PC.i190
  %1671 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1671, i64* %RAX.i191, align 8
  store %struct.Memory* %loadMem_42a74d, %struct.Memory** %MEMORY
  %loadMem_42a755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 33
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %1674 to i64*
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 1
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %1677 to i64*
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 9
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %1680 to i64*
  %1681 = load i64, i64* %RAX.i189
  %1682 = add i64 %1681, 52
  %1683 = load i64, i64* %PC.i188
  %1684 = add i64 %1683, 3
  store i64 %1684, i64* %PC.i188
  %1685 = inttoptr i64 %1682 to i32*
  %1686 = load i32, i32* %1685
  %1687 = zext i32 %1686 to i64
  store i64 %1687, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_42a755, %struct.Memory** %MEMORY
  %loadMem_42a758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 33
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %1690 to i64*
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1692 = getelementptr inbounds %struct.GPR, %struct.GPR* %1691, i32 0, i32 1
  %1693 = getelementptr inbounds %struct.Reg, %struct.Reg* %1692, i32 0, i32 0
  %RAX.i187 = bitcast %union.anon* %1693 to i64*
  %1694 = load i64, i64* %PC.i186
  %1695 = add i64 %1694, 8
  store i64 %1695, i64* %PC.i186
  %1696 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1696, i64* %RAX.i187, align 8
  store %struct.Memory* %loadMem_42a758, %struct.Memory** %MEMORY
  %loadMem_42a760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 33
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %1699 to i64*
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 1
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %1702 to i64*
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1704 = getelementptr inbounds %struct.GPR, %struct.GPR* %1703, i32 0, i32 7
  %1705 = getelementptr inbounds %struct.Reg, %struct.Reg* %1704, i32 0, i32 0
  %RDX.i185 = bitcast %union.anon* %1705 to i64*
  %1706 = load i64, i64* %RAX.i184
  %1707 = add i64 %1706, 60
  %1708 = load i64, i64* %PC.i183
  %1709 = add i64 %1708, 3
  store i64 %1709, i64* %PC.i183
  %1710 = inttoptr i64 %1707 to i32*
  %1711 = load i32, i32* %1710
  %1712 = zext i32 %1711 to i64
  store i64 %1712, i64* %RDX.i185, align 8
  store %struct.Memory* %loadMem_42a760, %struct.Memory** %MEMORY
  %loadMem_42a763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 33
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %1715 to i64*
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 1
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %RAX.i182 = bitcast %union.anon* %1718 to i64*
  %1719 = load i64, i64* %PC.i181
  %1720 = add i64 %1719, 8
  store i64 %1720, i64* %PC.i181
  %1721 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1721, i64* %RAX.i182, align 8
  store %struct.Memory* %loadMem_42a763, %struct.Memory** %MEMORY
  %loadMem_42a76b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 33
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %1724 to i64*
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 1
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %RAX.i179 = bitcast %union.anon* %1727 to i64*
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 5
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %RCX.i180 = bitcast %union.anon* %1730 to i64*
  %1731 = load i64, i64* %RAX.i179
  %1732 = add i64 %1731, 56
  %1733 = load i64, i64* %PC.i178
  %1734 = add i64 %1733, 3
  store i64 %1734, i64* %PC.i178
  %1735 = inttoptr i64 %1732 to i32*
  %1736 = load i32, i32* %1735
  %1737 = zext i32 %1736 to i64
  store i64 %1737, i64* %RCX.i180, align 8
  store %struct.Memory* %loadMem_42a76b, %struct.Memory** %MEMORY
  %loadMem_42a76e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 33
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %1740 to i64*
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1742 = getelementptr inbounds %struct.GPR, %struct.GPR* %1741, i32 0, i32 1
  %1743 = getelementptr inbounds %struct.Reg, %struct.Reg* %1742, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %1743 to i64*
  %1744 = load i64, i64* %PC.i176
  %1745 = add i64 %1744, 8
  store i64 %1745, i64* %PC.i176
  %1746 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1746, i64* %RAX.i177, align 8
  store %struct.Memory* %loadMem_42a76e, %struct.Memory** %MEMORY
  %loadMem_42a776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 33
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %1749 to i64*
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 17
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %1752 to i32*
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 1
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %1755 to i64*
  %1756 = bitcast i32* %R8D.i to i64*
  %1757 = load i64, i64* %RAX.i175
  %1758 = add i64 %1757, 64
  %1759 = load i64, i64* %PC.i174
  %1760 = add i64 %1759, 4
  store i64 %1760, i64* %PC.i174
  %1761 = inttoptr i64 %1758 to i32*
  %1762 = load i32, i32* %1761
  %1763 = zext i32 %1762 to i64
  store i64 %1763, i64* %1756, align 8
  store %struct.Memory* %loadMem_42a776, %struct.Memory** %MEMORY
  %loadMem1_42a77a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 33
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %1766 to i64*
  %1767 = load i64, i64* %PC.i173
  %1768 = add i64 %1767, 136678
  %1769 = load i64, i64* %PC.i173
  %1770 = add i64 %1769, 5
  %1771 = load i64, i64* %PC.i173
  %1772 = add i64 %1771, 5
  store i64 %1772, i64* %PC.i173
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1774 = load i64, i64* %1773, align 8
  %1775 = add i64 %1774, -8
  %1776 = inttoptr i64 %1775 to i64*
  store i64 %1770, i64* %1776
  store i64 %1775, i64* %1773, align 8
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1768, i64* %1777, align 8
  store %struct.Memory* %loadMem1_42a77a, %struct.Memory** %MEMORY
  %loadMem2_42a77a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a77a = load i64, i64* %3
  %call2_42a77a = call %struct.Memory* @sub_44bd60.alloc_storable_picture(%struct.State* %0, i64 %loadPC_42a77a, %struct.Memory* %loadMem2_42a77a)
  store %struct.Memory* %call2_42a77a, %struct.Memory** %MEMORY
  %loadMem_42a77f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 33
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %1780 to i64*
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 1
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %RAX.i172 = bitcast %union.anon* %1783 to i64*
  %1784 = load i64, i64* %RAX.i172
  %1785 = load i64, i64* %PC.i171
  %1786 = add i64 %1785, 8
  store i64 %1786, i64* %PC.i171
  store i64 %1784, i64* bitcast (%G_0x710a50_type* @G_0x710a50 to i64*)
  store %struct.Memory* %loadMem_42a77f, %struct.Memory** %MEMORY
  %loadMem_42a787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 33
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %1789 to i64*
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1791 = getelementptr inbounds %struct.GPR, %struct.GPR* %1790, i32 0, i32 1
  %1792 = getelementptr inbounds %struct.Reg, %struct.Reg* %1791, i32 0, i32 0
  %RAX.i170 = bitcast %union.anon* %1792 to i64*
  %1793 = load i64, i64* %PC.i169
  %1794 = add i64 %1793, 8
  store i64 %1794, i64* %PC.i169
  %1795 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1795, i64* %RAX.i170, align 8
  store %struct.Memory* %loadMem_42a787, %struct.Memory** %MEMORY
  %loadMem_42a78f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1797 = getelementptr inbounds %struct.GPR, %struct.GPR* %1796, i32 0, i32 33
  %1798 = getelementptr inbounds %struct.Reg, %struct.Reg* %1797, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %1798 to i64*
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1800 = getelementptr inbounds %struct.GPR, %struct.GPR* %1799, i32 0, i32 1
  %1801 = getelementptr inbounds %struct.Reg, %struct.Reg* %1800, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %1801 to i64*
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1803 = getelementptr inbounds %struct.GPR, %struct.GPR* %1802, i32 0, i32 5
  %1804 = getelementptr inbounds %struct.Reg, %struct.Reg* %1803, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %1804 to i64*
  %1805 = load i64, i64* %RAX.i167
  %1806 = add i64 %1805, 72456
  %1807 = load i64, i64* %PC.i166
  %1808 = add i64 %1807, 6
  store i64 %1808, i64* %PC.i166
  %1809 = inttoptr i64 %1806 to i32*
  %1810 = load i32, i32* %1809
  %1811 = zext i32 %1810 to i64
  store i64 %1811, i64* %RCX.i168, align 8
  store %struct.Memory* %loadMem_42a78f, %struct.Memory** %MEMORY
  %loadMem_42a795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 33
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %1814 to i64*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 1
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %1817 to i64*
  %1818 = load i64, i64* %PC.i164
  %1819 = add i64 %1818, 8
  store i64 %1819, i64* %PC.i164
  %1820 = load i64, i64* bitcast (%G_0x710a50_type* @G_0x710a50 to i64*)
  store i64 %1820, i64* %RAX.i165, align 8
  store %struct.Memory* %loadMem_42a795, %struct.Memory** %MEMORY
  %loadMem_42a79d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1822 = getelementptr inbounds %struct.GPR, %struct.GPR* %1821, i32 0, i32 33
  %1823 = getelementptr inbounds %struct.Reg, %struct.Reg* %1822, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %1823 to i64*
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 5
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %ECX.i162 = bitcast %union.anon* %1826 to i32*
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 1
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %1829 to i64*
  %1830 = load i64, i64* %RAX.i163
  %1831 = add i64 %1830, 4
  %1832 = load i32, i32* %ECX.i162
  %1833 = zext i32 %1832 to i64
  %1834 = load i64, i64* %PC.i161
  %1835 = add i64 %1834, 3
  store i64 %1835, i64* %PC.i161
  %1836 = inttoptr i64 %1831 to i32*
  store i32 %1832, i32* %1836
  store %struct.Memory* %loadMem_42a79d, %struct.Memory** %MEMORY
  %loadMem_42a7a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 33
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %1839 to i64*
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 1
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %1842 to i64*
  %1843 = load i64, i64* %PC.i159
  %1844 = add i64 %1843, 8
  store i64 %1844, i64* %PC.i159
  %1845 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1845, i64* %RAX.i160, align 8
  store %struct.Memory* %loadMem_42a7a0, %struct.Memory** %MEMORY
  %loadMem_42a7a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1847 = getelementptr inbounds %struct.GPR, %struct.GPR* %1846, i32 0, i32 33
  %1848 = getelementptr inbounds %struct.Reg, %struct.Reg* %1847, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %1848 to i64*
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1850 = getelementptr inbounds %struct.GPR, %struct.GPR* %1849, i32 0, i32 5
  %1851 = getelementptr inbounds %struct.Reg, %struct.Reg* %1850, i32 0, i32 0
  %ECX.i157 = bitcast %union.anon* %1851 to i32*
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 1
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %1854 to i64*
  %1855 = load i64, i64* %RAX.i158
  %1856 = add i64 %1855, 72460
  %1857 = load i32, i32* %ECX.i157
  %1858 = zext i32 %1857 to i64
  %1859 = load i64, i64* %PC.i156
  %1860 = add i64 %1859, 6
  store i64 %1860, i64* %PC.i156
  %1861 = inttoptr i64 %1856 to i32*
  store i32 %1857, i32* %1861
  store %struct.Memory* %loadMem_42a7a8, %struct.Memory** %MEMORY
  %loadMem_42a7ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 33
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %1864 to i64*
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 1
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %1867 to i64*
  %1868 = load i64, i64* %PC.i154
  %1869 = add i64 %1868, 8
  store i64 %1869, i64* %PC.i154
  %1870 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1870, i64* %RAX.i155, align 8
  store %struct.Memory* %loadMem_42a7ae, %struct.Memory** %MEMORY
  %loadMem_42a7b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 33
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %1873 to i64*
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 1
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %1876 to i64*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 5
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %1879 to i64*
  %1880 = load i64, i64* %RAX.i152
  %1881 = add i64 %1880, 72448
  %1882 = load i64, i64* %PC.i151
  %1883 = add i64 %1882, 6
  store i64 %1883, i64* %PC.i151
  %1884 = inttoptr i64 %1881 to i32*
  %1885 = load i32, i32* %1884
  %1886 = zext i32 %1885 to i64
  store i64 %1886, i64* %RCX.i153, align 8
  store %struct.Memory* %loadMem_42a7b6, %struct.Memory** %MEMORY
  %loadMem_42a7bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1888 = getelementptr inbounds %struct.GPR, %struct.GPR* %1887, i32 0, i32 33
  %1889 = getelementptr inbounds %struct.Reg, %struct.Reg* %1888, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %1889 to i64*
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 1
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %RAX.i150 = bitcast %union.anon* %1892 to i64*
  %1893 = load i64, i64* %PC.i149
  %1894 = add i64 %1893, 8
  store i64 %1894, i64* %PC.i149
  %1895 = load i64, i64* bitcast (%G_0x710a50_type* @G_0x710a50 to i64*)
  store i64 %1895, i64* %RAX.i150, align 8
  store %struct.Memory* %loadMem_42a7bc, %struct.Memory** %MEMORY
  %loadMem_42a7c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 33
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %1898 to i64*
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 5
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %ECX.i147 = bitcast %union.anon* %1901 to i32*
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1903 = getelementptr inbounds %struct.GPR, %struct.GPR* %1902, i32 0, i32 1
  %1904 = getelementptr inbounds %struct.Reg, %struct.Reg* %1903, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %1904 to i64*
  %1905 = load i64, i64* %RAX.i148
  %1906 = add i64 %1905, 8
  %1907 = load i32, i32* %ECX.i147
  %1908 = zext i32 %1907 to i64
  %1909 = load i64, i64* %PC.i146
  %1910 = add i64 %1909, 3
  store i64 %1910, i64* %PC.i146
  %1911 = inttoptr i64 %1906 to i32*
  store i32 %1907, i32* %1911
  store %struct.Memory* %loadMem_42a7c4, %struct.Memory** %MEMORY
  %loadMem_42a7c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 33
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %1914 to i64*
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 1
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %1917 to i64*
  %1918 = load i64, i64* %PC.i144
  %1919 = add i64 %1918, 8
  store i64 %1919, i64* %PC.i144
  %1920 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1920, i64* %RAX.i145, align 8
  store %struct.Memory* %loadMem_42a7c7, %struct.Memory** %MEMORY
  %loadMem_42a7cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 33
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %1923 to i64*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 1
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %RAX.i142 = bitcast %union.anon* %1926 to i64*
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 5
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %RCX.i143 = bitcast %union.anon* %1929 to i64*
  %1930 = load i64, i64* %RAX.i142
  %1931 = add i64 %1930, 72452
  %1932 = load i64, i64* %PC.i141
  %1933 = add i64 %1932, 6
  store i64 %1933, i64* %PC.i141
  %1934 = inttoptr i64 %1931 to i32*
  %1935 = load i32, i32* %1934
  %1936 = zext i32 %1935 to i64
  store i64 %1936, i64* %RCX.i143, align 8
  store %struct.Memory* %loadMem_42a7cf, %struct.Memory** %MEMORY
  %loadMem_42a7d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 33
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %1939 to i64*
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 1
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %1942 to i64*
  %1943 = load i64, i64* %PC.i139
  %1944 = add i64 %1943, 8
  store i64 %1944, i64* %PC.i139
  %1945 = load i64, i64* bitcast (%G_0x710a50_type* @G_0x710a50 to i64*)
  store i64 %1945, i64* %RAX.i140, align 8
  store %struct.Memory* %loadMem_42a7d5, %struct.Memory** %MEMORY
  %loadMem_42a7dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 33
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %1948 to i64*
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1950 = getelementptr inbounds %struct.GPR, %struct.GPR* %1949, i32 0, i32 5
  %1951 = getelementptr inbounds %struct.Reg, %struct.Reg* %1950, i32 0, i32 0
  %ECX.i137 = bitcast %union.anon* %1951 to i32*
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1953 = getelementptr inbounds %struct.GPR, %struct.GPR* %1952, i32 0, i32 1
  %1954 = getelementptr inbounds %struct.Reg, %struct.Reg* %1953, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %1954 to i64*
  %1955 = load i64, i64* %RAX.i138
  %1956 = add i64 %1955, 12
  %1957 = load i32, i32* %ECX.i137
  %1958 = zext i32 %1957 to i64
  %1959 = load i64, i64* %PC.i136
  %1960 = add i64 %1959, 3
  store i64 %1960, i64* %PC.i136
  %1961 = inttoptr i64 %1956 to i32*
  store i32 %1957, i32* %1961
  store %struct.Memory* %loadMem_42a7dd, %struct.Memory** %MEMORY
  %loadMem_42a7e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 33
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %1964 to i64*
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 1
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %1967 to i64*
  %1968 = load i64, i64* %PC.i134
  %1969 = add i64 %1968, 8
  store i64 %1969, i64* %PC.i134
  %1970 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1970, i64* %RAX.i135, align 8
  store %struct.Memory* %loadMem_42a7e0, %struct.Memory** %MEMORY
  %loadMem_42a7e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1972 = getelementptr inbounds %struct.GPR, %struct.GPR* %1971, i32 0, i32 33
  %1973 = getelementptr inbounds %struct.Reg, %struct.Reg* %1972, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %1973 to i64*
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 1
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %1976 to i64*
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 5
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %RCX.i133 = bitcast %union.anon* %1979 to i64*
  %1980 = load i64, i64* %RAX.i132
  %1981 = add i64 %1980, 72456
  %1982 = load i64, i64* %PC.i131
  %1983 = add i64 %1982, 6
  store i64 %1983, i64* %PC.i131
  %1984 = inttoptr i64 %1981 to i32*
  %1985 = load i32, i32* %1984
  %1986 = zext i32 %1985 to i64
  store i64 %1986, i64* %RCX.i133, align 8
  store %struct.Memory* %loadMem_42a7e8, %struct.Memory** %MEMORY
  %loadMem_42a7ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1988 = getelementptr inbounds %struct.GPR, %struct.GPR* %1987, i32 0, i32 33
  %1989 = getelementptr inbounds %struct.Reg, %struct.Reg* %1988, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %1989 to i64*
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 1
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %1992 to i64*
  %1993 = load i64, i64* %PC.i129
  %1994 = add i64 %1993, 8
  store i64 %1994, i64* %PC.i129
  %1995 = load i64, i64* bitcast (%G_0x710a50_type* @G_0x710a50 to i64*)
  store i64 %1995, i64* %RAX.i130, align 8
  store %struct.Memory* %loadMem_42a7ee, %struct.Memory** %MEMORY
  %loadMem_42a7f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1997 = getelementptr inbounds %struct.GPR, %struct.GPR* %1996, i32 0, i32 33
  %1998 = getelementptr inbounds %struct.Reg, %struct.Reg* %1997, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %1998 to i64*
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2000 = getelementptr inbounds %struct.GPR, %struct.GPR* %1999, i32 0, i32 5
  %2001 = getelementptr inbounds %struct.Reg, %struct.Reg* %2000, i32 0, i32 0
  %ECX.i127 = bitcast %union.anon* %2001 to i32*
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 1
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %RAX.i128 = bitcast %union.anon* %2004 to i64*
  %2005 = load i64, i64* %RAX.i128
  %2006 = add i64 %2005, 16
  %2007 = load i32, i32* %ECX.i127
  %2008 = zext i32 %2007 to i64
  %2009 = load i64, i64* %PC.i126
  %2010 = add i64 %2009, 3
  store i64 %2010, i64* %PC.i126
  %2011 = inttoptr i64 %2006 to i32*
  store i32 %2007, i32* %2011
  store %struct.Memory* %loadMem_42a7f6, %struct.Memory** %MEMORY
  %loadMem_42a7f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 33
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %2014 to i64*
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 1
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %2017 to i64*
  %2018 = load i64, i64* %PC.i124
  %2019 = add i64 %2018, 8
  store i64 %2019, i64* %PC.i124
  %2020 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2020, i64* %RAX.i125, align 8
  store %struct.Memory* %loadMem_42a7f9, %struct.Memory** %MEMORY
  %loadMem_42a801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2022 = getelementptr inbounds %struct.GPR, %struct.GPR* %2021, i32 0, i32 33
  %2023 = getelementptr inbounds %struct.Reg, %struct.Reg* %2022, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %2023 to i64*
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2025 = getelementptr inbounds %struct.GPR, %struct.GPR* %2024, i32 0, i32 1
  %2026 = getelementptr inbounds %struct.Reg, %struct.Reg* %2025, i32 0, i32 0
  %RAX.i122 = bitcast %union.anon* %2026 to i64*
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2028 = getelementptr inbounds %struct.GPR, %struct.GPR* %2027, i32 0, i32 5
  %2029 = getelementptr inbounds %struct.Reg, %struct.Reg* %2028, i32 0, i32 0
  %RCX.i123 = bitcast %union.anon* %2029 to i64*
  %2030 = load i64, i64* %RAX.i122
  %2031 = add i64 %2030, 72464
  %2032 = load i64, i64* %PC.i121
  %2033 = add i64 %2032, 6
  store i64 %2033, i64* %PC.i121
  %2034 = inttoptr i64 %2031 to i32*
  %2035 = load i32, i32* %2034
  %2036 = zext i32 %2035 to i64
  store i64 %2036, i64* %RCX.i123, align 8
  store %struct.Memory* %loadMem_42a801, %struct.Memory** %MEMORY
  %loadMem_42a807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 33
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %2039 to i64*
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 1
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %RAX.i120 = bitcast %union.anon* %2042 to i64*
  %2043 = load i64, i64* %PC.i119
  %2044 = add i64 %2043, 8
  store i64 %2044, i64* %PC.i119
  %2045 = load i64, i64* bitcast (%G_0x710a50_type* @G_0x710a50 to i64*)
  store i64 %2045, i64* %RAX.i120, align 8
  store %struct.Memory* %loadMem_42a807, %struct.Memory** %MEMORY
  %loadMem_42a80f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2047 = getelementptr inbounds %struct.GPR, %struct.GPR* %2046, i32 0, i32 33
  %2048 = getelementptr inbounds %struct.Reg, %struct.Reg* %2047, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2048 to i64*
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2050 = getelementptr inbounds %struct.GPR, %struct.GPR* %2049, i32 0, i32 5
  %2051 = getelementptr inbounds %struct.Reg, %struct.Reg* %2050, i32 0, i32 0
  %ECX.i117 = bitcast %union.anon* %2051 to i32*
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2053 = getelementptr inbounds %struct.GPR, %struct.GPR* %2052, i32 0, i32 1
  %2054 = getelementptr inbounds %struct.Reg, %struct.Reg* %2053, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %2054 to i64*
  %2055 = load i64, i64* %RAX.i118
  %2056 = add i64 %2055, 6364
  %2057 = load i32, i32* %ECX.i117
  %2058 = zext i32 %2057 to i64
  %2059 = load i64, i64* %PC.i116
  %2060 = add i64 %2059, 6
  store i64 %2060, i64* %PC.i116
  %2061 = inttoptr i64 %2056 to i32*
  store i32 %2057, i32* %2061
  store %struct.Memory* %loadMem_42a80f, %struct.Memory** %MEMORY
  %loadMem_42a815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 33
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %2064 to i64*
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2066 = getelementptr inbounds %struct.GPR, %struct.GPR* %2065, i32 0, i32 1
  %2067 = getelementptr inbounds %struct.Reg, %struct.Reg* %2066, i32 0, i32 0
  %RAX.i115 = bitcast %union.anon* %2067 to i64*
  %2068 = load i64, i64* %PC.i114
  %2069 = add i64 %2068, 8
  store i64 %2069, i64* %PC.i114
  %2070 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2070, i64* %RAX.i115, align 8
  store %struct.Memory* %loadMem_42a815, %struct.Memory** %MEMORY
  %loadMem_42a81d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2072 = getelementptr inbounds %struct.GPR, %struct.GPR* %2071, i32 0, i32 33
  %2073 = getelementptr inbounds %struct.Reg, %struct.Reg* %2072, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %2073 to i64*
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2075 = getelementptr inbounds %struct.GPR, %struct.GPR* %2074, i32 0, i32 1
  %2076 = getelementptr inbounds %struct.Reg, %struct.Reg* %2075, i32 0, i32 0
  %RAX.i112 = bitcast %union.anon* %2076 to i64*
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 5
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %RCX.i113 = bitcast %union.anon* %2079 to i64*
  %2080 = load i64, i64* %RAX.i112
  %2081 = add i64 %2080, 72464
  %2082 = load i64, i64* %PC.i111
  %2083 = add i64 %2082, 6
  store i64 %2083, i64* %PC.i111
  %2084 = inttoptr i64 %2081 to i32*
  %2085 = load i32, i32* %2084
  %2086 = zext i32 %2085 to i64
  store i64 %2086, i64* %RCX.i113, align 8
  store %struct.Memory* %loadMem_42a81d, %struct.Memory** %MEMORY
  %loadMem_42a823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2088 = getelementptr inbounds %struct.GPR, %struct.GPR* %2087, i32 0, i32 33
  %2089 = getelementptr inbounds %struct.Reg, %struct.Reg* %2088, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %2089 to i64*
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 1
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %RAX.i110 = bitcast %union.anon* %2092 to i64*
  %2093 = load i64, i64* %PC.i109
  %2094 = add i64 %2093, 8
  store i64 %2094, i64* %PC.i109
  %2095 = load i64, i64* bitcast (%G_0x710a50_type* @G_0x710a50 to i64*)
  store i64 %2095, i64* %RAX.i110, align 8
  store %struct.Memory* %loadMem_42a823, %struct.Memory** %MEMORY
  %loadMem_42a82b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 33
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %2098 to i64*
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2100 = getelementptr inbounds %struct.GPR, %struct.GPR* %2099, i32 0, i32 5
  %2101 = getelementptr inbounds %struct.Reg, %struct.Reg* %2100, i32 0, i32 0
  %ECX.i107 = bitcast %union.anon* %2101 to i32*
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2103 = getelementptr inbounds %struct.GPR, %struct.GPR* %2102, i32 0, i32 1
  %2104 = getelementptr inbounds %struct.Reg, %struct.Reg* %2103, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %2104 to i64*
  %2105 = load i64, i64* %RAX.i108
  %2106 = add i64 %2105, 6360
  %2107 = load i32, i32* %ECX.i107
  %2108 = zext i32 %2107 to i64
  %2109 = load i64, i64* %PC.i106
  %2110 = add i64 %2109, 6
  store i64 %2110, i64* %PC.i106
  %2111 = inttoptr i64 %2106 to i32*
  store i32 %2107, i32* %2111
  store %struct.Memory* %loadMem_42a82b, %struct.Memory** %MEMORY
  %loadMem_42a831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 33
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %2114 to i64*
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 1
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %2117 to i64*
  %2118 = load i64, i64* %PC.i104
  %2119 = add i64 %2118, 8
  store i64 %2119, i64* %PC.i104
  %2120 = load i64, i64* bitcast (%G_0x710a50_type* @G_0x710a50 to i64*)
  store i64 %2120, i64* %RAX.i105, align 8
  store %struct.Memory* %loadMem_42a831, %struct.Memory** %MEMORY
  %loadMem_42a839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 33
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %2123 to i64*
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 1
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %2126 to i64*
  %2127 = load i64, i64* %RAX.i103
  %2128 = add i64 %2127, 6412
  %2129 = load i64, i64* %PC.i102
  %2130 = add i64 %2129, 10
  store i64 %2130, i64* %PC.i102
  %2131 = inttoptr i64 %2128 to i32*
  store i32 1, i32* %2131
  store %struct.Memory* %loadMem_42a839, %struct.Memory** %MEMORY
  %loadMem_42a843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 33
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %2134 to i64*
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 1
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %2137 to i64*
  %2138 = load i64, i64* %PC.i100
  %2139 = add i64 %2138, 8
  store i64 %2139, i64* %PC.i100
  %2140 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %2140, i64* %RAX.i101, align 8
  store %struct.Memory* %loadMem_42a843, %struct.Memory** %MEMORY
  %loadMem_42a84b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 33
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %2143 to i64*
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2145 = getelementptr inbounds %struct.GPR, %struct.GPR* %2144, i32 0, i32 1
  %2146 = getelementptr inbounds %struct.Reg, %struct.Reg* %2145, i32 0, i32 0
  %RAX.i99 = bitcast %union.anon* %2146 to i64*
  %2147 = load i64, i64* %RAX.i99
  %2148 = add i64 %2147, 2884
  %2149 = load i64, i64* %PC.i98
  %2150 = add i64 %2149, 7
  store i64 %2150, i64* %PC.i98
  %2151 = inttoptr i64 %2148 to i32*
  %2152 = load i32, i32* %2151
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2153, align 1
  %2154 = and i32 %2152, 255
  %2155 = call i32 @llvm.ctpop.i32(i32 %2154)
  %2156 = trunc i32 %2155 to i8
  %2157 = and i8 %2156, 1
  %2158 = xor i8 %2157, 1
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2158, i8* %2159, align 1
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2160, align 1
  %2161 = icmp eq i32 %2152, 0
  %2162 = zext i1 %2161 to i8
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2162, i8* %2163, align 1
  %2164 = lshr i32 %2152, 31
  %2165 = trunc i32 %2164 to i8
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2165, i8* %2166, align 1
  %2167 = lshr i32 %2152, 31
  %2168 = xor i32 %2164, %2167
  %2169 = add i32 %2168, %2167
  %2170 = icmp eq i32 %2169, 2
  %2171 = zext i1 %2170 to i8
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2171, i8* %2172, align 1
  store %struct.Memory* %loadMem_42a84b, %struct.Memory** %MEMORY
  %loadMem_42a852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 33
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %2175 to i64*
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2177 = getelementptr inbounds %struct.GPR, %struct.GPR* %2176, i32 0, i32 19
  %2178 = getelementptr inbounds %struct.Reg, %struct.Reg* %2177, i32 0, i32 0
  %2179 = bitcast %union.anon* %2178 to %struct.anon.2*
  %R9B.i97 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2179, i32 0, i32 0
  %2180 = load i64, i64* %PC.i96
  %2181 = add i64 %2180, 4
  store i64 %2181, i64* %PC.i96
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2183 = load i8, i8* %2182, align 1
  %2184 = icmp eq i8 %2183, 0
  %2185 = zext i1 %2184 to i8
  store i8 %2185, i8* %R9B.i97, align 1
  store %struct.Memory* %loadMem_42a852, %struct.Memory** %MEMORY
  %loadMem_42a856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2187 = getelementptr inbounds %struct.GPR, %struct.GPR* %2186, i32 0, i32 33
  %2188 = getelementptr inbounds %struct.Reg, %struct.Reg* %2187, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %2188 to i64*
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 19
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %2192 = bitcast %union.anon* %2191 to %struct.anon.2*
  %R9B.i95 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2192, i32 0, i32 0
  %2193 = load i8, i8* %R9B.i95
  %2194 = zext i8 %2193 to i64
  %2195 = load i64, i64* %PC.i94
  %2196 = add i64 %2195, 4
  store i64 %2196, i64* %PC.i94
  %2197 = and i64 1, %2194
  %2198 = trunc i64 %2197 to i8
  store i8 %2198, i8* %R9B.i95, align 1
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2199, align 1
  %2200 = trunc i64 %2197 to i32
  %2201 = and i32 %2200, 255
  %2202 = call i32 @llvm.ctpop.i32(i32 %2201)
  %2203 = trunc i32 %2202 to i8
  %2204 = and i8 %2203, 1
  %2205 = xor i8 %2204, 1
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2205, i8* %2206, align 1
  %2207 = icmp eq i8 %2198, 0
  %2208 = zext i1 %2207 to i8
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2208, i8* %2209, align 1
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2210, align 1
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2211, align 1
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2212, align 1
  store %struct.Memory* %loadMem_42a856, %struct.Memory** %MEMORY
  %loadMem_42a85a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 33
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %2215 to i64*
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 19
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %2219 = bitcast %union.anon* %2218 to %struct.anon.2*
  %R9B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2219, i32 0, i32 0
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 5
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %RCX.i93 = bitcast %union.anon* %2222 to i64*
  %2223 = load i8, i8* %R9B.i
  %2224 = zext i8 %2223 to i64
  %2225 = load i64, i64* %PC.i92
  %2226 = add i64 %2225, 4
  store i64 %2226, i64* %PC.i92
  %2227 = and i64 %2224, 255
  store i64 %2227, i64* %RCX.i93, align 8
  store %struct.Memory* %loadMem_42a85a, %struct.Memory** %MEMORY
  %loadMem_42a85e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 33
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %2230 to i64*
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 1
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %2233 to i64*
  %2234 = load i64, i64* %PC.i90
  %2235 = add i64 %2234, 8
  store i64 %2235, i64* %PC.i90
  %2236 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2236, i64* %RAX.i91, align 8
  store %struct.Memory* %loadMem_42a85e, %struct.Memory** %MEMORY
  %loadMem_42a866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2238 = getelementptr inbounds %struct.GPR, %struct.GPR* %2237, i32 0, i32 33
  %2239 = getelementptr inbounds %struct.Reg, %struct.Reg* %2238, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %2239 to i64*
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2241 = getelementptr inbounds %struct.GPR, %struct.GPR* %2240, i32 0, i32 5
  %2242 = getelementptr inbounds %struct.Reg, %struct.Reg* %2241, i32 0, i32 0
  %ECX.i88 = bitcast %union.anon* %2242 to i32*
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 1
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %2245 to i64*
  %2246 = load i64, i64* %RAX.i89
  %2247 = add i64 %2246, 72400
  %2248 = load i32, i32* %ECX.i88
  %2249 = zext i32 %2248 to i64
  %2250 = load i64, i64* %PC.i87
  %2251 = add i64 %2250, 6
  store i64 %2251, i64* %PC.i87
  %2252 = inttoptr i64 %2247 to i32*
  store i32 %2248, i32* %2252
  store %struct.Memory* %loadMem_42a866, %struct.Memory** %MEMORY
  %loadMem_42a86c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 33
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %2255 to i64*
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 1
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %2258 to i64*
  %2259 = load i64, i64* %PC.i85
  %2260 = add i64 %2259, 8
  store i64 %2260, i64* %PC.i85
  %2261 = load i64, i64* bitcast (%G_0x710a50_type* @G_0x710a50 to i64*)
  store i64 %2261, i64* %RAX.i86, align 8
  store %struct.Memory* %loadMem_42a86c, %struct.Memory** %MEMORY
  %loadMem_42a874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2263 = getelementptr inbounds %struct.GPR, %struct.GPR* %2262, i32 0, i32 33
  %2264 = getelementptr inbounds %struct.Reg, %struct.Reg* %2263, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %2264 to i64*
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 5
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2267 to i32*
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2269 = getelementptr inbounds %struct.GPR, %struct.GPR* %2268, i32 0, i32 1
  %2270 = getelementptr inbounds %struct.Reg, %struct.Reg* %2269, i32 0, i32 0
  %RAX.i84 = bitcast %union.anon* %2270 to i64*
  %2271 = load i64, i64* %RAX.i84
  %2272 = add i64 %2271, 6416
  %2273 = load i32, i32* %ECX.i
  %2274 = zext i32 %2273 to i64
  %2275 = load i64, i64* %PC.i83
  %2276 = add i64 %2275, 6
  store i64 %2276, i64* %PC.i83
  %2277 = inttoptr i64 %2272 to i32*
  store i32 %2273, i32* %2277
  store %struct.Memory* %loadMem_42a874, %struct.Memory** %MEMORY
  %loadMem_42a87a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2279 = getelementptr inbounds %struct.GPR, %struct.GPR* %2278, i32 0, i32 33
  %2280 = getelementptr inbounds %struct.Reg, %struct.Reg* %2279, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %2280 to i64*
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 1
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %2283 to i64*
  %2284 = load i64, i64* %PC.i81
  %2285 = add i64 %2284, 8
  store i64 %2285, i64* %PC.i81
  %2286 = load i64, i64* bitcast (%G_0x710a50_type* @G_0x710a50 to i64*)
  store i64 %2286, i64* %RAX.i82, align 8
  store %struct.Memory* %loadMem_42a87a, %struct.Memory** %MEMORY
  %loadMem_42a882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 33
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %2289 to i64*
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 1
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %2292 to i64*
  %2293 = load i64, i64* %RAX.i80
  %2294 = load i64, i64* %PC.i79
  %2295 = add i64 %2294, 8
  store i64 %2295, i64* %PC.i79
  store i64 %2293, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store %struct.Memory* %loadMem_42a882, %struct.Memory** %MEMORY
  %loadMem1_42a88a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 33
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %2298 to i64*
  %2299 = load i64, i64* %PC.i78
  %2300 = add i64 %2299, 7958
  %2301 = load i64, i64* %PC.i78
  %2302 = add i64 %2301, 5
  %2303 = load i64, i64* %PC.i78
  %2304 = add i64 %2303, 5
  store i64 %2304, i64* %PC.i78
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2306 = load i64, i64* %2305, align 8
  %2307 = add i64 %2306, -8
  %2308 = inttoptr i64 %2307 to i64*
  store i64 %2302, i64* %2308
  store i64 %2307, i64* %2305, align 8
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2300, i64* %2309, align 8
  store %struct.Memory* %loadMem1_42a88a, %struct.Memory** %MEMORY
  %loadMem2_42a88a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a88a = load i64, i64* %3
  %call2_42a88a = call %struct.Memory* @sub_42c7a0.copy_params(%struct.State* %0, i64 %loadPC_42a88a, %struct.Memory* %loadMem2_42a88a)
  store %struct.Memory* %call2_42a88a, %struct.Memory** %MEMORY
  br label %block_.L_42a88f

block_.L_42a88f:                                  ; preds = %block_.L_42a742, %block_42a5f0
  %loadMem_42a88f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 33
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %2312 to i64*
  %2313 = load i64, i64* %PC.i77
  %2314 = add i64 %2313, 5
  %2315 = load i64, i64* %PC.i77
  %2316 = add i64 %2315, 5
  store i64 %2316, i64* %PC.i77
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2314, i64* %2317, align 8
  store %struct.Memory* %loadMem_42a88f, %struct.Memory** %MEMORY
  br label %block_.L_42a894

block_.L_42a894:                                  ; preds = %block_.L_42a88f, %block_42a494
  %loadMem_42a894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2319 = getelementptr inbounds %struct.GPR, %struct.GPR* %2318, i32 0, i32 33
  %2320 = getelementptr inbounds %struct.Reg, %struct.Reg* %2319, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %2320 to i64*
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2322 = getelementptr inbounds %struct.GPR, %struct.GPR* %2321, i32 0, i32 1
  %2323 = getelementptr inbounds %struct.Reg, %struct.Reg* %2322, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %2323 to i64*
  %2324 = load i64, i64* %PC.i75
  %2325 = add i64 %2324, 8
  store i64 %2325, i64* %PC.i75
  %2326 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %2326, i64* %RAX.i76, align 8
  store %struct.Memory* %loadMem_42a894, %struct.Memory** %MEMORY
  %loadMem_42a89c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 33
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %2329 to i64*
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 1
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %2332 to i64*
  %2333 = load i64, i64* %RAX.i74
  %2334 = add i64 %2333, 1468
  %2335 = load i64, i64* %PC.i73
  %2336 = add i64 %2335, 10
  store i64 %2336, i64* %PC.i73
  %2337 = inttoptr i64 %2334 to i32*
  store i32 0, i32* %2337
  store %struct.Memory* %loadMem_42a89c, %struct.Memory** %MEMORY
  %loadMem_42a8a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 33
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %2340 to i64*
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 1
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %RAX.i72 = bitcast %union.anon* %2343 to i64*
  %2344 = load i64, i64* %PC.i71
  %2345 = add i64 %2344, 8
  store i64 %2345, i64* %PC.i71
  %2346 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %2346, i64* %RAX.i72, align 8
  store %struct.Memory* %loadMem_42a8a6, %struct.Memory** %MEMORY
  %loadMem_42a8ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 33
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %2349 to i64*
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 1
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %2352 to i64*
  %2353 = load i64, i64* %RAX.i70
  %2354 = load i64, i64* %PC.i69
  %2355 = add i64 %2354, 6
  store i64 %2355, i64* %PC.i69
  %2356 = add i64 1468, %2353
  store i64 %2356, i64* %RAX.i70, align 8
  %2357 = icmp ult i64 %2356, %2353
  %2358 = icmp ult i64 %2356, 1468
  %2359 = or i1 %2357, %2358
  %2360 = zext i1 %2359 to i8
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2360, i8* %2361, align 1
  %2362 = trunc i64 %2356 to i32
  %2363 = and i32 %2362, 255
  %2364 = call i32 @llvm.ctpop.i32(i32 %2363)
  %2365 = trunc i32 %2364 to i8
  %2366 = and i8 %2365, 1
  %2367 = xor i8 %2366, 1
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2367, i8* %2368, align 1
  %2369 = xor i64 1468, %2353
  %2370 = xor i64 %2369, %2356
  %2371 = lshr i64 %2370, 4
  %2372 = trunc i64 %2371 to i8
  %2373 = and i8 %2372, 1
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2373, i8* %2374, align 1
  %2375 = icmp eq i64 %2356, 0
  %2376 = zext i1 %2375 to i8
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2376, i8* %2377, align 1
  %2378 = lshr i64 %2356, 63
  %2379 = trunc i64 %2378 to i8
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2379, i8* %2380, align 1
  %2381 = lshr i64 %2353, 63
  %2382 = xor i64 %2378, %2381
  %2383 = add i64 %2382, %2378
  %2384 = icmp eq i64 %2383, 2
  %2385 = zext i1 %2384 to i8
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2385, i8* %2386, align 1
  store %struct.Memory* %loadMem_42a8ae, %struct.Memory** %MEMORY
  %loadMem_42a8b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 33
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %2389 to i64*
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 5
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %2392 to i64*
  %2393 = load i64, i64* %PC.i67
  %2394 = add i64 %2393, 8
  store i64 %2394, i64* %PC.i67
  %2395 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %2395, i64* %RCX.i68, align 8
  store %struct.Memory* %loadMem_42a8b4, %struct.Memory** %MEMORY
  %loadMem_42a8bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2397 = getelementptr inbounds %struct.GPR, %struct.GPR* %2396, i32 0, i32 33
  %2398 = getelementptr inbounds %struct.Reg, %struct.Reg* %2397, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %2398 to i64*
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2400 = getelementptr inbounds %struct.GPR, %struct.GPR* %2399, i32 0, i32 1
  %2401 = getelementptr inbounds %struct.Reg, %struct.Reg* %2400, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %2401 to i64*
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2403 = getelementptr inbounds %struct.GPR, %struct.GPR* %2402, i32 0, i32 5
  %2404 = getelementptr inbounds %struct.Reg, %struct.Reg* %2403, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2404 to i64*
  %2405 = load i64, i64* %RCX.i
  %2406 = add i64 %2405, 1480
  %2407 = load i64, i64* %RAX.i66
  %2408 = load i64, i64* %PC.i65
  %2409 = add i64 %2408, 7
  store i64 %2409, i64* %PC.i65
  %2410 = inttoptr i64 %2406 to i64*
  store i64 %2407, i64* %2410
  store %struct.Memory* %loadMem_42a8bc, %struct.Memory** %MEMORY
  %loadMem_42a8c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 33
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %2413 to i64*
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2415 = getelementptr inbounds %struct.GPR, %struct.GPR* %2414, i32 0, i32 1
  %2416 = getelementptr inbounds %struct.Reg, %struct.Reg* %2415, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %2416 to i64*
  %2417 = load i64, i64* %PC.i63
  %2418 = add i64 %2417, 8
  store i64 %2418, i64* %PC.i63
  %2419 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2419, i64* %RAX.i64, align 8
  store %struct.Memory* %loadMem_42a8c3, %struct.Memory** %MEMORY
  %loadMem_42a8cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 33
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %2422 to i64*
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2424 = getelementptr inbounds %struct.GPR, %struct.GPR* %2423, i32 0, i32 1
  %2425 = getelementptr inbounds %struct.Reg, %struct.Reg* %2424, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %2425 to i64*
  %2426 = load i64, i64* %RAX.i62
  %2427 = add i64 %2426, 71800
  %2428 = load i64, i64* %PC.i61
  %2429 = add i64 %2428, 10
  store i64 %2429, i64* %PC.i61
  %2430 = inttoptr i64 %2427 to i32*
  store i32 0, i32* %2430
  store %struct.Memory* %loadMem_42a8cb, %struct.Memory** %MEMORY
  %loadMem_42a8d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 33
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %2433 to i64*
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 11
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %2436 to i64*
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 15
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %2439 to i64*
  %2440 = load i64, i64* %RBP.i60
  %2441 = sub i64 %2440, 8
  %2442 = load i64, i64* %PC.i59
  %2443 = add i64 %2442, 4
  store i64 %2443, i64* %PC.i59
  %2444 = inttoptr i64 %2441 to i64*
  %2445 = load i64, i64* %2444
  store i64 %2445, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_42a8d5, %struct.Memory** %MEMORY
  %loadMem1_42a8d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 33
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %2448 to i64*
  %2449 = load i64, i64* %PC.i58
  %2450 = add i64 %2449, -11961
  %2451 = load i64, i64* %PC.i58
  %2452 = add i64 %2451, 5
  %2453 = load i64, i64* %PC.i58
  %2454 = add i64 %2453, 5
  store i64 %2454, i64* %PC.i58
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2456 = load i64, i64* %2455, align 8
  %2457 = add i64 %2456, -8
  %2458 = inttoptr i64 %2457 to i64*
  store i64 %2452, i64* %2458
  store i64 %2457, i64* %2455, align 8
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2450, i64* %2459, align 8
  store %struct.Memory* %loadMem1_42a8d9, %struct.Memory** %MEMORY
  %loadMem2_42a8d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a8d9 = load i64, i64* %3
  %call2_42a8d9 = call %struct.Memory* @sub_427a20.code_a_picture(%struct.State* %0, i64 %loadPC_42a8d9, %struct.Memory* %loadMem2_42a8d9)
  store %struct.Memory* %call2_42a8d9, %struct.Memory** %MEMORY
  %loadMem_42a8de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2461 = getelementptr inbounds %struct.GPR, %struct.GPR* %2460, i32 0, i32 33
  %2462 = getelementptr inbounds %struct.Reg, %struct.Reg* %2461, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %2462 to i64*
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 1
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %2465 to i64*
  %2466 = load i64, i64* %PC.i56
  %2467 = add i64 %2466, 8
  store i64 %2467, i64* %PC.i56
  %2468 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2468, i64* %RAX.i57, align 8
  store %struct.Memory* %loadMem_42a8de, %struct.Memory** %MEMORY
  %loadMem_42a8e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2470 = getelementptr inbounds %struct.GPR, %struct.GPR* %2469, i32 0, i32 33
  %2471 = getelementptr inbounds %struct.Reg, %struct.Reg* %2470, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %2471 to i64*
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2473 = getelementptr inbounds %struct.GPR, %struct.GPR* %2472, i32 0, i32 1
  %2474 = getelementptr inbounds %struct.Reg, %struct.Reg* %2473, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %2474 to i64*
  %2475 = load i64, i64* %RAX.i55
  %2476 = add i64 %2475, 14160
  %2477 = load i64, i64* %PC.i54
  %2478 = add i64 %2477, 7
  store i64 %2478, i64* %PC.i54
  %2479 = inttoptr i64 %2476 to i64*
  %2480 = load i64, i64* %2479
  store i64 %2480, i64* %RAX.i55, align 8
  store %struct.Memory* %loadMem_42a8e6, %struct.Memory** %MEMORY
  %loadMem_42a8ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 33
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %2483 to i64*
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 1
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %2486 to i64*
  %2487 = load i64, i64* %RAX.i53
  %2488 = add i64 %2487, 24
  %2489 = load i64, i64* %PC.i52
  %2490 = add i64 %2489, 4
  store i64 %2490, i64* %PC.i52
  %2491 = inttoptr i64 %2488 to i64*
  %2492 = load i64, i64* %2491
  store i64 %2492, i64* %RAX.i53, align 8
  store %struct.Memory* %loadMem_42a8ed, %struct.Memory** %MEMORY
  %loadMem_42a8f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 33
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %2495 to i64*
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 1
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %2498 to i64*
  %2499 = load i64, i64* %RAX.i51
  %2500 = load i64, i64* %PC.i50
  %2501 = add i64 %2500, 3
  store i64 %2501, i64* %PC.i50
  %2502 = inttoptr i64 %2499 to i64*
  %2503 = load i64, i64* %2502
  store i64 %2503, i64* %RAX.i51, align 8
  store %struct.Memory* %loadMem_42a8f1, %struct.Memory** %MEMORY
  %loadMem_42a8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 33
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %2506 to i64*
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 1
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %2509 to i64*
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 7
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %RDX.i49 = bitcast %union.anon* %2512 to i64*
  %2513 = load i64, i64* %RAX.i48
  %2514 = load i64, i64* %PC.i47
  %2515 = add i64 %2514, 2
  store i64 %2515, i64* %PC.i47
  %2516 = inttoptr i64 %2513 to i32*
  %2517 = load i32, i32* %2516
  %2518 = zext i32 %2517 to i64
  store i64 %2518, i64* %RDX.i49, align 8
  store %struct.Memory* %loadMem_42a8f4, %struct.Memory** %MEMORY
  %loadMem_42a8f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2520 = getelementptr inbounds %struct.GPR, %struct.GPR* %2519, i32 0, i32 33
  %2521 = getelementptr inbounds %struct.Reg, %struct.Reg* %2520, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %2521 to i64*
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 7
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %2524 to i64*
  %2525 = load i64, i64* %RDX.i
  %2526 = load i64, i64* %PC.i46
  %2527 = add i64 %2526, 3
  store i64 %2527, i64* %PC.i46
  %2528 = and i64 %2525, 4294967295
  %2529 = shl i64 %2528, 2
  %2530 = trunc i64 %2529 to i32
  %2531 = icmp slt i32 %2530, 0
  %2532 = shl i32 %2530, 1
  %2533 = zext i32 %2532 to i64
  store i64 %2533, i64* %RDX.i, align 8
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2535 = zext i1 %2531 to i8
  store i8 %2535, i8* %2534, align 1
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2537 = and i32 %2532, 254
  %2538 = call i32 @llvm.ctpop.i32(i32 %2537)
  %2539 = trunc i32 %2538 to i8
  %2540 = and i8 %2539, 1
  %2541 = xor i8 %2540, 1
  store i8 %2541, i8* %2536, align 1
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2542, align 1
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2544 = icmp eq i32 %2532, 0
  %2545 = zext i1 %2544 to i8
  store i8 %2545, i8* %2543, align 1
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2547 = lshr i32 %2532, 31
  %2548 = trunc i32 %2547 to i8
  store i8 %2548, i8* %2546, align 1
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2549, align 1
  store %struct.Memory* %loadMem_42a8f6, %struct.Memory** %MEMORY
  %loadMem_42a8f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2551 = getelementptr inbounds %struct.GPR, %struct.GPR* %2550, i32 0, i32 33
  %2552 = getelementptr inbounds %struct.Reg, %struct.Reg* %2551, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %2552 to i64*
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2554 = getelementptr inbounds %struct.GPR, %struct.GPR* %2553, i32 0, i32 1
  %2555 = getelementptr inbounds %struct.Reg, %struct.Reg* %2554, i32 0, i32 0
  %RAX.i44 = bitcast %union.anon* %2555 to i64*
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 15
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %2558 to i64*
  %2559 = load i64, i64* %RBP.i45
  %2560 = sub i64 %2559, 8
  %2561 = load i64, i64* %PC.i43
  %2562 = add i64 %2561, 4
  store i64 %2562, i64* %PC.i43
  %2563 = inttoptr i64 %2560 to i64*
  %2564 = load i64, i64* %2563
  store i64 %2564, i64* %RAX.i44, align 8
  store %struct.Memory* %loadMem_42a8f9, %struct.Memory** %MEMORY
  %loadMem_42a8fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 33
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %2567 to i64*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 7
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %2570 to i32*
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 1
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %RAX.i42 = bitcast %union.anon* %2573 to i64*
  %2574 = load i64, i64* %RAX.i42
  %2575 = add i64 %2574, 808
  %2576 = load i32, i32* %EDX.i
  %2577 = zext i32 %2576 to i64
  %2578 = load i64, i64* %PC.i41
  %2579 = add i64 %2578, 6
  store i64 %2579, i64* %PC.i41
  %2580 = inttoptr i64 %2575 to i32*
  store i32 %2576, i32* %2580
  store %struct.Memory* %loadMem_42a8fd, %struct.Memory** %MEMORY
  %loadMem_42a903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2582 = getelementptr inbounds %struct.GPR, %struct.GPR* %2581, i32 0, i32 33
  %2583 = getelementptr inbounds %struct.Reg, %struct.Reg* %2582, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %2583 to i64*
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2585 = getelementptr inbounds %struct.GPR, %struct.GPR* %2584, i32 0, i32 1
  %2586 = getelementptr inbounds %struct.Reg, %struct.Reg* %2585, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %2586 to i64*
  %2587 = load i64, i64* %PC.i39
  %2588 = add i64 %2587, 8
  store i64 %2588, i64* %PC.i39
  %2589 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2589, i64* %RAX.i40, align 8
  store %struct.Memory* %loadMem_42a903, %struct.Memory** %MEMORY
  %loadMem_42a90b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2591 = getelementptr inbounds %struct.GPR, %struct.GPR* %2590, i32 0, i32 33
  %2592 = getelementptr inbounds %struct.Reg, %struct.Reg* %2591, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %2592 to i64*
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2594 = getelementptr inbounds %struct.GPR, %struct.GPR* %2593, i32 0, i32 1
  %2595 = getelementptr inbounds %struct.Reg, %struct.Reg* %2594, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %2595 to i64*
  %2596 = load i64, i64* %RAX.i38
  %2597 = add i64 %2596, 28
  %2598 = load i64, i64* %PC.i37
  %2599 = add i64 %2598, 4
  store i64 %2599, i64* %PC.i37
  %2600 = inttoptr i64 %2597 to i32*
  %2601 = load i32, i32* %2600
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2602, align 1
  %2603 = and i32 %2601, 255
  %2604 = call i32 @llvm.ctpop.i32(i32 %2603)
  %2605 = trunc i32 %2604 to i8
  %2606 = and i8 %2605, 1
  %2607 = xor i8 %2606, 1
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2607, i8* %2608, align 1
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2609, align 1
  %2610 = icmp eq i32 %2601, 0
  %2611 = zext i1 %2610 to i8
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2611, i8* %2612, align 1
  %2613 = lshr i32 %2601, 31
  %2614 = trunc i32 %2613 to i8
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2614, i8* %2615, align 1
  %2616 = lshr i32 %2601, 31
  %2617 = xor i32 %2613, %2616
  %2618 = add i32 %2617, %2616
  %2619 = icmp eq i32 %2618, 2
  %2620 = zext i1 %2619 to i8
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2620, i8* %2621, align 1
  store %struct.Memory* %loadMem_42a90b, %struct.Memory** %MEMORY
  %loadMem_42a90f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 33
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %2624 to i64*
  %2625 = load i64, i64* %PC.i36
  %2626 = add i64 %2625, 85
  %2627 = load i64, i64* %PC.i36
  %2628 = add i64 %2627, 6
  %2629 = load i64, i64* %PC.i36
  %2630 = add i64 %2629, 6
  store i64 %2630, i64* %PC.i36
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2632 = load i8, i8* %2631, align 1
  %2633 = icmp eq i8 %2632, 0
  %2634 = zext i1 %2633 to i8
  store i8 %2634, i8* %BRANCH_TAKEN, align 1
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2636 = select i1 %2633, i64 %2626, i64 %2628
  store i64 %2636, i64* %2635, align 8
  store %struct.Memory* %loadMem_42a90f, %struct.Memory** %MEMORY
  %loadBr_42a90f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a90f = icmp eq i8 %loadBr_42a90f, 1
  br i1 %cmpBr_42a90f, label %block_.L_42a964, label %block_42a915

block_42a915:                                     ; preds = %block_.L_42a894
  %loadMem1_42a915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 33
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %2639 to i64*
  %2640 = load i64, i64* %PC.i35
  %2641 = add i64 %2640, 8123
  %2642 = load i64, i64* %PC.i35
  %2643 = add i64 %2642, 5
  %2644 = load i64, i64* %PC.i35
  %2645 = add i64 %2644, 5
  store i64 %2645, i64* %PC.i35
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2647 = load i64, i64* %2646, align 8
  %2648 = add i64 %2647, -8
  %2649 = inttoptr i64 %2648 to i64*
  store i64 %2643, i64* %2649
  store i64 %2648, i64* %2646, align 8
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2641, i64* %2650, align 8
  store %struct.Memory* %loadMem1_42a915, %struct.Memory** %MEMORY
  %loadMem2_42a915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a915 = load i64, i64* %3
  %call2_42a915 = call %struct.Memory* @sub_42c8d0.find_distortion(%struct.State* %0, i64 %loadPC_42a915, %struct.Memory* %loadMem2_42a915)
  store %struct.Memory* %call2_42a915, %struct.Memory** %MEMORY
  %loadMem_42a91a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 33
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %2653 to i64*
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 1
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %2656 to i64*
  %2657 = load i64, i64* %PC.i33
  %2658 = add i64 %2657, 8
  store i64 %2658, i64* %PC.i33
  %2659 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*)
  store i64 %2659, i64* %RAX.i34, align 8
  store %struct.Memory* %loadMem_42a91a, %struct.Memory** %MEMORY
  %loadMem_42a922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2661 = getelementptr inbounds %struct.GPR, %struct.GPR* %2660, i32 0, i32 33
  %2662 = getelementptr inbounds %struct.Reg, %struct.Reg* %2661, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %2662 to i64*
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2664 = getelementptr inbounds %struct.GPR, %struct.GPR* %2663, i32 0, i32 1
  %2665 = getelementptr inbounds %struct.Reg, %struct.Reg* %2664, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %2665 to i64*
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2667 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2666, i64 0, i64 0
  %YMM0.i32 = bitcast %union.VectorReg* %2667 to %"class.std::bitset"*
  %2668 = bitcast %"class.std::bitset"* %YMM0.i32 to i8*
  %2669 = load i64, i64* %RAX.i31
  %2670 = load i64, i64* %PC.i30
  %2671 = add i64 %2670, 4
  store i64 %2671, i64* %PC.i30
  %2672 = inttoptr i64 %2669 to float*
  %2673 = load float, float* %2672
  %2674 = bitcast i8* %2668 to float*
  store float %2673, float* %2674, align 1
  %2675 = getelementptr inbounds i8, i8* %2668, i64 4
  %2676 = bitcast i8* %2675 to float*
  store float 0.000000e+00, float* %2676, align 1
  %2677 = getelementptr inbounds i8, i8* %2668, i64 8
  %2678 = bitcast i8* %2677 to float*
  store float 0.000000e+00, float* %2678, align 1
  %2679 = getelementptr inbounds i8, i8* %2668, i64 12
  %2680 = bitcast i8* %2679 to float*
  store float 0.000000e+00, float* %2680, align 1
  store %struct.Memory* %loadMem_42a922, %struct.Memory** %MEMORY
  %loadMem_42a926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 33
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %2683 to i64*
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2685 = getelementptr inbounds %struct.GPR, %struct.GPR* %2684, i32 0, i32 1
  %2686 = getelementptr inbounds %struct.Reg, %struct.Reg* %2685, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %2686 to i64*
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2688 = getelementptr inbounds %struct.GPR, %struct.GPR* %2687, i32 0, i32 15
  %2689 = getelementptr inbounds %struct.Reg, %struct.Reg* %2688, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %2689 to i64*
  %2690 = load i64, i64* %RBP.i29
  %2691 = sub i64 %2690, 8
  %2692 = load i64, i64* %PC.i27
  %2693 = add i64 %2692, 4
  store i64 %2693, i64* %PC.i27
  %2694 = inttoptr i64 %2691 to i64*
  %2695 = load i64, i64* %2694
  store i64 %2695, i64* %RAX.i28, align 8
  store %struct.Memory* %loadMem_42a926, %struct.Memory** %MEMORY
  %loadMem_42a92a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 33
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %2698 to i64*
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2700 = getelementptr inbounds %struct.GPR, %struct.GPR* %2699, i32 0, i32 1
  %2701 = getelementptr inbounds %struct.Reg, %struct.Reg* %2700, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %2701 to i64*
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2703 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2702, i64 0, i64 0
  %XMM0.i26 = bitcast %union.VectorReg* %2703 to %union.vec128_t*
  %2704 = load i64, i64* %RAX.i25
  %2705 = add i64 %2704, 812
  %2706 = bitcast %union.vec128_t* %XMM0.i26 to i8*
  %2707 = load i64, i64* %PC.i24
  %2708 = add i64 %2707, 8
  store i64 %2708, i64* %PC.i24
  %2709 = bitcast i8* %2706 to <2 x float>*
  %2710 = load <2 x float>, <2 x float>* %2709, align 1
  %2711 = extractelement <2 x float> %2710, i32 0
  %2712 = inttoptr i64 %2705 to float*
  store float %2711, float* %2712
  store %struct.Memory* %loadMem_42a92a, %struct.Memory** %MEMORY
  %loadMem_42a932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2714 = getelementptr inbounds %struct.GPR, %struct.GPR* %2713, i32 0, i32 33
  %2715 = getelementptr inbounds %struct.Reg, %struct.Reg* %2714, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %2715 to i64*
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2717 = getelementptr inbounds %struct.GPR, %struct.GPR* %2716, i32 0, i32 1
  %2718 = getelementptr inbounds %struct.Reg, %struct.Reg* %2717, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %2718 to i64*
  %2719 = load i64, i64* %PC.i22
  %2720 = add i64 %2719, 8
  store i64 %2720, i64* %PC.i22
  %2721 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*)
  store i64 %2721, i64* %RAX.i23, align 8
  store %struct.Memory* %loadMem_42a932, %struct.Memory** %MEMORY
  %loadMem_42a93a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2723 = getelementptr inbounds %struct.GPR, %struct.GPR* %2722, i32 0, i32 33
  %2724 = getelementptr inbounds %struct.Reg, %struct.Reg* %2723, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %2724 to i64*
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2726 = getelementptr inbounds %struct.GPR, %struct.GPR* %2725, i32 0, i32 1
  %2727 = getelementptr inbounds %struct.Reg, %struct.Reg* %2726, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %2727 to i64*
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2729 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2728, i64 0, i64 0
  %YMM0.i21 = bitcast %union.VectorReg* %2729 to %"class.std::bitset"*
  %2730 = bitcast %"class.std::bitset"* %YMM0.i21 to i8*
  %2731 = load i64, i64* %RAX.i20
  %2732 = add i64 %2731, 4
  %2733 = load i64, i64* %PC.i19
  %2734 = add i64 %2733, 5
  store i64 %2734, i64* %PC.i19
  %2735 = inttoptr i64 %2732 to float*
  %2736 = load float, float* %2735
  %2737 = bitcast i8* %2730 to float*
  store float %2736, float* %2737, align 1
  %2738 = getelementptr inbounds i8, i8* %2730, i64 4
  %2739 = bitcast i8* %2738 to float*
  store float 0.000000e+00, float* %2739, align 1
  %2740 = getelementptr inbounds i8, i8* %2730, i64 8
  %2741 = bitcast i8* %2740 to float*
  store float 0.000000e+00, float* %2741, align 1
  %2742 = getelementptr inbounds i8, i8* %2730, i64 12
  %2743 = bitcast i8* %2742 to float*
  store float 0.000000e+00, float* %2743, align 1
  store %struct.Memory* %loadMem_42a93a, %struct.Memory** %MEMORY
  %loadMem_42a93f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2745 = getelementptr inbounds %struct.GPR, %struct.GPR* %2744, i32 0, i32 33
  %2746 = getelementptr inbounds %struct.Reg, %struct.Reg* %2745, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %2746 to i64*
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2748 = getelementptr inbounds %struct.GPR, %struct.GPR* %2747, i32 0, i32 1
  %2749 = getelementptr inbounds %struct.Reg, %struct.Reg* %2748, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %2749 to i64*
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2751 = getelementptr inbounds %struct.GPR, %struct.GPR* %2750, i32 0, i32 15
  %2752 = getelementptr inbounds %struct.Reg, %struct.Reg* %2751, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %2752 to i64*
  %2753 = load i64, i64* %RBP.i18
  %2754 = sub i64 %2753, 8
  %2755 = load i64, i64* %PC.i16
  %2756 = add i64 %2755, 4
  store i64 %2756, i64* %PC.i16
  %2757 = inttoptr i64 %2754 to i64*
  %2758 = load i64, i64* %2757
  store i64 %2758, i64* %RAX.i17, align 8
  store %struct.Memory* %loadMem_42a93f, %struct.Memory** %MEMORY
  %loadMem_42a943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 33
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %2761 to i64*
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2763 = getelementptr inbounds %struct.GPR, %struct.GPR* %2762, i32 0, i32 1
  %2764 = getelementptr inbounds %struct.Reg, %struct.Reg* %2763, i32 0, i32 0
  %RAX.i14 = bitcast %union.anon* %2764 to i64*
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2766 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2765, i64 0, i64 0
  %XMM0.i15 = bitcast %union.VectorReg* %2766 to %union.vec128_t*
  %2767 = load i64, i64* %RAX.i14
  %2768 = add i64 %2767, 816
  %2769 = bitcast %union.vec128_t* %XMM0.i15 to i8*
  %2770 = load i64, i64* %PC.i13
  %2771 = add i64 %2770, 8
  store i64 %2771, i64* %PC.i13
  %2772 = bitcast i8* %2769 to <2 x float>*
  %2773 = load <2 x float>, <2 x float>* %2772, align 1
  %2774 = extractelement <2 x float> %2773, i32 0
  %2775 = inttoptr i64 %2768 to float*
  store float %2774, float* %2775
  store %struct.Memory* %loadMem_42a943, %struct.Memory** %MEMORY
  %loadMem_42a94b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 33
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %2778 to i64*
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2780 = getelementptr inbounds %struct.GPR, %struct.GPR* %2779, i32 0, i32 1
  %2781 = getelementptr inbounds %struct.Reg, %struct.Reg* %2780, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %2781 to i64*
  %2782 = load i64, i64* %PC.i11
  %2783 = add i64 %2782, 8
  store i64 %2783, i64* %PC.i11
  %2784 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*)
  store i64 %2784, i64* %RAX.i12, align 8
  store %struct.Memory* %loadMem_42a94b, %struct.Memory** %MEMORY
  %loadMem_42a953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 33
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %2787 to i64*
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2789 = getelementptr inbounds %struct.GPR, %struct.GPR* %2788, i32 0, i32 1
  %2790 = getelementptr inbounds %struct.Reg, %struct.Reg* %2789, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %2790 to i64*
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2792 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2791, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %2792 to %"class.std::bitset"*
  %2793 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %2794 = load i64, i64* %RAX.i10
  %2795 = add i64 %2794, 8
  %2796 = load i64, i64* %PC.i9
  %2797 = add i64 %2796, 5
  store i64 %2797, i64* %PC.i9
  %2798 = inttoptr i64 %2795 to float*
  %2799 = load float, float* %2798
  %2800 = bitcast i8* %2793 to float*
  store float %2799, float* %2800, align 1
  %2801 = getelementptr inbounds i8, i8* %2793, i64 4
  %2802 = bitcast i8* %2801 to float*
  store float 0.000000e+00, float* %2802, align 1
  %2803 = getelementptr inbounds i8, i8* %2793, i64 8
  %2804 = bitcast i8* %2803 to float*
  store float 0.000000e+00, float* %2804, align 1
  %2805 = getelementptr inbounds i8, i8* %2793, i64 12
  %2806 = bitcast i8* %2805 to float*
  store float 0.000000e+00, float* %2806, align 1
  store %struct.Memory* %loadMem_42a953, %struct.Memory** %MEMORY
  %loadMem_42a958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 33
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %2809 to i64*
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 1
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %RAX.i7 = bitcast %union.anon* %2812 to i64*
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 15
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %2815 to i64*
  %2816 = load i64, i64* %RBP.i8
  %2817 = sub i64 %2816, 8
  %2818 = load i64, i64* %PC.i6
  %2819 = add i64 %2818, 4
  store i64 %2819, i64* %PC.i6
  %2820 = inttoptr i64 %2817 to i64*
  %2821 = load i64, i64* %2820
  store i64 %2821, i64* %RAX.i7, align 8
  store %struct.Memory* %loadMem_42a958, %struct.Memory** %MEMORY
  %loadMem_42a95c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 33
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %2824 to i64*
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 1
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %2827 to i64*
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2829 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2828, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2829 to %union.vec128_t*
  %2830 = load i64, i64* %RAX.i
  %2831 = add i64 %2830, 820
  %2832 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2833 = load i64, i64* %PC.i5
  %2834 = add i64 %2833, 8
  store i64 %2834, i64* %PC.i5
  %2835 = bitcast i8* %2832 to <2 x float>*
  %2836 = load <2 x float>, <2 x float>* %2835, align 1
  %2837 = extractelement <2 x float> %2836, i32 0
  %2838 = inttoptr i64 %2831 to float*
  store float %2837, float* %2838
  store %struct.Memory* %loadMem_42a95c, %struct.Memory** %MEMORY
  br label %block_.L_42a964

block_.L_42a964:                                  ; preds = %block_42a915, %block_.L_42a894
  %loadMem_42a964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 33
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %2841 to i64*
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 13
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %2844 to i64*
  %2845 = load i64, i64* %RSP.i
  %2846 = load i64, i64* %PC.i4
  %2847 = add i64 %2846, 4
  store i64 %2847, i64* %PC.i4
  %2848 = add i64 16, %2845
  store i64 %2848, i64* %RSP.i, align 8
  %2849 = icmp ult i64 %2848, %2845
  %2850 = icmp ult i64 %2848, 16
  %2851 = or i1 %2849, %2850
  %2852 = zext i1 %2851 to i8
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2852, i8* %2853, align 1
  %2854 = trunc i64 %2848 to i32
  %2855 = and i32 %2854, 255
  %2856 = call i32 @llvm.ctpop.i32(i32 %2855)
  %2857 = trunc i32 %2856 to i8
  %2858 = and i8 %2857, 1
  %2859 = xor i8 %2858, 1
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2859, i8* %2860, align 1
  %2861 = xor i64 16, %2845
  %2862 = xor i64 %2861, %2848
  %2863 = lshr i64 %2862, 4
  %2864 = trunc i64 %2863 to i8
  %2865 = and i8 %2864, 1
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2865, i8* %2866, align 1
  %2867 = icmp eq i64 %2848, 0
  %2868 = zext i1 %2867 to i8
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2868, i8* %2869, align 1
  %2870 = lshr i64 %2848, 63
  %2871 = trunc i64 %2870 to i8
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2871, i8* %2872, align 1
  %2873 = lshr i64 %2845, 63
  %2874 = xor i64 %2870, %2873
  %2875 = add i64 %2874, %2870
  %2876 = icmp eq i64 %2875, 2
  %2877 = zext i1 %2876 to i8
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2877, i8* %2878, align 1
  store %struct.Memory* %loadMem_42a964, %struct.Memory** %MEMORY
  %loadMem_42a968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2880 = getelementptr inbounds %struct.GPR, %struct.GPR* %2879, i32 0, i32 33
  %2881 = getelementptr inbounds %struct.Reg, %struct.Reg* %2880, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %2881 to i64*
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2883 = getelementptr inbounds %struct.GPR, %struct.GPR* %2882, i32 0, i32 15
  %2884 = getelementptr inbounds %struct.Reg, %struct.Reg* %2883, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %2884 to i64*
  %2885 = load i64, i64* %PC.i2
  %2886 = add i64 %2885, 1
  store i64 %2886, i64* %PC.i2
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2888 = load i64, i64* %2887, align 8
  %2889 = add i64 %2888, 8
  %2890 = inttoptr i64 %2888 to i64*
  %2891 = load i64, i64* %2890
  store i64 %2891, i64* %RBP.i3, align 8
  store i64 %2889, i64* %2887, align 8
  store %struct.Memory* %loadMem_42a968, %struct.Memory** %MEMORY
  %loadMem_42a969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2893 = getelementptr inbounds %struct.GPR, %struct.GPR* %2892, i32 0, i32 33
  %2894 = getelementptr inbounds %struct.Reg, %struct.Reg* %2893, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %2894 to i64*
  %2895 = load i64, i64* %PC.i1
  %2896 = add i64 %2895, 1
  store i64 %2896, i64* %PC.i1
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2899 = load i64, i64* %2898, align 8
  %2900 = inttoptr i64 %2899 to i64*
  %2901 = load i64, i64* %2900
  store i64 %2901, i64* %2897, align 8
  %2902 = add i64 %2899, 8
  store i64 %2902, i64* %2898, align 8
  store %struct.Memory* %loadMem_42a969, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_42a969
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

define %struct.Memory* @routine_subq__0x10___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 16
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 16
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
  %23 = xor i64 16, %9
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

define %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x1c__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x11b28__rdi____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72488
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__0x11b24__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 72484
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_42a5e6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x1c__rax____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x34__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x3c__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x38__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x40__rax____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.alloc_storable_picture(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__0x722b50(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  store i64 %9, i64* bitcast (%G_0x722b50_type* @G_0x722b50 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x11b08__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x722b50___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x722b50_type* @G_0x722b50 to i64*)
  store i64 %11, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__ecx__0x11b0c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72460
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x11b00__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72448
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_movl_0x11b04__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72452
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_movl_0x11b10__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72464
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x18dc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 6364
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x18d8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 6360
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x190c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6412
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
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

define %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2884
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

define %struct.Memory* @routine_setne__r9b(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %R9B, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andb__0x1___r9b(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i8, i8* %R9B
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = and i64 1, %11
  %15 = trunc i64 %14 to i8
  store i8 %15, i8* %R9B, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = trunc i64 %14 to i32
  %18 = and i32 %17, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i8 %15, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl__r9b___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %R9B
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = and i64 %14, 255
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x11ad0__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72400
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x1910__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 6416
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x70fcf0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  store i64 %9, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.copy_params(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_42a894(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_42a742(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__0x6d12b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  store i64 %9, i64* bitcast (%G_0x6d12b0_type* @G_0x6d12b0 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6d12b0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6d12b0_type* @G_0x6d12b0 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42a88f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__rax__0x710a50(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  store i64 %9, i64* bitcast (%G_0x710a50_type* @G_0x710a50 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x710a50___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x710a50_type* @G_0x710a50 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x5bc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1468
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x5bc___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1468, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1468
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
  %25 = xor i64 1468, %9
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

define %struct.Memory* @routine_movq_0x6cb908___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x5c8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1480
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x11878__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 71800
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_callq_.code_a_picture(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x3750__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 14160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl___rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x3___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = shl i64 %12, 2
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 0
  %16 = shl i32 %14, 1
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx__0x328__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 808
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 28
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

define %struct.Memory* @routine_jne_.L_42a964(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.find_distortion(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss___rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to float*
  %16 = load float, float* %15
  %17 = bitcast i8* %11 to float*
  store float %16, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %11, i64 4
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  %20 = getelementptr inbounds i8, i8* %11, i64 8
  %21 = bitcast i8* %20 to float*
  store float 0.000000e+00, float* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 12
  %23 = bitcast i8* %22 to float*
  store float 0.000000e+00, float* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x32c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 812
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

define %struct.Memory* @routine_movss_0x4__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
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

define %struct.Memory* @routine_movss__xmm0__0x330__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 816
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

define %struct.Memory* @routine_movss_0x8__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
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

define %struct.Memory* @routine_movss__xmm0__0x334__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 820
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

define %struct.Memory* @routine_addq__0x10___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 16, %9
  store i64 %12, i64* %RSP, align 8
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
