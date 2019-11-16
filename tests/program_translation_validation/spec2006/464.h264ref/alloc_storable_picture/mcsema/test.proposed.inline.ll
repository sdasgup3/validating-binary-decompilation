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
%G__0x4c18e3_type = type <{ [8 x i8] }>
%G__0x4c18fd_type = type <{ [8 x i8] }>
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
@G_0x6cb8f8 = global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = global %G_0x6cb900_type zeroinitializer
@G__0x4c18e3 = global %G__0x4c18e3_type zeroinitializer
@G__0x4c18fd = global %G__0x4c18fd_type zeroinitializer

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

declare %struct.Memory* @sub_459480.get_mem2Dpel(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_459570.get_mem3Dpel(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_45a110.get_mem3Dshort(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_459b30.get_mem3Dint64(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_45a1c0.get_mem4Dshort(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_459720.get_mem2D(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @alloc_storable_picture(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_44bd60 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_44bd60, %struct.Memory** %MEMORY
  %loadMem_44bd61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i127 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i127
  %27 = load i64, i64* %PC.i126
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i126
  store i64 %26, i64* %RBP.i128, align 8
  store %struct.Memory* %loadMem_44bd61, %struct.Memory** %MEMORY
  %loadMem_44bd64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i142 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i142
  %36 = load i64, i64* %PC.i141
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i141
  %38 = sub i64 %35, 112
  store i64 %38, i64* %RSP.i142, align 8
  %39 = icmp ult i64 %35, 112
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
  %49 = xor i64 112, %35
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
  store %struct.Memory* %loadMem_44bd64, %struct.Memory** %MEMORY
  %loadMem_44bd68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i170 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i169
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i169
  store i64 1, i64* %RAX.i170, align 8
  store %struct.Memory* %loadMem_44bd68, %struct.Memory** %MEMORY
  %loadMem_44bd6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EAX.i185 = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 19
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %83 to i32*
  %84 = bitcast i32* %R9D.i to i64*
  %85 = load i32, i32* %EAX.i185
  %86 = zext i32 %85 to i64
  %87 = load i64, i64* %PC.i184
  %88 = add i64 %87, 3
  store i64 %88, i64* %PC.i184
  %89 = and i64 %86, 4294967295
  store i64 %89, i64* %84, align 8
  store %struct.Memory* %loadMem_44bd6d, %struct.Memory** %MEMORY
  %loadMem_44bd70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 33
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %92 to i64*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %RAX.i224 = bitcast %union.anon* %95 to i64*
  %96 = load i64, i64* %PC.i223
  %97 = add i64 %96, 5
  store i64 %97, i64* %PC.i223
  store i64 6584, i64* %RAX.i224, align 8
  store %struct.Memory* %loadMem_44bd70, %struct.Memory** %MEMORY
  %loadMem_44bd75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %EAX.i239 = bitcast %union.anon* %103 to i32*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 21
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %106 to i32*
  %107 = bitcast i32* %R10D.i to i64*
  %108 = load i32, i32* %EAX.i239
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* %PC.i238
  %111 = add i64 %110, 3
  store i64 %111, i64* %PC.i238
  %112 = and i64 %109, 4294967295
  store i64 %112, i64* %107, align 8
  store %struct.Memory* %loadMem_44bd75, %struct.Memory** %MEMORY
  %loadMem_44bd78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 33
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %115 to i64*
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 11
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %118 to i32*
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 15
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %121 to i64*
  %122 = load i64, i64* %RBP.i279
  %123 = sub i64 %122, 4
  %124 = load i32, i32* %EDI.i
  %125 = zext i32 %124 to i64
  %126 = load i64, i64* %PC.i278
  %127 = add i64 %126, 3
  store i64 %127, i64* %PC.i278
  %128 = inttoptr i64 %123 to i32*
  store i32 %124, i32* %128
  store %struct.Memory* %loadMem_44bd78, %struct.Memory** %MEMORY
  %loadMem_44bd7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 33
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 9
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %ESI.i294 = bitcast %union.anon* %134 to i32*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 15
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %137 to i64*
  %138 = load i64, i64* %RBP.i295
  %139 = sub i64 %138, 8
  %140 = load i32, i32* %ESI.i294
  %141 = zext i32 %140 to i64
  %142 = load i64, i64* %PC.i293
  %143 = add i64 %142, 3
  store i64 %143, i64* %PC.i293
  %144 = inttoptr i64 %139 to i32*
  store i32 %140, i32* %144
  store %struct.Memory* %loadMem_44bd7b, %struct.Memory** %MEMORY
  %loadMem_44bd7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 33
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %147 to i64*
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 7
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %EDX.i329 = bitcast %union.anon* %150 to i32*
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 15
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %153 to i64*
  %154 = load i64, i64* %RBP.i330
  %155 = sub i64 %154, 12
  %156 = load i32, i32* %EDX.i329
  %157 = zext i32 %156 to i64
  %158 = load i64, i64* %PC.i328
  %159 = add i64 %158, 3
  store i64 %159, i64* %PC.i328
  %160 = inttoptr i64 %155 to i32*
  store i32 %156, i32* %160
  store %struct.Memory* %loadMem_44bd7e, %struct.Memory** %MEMORY
  %loadMem_44bd81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 33
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %163 to i64*
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %ECX.i345 = bitcast %union.anon* %166 to i32*
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 15
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %169 to i64*
  %170 = load i64, i64* %RBP.i346
  %171 = sub i64 %170, 16
  %172 = load i32, i32* %ECX.i345
  %173 = zext i32 %172 to i64
  %174 = load i64, i64* %PC.i344
  %175 = add i64 %174, 3
  store i64 %175, i64* %PC.i344
  %176 = inttoptr i64 %171 to i32*
  store i32 %172, i32* %176
  store %struct.Memory* %loadMem_44bd81, %struct.Memory** %MEMORY
  %loadMem_44bd84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 33
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %179 to i64*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 17
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %R8D.i382 = bitcast %union.anon* %182 to i32*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 15
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %RBP.i383 = bitcast %union.anon* %185 to i64*
  %186 = load i64, i64* %RBP.i383
  %187 = sub i64 %186, 20
  %188 = load i32, i32* %R8D.i382
  %189 = zext i32 %188 to i64
  %190 = load i64, i64* %PC.i381
  %191 = add i64 %190, 4
  store i64 %191, i64* %PC.i381
  %192 = inttoptr i64 %187 to i32*
  store i32 %188, i32* %192
  store %struct.Memory* %loadMem_44bd84, %struct.Memory** %MEMORY
  %loadMem_44bd88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 33
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %195 to i64*
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 11
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %RDI.i398 = bitcast %union.anon* %198 to i64*
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 19
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %R9.i = bitcast %union.anon* %201 to i64*
  %202 = load i64, i64* %R9.i
  %203 = load i64, i64* %PC.i397
  %204 = add i64 %203, 3
  store i64 %204, i64* %PC.i397
  store i64 %202, i64* %RDI.i398, align 8
  store %struct.Memory* %loadMem_44bd88, %struct.Memory** %MEMORY
  %loadMem_44bd8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 33
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %207 to i64*
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %209 = getelementptr inbounds %struct.GPR, %struct.GPR* %208, i32 0, i32 9
  %210 = getelementptr inbounds %struct.Reg, %struct.Reg* %209, i32 0, i32 0
  %RSI.i444 = bitcast %union.anon* %210 to i64*
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %212 = getelementptr inbounds %struct.GPR, %struct.GPR* %211, i32 0, i32 21
  %213 = getelementptr inbounds %struct.Reg, %struct.Reg* %212, i32 0, i32 0
  %R10.i = bitcast %union.anon* %213 to i64*
  %214 = load i64, i64* %R10.i
  %215 = load i64, i64* %PC.i443
  %216 = add i64 %215, 3
  store i64 %216, i64* %PC.i443
  store i64 %214, i64* %RSI.i444, align 8
  store %struct.Memory* %loadMem_44bd8b, %struct.Memory** %MEMORY
  %loadMem1_44bd8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 33
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %219 to i64*
  %220 = load i64, i64* %PC.i558
  %221 = add i64 %220, -306350
  %222 = load i64, i64* %PC.i558
  %223 = add i64 %222, 5
  %224 = load i64, i64* %PC.i558
  %225 = add i64 %224, 5
  store i64 %225, i64* %PC.i558
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = add i64 %227, -8
  %229 = inttoptr i64 %228 to i64*
  store i64 %223, i64* %229
  store i64 %228, i64* %226, align 8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %221, i64* %230, align 8
  store %struct.Memory* %loadMem1_44bd8e, %struct.Memory** %MEMORY
  %loadMem2_44bd8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bd8e = load i64, i64* %3
  %231 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %loadMem2_44bd8e)
  store %struct.Memory* %231, %struct.Memory** %MEMORY
  %loadMem_44bd93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 33
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %234 to i64*
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %236 = getelementptr inbounds %struct.GPR, %struct.GPR* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.Reg, %struct.Reg* %236, i32 0, i32 0
  %ECX.i556 = bitcast %union.anon* %237 to i32*
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 5
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %RCX.i557 = bitcast %union.anon* %240 to i64*
  %241 = load i64, i64* %RCX.i557
  %242 = load i32, i32* %ECX.i556
  %243 = zext i32 %242 to i64
  %244 = load i64, i64* %PC.i555
  %245 = add i64 %244, 2
  store i64 %245, i64* %PC.i555
  %246 = xor i64 %243, %241
  %247 = trunc i64 %246 to i32
  %248 = and i64 %246, 4294967295
  store i64 %248, i64* %RCX.i557, align 8
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %249, align 1
  %250 = and i32 %247, 255
  %251 = call i32 @llvm.ctpop.i32(i32 %250)
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  %254 = xor i8 %253, 1
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %254, i8* %255, align 1
  %256 = icmp eq i32 %247, 0
  %257 = zext i1 %256 to i8
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %257, i8* %258, align 1
  %259 = lshr i32 %247, 31
  %260 = trunc i32 %259 to i8
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %260, i8* %261, align 1
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %262, align 1
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %263, align 1
  store %struct.Memory* %loadMem_44bd93, %struct.Memory** %MEMORY
  %loadMem_44bd95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 33
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %266 to i64*
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %268 = getelementptr inbounds %struct.GPR, %struct.GPR* %267, i32 0, i32 5
  %269 = getelementptr inbounds %struct.Reg, %struct.Reg* %268, i32 0, i32 0
  %ECX.i553 = bitcast %union.anon* %269 to i32*
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %271 = getelementptr inbounds %struct.GPR, %struct.GPR* %270, i32 0, i32 9
  %272 = getelementptr inbounds %struct.Reg, %struct.Reg* %271, i32 0, i32 0
  %RSI.i554 = bitcast %union.anon* %272 to i64*
  %273 = load i32, i32* %ECX.i553
  %274 = zext i32 %273 to i64
  %275 = load i64, i64* %PC.i552
  %276 = add i64 %275, 2
  store i64 %276, i64* %PC.i552
  %277 = and i64 %274, 4294967295
  store i64 %277, i64* %RSI.i554, align 8
  store %struct.Memory* %loadMem_44bd95, %struct.Memory** %MEMORY
  %loadMem_44bd97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 33
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %280 to i64*
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %RAX.i550 = bitcast %union.anon* %283 to i64*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 15
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %286 to i64*
  %287 = load i64, i64* %RBP.i551
  %288 = sub i64 %287, 32
  %289 = load i64, i64* %RAX.i550
  %290 = load i64, i64* %PC.i549
  %291 = add i64 %290, 4
  store i64 %291, i64* %PC.i549
  %292 = inttoptr i64 %288 to i64*
  store i64 %289, i64* %292
  store %struct.Memory* %loadMem_44bd97, %struct.Memory** %MEMORY
  %loadMem_44bd9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 33
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %295 to i64*
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %297 = getelementptr inbounds %struct.GPR, %struct.GPR* %296, i32 0, i32 9
  %298 = getelementptr inbounds %struct.Reg, %struct.Reg* %297, i32 0, i32 0
  %RSI.i547 = bitcast %union.anon* %298 to i64*
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %300 = getelementptr inbounds %struct.GPR, %struct.GPR* %299, i32 0, i32 15
  %301 = getelementptr inbounds %struct.Reg, %struct.Reg* %300, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %301 to i64*
  %302 = load i64, i64* %RSI.i547
  %303 = load i64, i64* %RBP.i548
  %304 = sub i64 %303, 32
  %305 = load i64, i64* %PC.i546
  %306 = add i64 %305, 4
  store i64 %306, i64* %PC.i546
  %307 = inttoptr i64 %304 to i64*
  %308 = load i64, i64* %307
  %309 = sub i64 %302, %308
  %310 = icmp ugt i64 %308, %302
  %311 = zext i1 %310 to i8
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %311, i8* %312, align 1
  %313 = trunc i64 %309 to i32
  %314 = and i32 %313, 255
  %315 = call i32 @llvm.ctpop.i32(i32 %314)
  %316 = trunc i32 %315 to i8
  %317 = and i8 %316, 1
  %318 = xor i8 %317, 1
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %318, i8* %319, align 1
  %320 = xor i64 %308, %302
  %321 = xor i64 %320, %309
  %322 = lshr i64 %321, 4
  %323 = trunc i64 %322 to i8
  %324 = and i8 %323, 1
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %324, i8* %325, align 1
  %326 = icmp eq i64 %309, 0
  %327 = zext i1 %326 to i8
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %327, i8* %328, align 1
  %329 = lshr i64 %309, 63
  %330 = trunc i64 %329 to i8
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %330, i8* %331, align 1
  %332 = lshr i64 %302, 63
  %333 = lshr i64 %308, 63
  %334 = xor i64 %333, %332
  %335 = xor i64 %329, %332
  %336 = add i64 %335, %334
  %337 = icmp eq i64 %336, 2
  %338 = zext i1 %337 to i8
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %338, i8* %339, align 1
  store %struct.Memory* %loadMem_44bd9b, %struct.Memory** %MEMORY
  %loadMem_44bd9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 33
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %342 to i64*
  %343 = load i64, i64* %PC.i545
  %344 = add i64 %343, 21
  %345 = load i64, i64* %PC.i545
  %346 = add i64 %345, 6
  %347 = load i64, i64* %PC.i545
  %348 = add i64 %347, 6
  store i64 %348, i64* %PC.i545
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %350 = load i8, i8* %349, align 1
  %351 = icmp eq i8 %350, 0
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %BRANCH_TAKEN, align 1
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %354 = select i1 %351, i64 %344, i64 %346
  store i64 %354, i64* %353, align 8
  store %struct.Memory* %loadMem_44bd9f, %struct.Memory** %MEMORY
  %loadBr_44bd9f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bd9f = icmp eq i8 %loadBr_44bd9f, 1
  br i1 %cmpBr_44bd9f, label %block_.L_44bdb4, label %block_44bda5

block_44bda5:                                     ; preds = %entry
  %loadMem_44bda5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 33
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %357 to i64*
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 11
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %RDI.i544 = bitcast %union.anon* %360 to i64*
  %361 = load i64, i64* %PC.i543
  %362 = add i64 %361, 10
  store i64 %362, i64* %PC.i543
  store i64 ptrtoint (%G__0x4c18e3_type* @G__0x4c18e3 to i64), i64* %RDI.i544, align 8
  store %struct.Memory* %loadMem_44bda5, %struct.Memory** %MEMORY
  %loadMem1_44bdaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 33
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %365 to i64*
  %366 = load i64, i64* %PC.i542
  %367 = add i64 %366, 54849
  %368 = load i64, i64* %PC.i542
  %369 = add i64 %368, 5
  %370 = load i64, i64* %PC.i542
  %371 = add i64 %370, 5
  store i64 %371, i64* %PC.i542
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = add i64 %373, -8
  %375 = inttoptr i64 %374 to i64*
  store i64 %369, i64* %375
  store i64 %374, i64* %372, align 8
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %367, i64* %376, align 8
  store %struct.Memory* %loadMem1_44bdaf, %struct.Memory** %MEMORY
  %loadMem2_44bdaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bdaf = load i64, i64* %3
  %call2_44bdaf = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64 %loadPC_44bdaf, %struct.Memory* %loadMem2_44bdaf)
  store %struct.Memory* %call2_44bdaf, %struct.Memory** %MEMORY
  br label %block_.L_44bdb4

block_.L_44bdb4:                                  ; preds = %block_44bda5, %entry
  %loadMem_44bdb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 33
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %379 to i64*
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %RAX.i540 = bitcast %union.anon* %382 to i64*
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 15
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %385 to i64*
  %386 = load i64, i64* %RBP.i541
  %387 = sub i64 %386, 32
  %388 = load i64, i64* %PC.i539
  %389 = add i64 %388, 4
  store i64 %389, i64* %PC.i539
  %390 = inttoptr i64 %387 to i64*
  %391 = load i64, i64* %390
  store i64 %391, i64* %RAX.i540, align 8
  store %struct.Memory* %loadMem_44bdb4, %struct.Memory** %MEMORY
  %loadMem_44bdb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 33
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %394 to i64*
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %396 = getelementptr inbounds %struct.GPR, %struct.GPR* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.Reg, %struct.Reg* %396, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %397 to i64*
  %398 = load i64, i64* %RAX.i538
  %399 = load i64, i64* %PC.i537
  %400 = add i64 %399, 6
  store i64 %400, i64* %PC.i537
  %401 = add i64 6424, %398
  store i64 %401, i64* %RAX.i538, align 8
  %402 = icmp ult i64 %401, %398
  %403 = icmp ult i64 %401, 6424
  %404 = or i1 %402, %403
  %405 = zext i1 %404 to i8
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %405, i8* %406, align 1
  %407 = trunc i64 %401 to i32
  %408 = and i32 %407, 255
  %409 = call i32 @llvm.ctpop.i32(i32 %408)
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  %412 = xor i8 %411, 1
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %412, i8* %413, align 1
  %414 = xor i64 6424, %398
  %415 = xor i64 %414, %401
  %416 = lshr i64 %415, 4
  %417 = trunc i64 %416 to i8
  %418 = and i8 %417, 1
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %418, i8* %419, align 1
  %420 = icmp eq i64 %401, 0
  %421 = zext i1 %420 to i8
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %421, i8* %422, align 1
  %423 = lshr i64 %401, 63
  %424 = trunc i64 %423 to i8
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %424, i8* %425, align 1
  %426 = lshr i64 %398, 63
  %427 = xor i64 %423, %426
  %428 = add i64 %427, %423
  %429 = icmp eq i64 %428, 2
  %430 = zext i1 %429 to i8
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %430, i8* %431, align 1
  store %struct.Memory* %loadMem_44bdb8, %struct.Memory** %MEMORY
  %loadMem_44bdbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 33
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %434 to i64*
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %436 = getelementptr inbounds %struct.GPR, %struct.GPR* %435, i32 0, i32 9
  %437 = getelementptr inbounds %struct.Reg, %struct.Reg* %436, i32 0, i32 0
  %RSI.i535 = bitcast %union.anon* %437 to i64*
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 15
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %440 to i64*
  %441 = load i64, i64* %RBP.i536
  %442 = sub i64 %441, 12
  %443 = load i64, i64* %PC.i534
  %444 = add i64 %443, 3
  store i64 %444, i64* %PC.i534
  %445 = inttoptr i64 %442 to i32*
  %446 = load i32, i32* %445
  %447 = zext i32 %446 to i64
  store i64 %447, i64* %RSI.i535, align 8
  store %struct.Memory* %loadMem_44bdbe, %struct.Memory** %MEMORY
  %loadMem_44bdc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 33
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %450 to i64*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 7
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %RDX.i532 = bitcast %union.anon* %453 to i64*
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 15
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %456 to i64*
  %457 = load i64, i64* %RBP.i533
  %458 = sub i64 %457, 8
  %459 = load i64, i64* %PC.i531
  %460 = add i64 %459, 3
  store i64 %460, i64* %PC.i531
  %461 = inttoptr i64 %458 to i32*
  %462 = load i32, i32* %461
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RDX.i532, align 8
  store %struct.Memory* %loadMem_44bdc1, %struct.Memory** %MEMORY
  %loadMem_44bdc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 33
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %466 to i64*
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 1
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %RAX.i529 = bitcast %union.anon* %469 to i64*
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 11
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %RDI.i530 = bitcast %union.anon* %472 to i64*
  %473 = load i64, i64* %RAX.i529
  %474 = load i64, i64* %PC.i528
  %475 = add i64 %474, 3
  store i64 %475, i64* %PC.i528
  store i64 %473, i64* %RDI.i530, align 8
  store %struct.Memory* %loadMem_44bdc4, %struct.Memory** %MEMORY
  %loadMem1_44bdc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %477 = getelementptr inbounds %struct.GPR, %struct.GPR* %476, i32 0, i32 33
  %478 = getelementptr inbounds %struct.Reg, %struct.Reg* %477, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %478 to i64*
  %479 = load i64, i64* %PC.i527
  %480 = add i64 %479, 54969
  %481 = load i64, i64* %PC.i527
  %482 = add i64 %481, 5
  %483 = load i64, i64* %PC.i527
  %484 = add i64 %483, 5
  store i64 %484, i64* %PC.i527
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %486 = load i64, i64* %485, align 8
  %487 = add i64 %486, -8
  %488 = inttoptr i64 %487 to i64*
  store i64 %482, i64* %488
  store i64 %487, i64* %485, align 8
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %480, i64* %489, align 8
  store %struct.Memory* %loadMem1_44bdc7, %struct.Memory** %MEMORY
  %loadMem2_44bdc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bdc7 = load i64, i64* %3
  %call2_44bdc7 = call %struct.Memory* @sub_459480.get_mem2Dpel(%struct.State* %0, i64 %loadPC_44bdc7, %struct.Memory* %loadMem2_44bdc7)
  store %struct.Memory* %call2_44bdc7, %struct.Memory** %MEMORY
  %loadMem_44bdcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 33
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %492 to i64*
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 11
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %RDI.i525 = bitcast %union.anon* %495 to i64*
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %497 = getelementptr inbounds %struct.GPR, %struct.GPR* %496, i32 0, i32 15
  %498 = getelementptr inbounds %struct.Reg, %struct.Reg* %497, i32 0, i32 0
  %RBP.i526 = bitcast %union.anon* %498 to i64*
  %499 = load i64, i64* %RBP.i526
  %500 = sub i64 %499, 32
  %501 = load i64, i64* %PC.i524
  %502 = add i64 %501, 4
  store i64 %502, i64* %PC.i524
  %503 = inttoptr i64 %500 to i64*
  %504 = load i64, i64* %503
  store i64 %504, i64* %RDI.i525, align 8
  store %struct.Memory* %loadMem_44bdcc, %struct.Memory** %MEMORY
  %loadMem_44bdd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 33
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %507 to i64*
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %509 = getelementptr inbounds %struct.GPR, %struct.GPR* %508, i32 0, i32 11
  %510 = getelementptr inbounds %struct.Reg, %struct.Reg* %509, i32 0, i32 0
  %RDI.i523 = bitcast %union.anon* %510 to i64*
  %511 = load i64, i64* %RDI.i523
  %512 = add i64 %511, 6432
  %513 = load i64, i64* %PC.i522
  %514 = add i64 %513, 11
  store i64 %514, i64* %PC.i522
  %515 = inttoptr i64 %512 to i64*
  store i64 0, i64* %515
  store %struct.Memory* %loadMem_44bdd0, %struct.Memory** %MEMORY
  %loadMem_44bddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 33
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %518 to i64*
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 11
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %RDI.i520 = bitcast %union.anon* %521 to i64*
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 15
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %RBP.i521 = bitcast %union.anon* %524 to i64*
  %525 = load i64, i64* %RBP.i521
  %526 = sub i64 %525, 32
  %527 = load i64, i64* %PC.i519
  %528 = add i64 %527, 4
  store i64 %528, i64* %PC.i519
  %529 = inttoptr i64 %526 to i64*
  %530 = load i64, i64* %529
  store i64 %530, i64* %RDI.i520, align 8
  store %struct.Memory* %loadMem_44bddb, %struct.Memory** %MEMORY
  %loadMem_44bddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 33
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %533 to i64*
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.GPR, %struct.GPR* %534, i32 0, i32 11
  %536 = getelementptr inbounds %struct.Reg, %struct.Reg* %535, i32 0, i32 0
  %RDI.i518 = bitcast %union.anon* %536 to i64*
  %537 = load i64, i64* %RDI.i518
  %538 = add i64 %537, 6448
  %539 = load i64, i64* %PC.i517
  %540 = add i64 %539, 11
  store i64 %540, i64* %PC.i517
  %541 = inttoptr i64 %538 to i64*
  store i64 0, i64* %541
  store %struct.Memory* %loadMem_44bddf, %struct.Memory** %MEMORY
  %loadMem_44bdea = load %struct.Memory*, %struct.Memory** %MEMORY
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %543 = getelementptr inbounds %struct.GPR, %struct.GPR* %542, i32 0, i32 33
  %544 = getelementptr inbounds %struct.Reg, %struct.Reg* %543, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %544 to i64*
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 11
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %RDI.i515 = bitcast %union.anon* %547 to i64*
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 15
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %550 to i64*
  %551 = load i64, i64* %RBP.i516
  %552 = sub i64 %551, 32
  %553 = load i64, i64* %PC.i514
  %554 = add i64 %553, 4
  store i64 %554, i64* %PC.i514
  %555 = inttoptr i64 %552 to i64*
  %556 = load i64, i64* %555
  store i64 %556, i64* %RDI.i515, align 8
  store %struct.Memory* %loadMem_44bdea, %struct.Memory** %MEMORY
  %loadMem_44bdee = load %struct.Memory*, %struct.Memory** %MEMORY
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 33
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %559 to i64*
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 11
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %RDI.i513 = bitcast %union.anon* %562 to i64*
  %563 = load i64, i64* %RDI.i513
  %564 = add i64 %563, 6464
  %565 = load i64, i64* %PC.i512
  %566 = add i64 %565, 11
  store i64 %566, i64* %PC.i512
  %567 = inttoptr i64 %564 to i64*
  store i64 0, i64* %567
  store %struct.Memory* %loadMem_44bdee, %struct.Memory** %MEMORY
  %loadMem_44bdf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 33
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %570 to i64*
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 11
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %RDI.i511 = bitcast %union.anon* %573 to i64*
  %574 = load i64, i64* %PC.i510
  %575 = add i64 %574, 8
  store i64 %575, i64* %PC.i510
  %576 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %576, i64* %RDI.i511, align 8
  store %struct.Memory* %loadMem_44bdf9, %struct.Memory** %MEMORY
  %loadMem_44be01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 33
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %579 to i64*
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %581 = getelementptr inbounds %struct.GPR, %struct.GPR* %580, i32 0, i32 11
  %582 = getelementptr inbounds %struct.Reg, %struct.Reg* %581, i32 0, i32 0
  %RDI.i509 = bitcast %union.anon* %582 to i64*
  %583 = load i64, i64* %RDI.i509
  %584 = add i64 %583, 1284
  %585 = load i64, i64* %PC.i508
  %586 = add i64 %585, 7
  store i64 %586, i64* %PC.i508
  %587 = inttoptr i64 %584 to i32*
  %588 = load i32, i32* %587
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %589, align 1
  %590 = and i32 %588, 255
  %591 = call i32 @llvm.ctpop.i32(i32 %590)
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  %594 = xor i8 %593, 1
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %594, i8* %595, align 1
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %596, align 1
  %597 = icmp eq i32 %588, 0
  %598 = zext i1 %597 to i8
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %598, i8* %599, align 1
  %600 = lshr i32 %588, 31
  %601 = trunc i32 %600 to i8
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %601, i8* %602, align 1
  %603 = lshr i32 %588, 31
  %604 = xor i32 %600, %603
  %605 = add i32 %604, %603
  %606 = icmp eq i32 %605, 2
  %607 = zext i1 %606 to i8
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %607, i8* %608, align 1
  store %struct.Memory* %loadMem_44be01, %struct.Memory** %MEMORY
  %loadMem_44be08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 33
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %611 to i64*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 1
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %EAX.i506 = bitcast %union.anon* %614 to i32*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 15
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %617 to i64*
  %618 = load i64, i64* %RBP.i507
  %619 = sub i64 %618, 36
  %620 = load i32, i32* %EAX.i506
  %621 = zext i32 %620 to i64
  %622 = load i64, i64* %PC.i505
  %623 = add i64 %622, 3
  store i64 %623, i64* %PC.i505
  %624 = inttoptr i64 %619 to i32*
  store i32 %620, i32* %624
  store %struct.Memory* %loadMem_44be08, %struct.Memory** %MEMORY
  %loadMem_44be0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 33
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %627 to i64*
  %628 = load i64, i64* %PC.i504
  %629 = add i64 %628, 45
  %630 = load i64, i64* %PC.i504
  %631 = add i64 %630, 6
  %632 = load i64, i64* %PC.i504
  %633 = add i64 %632, 6
  store i64 %633, i64* %PC.i504
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %635 = load i8, i8* %634, align 1
  %636 = icmp eq i8 %635, 0
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %BRANCH_TAKEN, align 1
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %639 = select i1 %636, i64 %629, i64 %631
  store i64 %639, i64* %638, align 8
  store %struct.Memory* %loadMem_44be0b, %struct.Memory** %MEMORY
  %loadBr_44be0b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44be0b = icmp eq i8 %loadBr_44be0b, 1
  br i1 %cmpBr_44be0b, label %block_.L_44be38, label %block_44be11

block_44be11:                                     ; preds = %block_.L_44bdb4
  %loadMem_44be11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 33
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %642 to i64*
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 1
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %RAX.i503 = bitcast %union.anon* %645 to i64*
  %646 = load i64, i64* %PC.i502
  %647 = add i64 %646, 8
  store i64 %647, i64* %PC.i502
  %648 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %648, i64* %RAX.i503, align 8
  store %struct.Memory* %loadMem_44be11, %struct.Memory** %MEMORY
  %loadMem_44be19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 33
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %651 to i64*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 1
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %RAX.i501 = bitcast %union.anon* %654 to i64*
  %655 = load i64, i64* %RAX.i501
  %656 = add i64 %655, 1288
  %657 = load i64, i64* %PC.i500
  %658 = add i64 %657, 7
  store i64 %658, i64* %PC.i500
  %659 = inttoptr i64 %656 to i32*
  %660 = load i32, i32* %659
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %661, align 1
  %662 = and i32 %660, 255
  %663 = call i32 @llvm.ctpop.i32(i32 %662)
  %664 = trunc i32 %663 to i8
  %665 = and i8 %664, 1
  %666 = xor i8 %665, 1
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %666, i8* %667, align 1
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %668, align 1
  %669 = icmp eq i32 %660, 0
  %670 = zext i1 %669 to i8
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %670, i8* %671, align 1
  %672 = lshr i32 %660, 31
  %673 = trunc i32 %672 to i8
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %673, i8* %674, align 1
  %675 = lshr i32 %660, 31
  %676 = xor i32 %672, %675
  %677 = add i32 %676, %675
  %678 = icmp eq i32 %677, 2
  %679 = zext i1 %678 to i8
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %679, i8* %680, align 1
  store %struct.Memory* %loadMem_44be19, %struct.Memory** %MEMORY
  %loadMem_44be20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %682 = getelementptr inbounds %struct.GPR, %struct.GPR* %681, i32 0, i32 33
  %683 = getelementptr inbounds %struct.Reg, %struct.Reg* %682, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %683 to i64*
  %684 = load i64, i64* %PC.i499
  %685 = add i64 %684, 24
  %686 = load i64, i64* %PC.i499
  %687 = add i64 %686, 6
  %688 = load i64, i64* %PC.i499
  %689 = add i64 %688, 6
  store i64 %689, i64* %PC.i499
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %691 = load i8, i8* %690, align 1
  %692 = icmp eq i8 %691, 0
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %BRANCH_TAKEN, align 1
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %695 = select i1 %692, i64 %685, i64 %687
  store i64 %695, i64* %694, align 8
  store %struct.Memory* %loadMem_44be20, %struct.Memory** %MEMORY
  %loadBr_44be20 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44be20 = icmp eq i8 %loadBr_44be20, 1
  br i1 %cmpBr_44be20, label %block_.L_44be38, label %block_44be26

block_44be26:                                     ; preds = %block_44be11
  %loadMem_44be26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 33
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %698 to i64*
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 1
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %701 to i64*
  %702 = load i64, i64* %PC.i497
  %703 = add i64 %702, 8
  store i64 %703, i64* %PC.i497
  %704 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %704, i64* %RAX.i498, align 8
  store %struct.Memory* %loadMem_44be26, %struct.Memory** %MEMORY
  %loadMem_44be2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %706 = getelementptr inbounds %struct.GPR, %struct.GPR* %705, i32 0, i32 33
  %707 = getelementptr inbounds %struct.Reg, %struct.Reg* %706, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %707 to i64*
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %709 = getelementptr inbounds %struct.GPR, %struct.GPR* %708, i32 0, i32 1
  %710 = getelementptr inbounds %struct.Reg, %struct.Reg* %709, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %710 to i64*
  %711 = load i64, i64* %RAX.i496
  %712 = add i64 %711, 60
  %713 = load i64, i64* %PC.i495
  %714 = add i64 %713, 4
  store i64 %714, i64* %PC.i495
  %715 = inttoptr i64 %712 to i32*
  %716 = load i32, i32* %715
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %717, align 1
  %718 = and i32 %716, 255
  %719 = call i32 @llvm.ctpop.i32(i32 %718)
  %720 = trunc i32 %719 to i8
  %721 = and i8 %720, 1
  %722 = xor i8 %721, 1
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %722, i8* %723, align 1
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %724, align 1
  %725 = icmp eq i32 %716, 0
  %726 = zext i1 %725 to i8
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %726, i8* %727, align 1
  %728 = lshr i32 %716, 31
  %729 = trunc i32 %728 to i8
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %729, i8* %730, align 1
  %731 = lshr i32 %716, 31
  %732 = xor i32 %728, %731
  %733 = add i32 %732, %731
  %734 = icmp eq i32 %733, 2
  %735 = zext i1 %734 to i8
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %735, i8* %736, align 1
  store %struct.Memory* %loadMem_44be2e, %struct.Memory** %MEMORY
  %loadMem_44be32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 33
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %739 to i64*
  %740 = load i64, i64* %PC.i494
  %741 = add i64 %740, 36
  %742 = load i64, i64* %PC.i494
  %743 = add i64 %742, 6
  %744 = load i64, i64* %PC.i494
  %745 = add i64 %744, 6
  store i64 %745, i64* %PC.i494
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %747 = load i8, i8* %746, align 1
  store i8 %747, i8* %BRANCH_TAKEN, align 1
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %749 = icmp ne i8 %747, 0
  %750 = select i1 %749, i64 %741, i64 %743
  store i64 %750, i64* %748, align 8
  store %struct.Memory* %loadMem_44be32, %struct.Memory** %MEMORY
  %loadBr_44be32 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44be32 = icmp eq i8 %loadBr_44be32, 1
  br i1 %cmpBr_44be32, label %block_.L_44be56, label %block_.L_44be38

block_.L_44be38:                                  ; preds = %block_44be26, %block_44be11, %block_.L_44bdb4
  %loadMem_44be38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %752 = getelementptr inbounds %struct.GPR, %struct.GPR* %751, i32 0, i32 33
  %753 = getelementptr inbounds %struct.Reg, %struct.Reg* %752, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %753 to i64*
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 1
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %RAX.i492 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 15
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %759 to i64*
  %760 = load i64, i64* %RBP.i493
  %761 = sub i64 %760, 32
  %762 = load i64, i64* %PC.i491
  %763 = add i64 %762, 4
  store i64 %763, i64* %PC.i491
  %764 = inttoptr i64 %761 to i64*
  %765 = load i64, i64* %764
  store i64 %765, i64* %RAX.i492, align 8
  store %struct.Memory* %loadMem_44be38, %struct.Memory** %MEMORY
  %loadMem_44be3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %767 = getelementptr inbounds %struct.GPR, %struct.GPR* %766, i32 0, i32 33
  %768 = getelementptr inbounds %struct.Reg, %struct.Reg* %767, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %768 to i64*
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 1
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %RAX.i490 = bitcast %union.anon* %771 to i64*
  %772 = load i64, i64* %RAX.i490
  %773 = add i64 %772, 6440
  %774 = load i64, i64* %PC.i489
  %775 = add i64 %774, 11
  store i64 %775, i64* %PC.i489
  %776 = inttoptr i64 %773 to i64*
  store i64 0, i64* %776
  store %struct.Memory* %loadMem_44be3c, %struct.Memory** %MEMORY
  %loadMem_44be47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 33
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %779 to i64*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 1
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %RAX.i487 = bitcast %union.anon* %782 to i64*
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %784 = getelementptr inbounds %struct.GPR, %struct.GPR* %783, i32 0, i32 15
  %785 = getelementptr inbounds %struct.Reg, %struct.Reg* %784, i32 0, i32 0
  %RBP.i488 = bitcast %union.anon* %785 to i64*
  %786 = load i64, i64* %RBP.i488
  %787 = sub i64 %786, 32
  %788 = load i64, i64* %PC.i486
  %789 = add i64 %788, 4
  store i64 %789, i64* %PC.i486
  %790 = inttoptr i64 %787 to i64*
  %791 = load i64, i64* %790
  store i64 %791, i64* %RAX.i487, align 8
  store %struct.Memory* %loadMem_44be47, %struct.Memory** %MEMORY
  %loadMem_44be4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 33
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %794 to i64*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 1
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %RAX.i485 = bitcast %union.anon* %797 to i64*
  %798 = load i64, i64* %RAX.i485
  %799 = add i64 %798, 6456
  %800 = load i64, i64* %PC.i484
  %801 = add i64 %800, 11
  store i64 %801, i64* %PC.i484
  %802 = inttoptr i64 %799 to i64*
  store i64 0, i64* %802
  store %struct.Memory* %loadMem_44be4b, %struct.Memory** %MEMORY
  br label %block_.L_44be56

block_.L_44be56:                                  ; preds = %block_.L_44be38, %block_44be26
  %loadMem_44be56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %804 = getelementptr inbounds %struct.GPR, %struct.GPR* %803, i32 0, i32 33
  %805 = getelementptr inbounds %struct.Reg, %struct.Reg* %804, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %805 to i64*
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %807 = getelementptr inbounds %struct.GPR, %struct.GPR* %806, i32 0, i32 1
  %808 = getelementptr inbounds %struct.Reg, %struct.Reg* %807, i32 0, i32 0
  %RAX.i483 = bitcast %union.anon* %808 to i64*
  %809 = load i64, i64* %PC.i482
  %810 = add i64 %809, 8
  store i64 %810, i64* %PC.i482
  %811 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %811, i64* %RAX.i483, align 8
  store %struct.Memory* %loadMem_44be56, %struct.Memory** %MEMORY
  %loadMem_44be5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 33
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %814 to i64*
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 1
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %RAX.i481 = bitcast %union.anon* %817 to i64*
  %818 = load i64, i64* %RAX.i481
  %819 = add i64 %818, 72700
  %820 = load i64, i64* %PC.i480
  %821 = add i64 %820, 7
  store i64 %821, i64* %PC.i480
  %822 = inttoptr i64 %819 to i32*
  %823 = load i32, i32* %822
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %824, align 1
  %825 = and i32 %823, 255
  %826 = call i32 @llvm.ctpop.i32(i32 %825)
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  %829 = xor i8 %828, 1
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %829, i8* %830, align 1
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %831, align 1
  %832 = icmp eq i32 %823, 0
  %833 = zext i1 %832 to i8
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %833, i8* %834, align 1
  %835 = lshr i32 %823, 31
  %836 = trunc i32 %835 to i8
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %836, i8* %837, align 1
  %838 = lshr i32 %823, 31
  %839 = xor i32 %835, %838
  %840 = add i32 %839, %838
  %841 = icmp eq i32 %840, 2
  %842 = zext i1 %841 to i8
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %842, i8* %843, align 1
  store %struct.Memory* %loadMem_44be5e, %struct.Memory** %MEMORY
  %loadMem_44be65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 33
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %846 to i64*
  %847 = load i64, i64* %PC.i479
  %848 = add i64 %847, 38
  %849 = load i64, i64* %PC.i479
  %850 = add i64 %849, 6
  %851 = load i64, i64* %PC.i479
  %852 = add i64 %851, 6
  store i64 %852, i64* %PC.i479
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %854 = load i8, i8* %853, align 1
  store i8 %854, i8* %BRANCH_TAKEN, align 1
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %856 = icmp ne i8 %854, 0
  %857 = select i1 %856, i64 %848, i64 %850
  store i64 %857, i64* %855, align 8
  store %struct.Memory* %loadMem_44be65, %struct.Memory** %MEMORY
  %loadBr_44be65 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44be65 = icmp eq i8 %loadBr_44be65, 1
  br i1 %cmpBr_44be65, label %block_.L_44be8b, label %block_44be6b

block_44be6b:                                     ; preds = %block_.L_44be56
  %loadMem_44be6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 33
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %860 to i64*
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 9
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %RSI.i478 = bitcast %union.anon* %863 to i64*
  %864 = load i64, i64* %PC.i477
  %865 = add i64 %864, 5
  store i64 %865, i64* %PC.i477
  store i64 2, i64* %RSI.i478, align 8
  store %struct.Memory* %loadMem_44be6b, %struct.Memory** %MEMORY
  %loadMem_44be70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 33
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %868 to i64*
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 1
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %RAX.i475 = bitcast %union.anon* %871 to i64*
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %873 = getelementptr inbounds %struct.GPR, %struct.GPR* %872, i32 0, i32 15
  %874 = getelementptr inbounds %struct.Reg, %struct.Reg* %873, i32 0, i32 0
  %RBP.i476 = bitcast %union.anon* %874 to i64*
  %875 = load i64, i64* %RBP.i476
  %876 = sub i64 %875, 32
  %877 = load i64, i64* %PC.i474
  %878 = add i64 %877, 4
  store i64 %878, i64* %PC.i474
  %879 = inttoptr i64 %876 to i64*
  %880 = load i64, i64* %879
  store i64 %880, i64* %RAX.i475, align 8
  store %struct.Memory* %loadMem_44be70, %struct.Memory** %MEMORY
  %loadMem_44be74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 33
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %883 to i64*
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 1
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %RAX.i473 = bitcast %union.anon* %886 to i64*
  %887 = load i64, i64* %RAX.i473
  %888 = load i64, i64* %PC.i472
  %889 = add i64 %888, 6
  store i64 %889, i64* %PC.i472
  %890 = add i64 6464, %887
  store i64 %890, i64* %RAX.i473, align 8
  %891 = icmp ult i64 %890, %887
  %892 = icmp ult i64 %890, 6464
  %893 = or i1 %891, %892
  %894 = zext i1 %893 to i8
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %894, i8* %895, align 1
  %896 = trunc i64 %890 to i32
  %897 = and i32 %896, 255
  %898 = call i32 @llvm.ctpop.i32(i32 %897)
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  %901 = xor i8 %900, 1
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %901, i8* %902, align 1
  %903 = xor i64 6464, %887
  %904 = xor i64 %903, %890
  %905 = lshr i64 %904, 4
  %906 = trunc i64 %905 to i8
  %907 = and i8 %906, 1
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %907, i8* %908, align 1
  %909 = icmp eq i64 %890, 0
  %910 = zext i1 %909 to i8
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %910, i8* %911, align 1
  %912 = lshr i64 %890, 63
  %913 = trunc i64 %912 to i8
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %913, i8* %914, align 1
  %915 = lshr i64 %887, 63
  %916 = xor i64 %912, %915
  %917 = add i64 %916, %912
  %918 = icmp eq i64 %917, 2
  %919 = zext i1 %918 to i8
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %919, i8* %920, align 1
  store %struct.Memory* %loadMem_44be74, %struct.Memory** %MEMORY
  %loadMem_44be7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 33
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %923 to i64*
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %925 = getelementptr inbounds %struct.GPR, %struct.GPR* %924, i32 0, i32 7
  %926 = getelementptr inbounds %struct.Reg, %struct.Reg* %925, i32 0, i32 0
  %RDX.i470 = bitcast %union.anon* %926 to i64*
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %928 = getelementptr inbounds %struct.GPR, %struct.GPR* %927, i32 0, i32 15
  %929 = getelementptr inbounds %struct.Reg, %struct.Reg* %928, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %929 to i64*
  %930 = load i64, i64* %RBP.i471
  %931 = sub i64 %930, 20
  %932 = load i64, i64* %PC.i469
  %933 = add i64 %932, 3
  store i64 %933, i64* %PC.i469
  %934 = inttoptr i64 %931 to i32*
  %935 = load i32, i32* %934
  %936 = zext i32 %935 to i64
  store i64 %936, i64* %RDX.i470, align 8
  store %struct.Memory* %loadMem_44be7a, %struct.Memory** %MEMORY
  %loadMem_44be7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 33
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %939 to i64*
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 5
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %RCX.i467 = bitcast %union.anon* %942 to i64*
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 15
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %945 to i64*
  %946 = load i64, i64* %RBP.i468
  %947 = sub i64 %946, 16
  %948 = load i64, i64* %PC.i466
  %949 = add i64 %948, 3
  store i64 %949, i64* %PC.i466
  %950 = inttoptr i64 %947 to i32*
  %951 = load i32, i32* %950
  %952 = zext i32 %951 to i64
  store i64 %952, i64* %RCX.i467, align 8
  store %struct.Memory* %loadMem_44be7d, %struct.Memory** %MEMORY
  %loadMem_44be80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 33
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %955 to i64*
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %957 = getelementptr inbounds %struct.GPR, %struct.GPR* %956, i32 0, i32 1
  %958 = getelementptr inbounds %struct.Reg, %struct.Reg* %957, i32 0, i32 0
  %RAX.i464 = bitcast %union.anon* %958 to i64*
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %960 = getelementptr inbounds %struct.GPR, %struct.GPR* %959, i32 0, i32 11
  %961 = getelementptr inbounds %struct.Reg, %struct.Reg* %960, i32 0, i32 0
  %RDI.i465 = bitcast %union.anon* %961 to i64*
  %962 = load i64, i64* %RAX.i464
  %963 = load i64, i64* %PC.i463
  %964 = add i64 %963, 3
  store i64 %964, i64* %PC.i463
  store i64 %962, i64* %RDI.i465, align 8
  store %struct.Memory* %loadMem_44be80, %struct.Memory** %MEMORY
  %loadMem1_44be83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %966 = getelementptr inbounds %struct.GPR, %struct.GPR* %965, i32 0, i32 33
  %967 = getelementptr inbounds %struct.Reg, %struct.Reg* %966, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %967 to i64*
  %968 = load i64, i64* %PC.i462
  %969 = add i64 %968, 55021
  %970 = load i64, i64* %PC.i462
  %971 = add i64 %970, 5
  %972 = load i64, i64* %PC.i462
  %973 = add i64 %972, 5
  store i64 %973, i64* %PC.i462
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %975 = load i64, i64* %974, align 8
  %976 = add i64 %975, -8
  %977 = inttoptr i64 %976 to i64*
  store i64 %971, i64* %977
  store i64 %976, i64* %974, align 8
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %969, i64* %978, align 8
  store %struct.Memory* %loadMem1_44be83, %struct.Memory** %MEMORY
  %loadMem2_44be83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44be83 = load i64, i64* %3
  %call2_44be83 = call %struct.Memory* @sub_459570.get_mem3Dpel(%struct.State* %0, i64 %loadPC_44be83, %struct.Memory* %loadMem2_44be83)
  store %struct.Memory* %call2_44be83, %struct.Memory** %MEMORY
  %loadMem_44be88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 33
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %981 to i64*
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %983 = getelementptr inbounds %struct.GPR, %struct.GPR* %982, i32 0, i32 1
  %984 = getelementptr inbounds %struct.Reg, %struct.Reg* %983, i32 0, i32 0
  %EAX.i460 = bitcast %union.anon* %984 to i32*
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %986 = getelementptr inbounds %struct.GPR, %struct.GPR* %985, i32 0, i32 15
  %987 = getelementptr inbounds %struct.Reg, %struct.Reg* %986, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %987 to i64*
  %988 = load i64, i64* %RBP.i461
  %989 = sub i64 %988, 40
  %990 = load i32, i32* %EAX.i460
  %991 = zext i32 %990 to i64
  %992 = load i64, i64* %PC.i459
  %993 = add i64 %992, 3
  store i64 %993, i64* %PC.i459
  %994 = inttoptr i64 %989 to i32*
  store i32 %990, i32* %994
  store %struct.Memory* %loadMem_44be88, %struct.Memory** %MEMORY
  br label %block_.L_44be8b

block_.L_44be8b:                                  ; preds = %block_44be6b, %block_.L_44be56
  %loadMem_44be8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 33
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %997 to i64*
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 1
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %RAX.i458 = bitcast %union.anon* %1000 to i64*
  %1001 = load i64, i64* %PC.i457
  %1002 = add i64 %1001, 5
  store i64 %1002, i64* %PC.i457
  store i64 4, i64* %RAX.i458, align 8
  store %struct.Memory* %loadMem_44be8b, %struct.Memory** %MEMORY
  %loadMem_44be90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 33
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %1005 to i64*
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 1
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %EAX.i455 = bitcast %union.anon* %1008 to i32*
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1010 = getelementptr inbounds %struct.GPR, %struct.GPR* %1009, i32 0, i32 9
  %1011 = getelementptr inbounds %struct.Reg, %struct.Reg* %1010, i32 0, i32 0
  %RSI.i456 = bitcast %union.anon* %1011 to i64*
  %1012 = load i32, i32* %EAX.i455
  %1013 = zext i32 %1012 to i64
  %1014 = load i64, i64* %PC.i454
  %1015 = add i64 %1014, 2
  store i64 %1015, i64* %PC.i454
  %1016 = and i64 %1013, 4294967295
  store i64 %1016, i64* %RSI.i456, align 8
  store %struct.Memory* %loadMem_44be90, %struct.Memory** %MEMORY
  %loadMem_44be92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 33
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %1019 to i64*
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 5
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %RCX.i453 = bitcast %union.anon* %1022 to i64*
  %1023 = load i64, i64* %PC.i452
  %1024 = add i64 %1023, 8
  store i64 %1024, i64* %PC.i452
  %1025 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1025, i64* %RCX.i453, align 8
  store %struct.Memory* %loadMem_44be92, %struct.Memory** %MEMORY
  %loadMem_44be9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 33
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %1028 to i64*
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 1
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %1031 to i64*
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 5
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %RCX.i451 = bitcast %union.anon* %1034 to i64*
  %1035 = load i64, i64* %RCX.i451
  %1036 = add i64 %1035, 72484
  %1037 = load i64, i64* %PC.i449
  %1038 = add i64 %1037, 6
  store i64 %1038, i64* %PC.i449
  %1039 = inttoptr i64 %1036 to i32*
  %1040 = load i32, i32* %1039
  %1041 = zext i32 %1040 to i64
  store i64 %1041, i64* %RAX.i450, align 8
  store %struct.Memory* %loadMem_44be9a, %struct.Memory** %MEMORY
  %loadMem_44bea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 33
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %1044 to i64*
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 1
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %EAX.i447 = bitcast %union.anon* %1047 to i32*
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 11
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %RDI.i448 = bitcast %union.anon* %1050 to i64*
  %1051 = load i32, i32* %EAX.i447
  %1052 = zext i32 %1051 to i64
  %1053 = load i64, i64* %PC.i446
  %1054 = add i64 %1053, 2
  store i64 %1054, i64* %PC.i446
  %1055 = and i64 %1052, 4294967295
  store i64 %1055, i64* %RDI.i448, align 8
  store %struct.Memory* %loadMem_44bea0, %struct.Memory** %MEMORY
  %loadMem1_44bea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 33
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %1058 to i64*
  %1059 = load i64, i64* %PC.i445
  %1060 = add i64 %1059, -306626
  %1061 = load i64, i64* %PC.i445
  %1062 = add i64 %1061, 5
  %1063 = load i64, i64* %PC.i445
  %1064 = add i64 %1063, 5
  store i64 %1064, i64* %PC.i445
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1066 = load i64, i64* %1065, align 8
  %1067 = add i64 %1066, -8
  %1068 = inttoptr i64 %1067 to i64*
  store i64 %1062, i64* %1068
  store i64 %1067, i64* %1065, align 8
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1060, i64* %1069, align 8
  store %struct.Memory* %loadMem1_44bea2, %struct.Memory** %MEMORY
  %loadMem2_44bea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bea2 = load i64, i64* %3
  %1070 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %loadMem2_44bea2)
  store %struct.Memory* %1070, %struct.Memory** %MEMORY
  %loadMem_44bea7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 33
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %1073 to i64*
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 7
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %EDX.i441 = bitcast %union.anon* %1076 to i32*
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 7
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %RDX.i442 = bitcast %union.anon* %1079 to i64*
  %1080 = load i64, i64* %RDX.i442
  %1081 = load i32, i32* %EDX.i441
  %1082 = zext i32 %1081 to i64
  %1083 = load i64, i64* %PC.i440
  %1084 = add i64 %1083, 2
  store i64 %1084, i64* %PC.i440
  %1085 = xor i64 %1082, %1080
  %1086 = trunc i64 %1085 to i32
  %1087 = and i64 %1085, 4294967295
  store i64 %1087, i64* %RDX.i442, align 8
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1088, align 1
  %1089 = and i32 %1086, 255
  %1090 = call i32 @llvm.ctpop.i32(i32 %1089)
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  %1093 = xor i8 %1092, 1
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1093, i8* %1094, align 1
  %1095 = icmp eq i32 %1086, 0
  %1096 = zext i1 %1095 to i8
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1096, i8* %1097, align 1
  %1098 = lshr i32 %1086, 31
  %1099 = trunc i32 %1098 to i8
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1099, i8* %1100, align 1
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1101, align 1
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1102, align 1
  store %struct.Memory* %loadMem_44bea7, %struct.Memory** %MEMORY
  %loadMem_44bea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 33
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %1105 to i64*
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1107 = getelementptr inbounds %struct.GPR, %struct.GPR* %1106, i32 0, i32 7
  %1108 = getelementptr inbounds %struct.Reg, %struct.Reg* %1107, i32 0, i32 0
  %EDX.i438 = bitcast %union.anon* %1108 to i32*
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1110 = getelementptr inbounds %struct.GPR, %struct.GPR* %1109, i32 0, i32 5
  %1111 = getelementptr inbounds %struct.Reg, %struct.Reg* %1110, i32 0, i32 0
  %RCX.i439 = bitcast %union.anon* %1111 to i64*
  %1112 = load i32, i32* %EDX.i438
  %1113 = zext i32 %1112 to i64
  %1114 = load i64, i64* %PC.i437
  %1115 = add i64 %1114, 2
  store i64 %1115, i64* %PC.i437
  %1116 = and i64 %1113, 4294967295
  store i64 %1116, i64* %RCX.i439, align 8
  store %struct.Memory* %loadMem_44bea9, %struct.Memory** %MEMORY
  %loadMem_44beab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 33
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %1119 to i64*
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 9
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %RSI.i435 = bitcast %union.anon* %1122 to i64*
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 15
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %1125 to i64*
  %1126 = load i64, i64* %RBP.i436
  %1127 = sub i64 %1126, 32
  %1128 = load i64, i64* %PC.i434
  %1129 = add i64 %1128, 4
  store i64 %1129, i64* %PC.i434
  %1130 = inttoptr i64 %1127 to i64*
  %1131 = load i64, i64* %1130
  store i64 %1131, i64* %RSI.i435, align 8
  store %struct.Memory* %loadMem_44beab, %struct.Memory** %MEMORY
  %loadMem_44beaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 33
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %1134 to i64*
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 1
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %RAX.i432 = bitcast %union.anon* %1137 to i64*
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 9
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %RSI.i433 = bitcast %union.anon* %1140 to i64*
  %1141 = load i64, i64* %RSI.i433
  %1142 = add i64 %1141, 6472
  %1143 = load i64, i64* %RAX.i432
  %1144 = load i64, i64* %PC.i431
  %1145 = add i64 %1144, 7
  store i64 %1145, i64* %PC.i431
  %1146 = inttoptr i64 %1142 to i64*
  store i64 %1143, i64* %1146
  store %struct.Memory* %loadMem_44beaf, %struct.Memory** %MEMORY
  %loadMem_44beb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 33
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %1149 to i64*
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1151 = getelementptr inbounds %struct.GPR, %struct.GPR* %1150, i32 0, i32 1
  %1152 = getelementptr inbounds %struct.Reg, %struct.Reg* %1151, i32 0, i32 0
  %RAX.i429 = bitcast %union.anon* %1152 to i64*
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 15
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %RBP.i430 = bitcast %union.anon* %1155 to i64*
  %1156 = load i64, i64* %RBP.i430
  %1157 = sub i64 %1156, 32
  %1158 = load i64, i64* %PC.i428
  %1159 = add i64 %1158, 4
  store i64 %1159, i64* %PC.i428
  %1160 = inttoptr i64 %1157 to i64*
  %1161 = load i64, i64* %1160
  store i64 %1161, i64* %RAX.i429, align 8
  store %struct.Memory* %loadMem_44beb6, %struct.Memory** %MEMORY
  %loadMem_44beba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1163 = getelementptr inbounds %struct.GPR, %struct.GPR* %1162, i32 0, i32 33
  %1164 = getelementptr inbounds %struct.Reg, %struct.Reg* %1163, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %1164 to i64*
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1166 = getelementptr inbounds %struct.GPR, %struct.GPR* %1165, i32 0, i32 1
  %1167 = getelementptr inbounds %struct.Reg, %struct.Reg* %1166, i32 0, i32 0
  %RAX.i426 = bitcast %union.anon* %1167 to i64*
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1169 = getelementptr inbounds %struct.GPR, %struct.GPR* %1168, i32 0, i32 5
  %1170 = getelementptr inbounds %struct.Reg, %struct.Reg* %1169, i32 0, i32 0
  %RCX.i427 = bitcast %union.anon* %1170 to i64*
  %1171 = load i64, i64* %RCX.i427
  %1172 = load i64, i64* %RAX.i426
  %1173 = add i64 %1172, 6472
  %1174 = load i64, i64* %PC.i425
  %1175 = add i64 %1174, 7
  store i64 %1175, i64* %PC.i425
  %1176 = inttoptr i64 %1173 to i64*
  %1177 = load i64, i64* %1176
  %1178 = sub i64 %1171, %1177
  %1179 = icmp ugt i64 %1177, %1171
  %1180 = zext i1 %1179 to i8
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1180, i8* %1181, align 1
  %1182 = trunc i64 %1178 to i32
  %1183 = and i32 %1182, 255
  %1184 = call i32 @llvm.ctpop.i32(i32 %1183)
  %1185 = trunc i32 %1184 to i8
  %1186 = and i8 %1185, 1
  %1187 = xor i8 %1186, 1
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1187, i8* %1188, align 1
  %1189 = xor i64 %1177, %1171
  %1190 = xor i64 %1189, %1178
  %1191 = lshr i64 %1190, 4
  %1192 = trunc i64 %1191 to i8
  %1193 = and i8 %1192, 1
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1193, i8* %1194, align 1
  %1195 = icmp eq i64 %1178, 0
  %1196 = zext i1 %1195 to i8
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1196, i8* %1197, align 1
  %1198 = lshr i64 %1178, 63
  %1199 = trunc i64 %1198 to i8
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1199, i8* %1200, align 1
  %1201 = lshr i64 %1171, 63
  %1202 = lshr i64 %1177, 63
  %1203 = xor i64 %1202, %1201
  %1204 = xor i64 %1198, %1201
  %1205 = add i64 %1204, %1203
  %1206 = icmp eq i64 %1205, 2
  %1207 = zext i1 %1206 to i8
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1207, i8* %1208, align 1
  store %struct.Memory* %loadMem_44beba, %struct.Memory** %MEMORY
  %loadMem_44bec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 33
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %1211 to i64*
  %1212 = load i64, i64* %PC.i424
  %1213 = add i64 %1212, 21
  %1214 = load i64, i64* %PC.i424
  %1215 = add i64 %1214, 6
  %1216 = load i64, i64* %PC.i424
  %1217 = add i64 %1216, 6
  store i64 %1217, i64* %PC.i424
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1219 = load i8, i8* %1218, align 1
  %1220 = icmp eq i8 %1219, 0
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %BRANCH_TAKEN, align 1
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1223 = select i1 %1220, i64 %1213, i64 %1215
  store i64 %1223, i64* %1222, align 8
  store %struct.Memory* %loadMem_44bec1, %struct.Memory** %MEMORY
  %loadBr_44bec1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bec1 = icmp eq i8 %loadBr_44bec1, 1
  br i1 %cmpBr_44bec1, label %block_.L_44bed6, label %block_44bec7

block_44bec7:                                     ; preds = %block_.L_44be8b
  %loadMem_44bec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 33
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %1226 to i64*
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1228 = getelementptr inbounds %struct.GPR, %struct.GPR* %1227, i32 0, i32 11
  %1229 = getelementptr inbounds %struct.Reg, %struct.Reg* %1228, i32 0, i32 0
  %RDI.i423 = bitcast %union.anon* %1229 to i64*
  %1230 = load i64, i64* %PC.i422
  %1231 = add i64 %1230, 10
  store i64 %1231, i64* %PC.i422
  store i64 ptrtoint (%G__0x4c18fd_type* @G__0x4c18fd to i64), i64* %RDI.i423, align 8
  store %struct.Memory* %loadMem_44bec7, %struct.Memory** %MEMORY
  %loadMem1_44bed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1233 = getelementptr inbounds %struct.GPR, %struct.GPR* %1232, i32 0, i32 33
  %1234 = getelementptr inbounds %struct.Reg, %struct.Reg* %1233, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %1234 to i64*
  %1235 = load i64, i64* %PC.i421
  %1236 = add i64 %1235, 54559
  %1237 = load i64, i64* %PC.i421
  %1238 = add i64 %1237, 5
  %1239 = load i64, i64* %PC.i421
  %1240 = add i64 %1239, 5
  store i64 %1240, i64* %PC.i421
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1242 = load i64, i64* %1241, align 8
  %1243 = add i64 %1242, -8
  %1244 = inttoptr i64 %1243 to i64*
  store i64 %1238, i64* %1244
  store i64 %1243, i64* %1241, align 8
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1236, i64* %1245, align 8
  store %struct.Memory* %loadMem1_44bed1, %struct.Memory** %MEMORY
  %loadMem2_44bed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bed1 = load i64, i64* %3
  %call2_44bed1 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64 %loadPC_44bed1, %struct.Memory* %loadMem2_44bed1)
  store %struct.Memory* %call2_44bed1, %struct.Memory** %MEMORY
  br label %block_.L_44bed6

block_.L_44bed6:                                  ; preds = %block_44bec7, %block_.L_44be8b
  %loadMem_44bed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 33
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 9
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %RSI.i420 = bitcast %union.anon* %1251 to i64*
  %1252 = load i64, i64* %PC.i419
  %1253 = add i64 %1252, 5
  store i64 %1253, i64* %PC.i419
  store i64 2, i64* %RSI.i420, align 8
  store %struct.Memory* %loadMem_44bed6, %struct.Memory** %MEMORY
  %loadMem_44bedb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 33
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %1256 to i64*
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 1
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %RAX.i418 = bitcast %union.anon* %1259 to i64*
  %1260 = load i64, i64* %PC.i417
  %1261 = add i64 %1260, 5
  store i64 %1261, i64* %PC.i417
  store i64 4, i64* %RAX.i418, align 8
  store %struct.Memory* %loadMem_44bedb, %struct.Memory** %MEMORY
  %loadMem_44bee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 33
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %1264 to i64*
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1266 = getelementptr inbounds %struct.GPR, %struct.GPR* %1265, i32 0, i32 5
  %1267 = getelementptr inbounds %struct.Reg, %struct.Reg* %1266, i32 0, i32 0
  %RCX.i415 = bitcast %union.anon* %1267 to i64*
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1269 = getelementptr inbounds %struct.GPR, %struct.GPR* %1268, i32 0, i32 15
  %1270 = getelementptr inbounds %struct.Reg, %struct.Reg* %1269, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %1270 to i64*
  %1271 = load i64, i64* %RBP.i416
  %1272 = sub i64 %1271, 32
  %1273 = load i64, i64* %PC.i414
  %1274 = add i64 %1273, 4
  store i64 %1274, i64* %PC.i414
  %1275 = inttoptr i64 %1272 to i64*
  %1276 = load i64, i64* %1275
  store i64 %1276, i64* %RCX.i415, align 8
  store %struct.Memory* %loadMem_44bee0, %struct.Memory** %MEMORY
  %loadMem_44bee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 33
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %1279 to i64*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 5
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %RCX.i413 = bitcast %union.anon* %1282 to i64*
  %1283 = load i64, i64* %RCX.i413
  %1284 = load i64, i64* %PC.i412
  %1285 = add i64 %1284, 7
  store i64 %1285, i64* %PC.i412
  %1286 = add i64 6480, %1283
  store i64 %1286, i64* %RCX.i413, align 8
  %1287 = icmp ult i64 %1286, %1283
  %1288 = icmp ult i64 %1286, 6480
  %1289 = or i1 %1287, %1288
  %1290 = zext i1 %1289 to i8
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1290, i8* %1291, align 1
  %1292 = trunc i64 %1286 to i32
  %1293 = and i32 %1292, 255
  %1294 = call i32 @llvm.ctpop.i32(i32 %1293)
  %1295 = trunc i32 %1294 to i8
  %1296 = and i8 %1295, 1
  %1297 = xor i8 %1296, 1
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1297, i8* %1298, align 1
  %1299 = xor i64 6480, %1283
  %1300 = xor i64 %1299, %1286
  %1301 = lshr i64 %1300, 4
  %1302 = trunc i64 %1301 to i8
  %1303 = and i8 %1302, 1
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1303, i8* %1304, align 1
  %1305 = icmp eq i64 %1286, 0
  %1306 = zext i1 %1305 to i8
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1306, i8* %1307, align 1
  %1308 = lshr i64 %1286, 63
  %1309 = trunc i64 %1308 to i8
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1309, i8* %1310, align 1
  %1311 = lshr i64 %1283, 63
  %1312 = xor i64 %1308, %1311
  %1313 = add i64 %1312, %1308
  %1314 = icmp eq i64 %1313, 2
  %1315 = zext i1 %1314 to i8
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1315, i8* %1316, align 1
  store %struct.Memory* %loadMem_44bee4, %struct.Memory** %MEMORY
  %loadMem_44beeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 33
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %1319 to i64*
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 7
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %RDX.i410 = bitcast %union.anon* %1322 to i64*
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1324 = getelementptr inbounds %struct.GPR, %struct.GPR* %1323, i32 0, i32 15
  %1325 = getelementptr inbounds %struct.Reg, %struct.Reg* %1324, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %1325 to i64*
  %1326 = load i64, i64* %RBP.i411
  %1327 = sub i64 %1326, 8
  %1328 = load i64, i64* %PC.i409
  %1329 = add i64 %1328, 3
  store i64 %1329, i64* %PC.i409
  %1330 = inttoptr i64 %1327 to i32*
  %1331 = load i32, i32* %1330
  %1332 = zext i32 %1331 to i64
  store i64 %1332, i64* %RDX.i410, align 8
  store %struct.Memory* %loadMem_44beeb, %struct.Memory** %MEMORY
  %loadMem_44beee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 33
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %1335 to i64*
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 1
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %EAX.i407 = bitcast %union.anon* %1338 to i32*
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 15
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %1341 to i64*
  %1342 = load i64, i64* %RBP.i408
  %1343 = sub i64 %1342, 44
  %1344 = load i32, i32* %EAX.i407
  %1345 = zext i32 %1344 to i64
  %1346 = load i64, i64* %PC.i406
  %1347 = add i64 %1346, 3
  store i64 %1347, i64* %PC.i406
  %1348 = inttoptr i64 %1343 to i32*
  store i32 %1344, i32* %1348
  store %struct.Memory* %loadMem_44beee, %struct.Memory** %MEMORY
  %loadMem_44bef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 33
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %1351 to i64*
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 7
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %EDX.i404 = bitcast %union.anon* %1354 to i32*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 1
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %RAX.i405 = bitcast %union.anon* %1357 to i64*
  %1358 = load i32, i32* %EDX.i404
  %1359 = zext i32 %1358 to i64
  %1360 = load i64, i64* %PC.i403
  %1361 = add i64 %1360, 2
  store i64 %1361, i64* %PC.i403
  %1362 = and i64 %1359, 4294967295
  store i64 %1362, i64* %RAX.i405, align 8
  store %struct.Memory* %loadMem_44bef1, %struct.Memory** %MEMORY
  %loadMem_44bef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1364 = getelementptr inbounds %struct.GPR, %struct.GPR* %1363, i32 0, i32 33
  %1365 = getelementptr inbounds %struct.Reg, %struct.Reg* %1364, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %1365 to i64*
  %1366 = load i64, i64* %PC.i402
  %1367 = add i64 %1366, 1
  store i64 %1367, i64* %PC.i402
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1370 = bitcast %union.anon* %1369 to i32*
  %1371 = load i32, i32* %1370, align 8
  %1372 = sext i32 %1371 to i64
  %1373 = lshr i64 %1372, 32
  store i64 %1373, i64* %1368, align 8
  store %struct.Memory* %loadMem_44bef3, %struct.Memory** %MEMORY
  %loadMem_44bef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 33
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %1376 to i64*
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 11
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %RDI.i400 = bitcast %union.anon* %1379 to i64*
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 15
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %1382 to i64*
  %1383 = load i64, i64* %RBP.i401
  %1384 = sub i64 %1383, 44
  %1385 = load i64, i64* %PC.i399
  %1386 = add i64 %1385, 3
  store i64 %1386, i64* %PC.i399
  %1387 = inttoptr i64 %1384 to i32*
  %1388 = load i32, i32* %1387
  %1389 = zext i32 %1388 to i64
  store i64 %1389, i64* %RDI.i400, align 8
  store %struct.Memory* %loadMem_44bef4, %struct.Memory** %MEMORY
  %loadMem_44bef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 33
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %1392 to i64*
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 11
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %EDI.i395 = bitcast %union.anon* %1395 to i32*
  %1396 = load i32, i32* %EDI.i395
  %1397 = zext i32 %1396 to i64
  %1398 = load i64, i64* %PC.i394
  %1399 = add i64 %1398, 2
  store i64 %1399, i64* %PC.i394
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1401 = bitcast %union.anon* %1400 to i32*
  %1402 = load i32, i32* %1401, align 8
  %1403 = zext i32 %1402 to i64
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1405 = bitcast %union.anon* %1404 to i32*
  %1406 = load i32, i32* %1405, align 8
  %1407 = zext i32 %1406 to i64
  %1408 = shl i64 %1397, 32
  %1409 = ashr exact i64 %1408, 32
  %1410 = shl i64 %1407, 32
  %1411 = or i64 %1410, %1403
  %1412 = sdiv i64 %1411, %1409
  %1413 = shl i64 %1412, 32
  %1414 = ashr exact i64 %1413, 32
  %1415 = icmp eq i64 %1412, %1414
  br i1 %1415, label %1420, label %1416

; <label>:1416:                                   ; preds = %block_.L_44bed6
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1418 = load i64, i64* %1417, align 8
  %1419 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1418, %struct.Memory* %loadMem_44bef7)
  br label %routine_idivl__edi.exit396

; <label>:1420:                                   ; preds = %block_.L_44bed6
  %1421 = srem i64 %1411, %1409
  %1422 = getelementptr inbounds %union.anon, %union.anon* %1400, i64 0, i32 0
  %1423 = and i64 %1412, 4294967295
  store i64 %1423, i64* %1422, align 8
  %1424 = getelementptr inbounds %union.anon, %union.anon* %1404, i64 0, i32 0
  %1425 = and i64 %1421, 4294967295
  store i64 %1425, i64* %1424, align 8
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1426, align 1
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1427, align 1
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1428, align 1
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1429, align 1
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1430, align 1
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1431, align 1
  br label %routine_idivl__edi.exit396

routine_idivl__edi.exit396:                       ; preds = %1416, %1420
  %1432 = phi %struct.Memory* [ %1419, %1416 ], [ %loadMem_44bef7, %1420 ]
  store %struct.Memory* %1432, %struct.Memory** %MEMORY
  %loadMem_44bef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 33
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %1435 to i64*
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 17
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %R8D.i392 = bitcast %union.anon* %1438 to i32*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 15
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %1441 to i64*
  %1442 = bitcast i32* %R8D.i392 to i64*
  %1443 = load i64, i64* %RBP.i393
  %1444 = sub i64 %1443, 12
  %1445 = load i64, i64* %PC.i391
  %1446 = add i64 %1445, 4
  store i64 %1446, i64* %PC.i391
  %1447 = inttoptr i64 %1444 to i32*
  %1448 = load i32, i32* %1447
  %1449 = zext i32 %1448 to i64
  store i64 %1449, i64* %1442, align 8
  store %struct.Memory* %loadMem_44bef9, %struct.Memory** %MEMORY
  %loadMem_44befd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 33
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %1452 to i64*
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 1
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %EAX.i389 = bitcast %union.anon* %1455 to i32*
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 15
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %1458 to i64*
  %1459 = load i64, i64* %RBP.i390
  %1460 = sub i64 %1459, 48
  %1461 = load i32, i32* %EAX.i389
  %1462 = zext i32 %1461 to i64
  %1463 = load i64, i64* %PC.i388
  %1464 = add i64 %1463, 3
  store i64 %1464, i64* %PC.i388
  %1465 = inttoptr i64 %1460 to i32*
  store i32 %1461, i32* %1465
  store %struct.Memory* %loadMem_44befd, %struct.Memory** %MEMORY
  %loadMem_44bf00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 33
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %1468 to i64*
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 17
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %R8D.i386 = bitcast %union.anon* %1471 to i32*
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1473 = getelementptr inbounds %struct.GPR, %struct.GPR* %1472, i32 0, i32 1
  %1474 = getelementptr inbounds %struct.Reg, %struct.Reg* %1473, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %1474 to i64*
  %1475 = load i32, i32* %R8D.i386
  %1476 = zext i32 %1475 to i64
  %1477 = load i64, i64* %PC.i385
  %1478 = add i64 %1477, 3
  store i64 %1478, i64* %PC.i385
  %1479 = and i64 %1476, 4294967295
  store i64 %1479, i64* %RAX.i387, align 8
  store %struct.Memory* %loadMem_44bf00, %struct.Memory** %MEMORY
  %loadMem_44bf03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 33
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %1482 to i64*
  %1483 = load i64, i64* %PC.i384
  %1484 = add i64 %1483, 1
  store i64 %1484, i64* %PC.i384
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1487 = bitcast %union.anon* %1486 to i32*
  %1488 = load i32, i32* %1487, align 8
  %1489 = sext i32 %1488 to i64
  %1490 = lshr i64 %1489, 32
  store i64 %1490, i64* %1485, align 8
  store %struct.Memory* %loadMem_44bf03, %struct.Memory** %MEMORY
  %loadMem_44bf04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1492 = getelementptr inbounds %struct.GPR, %struct.GPR* %1491, i32 0, i32 33
  %1493 = getelementptr inbounds %struct.Reg, %struct.Reg* %1492, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %1493 to i64*
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 11
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %EDI.i380 = bitcast %union.anon* %1496 to i32*
  %1497 = load i32, i32* %EDI.i380
  %1498 = zext i32 %1497 to i64
  %1499 = load i64, i64* %PC.i379
  %1500 = add i64 %1499, 2
  store i64 %1500, i64* %PC.i379
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1502 = bitcast %union.anon* %1501 to i32*
  %1503 = load i32, i32* %1502, align 8
  %1504 = zext i32 %1503 to i64
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1506 = bitcast %union.anon* %1505 to i32*
  %1507 = load i32, i32* %1506, align 8
  %1508 = zext i32 %1507 to i64
  %1509 = shl i64 %1498, 32
  %1510 = ashr exact i64 %1509, 32
  %1511 = shl i64 %1508, 32
  %1512 = or i64 %1511, %1504
  %1513 = sdiv i64 %1512, %1510
  %1514 = shl i64 %1513, 32
  %1515 = ashr exact i64 %1514, 32
  %1516 = icmp eq i64 %1513, %1515
  br i1 %1516, label %1521, label %1517

; <label>:1517:                                   ; preds = %routine_idivl__edi.exit396
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1519 = load i64, i64* %1518, align 8
  %1520 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1519, %struct.Memory* %loadMem_44bf04)
  br label %routine_idivl__edi.exit

; <label>:1521:                                   ; preds = %routine_idivl__edi.exit396
  %1522 = srem i64 %1512, %1510
  %1523 = getelementptr inbounds %union.anon, %union.anon* %1501, i64 0, i32 0
  %1524 = and i64 %1513, 4294967295
  store i64 %1524, i64* %1523, align 8
  %1525 = getelementptr inbounds %union.anon, %union.anon* %1505, i64 0, i32 0
  %1526 = and i64 %1522, 4294967295
  store i64 %1526, i64* %1525, align 8
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1527, align 1
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1528, align 1
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1529, align 1
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1530, align 1
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1531, align 1
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1532, align 1
  br label %routine_idivl__edi.exit

routine_idivl__edi.exit:                          ; preds = %1517, %1521
  %1533 = phi %struct.Memory* [ %1520, %1517 ], [ %loadMem_44bf04, %1521 ]
  store %struct.Memory* %1533, %struct.Memory** %MEMORY
  %loadMem_44bf06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 33
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %1536 to i64*
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 5
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %RCX.i377 = bitcast %union.anon* %1539 to i64*
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 11
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %RDI.i378 = bitcast %union.anon* %1542 to i64*
  %1543 = load i64, i64* %RCX.i377
  %1544 = load i64, i64* %PC.i376
  %1545 = add i64 %1544, 3
  store i64 %1545, i64* %PC.i376
  store i64 %1543, i64* %RDI.i378, align 8
  store %struct.Memory* %loadMem_44bf06, %struct.Memory** %MEMORY
  %loadMem_44bf09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 33
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %1548 to i64*
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1550 = getelementptr inbounds %struct.GPR, %struct.GPR* %1549, i32 0, i32 17
  %1551 = getelementptr inbounds %struct.Reg, %struct.Reg* %1550, i32 0, i32 0
  %R8D.i374 = bitcast %union.anon* %1551 to i32*
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 15
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %1554 to i64*
  %1555 = bitcast i32* %R8D.i374 to i64*
  %1556 = load i64, i64* %RBP.i375
  %1557 = sub i64 %1556, 48
  %1558 = load i64, i64* %PC.i373
  %1559 = add i64 %1558, 4
  store i64 %1559, i64* %PC.i373
  %1560 = inttoptr i64 %1557 to i32*
  %1561 = load i32, i32* %1560
  %1562 = zext i32 %1561 to i64
  store i64 %1562, i64* %1555, align 8
  store %struct.Memory* %loadMem_44bf09, %struct.Memory** %MEMORY
  %loadMem_44bf0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1564 = getelementptr inbounds %struct.GPR, %struct.GPR* %1563, i32 0, i32 33
  %1565 = getelementptr inbounds %struct.Reg, %struct.Reg* %1564, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %1565 to i64*
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1567 = getelementptr inbounds %struct.GPR, %struct.GPR* %1566, i32 0, i32 17
  %1568 = getelementptr inbounds %struct.Reg, %struct.Reg* %1567, i32 0, i32 0
  %R8D.i371 = bitcast %union.anon* %1568 to i32*
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1570 = getelementptr inbounds %struct.GPR, %struct.GPR* %1569, i32 0, i32 7
  %1571 = getelementptr inbounds %struct.Reg, %struct.Reg* %1570, i32 0, i32 0
  %RDX.i372 = bitcast %union.anon* %1571 to i64*
  %1572 = load i32, i32* %R8D.i371
  %1573 = zext i32 %1572 to i64
  %1574 = load i64, i64* %PC.i370
  %1575 = add i64 %1574, 3
  store i64 %1575, i64* %PC.i370
  %1576 = and i64 %1573, 4294967295
  store i64 %1576, i64* %RDX.i372, align 8
  store %struct.Memory* %loadMem_44bf0d, %struct.Memory** %MEMORY
  %loadMem_44bf10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 33
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %1579 to i64*
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1581 = getelementptr inbounds %struct.GPR, %struct.GPR* %1580, i32 0, i32 1
  %1582 = getelementptr inbounds %struct.Reg, %struct.Reg* %1581, i32 0, i32 0
  %EAX.i368 = bitcast %union.anon* %1582 to i32*
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 5
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %RCX.i369 = bitcast %union.anon* %1585 to i64*
  %1586 = load i32, i32* %EAX.i368
  %1587 = zext i32 %1586 to i64
  %1588 = load i64, i64* %PC.i367
  %1589 = add i64 %1588, 2
  store i64 %1589, i64* %PC.i367
  %1590 = and i64 %1587, 4294967295
  store i64 %1590, i64* %RCX.i369, align 8
  store %struct.Memory* %loadMem_44bf10, %struct.Memory** %MEMORY
  %loadMem1_44bf12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 33
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %1593 to i64*
  %1594 = load i64, i64* %PC.i366
  %1595 = add i64 %1594, 57854
  %1596 = load i64, i64* %PC.i366
  %1597 = add i64 %1596, 5
  %1598 = load i64, i64* %PC.i366
  %1599 = add i64 %1598, 5
  store i64 %1599, i64* %PC.i366
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1601 = load i64, i64* %1600, align 8
  %1602 = add i64 %1601, -8
  %1603 = inttoptr i64 %1602 to i64*
  store i64 %1597, i64* %1603
  store i64 %1602, i64* %1600, align 8
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1595, i64* %1604, align 8
  store %struct.Memory* %loadMem1_44bf12, %struct.Memory** %MEMORY
  %loadMem2_44bf12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bf12 = load i64, i64* %3
  %call2_44bf12 = call %struct.Memory* @sub_45a110.get_mem3Dshort(%struct.State* %0, i64 %loadPC_44bf12, %struct.Memory* %loadMem2_44bf12)
  store %struct.Memory* %call2_44bf12, %struct.Memory** %MEMORY
  %loadMem_44bf17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 33
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %1607 to i64*
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 9
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %RSI.i365 = bitcast %union.anon* %1610 to i64*
  %1611 = load i64, i64* %PC.i364
  %1612 = add i64 %1611, 5
  store i64 %1612, i64* %PC.i364
  store i64 6, i64* %RSI.i365, align 8
  store %struct.Memory* %loadMem_44bf17, %struct.Memory** %MEMORY
  %loadMem_44bf1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1614 = getelementptr inbounds %struct.GPR, %struct.GPR* %1613, i32 0, i32 33
  %1615 = getelementptr inbounds %struct.Reg, %struct.Reg* %1614, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %1615 to i64*
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1617 = getelementptr inbounds %struct.GPR, %struct.GPR* %1616, i32 0, i32 5
  %1618 = getelementptr inbounds %struct.Reg, %struct.Reg* %1617, i32 0, i32 0
  %RCX.i363 = bitcast %union.anon* %1618 to i64*
  %1619 = load i64, i64* %PC.i362
  %1620 = add i64 %1619, 5
  store i64 %1620, i64* %PC.i362
  store i64 4, i64* %RCX.i363, align 8
  store %struct.Memory* %loadMem_44bf1c, %struct.Memory** %MEMORY
  %loadMem_44bf21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1622 = getelementptr inbounds %struct.GPR, %struct.GPR* %1621, i32 0, i32 33
  %1623 = getelementptr inbounds %struct.Reg, %struct.Reg* %1622, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %1623 to i64*
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 11
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %RDI.i360 = bitcast %union.anon* %1626 to i64*
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 15
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %1629 to i64*
  %1630 = load i64, i64* %RBP.i361
  %1631 = sub i64 %1630, 32
  %1632 = load i64, i64* %PC.i359
  %1633 = add i64 %1632, 4
  store i64 %1633, i64* %PC.i359
  %1634 = inttoptr i64 %1631 to i64*
  %1635 = load i64, i64* %1634
  store i64 %1635, i64* %RDI.i360, align 8
  store %struct.Memory* %loadMem_44bf21, %struct.Memory** %MEMORY
  %loadMem_44bf25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 33
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %1638 to i64*
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 11
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %RDI.i358 = bitcast %union.anon* %1641 to i64*
  %1642 = load i64, i64* %RDI.i358
  %1643 = load i64, i64* %PC.i357
  %1644 = add i64 %1643, 7
  store i64 %1644, i64* %PC.i357
  %1645 = add i64 6488, %1642
  store i64 %1645, i64* %RDI.i358, align 8
  %1646 = icmp ult i64 %1645, %1642
  %1647 = icmp ult i64 %1645, 6488
  %1648 = or i1 %1646, %1647
  %1649 = zext i1 %1648 to i8
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1649, i8* %1650, align 1
  %1651 = trunc i64 %1645 to i32
  %1652 = and i32 %1651, 255
  %1653 = call i32 @llvm.ctpop.i32(i32 %1652)
  %1654 = trunc i32 %1653 to i8
  %1655 = and i8 %1654, 1
  %1656 = xor i8 %1655, 1
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1656, i8* %1657, align 1
  %1658 = xor i64 6488, %1642
  %1659 = xor i64 %1658, %1645
  %1660 = lshr i64 %1659, 4
  %1661 = trunc i64 %1660 to i8
  %1662 = and i8 %1661, 1
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1662, i8* %1663, align 1
  %1664 = icmp eq i64 %1645, 0
  %1665 = zext i1 %1664 to i8
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1665, i8* %1666, align 1
  %1667 = lshr i64 %1645, 63
  %1668 = trunc i64 %1667 to i8
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1668, i8* %1669, align 1
  %1670 = lshr i64 %1642, 63
  %1671 = xor i64 %1667, %1670
  %1672 = add i64 %1671, %1667
  %1673 = icmp eq i64 %1672, 2
  %1674 = zext i1 %1673 to i8
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1674, i8* %1675, align 1
  store %struct.Memory* %loadMem_44bf25, %struct.Memory** %MEMORY
  %loadMem_44bf2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1677 = getelementptr inbounds %struct.GPR, %struct.GPR* %1676, i32 0, i32 33
  %1678 = getelementptr inbounds %struct.Reg, %struct.Reg* %1677, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %1678 to i64*
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1680 = getelementptr inbounds %struct.GPR, %struct.GPR* %1679, i32 0, i32 7
  %1681 = getelementptr inbounds %struct.Reg, %struct.Reg* %1680, i32 0, i32 0
  %RDX.i355 = bitcast %union.anon* %1681 to i64*
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1683 = getelementptr inbounds %struct.GPR, %struct.GPR* %1682, i32 0, i32 15
  %1684 = getelementptr inbounds %struct.Reg, %struct.Reg* %1683, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %1684 to i64*
  %1685 = load i64, i64* %RBP.i356
  %1686 = sub i64 %1685, 8
  %1687 = load i64, i64* %PC.i354
  %1688 = add i64 %1687, 3
  store i64 %1688, i64* %PC.i354
  %1689 = inttoptr i64 %1686 to i32*
  %1690 = load i32, i32* %1689
  %1691 = zext i32 %1690 to i64
  store i64 %1691, i64* %RDX.i355, align 8
  store %struct.Memory* %loadMem_44bf2c, %struct.Memory** %MEMORY
  %loadMem_44bf2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1693 = getelementptr inbounds %struct.GPR, %struct.GPR* %1692, i32 0, i32 33
  %1694 = getelementptr inbounds %struct.Reg, %struct.Reg* %1693, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %1694 to i64*
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1696 = getelementptr inbounds %struct.GPR, %struct.GPR* %1695, i32 0, i32 1
  %1697 = getelementptr inbounds %struct.Reg, %struct.Reg* %1696, i32 0, i32 0
  %EAX.i352 = bitcast %union.anon* %1697 to i32*
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 15
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %1700 to i64*
  %1701 = load i64, i64* %RBP.i353
  %1702 = sub i64 %1701, 52
  %1703 = load i32, i32* %EAX.i352
  %1704 = zext i32 %1703 to i64
  %1705 = load i64, i64* %PC.i351
  %1706 = add i64 %1705, 3
  store i64 %1706, i64* %PC.i351
  %1707 = inttoptr i64 %1702 to i32*
  store i32 %1703, i32* %1707
  store %struct.Memory* %loadMem_44bf2f, %struct.Memory** %MEMORY
  %loadMem_44bf32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1709 = getelementptr inbounds %struct.GPR, %struct.GPR* %1708, i32 0, i32 33
  %1710 = getelementptr inbounds %struct.Reg, %struct.Reg* %1709, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %1710 to i64*
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1712 = getelementptr inbounds %struct.GPR, %struct.GPR* %1711, i32 0, i32 7
  %1713 = getelementptr inbounds %struct.Reg, %struct.Reg* %1712, i32 0, i32 0
  %EDX.i349 = bitcast %union.anon* %1713 to i32*
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1715 = getelementptr inbounds %struct.GPR, %struct.GPR* %1714, i32 0, i32 1
  %1716 = getelementptr inbounds %struct.Reg, %struct.Reg* %1715, i32 0, i32 0
  %RAX.i350 = bitcast %union.anon* %1716 to i64*
  %1717 = load i32, i32* %EDX.i349
  %1718 = zext i32 %1717 to i64
  %1719 = load i64, i64* %PC.i348
  %1720 = add i64 %1719, 2
  store i64 %1720, i64* %PC.i348
  %1721 = and i64 %1718, 4294967295
  store i64 %1721, i64* %RAX.i350, align 8
  store %struct.Memory* %loadMem_44bf32, %struct.Memory** %MEMORY
  %loadMem_44bf34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 33
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %1724 to i64*
  %1725 = load i64, i64* %PC.i347
  %1726 = add i64 %1725, 1
  store i64 %1726, i64* %PC.i347
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1729 = bitcast %union.anon* %1728 to i32*
  %1730 = load i32, i32* %1729, align 8
  %1731 = sext i32 %1730 to i64
  %1732 = lshr i64 %1731, 32
  store i64 %1732, i64* %1727, align 8
  store %struct.Memory* %loadMem_44bf34, %struct.Memory** %MEMORY
  %loadMem_44bf35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 33
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %1735 to i64*
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 5
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %ECX.i342 = bitcast %union.anon* %1738 to i32*
  %1739 = load i32, i32* %ECX.i342
  %1740 = zext i32 %1739 to i64
  %1741 = load i64, i64* %PC.i341
  %1742 = add i64 %1741, 2
  store i64 %1742, i64* %PC.i341
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1744 = bitcast %union.anon* %1743 to i32*
  %1745 = load i32, i32* %1744, align 8
  %1746 = zext i32 %1745 to i64
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1748 = bitcast %union.anon* %1747 to i32*
  %1749 = load i32, i32* %1748, align 8
  %1750 = zext i32 %1749 to i64
  %1751 = shl i64 %1740, 32
  %1752 = ashr exact i64 %1751, 32
  %1753 = shl i64 %1750, 32
  %1754 = or i64 %1753, %1746
  %1755 = sdiv i64 %1754, %1752
  %1756 = shl i64 %1755, 32
  %1757 = ashr exact i64 %1756, 32
  %1758 = icmp eq i64 %1755, %1757
  br i1 %1758, label %1763, label %1759

; <label>:1759:                                   ; preds = %routine_idivl__edi.exit
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1761 = load i64, i64* %1760, align 8
  %1762 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1761, %struct.Memory* %loadMem_44bf35)
  br label %routine_idivl__ecx.exit343

; <label>:1763:                                   ; preds = %routine_idivl__edi.exit
  %1764 = srem i64 %1754, %1752
  %1765 = getelementptr inbounds %union.anon, %union.anon* %1743, i64 0, i32 0
  %1766 = and i64 %1755, 4294967295
  store i64 %1766, i64* %1765, align 8
  %1767 = getelementptr inbounds %union.anon, %union.anon* %1747, i64 0, i32 0
  %1768 = and i64 %1764, 4294967295
  store i64 %1768, i64* %1767, align 8
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1769, align 1
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1770, align 1
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1771, align 1
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1772, align 1
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1773, align 1
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1774, align 1
  br label %routine_idivl__ecx.exit343

routine_idivl__ecx.exit343:                       ; preds = %1759, %1763
  %1775 = phi %struct.Memory* [ %1762, %1759 ], [ %loadMem_44bf35, %1763 ]
  store %struct.Memory* %1775, %struct.Memory** %MEMORY
  %loadMem_44bf37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 33
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %1778 to i64*
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 17
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %R8D.i339 = bitcast %union.anon* %1781 to i32*
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1783 = getelementptr inbounds %struct.GPR, %struct.GPR* %1782, i32 0, i32 15
  %1784 = getelementptr inbounds %struct.Reg, %struct.Reg* %1783, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %1784 to i64*
  %1785 = bitcast i32* %R8D.i339 to i64*
  %1786 = load i64, i64* %RBP.i340
  %1787 = sub i64 %1786, 12
  %1788 = load i64, i64* %PC.i338
  %1789 = add i64 %1788, 4
  store i64 %1789, i64* %PC.i338
  %1790 = inttoptr i64 %1787 to i32*
  %1791 = load i32, i32* %1790
  %1792 = zext i32 %1791 to i64
  store i64 %1792, i64* %1785, align 8
  store %struct.Memory* %loadMem_44bf37, %struct.Memory** %MEMORY
  %loadMem_44bf3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1794 = getelementptr inbounds %struct.GPR, %struct.GPR* %1793, i32 0, i32 33
  %1795 = getelementptr inbounds %struct.Reg, %struct.Reg* %1794, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %1795 to i64*
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1797 = getelementptr inbounds %struct.GPR, %struct.GPR* %1796, i32 0, i32 1
  %1798 = getelementptr inbounds %struct.Reg, %struct.Reg* %1797, i32 0, i32 0
  %EAX.i336 = bitcast %union.anon* %1798 to i32*
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1800 = getelementptr inbounds %struct.GPR, %struct.GPR* %1799, i32 0, i32 15
  %1801 = getelementptr inbounds %struct.Reg, %struct.Reg* %1800, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %1801 to i64*
  %1802 = load i64, i64* %RBP.i337
  %1803 = sub i64 %1802, 56
  %1804 = load i32, i32* %EAX.i336
  %1805 = zext i32 %1804 to i64
  %1806 = load i64, i64* %PC.i335
  %1807 = add i64 %1806, 3
  store i64 %1807, i64* %PC.i335
  %1808 = inttoptr i64 %1803 to i32*
  store i32 %1804, i32* %1808
  store %struct.Memory* %loadMem_44bf3b, %struct.Memory** %MEMORY
  %loadMem_44bf3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 33
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %1811 to i64*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 17
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %R8D.i333 = bitcast %union.anon* %1814 to i32*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 1
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %RAX.i334 = bitcast %union.anon* %1817 to i64*
  %1818 = load i32, i32* %R8D.i333
  %1819 = zext i32 %1818 to i64
  %1820 = load i64, i64* %PC.i332
  %1821 = add i64 %1820, 3
  store i64 %1821, i64* %PC.i332
  %1822 = and i64 %1819, 4294967295
  store i64 %1822, i64* %RAX.i334, align 8
  store %struct.Memory* %loadMem_44bf3e, %struct.Memory** %MEMORY
  %loadMem_44bf41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 33
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %1825 to i64*
  %1826 = load i64, i64* %PC.i331
  %1827 = add i64 %1826, 1
  store i64 %1827, i64* %PC.i331
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1830 = bitcast %union.anon* %1829 to i32*
  %1831 = load i32, i32* %1830, align 8
  %1832 = sext i32 %1831 to i64
  %1833 = lshr i64 %1832, 32
  store i64 %1833, i64* %1828, align 8
  store %struct.Memory* %loadMem_44bf41, %struct.Memory** %MEMORY
  %loadMem_44bf42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 33
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %1836 to i64*
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 5
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %ECX.i326 = bitcast %union.anon* %1839 to i32*
  %1840 = load i32, i32* %ECX.i326
  %1841 = zext i32 %1840 to i64
  %1842 = load i64, i64* %PC.i325
  %1843 = add i64 %1842, 2
  store i64 %1843, i64* %PC.i325
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1845 = bitcast %union.anon* %1844 to i32*
  %1846 = load i32, i32* %1845, align 8
  %1847 = zext i32 %1846 to i64
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1849 = bitcast %union.anon* %1848 to i32*
  %1850 = load i32, i32* %1849, align 8
  %1851 = zext i32 %1850 to i64
  %1852 = shl i64 %1841, 32
  %1853 = ashr exact i64 %1852, 32
  %1854 = shl i64 %1851, 32
  %1855 = or i64 %1854, %1847
  %1856 = sdiv i64 %1855, %1853
  %1857 = shl i64 %1856, 32
  %1858 = ashr exact i64 %1857, 32
  %1859 = icmp eq i64 %1856, %1858
  br i1 %1859, label %1864, label %1860

; <label>:1860:                                   ; preds = %routine_idivl__ecx.exit343
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1862 = load i64, i64* %1861, align 8
  %1863 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1862, %struct.Memory* %loadMem_44bf42)
  br label %routine_idivl__ecx.exit327

; <label>:1864:                                   ; preds = %routine_idivl__ecx.exit343
  %1865 = srem i64 %1855, %1853
  %1866 = getelementptr inbounds %union.anon, %union.anon* %1844, i64 0, i32 0
  %1867 = and i64 %1856, 4294967295
  store i64 %1867, i64* %1866, align 8
  %1868 = getelementptr inbounds %union.anon, %union.anon* %1848, i64 0, i32 0
  %1869 = and i64 %1865, 4294967295
  store i64 %1869, i64* %1868, align 8
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1870, align 1
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1871, align 1
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1872, align 1
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1873, align 1
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1874, align 1
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1875, align 1
  br label %routine_idivl__ecx.exit327

routine_idivl__ecx.exit327:                       ; preds = %1860, %1864
  %1876 = phi %struct.Memory* [ %1863, %1860 ], [ %loadMem_44bf42, %1864 ]
  store %struct.Memory* %1876, %struct.Memory** %MEMORY
  %loadMem_44bf44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 33
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %1879 to i64*
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 5
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %RCX.i323 = bitcast %union.anon* %1882 to i64*
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 15
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %1885 to i64*
  %1886 = load i64, i64* %RBP.i324
  %1887 = sub i64 %1886, 56
  %1888 = load i64, i64* %PC.i322
  %1889 = add i64 %1888, 3
  store i64 %1889, i64* %PC.i322
  %1890 = inttoptr i64 %1887 to i32*
  %1891 = load i32, i32* %1890
  %1892 = zext i32 %1891 to i64
  store i64 %1892, i64* %RCX.i323, align 8
  store %struct.Memory* %loadMem_44bf44, %struct.Memory** %MEMORY
  %loadMem_44bf47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 33
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %1895 to i64*
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 5
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %ECX.i320 = bitcast %union.anon* %1898 to i32*
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 7
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %RDX.i321 = bitcast %union.anon* %1901 to i64*
  %1902 = load i32, i32* %ECX.i320
  %1903 = zext i32 %1902 to i64
  %1904 = load i64, i64* %PC.i319
  %1905 = add i64 %1904, 2
  store i64 %1905, i64* %PC.i319
  %1906 = and i64 %1903, 4294967295
  store i64 %1906, i64* %RDX.i321, align 8
  store %struct.Memory* %loadMem_44bf47, %struct.Memory** %MEMORY
  %loadMem_44bf49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 33
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %1909 to i64*
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 1
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %EAX.i317 = bitcast %union.anon* %1912 to i32*
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 5
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %RCX.i318 = bitcast %union.anon* %1915 to i64*
  %1916 = load i32, i32* %EAX.i317
  %1917 = zext i32 %1916 to i64
  %1918 = load i64, i64* %PC.i316
  %1919 = add i64 %1918, 2
  store i64 %1919, i64* %PC.i316
  %1920 = and i64 %1917, 4294967295
  store i64 %1920, i64* %RCX.i318, align 8
  store %struct.Memory* %loadMem_44bf49, %struct.Memory** %MEMORY
  %loadMem1_44bf4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 33
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %1923 to i64*
  %1924 = load i64, i64* %PC.i315
  %1925 = add i64 %1924, 56293
  %1926 = load i64, i64* %PC.i315
  %1927 = add i64 %1926, 5
  %1928 = load i64, i64* %PC.i315
  %1929 = add i64 %1928, 5
  store i64 %1929, i64* %PC.i315
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1931 = load i64, i64* %1930, align 8
  %1932 = add i64 %1931, -8
  %1933 = inttoptr i64 %1932 to i64*
  store i64 %1927, i64* %1933
  store i64 %1932, i64* %1930, align 8
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1925, i64* %1934, align 8
  store %struct.Memory* %loadMem1_44bf4b, %struct.Memory** %MEMORY
  %loadMem2_44bf4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bf4b = load i64, i64* %3
  %call2_44bf4b = call %struct.Memory* @sub_459b30.get_mem3Dint64(%struct.State* %0, i64 %loadPC_44bf4b, %struct.Memory* %loadMem2_44bf4b)
  store %struct.Memory* %call2_44bf4b, %struct.Memory** %MEMORY
  %loadMem_44bf50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 33
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %1937 to i64*
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 9
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %RSI.i314 = bitcast %union.anon* %1940 to i64*
  %1941 = load i64, i64* %PC.i313
  %1942 = add i64 %1941, 5
  store i64 %1942, i64* %PC.i313
  store i64 6, i64* %RSI.i314, align 8
  store %struct.Memory* %loadMem_44bf50, %struct.Memory** %MEMORY
  %loadMem_44bf55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1944 = getelementptr inbounds %struct.GPR, %struct.GPR* %1943, i32 0, i32 33
  %1945 = getelementptr inbounds %struct.Reg, %struct.Reg* %1944, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %1945 to i64*
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 5
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %RCX.i312 = bitcast %union.anon* %1948 to i64*
  %1949 = load i64, i64* %PC.i311
  %1950 = add i64 %1949, 5
  store i64 %1950, i64* %PC.i311
  store i64 4, i64* %RCX.i312, align 8
  store %struct.Memory* %loadMem_44bf55, %struct.Memory** %MEMORY
  %loadMem_44bf5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 33
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %1953 to i64*
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1955 = getelementptr inbounds %struct.GPR, %struct.GPR* %1954, i32 0, i32 11
  %1956 = getelementptr inbounds %struct.Reg, %struct.Reg* %1955, i32 0, i32 0
  %RDI.i309 = bitcast %union.anon* %1956 to i64*
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 15
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %1959 to i64*
  %1960 = load i64, i64* %RBP.i310
  %1961 = sub i64 %1960, 32
  %1962 = load i64, i64* %PC.i308
  %1963 = add i64 %1962, 4
  store i64 %1963, i64* %PC.i308
  %1964 = inttoptr i64 %1961 to i64*
  %1965 = load i64, i64* %1964
  store i64 %1965, i64* %RDI.i309, align 8
  store %struct.Memory* %loadMem_44bf5a, %struct.Memory** %MEMORY
  %loadMem_44bf5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 33
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1968 to i64*
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1970 = getelementptr inbounds %struct.GPR, %struct.GPR* %1969, i32 0, i32 11
  %1971 = getelementptr inbounds %struct.Reg, %struct.Reg* %1970, i32 0, i32 0
  %RDI.i307 = bitcast %union.anon* %1971 to i64*
  %1972 = load i64, i64* %RDI.i307
  %1973 = load i64, i64* %PC.i306
  %1974 = add i64 %1973, 7
  store i64 %1974, i64* %PC.i306
  %1975 = add i64 6496, %1972
  store i64 %1975, i64* %RDI.i307, align 8
  %1976 = icmp ult i64 %1975, %1972
  %1977 = icmp ult i64 %1975, 6496
  %1978 = or i1 %1976, %1977
  %1979 = zext i1 %1978 to i8
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1979, i8* %1980, align 1
  %1981 = trunc i64 %1975 to i32
  %1982 = and i32 %1981, 255
  %1983 = call i32 @llvm.ctpop.i32(i32 %1982)
  %1984 = trunc i32 %1983 to i8
  %1985 = and i8 %1984, 1
  %1986 = xor i8 %1985, 1
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1986, i8* %1987, align 1
  %1988 = xor i64 6496, %1972
  %1989 = xor i64 %1988, %1975
  %1990 = lshr i64 %1989, 4
  %1991 = trunc i64 %1990 to i8
  %1992 = and i8 %1991, 1
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1992, i8* %1993, align 1
  %1994 = icmp eq i64 %1975, 0
  %1995 = zext i1 %1994 to i8
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1995, i8* %1996, align 1
  %1997 = lshr i64 %1975, 63
  %1998 = trunc i64 %1997 to i8
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1998, i8* %1999, align 1
  %2000 = lshr i64 %1972, 63
  %2001 = xor i64 %1997, %2000
  %2002 = add i64 %2001, %1997
  %2003 = icmp eq i64 %2002, 2
  %2004 = zext i1 %2003 to i8
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2004, i8* %2005, align 1
  store %struct.Memory* %loadMem_44bf5e, %struct.Memory** %MEMORY
  %loadMem_44bf65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 33
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %2008 to i64*
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 7
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %RDX.i304 = bitcast %union.anon* %2011 to i64*
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 15
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %2014 to i64*
  %2015 = load i64, i64* %RBP.i305
  %2016 = sub i64 %2015, 8
  %2017 = load i64, i64* %PC.i303
  %2018 = add i64 %2017, 3
  store i64 %2018, i64* %PC.i303
  %2019 = inttoptr i64 %2016 to i32*
  %2020 = load i32, i32* %2019
  %2021 = zext i32 %2020 to i64
  store i64 %2021, i64* %RDX.i304, align 8
  store %struct.Memory* %loadMem_44bf65, %struct.Memory** %MEMORY
  %loadMem_44bf68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2023 = getelementptr inbounds %struct.GPR, %struct.GPR* %2022, i32 0, i32 33
  %2024 = getelementptr inbounds %struct.Reg, %struct.Reg* %2023, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %2024 to i64*
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2026 = getelementptr inbounds %struct.GPR, %struct.GPR* %2025, i32 0, i32 1
  %2027 = getelementptr inbounds %struct.Reg, %struct.Reg* %2026, i32 0, i32 0
  %EAX.i301 = bitcast %union.anon* %2027 to i32*
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 15
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %2030 to i64*
  %2031 = load i64, i64* %RBP.i302
  %2032 = sub i64 %2031, 60
  %2033 = load i32, i32* %EAX.i301
  %2034 = zext i32 %2033 to i64
  %2035 = load i64, i64* %PC.i300
  %2036 = add i64 %2035, 3
  store i64 %2036, i64* %PC.i300
  %2037 = inttoptr i64 %2032 to i32*
  store i32 %2033, i32* %2037
  store %struct.Memory* %loadMem_44bf68, %struct.Memory** %MEMORY
  %loadMem_44bf6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 33
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %2040 to i64*
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 7
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %EDX.i298 = bitcast %union.anon* %2043 to i32*
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2045 = getelementptr inbounds %struct.GPR, %struct.GPR* %2044, i32 0, i32 1
  %2046 = getelementptr inbounds %struct.Reg, %struct.Reg* %2045, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %2046 to i64*
  %2047 = load i32, i32* %EDX.i298
  %2048 = zext i32 %2047 to i64
  %2049 = load i64, i64* %PC.i297
  %2050 = add i64 %2049, 2
  store i64 %2050, i64* %PC.i297
  %2051 = and i64 %2048, 4294967295
  store i64 %2051, i64* %RAX.i299, align 8
  store %struct.Memory* %loadMem_44bf6b, %struct.Memory** %MEMORY
  %loadMem_44bf6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2053 = getelementptr inbounds %struct.GPR, %struct.GPR* %2052, i32 0, i32 33
  %2054 = getelementptr inbounds %struct.Reg, %struct.Reg* %2053, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %2054 to i64*
  %2055 = load i64, i64* %PC.i296
  %2056 = add i64 %2055, 1
  store i64 %2056, i64* %PC.i296
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2059 = bitcast %union.anon* %2058 to i32*
  %2060 = load i32, i32* %2059, align 8
  %2061 = sext i32 %2060 to i64
  %2062 = lshr i64 %2061, 32
  store i64 %2062, i64* %2057, align 8
  store %struct.Memory* %loadMem_44bf6d, %struct.Memory** %MEMORY
  %loadMem_44bf6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 33
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %2065 to i64*
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2067 = getelementptr inbounds %struct.GPR, %struct.GPR* %2066, i32 0, i32 5
  %2068 = getelementptr inbounds %struct.Reg, %struct.Reg* %2067, i32 0, i32 0
  %ECX.i291 = bitcast %union.anon* %2068 to i32*
  %2069 = load i32, i32* %ECX.i291
  %2070 = zext i32 %2069 to i64
  %2071 = load i64, i64* %PC.i290
  %2072 = add i64 %2071, 2
  store i64 %2072, i64* %PC.i290
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2074 = bitcast %union.anon* %2073 to i32*
  %2075 = load i32, i32* %2074, align 8
  %2076 = zext i32 %2075 to i64
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2078 = bitcast %union.anon* %2077 to i32*
  %2079 = load i32, i32* %2078, align 8
  %2080 = zext i32 %2079 to i64
  %2081 = shl i64 %2070, 32
  %2082 = ashr exact i64 %2081, 32
  %2083 = shl i64 %2080, 32
  %2084 = or i64 %2083, %2076
  %2085 = sdiv i64 %2084, %2082
  %2086 = shl i64 %2085, 32
  %2087 = ashr exact i64 %2086, 32
  %2088 = icmp eq i64 %2085, %2087
  br i1 %2088, label %2093, label %2089

; <label>:2089:                                   ; preds = %routine_idivl__ecx.exit327
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2091 = load i64, i64* %2090, align 8
  %2092 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2091, %struct.Memory* %loadMem_44bf6e)
  br label %routine_idivl__ecx.exit292

; <label>:2093:                                   ; preds = %routine_idivl__ecx.exit327
  %2094 = srem i64 %2084, %2082
  %2095 = getelementptr inbounds %union.anon, %union.anon* %2073, i64 0, i32 0
  %2096 = and i64 %2085, 4294967295
  store i64 %2096, i64* %2095, align 8
  %2097 = getelementptr inbounds %union.anon, %union.anon* %2077, i64 0, i32 0
  %2098 = and i64 %2094, 4294967295
  store i64 %2098, i64* %2097, align 8
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2099, align 1
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2100, align 1
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2101, align 1
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2102, align 1
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2103, align 1
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2104, align 1
  br label %routine_idivl__ecx.exit292

routine_idivl__ecx.exit292:                       ; preds = %2089, %2093
  %2105 = phi %struct.Memory* [ %2092, %2089 ], [ %loadMem_44bf6e, %2093 ]
  store %struct.Memory* %2105, %struct.Memory** %MEMORY
  %loadMem_44bf70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2107 = getelementptr inbounds %struct.GPR, %struct.GPR* %2106, i32 0, i32 33
  %2108 = getelementptr inbounds %struct.Reg, %struct.Reg* %2107, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %2108 to i64*
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 17
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %R8D.i288 = bitcast %union.anon* %2111 to i32*
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 15
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %2114 to i64*
  %2115 = bitcast i32* %R8D.i288 to i64*
  %2116 = load i64, i64* %RBP.i289
  %2117 = sub i64 %2116, 12
  %2118 = load i64, i64* %PC.i287
  %2119 = add i64 %2118, 4
  store i64 %2119, i64* %PC.i287
  %2120 = inttoptr i64 %2117 to i32*
  %2121 = load i32, i32* %2120
  %2122 = zext i32 %2121 to i64
  store i64 %2122, i64* %2115, align 8
  store %struct.Memory* %loadMem_44bf70, %struct.Memory** %MEMORY
  %loadMem_44bf74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2124 = getelementptr inbounds %struct.GPR, %struct.GPR* %2123, i32 0, i32 33
  %2125 = getelementptr inbounds %struct.Reg, %struct.Reg* %2124, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2125 to i64*
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 1
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %EAX.i285 = bitcast %union.anon* %2128 to i32*
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 15
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %2131 to i64*
  %2132 = load i64, i64* %RBP.i286
  %2133 = sub i64 %2132, 64
  %2134 = load i32, i32* %EAX.i285
  %2135 = zext i32 %2134 to i64
  %2136 = load i64, i64* %PC.i284
  %2137 = add i64 %2136, 3
  store i64 %2137, i64* %PC.i284
  %2138 = inttoptr i64 %2133 to i32*
  store i32 %2134, i32* %2138
  store %struct.Memory* %loadMem_44bf74, %struct.Memory** %MEMORY
  %loadMem_44bf77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 33
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %2141 to i64*
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 17
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %R8D.i282 = bitcast %union.anon* %2144 to i32*
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2146 = getelementptr inbounds %struct.GPR, %struct.GPR* %2145, i32 0, i32 1
  %2147 = getelementptr inbounds %struct.Reg, %struct.Reg* %2146, i32 0, i32 0
  %RAX.i283 = bitcast %union.anon* %2147 to i64*
  %2148 = load i32, i32* %R8D.i282
  %2149 = zext i32 %2148 to i64
  %2150 = load i64, i64* %PC.i281
  %2151 = add i64 %2150, 3
  store i64 %2151, i64* %PC.i281
  %2152 = and i64 %2149, 4294967295
  store i64 %2152, i64* %RAX.i283, align 8
  store %struct.Memory* %loadMem_44bf77, %struct.Memory** %MEMORY
  %loadMem_44bf7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2154 = getelementptr inbounds %struct.GPR, %struct.GPR* %2153, i32 0, i32 33
  %2155 = getelementptr inbounds %struct.Reg, %struct.Reg* %2154, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %2155 to i64*
  %2156 = load i64, i64* %PC.i280
  %2157 = add i64 %2156, 1
  store i64 %2157, i64* %PC.i280
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2160 = bitcast %union.anon* %2159 to i32*
  %2161 = load i32, i32* %2160, align 8
  %2162 = sext i32 %2161 to i64
  %2163 = lshr i64 %2162, 32
  store i64 %2163, i64* %2158, align 8
  store %struct.Memory* %loadMem_44bf7a, %struct.Memory** %MEMORY
  %loadMem_44bf7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 33
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %2166 to i64*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 5
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %ECX.i276 = bitcast %union.anon* %2169 to i32*
  %2170 = load i32, i32* %ECX.i276
  %2171 = zext i32 %2170 to i64
  %2172 = load i64, i64* %PC.i275
  %2173 = add i64 %2172, 2
  store i64 %2173, i64* %PC.i275
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2175 = bitcast %union.anon* %2174 to i32*
  %2176 = load i32, i32* %2175, align 8
  %2177 = zext i32 %2176 to i64
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2179 = bitcast %union.anon* %2178 to i32*
  %2180 = load i32, i32* %2179, align 8
  %2181 = zext i32 %2180 to i64
  %2182 = shl i64 %2171, 32
  %2183 = ashr exact i64 %2182, 32
  %2184 = shl i64 %2181, 32
  %2185 = or i64 %2184, %2177
  %2186 = sdiv i64 %2185, %2183
  %2187 = shl i64 %2186, 32
  %2188 = ashr exact i64 %2187, 32
  %2189 = icmp eq i64 %2186, %2188
  br i1 %2189, label %2194, label %2190

; <label>:2190:                                   ; preds = %routine_idivl__ecx.exit292
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2192 = load i64, i64* %2191, align 8
  %2193 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2192, %struct.Memory* %loadMem_44bf7b)
  br label %routine_idivl__ecx.exit277

; <label>:2194:                                   ; preds = %routine_idivl__ecx.exit292
  %2195 = srem i64 %2185, %2183
  %2196 = getelementptr inbounds %union.anon, %union.anon* %2174, i64 0, i32 0
  %2197 = and i64 %2186, 4294967295
  store i64 %2197, i64* %2196, align 8
  %2198 = getelementptr inbounds %union.anon, %union.anon* %2178, i64 0, i32 0
  %2199 = and i64 %2195, 4294967295
  store i64 %2199, i64* %2198, align 8
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2200, align 1
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2201, align 1
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2202, align 1
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2203, align 1
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2204, align 1
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2205, align 1
  br label %routine_idivl__ecx.exit277

routine_idivl__ecx.exit277:                       ; preds = %2190, %2194
  %2206 = phi %struct.Memory* [ %2193, %2190 ], [ %loadMem_44bf7b, %2194 ]
  store %struct.Memory* %2206, %struct.Memory** %MEMORY
  %loadMem_44bf7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 33
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %2209 to i64*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 5
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %RCX.i273 = bitcast %union.anon* %2212 to i64*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 15
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %2215 to i64*
  %2216 = load i64, i64* %RBP.i274
  %2217 = sub i64 %2216, 64
  %2218 = load i64, i64* %PC.i272
  %2219 = add i64 %2218, 3
  store i64 %2219, i64* %PC.i272
  %2220 = inttoptr i64 %2217 to i32*
  %2221 = load i32, i32* %2220
  %2222 = zext i32 %2221 to i64
  store i64 %2222, i64* %RCX.i273, align 8
  store %struct.Memory* %loadMem_44bf7d, %struct.Memory** %MEMORY
  %loadMem_44bf80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 33
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %2225 to i64*
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 5
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %ECX.i270 = bitcast %union.anon* %2228 to i32*
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2230 = getelementptr inbounds %struct.GPR, %struct.GPR* %2229, i32 0, i32 7
  %2231 = getelementptr inbounds %struct.Reg, %struct.Reg* %2230, i32 0, i32 0
  %RDX.i271 = bitcast %union.anon* %2231 to i64*
  %2232 = load i32, i32* %ECX.i270
  %2233 = zext i32 %2232 to i64
  %2234 = load i64, i64* %PC.i269
  %2235 = add i64 %2234, 2
  store i64 %2235, i64* %PC.i269
  %2236 = and i64 %2233, 4294967295
  store i64 %2236, i64* %RDX.i271, align 8
  store %struct.Memory* %loadMem_44bf80, %struct.Memory** %MEMORY
  %loadMem_44bf82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2238 = getelementptr inbounds %struct.GPR, %struct.GPR* %2237, i32 0, i32 33
  %2239 = getelementptr inbounds %struct.Reg, %struct.Reg* %2238, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2239 to i64*
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2241 = getelementptr inbounds %struct.GPR, %struct.GPR* %2240, i32 0, i32 1
  %2242 = getelementptr inbounds %struct.Reg, %struct.Reg* %2241, i32 0, i32 0
  %EAX.i267 = bitcast %union.anon* %2242 to i32*
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 5
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %RCX.i268 = bitcast %union.anon* %2245 to i64*
  %2246 = load i32, i32* %EAX.i267
  %2247 = zext i32 %2246 to i64
  %2248 = load i64, i64* %PC.i266
  %2249 = add i64 %2248, 2
  store i64 %2249, i64* %PC.i266
  %2250 = and i64 %2247, 4294967295
  store i64 %2250, i64* %RCX.i268, align 8
  store %struct.Memory* %loadMem_44bf82, %struct.Memory** %MEMORY
  %loadMem1_44bf84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2252 = getelementptr inbounds %struct.GPR, %struct.GPR* %2251, i32 0, i32 33
  %2253 = getelementptr inbounds %struct.Reg, %struct.Reg* %2252, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %2253 to i64*
  %2254 = load i64, i64* %PC.i265
  %2255 = add i64 %2254, 56236
  %2256 = load i64, i64* %PC.i265
  %2257 = add i64 %2256, 5
  %2258 = load i64, i64* %PC.i265
  %2259 = add i64 %2258, 5
  store i64 %2259, i64* %PC.i265
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2261 = load i64, i64* %2260, align 8
  %2262 = add i64 %2261, -8
  %2263 = inttoptr i64 %2262 to i64*
  store i64 %2257, i64* %2263
  store i64 %2262, i64* %2260, align 8
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2255, i64* %2264, align 8
  store %struct.Memory* %loadMem1_44bf84, %struct.Memory** %MEMORY
  %loadMem2_44bf84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bf84 = load i64, i64* %3
  %call2_44bf84 = call %struct.Memory* @sub_459b30.get_mem3Dint64(%struct.State* %0, i64 %loadPC_44bf84, %struct.Memory* %loadMem2_44bf84)
  store %struct.Memory* %call2_44bf84, %struct.Memory** %MEMORY
  %loadMem_44bf89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 33
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %2267 to i64*
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2269 = getelementptr inbounds %struct.GPR, %struct.GPR* %2268, i32 0, i32 5
  %2270 = getelementptr inbounds %struct.Reg, %struct.Reg* %2269, i32 0, i32 0
  %RCX.i264 = bitcast %union.anon* %2270 to i64*
  %2271 = load i64, i64* %PC.i263
  %2272 = add i64 %2271, 5
  store i64 %2272, i64* %PC.i263
  store i64 2, i64* %RCX.i264, align 8
  store %struct.Memory* %loadMem_44bf89, %struct.Memory** %MEMORY
  %loadMem_44bf8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 33
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %2275 to i64*
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2277 = getelementptr inbounds %struct.GPR, %struct.GPR* %2276, i32 0, i32 7
  %2278 = getelementptr inbounds %struct.Reg, %struct.Reg* %2277, i32 0, i32 0
  %RDX.i262 = bitcast %union.anon* %2278 to i64*
  %2279 = load i64, i64* %PC.i261
  %2280 = add i64 %2279, 5
  store i64 %2280, i64* %PC.i261
  store i64 4, i64* %RDX.i262, align 8
  store %struct.Memory* %loadMem_44bf8e, %struct.Memory** %MEMORY
  %loadMem_44bf93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 33
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %2283 to i64*
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2285 = getelementptr inbounds %struct.GPR, %struct.GPR* %2284, i32 0, i32 11
  %2286 = getelementptr inbounds %struct.Reg, %struct.Reg* %2285, i32 0, i32 0
  %RDI.i259 = bitcast %union.anon* %2286 to i64*
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 15
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %2289 to i64*
  %2290 = load i64, i64* %RBP.i260
  %2291 = sub i64 %2290, 32
  %2292 = load i64, i64* %PC.i258
  %2293 = add i64 %2292, 4
  store i64 %2293, i64* %PC.i258
  %2294 = inttoptr i64 %2291 to i64*
  %2295 = load i64, i64* %2294
  store i64 %2295, i64* %RDI.i259, align 8
  store %struct.Memory* %loadMem_44bf93, %struct.Memory** %MEMORY
  %loadMem_44bf97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 33
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %2298 to i64*
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 11
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %RDI.i257 = bitcast %union.anon* %2301 to i64*
  %2302 = load i64, i64* %RDI.i257
  %2303 = load i64, i64* %PC.i256
  %2304 = add i64 %2303, 7
  store i64 %2304, i64* %PC.i256
  %2305 = add i64 6504, %2302
  store i64 %2305, i64* %RDI.i257, align 8
  %2306 = icmp ult i64 %2305, %2302
  %2307 = icmp ult i64 %2305, 6504
  %2308 = or i1 %2306, %2307
  %2309 = zext i1 %2308 to i8
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2309, i8* %2310, align 1
  %2311 = trunc i64 %2305 to i32
  %2312 = and i32 %2311, 255
  %2313 = call i32 @llvm.ctpop.i32(i32 %2312)
  %2314 = trunc i32 %2313 to i8
  %2315 = and i8 %2314, 1
  %2316 = xor i8 %2315, 1
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2316, i8* %2317, align 1
  %2318 = xor i64 6504, %2302
  %2319 = xor i64 %2318, %2305
  %2320 = lshr i64 %2319, 4
  %2321 = trunc i64 %2320 to i8
  %2322 = and i8 %2321, 1
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2322, i8* %2323, align 1
  %2324 = icmp eq i64 %2305, 0
  %2325 = zext i1 %2324 to i8
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2325, i8* %2326, align 1
  %2327 = lshr i64 %2305, 63
  %2328 = trunc i64 %2327 to i8
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2328, i8* %2329, align 1
  %2330 = lshr i64 %2302, 63
  %2331 = xor i64 %2327, %2330
  %2332 = add i64 %2331, %2327
  %2333 = icmp eq i64 %2332, 2
  %2334 = zext i1 %2333 to i8
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2334, i8* %2335, align 1
  store %struct.Memory* %loadMem_44bf97, %struct.Memory** %MEMORY
  %loadMem_44bf9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 33
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %2338 to i64*
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 9
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %RSI.i254 = bitcast %union.anon* %2341 to i64*
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 15
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %2344 to i64*
  %2345 = load i64, i64* %RBP.i255
  %2346 = sub i64 %2345, 8
  %2347 = load i64, i64* %PC.i253
  %2348 = add i64 %2347, 3
  store i64 %2348, i64* %PC.i253
  %2349 = inttoptr i64 %2346 to i32*
  %2350 = load i32, i32* %2349
  %2351 = zext i32 %2350 to i64
  store i64 %2351, i64* %RSI.i254, align 8
  store %struct.Memory* %loadMem_44bf9e, %struct.Memory** %MEMORY
  %loadMem_44bfa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 33
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %2354 to i64*
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 1
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %EAX.i251 = bitcast %union.anon* %2357 to i32*
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2359 = getelementptr inbounds %struct.GPR, %struct.GPR* %2358, i32 0, i32 15
  %2360 = getelementptr inbounds %struct.Reg, %struct.Reg* %2359, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %2360 to i64*
  %2361 = load i64, i64* %RBP.i252
  %2362 = sub i64 %2361, 68
  %2363 = load i32, i32* %EAX.i251
  %2364 = zext i32 %2363 to i64
  %2365 = load i64, i64* %PC.i250
  %2366 = add i64 %2365, 3
  store i64 %2366, i64* %PC.i250
  %2367 = inttoptr i64 %2362 to i32*
  store i32 %2363, i32* %2367
  store %struct.Memory* %loadMem_44bfa1, %struct.Memory** %MEMORY
  %loadMem_44bfa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 33
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %2370 to i64*
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 9
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %ESI.i248 = bitcast %union.anon* %2373 to i32*
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 1
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %2376 to i64*
  %2377 = load i32, i32* %ESI.i248
  %2378 = zext i32 %2377 to i64
  %2379 = load i64, i64* %PC.i247
  %2380 = add i64 %2379, 2
  store i64 %2380, i64* %PC.i247
  %2381 = and i64 %2378, 4294967295
  store i64 %2381, i64* %RAX.i249, align 8
  store %struct.Memory* %loadMem_44bfa4, %struct.Memory** %MEMORY
  %loadMem_44bfa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2383 = getelementptr inbounds %struct.GPR, %struct.GPR* %2382, i32 0, i32 33
  %2384 = getelementptr inbounds %struct.Reg, %struct.Reg* %2383, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %2384 to i64*
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2386 = getelementptr inbounds %struct.GPR, %struct.GPR* %2385, i32 0, i32 7
  %2387 = getelementptr inbounds %struct.Reg, %struct.Reg* %2386, i32 0, i32 0
  %EDX.i245 = bitcast %union.anon* %2387 to i32*
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2389 = getelementptr inbounds %struct.GPR, %struct.GPR* %2388, i32 0, i32 15
  %2390 = getelementptr inbounds %struct.Reg, %struct.Reg* %2389, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %2390 to i64*
  %2391 = load i64, i64* %RBP.i246
  %2392 = sub i64 %2391, 72
  %2393 = load i32, i32* %EDX.i245
  %2394 = zext i32 %2393 to i64
  %2395 = load i64, i64* %PC.i244
  %2396 = add i64 %2395, 3
  store i64 %2396, i64* %PC.i244
  %2397 = inttoptr i64 %2392 to i32*
  store i32 %2393, i32* %2397
  store %struct.Memory* %loadMem_44bfa6, %struct.Memory** %MEMORY
  %loadMem_44bfa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2399 = getelementptr inbounds %struct.GPR, %struct.GPR* %2398, i32 0, i32 33
  %2400 = getelementptr inbounds %struct.Reg, %struct.Reg* %2399, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %2400 to i64*
  %2401 = load i64, i64* %PC.i243
  %2402 = add i64 %2401, 1
  store i64 %2402, i64* %PC.i243
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2405 = bitcast %union.anon* %2404 to i32*
  %2406 = load i32, i32* %2405, align 8
  %2407 = sext i32 %2406 to i64
  %2408 = lshr i64 %2407, 32
  store i64 %2408, i64* %2403, align 8
  store %struct.Memory* %loadMem_44bfa9, %struct.Memory** %MEMORY
  %loadMem_44bfaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2410 = getelementptr inbounds %struct.GPR, %struct.GPR* %2409, i32 0, i32 33
  %2411 = getelementptr inbounds %struct.Reg, %struct.Reg* %2410, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %2411 to i64*
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 9
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %RSI.i241 = bitcast %union.anon* %2414 to i64*
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 15
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %2417 to i64*
  %2418 = load i64, i64* %RBP.i242
  %2419 = sub i64 %2418, 72
  %2420 = load i64, i64* %PC.i240
  %2421 = add i64 %2420, 3
  store i64 %2421, i64* %PC.i240
  %2422 = inttoptr i64 %2419 to i32*
  %2423 = load i32, i32* %2422
  %2424 = zext i32 %2423 to i64
  store i64 %2424, i64* %RSI.i241, align 8
  store %struct.Memory* %loadMem_44bfaa, %struct.Memory** %MEMORY
  %loadMem_44bfad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2426 = getelementptr inbounds %struct.GPR, %struct.GPR* %2425, i32 0, i32 33
  %2427 = getelementptr inbounds %struct.Reg, %struct.Reg* %2426, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %2427 to i64*
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2429 = getelementptr inbounds %struct.GPR, %struct.GPR* %2428, i32 0, i32 9
  %2430 = getelementptr inbounds %struct.Reg, %struct.Reg* %2429, i32 0, i32 0
  %ESI.i236 = bitcast %union.anon* %2430 to i32*
  %2431 = load i32, i32* %ESI.i236
  %2432 = zext i32 %2431 to i64
  %2433 = load i64, i64* %PC.i235
  %2434 = add i64 %2433, 2
  store i64 %2434, i64* %PC.i235
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2436 = bitcast %union.anon* %2435 to i32*
  %2437 = load i32, i32* %2436, align 8
  %2438 = zext i32 %2437 to i64
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2440 = bitcast %union.anon* %2439 to i32*
  %2441 = load i32, i32* %2440, align 8
  %2442 = zext i32 %2441 to i64
  %2443 = shl i64 %2432, 32
  %2444 = ashr exact i64 %2443, 32
  %2445 = shl i64 %2442, 32
  %2446 = or i64 %2445, %2438
  %2447 = sdiv i64 %2446, %2444
  %2448 = shl i64 %2447, 32
  %2449 = ashr exact i64 %2448, 32
  %2450 = icmp eq i64 %2447, %2449
  br i1 %2450, label %2455, label %2451

; <label>:2451:                                   ; preds = %routine_idivl__ecx.exit277
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2453 = load i64, i64* %2452, align 8
  %2454 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2453, %struct.Memory* %loadMem_44bfad)
  br label %routine_idivl__esi.exit237

; <label>:2455:                                   ; preds = %routine_idivl__ecx.exit277
  %2456 = srem i64 %2446, %2444
  %2457 = getelementptr inbounds %union.anon, %union.anon* %2435, i64 0, i32 0
  %2458 = and i64 %2447, 4294967295
  store i64 %2458, i64* %2457, align 8
  %2459 = getelementptr inbounds %union.anon, %union.anon* %2439, i64 0, i32 0
  %2460 = and i64 %2456, 4294967295
  store i64 %2460, i64* %2459, align 8
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2461, align 1
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2462, align 1
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2463, align 1
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2464, align 1
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2465, align 1
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2466, align 1
  br label %routine_idivl__esi.exit237

routine_idivl__esi.exit237:                       ; preds = %2451, %2455
  %2467 = phi %struct.Memory* [ %2454, %2451 ], [ %loadMem_44bfad, %2455 ]
  store %struct.Memory* %2467, %struct.Memory** %MEMORY
  %loadMem_44bfaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2469 = getelementptr inbounds %struct.GPR, %struct.GPR* %2468, i32 0, i32 33
  %2470 = getelementptr inbounds %struct.Reg, %struct.Reg* %2469, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %2470 to i64*
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 17
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %R8D.i233 = bitcast %union.anon* %2473 to i32*
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 15
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %2476 to i64*
  %2477 = bitcast i32* %R8D.i233 to i64*
  %2478 = load i64, i64* %RBP.i234
  %2479 = sub i64 %2478, 12
  %2480 = load i64, i64* %PC.i232
  %2481 = add i64 %2480, 4
  store i64 %2481, i64* %PC.i232
  %2482 = inttoptr i64 %2479 to i32*
  %2483 = load i32, i32* %2482
  %2484 = zext i32 %2483 to i64
  store i64 %2484, i64* %2477, align 8
  store %struct.Memory* %loadMem_44bfaf, %struct.Memory** %MEMORY
  %loadMem_44bfb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 33
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %2487 to i64*
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2489 = getelementptr inbounds %struct.GPR, %struct.GPR* %2488, i32 0, i32 1
  %2490 = getelementptr inbounds %struct.Reg, %struct.Reg* %2489, i32 0, i32 0
  %EAX.i230 = bitcast %union.anon* %2490 to i32*
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2492 = getelementptr inbounds %struct.GPR, %struct.GPR* %2491, i32 0, i32 15
  %2493 = getelementptr inbounds %struct.Reg, %struct.Reg* %2492, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %2493 to i64*
  %2494 = load i64, i64* %RBP.i231
  %2495 = sub i64 %2494, 76
  %2496 = load i32, i32* %EAX.i230
  %2497 = zext i32 %2496 to i64
  %2498 = load i64, i64* %PC.i229
  %2499 = add i64 %2498, 3
  store i64 %2499, i64* %PC.i229
  %2500 = inttoptr i64 %2495 to i32*
  store i32 %2496, i32* %2500
  store %struct.Memory* %loadMem_44bfb3, %struct.Memory** %MEMORY
  %loadMem_44bfb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 33
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %2503 to i64*
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 17
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %R8D.i227 = bitcast %union.anon* %2506 to i32*
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 1
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %2509 to i64*
  %2510 = load i32, i32* %R8D.i227
  %2511 = zext i32 %2510 to i64
  %2512 = load i64, i64* %PC.i226
  %2513 = add i64 %2512, 3
  store i64 %2513, i64* %PC.i226
  %2514 = and i64 %2511, 4294967295
  store i64 %2514, i64* %RAX.i228, align 8
  store %struct.Memory* %loadMem_44bfb6, %struct.Memory** %MEMORY
  %loadMem_44bfb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2516 = getelementptr inbounds %struct.GPR, %struct.GPR* %2515, i32 0, i32 33
  %2517 = getelementptr inbounds %struct.Reg, %struct.Reg* %2516, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %2517 to i64*
  %2518 = load i64, i64* %PC.i225
  %2519 = add i64 %2518, 1
  store i64 %2519, i64* %PC.i225
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2522 = bitcast %union.anon* %2521 to i32*
  %2523 = load i32, i32* %2522, align 8
  %2524 = sext i32 %2523 to i64
  %2525 = lshr i64 %2524, 32
  store i64 %2525, i64* %2520, align 8
  store %struct.Memory* %loadMem_44bfb9, %struct.Memory** %MEMORY
  %loadMem_44bfba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 33
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 9
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %ESI.i222 = bitcast %union.anon* %2531 to i32*
  %2532 = load i32, i32* %ESI.i222
  %2533 = zext i32 %2532 to i64
  %2534 = load i64, i64* %PC.i221
  %2535 = add i64 %2534, 2
  store i64 %2535, i64* %PC.i221
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2537 = bitcast %union.anon* %2536 to i32*
  %2538 = load i32, i32* %2537, align 8
  %2539 = zext i32 %2538 to i64
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2541 = bitcast %union.anon* %2540 to i32*
  %2542 = load i32, i32* %2541, align 8
  %2543 = zext i32 %2542 to i64
  %2544 = shl i64 %2533, 32
  %2545 = ashr exact i64 %2544, 32
  %2546 = shl i64 %2543, 32
  %2547 = or i64 %2546, %2539
  %2548 = sdiv i64 %2547, %2545
  %2549 = shl i64 %2548, 32
  %2550 = ashr exact i64 %2549, 32
  %2551 = icmp eq i64 %2548, %2550
  br i1 %2551, label %2556, label %2552

; <label>:2552:                                   ; preds = %routine_idivl__esi.exit237
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2554 = load i64, i64* %2553, align 8
  %2555 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2554, %struct.Memory* %loadMem_44bfba)
  br label %routine_idivl__esi.exit

; <label>:2556:                                   ; preds = %routine_idivl__esi.exit237
  %2557 = srem i64 %2547, %2545
  %2558 = getelementptr inbounds %union.anon, %union.anon* %2536, i64 0, i32 0
  %2559 = and i64 %2548, 4294967295
  store i64 %2559, i64* %2558, align 8
  %2560 = getelementptr inbounds %union.anon, %union.anon* %2540, i64 0, i32 0
  %2561 = and i64 %2557, 4294967295
  store i64 %2561, i64* %2560, align 8
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2562, align 1
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2563, align 1
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2564, align 1
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2565, align 1
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2566, align 1
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2567, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %2552, %2556
  %2568 = phi %struct.Memory* [ %2555, %2552 ], [ %loadMem_44bfba, %2556 ]
  store %struct.Memory* %2568, %struct.Memory** %MEMORY
  %loadMem_44bfbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2570 = getelementptr inbounds %struct.GPR, %struct.GPR* %2569, i32 0, i32 33
  %2571 = getelementptr inbounds %struct.Reg, %struct.Reg* %2570, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %2571 to i64*
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2573 = getelementptr inbounds %struct.GPR, %struct.GPR* %2572, i32 0, i32 5
  %2574 = getelementptr inbounds %struct.Reg, %struct.Reg* %2573, i32 0, i32 0
  %ECX.i219 = bitcast %union.anon* %2574 to i32*
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 9
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %RSI.i220 = bitcast %union.anon* %2577 to i64*
  %2578 = load i32, i32* %ECX.i219
  %2579 = zext i32 %2578 to i64
  %2580 = load i64, i64* %PC.i218
  %2581 = add i64 %2580, 2
  store i64 %2581, i64* %PC.i218
  %2582 = and i64 %2579, 4294967295
  store i64 %2582, i64* %RSI.i220, align 8
  store %struct.Memory* %loadMem_44bfbc, %struct.Memory** %MEMORY
  %loadMem_44bfbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 33
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %2585 to i64*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 17
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %R8D.i216 = bitcast %union.anon* %2588 to i32*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 15
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %2591 to i64*
  %2592 = bitcast i32* %R8D.i216 to i64*
  %2593 = load i64, i64* %RBP.i217
  %2594 = sub i64 %2593, 76
  %2595 = load i64, i64* %PC.i215
  %2596 = add i64 %2595, 4
  store i64 %2596, i64* %PC.i215
  %2597 = inttoptr i64 %2594 to i32*
  %2598 = load i32, i32* %2597
  %2599 = zext i32 %2598 to i64
  store i64 %2599, i64* %2592, align 8
  store %struct.Memory* %loadMem_44bfbe, %struct.Memory** %MEMORY
  %loadMem_44bfc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2601 = getelementptr inbounds %struct.GPR, %struct.GPR* %2600, i32 0, i32 33
  %2602 = getelementptr inbounds %struct.Reg, %struct.Reg* %2601, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %2602 to i64*
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2604 = getelementptr inbounds %struct.GPR, %struct.GPR* %2603, i32 0, i32 17
  %2605 = getelementptr inbounds %struct.Reg, %struct.Reg* %2604, i32 0, i32 0
  %R8D.i213 = bitcast %union.anon* %2605 to i32*
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2607 = getelementptr inbounds %struct.GPR, %struct.GPR* %2606, i32 0, i32 7
  %2608 = getelementptr inbounds %struct.Reg, %struct.Reg* %2607, i32 0, i32 0
  %RDX.i214 = bitcast %union.anon* %2608 to i64*
  %2609 = load i32, i32* %R8D.i213
  %2610 = zext i32 %2609 to i64
  %2611 = load i64, i64* %PC.i212
  %2612 = add i64 %2611, 3
  store i64 %2612, i64* %PC.i212
  %2613 = and i64 %2610, 4294967295
  store i64 %2613, i64* %RDX.i214, align 8
  store %struct.Memory* %loadMem_44bfc2, %struct.Memory** %MEMORY
  %loadMem_44bfc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2615 = getelementptr inbounds %struct.GPR, %struct.GPR* %2614, i32 0, i32 33
  %2616 = getelementptr inbounds %struct.Reg, %struct.Reg* %2615, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %2616 to i64*
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2618 = getelementptr inbounds %struct.GPR, %struct.GPR* %2617, i32 0, i32 5
  %2619 = getelementptr inbounds %struct.Reg, %struct.Reg* %2618, i32 0, i32 0
  %ECX.i210 = bitcast %union.anon* %2619 to i32*
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2621 = getelementptr inbounds %struct.GPR, %struct.GPR* %2620, i32 0, i32 15
  %2622 = getelementptr inbounds %struct.Reg, %struct.Reg* %2621, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %2622 to i64*
  %2623 = load i64, i64* %RBP.i211
  %2624 = sub i64 %2623, 80
  %2625 = load i32, i32* %ECX.i210
  %2626 = zext i32 %2625 to i64
  %2627 = load i64, i64* %PC.i209
  %2628 = add i64 %2627, 3
  store i64 %2628, i64* %PC.i209
  %2629 = inttoptr i64 %2624 to i32*
  store i32 %2625, i32* %2629
  store %struct.Memory* %loadMem_44bfc5, %struct.Memory** %MEMORY
  %loadMem_44bfc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2631 = getelementptr inbounds %struct.GPR, %struct.GPR* %2630, i32 0, i32 33
  %2632 = getelementptr inbounds %struct.Reg, %struct.Reg* %2631, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %2632 to i64*
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 1
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %EAX.i207 = bitcast %union.anon* %2635 to i32*
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 5
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %RCX.i208 = bitcast %union.anon* %2638 to i64*
  %2639 = load i32, i32* %EAX.i207
  %2640 = zext i32 %2639 to i64
  %2641 = load i64, i64* %PC.i206
  %2642 = add i64 %2641, 2
  store i64 %2642, i64* %PC.i206
  %2643 = and i64 %2640, 4294967295
  store i64 %2643, i64* %RCX.i208, align 8
  store %struct.Memory* %loadMem_44bfc8, %struct.Memory** %MEMORY
  %loadMem_44bfca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2645 = getelementptr inbounds %struct.GPR, %struct.GPR* %2644, i32 0, i32 33
  %2646 = getelementptr inbounds %struct.Reg, %struct.Reg* %2645, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %2646 to i64*
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2648 = getelementptr inbounds %struct.GPR, %struct.GPR* %2647, i32 0, i32 17
  %2649 = getelementptr inbounds %struct.Reg, %struct.Reg* %2648, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %2649 to i32*
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2651 = getelementptr inbounds %struct.GPR, %struct.GPR* %2650, i32 0, i32 15
  %2652 = getelementptr inbounds %struct.Reg, %struct.Reg* %2651, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %2652 to i64*
  %2653 = bitcast i32* %R8D.i to i64*
  %2654 = load i64, i64* %RBP.i205
  %2655 = sub i64 %2654, 80
  %2656 = load i64, i64* %PC.i204
  %2657 = add i64 %2656, 4
  store i64 %2657, i64* %PC.i204
  %2658 = inttoptr i64 %2655 to i32*
  %2659 = load i32, i32* %2658
  %2660 = zext i32 %2659 to i64
  store i64 %2660, i64* %2653, align 8
  store %struct.Memory* %loadMem_44bfca, %struct.Memory** %MEMORY
  %loadMem1_44bfce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2662 = getelementptr inbounds %struct.GPR, %struct.GPR* %2661, i32 0, i32 33
  %2663 = getelementptr inbounds %struct.Reg, %struct.Reg* %2662, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %2663 to i64*
  %2664 = load i64, i64* %PC.i203
  %2665 = add i64 %2664, 57842
  %2666 = load i64, i64* %PC.i203
  %2667 = add i64 %2666, 5
  %2668 = load i64, i64* %PC.i203
  %2669 = add i64 %2668, 5
  store i64 %2669, i64* %PC.i203
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2671 = load i64, i64* %2670, align 8
  %2672 = add i64 %2671, -8
  %2673 = inttoptr i64 %2672 to i64*
  store i64 %2667, i64* %2673
  store i64 %2672, i64* %2670, align 8
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2665, i64* %2674, align 8
  store %struct.Memory* %loadMem1_44bfce, %struct.Memory** %MEMORY
  %loadMem2_44bfce = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bfce = load i64, i64* %3
  %call2_44bfce = call %struct.Memory* @sub_45a1c0.get_mem4Dshort(%struct.State* %0, i64 %loadPC_44bfce, %struct.Memory* %loadMem2_44bfce)
  store %struct.Memory* %call2_44bfce, %struct.Memory** %MEMORY
  %loadMem_44bfd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2676 = getelementptr inbounds %struct.GPR, %struct.GPR* %2675, i32 0, i32 33
  %2677 = getelementptr inbounds %struct.Reg, %struct.Reg* %2676, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %2677 to i64*
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 5
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %RCX.i202 = bitcast %union.anon* %2680 to i64*
  %2681 = load i64, i64* %PC.i201
  %2682 = add i64 %2681, 5
  store i64 %2682, i64* %PC.i201
  store i64 4, i64* %RCX.i202, align 8
  store %struct.Memory* %loadMem_44bfd3, %struct.Memory** %MEMORY
  %loadMem_44bfd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 33
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %2685 to i64*
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 11
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %RDI.i199 = bitcast %union.anon* %2688 to i64*
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2690 = getelementptr inbounds %struct.GPR, %struct.GPR* %2689, i32 0, i32 15
  %2691 = getelementptr inbounds %struct.Reg, %struct.Reg* %2690, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %2691 to i64*
  %2692 = load i64, i64* %RBP.i200
  %2693 = sub i64 %2692, 32
  %2694 = load i64, i64* %PC.i198
  %2695 = add i64 %2694, 4
  store i64 %2695, i64* %PC.i198
  %2696 = inttoptr i64 %2693 to i64*
  %2697 = load i64, i64* %2696
  store i64 %2697, i64* %RDI.i199, align 8
  store %struct.Memory* %loadMem_44bfd8, %struct.Memory** %MEMORY
  %loadMem_44bfdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 33
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %2700 to i64*
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 11
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %RDI.i197 = bitcast %union.anon* %2703 to i64*
  %2704 = load i64, i64* %RDI.i197
  %2705 = load i64, i64* %PC.i196
  %2706 = add i64 %2705, 7
  store i64 %2706, i64* %PC.i196
  %2707 = add i64 6512, %2704
  store i64 %2707, i64* %RDI.i197, align 8
  %2708 = icmp ult i64 %2707, %2704
  %2709 = icmp ult i64 %2707, 6512
  %2710 = or i1 %2708, %2709
  %2711 = zext i1 %2710 to i8
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2711, i8* %2712, align 1
  %2713 = trunc i64 %2707 to i32
  %2714 = and i32 %2713, 255
  %2715 = call i32 @llvm.ctpop.i32(i32 %2714)
  %2716 = trunc i32 %2715 to i8
  %2717 = and i8 %2716, 1
  %2718 = xor i8 %2717, 1
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2718, i8* %2719, align 1
  %2720 = xor i64 6512, %2704
  %2721 = xor i64 %2720, %2707
  %2722 = lshr i64 %2721, 4
  %2723 = trunc i64 %2722 to i8
  %2724 = and i8 %2723, 1
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2724, i8* %2725, align 1
  %2726 = icmp eq i64 %2707, 0
  %2727 = zext i1 %2726 to i8
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2727, i8* %2728, align 1
  %2729 = lshr i64 %2707, 63
  %2730 = trunc i64 %2729 to i8
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2730, i8* %2731, align 1
  %2732 = lshr i64 %2704, 63
  %2733 = xor i64 %2729, %2732
  %2734 = add i64 %2733, %2729
  %2735 = icmp eq i64 %2734, 2
  %2736 = zext i1 %2735 to i8
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2736, i8* %2737, align 1
  store %struct.Memory* %loadMem_44bfdc, %struct.Memory** %MEMORY
  %loadMem_44bfe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 33
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %2740 to i64*
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 7
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %RDX.i194 = bitcast %union.anon* %2743 to i64*
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2745 = getelementptr inbounds %struct.GPR, %struct.GPR* %2744, i32 0, i32 15
  %2746 = getelementptr inbounds %struct.Reg, %struct.Reg* %2745, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %2746 to i64*
  %2747 = load i64, i64* %RBP.i195
  %2748 = sub i64 %2747, 8
  %2749 = load i64, i64* %PC.i193
  %2750 = add i64 %2749, 3
  store i64 %2750, i64* %PC.i193
  %2751 = inttoptr i64 %2748 to i32*
  %2752 = load i32, i32* %2751
  %2753 = zext i32 %2752 to i64
  store i64 %2753, i64* %RDX.i194, align 8
  store %struct.Memory* %loadMem_44bfe3, %struct.Memory** %MEMORY
  %loadMem_44bfe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 33
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %2756 to i64*
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 1
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %EAX.i191 = bitcast %union.anon* %2759 to i32*
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2761 = getelementptr inbounds %struct.GPR, %struct.GPR* %2760, i32 0, i32 15
  %2762 = getelementptr inbounds %struct.Reg, %struct.Reg* %2761, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %2762 to i64*
  %2763 = load i64, i64* %RBP.i192
  %2764 = sub i64 %2763, 84
  %2765 = load i32, i32* %EAX.i191
  %2766 = zext i32 %2765 to i64
  %2767 = load i64, i64* %PC.i190
  %2768 = add i64 %2767, 3
  store i64 %2768, i64* %PC.i190
  %2769 = inttoptr i64 %2764 to i32*
  store i32 %2765, i32* %2769
  store %struct.Memory* %loadMem_44bfe6, %struct.Memory** %MEMORY
  %loadMem_44bfe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 33
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %2772 to i64*
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 7
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %EDX.i188 = bitcast %union.anon* %2775 to i32*
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 1
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %2778 to i64*
  %2779 = load i32, i32* %EDX.i188
  %2780 = zext i32 %2779 to i64
  %2781 = load i64, i64* %PC.i187
  %2782 = add i64 %2781, 2
  store i64 %2782, i64* %PC.i187
  %2783 = and i64 %2780, 4294967295
  store i64 %2783, i64* %RAX.i189, align 8
  store %struct.Memory* %loadMem_44bfe9, %struct.Memory** %MEMORY
  %loadMem_44bfeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 33
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %2786 to i64*
  %2787 = load i64, i64* %PC.i186
  %2788 = add i64 %2787, 1
  store i64 %2788, i64* %PC.i186
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2791 = bitcast %union.anon* %2790 to i32*
  %2792 = load i32, i32* %2791, align 8
  %2793 = sext i32 %2792 to i64
  %2794 = lshr i64 %2793, 32
  store i64 %2794, i64* %2789, align 8
  store %struct.Memory* %loadMem_44bfeb, %struct.Memory** %MEMORY
  %loadMem_44bfec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2796 = getelementptr inbounds %struct.GPR, %struct.GPR* %2795, i32 0, i32 33
  %2797 = getelementptr inbounds %struct.Reg, %struct.Reg* %2796, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %2797 to i64*
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2799 = getelementptr inbounds %struct.GPR, %struct.GPR* %2798, i32 0, i32 5
  %2800 = getelementptr inbounds %struct.Reg, %struct.Reg* %2799, i32 0, i32 0
  %ECX.i182 = bitcast %union.anon* %2800 to i32*
  %2801 = load i32, i32* %ECX.i182
  %2802 = zext i32 %2801 to i64
  %2803 = load i64, i64* %PC.i181
  %2804 = add i64 %2803, 2
  store i64 %2804, i64* %PC.i181
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2806 = bitcast %union.anon* %2805 to i32*
  %2807 = load i32, i32* %2806, align 8
  %2808 = zext i32 %2807 to i64
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2810 = bitcast %union.anon* %2809 to i32*
  %2811 = load i32, i32* %2810, align 8
  %2812 = zext i32 %2811 to i64
  %2813 = shl i64 %2802, 32
  %2814 = ashr exact i64 %2813, 32
  %2815 = shl i64 %2812, 32
  %2816 = or i64 %2815, %2808
  %2817 = sdiv i64 %2816, %2814
  %2818 = shl i64 %2817, 32
  %2819 = ashr exact i64 %2818, 32
  %2820 = icmp eq i64 %2817, %2819
  br i1 %2820, label %2825, label %2821

; <label>:2821:                                   ; preds = %routine_idivl__esi.exit
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2823 = load i64, i64* %2822, align 8
  %2824 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2823, %struct.Memory* %loadMem_44bfec)
  br label %routine_idivl__ecx.exit183

; <label>:2825:                                   ; preds = %routine_idivl__esi.exit
  %2826 = srem i64 %2816, %2814
  %2827 = getelementptr inbounds %union.anon, %union.anon* %2805, i64 0, i32 0
  %2828 = and i64 %2817, 4294967295
  store i64 %2828, i64* %2827, align 8
  %2829 = getelementptr inbounds %union.anon, %union.anon* %2809, i64 0, i32 0
  %2830 = and i64 %2826, 4294967295
  store i64 %2830, i64* %2829, align 8
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2831, align 1
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2832, align 1
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2833, align 1
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2834, align 1
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2835, align 1
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2836, align 1
  br label %routine_idivl__ecx.exit183

routine_idivl__ecx.exit183:                       ; preds = %2821, %2825
  %2837 = phi %struct.Memory* [ %2824, %2821 ], [ %loadMem_44bfec, %2825 ]
  store %struct.Memory* %2837, %struct.Memory** %MEMORY
  %loadMem_44bfee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2839 = getelementptr inbounds %struct.GPR, %struct.GPR* %2838, i32 0, i32 33
  %2840 = getelementptr inbounds %struct.Reg, %struct.Reg* %2839, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %2840 to i64*
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2842 = getelementptr inbounds %struct.GPR, %struct.GPR* %2841, i32 0, i32 9
  %2843 = getelementptr inbounds %struct.Reg, %struct.Reg* %2842, i32 0, i32 0
  %RSI.i179 = bitcast %union.anon* %2843 to i64*
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2845 = getelementptr inbounds %struct.GPR, %struct.GPR* %2844, i32 0, i32 15
  %2846 = getelementptr inbounds %struct.Reg, %struct.Reg* %2845, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %2846 to i64*
  %2847 = load i64, i64* %RBP.i180
  %2848 = sub i64 %2847, 12
  %2849 = load i64, i64* %PC.i178
  %2850 = add i64 %2849, 3
  store i64 %2850, i64* %PC.i178
  %2851 = inttoptr i64 %2848 to i32*
  %2852 = load i32, i32* %2851
  %2853 = zext i32 %2852 to i64
  store i64 %2853, i64* %RSI.i179, align 8
  store %struct.Memory* %loadMem_44bfee, %struct.Memory** %MEMORY
  %loadMem_44bff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2855 = getelementptr inbounds %struct.GPR, %struct.GPR* %2854, i32 0, i32 33
  %2856 = getelementptr inbounds %struct.Reg, %struct.Reg* %2855, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %2856 to i64*
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2858 = getelementptr inbounds %struct.GPR, %struct.GPR* %2857, i32 0, i32 1
  %2859 = getelementptr inbounds %struct.Reg, %struct.Reg* %2858, i32 0, i32 0
  %EAX.i176 = bitcast %union.anon* %2859 to i32*
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2861 = getelementptr inbounds %struct.GPR, %struct.GPR* %2860, i32 0, i32 15
  %2862 = getelementptr inbounds %struct.Reg, %struct.Reg* %2861, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %2862 to i64*
  %2863 = load i64, i64* %RBP.i177
  %2864 = sub i64 %2863, 88
  %2865 = load i32, i32* %EAX.i176
  %2866 = zext i32 %2865 to i64
  %2867 = load i64, i64* %PC.i175
  %2868 = add i64 %2867, 3
  store i64 %2868, i64* %PC.i175
  %2869 = inttoptr i64 %2864 to i32*
  store i32 %2865, i32* %2869
  store %struct.Memory* %loadMem_44bff1, %struct.Memory** %MEMORY
  %loadMem_44bff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 33
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %2872 to i64*
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 9
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %ESI.i173 = bitcast %union.anon* %2875 to i32*
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2877 = getelementptr inbounds %struct.GPR, %struct.GPR* %2876, i32 0, i32 1
  %2878 = getelementptr inbounds %struct.Reg, %struct.Reg* %2877, i32 0, i32 0
  %RAX.i174 = bitcast %union.anon* %2878 to i64*
  %2879 = load i32, i32* %ESI.i173
  %2880 = zext i32 %2879 to i64
  %2881 = load i64, i64* %PC.i172
  %2882 = add i64 %2881, 2
  store i64 %2882, i64* %PC.i172
  %2883 = and i64 %2880, 4294967295
  store i64 %2883, i64* %RAX.i174, align 8
  store %struct.Memory* %loadMem_44bff4, %struct.Memory** %MEMORY
  %loadMem_44bff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2885 = getelementptr inbounds %struct.GPR, %struct.GPR* %2884, i32 0, i32 33
  %2886 = getelementptr inbounds %struct.Reg, %struct.Reg* %2885, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %2886 to i64*
  %2887 = load i64, i64* %PC.i171
  %2888 = add i64 %2887, 1
  store i64 %2888, i64* %PC.i171
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2891 = bitcast %union.anon* %2890 to i32*
  %2892 = load i32, i32* %2891, align 8
  %2893 = sext i32 %2892 to i64
  %2894 = lshr i64 %2893, 32
  store i64 %2894, i64* %2889, align 8
  store %struct.Memory* %loadMem_44bff6, %struct.Memory** %MEMORY
  %loadMem_44bff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 33
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %2897 to i64*
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 5
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %ECX.i167 = bitcast %union.anon* %2900 to i32*
  %2901 = load i32, i32* %ECX.i167
  %2902 = zext i32 %2901 to i64
  %2903 = load i64, i64* %PC.i166
  %2904 = add i64 %2903, 2
  store i64 %2904, i64* %PC.i166
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2906 = bitcast %union.anon* %2905 to i32*
  %2907 = load i32, i32* %2906, align 8
  %2908 = zext i32 %2907 to i64
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2910 = bitcast %union.anon* %2909 to i32*
  %2911 = load i32, i32* %2910, align 8
  %2912 = zext i32 %2911 to i64
  %2913 = shl i64 %2902, 32
  %2914 = ashr exact i64 %2913, 32
  %2915 = shl i64 %2912, 32
  %2916 = or i64 %2915, %2908
  %2917 = sdiv i64 %2916, %2914
  %2918 = shl i64 %2917, 32
  %2919 = ashr exact i64 %2918, 32
  %2920 = icmp eq i64 %2917, %2919
  br i1 %2920, label %2925, label %2921

; <label>:2921:                                   ; preds = %routine_idivl__ecx.exit183
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2923 = load i64, i64* %2922, align 8
  %2924 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2923, %struct.Memory* %loadMem_44bff7)
  br label %routine_idivl__ecx.exit168

; <label>:2925:                                   ; preds = %routine_idivl__ecx.exit183
  %2926 = srem i64 %2916, %2914
  %2927 = getelementptr inbounds %union.anon, %union.anon* %2905, i64 0, i32 0
  %2928 = and i64 %2917, 4294967295
  store i64 %2928, i64* %2927, align 8
  %2929 = getelementptr inbounds %union.anon, %union.anon* %2909, i64 0, i32 0
  %2930 = and i64 %2926, 4294967295
  store i64 %2930, i64* %2929, align 8
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2931, align 1
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2932, align 1
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2933, align 1
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2934, align 1
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2935, align 1
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2936, align 1
  br label %routine_idivl__ecx.exit168

routine_idivl__ecx.exit168:                       ; preds = %2921, %2925
  %2937 = phi %struct.Memory* [ %2924, %2921 ], [ %loadMem_44bff7, %2925 ]
  store %struct.Memory* %2937, %struct.Memory** %MEMORY
  %loadMem_44bff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 33
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %2940 to i64*
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 9
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %RSI.i164 = bitcast %union.anon* %2943 to i64*
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 15
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %2946 to i64*
  %2947 = load i64, i64* %RBP.i165
  %2948 = sub i64 %2947, 88
  %2949 = load i64, i64* %PC.i163
  %2950 = add i64 %2949, 3
  store i64 %2950, i64* %PC.i163
  %2951 = inttoptr i64 %2948 to i32*
  %2952 = load i32, i32* %2951
  %2953 = zext i32 %2952 to i64
  store i64 %2953, i64* %RSI.i164, align 8
  store %struct.Memory* %loadMem_44bff9, %struct.Memory** %MEMORY
  %loadMem_44bffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2955 = getelementptr inbounds %struct.GPR, %struct.GPR* %2954, i32 0, i32 33
  %2956 = getelementptr inbounds %struct.Reg, %struct.Reg* %2955, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %2956 to i64*
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 1
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %EAX.i161 = bitcast %union.anon* %2959 to i32*
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 7
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %RDX.i162 = bitcast %union.anon* %2962 to i64*
  %2963 = load i32, i32* %EAX.i161
  %2964 = zext i32 %2963 to i64
  %2965 = load i64, i64* %PC.i160
  %2966 = add i64 %2965, 2
  store i64 %2966, i64* %PC.i160
  %2967 = and i64 %2964, 4294967295
  store i64 %2967, i64* %RDX.i162, align 8
  store %struct.Memory* %loadMem_44bffc, %struct.Memory** %MEMORY
  %loadMem1_44bffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 33
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %2970 to i64*
  %2971 = load i64, i64* %PC.i159
  %2972 = add i64 %2971, 55074
  %2973 = load i64, i64* %PC.i159
  %2974 = add i64 %2973, 5
  %2975 = load i64, i64* %PC.i159
  %2976 = add i64 %2975, 5
  store i64 %2976, i64* %PC.i159
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2978 = load i64, i64* %2977, align 8
  %2979 = add i64 %2978, -8
  %2980 = inttoptr i64 %2979 to i64*
  store i64 %2974, i64* %2980
  store i64 %2979, i64* %2977, align 8
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2972, i64* %2981, align 8
  store %struct.Memory* %loadMem1_44bffe, %struct.Memory** %MEMORY
  %loadMem2_44bffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bffe = load i64, i64* %3
  %call2_44bffe = call %struct.Memory* @sub_459720.get_mem2D(%struct.State* %0, i64 %loadPC_44bffe, %struct.Memory* %loadMem2_44bffe)
  store %struct.Memory* %call2_44bffe, %struct.Memory** %MEMORY
  %loadMem_44c003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2983 = getelementptr inbounds %struct.GPR, %struct.GPR* %2982, i32 0, i32 33
  %2984 = getelementptr inbounds %struct.Reg, %struct.Reg* %2983, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %2984 to i64*
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2986 = getelementptr inbounds %struct.GPR, %struct.GPR* %2985, i32 0, i32 5
  %2987 = getelementptr inbounds %struct.Reg, %struct.Reg* %2986, i32 0, i32 0
  %RCX.i158 = bitcast %union.anon* %2987 to i64*
  %2988 = load i64, i64* %PC.i157
  %2989 = add i64 %2988, 5
  store i64 %2989, i64* %PC.i157
  store i64 4, i64* %RCX.i158, align 8
  store %struct.Memory* %loadMem_44c003, %struct.Memory** %MEMORY
  %loadMem_44c008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2991 = getelementptr inbounds %struct.GPR, %struct.GPR* %2990, i32 0, i32 33
  %2992 = getelementptr inbounds %struct.Reg, %struct.Reg* %2991, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %2992 to i64*
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 11
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %RDI.i155 = bitcast %union.anon* %2995 to i64*
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 15
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %2998 to i64*
  %2999 = load i64, i64* %RBP.i156
  %3000 = sub i64 %2999, 32
  %3001 = load i64, i64* %PC.i154
  %3002 = add i64 %3001, 4
  store i64 %3002, i64* %PC.i154
  %3003 = inttoptr i64 %3000 to i64*
  %3004 = load i64, i64* %3003
  store i64 %3004, i64* %RDI.i155, align 8
  store %struct.Memory* %loadMem_44c008, %struct.Memory** %MEMORY
  %loadMem_44c00c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 33
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %3007 to i64*
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3009 = getelementptr inbounds %struct.GPR, %struct.GPR* %3008, i32 0, i32 11
  %3010 = getelementptr inbounds %struct.Reg, %struct.Reg* %3009, i32 0, i32 0
  %RDI.i153 = bitcast %union.anon* %3010 to i64*
  %3011 = load i64, i64* %RDI.i153
  %3012 = load i64, i64* %PC.i152
  %3013 = add i64 %3012, 7
  store i64 %3013, i64* %PC.i152
  %3014 = add i64 6520, %3011
  store i64 %3014, i64* %RDI.i153, align 8
  %3015 = icmp ult i64 %3014, %3011
  %3016 = icmp ult i64 %3014, 6520
  %3017 = or i1 %3015, %3016
  %3018 = zext i1 %3017 to i8
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3018, i8* %3019, align 1
  %3020 = trunc i64 %3014 to i32
  %3021 = and i32 %3020, 255
  %3022 = call i32 @llvm.ctpop.i32(i32 %3021)
  %3023 = trunc i32 %3022 to i8
  %3024 = and i8 %3023, 1
  %3025 = xor i8 %3024, 1
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3025, i8* %3026, align 1
  %3027 = xor i64 6520, %3011
  %3028 = xor i64 %3027, %3014
  %3029 = lshr i64 %3028, 4
  %3030 = trunc i64 %3029 to i8
  %3031 = and i8 %3030, 1
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3031, i8* %3032, align 1
  %3033 = icmp eq i64 %3014, 0
  %3034 = zext i1 %3033 to i8
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3034, i8* %3035, align 1
  %3036 = lshr i64 %3014, 63
  %3037 = trunc i64 %3036 to i8
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3037, i8* %3038, align 1
  %3039 = lshr i64 %3011, 63
  %3040 = xor i64 %3036, %3039
  %3041 = add i64 %3040, %3036
  %3042 = icmp eq i64 %3041, 2
  %3043 = zext i1 %3042 to i8
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3043, i8* %3044, align 1
  store %struct.Memory* %loadMem_44c00c, %struct.Memory** %MEMORY
  %loadMem_44c013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 33
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %3047 to i64*
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 7
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %RDX.i150 = bitcast %union.anon* %3050 to i64*
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 15
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %3053 to i64*
  %3054 = load i64, i64* %RBP.i151
  %3055 = sub i64 %3054, 8
  %3056 = load i64, i64* %PC.i149
  %3057 = add i64 %3056, 3
  store i64 %3057, i64* %PC.i149
  %3058 = inttoptr i64 %3055 to i32*
  %3059 = load i32, i32* %3058
  %3060 = zext i32 %3059 to i64
  store i64 %3060, i64* %RDX.i150, align 8
  store %struct.Memory* %loadMem_44c013, %struct.Memory** %MEMORY
  %loadMem_44c016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 33
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %3063 to i64*
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3065 = getelementptr inbounds %struct.GPR, %struct.GPR* %3064, i32 0, i32 1
  %3066 = getelementptr inbounds %struct.Reg, %struct.Reg* %3065, i32 0, i32 0
  %EAX.i147 = bitcast %union.anon* %3066 to i32*
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3068 = getelementptr inbounds %struct.GPR, %struct.GPR* %3067, i32 0, i32 15
  %3069 = getelementptr inbounds %struct.Reg, %struct.Reg* %3068, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %3069 to i64*
  %3070 = load i64, i64* %RBP.i148
  %3071 = sub i64 %3070, 92
  %3072 = load i32, i32* %EAX.i147
  %3073 = zext i32 %3072 to i64
  %3074 = load i64, i64* %PC.i146
  %3075 = add i64 %3074, 3
  store i64 %3075, i64* %PC.i146
  %3076 = inttoptr i64 %3071 to i32*
  store i32 %3072, i32* %3076
  store %struct.Memory* %loadMem_44c016, %struct.Memory** %MEMORY
  %loadMem_44c019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 33
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %3079 to i64*
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 7
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %3082 to i32*
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3084 = getelementptr inbounds %struct.GPR, %struct.GPR* %3083, i32 0, i32 1
  %3085 = getelementptr inbounds %struct.Reg, %struct.Reg* %3084, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %3085 to i64*
  %3086 = load i32, i32* %EDX.i
  %3087 = zext i32 %3086 to i64
  %3088 = load i64, i64* %PC.i144
  %3089 = add i64 %3088, 2
  store i64 %3089, i64* %PC.i144
  %3090 = and i64 %3087, 4294967295
  store i64 %3090, i64* %RAX.i145, align 8
  store %struct.Memory* %loadMem_44c019, %struct.Memory** %MEMORY
  %loadMem_44c01b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3092 = getelementptr inbounds %struct.GPR, %struct.GPR* %3091, i32 0, i32 33
  %3093 = getelementptr inbounds %struct.Reg, %struct.Reg* %3092, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %3093 to i64*
  %3094 = load i64, i64* %PC.i143
  %3095 = add i64 %3094, 1
  store i64 %3095, i64* %PC.i143
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3098 = bitcast %union.anon* %3097 to i32*
  %3099 = load i32, i32* %3098, align 8
  %3100 = sext i32 %3099 to i64
  %3101 = lshr i64 %3100, 32
  store i64 %3101, i64* %3096, align 8
  store %struct.Memory* %loadMem_44c01b, %struct.Memory** %MEMORY
  %loadMem_44c01c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3103 = getelementptr inbounds %struct.GPR, %struct.GPR* %3102, i32 0, i32 33
  %3104 = getelementptr inbounds %struct.Reg, %struct.Reg* %3103, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %3104 to i64*
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3106 = getelementptr inbounds %struct.GPR, %struct.GPR* %3105, i32 0, i32 5
  %3107 = getelementptr inbounds %struct.Reg, %struct.Reg* %3106, i32 0, i32 0
  %ECX.i139 = bitcast %union.anon* %3107 to i32*
  %3108 = load i32, i32* %ECX.i139
  %3109 = zext i32 %3108 to i64
  %3110 = load i64, i64* %PC.i138
  %3111 = add i64 %3110, 2
  store i64 %3111, i64* %PC.i138
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3113 = bitcast %union.anon* %3112 to i32*
  %3114 = load i32, i32* %3113, align 8
  %3115 = zext i32 %3114 to i64
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3117 = bitcast %union.anon* %3116 to i32*
  %3118 = load i32, i32* %3117, align 8
  %3119 = zext i32 %3118 to i64
  %3120 = shl i64 %3109, 32
  %3121 = ashr exact i64 %3120, 32
  %3122 = shl i64 %3119, 32
  %3123 = or i64 %3122, %3115
  %3124 = sdiv i64 %3123, %3121
  %3125 = shl i64 %3124, 32
  %3126 = ashr exact i64 %3125, 32
  %3127 = icmp eq i64 %3124, %3126
  br i1 %3127, label %3132, label %3128

; <label>:3128:                                   ; preds = %routine_idivl__ecx.exit168
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3130 = load i64, i64* %3129, align 8
  %3131 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3130, %struct.Memory* %loadMem_44c01c)
  br label %routine_idivl__ecx.exit140

; <label>:3132:                                   ; preds = %routine_idivl__ecx.exit168
  %3133 = srem i64 %3123, %3121
  %3134 = getelementptr inbounds %union.anon, %union.anon* %3112, i64 0, i32 0
  %3135 = and i64 %3124, 4294967295
  store i64 %3135, i64* %3134, align 8
  %3136 = getelementptr inbounds %union.anon, %union.anon* %3116, i64 0, i32 0
  %3137 = and i64 %3133, 4294967295
  store i64 %3137, i64* %3136, align 8
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3138, align 1
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3139, align 1
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3140, align 1
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3141, align 1
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3142, align 1
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3143, align 1
  br label %routine_idivl__ecx.exit140

routine_idivl__ecx.exit140:                       ; preds = %3128, %3132
  %3144 = phi %struct.Memory* [ %3131, %3128 ], [ %loadMem_44c01c, %3132 ]
  store %struct.Memory* %3144, %struct.Memory** %MEMORY
  %loadMem_44c01e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3146 = getelementptr inbounds %struct.GPR, %struct.GPR* %3145, i32 0, i32 33
  %3147 = getelementptr inbounds %struct.Reg, %struct.Reg* %3146, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %3147 to i64*
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3149 = getelementptr inbounds %struct.GPR, %struct.GPR* %3148, i32 0, i32 9
  %3150 = getelementptr inbounds %struct.Reg, %struct.Reg* %3149, i32 0, i32 0
  %RSI.i136 = bitcast %union.anon* %3150 to i64*
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3152 = getelementptr inbounds %struct.GPR, %struct.GPR* %3151, i32 0, i32 15
  %3153 = getelementptr inbounds %struct.Reg, %struct.Reg* %3152, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %3153 to i64*
  %3154 = load i64, i64* %RBP.i137
  %3155 = sub i64 %3154, 12
  %3156 = load i64, i64* %PC.i135
  %3157 = add i64 %3156, 3
  store i64 %3157, i64* %PC.i135
  %3158 = inttoptr i64 %3155 to i32*
  %3159 = load i32, i32* %3158
  %3160 = zext i32 %3159 to i64
  store i64 %3160, i64* %RSI.i136, align 8
  store %struct.Memory* %loadMem_44c01e, %struct.Memory** %MEMORY
  %loadMem_44c021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3162 = getelementptr inbounds %struct.GPR, %struct.GPR* %3161, i32 0, i32 33
  %3163 = getelementptr inbounds %struct.Reg, %struct.Reg* %3162, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %3163 to i64*
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 1
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %EAX.i133 = bitcast %union.anon* %3166 to i32*
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 15
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %3169 to i64*
  %3170 = load i64, i64* %RBP.i134
  %3171 = sub i64 %3170, 96
  %3172 = load i32, i32* %EAX.i133
  %3173 = zext i32 %3172 to i64
  %3174 = load i64, i64* %PC.i132
  %3175 = add i64 %3174, 3
  store i64 %3175, i64* %PC.i132
  %3176 = inttoptr i64 %3171 to i32*
  store i32 %3172, i32* %3176
  store %struct.Memory* %loadMem_44c021, %struct.Memory** %MEMORY
  %loadMem_44c024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 33
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %3179 to i64*
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 9
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %3182 to i32*
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 1
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %3185 to i64*
  %3186 = load i32, i32* %ESI.i
  %3187 = zext i32 %3186 to i64
  %3188 = load i64, i64* %PC.i130
  %3189 = add i64 %3188, 2
  store i64 %3189, i64* %PC.i130
  %3190 = and i64 %3187, 4294967295
  store i64 %3190, i64* %RAX.i131, align 8
  store %struct.Memory* %loadMem_44c024, %struct.Memory** %MEMORY
  %loadMem_44c026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 33
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %3193 to i64*
  %3194 = load i64, i64* %PC.i129
  %3195 = add i64 %3194, 1
  store i64 %3195, i64* %PC.i129
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3198 = bitcast %union.anon* %3197 to i32*
  %3199 = load i32, i32* %3198, align 8
  %3200 = sext i32 %3199 to i64
  %3201 = lshr i64 %3200, 32
  store i64 %3201, i64* %3196, align 8
  store %struct.Memory* %loadMem_44c026, %struct.Memory** %MEMORY
  %loadMem_44c027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3203 = getelementptr inbounds %struct.GPR, %struct.GPR* %3202, i32 0, i32 33
  %3204 = getelementptr inbounds %struct.Reg, %struct.Reg* %3203, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %3204 to i64*
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3206 = getelementptr inbounds %struct.GPR, %struct.GPR* %3205, i32 0, i32 5
  %3207 = getelementptr inbounds %struct.Reg, %struct.Reg* %3206, i32 0, i32 0
  %ECX.i125 = bitcast %union.anon* %3207 to i32*
  %3208 = load i32, i32* %ECX.i125
  %3209 = zext i32 %3208 to i64
  %3210 = load i64, i64* %PC.i124
  %3211 = add i64 %3210, 2
  store i64 %3211, i64* %PC.i124
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3213 = bitcast %union.anon* %3212 to i32*
  %3214 = load i32, i32* %3213, align 8
  %3215 = zext i32 %3214 to i64
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3217 = bitcast %union.anon* %3216 to i32*
  %3218 = load i32, i32* %3217, align 8
  %3219 = zext i32 %3218 to i64
  %3220 = shl i64 %3209, 32
  %3221 = ashr exact i64 %3220, 32
  %3222 = shl i64 %3219, 32
  %3223 = or i64 %3222, %3215
  %3224 = sdiv i64 %3223, %3221
  %3225 = shl i64 %3224, 32
  %3226 = ashr exact i64 %3225, 32
  %3227 = icmp eq i64 %3224, %3226
  br i1 %3227, label %3232, label %3228

; <label>:3228:                                   ; preds = %routine_idivl__ecx.exit140
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3230 = load i64, i64* %3229, align 8
  %3231 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3230, %struct.Memory* %loadMem_44c027)
  br label %routine_idivl__ecx.exit

; <label>:3232:                                   ; preds = %routine_idivl__ecx.exit140
  %3233 = srem i64 %3223, %3221
  %3234 = getelementptr inbounds %union.anon, %union.anon* %3212, i64 0, i32 0
  %3235 = and i64 %3224, 4294967295
  store i64 %3235, i64* %3234, align 8
  %3236 = getelementptr inbounds %union.anon, %union.anon* %3216, i64 0, i32 0
  %3237 = and i64 %3233, 4294967295
  store i64 %3237, i64* %3236, align 8
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3238, align 1
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3239, align 1
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3240, align 1
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3241, align 1
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3242, align 1
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3243, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %3228, %3232
  %3244 = phi %struct.Memory* [ %3231, %3228 ], [ %loadMem_44c027, %3232 ]
  store %struct.Memory* %3244, %struct.Memory** %MEMORY
  %loadMem_44c029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3246 = getelementptr inbounds %struct.GPR, %struct.GPR* %3245, i32 0, i32 33
  %3247 = getelementptr inbounds %struct.Reg, %struct.Reg* %3246, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %3247 to i64*
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3249 = getelementptr inbounds %struct.GPR, %struct.GPR* %3248, i32 0, i32 9
  %3250 = getelementptr inbounds %struct.Reg, %struct.Reg* %3249, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3250 to i64*
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 15
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %3253 to i64*
  %3254 = load i64, i64* %RBP.i123
  %3255 = sub i64 %3254, 96
  %3256 = load i64, i64* %PC.i122
  %3257 = add i64 %3256, 3
  store i64 %3257, i64* %PC.i122
  %3258 = inttoptr i64 %3255 to i32*
  %3259 = load i32, i32* %3258
  %3260 = zext i32 %3259 to i64
  store i64 %3260, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_44c029, %struct.Memory** %MEMORY
  %loadMem_44c02c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3262 = getelementptr inbounds %struct.GPR, %struct.GPR* %3261, i32 0, i32 33
  %3263 = getelementptr inbounds %struct.Reg, %struct.Reg* %3262, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %3263 to i64*
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3265 = getelementptr inbounds %struct.GPR, %struct.GPR* %3264, i32 0, i32 1
  %3266 = getelementptr inbounds %struct.Reg, %struct.Reg* %3265, i32 0, i32 0
  %EAX.i121 = bitcast %union.anon* %3266 to i32*
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3268 = getelementptr inbounds %struct.GPR, %struct.GPR* %3267, i32 0, i32 7
  %3269 = getelementptr inbounds %struct.Reg, %struct.Reg* %3268, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3269 to i64*
  %3270 = load i32, i32* %EAX.i121
  %3271 = zext i32 %3270 to i64
  %3272 = load i64, i64* %PC.i120
  %3273 = add i64 %3272, 2
  store i64 %3273, i64* %PC.i120
  %3274 = and i64 %3271, 4294967295
  store i64 %3274, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_44c02c, %struct.Memory** %MEMORY
  %loadMem1_44c02e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 33
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %3277 to i64*
  %3278 = load i64, i64* %PC.i119
  %3279 = add i64 %3278, 55026
  %3280 = load i64, i64* %PC.i119
  %3281 = add i64 %3280, 5
  %3282 = load i64, i64* %PC.i119
  %3283 = add i64 %3282, 5
  store i64 %3283, i64* %PC.i119
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3285 = load i64, i64* %3284, align 8
  %3286 = add i64 %3285, -8
  %3287 = inttoptr i64 %3286 to i64*
  store i64 %3281, i64* %3287
  store i64 %3286, i64* %3284, align 8
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3279, i64* %3288, align 8
  store %struct.Memory* %loadMem1_44c02e, %struct.Memory** %MEMORY
  %loadMem2_44c02e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c02e = load i64, i64* %3
  %call2_44c02e = call %struct.Memory* @sub_459720.get_mem2D(%struct.State* %0, i64 %loadPC_44c02e, %struct.Memory* %loadMem2_44c02e)
  store %struct.Memory* %call2_44c02e, %struct.Memory** %MEMORY
  %loadMem_44c033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3290 = getelementptr inbounds %struct.GPR, %struct.GPR* %3289, i32 0, i32 33
  %3291 = getelementptr inbounds %struct.Reg, %struct.Reg* %3290, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %3291 to i64*
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3293 = getelementptr inbounds %struct.GPR, %struct.GPR* %3292, i32 0, i32 11
  %3294 = getelementptr inbounds %struct.Reg, %struct.Reg* %3293, i32 0, i32 0
  %RDI.i117 = bitcast %union.anon* %3294 to i64*
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3296 = getelementptr inbounds %struct.GPR, %struct.GPR* %3295, i32 0, i32 15
  %3297 = getelementptr inbounds %struct.Reg, %struct.Reg* %3296, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %3297 to i64*
  %3298 = load i64, i64* %RBP.i118
  %3299 = sub i64 %3298, 32
  %3300 = load i64, i64* %PC.i116
  %3301 = add i64 %3300, 4
  store i64 %3301, i64* %PC.i116
  %3302 = inttoptr i64 %3299 to i64*
  %3303 = load i64, i64* %3302
  store i64 %3303, i64* %RDI.i117, align 8
  store %struct.Memory* %loadMem_44c033, %struct.Memory** %MEMORY
  %loadMem_44c037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3305 = getelementptr inbounds %struct.GPR, %struct.GPR* %3304, i32 0, i32 33
  %3306 = getelementptr inbounds %struct.Reg, %struct.Reg* %3305, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %3306 to i64*
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3308 = getelementptr inbounds %struct.GPR, %struct.GPR* %3307, i32 0, i32 11
  %3309 = getelementptr inbounds %struct.Reg, %struct.Reg* %3308, i32 0, i32 0
  %RDI.i115 = bitcast %union.anon* %3309 to i64*
  %3310 = load i64, i64* %RDI.i115
  %3311 = add i64 %3310, 6364
  %3312 = load i64, i64* %PC.i114
  %3313 = add i64 %3312, 10
  store i64 %3313, i64* %PC.i114
  %3314 = inttoptr i64 %3311 to i32*
  store i32 0, i32* %3314
  store %struct.Memory* %loadMem_44c037, %struct.Memory** %MEMORY
  %loadMem_44c041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 33
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %3317 to i64*
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 11
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %RDI.i112 = bitcast %union.anon* %3320 to i64*
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 15
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %3323 to i64*
  %3324 = load i64, i64* %RBP.i113
  %3325 = sub i64 %3324, 32
  %3326 = load i64, i64* %PC.i111
  %3327 = add i64 %3326, 4
  store i64 %3327, i64* %PC.i111
  %3328 = inttoptr i64 %3325 to i64*
  %3329 = load i64, i64* %3328
  store i64 %3329, i64* %RDI.i112, align 8
  store %struct.Memory* %loadMem_44c041, %struct.Memory** %MEMORY
  %loadMem_44c045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 33
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %3332 to i64*
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3334 = getelementptr inbounds %struct.GPR, %struct.GPR* %3333, i32 0, i32 11
  %3335 = getelementptr inbounds %struct.Reg, %struct.Reg* %3334, i32 0, i32 0
  %RDI.i110 = bitcast %union.anon* %3335 to i64*
  %3336 = load i64, i64* %RDI.i110
  %3337 = add i64 %3336, 6360
  %3338 = load i64, i64* %PC.i109
  %3339 = add i64 %3338, 10
  store i64 %3339, i64* %PC.i109
  %3340 = inttoptr i64 %3337 to i32*
  store i32 0, i32* %3340
  store %struct.Memory* %loadMem_44c045, %struct.Memory** %MEMORY
  %loadMem_44c04f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 33
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %3343 to i64*
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 11
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %RDI.i107 = bitcast %union.anon* %3346 to i64*
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3348 = getelementptr inbounds %struct.GPR, %struct.GPR* %3347, i32 0, i32 15
  %3349 = getelementptr inbounds %struct.Reg, %struct.Reg* %3348, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %3349 to i64*
  %3350 = load i64, i64* %RBP.i108
  %3351 = sub i64 %3350, 32
  %3352 = load i64, i64* %PC.i106
  %3353 = add i64 %3352, 4
  store i64 %3353, i64* %PC.i106
  %3354 = inttoptr i64 %3351 to i64*
  %3355 = load i64, i64* %3354
  store i64 %3355, i64* %RDI.i107, align 8
  store %struct.Memory* %loadMem_44c04f, %struct.Memory** %MEMORY
  %loadMem_44c053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3357 = getelementptr inbounds %struct.GPR, %struct.GPR* %3356, i32 0, i32 33
  %3358 = getelementptr inbounds %struct.Reg, %struct.Reg* %3357, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %3358 to i64*
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3360 = getelementptr inbounds %struct.GPR, %struct.GPR* %3359, i32 0, i32 11
  %3361 = getelementptr inbounds %struct.Reg, %struct.Reg* %3360, i32 0, i32 0
  %RDI.i105 = bitcast %union.anon* %3361 to i64*
  %3362 = load i64, i64* %RDI.i105
  %3363 = add i64 %3362, 6372
  %3364 = load i64, i64* %PC.i104
  %3365 = add i64 %3364, 10
  store i64 %3365, i64* %PC.i104
  %3366 = inttoptr i64 %3363 to i32*
  store i32 0, i32* %3366
  store %struct.Memory* %loadMem_44c053, %struct.Memory** %MEMORY
  %loadMem_44c05d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3368 = getelementptr inbounds %struct.GPR, %struct.GPR* %3367, i32 0, i32 33
  %3369 = getelementptr inbounds %struct.Reg, %struct.Reg* %3368, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %3369 to i64*
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 11
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %RDI.i102 = bitcast %union.anon* %3372 to i64*
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 15
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %3375 to i64*
  %3376 = load i64, i64* %RBP.i103
  %3377 = sub i64 %3376, 32
  %3378 = load i64, i64* %PC.i101
  %3379 = add i64 %3378, 4
  store i64 %3379, i64* %PC.i101
  %3380 = inttoptr i64 %3377 to i64*
  %3381 = load i64, i64* %3380
  store i64 %3381, i64* %RDI.i102, align 8
  store %struct.Memory* %loadMem_44c05d, %struct.Memory** %MEMORY
  %loadMem_44c061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3383 = getelementptr inbounds %struct.GPR, %struct.GPR* %3382, i32 0, i32 33
  %3384 = getelementptr inbounds %struct.Reg, %struct.Reg* %3383, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %3384 to i64*
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3386 = getelementptr inbounds %struct.GPR, %struct.GPR* %3385, i32 0, i32 11
  %3387 = getelementptr inbounds %struct.Reg, %struct.Reg* %3386, i32 0, i32 0
  %RDI.i100 = bitcast %union.anon* %3387 to i64*
  %3388 = load i64, i64* %RDI.i100
  %3389 = add i64 %3388, 6368
  %3390 = load i64, i64* %PC.i99
  %3391 = add i64 %3390, 10
  store i64 %3391, i64* %PC.i99
  %3392 = inttoptr i64 %3389 to i32*
  store i32 0, i32* %3392
  store %struct.Memory* %loadMem_44c061, %struct.Memory** %MEMORY
  %loadMem_44c06b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 33
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %3395 to i64*
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 11
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %RDI.i97 = bitcast %union.anon* %3398 to i64*
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 15
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %3401 to i64*
  %3402 = load i64, i64* %RBP.i98
  %3403 = sub i64 %3402, 32
  %3404 = load i64, i64* %PC.i96
  %3405 = add i64 %3404, 4
  store i64 %3405, i64* %PC.i96
  %3406 = inttoptr i64 %3403 to i64*
  %3407 = load i64, i64* %3406
  store i64 %3407, i64* %RDI.i97, align 8
  store %struct.Memory* %loadMem_44c06b, %struct.Memory** %MEMORY
  %loadMem_44c06f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 33
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %3410 to i64*
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 11
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %RDI.i95 = bitcast %union.anon* %3413 to i64*
  %3414 = load i64, i64* %RDI.i95
  %3415 = add i64 %3414, 6380
  %3416 = load i64, i64* %PC.i94
  %3417 = add i64 %3416, 10
  store i64 %3417, i64* %PC.i94
  %3418 = inttoptr i64 %3415 to i32*
  store i32 0, i32* %3418
  store %struct.Memory* %loadMem_44c06f, %struct.Memory** %MEMORY
  %loadMem_44c079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3420 = getelementptr inbounds %struct.GPR, %struct.GPR* %3419, i32 0, i32 33
  %3421 = getelementptr inbounds %struct.Reg, %struct.Reg* %3420, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %3421 to i64*
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3423 = getelementptr inbounds %struct.GPR, %struct.GPR* %3422, i32 0, i32 11
  %3424 = getelementptr inbounds %struct.Reg, %struct.Reg* %3423, i32 0, i32 0
  %RDI.i92 = bitcast %union.anon* %3424 to i64*
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3426 = getelementptr inbounds %struct.GPR, %struct.GPR* %3425, i32 0, i32 15
  %3427 = getelementptr inbounds %struct.Reg, %struct.Reg* %3426, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %3427 to i64*
  %3428 = load i64, i64* %RBP.i93
  %3429 = sub i64 %3428, 32
  %3430 = load i64, i64* %PC.i91
  %3431 = add i64 %3430, 4
  store i64 %3431, i64* %PC.i91
  %3432 = inttoptr i64 %3429 to i64*
  %3433 = load i64, i64* %3432
  store i64 %3433, i64* %RDI.i92, align 8
  store %struct.Memory* %loadMem_44c079, %struct.Memory** %MEMORY
  %loadMem_44c07d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 33
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %3436 to i64*
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 11
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %RDI.i90 = bitcast %union.anon* %3439 to i64*
  %3440 = load i64, i64* %RDI.i90
  %3441 = add i64 %3440, 6376
  %3442 = load i64, i64* %PC.i89
  %3443 = add i64 %3442, 10
  store i64 %3443, i64* %PC.i89
  %3444 = inttoptr i64 %3441 to i32*
  store i32 0, i32* %3444
  store %struct.Memory* %loadMem_44c07d, %struct.Memory** %MEMORY
  %loadMem_44c087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3446 = getelementptr inbounds %struct.GPR, %struct.GPR* %3445, i32 0, i32 33
  %3447 = getelementptr inbounds %struct.Reg, %struct.Reg* %3446, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %3447 to i64*
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 11
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %RDI.i87 = bitcast %union.anon* %3450 to i64*
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 15
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %3453 to i64*
  %3454 = load i64, i64* %RBP.i88
  %3455 = sub i64 %3454, 32
  %3456 = load i64, i64* %PC.i86
  %3457 = add i64 %3456, 4
  store i64 %3457, i64* %PC.i86
  %3458 = inttoptr i64 %3455 to i64*
  %3459 = load i64, i64* %3458
  store i64 %3459, i64* %RDI.i87, align 8
  store %struct.Memory* %loadMem_44c087, %struct.Memory** %MEMORY
  %loadMem_44c08b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3461 = getelementptr inbounds %struct.GPR, %struct.GPR* %3460, i32 0, i32 33
  %3462 = getelementptr inbounds %struct.Reg, %struct.Reg* %3461, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %3462 to i64*
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3464 = getelementptr inbounds %struct.GPR, %struct.GPR* %3463, i32 0, i32 11
  %3465 = getelementptr inbounds %struct.Reg, %struct.Reg* %3464, i32 0, i32 0
  %RDI.i85 = bitcast %union.anon* %3465 to i64*
  %3466 = load i64, i64* %RDI.i85
  %3467 = add i64 %3466, 6388
  %3468 = load i64, i64* %PC.i84
  %3469 = add i64 %3468, 10
  store i64 %3469, i64* %PC.i84
  %3470 = inttoptr i64 %3467 to i32*
  store i32 0, i32* %3470
  store %struct.Memory* %loadMem_44c08b, %struct.Memory** %MEMORY
  %loadMem_44c095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3472 = getelementptr inbounds %struct.GPR, %struct.GPR* %3471, i32 0, i32 33
  %3473 = getelementptr inbounds %struct.Reg, %struct.Reg* %3472, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %3473 to i64*
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3475 = getelementptr inbounds %struct.GPR, %struct.GPR* %3474, i32 0, i32 11
  %3476 = getelementptr inbounds %struct.Reg, %struct.Reg* %3475, i32 0, i32 0
  %RDI.i82 = bitcast %union.anon* %3476 to i64*
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3478 = getelementptr inbounds %struct.GPR, %struct.GPR* %3477, i32 0, i32 15
  %3479 = getelementptr inbounds %struct.Reg, %struct.Reg* %3478, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %3479 to i64*
  %3480 = load i64, i64* %RBP.i83
  %3481 = sub i64 %3480, 32
  %3482 = load i64, i64* %PC.i81
  %3483 = add i64 %3482, 4
  store i64 %3483, i64* %PC.i81
  %3484 = inttoptr i64 %3481 to i64*
  %3485 = load i64, i64* %3484
  store i64 %3485, i64* %RDI.i82, align 8
  store %struct.Memory* %loadMem_44c095, %struct.Memory** %MEMORY
  %loadMem_44c099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3487 = getelementptr inbounds %struct.GPR, %struct.GPR* %3486, i32 0, i32 33
  %3488 = getelementptr inbounds %struct.Reg, %struct.Reg* %3487, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %3488 to i64*
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3490 = getelementptr inbounds %struct.GPR, %struct.GPR* %3489, i32 0, i32 11
  %3491 = getelementptr inbounds %struct.Reg, %struct.Reg* %3490, i32 0, i32 0
  %RDI.i80 = bitcast %union.anon* %3491 to i64*
  %3492 = load i64, i64* %RDI.i80
  %3493 = add i64 %3492, 6384
  %3494 = load i64, i64* %PC.i79
  %3495 = add i64 %3494, 10
  store i64 %3495, i64* %PC.i79
  %3496 = inttoptr i64 %3493 to i32*
  store i32 0, i32* %3496
  store %struct.Memory* %loadMem_44c099, %struct.Memory** %MEMORY
  %loadMem_44c0a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3498 = getelementptr inbounds %struct.GPR, %struct.GPR* %3497, i32 0, i32 33
  %3499 = getelementptr inbounds %struct.Reg, %struct.Reg* %3498, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %3499 to i64*
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3501 = getelementptr inbounds %struct.GPR, %struct.GPR* %3500, i32 0, i32 5
  %3502 = getelementptr inbounds %struct.Reg, %struct.Reg* %3501, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %3502 to i64*
  %3503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3504 = getelementptr inbounds %struct.GPR, %struct.GPR* %3503, i32 0, i32 15
  %3505 = getelementptr inbounds %struct.Reg, %struct.Reg* %3504, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %3505 to i64*
  %3506 = load i64, i64* %RBP.i78
  %3507 = sub i64 %3506, 4
  %3508 = load i64, i64* %PC.i76
  %3509 = add i64 %3508, 3
  store i64 %3509, i64* %PC.i76
  %3510 = inttoptr i64 %3507 to i32*
  %3511 = load i32, i32* %3510
  %3512 = zext i32 %3511 to i64
  store i64 %3512, i64* %RCX.i77, align 8
  store %struct.Memory* %loadMem_44c0a3, %struct.Memory** %MEMORY
  %loadMem_44c0a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3514 = getelementptr inbounds %struct.GPR, %struct.GPR* %3513, i32 0, i32 33
  %3515 = getelementptr inbounds %struct.Reg, %struct.Reg* %3514, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %3515 to i64*
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3517 = getelementptr inbounds %struct.GPR, %struct.GPR* %3516, i32 0, i32 11
  %3518 = getelementptr inbounds %struct.Reg, %struct.Reg* %3517, i32 0, i32 0
  %RDI.i74 = bitcast %union.anon* %3518 to i64*
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 15
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %3521 to i64*
  %3522 = load i64, i64* %RBP.i75
  %3523 = sub i64 %3522, 32
  %3524 = load i64, i64* %PC.i73
  %3525 = add i64 %3524, 4
  store i64 %3525, i64* %PC.i73
  %3526 = inttoptr i64 %3523 to i64*
  %3527 = load i64, i64* %3526
  store i64 %3527, i64* %RDI.i74, align 8
  store %struct.Memory* %loadMem_44c0a6, %struct.Memory** %MEMORY
  %loadMem_44c0aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3529 = getelementptr inbounds %struct.GPR, %struct.GPR* %3528, i32 0, i32 33
  %3530 = getelementptr inbounds %struct.Reg, %struct.Reg* %3529, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %3530 to i64*
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 5
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %ECX.i71 = bitcast %union.anon* %3533 to i32*
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 11
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %RDI.i72 = bitcast %union.anon* %3536 to i64*
  %3537 = load i64, i64* %RDI.i72
  %3538 = load i32, i32* %ECX.i71
  %3539 = zext i32 %3538 to i64
  %3540 = load i64, i64* %PC.i70
  %3541 = add i64 %3540, 2
  store i64 %3541, i64* %PC.i70
  %3542 = inttoptr i64 %3537 to i32*
  store i32 %3538, i32* %3542
  store %struct.Memory* %loadMem_44c0aa, %struct.Memory** %MEMORY
  %loadMem_44c0ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3544 = getelementptr inbounds %struct.GPR, %struct.GPR* %3543, i32 0, i32 33
  %3545 = getelementptr inbounds %struct.Reg, %struct.Reg* %3544, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %3545 to i64*
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 5
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %3548 to i64*
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3550 = getelementptr inbounds %struct.GPR, %struct.GPR* %3549, i32 0, i32 15
  %3551 = getelementptr inbounds %struct.Reg, %struct.Reg* %3550, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %3551 to i64*
  %3552 = load i64, i64* %RBP.i69
  %3553 = sub i64 %3552, 8
  %3554 = load i64, i64* %PC.i67
  %3555 = add i64 %3554, 3
  store i64 %3555, i64* %PC.i67
  %3556 = inttoptr i64 %3553 to i32*
  %3557 = load i32, i32* %3556
  %3558 = zext i32 %3557 to i64
  store i64 %3558, i64* %RCX.i68, align 8
  store %struct.Memory* %loadMem_44c0ac, %struct.Memory** %MEMORY
  %loadMem_44c0af = load %struct.Memory*, %struct.Memory** %MEMORY
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 33
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %3561 to i64*
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 11
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %RDI.i65 = bitcast %union.anon* %3564 to i64*
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 15
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %3567 to i64*
  %3568 = load i64, i64* %RBP.i66
  %3569 = sub i64 %3568, 32
  %3570 = load i64, i64* %PC.i64
  %3571 = add i64 %3570, 4
  store i64 %3571, i64* %PC.i64
  %3572 = inttoptr i64 %3569 to i64*
  %3573 = load i64, i64* %3572
  store i64 %3573, i64* %RDI.i65, align 8
  store %struct.Memory* %loadMem_44c0af, %struct.Memory** %MEMORY
  %loadMem_44c0b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3575 = getelementptr inbounds %struct.GPR, %struct.GPR* %3574, i32 0, i32 33
  %3576 = getelementptr inbounds %struct.Reg, %struct.Reg* %3575, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %3576 to i64*
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3578 = getelementptr inbounds %struct.GPR, %struct.GPR* %3577, i32 0, i32 5
  %3579 = getelementptr inbounds %struct.Reg, %struct.Reg* %3578, i32 0, i32 0
  %ECX.i62 = bitcast %union.anon* %3579 to i32*
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 11
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %RDI.i63 = bitcast %union.anon* %3582 to i64*
  %3583 = load i64, i64* %RDI.i63
  %3584 = add i64 %3583, 6392
  %3585 = load i32, i32* %ECX.i62
  %3586 = zext i32 %3585 to i64
  %3587 = load i64, i64* %PC.i61
  %3588 = add i64 %3587, 6
  store i64 %3588, i64* %PC.i61
  %3589 = inttoptr i64 %3584 to i32*
  store i32 %3585, i32* %3589
  store %struct.Memory* %loadMem_44c0b3, %struct.Memory** %MEMORY
  %loadMem_44c0b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 33
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %3592 to i64*
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 5
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %3595 to i64*
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 15
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %3598 to i64*
  %3599 = load i64, i64* %RBP.i60
  %3600 = sub i64 %3599, 12
  %3601 = load i64, i64* %PC.i58
  %3602 = add i64 %3601, 3
  store i64 %3602, i64* %PC.i58
  %3603 = inttoptr i64 %3600 to i32*
  %3604 = load i32, i32* %3603
  %3605 = zext i32 %3604 to i64
  store i64 %3605, i64* %RCX.i59, align 8
  store %struct.Memory* %loadMem_44c0b9, %struct.Memory** %MEMORY
  %loadMem_44c0bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3607 = getelementptr inbounds %struct.GPR, %struct.GPR* %3606, i32 0, i32 33
  %3608 = getelementptr inbounds %struct.Reg, %struct.Reg* %3607, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %3608 to i64*
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3610 = getelementptr inbounds %struct.GPR, %struct.GPR* %3609, i32 0, i32 11
  %3611 = getelementptr inbounds %struct.Reg, %struct.Reg* %3610, i32 0, i32 0
  %RDI.i56 = bitcast %union.anon* %3611 to i64*
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3613 = getelementptr inbounds %struct.GPR, %struct.GPR* %3612, i32 0, i32 15
  %3614 = getelementptr inbounds %struct.Reg, %struct.Reg* %3613, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %3614 to i64*
  %3615 = load i64, i64* %RBP.i57
  %3616 = sub i64 %3615, 32
  %3617 = load i64, i64* %PC.i55
  %3618 = add i64 %3617, 4
  store i64 %3618, i64* %PC.i55
  %3619 = inttoptr i64 %3616 to i64*
  %3620 = load i64, i64* %3619
  store i64 %3620, i64* %RDI.i56, align 8
  store %struct.Memory* %loadMem_44c0bc, %struct.Memory** %MEMORY
  %loadMem_44c0c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3622 = getelementptr inbounds %struct.GPR, %struct.GPR* %3621, i32 0, i32 33
  %3623 = getelementptr inbounds %struct.Reg, %struct.Reg* %3622, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %3623 to i64*
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3625 = getelementptr inbounds %struct.GPR, %struct.GPR* %3624, i32 0, i32 5
  %3626 = getelementptr inbounds %struct.Reg, %struct.Reg* %3625, i32 0, i32 0
  %ECX.i53 = bitcast %union.anon* %3626 to i32*
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3628 = getelementptr inbounds %struct.GPR, %struct.GPR* %3627, i32 0, i32 11
  %3629 = getelementptr inbounds %struct.Reg, %struct.Reg* %3628, i32 0, i32 0
  %RDI.i54 = bitcast %union.anon* %3629 to i64*
  %3630 = load i64, i64* %RDI.i54
  %3631 = add i64 %3630, 6396
  %3632 = load i32, i32* %ECX.i53
  %3633 = zext i32 %3632 to i64
  %3634 = load i64, i64* %PC.i52
  %3635 = add i64 %3634, 6
  store i64 %3635, i64* %PC.i52
  %3636 = inttoptr i64 %3631 to i32*
  store i32 %3632, i32* %3636
  store %struct.Memory* %loadMem_44c0c0, %struct.Memory** %MEMORY
  %loadMem_44c0c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 33
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %3639 to i64*
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3641 = getelementptr inbounds %struct.GPR, %struct.GPR* %3640, i32 0, i32 5
  %3642 = getelementptr inbounds %struct.Reg, %struct.Reg* %3641, i32 0, i32 0
  %RCX.i50 = bitcast %union.anon* %3642 to i64*
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3644 = getelementptr inbounds %struct.GPR, %struct.GPR* %3643, i32 0, i32 15
  %3645 = getelementptr inbounds %struct.Reg, %struct.Reg* %3644, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %3645 to i64*
  %3646 = load i64, i64* %RBP.i51
  %3647 = sub i64 %3646, 16
  %3648 = load i64, i64* %PC.i49
  %3649 = add i64 %3648, 3
  store i64 %3649, i64* %PC.i49
  %3650 = inttoptr i64 %3647 to i32*
  %3651 = load i32, i32* %3650
  %3652 = zext i32 %3651 to i64
  store i64 %3652, i64* %RCX.i50, align 8
  store %struct.Memory* %loadMem_44c0c6, %struct.Memory** %MEMORY
  %loadMem_44c0c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3654 = getelementptr inbounds %struct.GPR, %struct.GPR* %3653, i32 0, i32 33
  %3655 = getelementptr inbounds %struct.Reg, %struct.Reg* %3654, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %3655 to i64*
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3657 = getelementptr inbounds %struct.GPR, %struct.GPR* %3656, i32 0, i32 11
  %3658 = getelementptr inbounds %struct.Reg, %struct.Reg* %3657, i32 0, i32 0
  %RDI.i47 = bitcast %union.anon* %3658 to i64*
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3660 = getelementptr inbounds %struct.GPR, %struct.GPR* %3659, i32 0, i32 15
  %3661 = getelementptr inbounds %struct.Reg, %struct.Reg* %3660, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %3661 to i64*
  %3662 = load i64, i64* %RBP.i48
  %3663 = sub i64 %3662, 32
  %3664 = load i64, i64* %PC.i46
  %3665 = add i64 %3664, 4
  store i64 %3665, i64* %PC.i46
  %3666 = inttoptr i64 %3663 to i64*
  %3667 = load i64, i64* %3666
  store i64 %3667, i64* %RDI.i47, align 8
  store %struct.Memory* %loadMem_44c0c9, %struct.Memory** %MEMORY
  %loadMem_44c0cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3669 = getelementptr inbounds %struct.GPR, %struct.GPR* %3668, i32 0, i32 33
  %3670 = getelementptr inbounds %struct.Reg, %struct.Reg* %3669, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %3670 to i64*
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3672 = getelementptr inbounds %struct.GPR, %struct.GPR* %3671, i32 0, i32 5
  %3673 = getelementptr inbounds %struct.Reg, %struct.Reg* %3672, i32 0, i32 0
  %ECX.i44 = bitcast %union.anon* %3673 to i32*
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3675 = getelementptr inbounds %struct.GPR, %struct.GPR* %3674, i32 0, i32 11
  %3676 = getelementptr inbounds %struct.Reg, %struct.Reg* %3675, i32 0, i32 0
  %RDI.i45 = bitcast %union.anon* %3676 to i64*
  %3677 = load i64, i64* %RDI.i45
  %3678 = add i64 %3677, 6400
  %3679 = load i32, i32* %ECX.i44
  %3680 = zext i32 %3679 to i64
  %3681 = load i64, i64* %PC.i43
  %3682 = add i64 %3681, 6
  store i64 %3682, i64* %PC.i43
  %3683 = inttoptr i64 %3678 to i32*
  store i32 %3679, i32* %3683
  store %struct.Memory* %loadMem_44c0cd, %struct.Memory** %MEMORY
  %loadMem_44c0d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3685 = getelementptr inbounds %struct.GPR, %struct.GPR* %3684, i32 0, i32 33
  %3686 = getelementptr inbounds %struct.Reg, %struct.Reg* %3685, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %3686 to i64*
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3688 = getelementptr inbounds %struct.GPR, %struct.GPR* %3687, i32 0, i32 5
  %3689 = getelementptr inbounds %struct.Reg, %struct.Reg* %3688, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3689 to i64*
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3691 = getelementptr inbounds %struct.GPR, %struct.GPR* %3690, i32 0, i32 15
  %3692 = getelementptr inbounds %struct.Reg, %struct.Reg* %3691, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %3692 to i64*
  %3693 = load i64, i64* %RBP.i42
  %3694 = sub i64 %3693, 20
  %3695 = load i64, i64* %PC.i41
  %3696 = add i64 %3695, 3
  store i64 %3696, i64* %PC.i41
  %3697 = inttoptr i64 %3694 to i32*
  %3698 = load i32, i32* %3697
  %3699 = zext i32 %3698 to i64
  store i64 %3699, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_44c0d3, %struct.Memory** %MEMORY
  %loadMem_44c0d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 33
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %3702 to i64*
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 11
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %RDI.i39 = bitcast %union.anon* %3705 to i64*
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3707 = getelementptr inbounds %struct.GPR, %struct.GPR* %3706, i32 0, i32 15
  %3708 = getelementptr inbounds %struct.Reg, %struct.Reg* %3707, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %3708 to i64*
  %3709 = load i64, i64* %RBP.i40
  %3710 = sub i64 %3709, 32
  %3711 = load i64, i64* %PC.i38
  %3712 = add i64 %3711, 4
  store i64 %3712, i64* %PC.i38
  %3713 = inttoptr i64 %3710 to i64*
  %3714 = load i64, i64* %3713
  store i64 %3714, i64* %RDI.i39, align 8
  store %struct.Memory* %loadMem_44c0d6, %struct.Memory** %MEMORY
  %loadMem_44c0da = load %struct.Memory*, %struct.Memory** %MEMORY
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3716 = getelementptr inbounds %struct.GPR, %struct.GPR* %3715, i32 0, i32 33
  %3717 = getelementptr inbounds %struct.Reg, %struct.Reg* %3716, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %3717 to i64*
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3719 = getelementptr inbounds %struct.GPR, %struct.GPR* %3718, i32 0, i32 5
  %3720 = getelementptr inbounds %struct.Reg, %struct.Reg* %3719, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3720 to i32*
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3722 = getelementptr inbounds %struct.GPR, %struct.GPR* %3721, i32 0, i32 11
  %3723 = getelementptr inbounds %struct.Reg, %struct.Reg* %3722, i32 0, i32 0
  %RDI.i37 = bitcast %union.anon* %3723 to i64*
  %3724 = load i64, i64* %RDI.i37
  %3725 = add i64 %3724, 6404
  %3726 = load i32, i32* %ECX.i
  %3727 = zext i32 %3726 to i64
  %3728 = load i64, i64* %PC.i36
  %3729 = add i64 %3728, 6
  store i64 %3729, i64* %PC.i36
  %3730 = inttoptr i64 %3725 to i32*
  store i32 %3726, i32* %3730
  store %struct.Memory* %loadMem_44c0da, %struct.Memory** %MEMORY
  %loadMem_44c0e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3732 = getelementptr inbounds %struct.GPR, %struct.GPR* %3731, i32 0, i32 33
  %3733 = getelementptr inbounds %struct.Reg, %struct.Reg* %3732, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %3733 to i64*
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3735 = getelementptr inbounds %struct.GPR, %struct.GPR* %3734, i32 0, i32 11
  %3736 = getelementptr inbounds %struct.Reg, %struct.Reg* %3735, i32 0, i32 0
  %RDI.i34 = bitcast %union.anon* %3736 to i64*
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3738 = getelementptr inbounds %struct.GPR, %struct.GPR* %3737, i32 0, i32 15
  %3739 = getelementptr inbounds %struct.Reg, %struct.Reg* %3738, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %3739 to i64*
  %3740 = load i64, i64* %RBP.i35
  %3741 = sub i64 %3740, 32
  %3742 = load i64, i64* %PC.i33
  %3743 = add i64 %3742, 4
  store i64 %3743, i64* %PC.i33
  %3744 = inttoptr i64 %3741 to i64*
  %3745 = load i64, i64* %3744
  store i64 %3745, i64* %RDI.i34, align 8
  store %struct.Memory* %loadMem_44c0e0, %struct.Memory** %MEMORY
  %loadMem_44c0e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 33
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %3748 to i64*
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 11
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %RDI.i32 = bitcast %union.anon* %3751 to i64*
  %3752 = load i64, i64* %RDI.i32
  %3753 = add i64 %3752, 6528
  %3754 = load i64, i64* %PC.i31
  %3755 = add i64 %3754, 11
  store i64 %3755, i64* %PC.i31
  %3756 = inttoptr i64 %3753 to i64*
  store i64 0, i64* %3756
  store %struct.Memory* %loadMem_44c0e4, %struct.Memory** %MEMORY
  %loadMem_44c0ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3758 = getelementptr inbounds %struct.GPR, %struct.GPR* %3757, i32 0, i32 33
  %3759 = getelementptr inbounds %struct.Reg, %struct.Reg* %3758, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %3759 to i64*
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3761 = getelementptr inbounds %struct.GPR, %struct.GPR* %3760, i32 0, i32 11
  %3762 = getelementptr inbounds %struct.Reg, %struct.Reg* %3761, i32 0, i32 0
  %RDI.i29 = bitcast %union.anon* %3762 to i64*
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3764 = getelementptr inbounds %struct.GPR, %struct.GPR* %3763, i32 0, i32 15
  %3765 = getelementptr inbounds %struct.Reg, %struct.Reg* %3764, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %3765 to i64*
  %3766 = load i64, i64* %RBP.i30
  %3767 = sub i64 %3766, 32
  %3768 = load i64, i64* %PC.i28
  %3769 = add i64 %3768, 4
  store i64 %3769, i64* %PC.i28
  %3770 = inttoptr i64 %3767 to i64*
  %3771 = load i64, i64* %3770
  store i64 %3771, i64* %RDI.i29, align 8
  store %struct.Memory* %loadMem_44c0ef, %struct.Memory** %MEMORY
  %loadMem_44c0f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3773 = getelementptr inbounds %struct.GPR, %struct.GPR* %3772, i32 0, i32 33
  %3774 = getelementptr inbounds %struct.Reg, %struct.Reg* %3773, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %3774 to i64*
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3776 = getelementptr inbounds %struct.GPR, %struct.GPR* %3775, i32 0, i32 11
  %3777 = getelementptr inbounds %struct.Reg, %struct.Reg* %3776, i32 0, i32 0
  %RDI.i27 = bitcast %union.anon* %3777 to i64*
  %3778 = load i64, i64* %RDI.i27
  %3779 = add i64 %3778, 6536
  %3780 = load i64, i64* %PC.i26
  %3781 = add i64 %3780, 11
  store i64 %3781, i64* %PC.i26
  %3782 = inttoptr i64 %3779 to i64*
  store i64 0, i64* %3782
  store %struct.Memory* %loadMem_44c0f3, %struct.Memory** %MEMORY
  %loadMem_44c0fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3784 = getelementptr inbounds %struct.GPR, %struct.GPR* %3783, i32 0, i32 33
  %3785 = getelementptr inbounds %struct.Reg, %struct.Reg* %3784, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %3785 to i64*
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3787 = getelementptr inbounds %struct.GPR, %struct.GPR* %3786, i32 0, i32 11
  %3788 = getelementptr inbounds %struct.Reg, %struct.Reg* %3787, i32 0, i32 0
  %RDI.i24 = bitcast %union.anon* %3788 to i64*
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3790 = getelementptr inbounds %struct.GPR, %struct.GPR* %3789, i32 0, i32 15
  %3791 = getelementptr inbounds %struct.Reg, %struct.Reg* %3790, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %3791 to i64*
  %3792 = load i64, i64* %RBP.i25
  %3793 = sub i64 %3792, 32
  %3794 = load i64, i64* %PC.i23
  %3795 = add i64 %3794, 4
  store i64 %3795, i64* %PC.i23
  %3796 = inttoptr i64 %3793 to i64*
  %3797 = load i64, i64* %3796
  store i64 %3797, i64* %RDI.i24, align 8
  store %struct.Memory* %loadMem_44c0fe, %struct.Memory** %MEMORY
  %loadMem_44c102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 33
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %3800 to i64*
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3802 = getelementptr inbounds %struct.GPR, %struct.GPR* %3801, i32 0, i32 11
  %3803 = getelementptr inbounds %struct.Reg, %struct.Reg* %3802, i32 0, i32 0
  %RDI.i22 = bitcast %union.anon* %3803 to i64*
  %3804 = load i64, i64* %RDI.i22
  %3805 = add i64 %3804, 6544
  %3806 = load i64, i64* %PC.i21
  %3807 = add i64 %3806, 11
  store i64 %3807, i64* %PC.i21
  %3808 = inttoptr i64 %3805 to i64*
  store i64 0, i64* %3808
  store %struct.Memory* %loadMem_44c102, %struct.Memory** %MEMORY
  %loadMem_44c10d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3810 = getelementptr inbounds %struct.GPR, %struct.GPR* %3809, i32 0, i32 33
  %3811 = getelementptr inbounds %struct.Reg, %struct.Reg* %3810, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3811 to i64*
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3813 = getelementptr inbounds %struct.GPR, %struct.GPR* %3812, i32 0, i32 11
  %3814 = getelementptr inbounds %struct.Reg, %struct.Reg* %3813, i32 0, i32 0
  %RDI.i19 = bitcast %union.anon* %3814 to i64*
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3816 = getelementptr inbounds %struct.GPR, %struct.GPR* %3815, i32 0, i32 15
  %3817 = getelementptr inbounds %struct.Reg, %struct.Reg* %3816, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %3817 to i64*
  %3818 = load i64, i64* %RBP.i20
  %3819 = sub i64 %3818, 32
  %3820 = load i64, i64* %PC.i18
  %3821 = add i64 %3820, 4
  store i64 %3821, i64* %PC.i18
  %3822 = inttoptr i64 %3819 to i64*
  %3823 = load i64, i64* %3822
  store i64 %3823, i64* %RDI.i19, align 8
  store %struct.Memory* %loadMem_44c10d, %struct.Memory** %MEMORY
  %loadMem_44c111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3825 = getelementptr inbounds %struct.GPR, %struct.GPR* %3824, i32 0, i32 33
  %3826 = getelementptr inbounds %struct.Reg, %struct.Reg* %3825, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %3826 to i64*
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3828 = getelementptr inbounds %struct.GPR, %struct.GPR* %3827, i32 0, i32 11
  %3829 = getelementptr inbounds %struct.Reg, %struct.Reg* %3828, i32 0, i32 0
  %RDI.i17 = bitcast %union.anon* %3829 to i64*
  %3830 = load i64, i64* %RDI.i17
  %3831 = add i64 %3830, 6412
  %3832 = load i64, i64* %PC.i16
  %3833 = add i64 %3832, 10
  store i64 %3833, i64* %PC.i16
  %3834 = inttoptr i64 %3831 to i32*
  store i32 0, i32* %3834
  store %struct.Memory* %loadMem_44c111, %struct.Memory** %MEMORY
  %loadMem_44c11b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3836 = getelementptr inbounds %struct.GPR, %struct.GPR* %3835, i32 0, i32 33
  %3837 = getelementptr inbounds %struct.Reg, %struct.Reg* %3836, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3837 to i64*
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3839 = getelementptr inbounds %struct.GPR, %struct.GPR* %3838, i32 0, i32 11
  %3840 = getelementptr inbounds %struct.Reg, %struct.Reg* %3839, i32 0, i32 0
  %RDI.i14 = bitcast %union.anon* %3840 to i64*
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3842 = getelementptr inbounds %struct.GPR, %struct.GPR* %3841, i32 0, i32 15
  %3843 = getelementptr inbounds %struct.Reg, %struct.Reg* %3842, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %3843 to i64*
  %3844 = load i64, i64* %RBP.i15
  %3845 = sub i64 %3844, 32
  %3846 = load i64, i64* %PC.i13
  %3847 = add i64 %3846, 4
  store i64 %3847, i64* %PC.i13
  %3848 = inttoptr i64 %3845 to i64*
  %3849 = load i64, i64* %3848
  store i64 %3849, i64* %RDI.i14, align 8
  store %struct.Memory* %loadMem_44c11b, %struct.Memory** %MEMORY
  %loadMem_44c11f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3851 = getelementptr inbounds %struct.GPR, %struct.GPR* %3850, i32 0, i32 33
  %3852 = getelementptr inbounds %struct.Reg, %struct.Reg* %3851, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %3852 to i64*
  %3853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3854 = getelementptr inbounds %struct.GPR, %struct.GPR* %3853, i32 0, i32 11
  %3855 = getelementptr inbounds %struct.Reg, %struct.Reg* %3854, i32 0, i32 0
  %RDI.i12 = bitcast %union.anon* %3855 to i64*
  %3856 = load i64, i64* %RDI.i12
  %3857 = add i64 %3856, 6416
  %3858 = load i64, i64* %PC.i11
  %3859 = add i64 %3858, 10
  store i64 %3859, i64* %PC.i11
  %3860 = inttoptr i64 %3857 to i32*
  store i32 0, i32* %3860
  store %struct.Memory* %loadMem_44c11f, %struct.Memory** %MEMORY
  %loadMem_44c129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3862 = getelementptr inbounds %struct.GPR, %struct.GPR* %3861, i32 0, i32 33
  %3863 = getelementptr inbounds %struct.Reg, %struct.Reg* %3862, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3863 to i64*
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3865 = getelementptr inbounds %struct.GPR, %struct.GPR* %3864, i32 0, i32 11
  %3866 = getelementptr inbounds %struct.Reg, %struct.Reg* %3865, i32 0, i32 0
  %RDI.i9 = bitcast %union.anon* %3866 to i64*
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3868 = getelementptr inbounds %struct.GPR, %struct.GPR* %3867, i32 0, i32 15
  %3869 = getelementptr inbounds %struct.Reg, %struct.Reg* %3868, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %3869 to i64*
  %3870 = load i64, i64* %RBP.i10
  %3871 = sub i64 %3870, 32
  %3872 = load i64, i64* %PC.i8
  %3873 = add i64 %3872, 4
  store i64 %3873, i64* %PC.i8
  %3874 = inttoptr i64 %3871 to i64*
  %3875 = load i64, i64* %3874
  store i64 %3875, i64* %RDI.i9, align 8
  store %struct.Memory* %loadMem_44c129, %struct.Memory** %MEMORY
  %loadMem_44c12d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3877 = getelementptr inbounds %struct.GPR, %struct.GPR* %3876, i32 0, i32 33
  %3878 = getelementptr inbounds %struct.Reg, %struct.Reg* %3877, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3878 to i64*
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3880 = getelementptr inbounds %struct.GPR, %struct.GPR* %3879, i32 0, i32 1
  %3881 = getelementptr inbounds %struct.Reg, %struct.Reg* %3880, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3881 to i32*
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3883 = getelementptr inbounds %struct.GPR, %struct.GPR* %3882, i32 0, i32 15
  %3884 = getelementptr inbounds %struct.Reg, %struct.Reg* %3883, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %3884 to i64*
  %3885 = load i64, i64* %RBP.i7
  %3886 = sub i64 %3885, 100
  %3887 = load i32, i32* %EAX.i
  %3888 = zext i32 %3887 to i64
  %3889 = load i64, i64* %PC.i6
  %3890 = add i64 %3889, 3
  store i64 %3890, i64* %PC.i6
  %3891 = inttoptr i64 %3886 to i32*
  store i32 %3887, i32* %3891
  store %struct.Memory* %loadMem_44c12d, %struct.Memory** %MEMORY
  %loadMem_44c130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 33
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3894 to i64*
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 1
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3897 to i64*
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3899 = getelementptr inbounds %struct.GPR, %struct.GPR* %3898, i32 0, i32 11
  %3900 = getelementptr inbounds %struct.Reg, %struct.Reg* %3899, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3900 to i64*
  %3901 = load i64, i64* %RDI.i
  %3902 = load i64, i64* %PC.i5
  %3903 = add i64 %3902, 3
  store i64 %3903, i64* %PC.i5
  store i64 %3901, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_44c130, %struct.Memory** %MEMORY
  %loadMem_44c133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3905 = getelementptr inbounds %struct.GPR, %struct.GPR* %3904, i32 0, i32 33
  %3906 = getelementptr inbounds %struct.Reg, %struct.Reg* %3905, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3906 to i64*
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 13
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3909 to i64*
  %3910 = load i64, i64* %RSP.i
  %3911 = load i64, i64* %PC.i4
  %3912 = add i64 %3911, 4
  store i64 %3912, i64* %PC.i4
  %3913 = add i64 112, %3910
  store i64 %3913, i64* %RSP.i, align 8
  %3914 = icmp ult i64 %3913, %3910
  %3915 = icmp ult i64 %3913, 112
  %3916 = or i1 %3914, %3915
  %3917 = zext i1 %3916 to i8
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3917, i8* %3918, align 1
  %3919 = trunc i64 %3913 to i32
  %3920 = and i32 %3919, 255
  %3921 = call i32 @llvm.ctpop.i32(i32 %3920)
  %3922 = trunc i32 %3921 to i8
  %3923 = and i8 %3922, 1
  %3924 = xor i8 %3923, 1
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3924, i8* %3925, align 1
  %3926 = xor i64 112, %3910
  %3927 = xor i64 %3926, %3913
  %3928 = lshr i64 %3927, 4
  %3929 = trunc i64 %3928 to i8
  %3930 = and i8 %3929, 1
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3930, i8* %3931, align 1
  %3932 = icmp eq i64 %3913, 0
  %3933 = zext i1 %3932 to i8
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3933, i8* %3934, align 1
  %3935 = lshr i64 %3913, 63
  %3936 = trunc i64 %3935 to i8
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3936, i8* %3937, align 1
  %3938 = lshr i64 %3910, 63
  %3939 = xor i64 %3935, %3938
  %3940 = add i64 %3939, %3935
  %3941 = icmp eq i64 %3940, 2
  %3942 = zext i1 %3941 to i8
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3942, i8* %3943, align 1
  store %struct.Memory* %loadMem_44c133, %struct.Memory** %MEMORY
  %loadMem_44c137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3945 = getelementptr inbounds %struct.GPR, %struct.GPR* %3944, i32 0, i32 33
  %3946 = getelementptr inbounds %struct.Reg, %struct.Reg* %3945, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3946 to i64*
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3948 = getelementptr inbounds %struct.GPR, %struct.GPR* %3947, i32 0, i32 15
  %3949 = getelementptr inbounds %struct.Reg, %struct.Reg* %3948, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3949 to i64*
  %3950 = load i64, i64* %PC.i2
  %3951 = add i64 %3950, 1
  store i64 %3951, i64* %PC.i2
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3953 = load i64, i64* %3952, align 8
  %3954 = add i64 %3953, 8
  %3955 = inttoptr i64 %3953 to i64*
  %3956 = load i64, i64* %3955
  store i64 %3956, i64* %RBP.i3, align 8
  store i64 %3954, i64* %3952, align 8
  store %struct.Memory* %loadMem_44c137, %struct.Memory** %MEMORY
  %loadMem_44c138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3958 = getelementptr inbounds %struct.GPR, %struct.GPR* %3957, i32 0, i32 33
  %3959 = getelementptr inbounds %struct.Reg, %struct.Reg* %3958, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3959 to i64*
  %3960 = load i64, i64* %PC.i1
  %3961 = add i64 %3960, 1
  store i64 %3961, i64* %PC.i1
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3964 = load i64, i64* %3963, align 8
  %3965 = inttoptr i64 %3964 to i64*
  %3966 = load i64, i64* %3965
  store i64 %3966, i64* %3962, align 8
  %3967 = add i64 %3964, 8
  store i64 %3967, i64* %3963, align 8
  store %struct.Memory* %loadMem_44c138, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_44c138
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

define %struct.Memory* @routine_subq__0x70___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 112
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 112
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
  %23 = xor i64 112, %9
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

define %struct.Memory* @routine_movl__eax___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x19b8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 6584, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R10D to i64*
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R10
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.calloc_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpq_MINUS0x20__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_44bdb4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4c18e3___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c18e3_type* @G__0x4c18e3 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x1918___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 6424, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 6424
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
  %25 = xor i64 6424, %9
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_callq_.get_mem2Dpel(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__0x1920__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6432
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__0x1930__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6448
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__0x1940__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6464
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb8f8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x504__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1284
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

define %struct.Memory* @routine_jne_.L_44be38(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x508__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1288
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

define %struct.Memory* @routine_cmpl__0x0__0x3c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 60
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

define %struct.Memory* @routine_je_.L_44be56(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x0__0x1928__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6440
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__0x1938__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6456
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
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

define %struct.Memory* @routine_cmpl__0x0__0x11bfc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72700
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

define %struct.Memory* @routine_je_.L_44be8b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x1940___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 6464, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 6464
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
  %25 = xor i64 6464, %9
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

define %struct.Memory* @routine_callq_.get_mem3Dpel(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x11b24__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72484
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__rax__0x1948__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 6472
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq_0x1948__rax____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 6472
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_44bed6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4c18fd___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c18fd_type* @G__0x4c18fd to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_addq__0x1950___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 6480, %9
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 6480
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
  %25 = xor i64 6480, %9
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EDI
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
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

define %struct.Memory* @routine_callq_.get_mem3Dshort(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x6___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x1958___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = add i64 6488, %9
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 6488
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
  %25 = xor i64 6488, %9
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

define %struct.Memory* @routine_callq_.get_mem3Dint64(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x1960___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = add i64 6496, %9
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 6496
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
  %25 = xor i64 6496, %9
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

define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x1968___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = add i64 6504, %9
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 6504
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
  %25 = xor i64 6504, %9
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
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

define %struct.Memory* @routine_movl__ecx__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.get_mem4Dshort(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x1970___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = add i64 6512, %9
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 6512
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
  %25 = xor i64 6512, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x58__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.get_mem2D(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x1978___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = add i64 6520, %9
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 6520
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
  %25 = xor i64 6520, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x60__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x18dc__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6364
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x18d8__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6360
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x18e4__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6372
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x18e0__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6368
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x18ec__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6380
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x18e8__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6376
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x18f4__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6388
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x18f0__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6384
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
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

define %struct.Memory* @routine_movl__ecx__0x18f8__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 6392
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__ecx__0x18fc__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 6396
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x1900__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 6400
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_movl__ecx__0x1904__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 6404
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__0x1980__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6528
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__0x1988__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6536
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__0x1990__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6544
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x190c__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6412
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x1910__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6416
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_movq__rdi___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x70___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 112, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 112
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
  %25 = xor i64 112, %9
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
