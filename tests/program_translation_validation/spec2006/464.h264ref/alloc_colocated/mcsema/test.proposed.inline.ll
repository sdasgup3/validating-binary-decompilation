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
%G__0x4c1d94_type = type <{ [8 x i8] }>
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
@G__0x4c1d94 = global %G__0x4c1d94_type zeroinitializer

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

declare %struct.Memory* @sub_45a110.get_mem3Dshort(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_459b30.get_mem3Dint64(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_45a1c0.get_mem4Dshort(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_459720.get_mem2D(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @alloc_colocated(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_454fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_454fb0, %struct.Memory** %MEMORY
  %loadMem_454fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i24 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i24
  %27 = load i64, i64* %PC.i23
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i23
  store i64 %26, i64* %RBP.i25, align 8
  store %struct.Memory* %loadMem_454fb1, %struct.Memory** %MEMORY
  %loadMem_454fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i29 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i29
  %36 = load i64, i64* %PC.i28
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i28
  %38 = sub i64 %35, 208
  store i64 %38, i64* %RSP.i29, align 8
  %39 = icmp ult i64 %35, 208
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
  %49 = xor i64 208, %35
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
  store %struct.Memory* %loadMem_454fb4, %struct.Memory** %MEMORY
  %loadMem_454fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i42
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i42
  store i64 1, i64* %RAX.i43, align 8
  store %struct.Memory* %loadMem_454fbb, %struct.Memory** %MEMORY
  %loadMem_454fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EAX.i90 = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RCX.i91 = bitcast %union.anon* %83 to i64*
  %84 = load i32, i32* %EAX.i90
  %85 = zext i32 %84 to i64
  %86 = load i64, i64* %PC.i89
  %87 = add i64 %86, 2
  store i64 %87, i64* %PC.i89
  %88 = and i64 %85, 4294967295
  store i64 %88, i64* %RCX.i91, align 8
  store %struct.Memory* %loadMem_454fc0, %struct.Memory** %MEMORY
  %loadMem_454fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 33
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %91 to i64*
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %93 = getelementptr inbounds %struct.GPR, %struct.GPR* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.Reg, %struct.Reg* %93, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %94 to i64*
  %95 = load i64, i64* %PC.i96
  %96 = add i64 %95, 5
  store i64 %96, i64* %PC.i96
  store i64 4880, i64* %RAX.i97, align 8
  store %struct.Memory* %loadMem_454fc2, %struct.Memory** %MEMORY
  %loadMem_454fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %EAX.i112 = bitcast %union.anon* %102 to i32*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 17
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %R8D.i113 = bitcast %union.anon* %105 to i32*
  %106 = bitcast i32* %R8D.i113 to i64*
  %107 = load i32, i32* %EAX.i112
  %108 = zext i32 %107 to i64
  %109 = load i64, i64* %PC.i111
  %110 = add i64 %109, 3
  store i64 %110, i64* %PC.i111
  %111 = and i64 %108, 4294967295
  store i64 %111, i64* %106, align 8
  store %struct.Memory* %loadMem_454fc7, %struct.Memory** %MEMORY
  %loadMem_454fca = load %struct.Memory*, %struct.Memory** %MEMORY
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 33
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %114 to i64*
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 11
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %117 to i32*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 15
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %120 to i64*
  %121 = load i64, i64* %RBP.i156
  %122 = sub i64 %121, 4
  %123 = load i32, i32* %EDI.i
  %124 = zext i32 %123 to i64
  %125 = load i64, i64* %PC.i155
  %126 = add i64 %125, 3
  store i64 %126, i64* %PC.i155
  %127 = inttoptr i64 %122 to i32*
  store i32 %123, i32* %127
  store %struct.Memory* %loadMem_454fca, %struct.Memory** %MEMORY
  %loadMem_454fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 33
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %130 to i64*
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 9
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %ESI.i162 = bitcast %union.anon* %133 to i32*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 15
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %136 to i64*
  %137 = load i64, i64* %RBP.i163
  %138 = sub i64 %137, 8
  %139 = load i32, i32* %ESI.i162
  %140 = zext i32 %139 to i64
  %141 = load i64, i64* %PC.i161
  %142 = add i64 %141, 3
  store i64 %142, i64* %PC.i161
  %143 = inttoptr i64 %138 to i32*
  store i32 %139, i32* %143
  store %struct.Memory* %loadMem_454fcd, %struct.Memory** %MEMORY
  %loadMem_454fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 33
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %146 to i64*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 7
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %EDX.i178 = bitcast %union.anon* %149 to i32*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 15
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %152 to i64*
  %153 = load i64, i64* %RBP.i179
  %154 = sub i64 %153, 12
  %155 = load i32, i32* %EDX.i178
  %156 = zext i32 %155 to i64
  %157 = load i64, i64* %PC.i177
  %158 = add i64 %157, 3
  store i64 %158, i64* %PC.i177
  %159 = inttoptr i64 %154 to i32*
  store i32 %155, i32* %159
  store %struct.Memory* %loadMem_454fd0, %struct.Memory** %MEMORY
  %loadMem_454fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 33
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %162 to i64*
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %164 = getelementptr inbounds %struct.GPR, %struct.GPR* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.Reg, %struct.Reg* %164, i32 0, i32 0
  %RCX.i222 = bitcast %union.anon* %165 to i64*
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 11
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %RDI.i223 = bitcast %union.anon* %168 to i64*
  %169 = load i64, i64* %RCX.i222
  %170 = load i64, i64* %PC.i221
  %171 = add i64 %170, 3
  store i64 %171, i64* %PC.i221
  store i64 %169, i64* %RDI.i223, align 8
  store %struct.Memory* %loadMem_454fd3, %struct.Memory** %MEMORY
  %loadMem_454fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 33
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %174 to i64*
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 9
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %RSI.i229 = bitcast %union.anon* %177 to i64*
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %179 = getelementptr inbounds %struct.GPR, %struct.GPR* %178, i32 0, i32 17
  %180 = getelementptr inbounds %struct.Reg, %struct.Reg* %179, i32 0, i32 0
  %R8.i = bitcast %union.anon* %180 to i64*
  %181 = load i64, i64* %R8.i
  %182 = load i64, i64* %PC.i228
  %183 = add i64 %182, 3
  store i64 %183, i64* %PC.i228
  store i64 %181, i64* %RSI.i229, align 8
  store %struct.Memory* %loadMem_454fd6, %struct.Memory** %MEMORY
  %loadMem1_454fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 33
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %186 to i64*
  %187 = load i64, i64* %PC.i243
  %188 = add i64 %187, -343801
  %189 = load i64, i64* %PC.i243
  %190 = add i64 %189, 5
  %191 = load i64, i64* %PC.i243
  %192 = add i64 %191, 5
  store i64 %192, i64* %PC.i243
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = add i64 %194, -8
  %196 = inttoptr i64 %195 to i64*
  store i64 %190, i64* %196
  store i64 %195, i64* %193, align 8
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %188, i64* %197, align 8
  store %struct.Memory* %loadMem1_454fd9, %struct.Memory** %MEMORY
  %loadMem2_454fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_454fd9 = load i64, i64* %3
  %198 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %loadMem2_454fd9)
  store %struct.Memory* %198, %struct.Memory** %MEMORY
  %loadMem_454fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 33
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %201 to i64*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 7
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %EDX.i280 = bitcast %union.anon* %204 to i32*
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 7
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %RDX.i281 = bitcast %union.anon* %207 to i64*
  %208 = load i64, i64* %RDX.i281
  %209 = load i32, i32* %EDX.i280
  %210 = zext i32 %209 to i64
  %211 = load i64, i64* %PC.i279
  %212 = add i64 %211, 2
  store i64 %212, i64* %PC.i279
  %213 = xor i64 %210, %208
  %214 = trunc i64 %213 to i32
  %215 = and i64 %213, 4294967295
  store i64 %215, i64* %RDX.i281, align 8
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %216, align 1
  %217 = and i32 %214, 255
  %218 = call i32 @llvm.ctpop.i32(i32 %217)
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = xor i8 %220, 1
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %221, i8* %222, align 1
  %223 = icmp eq i32 %214, 0
  %224 = zext i1 %223 to i8
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %224, i8* %225, align 1
  %226 = lshr i32 %214, 31
  %227 = trunc i32 %226 to i8
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %227, i8* %228, align 1
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %229, align 1
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %230, align 1
  store %struct.Memory* %loadMem_454fde, %struct.Memory** %MEMORY
  %loadMem_454fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 33
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 7
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %EDX.i287 = bitcast %union.anon* %236 to i32*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 5
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RCX.i288 = bitcast %union.anon* %239 to i64*
  %240 = load i32, i32* %EDX.i287
  %241 = zext i32 %240 to i64
  %242 = load i64, i64* %PC.i286
  %243 = add i64 %242, 2
  store i64 %243, i64* %PC.i286
  %244 = and i64 %241, 4294967295
  store i64 %244, i64* %RCX.i288, align 8
  store %struct.Memory* %loadMem_454fe0, %struct.Memory** %MEMORY
  %loadMem_454fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 33
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %247 to i64*
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %250 to i64*
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 15
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %253 to i64*
  %254 = load i64, i64* %RBP.i304
  %255 = sub i64 %254, 24
  %256 = load i64, i64* %RAX.i303
  %257 = load i64, i64* %PC.i302
  %258 = add i64 %257, 4
  store i64 %258, i64* %PC.i302
  %259 = inttoptr i64 %255 to i64*
  store i64 %256, i64* %259
  store %struct.Memory* %loadMem_454fe2, %struct.Memory** %MEMORY
  %loadMem_454fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %261 = getelementptr inbounds %struct.GPR, %struct.GPR* %260, i32 0, i32 33
  %262 = getelementptr inbounds %struct.Reg, %struct.Reg* %261, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %262 to i64*
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 5
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %RCX.i353 = bitcast %union.anon* %265 to i64*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 15
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %268 to i64*
  %269 = load i64, i64* %RCX.i353
  %270 = load i64, i64* %RBP.i354
  %271 = sub i64 %270, 24
  %272 = load i64, i64* %PC.i352
  %273 = add i64 %272, 4
  store i64 %273, i64* %PC.i352
  %274 = inttoptr i64 %271 to i64*
  %275 = load i64, i64* %274
  %276 = sub i64 %269, %275
  %277 = icmp ugt i64 %275, %269
  %278 = zext i1 %277 to i8
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %278, i8* %279, align 1
  %280 = trunc i64 %276 to i32
  %281 = and i32 %280, 255
  %282 = call i32 @llvm.ctpop.i32(i32 %281)
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  %285 = xor i8 %284, 1
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %285, i8* %286, align 1
  %287 = xor i64 %275, %269
  %288 = xor i64 %287, %276
  %289 = lshr i64 %288, 4
  %290 = trunc i64 %289 to i8
  %291 = and i8 %290, 1
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %291, i8* %292, align 1
  %293 = icmp eq i64 %276, 0
  %294 = zext i1 %293 to i8
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %294, i8* %295, align 1
  %296 = lshr i64 %276, 63
  %297 = trunc i64 %296 to i8
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %297, i8* %298, align 1
  %299 = lshr i64 %269, 63
  %300 = lshr i64 %275, 63
  %301 = xor i64 %300, %299
  %302 = xor i64 %296, %299
  %303 = add i64 %302, %301
  %304 = icmp eq i64 %303, 2
  %305 = zext i1 %304 to i8
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %305, i8* %306, align 1
  store %struct.Memory* %loadMem_454fe6, %struct.Memory** %MEMORY
  %loadMem_454fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 33
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %309 to i64*
  %310 = load i64, i64* %PC.i359
  %311 = add i64 %310, 21
  %312 = load i64, i64* %PC.i359
  %313 = add i64 %312, 6
  %314 = load i64, i64* %PC.i359
  %315 = add i64 %314, 6
  store i64 %315, i64* %PC.i359
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %317 = load i8, i8* %316, align 1
  %318 = icmp eq i8 %317, 0
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %BRANCH_TAKEN, align 1
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %321 = select i1 %318, i64 %311, i64 %313
  store i64 %321, i64* %320, align 8
  store %struct.Memory* %loadMem_454fea, %struct.Memory** %MEMORY
  %loadBr_454fea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454fea = icmp eq i8 %loadBr_454fea, 1
  br i1 %cmpBr_454fea, label %block_.L_454fff, label %block_454ff0

block_454ff0:                                     ; preds = %entry
  %loadMem_454ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 33
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %324 to i64*
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 11
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %RDI.i374 = bitcast %union.anon* %327 to i64*
  %328 = load i64, i64* %PC.i373
  %329 = add i64 %328, 10
  store i64 %329, i64* %PC.i373
  store i64 ptrtoint (%G__0x4c1d94_type* @G__0x4c1d94 to i64), i64* %RDI.i374, align 8
  store %struct.Memory* %loadMem_454ff0, %struct.Memory** %MEMORY
  %loadMem1_454ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %331 = getelementptr inbounds %struct.GPR, %struct.GPR* %330, i32 0, i32 33
  %332 = getelementptr inbounds %struct.Reg, %struct.Reg* %331, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %332 to i64*
  %333 = load i64, i64* %PC.i416
  %334 = add i64 %333, 17398
  %335 = load i64, i64* %PC.i416
  %336 = add i64 %335, 5
  %337 = load i64, i64* %PC.i416
  %338 = add i64 %337, 5
  store i64 %338, i64* %PC.i416
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = add i64 %340, -8
  %342 = inttoptr i64 %341 to i64*
  store i64 %336, i64* %342
  store i64 %341, i64* %339, align 8
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %334, i64* %343, align 8
  store %struct.Memory* %loadMem1_454ffa, %struct.Memory** %MEMORY
  %loadMem2_454ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_454ffa = load i64, i64* %3
  %call2_454ffa = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64 %loadPC_454ffa, %struct.Memory* %loadMem2_454ffa)
  store %struct.Memory* %call2_454ffa, %struct.Memory** %MEMORY
  br label %block_.L_454fff

block_.L_454fff:                                  ; preds = %block_454ff0, %entry
  %loadMem_454fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 33
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %346 to i64*
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 9
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %RSI.i422 = bitcast %union.anon* %349 to i64*
  %350 = load i64, i64* %PC.i421
  %351 = add i64 %350, 5
  store i64 %351, i64* %PC.i421
  store i64 2, i64* %RSI.i422, align 8
  store %struct.Memory* %loadMem_454fff, %struct.Memory** %MEMORY
  %loadMem_455004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 33
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %354 to i64*
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %RAX.i437 = bitcast %union.anon* %357 to i64*
  %358 = load i64, i64* %PC.i436
  %359 = add i64 %358, 5
  store i64 %359, i64* %PC.i436
  store i64 4, i64* %RAX.i437, align 8
  store %struct.Memory* %loadMem_455004, %struct.Memory** %MEMORY
  %loadMem_455009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 33
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %362 to i64*
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 5
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %RCX.i483 = bitcast %union.anon* %365 to i64*
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %367 = getelementptr inbounds %struct.GPR, %struct.GPR* %366, i32 0, i32 15
  %368 = getelementptr inbounds %struct.Reg, %struct.Reg* %367, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %368 to i64*
  %369 = load i64, i64* %RBP.i484
  %370 = sub i64 %369, 4
  %371 = load i64, i64* %PC.i482
  %372 = add i64 %371, 3
  store i64 %372, i64* %PC.i482
  %373 = inttoptr i64 %370 to i32*
  %374 = load i32, i32* %373
  %375 = zext i32 %374 to i64
  store i64 %375, i64* %RCX.i483, align 8
  store %struct.Memory* %loadMem_455009, %struct.Memory** %MEMORY
  %loadMem_45500c = load %struct.Memory*, %struct.Memory** %MEMORY
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 33
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %378 to i64*
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 7
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %RDX.i493 = bitcast %union.anon* %381 to i64*
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 15
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %384 to i64*
  %385 = load i64, i64* %RBP.i494
  %386 = sub i64 %385, 24
  %387 = load i64, i64* %PC.i492
  %388 = add i64 %387, 4
  store i64 %388, i64* %PC.i492
  %389 = inttoptr i64 %386 to i64*
  %390 = load i64, i64* %389
  store i64 %390, i64* %RDX.i493, align 8
  store %struct.Memory* %loadMem_45500c, %struct.Memory** %MEMORY
  %loadMem_455010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 33
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 5
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %ECX.i509 = bitcast %union.anon* %396 to i32*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 7
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %RDX.i510 = bitcast %union.anon* %399 to i64*
  %400 = load i64, i64* %RDX.i510
  %401 = add i64 %400, 4
  %402 = load i32, i32* %ECX.i509
  %403 = zext i32 %402 to i64
  %404 = load i64, i64* %PC.i508
  %405 = add i64 %404, 3
  store i64 %405, i64* %PC.i508
  %406 = inttoptr i64 %401 to i32*
  store i32 %402, i32* %406
  store %struct.Memory* %loadMem_455010, %struct.Memory** %MEMORY
  %loadMem_455013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %408 = getelementptr inbounds %struct.GPR, %struct.GPR* %407, i32 0, i32 33
  %409 = getelementptr inbounds %struct.Reg, %struct.Reg* %408, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %409 to i64*
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 5
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %RCX.i550 = bitcast %union.anon* %412 to i64*
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 15
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %415 to i64*
  %416 = load i64, i64* %RBP.i551
  %417 = sub i64 %416, 8
  %418 = load i64, i64* %PC.i549
  %419 = add i64 %418, 3
  store i64 %419, i64* %PC.i549
  %420 = inttoptr i64 %417 to i32*
  %421 = load i32, i32* %420
  %422 = zext i32 %421 to i64
  store i64 %422, i64* %RCX.i550, align 8
  store %struct.Memory* %loadMem_455013, %struct.Memory** %MEMORY
  %loadMem_455016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 33
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %425 to i64*
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %427 = getelementptr inbounds %struct.GPR, %struct.GPR* %426, i32 0, i32 7
  %428 = getelementptr inbounds %struct.Reg, %struct.Reg* %427, i32 0, i32 0
  %RDX.i566 = bitcast %union.anon* %428 to i64*
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %430 = getelementptr inbounds %struct.GPR, %struct.GPR* %429, i32 0, i32 15
  %431 = getelementptr inbounds %struct.Reg, %struct.Reg* %430, i32 0, i32 0
  %RBP.i567 = bitcast %union.anon* %431 to i64*
  %432 = load i64, i64* %RBP.i567
  %433 = sub i64 %432, 24
  %434 = load i64, i64* %PC.i565
  %435 = add i64 %434, 4
  store i64 %435, i64* %PC.i565
  %436 = inttoptr i64 %433 to i64*
  %437 = load i64, i64* %436
  store i64 %437, i64* %RDX.i566, align 8
  store %struct.Memory* %loadMem_455016, %struct.Memory** %MEMORY
  %loadMem_45501a = load %struct.Memory*, %struct.Memory** %MEMORY
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 33
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %440 to i64*
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 5
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %ECX.i596 = bitcast %union.anon* %443 to i32*
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 7
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %RDX.i597 = bitcast %union.anon* %446 to i64*
  %447 = load i64, i64* %RDX.i597
  %448 = add i64 %447, 8
  %449 = load i32, i32* %ECX.i596
  %450 = zext i32 %449 to i64
  %451 = load i64, i64* %PC.i595
  %452 = add i64 %451, 3
  store i64 %452, i64* %PC.i595
  %453 = inttoptr i64 %448 to i32*
  store i32 %449, i32* %453
  store %struct.Memory* %loadMem_45501a, %struct.Memory** %MEMORY
  %loadMem_45501d = load %struct.Memory*, %struct.Memory** %MEMORY
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 33
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %456 to i64*
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 7
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %RDX.i612 = bitcast %union.anon* %459 to i64*
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %461 = getelementptr inbounds %struct.GPR, %struct.GPR* %460, i32 0, i32 15
  %462 = getelementptr inbounds %struct.Reg, %struct.Reg* %461, i32 0, i32 0
  %RBP.i613 = bitcast %union.anon* %462 to i64*
  %463 = load i64, i64* %RBP.i613
  %464 = sub i64 %463, 24
  %465 = load i64, i64* %PC.i611
  %466 = add i64 %465, 4
  store i64 %466, i64* %PC.i611
  %467 = inttoptr i64 %464 to i64*
  %468 = load i64, i64* %467
  store i64 %468, i64* %RDX.i612, align 8
  store %struct.Memory* %loadMem_45501d, %struct.Memory** %MEMORY
  %loadMem_455021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 33
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %471 to i64*
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 7
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %RDX.i654 = bitcast %union.anon* %474 to i64*
  %475 = load i64, i64* %RDX.i654
  %476 = load i64, i64* %PC.i653
  %477 = add i64 %476, 7
  store i64 %477, i64* %PC.i653
  %478 = add i64 1600, %475
  store i64 %478, i64* %RDX.i654, align 8
  %479 = icmp ult i64 %478, %475
  %480 = icmp ult i64 %478, 1600
  %481 = or i1 %479, %480
  %482 = zext i1 %481 to i8
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %482, i8* %483, align 1
  %484 = trunc i64 %478 to i32
  %485 = and i32 %484, 255
  %486 = call i32 @llvm.ctpop.i32(i32 %485)
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  %489 = xor i8 %488, 1
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %489, i8* %490, align 1
  %491 = xor i64 1600, %475
  %492 = xor i64 %491, %478
  %493 = lshr i64 %492, 4
  %494 = trunc i64 %493 to i8
  %495 = and i8 %494, 1
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %495, i8* %496, align 1
  %497 = icmp eq i64 %478, 0
  %498 = zext i1 %497 to i8
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %498, i8* %499, align 1
  %500 = lshr i64 %478, 63
  %501 = trunc i64 %500 to i8
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %501, i8* %502, align 1
  %503 = lshr i64 %475, 63
  %504 = xor i64 %500, %503
  %505 = add i64 %504, %500
  %506 = icmp eq i64 %505, 2
  %507 = zext i1 %506 to i8
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %507, i8* %508, align 1
  store %struct.Memory* %loadMem_455021, %struct.Memory** %MEMORY
  %loadMem_455028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 33
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %511 to i64*
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 5
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %RCX.i669 = bitcast %union.anon* %514 to i64*
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 15
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %517 to i64*
  %518 = load i64, i64* %RBP.i670
  %519 = sub i64 %518, 4
  %520 = load i64, i64* %PC.i668
  %521 = add i64 %520, 3
  store i64 %521, i64* %PC.i668
  %522 = inttoptr i64 %519 to i32*
  %523 = load i32, i32* %522
  %524 = zext i32 %523 to i64
  store i64 %524, i64* %RCX.i669, align 8
  store %struct.Memory* %loadMem_455028, %struct.Memory** %MEMORY
  %loadMem_45502b = load %struct.Memory*, %struct.Memory** %MEMORY
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 33
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %527 to i64*
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 1
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %EAX.i710 = bitcast %union.anon* %530 to i32*
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 15
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %RBP.i711 = bitcast %union.anon* %533 to i64*
  %534 = load i64, i64* %RBP.i711
  %535 = sub i64 %534, 28
  %536 = load i32, i32* %EAX.i710
  %537 = zext i32 %536 to i64
  %538 = load i64, i64* %PC.i709
  %539 = add i64 %538, 3
  store i64 %539, i64* %PC.i709
  %540 = inttoptr i64 %535 to i32*
  store i32 %536, i32* %540
  store %struct.Memory* %loadMem_45502b, %struct.Memory** %MEMORY
  %loadMem_45502e = load %struct.Memory*, %struct.Memory** %MEMORY
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 33
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %543 to i64*
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 5
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %ECX.i726 = bitcast %union.anon* %546 to i32*
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 1
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %RAX.i727 = bitcast %union.anon* %549 to i64*
  %550 = load i32, i32* %ECX.i726
  %551 = zext i32 %550 to i64
  %552 = load i64, i64* %PC.i725
  %553 = add i64 %552, 2
  store i64 %553, i64* %PC.i725
  %554 = and i64 %551, 4294967295
  store i64 %554, i64* %RAX.i727, align 8
  store %struct.Memory* %loadMem_45502e, %struct.Memory** %MEMORY
  %loadMem_455030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 33
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %557 to i64*
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 7
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %RDX.i764 = bitcast %union.anon* %560 to i64*
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 15
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %RBP.i765 = bitcast %union.anon* %563 to i64*
  %564 = load i64, i64* %RBP.i765
  %565 = sub i64 %564, 40
  %566 = load i64, i64* %RDX.i764
  %567 = load i64, i64* %PC.i763
  %568 = add i64 %567, 4
  store i64 %568, i64* %PC.i763
  %569 = inttoptr i64 %565 to i64*
  store i64 %566, i64* %569
  store %struct.Memory* %loadMem_455030, %struct.Memory** %MEMORY
  %loadMem_455034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %571 = getelementptr inbounds %struct.GPR, %struct.GPR* %570, i32 0, i32 33
  %572 = getelementptr inbounds %struct.Reg, %struct.Reg* %571, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %572 to i64*
  %573 = load i64, i64* %PC.i779
  %574 = add i64 %573, 1
  store i64 %574, i64* %PC.i779
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %577 = bitcast %union.anon* %576 to i32*
  %578 = load i32, i32* %577, align 8
  %579 = sext i32 %578 to i64
  %580 = lshr i64 %579, 32
  store i64 %580, i64* %575, align 8
  store %struct.Memory* %loadMem_455034, %struct.Memory** %MEMORY
  %loadMem_455035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 33
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %583 to i64*
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 5
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %RCX.i781 = bitcast %union.anon* %586 to i64*
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 15
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %RBP.i782 = bitcast %union.anon* %589 to i64*
  %590 = load i64, i64* %RBP.i782
  %591 = sub i64 %590, 28
  %592 = load i64, i64* %PC.i780
  %593 = add i64 %592, 3
  store i64 %593, i64* %PC.i780
  %594 = inttoptr i64 %591 to i32*
  %595 = load i32, i32* %594
  %596 = zext i32 %595 to i64
  store i64 %596, i64* %RCX.i781, align 8
  store %struct.Memory* %loadMem_455035, %struct.Memory** %MEMORY
  %loadMem_455038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 33
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %599 to i64*
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 5
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %ECX.i777 = bitcast %union.anon* %602 to i32*
  %603 = load i32, i32* %ECX.i777
  %604 = zext i32 %603 to i64
  %605 = load i64, i64* %PC.i776
  %606 = add i64 %605, 2
  store i64 %606, i64* %PC.i776
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %608 = bitcast %union.anon* %607 to i32*
  %609 = load i32, i32* %608, align 8
  %610 = zext i32 %609 to i64
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %612 = bitcast %union.anon* %611 to i32*
  %613 = load i32, i32* %612, align 8
  %614 = zext i32 %613 to i64
  %615 = shl i64 %604, 32
  %616 = ashr exact i64 %615, 32
  %617 = shl i64 %614, 32
  %618 = or i64 %617, %610
  %619 = sdiv i64 %618, %616
  %620 = shl i64 %619, 32
  %621 = ashr exact i64 %620, 32
  %622 = icmp eq i64 %619, %621
  br i1 %622, label %627, label %623

; <label>:623:                                    ; preds = %block_.L_454fff
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %625 = load i64, i64* %624, align 8
  %626 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %625, %struct.Memory* %loadMem_455038)
  br label %routine_idivl__ecx.exit778

; <label>:627:                                    ; preds = %block_.L_454fff
  %628 = srem i64 %618, %616
  %629 = getelementptr inbounds %union.anon, %union.anon* %607, i64 0, i32 0
  %630 = and i64 %619, 4294967295
  store i64 %630, i64* %629, align 8
  %631 = getelementptr inbounds %union.anon, %union.anon* %611, i64 0, i32 0
  %632 = and i64 %628, 4294967295
  store i64 %632, i64* %631, align 8
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %633, align 1
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %634, align 1
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %635, align 1
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %636, align 1
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %637, align 1
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %638, align 1
  br label %routine_idivl__ecx.exit778

routine_idivl__ecx.exit778:                       ; preds = %623, %627
  %639 = phi %struct.Memory* [ %626, %623 ], [ %loadMem_455038, %627 ]
  store %struct.Memory* %639, %struct.Memory** %MEMORY
  %loadMem_45503a = load %struct.Memory*, %struct.Memory** %MEMORY
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 33
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %642 to i64*
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 11
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %RDI.i774 = bitcast %union.anon* %645 to i64*
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 15
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %RBP.i775 = bitcast %union.anon* %648 to i64*
  %649 = load i64, i64* %RBP.i775
  %650 = sub i64 %649, 8
  %651 = load i64, i64* %PC.i773
  %652 = add i64 %651, 3
  store i64 %652, i64* %PC.i773
  %653 = inttoptr i64 %650 to i32*
  %654 = load i32, i32* %653
  %655 = zext i32 %654 to i64
  store i64 %655, i64* %RDI.i774, align 8
  store %struct.Memory* %loadMem_45503a, %struct.Memory** %MEMORY
  %loadMem_45503d = load %struct.Memory*, %struct.Memory** %MEMORY
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 33
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %658 to i64*
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 1
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %EAX.i771 = bitcast %union.anon* %661 to i32*
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 15
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %RBP.i772 = bitcast %union.anon* %664 to i64*
  %665 = load i64, i64* %RBP.i772
  %666 = sub i64 %665, 44
  %667 = load i32, i32* %EAX.i771
  %668 = zext i32 %667 to i64
  %669 = load i64, i64* %PC.i770
  %670 = add i64 %669, 3
  store i64 %670, i64* %PC.i770
  %671 = inttoptr i64 %666 to i32*
  store i32 %667, i32* %671
  store %struct.Memory* %loadMem_45503d, %struct.Memory** %MEMORY
  %loadMem_455040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 33
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %674 to i64*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 11
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %EDI.i768 = bitcast %union.anon* %677 to i32*
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 1
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %RAX.i769 = bitcast %union.anon* %680 to i64*
  %681 = load i32, i32* %EDI.i768
  %682 = zext i32 %681 to i64
  %683 = load i64, i64* %PC.i767
  %684 = add i64 %683, 2
  store i64 %684, i64* %PC.i767
  %685 = and i64 %682, 4294967295
  store i64 %685, i64* %RAX.i769, align 8
  store %struct.Memory* %loadMem_455040, %struct.Memory** %MEMORY
  %loadMem_455042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 33
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %688 to i64*
  %689 = load i64, i64* %PC.i766
  %690 = add i64 %689, 1
  store i64 %690, i64* %PC.i766
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %693 = bitcast %union.anon* %692 to i32*
  %694 = load i32, i32* %693, align 8
  %695 = sext i32 %694 to i64
  %696 = lshr i64 %695, 32
  store i64 %696, i64* %691, align 8
  store %struct.Memory* %loadMem_455042, %struct.Memory** %MEMORY
  %loadMem_455043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 33
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %699 to i64*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 5
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %ECX.i761 = bitcast %union.anon* %702 to i32*
  %703 = load i32, i32* %ECX.i761
  %704 = zext i32 %703 to i64
  %705 = load i64, i64* %PC.i760
  %706 = add i64 %705, 2
  store i64 %706, i64* %PC.i760
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %708 = bitcast %union.anon* %707 to i32*
  %709 = load i32, i32* %708, align 8
  %710 = zext i32 %709 to i64
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %712 = bitcast %union.anon* %711 to i32*
  %713 = load i32, i32* %712, align 8
  %714 = zext i32 %713 to i64
  %715 = shl i64 %704, 32
  %716 = ashr exact i64 %715, 32
  %717 = shl i64 %714, 32
  %718 = or i64 %717, %710
  %719 = sdiv i64 %718, %716
  %720 = shl i64 %719, 32
  %721 = ashr exact i64 %720, 32
  %722 = icmp eq i64 %719, %721
  br i1 %722, label %727, label %723

; <label>:723:                                    ; preds = %routine_idivl__ecx.exit778
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %725 = load i64, i64* %724, align 8
  %726 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %725, %struct.Memory* %loadMem_455043)
  br label %routine_idivl__ecx.exit762

; <label>:727:                                    ; preds = %routine_idivl__ecx.exit778
  %728 = srem i64 %718, %716
  %729 = getelementptr inbounds %union.anon, %union.anon* %707, i64 0, i32 0
  %730 = and i64 %719, 4294967295
  store i64 %730, i64* %729, align 8
  %731 = getelementptr inbounds %union.anon, %union.anon* %711, i64 0, i32 0
  %732 = and i64 %728, 4294967295
  store i64 %732, i64* %731, align 8
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %733, align 1
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %734, align 1
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %735, align 1
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %736, align 1
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %737, align 1
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %738, align 1
  br label %routine_idivl__ecx.exit762

routine_idivl__ecx.exit762:                       ; preds = %723, %727
  %739 = phi %struct.Memory* [ %726, %723 ], [ %loadMem_455043, %727 ]
  store %struct.Memory* %739, %struct.Memory** %MEMORY
  %loadMem_455045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 33
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %742 to i64*
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 11
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %RDI.i758 = bitcast %union.anon* %745 to i64*
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 15
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %RBP.i759 = bitcast %union.anon* %748 to i64*
  %749 = load i64, i64* %RBP.i759
  %750 = sub i64 %749, 40
  %751 = load i64, i64* %PC.i757
  %752 = add i64 %751, 4
  store i64 %752, i64* %PC.i757
  %753 = inttoptr i64 %750 to i64*
  %754 = load i64, i64* %753
  store i64 %754, i64* %RDI.i758, align 8
  store %struct.Memory* %loadMem_455045, %struct.Memory** %MEMORY
  %loadMem_455049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 33
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %757 to i64*
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 17
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %R8D.i755 = bitcast %union.anon* %760 to i32*
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %762 = getelementptr inbounds %struct.GPR, %struct.GPR* %761, i32 0, i32 15
  %763 = getelementptr inbounds %struct.Reg, %struct.Reg* %762, i32 0, i32 0
  %RBP.i756 = bitcast %union.anon* %763 to i64*
  %764 = bitcast i32* %R8D.i755 to i64*
  %765 = load i64, i64* %RBP.i756
  %766 = sub i64 %765, 44
  %767 = load i64, i64* %PC.i754
  %768 = add i64 %767, 4
  store i64 %768, i64* %PC.i754
  %769 = inttoptr i64 %766 to i32*
  %770 = load i32, i32* %769
  %771 = zext i32 %770 to i64
  store i64 %771, i64* %764, align 8
  store %struct.Memory* %loadMem_455049, %struct.Memory** %MEMORY
  %loadMem_45504d = load %struct.Memory*, %struct.Memory** %MEMORY
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 33
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %774 to i64*
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 17
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %R8D.i752 = bitcast %union.anon* %777 to i32*
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %779 = getelementptr inbounds %struct.GPR, %struct.GPR* %778, i32 0, i32 7
  %780 = getelementptr inbounds %struct.Reg, %struct.Reg* %779, i32 0, i32 0
  %RDX.i753 = bitcast %union.anon* %780 to i64*
  %781 = load i32, i32* %R8D.i752
  %782 = zext i32 %781 to i64
  %783 = load i64, i64* %PC.i751
  %784 = add i64 %783, 3
  store i64 %784, i64* %PC.i751
  %785 = and i64 %782, 4294967295
  store i64 %785, i64* %RDX.i753, align 8
  store %struct.Memory* %loadMem_45504d, %struct.Memory** %MEMORY
  %loadMem_455050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 33
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %788 to i64*
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 1
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %EAX.i749 = bitcast %union.anon* %791 to i32*
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 5
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %RCX.i750 = bitcast %union.anon* %794 to i64*
  %795 = load i32, i32* %EAX.i749
  %796 = zext i32 %795 to i64
  %797 = load i64, i64* %PC.i748
  %798 = add i64 %797, 2
  store i64 %798, i64* %PC.i748
  %799 = and i64 %796, 4294967295
  store i64 %799, i64* %RCX.i750, align 8
  store %struct.Memory* %loadMem_455050, %struct.Memory** %MEMORY
  %loadMem1_455052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %801 = getelementptr inbounds %struct.GPR, %struct.GPR* %800, i32 0, i32 33
  %802 = getelementptr inbounds %struct.Reg, %struct.Reg* %801, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %802 to i64*
  %803 = load i64, i64* %PC.i747
  %804 = add i64 %803, 20670
  %805 = load i64, i64* %PC.i747
  %806 = add i64 %805, 5
  %807 = load i64, i64* %PC.i747
  %808 = add i64 %807, 5
  store i64 %808, i64* %PC.i747
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %810 = load i64, i64* %809, align 8
  %811 = add i64 %810, -8
  %812 = inttoptr i64 %811 to i64*
  store i64 %806, i64* %812
  store i64 %811, i64* %809, align 8
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %804, i64* %813, align 8
  store %struct.Memory* %loadMem1_455052, %struct.Memory** %MEMORY
  %loadMem2_455052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_455052 = load i64, i64* %3
  %call2_455052 = call %struct.Memory* @sub_45a110.get_mem3Dshort(%struct.State* %0, i64 %loadPC_455052, %struct.Memory* %loadMem2_455052)
  store %struct.Memory* %call2_455052, %struct.Memory** %MEMORY
  %loadMem_455057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 33
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %816 to i64*
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 9
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %RSI.i746 = bitcast %union.anon* %819 to i64*
  %820 = load i64, i64* %PC.i745
  %821 = add i64 %820, 5
  store i64 %821, i64* %PC.i745
  store i64 2, i64* %RSI.i746, align 8
  store %struct.Memory* %loadMem_455057, %struct.Memory** %MEMORY
  %loadMem_45505c = load %struct.Memory*, %struct.Memory** %MEMORY
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 33
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %824 to i64*
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %826 = getelementptr inbounds %struct.GPR, %struct.GPR* %825, i32 0, i32 5
  %827 = getelementptr inbounds %struct.Reg, %struct.Reg* %826, i32 0, i32 0
  %RCX.i744 = bitcast %union.anon* %827 to i64*
  %828 = load i64, i64* %PC.i743
  %829 = add i64 %828, 5
  store i64 %829, i64* %PC.i743
  store i64 4, i64* %RCX.i744, align 8
  store %struct.Memory* %loadMem_45505c, %struct.Memory** %MEMORY
  %loadMem_455061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 33
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %832 to i64*
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 11
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %RDI.i741 = bitcast %union.anon* %835 to i64*
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 15
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %RBP.i742 = bitcast %union.anon* %838 to i64*
  %839 = load i64, i64* %RBP.i742
  %840 = sub i64 %839, 24
  %841 = load i64, i64* %PC.i740
  %842 = add i64 %841, 4
  store i64 %842, i64* %PC.i740
  %843 = inttoptr i64 %840 to i64*
  %844 = load i64, i64* %843
  store i64 %844, i64* %RDI.i741, align 8
  store %struct.Memory* %loadMem_455061, %struct.Memory** %MEMORY
  %loadMem_455065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 33
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %847 to i64*
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 11
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %RDI.i739 = bitcast %union.anon* %850 to i64*
  %851 = load i64, i64* %RDI.i739
  %852 = load i64, i64* %PC.i738
  %853 = add i64 %852, 7
  store i64 %853, i64* %PC.i738
  %854 = add i64 1608, %851
  store i64 %854, i64* %RDI.i739, align 8
  %855 = icmp ult i64 %854, %851
  %856 = icmp ult i64 %854, 1608
  %857 = or i1 %855, %856
  %858 = zext i1 %857 to i8
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %858, i8* %859, align 1
  %860 = trunc i64 %854 to i32
  %861 = and i32 %860, 255
  %862 = call i32 @llvm.ctpop.i32(i32 %861)
  %863 = trunc i32 %862 to i8
  %864 = and i8 %863, 1
  %865 = xor i8 %864, 1
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %865, i8* %866, align 1
  %867 = xor i64 1608, %851
  %868 = xor i64 %867, %854
  %869 = lshr i64 %868, 4
  %870 = trunc i64 %869 to i8
  %871 = and i8 %870, 1
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %871, i8* %872, align 1
  %873 = icmp eq i64 %854, 0
  %874 = zext i1 %873 to i8
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %874, i8* %875, align 1
  %876 = lshr i64 %854, 63
  %877 = trunc i64 %876 to i8
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %877, i8* %878, align 1
  %879 = lshr i64 %851, 63
  %880 = xor i64 %876, %879
  %881 = add i64 %880, %876
  %882 = icmp eq i64 %881, 2
  %883 = zext i1 %882 to i8
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %883, i8* %884, align 1
  store %struct.Memory* %loadMem_455065, %struct.Memory** %MEMORY
  %loadMem_45506c = load %struct.Memory*, %struct.Memory** %MEMORY
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 33
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %887 to i64*
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 7
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %RDX.i736 = bitcast %union.anon* %890 to i64*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 15
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %RBP.i737 = bitcast %union.anon* %893 to i64*
  %894 = load i64, i64* %RBP.i737
  %895 = sub i64 %894, 4
  %896 = load i64, i64* %PC.i735
  %897 = add i64 %896, 3
  store i64 %897, i64* %PC.i735
  %898 = inttoptr i64 %895 to i32*
  %899 = load i32, i32* %898
  %900 = zext i32 %899 to i64
  store i64 %900, i64* %RDX.i736, align 8
  store %struct.Memory* %loadMem_45506c, %struct.Memory** %MEMORY
  %loadMem_45506f = load %struct.Memory*, %struct.Memory** %MEMORY
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 33
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %903 to i64*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 1
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %EAX.i733 = bitcast %union.anon* %906 to i32*
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 15
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %RBP.i734 = bitcast %union.anon* %909 to i64*
  %910 = load i64, i64* %RBP.i734
  %911 = sub i64 %910, 48
  %912 = load i32, i32* %EAX.i733
  %913 = zext i32 %912 to i64
  %914 = load i64, i64* %PC.i732
  %915 = add i64 %914, 3
  store i64 %915, i64* %PC.i732
  %916 = inttoptr i64 %911 to i32*
  store i32 %912, i32* %916
  store %struct.Memory* %loadMem_45506f, %struct.Memory** %MEMORY
  %loadMem_455072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 33
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %919 to i64*
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 7
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %EDX.i730 = bitcast %union.anon* %922 to i32*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 1
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %RAX.i731 = bitcast %union.anon* %925 to i64*
  %926 = load i32, i32* %EDX.i730
  %927 = zext i32 %926 to i64
  %928 = load i64, i64* %PC.i729
  %929 = add i64 %928, 2
  store i64 %929, i64* %PC.i729
  %930 = and i64 %927, 4294967295
  store i64 %930, i64* %RAX.i731, align 8
  store %struct.Memory* %loadMem_455072, %struct.Memory** %MEMORY
  %loadMem_455074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 33
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %933 to i64*
  %934 = load i64, i64* %PC.i728
  %935 = add i64 %934, 1
  store i64 %935, i64* %PC.i728
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %938 = bitcast %union.anon* %937 to i32*
  %939 = load i32, i32* %938, align 8
  %940 = sext i32 %939 to i64
  %941 = lshr i64 %940, 32
  store i64 %941, i64* %936, align 8
  store %struct.Memory* %loadMem_455074, %struct.Memory** %MEMORY
  %loadMem_455075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 33
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %944 to i64*
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 5
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %ECX.i723 = bitcast %union.anon* %947 to i32*
  %948 = load i32, i32* %ECX.i723
  %949 = zext i32 %948 to i64
  %950 = load i64, i64* %PC.i722
  %951 = add i64 %950, 2
  store i64 %951, i64* %PC.i722
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %953 = bitcast %union.anon* %952 to i32*
  %954 = load i32, i32* %953, align 8
  %955 = zext i32 %954 to i64
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %957 = bitcast %union.anon* %956 to i32*
  %958 = load i32, i32* %957, align 8
  %959 = zext i32 %958 to i64
  %960 = shl i64 %949, 32
  %961 = ashr exact i64 %960, 32
  %962 = shl i64 %959, 32
  %963 = or i64 %962, %955
  %964 = sdiv i64 %963, %961
  %965 = shl i64 %964, 32
  %966 = ashr exact i64 %965, 32
  %967 = icmp eq i64 %964, %966
  br i1 %967, label %972, label %968

; <label>:968:                                    ; preds = %routine_idivl__ecx.exit762
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %970 = load i64, i64* %969, align 8
  %971 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %970, %struct.Memory* %loadMem_455075)
  br label %routine_idivl__ecx.exit724

; <label>:972:                                    ; preds = %routine_idivl__ecx.exit762
  %973 = srem i64 %963, %961
  %974 = getelementptr inbounds %union.anon, %union.anon* %952, i64 0, i32 0
  %975 = and i64 %964, 4294967295
  store i64 %975, i64* %974, align 8
  %976 = getelementptr inbounds %union.anon, %union.anon* %956, i64 0, i32 0
  %977 = and i64 %973, 4294967295
  store i64 %977, i64* %976, align 8
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %978, align 1
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %979, align 1
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %980, align 1
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %981, align 1
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %982, align 1
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %983, align 1
  br label %routine_idivl__ecx.exit724

routine_idivl__ecx.exit724:                       ; preds = %968, %972
  %984 = phi %struct.Memory* [ %971, %968 ], [ %loadMem_455075, %972 ]
  store %struct.Memory* %984, %struct.Memory** %MEMORY
  %loadMem_455077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %986 = getelementptr inbounds %struct.GPR, %struct.GPR* %985, i32 0, i32 33
  %987 = getelementptr inbounds %struct.Reg, %struct.Reg* %986, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %987 to i64*
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 17
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %R8D.i720 = bitcast %union.anon* %990 to i32*
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 15
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %RBP.i721 = bitcast %union.anon* %993 to i64*
  %994 = bitcast i32* %R8D.i720 to i64*
  %995 = load i64, i64* %RBP.i721
  %996 = sub i64 %995, 8
  %997 = load i64, i64* %PC.i719
  %998 = add i64 %997, 4
  store i64 %998, i64* %PC.i719
  %999 = inttoptr i64 %996 to i32*
  %1000 = load i32, i32* %999
  %1001 = zext i32 %1000 to i64
  store i64 %1001, i64* %994, align 8
  store %struct.Memory* %loadMem_455077, %struct.Memory** %MEMORY
  %loadMem_45507b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 33
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %1004 to i64*
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 1
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %EAX.i717 = bitcast %union.anon* %1007 to i32*
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 15
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %RBP.i718 = bitcast %union.anon* %1010 to i64*
  %1011 = load i64, i64* %RBP.i718
  %1012 = sub i64 %1011, 52
  %1013 = load i32, i32* %EAX.i717
  %1014 = zext i32 %1013 to i64
  %1015 = load i64, i64* %PC.i716
  %1016 = add i64 %1015, 3
  store i64 %1016, i64* %PC.i716
  %1017 = inttoptr i64 %1012 to i32*
  store i32 %1013, i32* %1017
  store %struct.Memory* %loadMem_45507b, %struct.Memory** %MEMORY
  %loadMem_45507e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1019 = getelementptr inbounds %struct.GPR, %struct.GPR* %1018, i32 0, i32 33
  %1020 = getelementptr inbounds %struct.Reg, %struct.Reg* %1019, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %1020 to i64*
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 17
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %R8D.i714 = bitcast %union.anon* %1023 to i32*
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 1
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %RAX.i715 = bitcast %union.anon* %1026 to i64*
  %1027 = load i32, i32* %R8D.i714
  %1028 = zext i32 %1027 to i64
  %1029 = load i64, i64* %PC.i713
  %1030 = add i64 %1029, 3
  store i64 %1030, i64* %PC.i713
  %1031 = and i64 %1028, 4294967295
  store i64 %1031, i64* %RAX.i715, align 8
  store %struct.Memory* %loadMem_45507e, %struct.Memory** %MEMORY
  %loadMem_455081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 33
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %1034 to i64*
  %1035 = load i64, i64* %PC.i712
  %1036 = add i64 %1035, 1
  store i64 %1036, i64* %PC.i712
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1039 = bitcast %union.anon* %1038 to i32*
  %1040 = load i32, i32* %1039, align 8
  %1041 = sext i32 %1040 to i64
  %1042 = lshr i64 %1041, 32
  store i64 %1042, i64* %1037, align 8
  store %struct.Memory* %loadMem_455081, %struct.Memory** %MEMORY
  %loadMem_455082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 33
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %1045 to i64*
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 5
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %ECX.i707 = bitcast %union.anon* %1048 to i32*
  %1049 = load i32, i32* %ECX.i707
  %1050 = zext i32 %1049 to i64
  %1051 = load i64, i64* %PC.i706
  %1052 = add i64 %1051, 2
  store i64 %1052, i64* %PC.i706
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1054 = bitcast %union.anon* %1053 to i32*
  %1055 = load i32, i32* %1054, align 8
  %1056 = zext i32 %1055 to i64
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1058 = bitcast %union.anon* %1057 to i32*
  %1059 = load i32, i32* %1058, align 8
  %1060 = zext i32 %1059 to i64
  %1061 = shl i64 %1050, 32
  %1062 = ashr exact i64 %1061, 32
  %1063 = shl i64 %1060, 32
  %1064 = or i64 %1063, %1056
  %1065 = sdiv i64 %1064, %1062
  %1066 = shl i64 %1065, 32
  %1067 = ashr exact i64 %1066, 32
  %1068 = icmp eq i64 %1065, %1067
  br i1 %1068, label %1073, label %1069

; <label>:1069:                                   ; preds = %routine_idivl__ecx.exit724
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1071 = load i64, i64* %1070, align 8
  %1072 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1071, %struct.Memory* %loadMem_455082)
  br label %routine_idivl__ecx.exit708

; <label>:1073:                                   ; preds = %routine_idivl__ecx.exit724
  %1074 = srem i64 %1064, %1062
  %1075 = getelementptr inbounds %union.anon, %union.anon* %1053, i64 0, i32 0
  %1076 = and i64 %1065, 4294967295
  store i64 %1076, i64* %1075, align 8
  %1077 = getelementptr inbounds %union.anon, %union.anon* %1057, i64 0, i32 0
  %1078 = and i64 %1074, 4294967295
  store i64 %1078, i64* %1077, align 8
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1079, align 1
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1080, align 1
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1081, align 1
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1082, align 1
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1083, align 1
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1084, align 1
  br label %routine_idivl__ecx.exit708

routine_idivl__ecx.exit708:                       ; preds = %1069, %1073
  %1085 = phi %struct.Memory* [ %1072, %1069 ], [ %loadMem_455082, %1073 ]
  store %struct.Memory* %1085, %struct.Memory** %MEMORY
  %loadMem_455084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 33
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %1088 to i64*
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 5
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %RCX.i704 = bitcast %union.anon* %1091 to i64*
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1093 = getelementptr inbounds %struct.GPR, %struct.GPR* %1092, i32 0, i32 15
  %1094 = getelementptr inbounds %struct.Reg, %struct.Reg* %1093, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %1094 to i64*
  %1095 = load i64, i64* %RBP.i705
  %1096 = sub i64 %1095, 52
  %1097 = load i64, i64* %PC.i703
  %1098 = add i64 %1097, 3
  store i64 %1098, i64* %PC.i703
  %1099 = inttoptr i64 %1096 to i32*
  %1100 = load i32, i32* %1099
  %1101 = zext i32 %1100 to i64
  store i64 %1101, i64* %RCX.i704, align 8
  store %struct.Memory* %loadMem_455084, %struct.Memory** %MEMORY
  %loadMem_455087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 33
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %1104 to i64*
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 5
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %ECX.i701 = bitcast %union.anon* %1107 to i32*
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 7
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %RDX.i702 = bitcast %union.anon* %1110 to i64*
  %1111 = load i32, i32* %ECX.i701
  %1112 = zext i32 %1111 to i64
  %1113 = load i64, i64* %PC.i700
  %1114 = add i64 %1113, 2
  store i64 %1114, i64* %PC.i700
  %1115 = and i64 %1112, 4294967295
  store i64 %1115, i64* %RDX.i702, align 8
  store %struct.Memory* %loadMem_455087, %struct.Memory** %MEMORY
  %loadMem_455089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1117 = getelementptr inbounds %struct.GPR, %struct.GPR* %1116, i32 0, i32 33
  %1118 = getelementptr inbounds %struct.Reg, %struct.Reg* %1117, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %1118 to i64*
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 1
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %EAX.i698 = bitcast %union.anon* %1121 to i32*
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 5
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %RCX.i699 = bitcast %union.anon* %1124 to i64*
  %1125 = load i32, i32* %EAX.i698
  %1126 = zext i32 %1125 to i64
  %1127 = load i64, i64* %PC.i697
  %1128 = add i64 %1127, 2
  store i64 %1128, i64* %PC.i697
  %1129 = and i64 %1126, 4294967295
  store i64 %1129, i64* %RCX.i699, align 8
  store %struct.Memory* %loadMem_455089, %struct.Memory** %MEMORY
  %loadMem1_45508b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 33
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %1132 to i64*
  %1133 = load i64, i64* %PC.i696
  %1134 = add i64 %1133, 19109
  %1135 = load i64, i64* %PC.i696
  %1136 = add i64 %1135, 5
  %1137 = load i64, i64* %PC.i696
  %1138 = add i64 %1137, 5
  store i64 %1138, i64* %PC.i696
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1140 = load i64, i64* %1139, align 8
  %1141 = add i64 %1140, -8
  %1142 = inttoptr i64 %1141 to i64*
  store i64 %1136, i64* %1142
  store i64 %1141, i64* %1139, align 8
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1134, i64* %1143, align 8
  store %struct.Memory* %loadMem1_45508b, %struct.Memory** %MEMORY
  %loadMem2_45508b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45508b = load i64, i64* %3
  %call2_45508b = call %struct.Memory* @sub_459b30.get_mem3Dint64(%struct.State* %0, i64 %loadPC_45508b, %struct.Memory* %loadMem2_45508b)
  store %struct.Memory* %call2_45508b, %struct.Memory** %MEMORY
  %loadMem_455090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 33
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %1146 to i64*
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 5
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %RCX.i695 = bitcast %union.anon* %1149 to i64*
  %1150 = load i64, i64* %PC.i694
  %1151 = add i64 %1150, 5
  store i64 %1151, i64* %PC.i694
  store i64 2, i64* %RCX.i695, align 8
  store %struct.Memory* %loadMem_455090, %struct.Memory** %MEMORY
  %loadMem_455095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 33
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %1154 to i64*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 7
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %RDX.i693 = bitcast %union.anon* %1157 to i64*
  %1158 = load i64, i64* %PC.i692
  %1159 = add i64 %1158, 5
  store i64 %1159, i64* %PC.i692
  store i64 4, i64* %RDX.i693, align 8
  store %struct.Memory* %loadMem_455095, %struct.Memory** %MEMORY
  %loadMem_45509a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1161 = getelementptr inbounds %struct.GPR, %struct.GPR* %1160, i32 0, i32 33
  %1162 = getelementptr inbounds %struct.Reg, %struct.Reg* %1161, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %1162 to i64*
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 11
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %RDI.i690 = bitcast %union.anon* %1165 to i64*
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 15
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %RBP.i691 = bitcast %union.anon* %1168 to i64*
  %1169 = load i64, i64* %RBP.i691
  %1170 = sub i64 %1169, 24
  %1171 = load i64, i64* %PC.i689
  %1172 = add i64 %1171, 4
  store i64 %1172, i64* %PC.i689
  %1173 = inttoptr i64 %1170 to i64*
  %1174 = load i64, i64* %1173
  store i64 %1174, i64* %RDI.i690, align 8
  store %struct.Memory* %loadMem_45509a, %struct.Memory** %MEMORY
  %loadMem_45509e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 33
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %1177 to i64*
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 11
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %RDI.i688 = bitcast %union.anon* %1180 to i64*
  %1181 = load i64, i64* %RDI.i688
  %1182 = load i64, i64* %PC.i687
  %1183 = add i64 %1182, 7
  store i64 %1183, i64* %PC.i687
  %1184 = add i64 1616, %1181
  store i64 %1184, i64* %RDI.i688, align 8
  %1185 = icmp ult i64 %1184, %1181
  %1186 = icmp ult i64 %1184, 1616
  %1187 = or i1 %1185, %1186
  %1188 = zext i1 %1187 to i8
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1188, i8* %1189, align 1
  %1190 = trunc i64 %1184 to i32
  %1191 = and i32 %1190, 255
  %1192 = call i32 @llvm.ctpop.i32(i32 %1191)
  %1193 = trunc i32 %1192 to i8
  %1194 = and i8 %1193, 1
  %1195 = xor i8 %1194, 1
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1195, i8* %1196, align 1
  %1197 = xor i64 1616, %1181
  %1198 = xor i64 %1197, %1184
  %1199 = lshr i64 %1198, 4
  %1200 = trunc i64 %1199 to i8
  %1201 = and i8 %1200, 1
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1201, i8* %1202, align 1
  %1203 = icmp eq i64 %1184, 0
  %1204 = zext i1 %1203 to i8
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1204, i8* %1205, align 1
  %1206 = lshr i64 %1184, 63
  %1207 = trunc i64 %1206 to i8
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1207, i8* %1208, align 1
  %1209 = lshr i64 %1181, 63
  %1210 = xor i64 %1206, %1209
  %1211 = add i64 %1210, %1206
  %1212 = icmp eq i64 %1211, 2
  %1213 = zext i1 %1212 to i8
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1213, i8* %1214, align 1
  store %struct.Memory* %loadMem_45509e, %struct.Memory** %MEMORY
  %loadMem_4550a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1216 = getelementptr inbounds %struct.GPR, %struct.GPR* %1215, i32 0, i32 33
  %1217 = getelementptr inbounds %struct.Reg, %struct.Reg* %1216, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %1217 to i64*
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1219 = getelementptr inbounds %struct.GPR, %struct.GPR* %1218, i32 0, i32 9
  %1220 = getelementptr inbounds %struct.Reg, %struct.Reg* %1219, i32 0, i32 0
  %RSI.i685 = bitcast %union.anon* %1220 to i64*
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1222 = getelementptr inbounds %struct.GPR, %struct.GPR* %1221, i32 0, i32 15
  %1223 = getelementptr inbounds %struct.Reg, %struct.Reg* %1222, i32 0, i32 0
  %RBP.i686 = bitcast %union.anon* %1223 to i64*
  %1224 = load i64, i64* %RBP.i686
  %1225 = sub i64 %1224, 4
  %1226 = load i64, i64* %PC.i684
  %1227 = add i64 %1226, 3
  store i64 %1227, i64* %PC.i684
  %1228 = inttoptr i64 %1225 to i32*
  %1229 = load i32, i32* %1228
  %1230 = zext i32 %1229 to i64
  store i64 %1230, i64* %RSI.i685, align 8
  store %struct.Memory* %loadMem_4550a5, %struct.Memory** %MEMORY
  %loadMem_4550a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 33
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %1233 to i64*
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1235 = getelementptr inbounds %struct.GPR, %struct.GPR* %1234, i32 0, i32 1
  %1236 = getelementptr inbounds %struct.Reg, %struct.Reg* %1235, i32 0, i32 0
  %EAX.i682 = bitcast %union.anon* %1236 to i32*
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 15
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %RBP.i683 = bitcast %union.anon* %1239 to i64*
  %1240 = load i64, i64* %RBP.i683
  %1241 = sub i64 %1240, 56
  %1242 = load i32, i32* %EAX.i682
  %1243 = zext i32 %1242 to i64
  %1244 = load i64, i64* %PC.i681
  %1245 = add i64 %1244, 3
  store i64 %1245, i64* %PC.i681
  %1246 = inttoptr i64 %1241 to i32*
  store i32 %1242, i32* %1246
  store %struct.Memory* %loadMem_4550a8, %struct.Memory** %MEMORY
  %loadMem_4550ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 33
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %1249 to i64*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 9
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %ESI.i679 = bitcast %union.anon* %1252 to i32*
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 1
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %RAX.i680 = bitcast %union.anon* %1255 to i64*
  %1256 = load i32, i32* %ESI.i679
  %1257 = zext i32 %1256 to i64
  %1258 = load i64, i64* %PC.i678
  %1259 = add i64 %1258, 2
  store i64 %1259, i64* %PC.i678
  %1260 = and i64 %1257, 4294967295
  store i64 %1260, i64* %RAX.i680, align 8
  store %struct.Memory* %loadMem_4550ab, %struct.Memory** %MEMORY
  %loadMem_4550ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 33
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %1263 to i64*
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 7
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %EDX.i676 = bitcast %union.anon* %1266 to i32*
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 15
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %RBP.i677 = bitcast %union.anon* %1269 to i64*
  %1270 = load i64, i64* %RBP.i677
  %1271 = sub i64 %1270, 60
  %1272 = load i32, i32* %EDX.i676
  %1273 = zext i32 %1272 to i64
  %1274 = load i64, i64* %PC.i675
  %1275 = add i64 %1274, 3
  store i64 %1275, i64* %PC.i675
  %1276 = inttoptr i64 %1271 to i32*
  store i32 %1272, i32* %1276
  store %struct.Memory* %loadMem_4550ad, %struct.Memory** %MEMORY
  %loadMem_4550b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 33
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %1279 to i64*
  %1280 = load i64, i64* %PC.i674
  %1281 = add i64 %1280, 1
  store i64 %1281, i64* %PC.i674
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1284 = bitcast %union.anon* %1283 to i32*
  %1285 = load i32, i32* %1284, align 8
  %1286 = sext i32 %1285 to i64
  %1287 = lshr i64 %1286, 32
  store i64 %1287, i64* %1282, align 8
  store %struct.Memory* %loadMem_4550b0, %struct.Memory** %MEMORY
  %loadMem_4550b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1289 = getelementptr inbounds %struct.GPR, %struct.GPR* %1288, i32 0, i32 33
  %1290 = getelementptr inbounds %struct.Reg, %struct.Reg* %1289, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %1290 to i64*
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 9
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %RSI.i672 = bitcast %union.anon* %1293 to i64*
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 15
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %RBP.i673 = bitcast %union.anon* %1296 to i64*
  %1297 = load i64, i64* %RBP.i673
  %1298 = sub i64 %1297, 60
  %1299 = load i64, i64* %PC.i671
  %1300 = add i64 %1299, 3
  store i64 %1300, i64* %PC.i671
  %1301 = inttoptr i64 %1298 to i32*
  %1302 = load i32, i32* %1301
  %1303 = zext i32 %1302 to i64
  store i64 %1303, i64* %RSI.i672, align 8
  store %struct.Memory* %loadMem_4550b1, %struct.Memory** %MEMORY
  %loadMem_4550b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 33
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %1306 to i64*
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1308 = getelementptr inbounds %struct.GPR, %struct.GPR* %1307, i32 0, i32 9
  %1309 = getelementptr inbounds %struct.Reg, %struct.Reg* %1308, i32 0, i32 0
  %ESI.i666 = bitcast %union.anon* %1309 to i32*
  %1310 = load i32, i32* %ESI.i666
  %1311 = zext i32 %1310 to i64
  %1312 = load i64, i64* %PC.i665
  %1313 = add i64 %1312, 2
  store i64 %1313, i64* %PC.i665
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1315 = bitcast %union.anon* %1314 to i32*
  %1316 = load i32, i32* %1315, align 8
  %1317 = zext i32 %1316 to i64
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1319 = bitcast %union.anon* %1318 to i32*
  %1320 = load i32, i32* %1319, align 8
  %1321 = zext i32 %1320 to i64
  %1322 = shl i64 %1311, 32
  %1323 = ashr exact i64 %1322, 32
  %1324 = shl i64 %1321, 32
  %1325 = or i64 %1324, %1317
  %1326 = sdiv i64 %1325, %1323
  %1327 = shl i64 %1326, 32
  %1328 = ashr exact i64 %1327, 32
  %1329 = icmp eq i64 %1326, %1328
  br i1 %1329, label %1334, label %1330

; <label>:1330:                                   ; preds = %routine_idivl__ecx.exit708
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1332 = load i64, i64* %1331, align 8
  %1333 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1332, %struct.Memory* %loadMem_4550b4)
  br label %routine_idivl__esi.exit667

; <label>:1334:                                   ; preds = %routine_idivl__ecx.exit708
  %1335 = srem i64 %1325, %1323
  %1336 = getelementptr inbounds %union.anon, %union.anon* %1314, i64 0, i32 0
  %1337 = and i64 %1326, 4294967295
  store i64 %1337, i64* %1336, align 8
  %1338 = getelementptr inbounds %union.anon, %union.anon* %1318, i64 0, i32 0
  %1339 = and i64 %1335, 4294967295
  store i64 %1339, i64* %1338, align 8
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1340, align 1
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1341, align 1
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1342, align 1
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1343, align 1
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1344, align 1
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1345, align 1
  br label %routine_idivl__esi.exit667

routine_idivl__esi.exit667:                       ; preds = %1330, %1334
  %1346 = phi %struct.Memory* [ %1333, %1330 ], [ %loadMem_4550b4, %1334 ]
  store %struct.Memory* %1346, %struct.Memory** %MEMORY
  %loadMem_4550b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 33
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %1349 to i64*
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 17
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %R8D.i663 = bitcast %union.anon* %1352 to i32*
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 15
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %RBP.i664 = bitcast %union.anon* %1355 to i64*
  %1356 = bitcast i32* %R8D.i663 to i64*
  %1357 = load i64, i64* %RBP.i664
  %1358 = sub i64 %1357, 8
  %1359 = load i64, i64* %PC.i662
  %1360 = add i64 %1359, 4
  store i64 %1360, i64* %PC.i662
  %1361 = inttoptr i64 %1358 to i32*
  %1362 = load i32, i32* %1361
  %1363 = zext i32 %1362 to i64
  store i64 %1363, i64* %1356, align 8
  store %struct.Memory* %loadMem_4550b6, %struct.Memory** %MEMORY
  %loadMem_4550ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 33
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %1366 to i64*
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 1
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %EAX.i660 = bitcast %union.anon* %1369 to i32*
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 15
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %RBP.i661 = bitcast %union.anon* %1372 to i64*
  %1373 = load i64, i64* %RBP.i661
  %1374 = sub i64 %1373, 64
  %1375 = load i32, i32* %EAX.i660
  %1376 = zext i32 %1375 to i64
  %1377 = load i64, i64* %PC.i659
  %1378 = add i64 %1377, 3
  store i64 %1378, i64* %PC.i659
  %1379 = inttoptr i64 %1374 to i32*
  store i32 %1375, i32* %1379
  store %struct.Memory* %loadMem_4550ba, %struct.Memory** %MEMORY
  %loadMem_4550bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 33
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %1382 to i64*
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 17
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %R8D.i657 = bitcast %union.anon* %1385 to i32*
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1387 = getelementptr inbounds %struct.GPR, %struct.GPR* %1386, i32 0, i32 1
  %1388 = getelementptr inbounds %struct.Reg, %struct.Reg* %1387, i32 0, i32 0
  %RAX.i658 = bitcast %union.anon* %1388 to i64*
  %1389 = load i32, i32* %R8D.i657
  %1390 = zext i32 %1389 to i64
  %1391 = load i64, i64* %PC.i656
  %1392 = add i64 %1391, 3
  store i64 %1392, i64* %PC.i656
  %1393 = and i64 %1390, 4294967295
  store i64 %1393, i64* %RAX.i658, align 8
  store %struct.Memory* %loadMem_4550bd, %struct.Memory** %MEMORY
  %loadMem_4550c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 33
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %1396 to i64*
  %1397 = load i64, i64* %PC.i655
  %1398 = add i64 %1397, 1
  store i64 %1398, i64* %PC.i655
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1401 = bitcast %union.anon* %1400 to i32*
  %1402 = load i32, i32* %1401, align 8
  %1403 = sext i32 %1402 to i64
  %1404 = lshr i64 %1403, 32
  store i64 %1404, i64* %1399, align 8
  store %struct.Memory* %loadMem_4550c0, %struct.Memory** %MEMORY
  %loadMem_4550c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 33
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %1407 to i64*
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 9
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %ESI.i651 = bitcast %union.anon* %1410 to i32*
  %1411 = load i32, i32* %ESI.i651
  %1412 = zext i32 %1411 to i64
  %1413 = load i64, i64* %PC.i650
  %1414 = add i64 %1413, 2
  store i64 %1414, i64* %PC.i650
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1416 = bitcast %union.anon* %1415 to i32*
  %1417 = load i32, i32* %1416, align 8
  %1418 = zext i32 %1417 to i64
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1420 = bitcast %union.anon* %1419 to i32*
  %1421 = load i32, i32* %1420, align 8
  %1422 = zext i32 %1421 to i64
  %1423 = shl i64 %1412, 32
  %1424 = ashr exact i64 %1423, 32
  %1425 = shl i64 %1422, 32
  %1426 = or i64 %1425, %1418
  %1427 = sdiv i64 %1426, %1424
  %1428 = shl i64 %1427, 32
  %1429 = ashr exact i64 %1428, 32
  %1430 = icmp eq i64 %1427, %1429
  br i1 %1430, label %1435, label %1431

; <label>:1431:                                   ; preds = %routine_idivl__esi.exit667
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1433 = load i64, i64* %1432, align 8
  %1434 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1433, %struct.Memory* %loadMem_4550c1)
  br label %routine_idivl__esi.exit652

; <label>:1435:                                   ; preds = %routine_idivl__esi.exit667
  %1436 = srem i64 %1426, %1424
  %1437 = getelementptr inbounds %union.anon, %union.anon* %1415, i64 0, i32 0
  %1438 = and i64 %1427, 4294967295
  store i64 %1438, i64* %1437, align 8
  %1439 = getelementptr inbounds %union.anon, %union.anon* %1419, i64 0, i32 0
  %1440 = and i64 %1436, 4294967295
  store i64 %1440, i64* %1439, align 8
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1441, align 1
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1442, align 1
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1443, align 1
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1444, align 1
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1445, align 1
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1446, align 1
  br label %routine_idivl__esi.exit652

routine_idivl__esi.exit652:                       ; preds = %1431, %1435
  %1447 = phi %struct.Memory* [ %1434, %1431 ], [ %loadMem_4550c1, %1435 ]
  store %struct.Memory* %1447, %struct.Memory** %MEMORY
  %loadMem_4550c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 33
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %1450 to i64*
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 5
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %ECX.i648 = bitcast %union.anon* %1453 to i32*
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 9
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %RSI.i649 = bitcast %union.anon* %1456 to i64*
  %1457 = load i32, i32* %ECX.i648
  %1458 = zext i32 %1457 to i64
  %1459 = load i64, i64* %PC.i647
  %1460 = add i64 %1459, 2
  store i64 %1460, i64* %PC.i647
  %1461 = and i64 %1458, 4294967295
  store i64 %1461, i64* %RSI.i649, align 8
  store %struct.Memory* %loadMem_4550c3, %struct.Memory** %MEMORY
  %loadMem_4550c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 33
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %1464 to i64*
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 17
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %R8D.i645 = bitcast %union.anon* %1467 to i32*
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 15
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %RBP.i646 = bitcast %union.anon* %1470 to i64*
  %1471 = bitcast i32* %R8D.i645 to i64*
  %1472 = load i64, i64* %RBP.i646
  %1473 = sub i64 %1472, 64
  %1474 = load i64, i64* %PC.i644
  %1475 = add i64 %1474, 4
  store i64 %1475, i64* %PC.i644
  %1476 = inttoptr i64 %1473 to i32*
  %1477 = load i32, i32* %1476
  %1478 = zext i32 %1477 to i64
  store i64 %1478, i64* %1471, align 8
  store %struct.Memory* %loadMem_4550c5, %struct.Memory** %MEMORY
  %loadMem_4550c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 33
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %1481 to i64*
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 17
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %R8D.i642 = bitcast %union.anon* %1484 to i32*
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1486 = getelementptr inbounds %struct.GPR, %struct.GPR* %1485, i32 0, i32 7
  %1487 = getelementptr inbounds %struct.Reg, %struct.Reg* %1486, i32 0, i32 0
  %RDX.i643 = bitcast %union.anon* %1487 to i64*
  %1488 = load i32, i32* %R8D.i642
  %1489 = zext i32 %1488 to i64
  %1490 = load i64, i64* %PC.i641
  %1491 = add i64 %1490, 3
  store i64 %1491, i64* %PC.i641
  %1492 = and i64 %1489, 4294967295
  store i64 %1492, i64* %RDX.i643, align 8
  store %struct.Memory* %loadMem_4550c9, %struct.Memory** %MEMORY
  %loadMem_4550cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 33
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %1495 to i64*
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 5
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %ECX.i639 = bitcast %union.anon* %1498 to i32*
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 15
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %RBP.i640 = bitcast %union.anon* %1501 to i64*
  %1502 = load i64, i64* %RBP.i640
  %1503 = sub i64 %1502, 68
  %1504 = load i32, i32* %ECX.i639
  %1505 = zext i32 %1504 to i64
  %1506 = load i64, i64* %PC.i638
  %1507 = add i64 %1506, 3
  store i64 %1507, i64* %PC.i638
  %1508 = inttoptr i64 %1503 to i32*
  store i32 %1504, i32* %1508
  store %struct.Memory* %loadMem_4550cc, %struct.Memory** %MEMORY
  %loadMem_4550cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 33
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %1511 to i64*
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1513 = getelementptr inbounds %struct.GPR, %struct.GPR* %1512, i32 0, i32 1
  %1514 = getelementptr inbounds %struct.Reg, %struct.Reg* %1513, i32 0, i32 0
  %EAX.i636 = bitcast %union.anon* %1514 to i32*
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1516 = getelementptr inbounds %struct.GPR, %struct.GPR* %1515, i32 0, i32 5
  %1517 = getelementptr inbounds %struct.Reg, %struct.Reg* %1516, i32 0, i32 0
  %RCX.i637 = bitcast %union.anon* %1517 to i64*
  %1518 = load i32, i32* %EAX.i636
  %1519 = zext i32 %1518 to i64
  %1520 = load i64, i64* %PC.i635
  %1521 = add i64 %1520, 2
  store i64 %1521, i64* %PC.i635
  %1522 = and i64 %1519, 4294967295
  store i64 %1522, i64* %RCX.i637, align 8
  store %struct.Memory* %loadMem_4550cf, %struct.Memory** %MEMORY
  %loadMem_4550d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 33
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %1525 to i64*
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 17
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %R8D.i633 = bitcast %union.anon* %1528 to i32*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 15
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %1531 to i64*
  %1532 = bitcast i32* %R8D.i633 to i64*
  %1533 = load i64, i64* %RBP.i634
  %1534 = sub i64 %1533, 68
  %1535 = load i64, i64* %PC.i632
  %1536 = add i64 %1535, 4
  store i64 %1536, i64* %PC.i632
  %1537 = inttoptr i64 %1534 to i32*
  %1538 = load i32, i32* %1537
  %1539 = zext i32 %1538 to i64
  store i64 %1539, i64* %1532, align 8
  store %struct.Memory* %loadMem_4550d1, %struct.Memory** %MEMORY
  %loadMem1_4550d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 33
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %1542 to i64*
  %1543 = load i64, i64* %PC.i631
  %1544 = add i64 %1543, 20715
  %1545 = load i64, i64* %PC.i631
  %1546 = add i64 %1545, 5
  %1547 = load i64, i64* %PC.i631
  %1548 = add i64 %1547, 5
  store i64 %1548, i64* %PC.i631
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1550 = load i64, i64* %1549, align 8
  %1551 = add i64 %1550, -8
  %1552 = inttoptr i64 %1551 to i64*
  store i64 %1546, i64* %1552
  store i64 %1551, i64* %1549, align 8
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1544, i64* %1553, align 8
  store %struct.Memory* %loadMem1_4550d5, %struct.Memory** %MEMORY
  %loadMem2_4550d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4550d5 = load i64, i64* %3
  %call2_4550d5 = call %struct.Memory* @sub_45a1c0.get_mem4Dshort(%struct.State* %0, i64 %loadPC_4550d5, %struct.Memory* %loadMem2_4550d5)
  store %struct.Memory* %call2_4550d5, %struct.Memory** %MEMORY
  %loadMem_4550da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 33
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %1556 to i64*
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1558 = getelementptr inbounds %struct.GPR, %struct.GPR* %1557, i32 0, i32 5
  %1559 = getelementptr inbounds %struct.Reg, %struct.Reg* %1558, i32 0, i32 0
  %RCX.i630 = bitcast %union.anon* %1559 to i64*
  %1560 = load i64, i64* %PC.i629
  %1561 = add i64 %1560, 5
  store i64 %1561, i64* %PC.i629
  store i64 4, i64* %RCX.i630, align 8
  store %struct.Memory* %loadMem_4550da, %struct.Memory** %MEMORY
  %loadMem_4550df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 33
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %1564 to i64*
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1566 = getelementptr inbounds %struct.GPR, %struct.GPR* %1565, i32 0, i32 11
  %1567 = getelementptr inbounds %struct.Reg, %struct.Reg* %1566, i32 0, i32 0
  %RDI.i627 = bitcast %union.anon* %1567 to i64*
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1569 = getelementptr inbounds %struct.GPR, %struct.GPR* %1568, i32 0, i32 15
  %1570 = getelementptr inbounds %struct.Reg, %struct.Reg* %1569, i32 0, i32 0
  %RBP.i628 = bitcast %union.anon* %1570 to i64*
  %1571 = load i64, i64* %RBP.i628
  %1572 = sub i64 %1571, 24
  %1573 = load i64, i64* %PC.i626
  %1574 = add i64 %1573, 4
  store i64 %1574, i64* %PC.i626
  %1575 = inttoptr i64 %1572 to i64*
  %1576 = load i64, i64* %1575
  store i64 %1576, i64* %RDI.i627, align 8
  store %struct.Memory* %loadMem_4550df, %struct.Memory** %MEMORY
  %loadMem_4550e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 33
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %1579 to i64*
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1581 = getelementptr inbounds %struct.GPR, %struct.GPR* %1580, i32 0, i32 11
  %1582 = getelementptr inbounds %struct.Reg, %struct.Reg* %1581, i32 0, i32 0
  %RDI.i625 = bitcast %union.anon* %1582 to i64*
  %1583 = load i64, i64* %RDI.i625
  %1584 = load i64, i64* %PC.i624
  %1585 = add i64 %1584, 7
  store i64 %1585, i64* %PC.i624
  %1586 = add i64 1624, %1583
  store i64 %1586, i64* %RDI.i625, align 8
  %1587 = icmp ult i64 %1586, %1583
  %1588 = icmp ult i64 %1586, 1624
  %1589 = or i1 %1587, %1588
  %1590 = zext i1 %1589 to i8
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1590, i8* %1591, align 1
  %1592 = trunc i64 %1586 to i32
  %1593 = and i32 %1592, 255
  %1594 = call i32 @llvm.ctpop.i32(i32 %1593)
  %1595 = trunc i32 %1594 to i8
  %1596 = and i8 %1595, 1
  %1597 = xor i8 %1596, 1
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1597, i8* %1598, align 1
  %1599 = xor i64 1624, %1583
  %1600 = xor i64 %1599, %1586
  %1601 = lshr i64 %1600, 4
  %1602 = trunc i64 %1601 to i8
  %1603 = and i8 %1602, 1
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1603, i8* %1604, align 1
  %1605 = icmp eq i64 %1586, 0
  %1606 = zext i1 %1605 to i8
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1606, i8* %1607, align 1
  %1608 = lshr i64 %1586, 63
  %1609 = trunc i64 %1608 to i8
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1609, i8* %1610, align 1
  %1611 = lshr i64 %1583, 63
  %1612 = xor i64 %1608, %1611
  %1613 = add i64 %1612, %1608
  %1614 = icmp eq i64 %1613, 2
  %1615 = zext i1 %1614 to i8
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1615, i8* %1616, align 1
  store %struct.Memory* %loadMem_4550e3, %struct.Memory** %MEMORY
  %loadMem_4550ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 33
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %1619 to i64*
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1621 = getelementptr inbounds %struct.GPR, %struct.GPR* %1620, i32 0, i32 7
  %1622 = getelementptr inbounds %struct.Reg, %struct.Reg* %1621, i32 0, i32 0
  %RDX.i622 = bitcast %union.anon* %1622 to i64*
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1624 = getelementptr inbounds %struct.GPR, %struct.GPR* %1623, i32 0, i32 15
  %1625 = getelementptr inbounds %struct.Reg, %struct.Reg* %1624, i32 0, i32 0
  %RBP.i623 = bitcast %union.anon* %1625 to i64*
  %1626 = load i64, i64* %RBP.i623
  %1627 = sub i64 %1626, 4
  %1628 = load i64, i64* %PC.i621
  %1629 = add i64 %1628, 3
  store i64 %1629, i64* %PC.i621
  %1630 = inttoptr i64 %1627 to i32*
  %1631 = load i32, i32* %1630
  %1632 = zext i32 %1631 to i64
  store i64 %1632, i64* %RDX.i622, align 8
  store %struct.Memory* %loadMem_4550ea, %struct.Memory** %MEMORY
  %loadMem_4550ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 33
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %1635 to i64*
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 1
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %EAX.i619 = bitcast %union.anon* %1638 to i32*
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 15
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %RBP.i620 = bitcast %union.anon* %1641 to i64*
  %1642 = load i64, i64* %RBP.i620
  %1643 = sub i64 %1642, 72
  %1644 = load i32, i32* %EAX.i619
  %1645 = zext i32 %1644 to i64
  %1646 = load i64, i64* %PC.i618
  %1647 = add i64 %1646, 3
  store i64 %1647, i64* %PC.i618
  %1648 = inttoptr i64 %1643 to i32*
  store i32 %1644, i32* %1648
  store %struct.Memory* %loadMem_4550ed, %struct.Memory** %MEMORY
  %loadMem_4550f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 33
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %1651 to i64*
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 7
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %EDX.i616 = bitcast %union.anon* %1654 to i32*
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 1
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %RAX.i617 = bitcast %union.anon* %1657 to i64*
  %1658 = load i32, i32* %EDX.i616
  %1659 = zext i32 %1658 to i64
  %1660 = load i64, i64* %PC.i615
  %1661 = add i64 %1660, 2
  store i64 %1661, i64* %PC.i615
  %1662 = and i64 %1659, 4294967295
  store i64 %1662, i64* %RAX.i617, align 8
  store %struct.Memory* %loadMem_4550f0, %struct.Memory** %MEMORY
  %loadMem_4550f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 33
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %1665 to i64*
  %1666 = load i64, i64* %PC.i614
  %1667 = add i64 %1666, 1
  store i64 %1667, i64* %PC.i614
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1670 = bitcast %union.anon* %1669 to i32*
  %1671 = load i32, i32* %1670, align 8
  %1672 = sext i32 %1671 to i64
  %1673 = lshr i64 %1672, 32
  store i64 %1673, i64* %1668, align 8
  store %struct.Memory* %loadMem_4550f2, %struct.Memory** %MEMORY
  %loadMem_4550f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 33
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %1676 to i64*
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1678 = getelementptr inbounds %struct.GPR, %struct.GPR* %1677, i32 0, i32 5
  %1679 = getelementptr inbounds %struct.Reg, %struct.Reg* %1678, i32 0, i32 0
  %ECX.i609 = bitcast %union.anon* %1679 to i32*
  %1680 = load i32, i32* %ECX.i609
  %1681 = zext i32 %1680 to i64
  %1682 = load i64, i64* %PC.i608
  %1683 = add i64 %1682, 2
  store i64 %1683, i64* %PC.i608
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1685 = bitcast %union.anon* %1684 to i32*
  %1686 = load i32, i32* %1685, align 8
  %1687 = zext i32 %1686 to i64
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1689 = bitcast %union.anon* %1688 to i32*
  %1690 = load i32, i32* %1689, align 8
  %1691 = zext i32 %1690 to i64
  %1692 = shl i64 %1681, 32
  %1693 = ashr exact i64 %1692, 32
  %1694 = shl i64 %1691, 32
  %1695 = or i64 %1694, %1687
  %1696 = sdiv i64 %1695, %1693
  %1697 = shl i64 %1696, 32
  %1698 = ashr exact i64 %1697, 32
  %1699 = icmp eq i64 %1696, %1698
  br i1 %1699, label %1704, label %1700

; <label>:1700:                                   ; preds = %routine_idivl__esi.exit652
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1702 = load i64, i64* %1701, align 8
  %1703 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1702, %struct.Memory* %loadMem_4550f3)
  br label %routine_idivl__ecx.exit610

; <label>:1704:                                   ; preds = %routine_idivl__esi.exit652
  %1705 = srem i64 %1695, %1693
  %1706 = getelementptr inbounds %union.anon, %union.anon* %1684, i64 0, i32 0
  %1707 = and i64 %1696, 4294967295
  store i64 %1707, i64* %1706, align 8
  %1708 = getelementptr inbounds %union.anon, %union.anon* %1688, i64 0, i32 0
  %1709 = and i64 %1705, 4294967295
  store i64 %1709, i64* %1708, align 8
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1710, align 1
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1711, align 1
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1712, align 1
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1713, align 1
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1714, align 1
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1715, align 1
  br label %routine_idivl__ecx.exit610

routine_idivl__ecx.exit610:                       ; preds = %1700, %1704
  %1716 = phi %struct.Memory* [ %1703, %1700 ], [ %loadMem_4550f3, %1704 ]
  store %struct.Memory* %1716, %struct.Memory** %MEMORY
  %loadMem_4550f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 33
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %1719 to i64*
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 9
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %RSI.i606 = bitcast %union.anon* %1722 to i64*
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 15
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %RBP.i607 = bitcast %union.anon* %1725 to i64*
  %1726 = load i64, i64* %RBP.i607
  %1727 = sub i64 %1726, 8
  %1728 = load i64, i64* %PC.i605
  %1729 = add i64 %1728, 3
  store i64 %1729, i64* %PC.i605
  %1730 = inttoptr i64 %1727 to i32*
  %1731 = load i32, i32* %1730
  %1732 = zext i32 %1731 to i64
  store i64 %1732, i64* %RSI.i606, align 8
  store %struct.Memory* %loadMem_4550f5, %struct.Memory** %MEMORY
  %loadMem_4550f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 33
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %1735 to i64*
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 1
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %EAX.i603 = bitcast %union.anon* %1738 to i32*
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1740 = getelementptr inbounds %struct.GPR, %struct.GPR* %1739, i32 0, i32 15
  %1741 = getelementptr inbounds %struct.Reg, %struct.Reg* %1740, i32 0, i32 0
  %RBP.i604 = bitcast %union.anon* %1741 to i64*
  %1742 = load i64, i64* %RBP.i604
  %1743 = sub i64 %1742, 76
  %1744 = load i32, i32* %EAX.i603
  %1745 = zext i32 %1744 to i64
  %1746 = load i64, i64* %PC.i602
  %1747 = add i64 %1746, 3
  store i64 %1747, i64* %PC.i602
  %1748 = inttoptr i64 %1743 to i32*
  store i32 %1744, i32* %1748
  store %struct.Memory* %loadMem_4550f8, %struct.Memory** %MEMORY
  %loadMem_4550fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 33
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 9
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %ESI.i600 = bitcast %union.anon* %1754 to i32*
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1756 = getelementptr inbounds %struct.GPR, %struct.GPR* %1755, i32 0, i32 1
  %1757 = getelementptr inbounds %struct.Reg, %struct.Reg* %1756, i32 0, i32 0
  %RAX.i601 = bitcast %union.anon* %1757 to i64*
  %1758 = load i32, i32* %ESI.i600
  %1759 = zext i32 %1758 to i64
  %1760 = load i64, i64* %PC.i599
  %1761 = add i64 %1760, 2
  store i64 %1761, i64* %PC.i599
  %1762 = and i64 %1759, 4294967295
  store i64 %1762, i64* %RAX.i601, align 8
  store %struct.Memory* %loadMem_4550fb, %struct.Memory** %MEMORY
  %loadMem_4550fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1764 = getelementptr inbounds %struct.GPR, %struct.GPR* %1763, i32 0, i32 33
  %1765 = getelementptr inbounds %struct.Reg, %struct.Reg* %1764, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %1765 to i64*
  %1766 = load i64, i64* %PC.i598
  %1767 = add i64 %1766, 1
  store i64 %1767, i64* %PC.i598
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1770 = bitcast %union.anon* %1769 to i32*
  %1771 = load i32, i32* %1770, align 8
  %1772 = sext i32 %1771 to i64
  %1773 = lshr i64 %1772, 32
  store i64 %1773, i64* %1768, align 8
  store %struct.Memory* %loadMem_4550fd, %struct.Memory** %MEMORY
  %loadMem_4550fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1775 = getelementptr inbounds %struct.GPR, %struct.GPR* %1774, i32 0, i32 33
  %1776 = getelementptr inbounds %struct.Reg, %struct.Reg* %1775, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %1776 to i64*
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1778 = getelementptr inbounds %struct.GPR, %struct.GPR* %1777, i32 0, i32 5
  %1779 = getelementptr inbounds %struct.Reg, %struct.Reg* %1778, i32 0, i32 0
  %ECX.i593 = bitcast %union.anon* %1779 to i32*
  %1780 = load i32, i32* %ECX.i593
  %1781 = zext i32 %1780 to i64
  %1782 = load i64, i64* %PC.i592
  %1783 = add i64 %1782, 2
  store i64 %1783, i64* %PC.i592
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1785 = bitcast %union.anon* %1784 to i32*
  %1786 = load i32, i32* %1785, align 8
  %1787 = zext i32 %1786 to i64
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1789 = bitcast %union.anon* %1788 to i32*
  %1790 = load i32, i32* %1789, align 8
  %1791 = zext i32 %1790 to i64
  %1792 = shl i64 %1781, 32
  %1793 = ashr exact i64 %1792, 32
  %1794 = shl i64 %1791, 32
  %1795 = or i64 %1794, %1787
  %1796 = sdiv i64 %1795, %1793
  %1797 = shl i64 %1796, 32
  %1798 = ashr exact i64 %1797, 32
  %1799 = icmp eq i64 %1796, %1798
  br i1 %1799, label %1804, label %1800

; <label>:1800:                                   ; preds = %routine_idivl__ecx.exit610
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1802 = load i64, i64* %1801, align 8
  %1803 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1802, %struct.Memory* %loadMem_4550fe)
  br label %routine_idivl__ecx.exit594

; <label>:1804:                                   ; preds = %routine_idivl__ecx.exit610
  %1805 = srem i64 %1795, %1793
  %1806 = getelementptr inbounds %union.anon, %union.anon* %1784, i64 0, i32 0
  %1807 = and i64 %1796, 4294967295
  store i64 %1807, i64* %1806, align 8
  %1808 = getelementptr inbounds %union.anon, %union.anon* %1788, i64 0, i32 0
  %1809 = and i64 %1805, 4294967295
  store i64 %1809, i64* %1808, align 8
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1810, align 1
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1811, align 1
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1812, align 1
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1813, align 1
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1814, align 1
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1815, align 1
  br label %routine_idivl__ecx.exit594

routine_idivl__ecx.exit594:                       ; preds = %1800, %1804
  %1816 = phi %struct.Memory* [ %1803, %1800 ], [ %loadMem_4550fe, %1804 ]
  store %struct.Memory* %1816, %struct.Memory** %MEMORY
  %loadMem_455100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1818 = getelementptr inbounds %struct.GPR, %struct.GPR* %1817, i32 0, i32 33
  %1819 = getelementptr inbounds %struct.Reg, %struct.Reg* %1818, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %1819 to i64*
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 9
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %RSI.i590 = bitcast %union.anon* %1822 to i64*
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 15
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %RBP.i591 = bitcast %union.anon* %1825 to i64*
  %1826 = load i64, i64* %RBP.i591
  %1827 = sub i64 %1826, 76
  %1828 = load i64, i64* %PC.i589
  %1829 = add i64 %1828, 3
  store i64 %1829, i64* %PC.i589
  %1830 = inttoptr i64 %1827 to i32*
  %1831 = load i32, i32* %1830
  %1832 = zext i32 %1831 to i64
  store i64 %1832, i64* %RSI.i590, align 8
  store %struct.Memory* %loadMem_455100, %struct.Memory** %MEMORY
  %loadMem_455103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1834 = getelementptr inbounds %struct.GPR, %struct.GPR* %1833, i32 0, i32 33
  %1835 = getelementptr inbounds %struct.Reg, %struct.Reg* %1834, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %1835 to i64*
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 1
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %EAX.i587 = bitcast %union.anon* %1838 to i32*
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 7
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %RDX.i588 = bitcast %union.anon* %1841 to i64*
  %1842 = load i32, i32* %EAX.i587
  %1843 = zext i32 %1842 to i64
  %1844 = load i64, i64* %PC.i586
  %1845 = add i64 %1844, 2
  store i64 %1845, i64* %PC.i586
  %1846 = and i64 %1843, 4294967295
  store i64 %1846, i64* %RDX.i588, align 8
  store %struct.Memory* %loadMem_455103, %struct.Memory** %MEMORY
  %loadMem1_455105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1848 = getelementptr inbounds %struct.GPR, %struct.GPR* %1847, i32 0, i32 33
  %1849 = getelementptr inbounds %struct.Reg, %struct.Reg* %1848, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %1849 to i64*
  %1850 = load i64, i64* %PC.i585
  %1851 = add i64 %1850, 17947
  %1852 = load i64, i64* %PC.i585
  %1853 = add i64 %1852, 5
  %1854 = load i64, i64* %PC.i585
  %1855 = add i64 %1854, 5
  store i64 %1855, i64* %PC.i585
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1857 = load i64, i64* %1856, align 8
  %1858 = add i64 %1857, -8
  %1859 = inttoptr i64 %1858 to i64*
  store i64 %1853, i64* %1859
  store i64 %1858, i64* %1856, align 8
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1851, i64* %1860, align 8
  store %struct.Memory* %loadMem1_455105, %struct.Memory** %MEMORY
  %loadMem2_455105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_455105 = load i64, i64* %3
  %call2_455105 = call %struct.Memory* @sub_459720.get_mem2D(%struct.State* %0, i64 %loadPC_455105, %struct.Memory* %loadMem2_455105)
  store %struct.Memory* %call2_455105, %struct.Memory** %MEMORY
  %loadMem_45510a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1862 = getelementptr inbounds %struct.GPR, %struct.GPR* %1861, i32 0, i32 33
  %1863 = getelementptr inbounds %struct.Reg, %struct.Reg* %1862, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %1863 to i64*
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1865 = getelementptr inbounds %struct.GPR, %struct.GPR* %1864, i32 0, i32 5
  %1866 = getelementptr inbounds %struct.Reg, %struct.Reg* %1865, i32 0, i32 0
  %RCX.i584 = bitcast %union.anon* %1866 to i64*
  %1867 = load i64, i64* %PC.i583
  %1868 = add i64 %1867, 5
  store i64 %1868, i64* %PC.i583
  store i64 4, i64* %RCX.i584, align 8
  store %struct.Memory* %loadMem_45510a, %struct.Memory** %MEMORY
  %loadMem_45510f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 33
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %1871 to i64*
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1873 = getelementptr inbounds %struct.GPR, %struct.GPR* %1872, i32 0, i32 11
  %1874 = getelementptr inbounds %struct.Reg, %struct.Reg* %1873, i32 0, i32 0
  %RDI.i581 = bitcast %union.anon* %1874 to i64*
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1876 = getelementptr inbounds %struct.GPR, %struct.GPR* %1875, i32 0, i32 15
  %1877 = getelementptr inbounds %struct.Reg, %struct.Reg* %1876, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %1877 to i64*
  %1878 = load i64, i64* %RBP.i582
  %1879 = sub i64 %1878, 24
  %1880 = load i64, i64* %PC.i580
  %1881 = add i64 %1880, 4
  store i64 %1881, i64* %PC.i580
  %1882 = inttoptr i64 %1879 to i64*
  %1883 = load i64, i64* %1882
  store i64 %1883, i64* %RDI.i581, align 8
  store %struct.Memory* %loadMem_45510f, %struct.Memory** %MEMORY
  %loadMem_455113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1885 = getelementptr inbounds %struct.GPR, %struct.GPR* %1884, i32 0, i32 33
  %1886 = getelementptr inbounds %struct.Reg, %struct.Reg* %1885, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %1886 to i64*
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1888 = getelementptr inbounds %struct.GPR, %struct.GPR* %1887, i32 0, i32 11
  %1889 = getelementptr inbounds %struct.Reg, %struct.Reg* %1888, i32 0, i32 0
  %RDI.i579 = bitcast %union.anon* %1889 to i64*
  %1890 = load i64, i64* %RDI.i579
  %1891 = load i64, i64* %PC.i578
  %1892 = add i64 %1891, 7
  store i64 %1892, i64* %PC.i578
  %1893 = add i64 4872, %1890
  store i64 %1893, i64* %RDI.i579, align 8
  %1894 = icmp ult i64 %1893, %1890
  %1895 = icmp ult i64 %1893, 4872
  %1896 = or i1 %1894, %1895
  %1897 = zext i1 %1896 to i8
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1897, i8* %1898, align 1
  %1899 = trunc i64 %1893 to i32
  %1900 = and i32 %1899, 255
  %1901 = call i32 @llvm.ctpop.i32(i32 %1900)
  %1902 = trunc i32 %1901 to i8
  %1903 = and i8 %1902, 1
  %1904 = xor i8 %1903, 1
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1904, i8* %1905, align 1
  %1906 = xor i64 4872, %1890
  %1907 = xor i64 %1906, %1893
  %1908 = lshr i64 %1907, 4
  %1909 = trunc i64 %1908 to i8
  %1910 = and i8 %1909, 1
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1910, i8* %1911, align 1
  %1912 = icmp eq i64 %1893, 0
  %1913 = zext i1 %1912 to i8
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1913, i8* %1914, align 1
  %1915 = lshr i64 %1893, 63
  %1916 = trunc i64 %1915 to i8
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1916, i8* %1917, align 1
  %1918 = lshr i64 %1890, 63
  %1919 = xor i64 %1915, %1918
  %1920 = add i64 %1919, %1915
  %1921 = icmp eq i64 %1920, 2
  %1922 = zext i1 %1921 to i8
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1922, i8* %1923, align 1
  store %struct.Memory* %loadMem_455113, %struct.Memory** %MEMORY
  %loadMem_45511a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 33
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %1926 to i64*
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 7
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %RDX.i576 = bitcast %union.anon* %1929 to i64*
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 15
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %1932 to i64*
  %1933 = load i64, i64* %RBP.i577
  %1934 = sub i64 %1933, 4
  %1935 = load i64, i64* %PC.i575
  %1936 = add i64 %1935, 3
  store i64 %1936, i64* %PC.i575
  %1937 = inttoptr i64 %1934 to i32*
  %1938 = load i32, i32* %1937
  %1939 = zext i32 %1938 to i64
  store i64 %1939, i64* %RDX.i576, align 8
  store %struct.Memory* %loadMem_45511a, %struct.Memory** %MEMORY
  %loadMem_45511d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 33
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %1942 to i64*
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1944 = getelementptr inbounds %struct.GPR, %struct.GPR* %1943, i32 0, i32 1
  %1945 = getelementptr inbounds %struct.Reg, %struct.Reg* %1944, i32 0, i32 0
  %EAX.i573 = bitcast %union.anon* %1945 to i32*
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 15
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %1948 to i64*
  %1949 = load i64, i64* %RBP.i574
  %1950 = sub i64 %1949, 80
  %1951 = load i32, i32* %EAX.i573
  %1952 = zext i32 %1951 to i64
  %1953 = load i64, i64* %PC.i572
  %1954 = add i64 %1953, 3
  store i64 %1954, i64* %PC.i572
  %1955 = inttoptr i64 %1950 to i32*
  store i32 %1951, i32* %1955
  store %struct.Memory* %loadMem_45511d, %struct.Memory** %MEMORY
  %loadMem_455120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1957 = getelementptr inbounds %struct.GPR, %struct.GPR* %1956, i32 0, i32 33
  %1958 = getelementptr inbounds %struct.Reg, %struct.Reg* %1957, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %1958 to i64*
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1960 = getelementptr inbounds %struct.GPR, %struct.GPR* %1959, i32 0, i32 7
  %1961 = getelementptr inbounds %struct.Reg, %struct.Reg* %1960, i32 0, i32 0
  %EDX.i570 = bitcast %union.anon* %1961 to i32*
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 1
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %RAX.i571 = bitcast %union.anon* %1964 to i64*
  %1965 = load i32, i32* %EDX.i570
  %1966 = zext i32 %1965 to i64
  %1967 = load i64, i64* %PC.i569
  %1968 = add i64 %1967, 2
  store i64 %1968, i64* %PC.i569
  %1969 = and i64 %1966, 4294967295
  store i64 %1969, i64* %RAX.i571, align 8
  store %struct.Memory* %loadMem_455120, %struct.Memory** %MEMORY
  %loadMem_455122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1971 = getelementptr inbounds %struct.GPR, %struct.GPR* %1970, i32 0, i32 33
  %1972 = getelementptr inbounds %struct.Reg, %struct.Reg* %1971, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %1972 to i64*
  %1973 = load i64, i64* %PC.i568
  %1974 = add i64 %1973, 1
  store i64 %1974, i64* %PC.i568
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1977 = bitcast %union.anon* %1976 to i32*
  %1978 = load i32, i32* %1977, align 8
  %1979 = sext i32 %1978 to i64
  %1980 = lshr i64 %1979, 32
  store i64 %1980, i64* %1975, align 8
  store %struct.Memory* %loadMem_455122, %struct.Memory** %MEMORY
  %loadMem_455123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1982 = getelementptr inbounds %struct.GPR, %struct.GPR* %1981, i32 0, i32 33
  %1983 = getelementptr inbounds %struct.Reg, %struct.Reg* %1982, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %1983 to i64*
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1985 = getelementptr inbounds %struct.GPR, %struct.GPR* %1984, i32 0, i32 5
  %1986 = getelementptr inbounds %struct.Reg, %struct.Reg* %1985, i32 0, i32 0
  %ECX.i563 = bitcast %union.anon* %1986 to i32*
  %1987 = load i32, i32* %ECX.i563
  %1988 = zext i32 %1987 to i64
  %1989 = load i64, i64* %PC.i562
  %1990 = add i64 %1989, 2
  store i64 %1990, i64* %PC.i562
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1992 = bitcast %union.anon* %1991 to i32*
  %1993 = load i32, i32* %1992, align 8
  %1994 = zext i32 %1993 to i64
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1996 = bitcast %union.anon* %1995 to i32*
  %1997 = load i32, i32* %1996, align 8
  %1998 = zext i32 %1997 to i64
  %1999 = shl i64 %1988, 32
  %2000 = ashr exact i64 %1999, 32
  %2001 = shl i64 %1998, 32
  %2002 = or i64 %2001, %1994
  %2003 = sdiv i64 %2002, %2000
  %2004 = shl i64 %2003, 32
  %2005 = ashr exact i64 %2004, 32
  %2006 = icmp eq i64 %2003, %2005
  br i1 %2006, label %2011, label %2007

; <label>:2007:                                   ; preds = %routine_idivl__ecx.exit594
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2009 = load i64, i64* %2008, align 8
  %2010 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2009, %struct.Memory* %loadMem_455123)
  br label %routine_idivl__ecx.exit564

; <label>:2011:                                   ; preds = %routine_idivl__ecx.exit594
  %2012 = srem i64 %2002, %2000
  %2013 = getelementptr inbounds %union.anon, %union.anon* %1991, i64 0, i32 0
  %2014 = and i64 %2003, 4294967295
  store i64 %2014, i64* %2013, align 8
  %2015 = getelementptr inbounds %union.anon, %union.anon* %1995, i64 0, i32 0
  %2016 = and i64 %2012, 4294967295
  store i64 %2016, i64* %2015, align 8
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2017, align 1
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2018, align 1
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2019, align 1
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2020, align 1
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2021, align 1
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2022, align 1
  br label %routine_idivl__ecx.exit564

routine_idivl__ecx.exit564:                       ; preds = %2007, %2011
  %2023 = phi %struct.Memory* [ %2010, %2007 ], [ %loadMem_455123, %2011 ]
  store %struct.Memory* %2023, %struct.Memory** %MEMORY
  %loadMem_455125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2025 = getelementptr inbounds %struct.GPR, %struct.GPR* %2024, i32 0, i32 33
  %2026 = getelementptr inbounds %struct.Reg, %struct.Reg* %2025, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %2026 to i64*
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2028 = getelementptr inbounds %struct.GPR, %struct.GPR* %2027, i32 0, i32 9
  %2029 = getelementptr inbounds %struct.Reg, %struct.Reg* %2028, i32 0, i32 0
  %RSI.i560 = bitcast %union.anon* %2029 to i64*
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2031 = getelementptr inbounds %struct.GPR, %struct.GPR* %2030, i32 0, i32 15
  %2032 = getelementptr inbounds %struct.Reg, %struct.Reg* %2031, i32 0, i32 0
  %RBP.i561 = bitcast %union.anon* %2032 to i64*
  %2033 = load i64, i64* %RBP.i561
  %2034 = sub i64 %2033, 8
  %2035 = load i64, i64* %PC.i559
  %2036 = add i64 %2035, 3
  store i64 %2036, i64* %PC.i559
  %2037 = inttoptr i64 %2034 to i32*
  %2038 = load i32, i32* %2037
  %2039 = zext i32 %2038 to i64
  store i64 %2039, i64* %RSI.i560, align 8
  store %struct.Memory* %loadMem_455125, %struct.Memory** %MEMORY
  %loadMem_455128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 33
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %2042 to i64*
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 1
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %EAX.i557 = bitcast %union.anon* %2045 to i32*
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2047 = getelementptr inbounds %struct.GPR, %struct.GPR* %2046, i32 0, i32 15
  %2048 = getelementptr inbounds %struct.Reg, %struct.Reg* %2047, i32 0, i32 0
  %RBP.i558 = bitcast %union.anon* %2048 to i64*
  %2049 = load i64, i64* %RBP.i558
  %2050 = sub i64 %2049, 84
  %2051 = load i32, i32* %EAX.i557
  %2052 = zext i32 %2051 to i64
  %2053 = load i64, i64* %PC.i556
  %2054 = add i64 %2053, 3
  store i64 %2054, i64* %PC.i556
  %2055 = inttoptr i64 %2050 to i32*
  store i32 %2051, i32* %2055
  store %struct.Memory* %loadMem_455128, %struct.Memory** %MEMORY
  %loadMem_45512b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 33
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %2058 to i64*
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2060 = getelementptr inbounds %struct.GPR, %struct.GPR* %2059, i32 0, i32 9
  %2061 = getelementptr inbounds %struct.Reg, %struct.Reg* %2060, i32 0, i32 0
  %ESI.i554 = bitcast %union.anon* %2061 to i32*
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 1
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %RAX.i555 = bitcast %union.anon* %2064 to i64*
  %2065 = load i32, i32* %ESI.i554
  %2066 = zext i32 %2065 to i64
  %2067 = load i64, i64* %PC.i553
  %2068 = add i64 %2067, 2
  store i64 %2068, i64* %PC.i553
  %2069 = and i64 %2066, 4294967295
  store i64 %2069, i64* %RAX.i555, align 8
  store %struct.Memory* %loadMem_45512b, %struct.Memory** %MEMORY
  %loadMem_45512d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 33
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %2072 to i64*
  %2073 = load i64, i64* %PC.i552
  %2074 = add i64 %2073, 1
  store i64 %2074, i64* %PC.i552
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2077 = bitcast %union.anon* %2076 to i32*
  %2078 = load i32, i32* %2077, align 8
  %2079 = sext i32 %2078 to i64
  %2080 = lshr i64 %2079, 32
  store i64 %2080, i64* %2075, align 8
  store %struct.Memory* %loadMem_45512d, %struct.Memory** %MEMORY
  %loadMem_45512e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2082 = getelementptr inbounds %struct.GPR, %struct.GPR* %2081, i32 0, i32 33
  %2083 = getelementptr inbounds %struct.Reg, %struct.Reg* %2082, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %2083 to i64*
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2085 = getelementptr inbounds %struct.GPR, %struct.GPR* %2084, i32 0, i32 5
  %2086 = getelementptr inbounds %struct.Reg, %struct.Reg* %2085, i32 0, i32 0
  %ECX.i547 = bitcast %union.anon* %2086 to i32*
  %2087 = load i32, i32* %ECX.i547
  %2088 = zext i32 %2087 to i64
  %2089 = load i64, i64* %PC.i546
  %2090 = add i64 %2089, 2
  store i64 %2090, i64* %PC.i546
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2092 = bitcast %union.anon* %2091 to i32*
  %2093 = load i32, i32* %2092, align 8
  %2094 = zext i32 %2093 to i64
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2096 = bitcast %union.anon* %2095 to i32*
  %2097 = load i32, i32* %2096, align 8
  %2098 = zext i32 %2097 to i64
  %2099 = shl i64 %2088, 32
  %2100 = ashr exact i64 %2099, 32
  %2101 = shl i64 %2098, 32
  %2102 = or i64 %2101, %2094
  %2103 = sdiv i64 %2102, %2100
  %2104 = shl i64 %2103, 32
  %2105 = ashr exact i64 %2104, 32
  %2106 = icmp eq i64 %2103, %2105
  br i1 %2106, label %2111, label %2107

; <label>:2107:                                   ; preds = %routine_idivl__ecx.exit564
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2109 = load i64, i64* %2108, align 8
  %2110 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2109, %struct.Memory* %loadMem_45512e)
  br label %routine_idivl__ecx.exit548

; <label>:2111:                                   ; preds = %routine_idivl__ecx.exit564
  %2112 = srem i64 %2102, %2100
  %2113 = getelementptr inbounds %union.anon, %union.anon* %2091, i64 0, i32 0
  %2114 = and i64 %2103, 4294967295
  store i64 %2114, i64* %2113, align 8
  %2115 = getelementptr inbounds %union.anon, %union.anon* %2095, i64 0, i32 0
  %2116 = and i64 %2112, 4294967295
  store i64 %2116, i64* %2115, align 8
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2117, align 1
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2118, align 1
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2119, align 1
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2120, align 1
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2121, align 1
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2122, align 1
  br label %routine_idivl__ecx.exit548

routine_idivl__ecx.exit548:                       ; preds = %2107, %2111
  %2123 = phi %struct.Memory* [ %2110, %2107 ], [ %loadMem_45512e, %2111 ]
  store %struct.Memory* %2123, %struct.Memory** %MEMORY
  %loadMem_455130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 33
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %2126 to i64*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 9
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %RSI.i544 = bitcast %union.anon* %2129 to i64*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 15
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %RBP.i545 = bitcast %union.anon* %2132 to i64*
  %2133 = load i64, i64* %RBP.i545
  %2134 = sub i64 %2133, 84
  %2135 = load i64, i64* %PC.i543
  %2136 = add i64 %2135, 3
  store i64 %2136, i64* %PC.i543
  %2137 = inttoptr i64 %2134 to i32*
  %2138 = load i32, i32* %2137
  %2139 = zext i32 %2138 to i64
  store i64 %2139, i64* %RSI.i544, align 8
  store %struct.Memory* %loadMem_455130, %struct.Memory** %MEMORY
  %loadMem_455133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 33
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %2142 to i64*
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 1
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %EAX.i541 = bitcast %union.anon* %2145 to i32*
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 7
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %RDX.i542 = bitcast %union.anon* %2148 to i64*
  %2149 = load i32, i32* %EAX.i541
  %2150 = zext i32 %2149 to i64
  %2151 = load i64, i64* %PC.i540
  %2152 = add i64 %2151, 2
  store i64 %2152, i64* %PC.i540
  %2153 = and i64 %2150, 4294967295
  store i64 %2153, i64* %RDX.i542, align 8
  store %struct.Memory* %loadMem_455133, %struct.Memory** %MEMORY
  %loadMem1_455135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 33
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %2156 to i64*
  %2157 = load i64, i64* %PC.i539
  %2158 = add i64 %2157, 17899
  %2159 = load i64, i64* %PC.i539
  %2160 = add i64 %2159, 5
  %2161 = load i64, i64* %PC.i539
  %2162 = add i64 %2161, 5
  store i64 %2162, i64* %PC.i539
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2164 = load i64, i64* %2163, align 8
  %2165 = add i64 %2164, -8
  %2166 = inttoptr i64 %2165 to i64*
  store i64 %2160, i64* %2166
  store i64 %2165, i64* %2163, align 8
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2158, i64* %2167, align 8
  store %struct.Memory* %loadMem1_455135, %struct.Memory** %MEMORY
  %loadMem2_455135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_455135 = load i64, i64* %3
  %call2_455135 = call %struct.Memory* @sub_459720.get_mem2D(%struct.State* %0, i64 %loadPC_455135, %struct.Memory* %loadMem2_455135)
  store %struct.Memory* %call2_455135, %struct.Memory** %MEMORY
  %loadMem_45513a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 33
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %2170 to i64*
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2172 = getelementptr inbounds %struct.GPR, %struct.GPR* %2171, i32 0, i32 15
  %2173 = getelementptr inbounds %struct.Reg, %struct.Reg* %2172, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %2173 to i64*
  %2174 = load i64, i64* %RBP.i538
  %2175 = sub i64 %2174, 12
  %2176 = load i64, i64* %PC.i537
  %2177 = add i64 %2176, 4
  store i64 %2177, i64* %PC.i537
  %2178 = inttoptr i64 %2175 to i32*
  %2179 = load i32, i32* %2178
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2180, align 1
  %2181 = and i32 %2179, 255
  %2182 = call i32 @llvm.ctpop.i32(i32 %2181)
  %2183 = trunc i32 %2182 to i8
  %2184 = and i8 %2183, 1
  %2185 = xor i8 %2184, 1
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2185, i8* %2186, align 1
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2187, align 1
  %2188 = icmp eq i32 %2179, 0
  %2189 = zext i1 %2188 to i8
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2189, i8* %2190, align 1
  %2191 = lshr i32 %2179, 31
  %2192 = trunc i32 %2191 to i8
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2192, i8* %2193, align 1
  %2194 = lshr i32 %2179, 31
  %2195 = xor i32 %2191, %2194
  %2196 = add i32 %2195, %2194
  %2197 = icmp eq i32 %2196, 2
  %2198 = zext i1 %2197 to i8
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2198, i8* %2199, align 1
  store %struct.Memory* %loadMem_45513a, %struct.Memory** %MEMORY
  %loadMem_45513e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2201 = getelementptr inbounds %struct.GPR, %struct.GPR* %2200, i32 0, i32 33
  %2202 = getelementptr inbounds %struct.Reg, %struct.Reg* %2201, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %2202 to i64*
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2204 = getelementptr inbounds %struct.GPR, %struct.GPR* %2203, i32 0, i32 1
  %2205 = getelementptr inbounds %struct.Reg, %struct.Reg* %2204, i32 0, i32 0
  %EAX.i535 = bitcast %union.anon* %2205 to i32*
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2207 = getelementptr inbounds %struct.GPR, %struct.GPR* %2206, i32 0, i32 15
  %2208 = getelementptr inbounds %struct.Reg, %struct.Reg* %2207, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %2208 to i64*
  %2209 = load i64, i64* %RBP.i536
  %2210 = sub i64 %2209, 88
  %2211 = load i32, i32* %EAX.i535
  %2212 = zext i32 %2211 to i64
  %2213 = load i64, i64* %PC.i534
  %2214 = add i64 %2213, 3
  store i64 %2214, i64* %PC.i534
  %2215 = inttoptr i64 %2210 to i32*
  store i32 %2211, i32* %2215
  store %struct.Memory* %loadMem_45513e, %struct.Memory** %MEMORY
  %loadMem_455141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 33
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %2218 to i64*
  %2219 = load i64, i64* %PC.i533
  %2220 = add i64 %2219, 664
  %2221 = load i64, i64* %PC.i533
  %2222 = add i64 %2221, 6
  %2223 = load i64, i64* %PC.i533
  %2224 = add i64 %2223, 6
  store i64 %2224, i64* %PC.i533
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2226 = load i8, i8* %2225, align 1
  store i8 %2226, i8* %BRANCH_TAKEN, align 1
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2228 = icmp ne i8 %2226, 0
  %2229 = select i1 %2228, i64 %2220, i64 %2222
  store i64 %2229, i64* %2227, align 8
  store %struct.Memory* %loadMem_455141, %struct.Memory** %MEMORY
  %loadBr_455141 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_455141 = icmp eq i8 %loadBr_455141, 1
  br i1 %cmpBr_455141, label %block_.L_4553d9, label %block_455147

block_455147:                                     ; preds = %routine_idivl__ecx.exit548
  %loadMem_455147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2231 = getelementptr inbounds %struct.GPR, %struct.GPR* %2230, i32 0, i32 33
  %2232 = getelementptr inbounds %struct.Reg, %struct.Reg* %2231, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %2232 to i64*
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 1
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %RAX.i532 = bitcast %union.anon* %2235 to i64*
  %2236 = load i64, i64* %PC.i531
  %2237 = add i64 %2236, 5
  store i64 %2237, i64* %PC.i531
  store i64 2, i64* %RAX.i532, align 8
  store %struct.Memory* %loadMem_455147, %struct.Memory** %MEMORY
  %loadMem_45514c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2239 = getelementptr inbounds %struct.GPR, %struct.GPR* %2238, i32 0, i32 33
  %2240 = getelementptr inbounds %struct.Reg, %struct.Reg* %2239, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %2240 to i64*
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2242 = getelementptr inbounds %struct.GPR, %struct.GPR* %2241, i32 0, i32 5
  %2243 = getelementptr inbounds %struct.Reg, %struct.Reg* %2242, i32 0, i32 0
  %RCX.i530 = bitcast %union.anon* %2243 to i64*
  %2244 = load i64, i64* %PC.i529
  %2245 = add i64 %2244, 5
  store i64 %2245, i64* %PC.i529
  store i64 4, i64* %RCX.i530, align 8
  store %struct.Memory* %loadMem_45514c, %struct.Memory** %MEMORY
  %loadMem_455151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2247 = getelementptr inbounds %struct.GPR, %struct.GPR* %2246, i32 0, i32 33
  %2248 = getelementptr inbounds %struct.Reg, %struct.Reg* %2247, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %2248 to i64*
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 7
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %RDX.i527 = bitcast %union.anon* %2251 to i64*
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 15
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %RBP.i528 = bitcast %union.anon* %2254 to i64*
  %2255 = load i64, i64* %RBP.i528
  %2256 = sub i64 %2255, 24
  %2257 = load i64, i64* %PC.i526
  %2258 = add i64 %2257, 4
  store i64 %2258, i64* %PC.i526
  %2259 = inttoptr i64 %2256 to i64*
  %2260 = load i64, i64* %2259
  store i64 %2260, i64* %RDX.i527, align 8
  store %struct.Memory* %loadMem_455151, %struct.Memory** %MEMORY
  %loadMem_455155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2262 = getelementptr inbounds %struct.GPR, %struct.GPR* %2261, i32 0, i32 33
  %2263 = getelementptr inbounds %struct.Reg, %struct.Reg* %2262, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %2263 to i64*
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 7
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %RDX.i525 = bitcast %union.anon* %2266 to i64*
  %2267 = load i64, i64* %RDX.i525
  %2268 = load i64, i64* %PC.i524
  %2269 = add i64 %2268, 7
  store i64 %2269, i64* %PC.i524
  %2270 = add i64 3216, %2267
  store i64 %2270, i64* %RDX.i525, align 8
  %2271 = icmp ult i64 %2270, %2267
  %2272 = icmp ult i64 %2270, 3216
  %2273 = or i1 %2271, %2272
  %2274 = zext i1 %2273 to i8
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2274, i8* %2275, align 1
  %2276 = trunc i64 %2270 to i32
  %2277 = and i32 %2276, 255
  %2278 = call i32 @llvm.ctpop.i32(i32 %2277)
  %2279 = trunc i32 %2278 to i8
  %2280 = and i8 %2279, 1
  %2281 = xor i8 %2280, 1
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2281, i8* %2282, align 1
  %2283 = xor i64 3216, %2267
  %2284 = xor i64 %2283, %2270
  %2285 = lshr i64 %2284, 4
  %2286 = trunc i64 %2285 to i8
  %2287 = and i8 %2286, 1
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2287, i8* %2288, align 1
  %2289 = icmp eq i64 %2270, 0
  %2290 = zext i1 %2289 to i8
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2290, i8* %2291, align 1
  %2292 = lshr i64 %2270, 63
  %2293 = trunc i64 %2292 to i8
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2293, i8* %2294, align 1
  %2295 = lshr i64 %2267, 63
  %2296 = xor i64 %2292, %2295
  %2297 = add i64 %2296, %2292
  %2298 = icmp eq i64 %2297, 2
  %2299 = zext i1 %2298 to i8
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2299, i8* %2300, align 1
  store %struct.Memory* %loadMem_455155, %struct.Memory** %MEMORY
  %loadMem_45515c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2302 = getelementptr inbounds %struct.GPR, %struct.GPR* %2301, i32 0, i32 33
  %2303 = getelementptr inbounds %struct.Reg, %struct.Reg* %2302, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %2303 to i64*
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2305 = getelementptr inbounds %struct.GPR, %struct.GPR* %2304, i32 0, i32 9
  %2306 = getelementptr inbounds %struct.Reg, %struct.Reg* %2305, i32 0, i32 0
  %RSI.i522 = bitcast %union.anon* %2306 to i64*
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2308 = getelementptr inbounds %struct.GPR, %struct.GPR* %2307, i32 0, i32 15
  %2309 = getelementptr inbounds %struct.Reg, %struct.Reg* %2308, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %2309 to i64*
  %2310 = load i64, i64* %RBP.i523
  %2311 = sub i64 %2310, 4
  %2312 = load i64, i64* %PC.i521
  %2313 = add i64 %2312, 3
  store i64 %2313, i64* %PC.i521
  %2314 = inttoptr i64 %2311 to i32*
  %2315 = load i32, i32* %2314
  %2316 = zext i32 %2315 to i64
  store i64 %2316, i64* %RSI.i522, align 8
  store %struct.Memory* %loadMem_45515c, %struct.Memory** %MEMORY
  %loadMem_45515f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 33
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %2319 to i64*
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 1
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %EAX.i519 = bitcast %union.anon* %2322 to i32*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 15
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %2325 to i64*
  %2326 = load i64, i64* %RBP.i520
  %2327 = sub i64 %2326, 92
  %2328 = load i32, i32* %EAX.i519
  %2329 = zext i32 %2328 to i64
  %2330 = load i64, i64* %PC.i518
  %2331 = add i64 %2330, 3
  store i64 %2331, i64* %PC.i518
  %2332 = inttoptr i64 %2327 to i32*
  store i32 %2328, i32* %2332
  store %struct.Memory* %loadMem_45515f, %struct.Memory** %MEMORY
  %loadMem_455162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2334 = getelementptr inbounds %struct.GPR, %struct.GPR* %2333, i32 0, i32 33
  %2335 = getelementptr inbounds %struct.Reg, %struct.Reg* %2334, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %2335 to i64*
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 9
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %ESI.i516 = bitcast %union.anon* %2338 to i32*
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 1
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %RAX.i517 = bitcast %union.anon* %2341 to i64*
  %2342 = load i32, i32* %ESI.i516
  %2343 = zext i32 %2342 to i64
  %2344 = load i64, i64* %PC.i515
  %2345 = add i64 %2344, 2
  store i64 %2345, i64* %PC.i515
  %2346 = and i64 %2343, 4294967295
  store i64 %2346, i64* %RAX.i517, align 8
  store %struct.Memory* %loadMem_455162, %struct.Memory** %MEMORY
  %loadMem_455164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 33
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %2349 to i64*
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 7
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %RDX.i513 = bitcast %union.anon* %2352 to i64*
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 15
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %RBP.i514 = bitcast %union.anon* %2355 to i64*
  %2356 = load i64, i64* %RBP.i514
  %2357 = sub i64 %2356, 104
  %2358 = load i64, i64* %RDX.i513
  %2359 = load i64, i64* %PC.i512
  %2360 = add i64 %2359, 4
  store i64 %2360, i64* %PC.i512
  %2361 = inttoptr i64 %2357 to i64*
  store i64 %2358, i64* %2361
  store %struct.Memory* %loadMem_455164, %struct.Memory** %MEMORY
  %loadMem_455168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 33
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %2364 to i64*
  %2365 = load i64, i64* %PC.i511
  %2366 = add i64 %2365, 1
  store i64 %2366, i64* %PC.i511
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2369 = bitcast %union.anon* %2368 to i32*
  %2370 = load i32, i32* %2369, align 8
  %2371 = sext i32 %2370 to i64
  %2372 = lshr i64 %2371, 32
  store i64 %2372, i64* %2367, align 8
  store %struct.Memory* %loadMem_455168, %struct.Memory** %MEMORY
  %loadMem_455169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2374 = getelementptr inbounds %struct.GPR, %struct.GPR* %2373, i32 0, i32 33
  %2375 = getelementptr inbounds %struct.Reg, %struct.Reg* %2374, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %2375 to i64*
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2377 = getelementptr inbounds %struct.GPR, %struct.GPR* %2376, i32 0, i32 5
  %2378 = getelementptr inbounds %struct.Reg, %struct.Reg* %2377, i32 0, i32 0
  %ECX.i506 = bitcast %union.anon* %2378 to i32*
  %2379 = load i32, i32* %ECX.i506
  %2380 = zext i32 %2379 to i64
  %2381 = load i64, i64* %PC.i505
  %2382 = add i64 %2381, 2
  store i64 %2382, i64* %PC.i505
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2384 = bitcast %union.anon* %2383 to i32*
  %2385 = load i32, i32* %2384, align 8
  %2386 = zext i32 %2385 to i64
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2388 = bitcast %union.anon* %2387 to i32*
  %2389 = load i32, i32* %2388, align 8
  %2390 = zext i32 %2389 to i64
  %2391 = shl i64 %2380, 32
  %2392 = ashr exact i64 %2391, 32
  %2393 = shl i64 %2390, 32
  %2394 = or i64 %2393, %2386
  %2395 = sdiv i64 %2394, %2392
  %2396 = shl i64 %2395, 32
  %2397 = ashr exact i64 %2396, 32
  %2398 = icmp eq i64 %2395, %2397
  br i1 %2398, label %2403, label %2399

; <label>:2399:                                   ; preds = %block_455147
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2401 = load i64, i64* %2400, align 8
  %2402 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2401, %struct.Memory* %loadMem_455169)
  br label %routine_idivl__ecx.exit507

; <label>:2403:                                   ; preds = %block_455147
  %2404 = srem i64 %2394, %2392
  %2405 = getelementptr inbounds %union.anon, %union.anon* %2383, i64 0, i32 0
  %2406 = and i64 %2395, 4294967295
  store i64 %2406, i64* %2405, align 8
  %2407 = getelementptr inbounds %union.anon, %union.anon* %2387, i64 0, i32 0
  %2408 = and i64 %2404, 4294967295
  store i64 %2408, i64* %2407, align 8
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2409, align 1
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2410, align 1
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2411, align 1
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2412, align 1
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2413, align 1
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2414, align 1
  br label %routine_idivl__ecx.exit507

routine_idivl__ecx.exit507:                       ; preds = %2399, %2403
  %2415 = phi %struct.Memory* [ %2402, %2399 ], [ %loadMem_455169, %2403 ]
  store %struct.Memory* %2415, %struct.Memory** %MEMORY
  %loadMem_45516b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 33
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %2418 to i64*
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 9
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %RSI.i503 = bitcast %union.anon* %2421 to i64*
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 15
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %2424 to i64*
  %2425 = load i64, i64* %RBP.i504
  %2426 = sub i64 %2425, 8
  %2427 = load i64, i64* %PC.i502
  %2428 = add i64 %2427, 3
  store i64 %2428, i64* %PC.i502
  %2429 = inttoptr i64 %2426 to i32*
  %2430 = load i32, i32* %2429
  %2431 = zext i32 %2430 to i64
  store i64 %2431, i64* %RSI.i503, align 8
  store %struct.Memory* %loadMem_45516b, %struct.Memory** %MEMORY
  %loadMem_45516e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 33
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 1
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %EAX.i500 = bitcast %union.anon* %2437 to i32*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 15
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %2440 to i64*
  %2441 = load i64, i64* %RBP.i501
  %2442 = sub i64 %2441, 108
  %2443 = load i32, i32* %EAX.i500
  %2444 = zext i32 %2443 to i64
  %2445 = load i64, i64* %PC.i499
  %2446 = add i64 %2445, 3
  store i64 %2446, i64* %PC.i499
  %2447 = inttoptr i64 %2442 to i32*
  store i32 %2443, i32* %2447
  store %struct.Memory* %loadMem_45516e, %struct.Memory** %MEMORY
  %loadMem_455171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2449 = getelementptr inbounds %struct.GPR, %struct.GPR* %2448, i32 0, i32 33
  %2450 = getelementptr inbounds %struct.Reg, %struct.Reg* %2449, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %2450 to i64*
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 9
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %ESI.i497 = bitcast %union.anon* %2453 to i32*
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 1
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %2456 to i64*
  %2457 = load i32, i32* %ESI.i497
  %2458 = zext i32 %2457 to i64
  %2459 = load i64, i64* %PC.i496
  %2460 = add i64 %2459, 2
  store i64 %2460, i64* %PC.i496
  %2461 = and i64 %2458, 4294967295
  store i64 %2461, i64* %RAX.i498, align 8
  store %struct.Memory* %loadMem_455171, %struct.Memory** %MEMORY
  %loadMem_455173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 33
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %2464 to i64*
  %2465 = load i64, i64* %PC.i495
  %2466 = add i64 %2465, 1
  store i64 %2466, i64* %PC.i495
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2469 = bitcast %union.anon* %2468 to i32*
  %2470 = load i32, i32* %2469, align 8
  %2471 = sext i32 %2470 to i64
  %2472 = lshr i64 %2471, 32
  store i64 %2472, i64* %2467, align 8
  store %struct.Memory* %loadMem_455173, %struct.Memory** %MEMORY
  %loadMem_455174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2474 = getelementptr inbounds %struct.GPR, %struct.GPR* %2473, i32 0, i32 33
  %2475 = getelementptr inbounds %struct.Reg, %struct.Reg* %2474, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %2475 to i64*
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 5
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %ECX.i490 = bitcast %union.anon* %2478 to i32*
  %2479 = load i32, i32* %ECX.i490
  %2480 = zext i32 %2479 to i64
  %2481 = load i64, i64* %PC.i489
  %2482 = add i64 %2481, 2
  store i64 %2482, i64* %PC.i489
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2484 = bitcast %union.anon* %2483 to i32*
  %2485 = load i32, i32* %2484, align 8
  %2486 = zext i32 %2485 to i64
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2488 = bitcast %union.anon* %2487 to i32*
  %2489 = load i32, i32* %2488, align 8
  %2490 = zext i32 %2489 to i64
  %2491 = shl i64 %2480, 32
  %2492 = ashr exact i64 %2491, 32
  %2493 = shl i64 %2490, 32
  %2494 = or i64 %2493, %2486
  %2495 = sdiv i64 %2494, %2492
  %2496 = shl i64 %2495, 32
  %2497 = ashr exact i64 %2496, 32
  %2498 = icmp eq i64 %2495, %2497
  br i1 %2498, label %2503, label %2499

; <label>:2499:                                   ; preds = %routine_idivl__ecx.exit507
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2501 = load i64, i64* %2500, align 8
  %2502 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2501, %struct.Memory* %loadMem_455174)
  br label %routine_idivl__ecx.exit491

; <label>:2503:                                   ; preds = %routine_idivl__ecx.exit507
  %2504 = srem i64 %2494, %2492
  %2505 = getelementptr inbounds %union.anon, %union.anon* %2483, i64 0, i32 0
  %2506 = and i64 %2495, 4294967295
  store i64 %2506, i64* %2505, align 8
  %2507 = getelementptr inbounds %union.anon, %union.anon* %2487, i64 0, i32 0
  %2508 = and i64 %2504, 4294967295
  store i64 %2508, i64* %2507, align 8
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2509, align 1
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2510, align 1
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2511, align 1
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2512, align 1
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2513, align 1
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2514, align 1
  br label %routine_idivl__ecx.exit491

routine_idivl__ecx.exit491:                       ; preds = %2499, %2503
  %2515 = phi %struct.Memory* [ %2502, %2499 ], [ %loadMem_455174, %2503 ]
  store %struct.Memory* %2515, %struct.Memory** %MEMORY
  %loadMem_455176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 33
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %2518 to i64*
  %2519 = load i64, i64* %PC.i488
  %2520 = add i64 %2519, 1
  store i64 %2520, i64* %PC.i488
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2523 = bitcast %union.anon* %2522 to i32*
  %2524 = load i32, i32* %2523, align 8
  %2525 = sext i32 %2524 to i64
  %2526 = lshr i64 %2525, 32
  store i64 %2526, i64* %2521, align 8
  store %struct.Memory* %loadMem_455176, %struct.Memory** %MEMORY
  %loadMem_455177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 33
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %2529 to i64*
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 5
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %RCX.i486 = bitcast %union.anon* %2532 to i64*
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2534 = getelementptr inbounds %struct.GPR, %struct.GPR* %2533, i32 0, i32 15
  %2535 = getelementptr inbounds %struct.Reg, %struct.Reg* %2534, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %2535 to i64*
  %2536 = load i64, i64* %RBP.i487
  %2537 = sub i64 %2536, 92
  %2538 = load i64, i64* %PC.i485
  %2539 = add i64 %2538, 3
  store i64 %2539, i64* %PC.i485
  %2540 = inttoptr i64 %2537 to i32*
  %2541 = load i32, i32* %2540
  %2542 = zext i32 %2541 to i64
  store i64 %2542, i64* %RCX.i486, align 8
  store %struct.Memory* %loadMem_455177, %struct.Memory** %MEMORY
  %loadMem_45517a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 33
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %2545 to i64*
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 5
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %ECX.i480 = bitcast %union.anon* %2548 to i32*
  %2549 = load i32, i32* %ECX.i480
  %2550 = zext i32 %2549 to i64
  %2551 = load i64, i64* %PC.i479
  %2552 = add i64 %2551, 2
  store i64 %2552, i64* %PC.i479
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2554 = bitcast %union.anon* %2553 to i32*
  %2555 = load i32, i32* %2554, align 8
  %2556 = zext i32 %2555 to i64
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2558 = bitcast %union.anon* %2557 to i32*
  %2559 = load i32, i32* %2558, align 8
  %2560 = zext i32 %2559 to i64
  %2561 = shl i64 %2550, 32
  %2562 = ashr exact i64 %2561, 32
  %2563 = shl i64 %2560, 32
  %2564 = or i64 %2563, %2556
  %2565 = sdiv i64 %2564, %2562
  %2566 = shl i64 %2565, 32
  %2567 = ashr exact i64 %2566, 32
  %2568 = icmp eq i64 %2565, %2567
  br i1 %2568, label %2573, label %2569

; <label>:2569:                                   ; preds = %routine_idivl__ecx.exit491
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2571 = load i64, i64* %2570, align 8
  %2572 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2571, %struct.Memory* %loadMem_45517a)
  br label %routine_idivl__ecx.exit481

; <label>:2573:                                   ; preds = %routine_idivl__ecx.exit491
  %2574 = srem i64 %2564, %2562
  %2575 = getelementptr inbounds %union.anon, %union.anon* %2553, i64 0, i32 0
  %2576 = and i64 %2565, 4294967295
  store i64 %2576, i64* %2575, align 8
  %2577 = getelementptr inbounds %union.anon, %union.anon* %2557, i64 0, i32 0
  %2578 = and i64 %2574, 4294967295
  store i64 %2578, i64* %2577, align 8
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2579, align 1
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2580, align 1
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2581, align 1
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2582, align 1
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2583, align 1
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2584, align 1
  br label %routine_idivl__ecx.exit481

routine_idivl__ecx.exit481:                       ; preds = %2569, %2573
  %2585 = phi %struct.Memory* [ %2572, %2569 ], [ %loadMem_45517a, %2573 ]
  store %struct.Memory* %2585, %struct.Memory** %MEMORY
  %loadMem_45517c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 33
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %2588 to i64*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 11
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %RDI.i477 = bitcast %union.anon* %2591 to i64*
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2593 = getelementptr inbounds %struct.GPR, %struct.GPR* %2592, i32 0, i32 15
  %2594 = getelementptr inbounds %struct.Reg, %struct.Reg* %2593, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %2594 to i64*
  %2595 = load i64, i64* %RBP.i478
  %2596 = sub i64 %2595, 104
  %2597 = load i64, i64* %PC.i476
  %2598 = add i64 %2597, 4
  store i64 %2598, i64* %PC.i476
  %2599 = inttoptr i64 %2596 to i64*
  %2600 = load i64, i64* %2599
  store i64 %2600, i64* %RDI.i477, align 8
  store %struct.Memory* %loadMem_45517c, %struct.Memory** %MEMORY
  %loadMem_455180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 33
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %2603 to i64*
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 5
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %ECX.i474 = bitcast %union.anon* %2606 to i32*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 9
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %RSI.i475 = bitcast %union.anon* %2609 to i64*
  %2610 = load i32, i32* %ECX.i474
  %2611 = zext i32 %2610 to i64
  %2612 = load i64, i64* %PC.i473
  %2613 = add i64 %2612, 2
  store i64 %2613, i64* %PC.i473
  %2614 = and i64 %2611, 4294967295
  store i64 %2614, i64* %RSI.i475, align 8
  store %struct.Memory* %loadMem_455180, %struct.Memory** %MEMORY
  %loadMem_455182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 33
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %2617 to i64*
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 17
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %R8D.i471 = bitcast %union.anon* %2620 to i32*
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 15
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %2623 to i64*
  %2624 = bitcast i32* %R8D.i471 to i64*
  %2625 = load i64, i64* %RBP.i472
  %2626 = sub i64 %2625, 108
  %2627 = load i64, i64* %PC.i470
  %2628 = add i64 %2627, 4
  store i64 %2628, i64* %PC.i470
  %2629 = inttoptr i64 %2626 to i32*
  %2630 = load i32, i32* %2629
  %2631 = zext i32 %2630 to i64
  store i64 %2631, i64* %2624, align 8
  store %struct.Memory* %loadMem_455182, %struct.Memory** %MEMORY
  %loadMem_455186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2633 = getelementptr inbounds %struct.GPR, %struct.GPR* %2632, i32 0, i32 33
  %2634 = getelementptr inbounds %struct.Reg, %struct.Reg* %2633, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %2634 to i64*
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2636 = getelementptr inbounds %struct.GPR, %struct.GPR* %2635, i32 0, i32 17
  %2637 = getelementptr inbounds %struct.Reg, %struct.Reg* %2636, i32 0, i32 0
  %R8D.i468 = bitcast %union.anon* %2637 to i32*
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2639 = getelementptr inbounds %struct.GPR, %struct.GPR* %2638, i32 0, i32 7
  %2640 = getelementptr inbounds %struct.Reg, %struct.Reg* %2639, i32 0, i32 0
  %RDX.i469 = bitcast %union.anon* %2640 to i64*
  %2641 = load i32, i32* %R8D.i468
  %2642 = zext i32 %2641 to i64
  %2643 = load i64, i64* %PC.i467
  %2644 = add i64 %2643, 3
  store i64 %2644, i64* %PC.i467
  %2645 = and i64 %2642, 4294967295
  store i64 %2645, i64* %RDX.i469, align 8
  store %struct.Memory* %loadMem_455186, %struct.Memory** %MEMORY
  %loadMem_455189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2647 = getelementptr inbounds %struct.GPR, %struct.GPR* %2646, i32 0, i32 33
  %2648 = getelementptr inbounds %struct.Reg, %struct.Reg* %2647, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %2648 to i64*
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2650 = getelementptr inbounds %struct.GPR, %struct.GPR* %2649, i32 0, i32 1
  %2651 = getelementptr inbounds %struct.Reg, %struct.Reg* %2650, i32 0, i32 0
  %EAX.i465 = bitcast %union.anon* %2651 to i32*
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 5
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %RCX.i466 = bitcast %union.anon* %2654 to i64*
  %2655 = load i32, i32* %EAX.i465
  %2656 = zext i32 %2655 to i64
  %2657 = load i64, i64* %PC.i464
  %2658 = add i64 %2657, 2
  store i64 %2658, i64* %PC.i464
  %2659 = and i64 %2656, 4294967295
  store i64 %2659, i64* %RCX.i466, align 8
  store %struct.Memory* %loadMem_455189, %struct.Memory** %MEMORY
  %loadMem1_45518b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2661 = getelementptr inbounds %struct.GPR, %struct.GPR* %2660, i32 0, i32 33
  %2662 = getelementptr inbounds %struct.Reg, %struct.Reg* %2661, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %2662 to i64*
  %2663 = load i64, i64* %PC.i463
  %2664 = add i64 %2663, 20357
  %2665 = load i64, i64* %PC.i463
  %2666 = add i64 %2665, 5
  %2667 = load i64, i64* %PC.i463
  %2668 = add i64 %2667, 5
  store i64 %2668, i64* %PC.i463
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2670 = load i64, i64* %2669, align 8
  %2671 = add i64 %2670, -8
  %2672 = inttoptr i64 %2671 to i64*
  store i64 %2666, i64* %2672
  store i64 %2671, i64* %2669, align 8
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2664, i64* %2673, align 8
  store %struct.Memory* %loadMem1_45518b, %struct.Memory** %MEMORY
  %loadMem2_45518b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45518b = load i64, i64* %3
  %call2_45518b = call %struct.Memory* @sub_45a110.get_mem3Dshort(%struct.State* %0, i64 %loadPC_45518b, %struct.Memory* %loadMem2_45518b)
  store %struct.Memory* %call2_45518b, %struct.Memory** %MEMORY
  %loadMem_455190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 33
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %2676 to i64*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 5
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %RCX.i462 = bitcast %union.anon* %2679 to i64*
  %2680 = load i64, i64* %PC.i461
  %2681 = add i64 %2680, 5
  store i64 %2681, i64* %PC.i461
  store i64 2, i64* %RCX.i462, align 8
  store %struct.Memory* %loadMem_455190, %struct.Memory** %MEMORY
  %loadMem_455195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 33
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %2684 to i64*
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 7
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %RDX.i460 = bitcast %union.anon* %2687 to i64*
  %2688 = load i64, i64* %PC.i459
  %2689 = add i64 %2688, 5
  store i64 %2689, i64* %PC.i459
  store i64 4, i64* %RDX.i460, align 8
  store %struct.Memory* %loadMem_455195, %struct.Memory** %MEMORY
  %loadMem_45519a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 33
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %2692 to i64*
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2694 = getelementptr inbounds %struct.GPR, %struct.GPR* %2693, i32 0, i32 11
  %2695 = getelementptr inbounds %struct.Reg, %struct.Reg* %2694, i32 0, i32 0
  %RDI.i457 = bitcast %union.anon* %2695 to i64*
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 15
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %2698 to i64*
  %2699 = load i64, i64* %RBP.i458
  %2700 = sub i64 %2699, 24
  %2701 = load i64, i64* %PC.i456
  %2702 = add i64 %2701, 4
  store i64 %2702, i64* %PC.i456
  %2703 = inttoptr i64 %2700 to i64*
  %2704 = load i64, i64* %2703
  store i64 %2704, i64* %RDI.i457, align 8
  store %struct.Memory* %loadMem_45519a, %struct.Memory** %MEMORY
  %loadMem_45519e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2706 = getelementptr inbounds %struct.GPR, %struct.GPR* %2705, i32 0, i32 33
  %2707 = getelementptr inbounds %struct.Reg, %struct.Reg* %2706, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %2707 to i64*
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2709 = getelementptr inbounds %struct.GPR, %struct.GPR* %2708, i32 0, i32 11
  %2710 = getelementptr inbounds %struct.Reg, %struct.Reg* %2709, i32 0, i32 0
  %RDI.i455 = bitcast %union.anon* %2710 to i64*
  %2711 = load i64, i64* %RDI.i455
  %2712 = load i64, i64* %PC.i454
  %2713 = add i64 %2712, 7
  store i64 %2713, i64* %PC.i454
  %2714 = add i64 3224, %2711
  store i64 %2714, i64* %RDI.i455, align 8
  %2715 = icmp ult i64 %2714, %2711
  %2716 = icmp ult i64 %2714, 3224
  %2717 = or i1 %2715, %2716
  %2718 = zext i1 %2717 to i8
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2718, i8* %2719, align 1
  %2720 = trunc i64 %2714 to i32
  %2721 = and i32 %2720, 255
  %2722 = call i32 @llvm.ctpop.i32(i32 %2721)
  %2723 = trunc i32 %2722 to i8
  %2724 = and i8 %2723, 1
  %2725 = xor i8 %2724, 1
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2725, i8* %2726, align 1
  %2727 = xor i64 3224, %2711
  %2728 = xor i64 %2727, %2714
  %2729 = lshr i64 %2728, 4
  %2730 = trunc i64 %2729 to i8
  %2731 = and i8 %2730, 1
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2731, i8* %2732, align 1
  %2733 = icmp eq i64 %2714, 0
  %2734 = zext i1 %2733 to i8
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2734, i8* %2735, align 1
  %2736 = lshr i64 %2714, 63
  %2737 = trunc i64 %2736 to i8
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2737, i8* %2738, align 1
  %2739 = lshr i64 %2711, 63
  %2740 = xor i64 %2736, %2739
  %2741 = add i64 %2740, %2736
  %2742 = icmp eq i64 %2741, 2
  %2743 = zext i1 %2742 to i8
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2743, i8* %2744, align 1
  store %struct.Memory* %loadMem_45519e, %struct.Memory** %MEMORY
  %loadMem_4551a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 33
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %2747 to i64*
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 9
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %RSI.i452 = bitcast %union.anon* %2750 to i64*
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2752 = getelementptr inbounds %struct.GPR, %struct.GPR* %2751, i32 0, i32 15
  %2753 = getelementptr inbounds %struct.Reg, %struct.Reg* %2752, i32 0, i32 0
  %RBP.i453 = bitcast %union.anon* %2753 to i64*
  %2754 = load i64, i64* %RBP.i453
  %2755 = sub i64 %2754, 4
  %2756 = load i64, i64* %PC.i451
  %2757 = add i64 %2756, 3
  store i64 %2757, i64* %PC.i451
  %2758 = inttoptr i64 %2755 to i32*
  %2759 = load i32, i32* %2758
  %2760 = zext i32 %2759 to i64
  store i64 %2760, i64* %RSI.i452, align 8
  store %struct.Memory* %loadMem_4551a5, %struct.Memory** %MEMORY
  %loadMem_4551a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 33
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %2763 to i64*
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2765 = getelementptr inbounds %struct.GPR, %struct.GPR* %2764, i32 0, i32 1
  %2766 = getelementptr inbounds %struct.Reg, %struct.Reg* %2765, i32 0, i32 0
  %EAX.i449 = bitcast %union.anon* %2766 to i32*
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 15
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %RBP.i450 = bitcast %union.anon* %2769 to i64*
  %2770 = load i64, i64* %RBP.i450
  %2771 = sub i64 %2770, 112
  %2772 = load i32, i32* %EAX.i449
  %2773 = zext i32 %2772 to i64
  %2774 = load i64, i64* %PC.i448
  %2775 = add i64 %2774, 3
  store i64 %2775, i64* %PC.i448
  %2776 = inttoptr i64 %2771 to i32*
  store i32 %2772, i32* %2776
  store %struct.Memory* %loadMem_4551a8, %struct.Memory** %MEMORY
  %loadMem_4551ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2778 = getelementptr inbounds %struct.GPR, %struct.GPR* %2777, i32 0, i32 33
  %2779 = getelementptr inbounds %struct.Reg, %struct.Reg* %2778, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %2779 to i64*
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2781 = getelementptr inbounds %struct.GPR, %struct.GPR* %2780, i32 0, i32 9
  %2782 = getelementptr inbounds %struct.Reg, %struct.Reg* %2781, i32 0, i32 0
  %ESI.i446 = bitcast %union.anon* %2782 to i32*
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2784 = getelementptr inbounds %struct.GPR, %struct.GPR* %2783, i32 0, i32 1
  %2785 = getelementptr inbounds %struct.Reg, %struct.Reg* %2784, i32 0, i32 0
  %RAX.i447 = bitcast %union.anon* %2785 to i64*
  %2786 = load i32, i32* %ESI.i446
  %2787 = zext i32 %2786 to i64
  %2788 = load i64, i64* %PC.i445
  %2789 = add i64 %2788, 2
  store i64 %2789, i64* %PC.i445
  %2790 = and i64 %2787, 4294967295
  store i64 %2790, i64* %RAX.i447, align 8
  store %struct.Memory* %loadMem_4551ab, %struct.Memory** %MEMORY
  %loadMem_4551ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2792 = getelementptr inbounds %struct.GPR, %struct.GPR* %2791, i32 0, i32 33
  %2793 = getelementptr inbounds %struct.Reg, %struct.Reg* %2792, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %2793 to i64*
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2795 = getelementptr inbounds %struct.GPR, %struct.GPR* %2794, i32 0, i32 7
  %2796 = getelementptr inbounds %struct.Reg, %struct.Reg* %2795, i32 0, i32 0
  %EDX.i443 = bitcast %union.anon* %2796 to i32*
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 15
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %2799 to i64*
  %2800 = load i64, i64* %RBP.i444
  %2801 = sub i64 %2800, 116
  %2802 = load i32, i32* %EDX.i443
  %2803 = zext i32 %2802 to i64
  %2804 = load i64, i64* %PC.i442
  %2805 = add i64 %2804, 3
  store i64 %2805, i64* %PC.i442
  %2806 = inttoptr i64 %2801 to i32*
  store i32 %2802, i32* %2806
  store %struct.Memory* %loadMem_4551ad, %struct.Memory** %MEMORY
  %loadMem_4551b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 33
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %2809 to i64*
  %2810 = load i64, i64* %PC.i441
  %2811 = add i64 %2810, 1
  store i64 %2811, i64* %PC.i441
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2814 = bitcast %union.anon* %2813 to i32*
  %2815 = load i32, i32* %2814, align 8
  %2816 = sext i32 %2815 to i64
  %2817 = lshr i64 %2816, 32
  store i64 %2817, i64* %2812, align 8
  store %struct.Memory* %loadMem_4551b0, %struct.Memory** %MEMORY
  %loadMem_4551b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 33
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %2820 to i64*
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 9
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %RSI.i439 = bitcast %union.anon* %2823 to i64*
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 15
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %2826 to i64*
  %2827 = load i64, i64* %RBP.i440
  %2828 = sub i64 %2827, 116
  %2829 = load i64, i64* %PC.i438
  %2830 = add i64 %2829, 3
  store i64 %2830, i64* %PC.i438
  %2831 = inttoptr i64 %2828 to i32*
  %2832 = load i32, i32* %2831
  %2833 = zext i32 %2832 to i64
  store i64 %2833, i64* %RSI.i439, align 8
  store %struct.Memory* %loadMem_4551b1, %struct.Memory** %MEMORY
  %loadMem_4551b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2835 = getelementptr inbounds %struct.GPR, %struct.GPR* %2834, i32 0, i32 33
  %2836 = getelementptr inbounds %struct.Reg, %struct.Reg* %2835, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %2836 to i64*
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2838 = getelementptr inbounds %struct.GPR, %struct.GPR* %2837, i32 0, i32 9
  %2839 = getelementptr inbounds %struct.Reg, %struct.Reg* %2838, i32 0, i32 0
  %ESI.i434 = bitcast %union.anon* %2839 to i32*
  %2840 = load i32, i32* %ESI.i434
  %2841 = zext i32 %2840 to i64
  %2842 = load i64, i64* %PC.i433
  %2843 = add i64 %2842, 2
  store i64 %2843, i64* %PC.i433
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2845 = bitcast %union.anon* %2844 to i32*
  %2846 = load i32, i32* %2845, align 8
  %2847 = zext i32 %2846 to i64
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2849 = bitcast %union.anon* %2848 to i32*
  %2850 = load i32, i32* %2849, align 8
  %2851 = zext i32 %2850 to i64
  %2852 = shl i64 %2841, 32
  %2853 = ashr exact i64 %2852, 32
  %2854 = shl i64 %2851, 32
  %2855 = or i64 %2854, %2847
  %2856 = sdiv i64 %2855, %2853
  %2857 = shl i64 %2856, 32
  %2858 = ashr exact i64 %2857, 32
  %2859 = icmp eq i64 %2856, %2858
  br i1 %2859, label %2864, label %2860

; <label>:2860:                                   ; preds = %routine_idivl__ecx.exit481
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2862 = load i64, i64* %2861, align 8
  %2863 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2862, %struct.Memory* %loadMem_4551b4)
  br label %routine_idivl__esi.exit435

; <label>:2864:                                   ; preds = %routine_idivl__ecx.exit481
  %2865 = srem i64 %2855, %2853
  %2866 = getelementptr inbounds %union.anon, %union.anon* %2844, i64 0, i32 0
  %2867 = and i64 %2856, 4294967295
  store i64 %2867, i64* %2866, align 8
  %2868 = getelementptr inbounds %union.anon, %union.anon* %2848, i64 0, i32 0
  %2869 = and i64 %2865, 4294967295
  store i64 %2869, i64* %2868, align 8
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2870, align 1
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2871, align 1
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2872, align 1
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2873, align 1
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2874, align 1
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2875, align 1
  br label %routine_idivl__esi.exit435

routine_idivl__esi.exit435:                       ; preds = %2860, %2864
  %2876 = phi %struct.Memory* [ %2863, %2860 ], [ %loadMem_4551b4, %2864 ]
  store %struct.Memory* %2876, %struct.Memory** %MEMORY
  %loadMem_4551b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 33
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %2879 to i64*
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2881 = getelementptr inbounds %struct.GPR, %struct.GPR* %2880, i32 0, i32 17
  %2882 = getelementptr inbounds %struct.Reg, %struct.Reg* %2881, i32 0, i32 0
  %R8D.i431 = bitcast %union.anon* %2882 to i32*
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 15
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %2885 to i64*
  %2886 = bitcast i32* %R8D.i431 to i64*
  %2887 = load i64, i64* %RBP.i432
  %2888 = sub i64 %2887, 8
  %2889 = load i64, i64* %PC.i430
  %2890 = add i64 %2889, 4
  store i64 %2890, i64* %PC.i430
  %2891 = inttoptr i64 %2888 to i32*
  %2892 = load i32, i32* %2891
  %2893 = zext i32 %2892 to i64
  store i64 %2893, i64* %2886, align 8
  store %struct.Memory* %loadMem_4551b6, %struct.Memory** %MEMORY
  %loadMem_4551ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2895 = getelementptr inbounds %struct.GPR, %struct.GPR* %2894, i32 0, i32 33
  %2896 = getelementptr inbounds %struct.Reg, %struct.Reg* %2895, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %2896 to i64*
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 1
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %EAX.i428 = bitcast %union.anon* %2899 to i32*
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 15
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %2902 to i64*
  %2903 = load i64, i64* %RBP.i429
  %2904 = sub i64 %2903, 120
  %2905 = load i32, i32* %EAX.i428
  %2906 = zext i32 %2905 to i64
  %2907 = load i64, i64* %PC.i427
  %2908 = add i64 %2907, 3
  store i64 %2908, i64* %PC.i427
  %2909 = inttoptr i64 %2904 to i32*
  store i32 %2905, i32* %2909
  store %struct.Memory* %loadMem_4551ba, %struct.Memory** %MEMORY
  %loadMem_4551bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 33
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %2912 to i64*
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 17
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %R8D.i425 = bitcast %union.anon* %2915 to i32*
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 1
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %RAX.i426 = bitcast %union.anon* %2918 to i64*
  %2919 = load i32, i32* %R8D.i425
  %2920 = zext i32 %2919 to i64
  %2921 = load i64, i64* %PC.i424
  %2922 = add i64 %2921, 3
  store i64 %2922, i64* %PC.i424
  %2923 = and i64 %2920, 4294967295
  store i64 %2923, i64* %RAX.i426, align 8
  store %struct.Memory* %loadMem_4551bd, %struct.Memory** %MEMORY
  %loadMem_4551c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2925 = getelementptr inbounds %struct.GPR, %struct.GPR* %2924, i32 0, i32 33
  %2926 = getelementptr inbounds %struct.Reg, %struct.Reg* %2925, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %2926 to i64*
  %2927 = load i64, i64* %PC.i423
  %2928 = add i64 %2927, 1
  store i64 %2928, i64* %PC.i423
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2931 = bitcast %union.anon* %2930 to i32*
  %2932 = load i32, i32* %2931, align 8
  %2933 = sext i32 %2932 to i64
  %2934 = lshr i64 %2933, 32
  store i64 %2934, i64* %2929, align 8
  store %struct.Memory* %loadMem_4551c0, %struct.Memory** %MEMORY
  %loadMem_4551c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2936 = getelementptr inbounds %struct.GPR, %struct.GPR* %2935, i32 0, i32 33
  %2937 = getelementptr inbounds %struct.Reg, %struct.Reg* %2936, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %2937 to i64*
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 9
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %ESI.i419 = bitcast %union.anon* %2940 to i32*
  %2941 = load i32, i32* %ESI.i419
  %2942 = zext i32 %2941 to i64
  %2943 = load i64, i64* %PC.i418
  %2944 = add i64 %2943, 2
  store i64 %2944, i64* %PC.i418
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2946 = bitcast %union.anon* %2945 to i32*
  %2947 = load i32, i32* %2946, align 8
  %2948 = zext i32 %2947 to i64
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2950 = bitcast %union.anon* %2949 to i32*
  %2951 = load i32, i32* %2950, align 8
  %2952 = zext i32 %2951 to i64
  %2953 = shl i64 %2942, 32
  %2954 = ashr exact i64 %2953, 32
  %2955 = shl i64 %2952, 32
  %2956 = or i64 %2955, %2948
  %2957 = sdiv i64 %2956, %2954
  %2958 = shl i64 %2957, 32
  %2959 = ashr exact i64 %2958, 32
  %2960 = icmp eq i64 %2957, %2959
  br i1 %2960, label %2965, label %2961

; <label>:2961:                                   ; preds = %routine_idivl__esi.exit435
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2963 = load i64, i64* %2962, align 8
  %2964 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2963, %struct.Memory* %loadMem_4551c1)
  br label %routine_idivl__esi.exit420

; <label>:2965:                                   ; preds = %routine_idivl__esi.exit435
  %2966 = srem i64 %2956, %2954
  %2967 = getelementptr inbounds %union.anon, %union.anon* %2945, i64 0, i32 0
  %2968 = and i64 %2957, 4294967295
  store i64 %2968, i64* %2967, align 8
  %2969 = getelementptr inbounds %union.anon, %union.anon* %2949, i64 0, i32 0
  %2970 = and i64 %2966, 4294967295
  store i64 %2970, i64* %2969, align 8
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2971, align 1
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2972, align 1
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2973, align 1
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2974, align 1
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2975, align 1
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2976, align 1
  br label %routine_idivl__esi.exit420

routine_idivl__esi.exit420:                       ; preds = %2961, %2965
  %2977 = phi %struct.Memory* [ %2964, %2961 ], [ %loadMem_4551c1, %2965 ]
  store %struct.Memory* %2977, %struct.Memory** %MEMORY
  %loadMem_4551c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 33
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %2980 to i64*
  %2981 = load i64, i64* %PC.i417
  %2982 = add i64 %2981, 1
  store i64 %2982, i64* %PC.i417
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2985 = bitcast %union.anon* %2984 to i32*
  %2986 = load i32, i32* %2985, align 8
  %2987 = sext i32 %2986 to i64
  %2988 = lshr i64 %2987, 32
  store i64 %2988, i64* %2983, align 8
  store %struct.Memory* %loadMem_4551c3, %struct.Memory** %MEMORY
  %loadMem_4551c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 33
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %2991 to i64*
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 5
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %ECX.i414 = bitcast %union.anon* %2994 to i32*
  %2995 = load i32, i32* %ECX.i414
  %2996 = zext i32 %2995 to i64
  %2997 = load i64, i64* %PC.i413
  %2998 = add i64 %2997, 2
  store i64 %2998, i64* %PC.i413
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3000 = bitcast %union.anon* %2999 to i32*
  %3001 = load i32, i32* %3000, align 8
  %3002 = zext i32 %3001 to i64
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3004 = bitcast %union.anon* %3003 to i32*
  %3005 = load i32, i32* %3004, align 8
  %3006 = zext i32 %3005 to i64
  %3007 = shl i64 %2996, 32
  %3008 = ashr exact i64 %3007, 32
  %3009 = shl i64 %3006, 32
  %3010 = or i64 %3009, %3002
  %3011 = sdiv i64 %3010, %3008
  %3012 = shl i64 %3011, 32
  %3013 = ashr exact i64 %3012, 32
  %3014 = icmp eq i64 %3011, %3013
  br i1 %3014, label %3019, label %3015

; <label>:3015:                                   ; preds = %routine_idivl__esi.exit420
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3017 = load i64, i64* %3016, align 8
  %3018 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3017, %struct.Memory* %loadMem_4551c4)
  br label %routine_idivl__ecx.exit415

; <label>:3019:                                   ; preds = %routine_idivl__esi.exit420
  %3020 = srem i64 %3010, %3008
  %3021 = getelementptr inbounds %union.anon, %union.anon* %2999, i64 0, i32 0
  %3022 = and i64 %3011, 4294967295
  store i64 %3022, i64* %3021, align 8
  %3023 = getelementptr inbounds %union.anon, %union.anon* %3003, i64 0, i32 0
  %3024 = and i64 %3020, 4294967295
  store i64 %3024, i64* %3023, align 8
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3025, align 1
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3026, align 1
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3027, align 1
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3028, align 1
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3029, align 1
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3030, align 1
  br label %routine_idivl__ecx.exit415

routine_idivl__ecx.exit415:                       ; preds = %3015, %3019
  %3031 = phi %struct.Memory* [ %3018, %3015 ], [ %loadMem_4551c4, %3019 ]
  store %struct.Memory* %3031, %struct.Memory** %MEMORY
  %loadMem_4551c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 33
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %3034 to i64*
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3036 = getelementptr inbounds %struct.GPR, %struct.GPR* %3035, i32 0, i32 5
  %3037 = getelementptr inbounds %struct.Reg, %struct.Reg* %3036, i32 0, i32 0
  %ECX.i411 = bitcast %union.anon* %3037 to i32*
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3039 = getelementptr inbounds %struct.GPR, %struct.GPR* %3038, i32 0, i32 9
  %3040 = getelementptr inbounds %struct.Reg, %struct.Reg* %3039, i32 0, i32 0
  %RSI.i412 = bitcast %union.anon* %3040 to i64*
  %3041 = load i32, i32* %ECX.i411
  %3042 = zext i32 %3041 to i64
  %3043 = load i64, i64* %PC.i410
  %3044 = add i64 %3043, 2
  store i64 %3044, i64* %PC.i410
  %3045 = and i64 %3042, 4294967295
  store i64 %3045, i64* %RSI.i412, align 8
  store %struct.Memory* %loadMem_4551c6, %struct.Memory** %MEMORY
  %loadMem_4551c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3047 = getelementptr inbounds %struct.GPR, %struct.GPR* %3046, i32 0, i32 33
  %3048 = getelementptr inbounds %struct.Reg, %struct.Reg* %3047, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %3048 to i64*
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3050 = getelementptr inbounds %struct.GPR, %struct.GPR* %3049, i32 0, i32 5
  %3051 = getelementptr inbounds %struct.Reg, %struct.Reg* %3050, i32 0, i32 0
  %RCX.i408 = bitcast %union.anon* %3051 to i64*
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3053 = getelementptr inbounds %struct.GPR, %struct.GPR* %3052, i32 0, i32 15
  %3054 = getelementptr inbounds %struct.Reg, %struct.Reg* %3053, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %3054 to i64*
  %3055 = load i64, i64* %RBP.i409
  %3056 = sub i64 %3055, 120
  %3057 = load i64, i64* %PC.i407
  %3058 = add i64 %3057, 3
  store i64 %3058, i64* %PC.i407
  %3059 = inttoptr i64 %3056 to i32*
  %3060 = load i32, i32* %3059
  %3061 = zext i32 %3060 to i64
  store i64 %3061, i64* %RCX.i408, align 8
  store %struct.Memory* %loadMem_4551c8, %struct.Memory** %MEMORY
  %loadMem_4551cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3063 = getelementptr inbounds %struct.GPR, %struct.GPR* %3062, i32 0, i32 33
  %3064 = getelementptr inbounds %struct.Reg, %struct.Reg* %3063, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %3064 to i64*
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 5
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %ECX.i405 = bitcast %union.anon* %3067 to i32*
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 7
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %RDX.i406 = bitcast %union.anon* %3070 to i64*
  %3071 = load i32, i32* %ECX.i405
  %3072 = zext i32 %3071 to i64
  %3073 = load i64, i64* %PC.i404
  %3074 = add i64 %3073, 2
  store i64 %3074, i64* %PC.i404
  %3075 = and i64 %3072, 4294967295
  store i64 %3075, i64* %RDX.i406, align 8
  store %struct.Memory* %loadMem_4551cb, %struct.Memory** %MEMORY
  %loadMem_4551cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3077 = getelementptr inbounds %struct.GPR, %struct.GPR* %3076, i32 0, i32 33
  %3078 = getelementptr inbounds %struct.Reg, %struct.Reg* %3077, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %3078 to i64*
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3080 = getelementptr inbounds %struct.GPR, %struct.GPR* %3079, i32 0, i32 1
  %3081 = getelementptr inbounds %struct.Reg, %struct.Reg* %3080, i32 0, i32 0
  %EAX.i402 = bitcast %union.anon* %3081 to i32*
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 5
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %RCX.i403 = bitcast %union.anon* %3084 to i64*
  %3085 = load i32, i32* %EAX.i402
  %3086 = zext i32 %3085 to i64
  %3087 = load i64, i64* %PC.i401
  %3088 = add i64 %3087, 2
  store i64 %3088, i64* %PC.i401
  %3089 = and i64 %3086, 4294967295
  store i64 %3089, i64* %RCX.i403, align 8
  store %struct.Memory* %loadMem_4551cd, %struct.Memory** %MEMORY
  %loadMem1_4551cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 33
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %3092 to i64*
  %3093 = load i64, i64* %PC.i400
  %3094 = add i64 %3093, 18785
  %3095 = load i64, i64* %PC.i400
  %3096 = add i64 %3095, 5
  %3097 = load i64, i64* %PC.i400
  %3098 = add i64 %3097, 5
  store i64 %3098, i64* %PC.i400
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3100 = load i64, i64* %3099, align 8
  %3101 = add i64 %3100, -8
  %3102 = inttoptr i64 %3101 to i64*
  store i64 %3096, i64* %3102
  store i64 %3101, i64* %3099, align 8
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3094, i64* %3103, align 8
  store %struct.Memory* %loadMem1_4551cf, %struct.Memory** %MEMORY
  %loadMem2_4551cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4551cf = load i64, i64* %3
  %call2_4551cf = call %struct.Memory* @sub_459b30.get_mem3Dint64(%struct.State* %0, i64 %loadPC_4551cf, %struct.Memory* %loadMem2_4551cf)
  store %struct.Memory* %call2_4551cf, %struct.Memory** %MEMORY
  %loadMem_4551d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 33
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %3106 to i64*
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 5
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %RCX.i399 = bitcast %union.anon* %3109 to i64*
  %3110 = load i64, i64* %PC.i398
  %3111 = add i64 %3110, 5
  store i64 %3111, i64* %PC.i398
  store i64 2, i64* %RCX.i399, align 8
  store %struct.Memory* %loadMem_4551d4, %struct.Memory** %MEMORY
  %loadMem_4551d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 33
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %3114 to i64*
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3116 = getelementptr inbounds %struct.GPR, %struct.GPR* %3115, i32 0, i32 7
  %3117 = getelementptr inbounds %struct.Reg, %struct.Reg* %3116, i32 0, i32 0
  %RDX.i397 = bitcast %union.anon* %3117 to i64*
  %3118 = load i64, i64* %PC.i396
  %3119 = add i64 %3118, 5
  store i64 %3119, i64* %PC.i396
  store i64 4, i64* %RDX.i397, align 8
  store %struct.Memory* %loadMem_4551d9, %struct.Memory** %MEMORY
  %loadMem_4551de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 33
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %3122 to i64*
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 11
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %RDI.i394 = bitcast %union.anon* %3125 to i64*
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3127 = getelementptr inbounds %struct.GPR, %struct.GPR* %3126, i32 0, i32 15
  %3128 = getelementptr inbounds %struct.Reg, %struct.Reg* %3127, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %3128 to i64*
  %3129 = load i64, i64* %RBP.i395
  %3130 = sub i64 %3129, 24
  %3131 = load i64, i64* %PC.i393
  %3132 = add i64 %3131, 4
  store i64 %3132, i64* %PC.i393
  %3133 = inttoptr i64 %3130 to i64*
  %3134 = load i64, i64* %3133
  store i64 %3134, i64* %RDI.i394, align 8
  store %struct.Memory* %loadMem_4551de, %struct.Memory** %MEMORY
  %loadMem_4551e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3136 = getelementptr inbounds %struct.GPR, %struct.GPR* %3135, i32 0, i32 33
  %3137 = getelementptr inbounds %struct.Reg, %struct.Reg* %3136, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %3137 to i64*
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3139 = getelementptr inbounds %struct.GPR, %struct.GPR* %3138, i32 0, i32 11
  %3140 = getelementptr inbounds %struct.Reg, %struct.Reg* %3139, i32 0, i32 0
  %RDI.i392 = bitcast %union.anon* %3140 to i64*
  %3141 = load i64, i64* %RDI.i392
  %3142 = load i64, i64* %PC.i391
  %3143 = add i64 %3142, 7
  store i64 %3143, i64* %PC.i391
  %3144 = add i64 3232, %3141
  store i64 %3144, i64* %RDI.i392, align 8
  %3145 = icmp ult i64 %3144, %3141
  %3146 = icmp ult i64 %3144, 3232
  %3147 = or i1 %3145, %3146
  %3148 = zext i1 %3147 to i8
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3148, i8* %3149, align 1
  %3150 = trunc i64 %3144 to i32
  %3151 = and i32 %3150, 255
  %3152 = call i32 @llvm.ctpop.i32(i32 %3151)
  %3153 = trunc i32 %3152 to i8
  %3154 = and i8 %3153, 1
  %3155 = xor i8 %3154, 1
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3155, i8* %3156, align 1
  %3157 = xor i64 3232, %3141
  %3158 = xor i64 %3157, %3144
  %3159 = lshr i64 %3158, 4
  %3160 = trunc i64 %3159 to i8
  %3161 = and i8 %3160, 1
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3161, i8* %3162, align 1
  %3163 = icmp eq i64 %3144, 0
  %3164 = zext i1 %3163 to i8
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3164, i8* %3165, align 1
  %3166 = lshr i64 %3144, 63
  %3167 = trunc i64 %3166 to i8
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3167, i8* %3168, align 1
  %3169 = lshr i64 %3141, 63
  %3170 = xor i64 %3166, %3169
  %3171 = add i64 %3170, %3166
  %3172 = icmp eq i64 %3171, 2
  %3173 = zext i1 %3172 to i8
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3173, i8* %3174, align 1
  store %struct.Memory* %loadMem_4551e2, %struct.Memory** %MEMORY
  %loadMem_4551e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3176 = getelementptr inbounds %struct.GPR, %struct.GPR* %3175, i32 0, i32 33
  %3177 = getelementptr inbounds %struct.Reg, %struct.Reg* %3176, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %3177 to i64*
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 9
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %RSI.i389 = bitcast %union.anon* %3180 to i64*
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3182 = getelementptr inbounds %struct.GPR, %struct.GPR* %3181, i32 0, i32 15
  %3183 = getelementptr inbounds %struct.Reg, %struct.Reg* %3182, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %3183 to i64*
  %3184 = load i64, i64* %RBP.i390
  %3185 = sub i64 %3184, 4
  %3186 = load i64, i64* %PC.i388
  %3187 = add i64 %3186, 3
  store i64 %3187, i64* %PC.i388
  %3188 = inttoptr i64 %3185 to i32*
  %3189 = load i32, i32* %3188
  %3190 = zext i32 %3189 to i64
  store i64 %3190, i64* %RSI.i389, align 8
  store %struct.Memory* %loadMem_4551e9, %struct.Memory** %MEMORY
  %loadMem_4551ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 33
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %3193 to i64*
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 1
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %EAX.i386 = bitcast %union.anon* %3196 to i32*
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3198 = getelementptr inbounds %struct.GPR, %struct.GPR* %3197, i32 0, i32 15
  %3199 = getelementptr inbounds %struct.Reg, %struct.Reg* %3198, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %3199 to i64*
  %3200 = load i64, i64* %RBP.i387
  %3201 = sub i64 %3200, 124
  %3202 = load i32, i32* %EAX.i386
  %3203 = zext i32 %3202 to i64
  %3204 = load i64, i64* %PC.i385
  %3205 = add i64 %3204, 3
  store i64 %3205, i64* %PC.i385
  %3206 = inttoptr i64 %3201 to i32*
  store i32 %3202, i32* %3206
  store %struct.Memory* %loadMem_4551ec, %struct.Memory** %MEMORY
  %loadMem_4551ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3208 = getelementptr inbounds %struct.GPR, %struct.GPR* %3207, i32 0, i32 33
  %3209 = getelementptr inbounds %struct.Reg, %struct.Reg* %3208, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %3209 to i64*
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3211 = getelementptr inbounds %struct.GPR, %struct.GPR* %3210, i32 0, i32 9
  %3212 = getelementptr inbounds %struct.Reg, %struct.Reg* %3211, i32 0, i32 0
  %ESI.i383 = bitcast %union.anon* %3212 to i32*
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3214 = getelementptr inbounds %struct.GPR, %struct.GPR* %3213, i32 0, i32 1
  %3215 = getelementptr inbounds %struct.Reg, %struct.Reg* %3214, i32 0, i32 0
  %RAX.i384 = bitcast %union.anon* %3215 to i64*
  %3216 = load i32, i32* %ESI.i383
  %3217 = zext i32 %3216 to i64
  %3218 = load i64, i64* %PC.i382
  %3219 = add i64 %3218, 2
  store i64 %3219, i64* %PC.i382
  %3220 = and i64 %3217, 4294967295
  store i64 %3220, i64* %RAX.i384, align 8
  store %struct.Memory* %loadMem_4551ef, %struct.Memory** %MEMORY
  %loadMem_4551f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3222 = getelementptr inbounds %struct.GPR, %struct.GPR* %3221, i32 0, i32 33
  %3223 = getelementptr inbounds %struct.Reg, %struct.Reg* %3222, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %3223 to i64*
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3225 = getelementptr inbounds %struct.GPR, %struct.GPR* %3224, i32 0, i32 7
  %3226 = getelementptr inbounds %struct.Reg, %struct.Reg* %3225, i32 0, i32 0
  %EDX.i380 = bitcast %union.anon* %3226 to i32*
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3228 = getelementptr inbounds %struct.GPR, %struct.GPR* %3227, i32 0, i32 15
  %3229 = getelementptr inbounds %struct.Reg, %struct.Reg* %3228, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %3229 to i64*
  %3230 = load i64, i64* %RBP.i381
  %3231 = sub i64 %3230, 128
  %3232 = load i32, i32* %EDX.i380
  %3233 = zext i32 %3232 to i64
  %3234 = load i64, i64* %PC.i379
  %3235 = add i64 %3234, 3
  store i64 %3235, i64* %PC.i379
  %3236 = inttoptr i64 %3231 to i32*
  store i32 %3232, i32* %3236
  store %struct.Memory* %loadMem_4551f1, %struct.Memory** %MEMORY
  %loadMem_4551f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 33
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %3239 to i64*
  %3240 = load i64, i64* %PC.i378
  %3241 = add i64 %3240, 1
  store i64 %3241, i64* %PC.i378
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3244 = bitcast %union.anon* %3243 to i32*
  %3245 = load i32, i32* %3244, align 8
  %3246 = sext i32 %3245 to i64
  %3247 = lshr i64 %3246, 32
  store i64 %3247, i64* %3242, align 8
  store %struct.Memory* %loadMem_4551f4, %struct.Memory** %MEMORY
  %loadMem_4551f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3249 = getelementptr inbounds %struct.GPR, %struct.GPR* %3248, i32 0, i32 33
  %3250 = getelementptr inbounds %struct.Reg, %struct.Reg* %3249, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %3250 to i64*
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 9
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %RSI.i376 = bitcast %union.anon* %3253 to i64*
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3255 = getelementptr inbounds %struct.GPR, %struct.GPR* %3254, i32 0, i32 15
  %3256 = getelementptr inbounds %struct.Reg, %struct.Reg* %3255, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %3256 to i64*
  %3257 = load i64, i64* %RBP.i377
  %3258 = sub i64 %3257, 128
  %3259 = load i64, i64* %PC.i375
  %3260 = add i64 %3259, 3
  store i64 %3260, i64* %PC.i375
  %3261 = inttoptr i64 %3258 to i32*
  %3262 = load i32, i32* %3261
  %3263 = zext i32 %3262 to i64
  store i64 %3263, i64* %RSI.i376, align 8
  store %struct.Memory* %loadMem_4551f5, %struct.Memory** %MEMORY
  %loadMem_4551f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3265 = getelementptr inbounds %struct.GPR, %struct.GPR* %3264, i32 0, i32 33
  %3266 = getelementptr inbounds %struct.Reg, %struct.Reg* %3265, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %3266 to i64*
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3268 = getelementptr inbounds %struct.GPR, %struct.GPR* %3267, i32 0, i32 9
  %3269 = getelementptr inbounds %struct.Reg, %struct.Reg* %3268, i32 0, i32 0
  %ESI.i371 = bitcast %union.anon* %3269 to i32*
  %3270 = load i32, i32* %ESI.i371
  %3271 = zext i32 %3270 to i64
  %3272 = load i64, i64* %PC.i370
  %3273 = add i64 %3272, 2
  store i64 %3273, i64* %PC.i370
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3275 = bitcast %union.anon* %3274 to i32*
  %3276 = load i32, i32* %3275, align 8
  %3277 = zext i32 %3276 to i64
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3279 = bitcast %union.anon* %3278 to i32*
  %3280 = load i32, i32* %3279, align 8
  %3281 = zext i32 %3280 to i64
  %3282 = shl i64 %3271, 32
  %3283 = ashr exact i64 %3282, 32
  %3284 = shl i64 %3281, 32
  %3285 = or i64 %3284, %3277
  %3286 = sdiv i64 %3285, %3283
  %3287 = shl i64 %3286, 32
  %3288 = ashr exact i64 %3287, 32
  %3289 = icmp eq i64 %3286, %3288
  br i1 %3289, label %3294, label %3290

; <label>:3290:                                   ; preds = %routine_idivl__ecx.exit415
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3292 = load i64, i64* %3291, align 8
  %3293 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3292, %struct.Memory* %loadMem_4551f8)
  br label %routine_idivl__esi.exit372

; <label>:3294:                                   ; preds = %routine_idivl__ecx.exit415
  %3295 = srem i64 %3285, %3283
  %3296 = getelementptr inbounds %union.anon, %union.anon* %3274, i64 0, i32 0
  %3297 = and i64 %3286, 4294967295
  store i64 %3297, i64* %3296, align 8
  %3298 = getelementptr inbounds %union.anon, %union.anon* %3278, i64 0, i32 0
  %3299 = and i64 %3295, 4294967295
  store i64 %3299, i64* %3298, align 8
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3300, align 1
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3301, align 1
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3302, align 1
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3303, align 1
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3304, align 1
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3305, align 1
  br label %routine_idivl__esi.exit372

routine_idivl__esi.exit372:                       ; preds = %3290, %3294
  %3306 = phi %struct.Memory* [ %3293, %3290 ], [ %loadMem_4551f8, %3294 ]
  store %struct.Memory* %3306, %struct.Memory** %MEMORY
  %loadMem_4551fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3308 = getelementptr inbounds %struct.GPR, %struct.GPR* %3307, i32 0, i32 33
  %3309 = getelementptr inbounds %struct.Reg, %struct.Reg* %3308, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %3309 to i64*
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3311 = getelementptr inbounds %struct.GPR, %struct.GPR* %3310, i32 0, i32 17
  %3312 = getelementptr inbounds %struct.Reg, %struct.Reg* %3311, i32 0, i32 0
  %R8D.i368 = bitcast %union.anon* %3312 to i32*
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3314 = getelementptr inbounds %struct.GPR, %struct.GPR* %3313, i32 0, i32 15
  %3315 = getelementptr inbounds %struct.Reg, %struct.Reg* %3314, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %3315 to i64*
  %3316 = bitcast i32* %R8D.i368 to i64*
  %3317 = load i64, i64* %RBP.i369
  %3318 = sub i64 %3317, 8
  %3319 = load i64, i64* %PC.i367
  %3320 = add i64 %3319, 4
  store i64 %3320, i64* %PC.i367
  %3321 = inttoptr i64 %3318 to i32*
  %3322 = load i32, i32* %3321
  %3323 = zext i32 %3322 to i64
  store i64 %3323, i64* %3316, align 8
  store %struct.Memory* %loadMem_4551fa, %struct.Memory** %MEMORY
  %loadMem_4551fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 33
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %3326 to i64*
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 1
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %EAX.i365 = bitcast %union.anon* %3329 to i32*
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 15
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %3332 to i64*
  %3333 = load i64, i64* %RBP.i366
  %3334 = sub i64 %3333, 132
  %3335 = load i32, i32* %EAX.i365
  %3336 = zext i32 %3335 to i64
  %3337 = load i64, i64* %PC.i364
  %3338 = add i64 %3337, 6
  store i64 %3338, i64* %PC.i364
  %3339 = inttoptr i64 %3334 to i32*
  store i32 %3335, i32* %3339
  store %struct.Memory* %loadMem_4551fe, %struct.Memory** %MEMORY
  %loadMem_455204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3341 = getelementptr inbounds %struct.GPR, %struct.GPR* %3340, i32 0, i32 33
  %3342 = getelementptr inbounds %struct.Reg, %struct.Reg* %3341, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %3342 to i64*
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3344 = getelementptr inbounds %struct.GPR, %struct.GPR* %3343, i32 0, i32 17
  %3345 = getelementptr inbounds %struct.Reg, %struct.Reg* %3344, i32 0, i32 0
  %R8D.i362 = bitcast %union.anon* %3345 to i32*
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3347 = getelementptr inbounds %struct.GPR, %struct.GPR* %3346, i32 0, i32 1
  %3348 = getelementptr inbounds %struct.Reg, %struct.Reg* %3347, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %3348 to i64*
  %3349 = load i32, i32* %R8D.i362
  %3350 = zext i32 %3349 to i64
  %3351 = load i64, i64* %PC.i361
  %3352 = add i64 %3351, 3
  store i64 %3352, i64* %PC.i361
  %3353 = and i64 %3350, 4294967295
  store i64 %3353, i64* %RAX.i363, align 8
  store %struct.Memory* %loadMem_455204, %struct.Memory** %MEMORY
  %loadMem_455207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 33
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %3356 to i64*
  %3357 = load i64, i64* %PC.i360
  %3358 = add i64 %3357, 1
  store i64 %3358, i64* %PC.i360
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3361 = bitcast %union.anon* %3360 to i32*
  %3362 = load i32, i32* %3361, align 8
  %3363 = sext i32 %3362 to i64
  %3364 = lshr i64 %3363, 32
  store i64 %3364, i64* %3359, align 8
  store %struct.Memory* %loadMem_455207, %struct.Memory** %MEMORY
  %loadMem_455208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3366 = getelementptr inbounds %struct.GPR, %struct.GPR* %3365, i32 0, i32 33
  %3367 = getelementptr inbounds %struct.Reg, %struct.Reg* %3366, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %3367 to i64*
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3369 = getelementptr inbounds %struct.GPR, %struct.GPR* %3368, i32 0, i32 9
  %3370 = getelementptr inbounds %struct.Reg, %struct.Reg* %3369, i32 0, i32 0
  %ESI.i357 = bitcast %union.anon* %3370 to i32*
  %3371 = load i32, i32* %ESI.i357
  %3372 = zext i32 %3371 to i64
  %3373 = load i64, i64* %PC.i356
  %3374 = add i64 %3373, 2
  store i64 %3374, i64* %PC.i356
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3376 = bitcast %union.anon* %3375 to i32*
  %3377 = load i32, i32* %3376, align 8
  %3378 = zext i32 %3377 to i64
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3380 = bitcast %union.anon* %3379 to i32*
  %3381 = load i32, i32* %3380, align 8
  %3382 = zext i32 %3381 to i64
  %3383 = shl i64 %3372, 32
  %3384 = ashr exact i64 %3383, 32
  %3385 = shl i64 %3382, 32
  %3386 = or i64 %3385, %3378
  %3387 = sdiv i64 %3386, %3384
  %3388 = shl i64 %3387, 32
  %3389 = ashr exact i64 %3388, 32
  %3390 = icmp eq i64 %3387, %3389
  br i1 %3390, label %3395, label %3391

; <label>:3391:                                   ; preds = %routine_idivl__esi.exit372
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3393 = load i64, i64* %3392, align 8
  %3394 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3393, %struct.Memory* %loadMem_455208)
  br label %routine_idivl__esi.exit358

; <label>:3395:                                   ; preds = %routine_idivl__esi.exit372
  %3396 = srem i64 %3386, %3384
  %3397 = getelementptr inbounds %union.anon, %union.anon* %3375, i64 0, i32 0
  %3398 = and i64 %3387, 4294967295
  store i64 %3398, i64* %3397, align 8
  %3399 = getelementptr inbounds %union.anon, %union.anon* %3379, i64 0, i32 0
  %3400 = and i64 %3396, 4294967295
  store i64 %3400, i64* %3399, align 8
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3401, align 1
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3402, align 1
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3403, align 1
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3404, align 1
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3405, align 1
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3406, align 1
  br label %routine_idivl__esi.exit358

routine_idivl__esi.exit358:                       ; preds = %3391, %3395
  %3407 = phi %struct.Memory* [ %3394, %3391 ], [ %loadMem_455208, %3395 ]
  store %struct.Memory* %3407, %struct.Memory** %MEMORY
  %loadMem_45520a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 33
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %3410 to i64*
  %3411 = load i64, i64* %PC.i355
  %3412 = add i64 %3411, 1
  store i64 %3412, i64* %PC.i355
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3415 = bitcast %union.anon* %3414 to i32*
  %3416 = load i32, i32* %3415, align 8
  %3417 = sext i32 %3416 to i64
  %3418 = lshr i64 %3417, 32
  store i64 %3418, i64* %3413, align 8
  store %struct.Memory* %loadMem_45520a, %struct.Memory** %MEMORY
  %loadMem_45520b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3420 = getelementptr inbounds %struct.GPR, %struct.GPR* %3419, i32 0, i32 33
  %3421 = getelementptr inbounds %struct.Reg, %struct.Reg* %3420, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %3421 to i64*
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3423 = getelementptr inbounds %struct.GPR, %struct.GPR* %3422, i32 0, i32 5
  %3424 = getelementptr inbounds %struct.Reg, %struct.Reg* %3423, i32 0, i32 0
  %ECX.i350 = bitcast %union.anon* %3424 to i32*
  %3425 = load i32, i32* %ECX.i350
  %3426 = zext i32 %3425 to i64
  %3427 = load i64, i64* %PC.i349
  %3428 = add i64 %3427, 2
  store i64 %3428, i64* %PC.i349
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3430 = bitcast %union.anon* %3429 to i32*
  %3431 = load i32, i32* %3430, align 8
  %3432 = zext i32 %3431 to i64
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3434 = bitcast %union.anon* %3433 to i32*
  %3435 = load i32, i32* %3434, align 8
  %3436 = zext i32 %3435 to i64
  %3437 = shl i64 %3426, 32
  %3438 = ashr exact i64 %3437, 32
  %3439 = shl i64 %3436, 32
  %3440 = or i64 %3439, %3432
  %3441 = sdiv i64 %3440, %3438
  %3442 = shl i64 %3441, 32
  %3443 = ashr exact i64 %3442, 32
  %3444 = icmp eq i64 %3441, %3443
  br i1 %3444, label %3449, label %3445

; <label>:3445:                                   ; preds = %routine_idivl__esi.exit358
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3447 = load i64, i64* %3446, align 8
  %3448 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3447, %struct.Memory* %loadMem_45520b)
  br label %routine_idivl__ecx.exit351

; <label>:3449:                                   ; preds = %routine_idivl__esi.exit358
  %3450 = srem i64 %3440, %3438
  %3451 = getelementptr inbounds %union.anon, %union.anon* %3429, i64 0, i32 0
  %3452 = and i64 %3441, 4294967295
  store i64 %3452, i64* %3451, align 8
  %3453 = getelementptr inbounds %union.anon, %union.anon* %3433, i64 0, i32 0
  %3454 = and i64 %3450, 4294967295
  store i64 %3454, i64* %3453, align 8
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3455, align 1
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3456, align 1
  %3457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3457, align 1
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3458, align 1
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3459, align 1
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3460, align 1
  br label %routine_idivl__ecx.exit351

routine_idivl__ecx.exit351:                       ; preds = %3445, %3449
  %3461 = phi %struct.Memory* [ %3448, %3445 ], [ %loadMem_45520b, %3449 ]
  store %struct.Memory* %3461, %struct.Memory** %MEMORY
  %loadMem_45520d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3463 = getelementptr inbounds %struct.GPR, %struct.GPR* %3462, i32 0, i32 33
  %3464 = getelementptr inbounds %struct.Reg, %struct.Reg* %3463, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %3464 to i64*
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3466 = getelementptr inbounds %struct.GPR, %struct.GPR* %3465, i32 0, i32 5
  %3467 = getelementptr inbounds %struct.Reg, %struct.Reg* %3466, i32 0, i32 0
  %ECX.i347 = bitcast %union.anon* %3467 to i32*
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 9
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %RSI.i348 = bitcast %union.anon* %3470 to i64*
  %3471 = load i32, i32* %ECX.i347
  %3472 = zext i32 %3471 to i64
  %3473 = load i64, i64* %PC.i346
  %3474 = add i64 %3473, 2
  store i64 %3474, i64* %PC.i346
  %3475 = and i64 %3472, 4294967295
  store i64 %3475, i64* %RSI.i348, align 8
  store %struct.Memory* %loadMem_45520d, %struct.Memory** %MEMORY
  %loadMem_45520f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3477 = getelementptr inbounds %struct.GPR, %struct.GPR* %3476, i32 0, i32 33
  %3478 = getelementptr inbounds %struct.Reg, %struct.Reg* %3477, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %3478 to i64*
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3480 = getelementptr inbounds %struct.GPR, %struct.GPR* %3479, i32 0, i32 17
  %3481 = getelementptr inbounds %struct.Reg, %struct.Reg* %3480, i32 0, i32 0
  %R8D.i344 = bitcast %union.anon* %3481 to i32*
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 15
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %3484 to i64*
  %3485 = bitcast i32* %R8D.i344 to i64*
  %3486 = load i64, i64* %RBP.i345
  %3487 = sub i64 %3486, 132
  %3488 = load i64, i64* %PC.i343
  %3489 = add i64 %3488, 7
  store i64 %3489, i64* %PC.i343
  %3490 = inttoptr i64 %3487 to i32*
  %3491 = load i32, i32* %3490
  %3492 = zext i32 %3491 to i64
  store i64 %3492, i64* %3485, align 8
  store %struct.Memory* %loadMem_45520f, %struct.Memory** %MEMORY
  %loadMem_455216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 33
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %3495 to i64*
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 17
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %R8D.i341 = bitcast %union.anon* %3498 to i32*
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3500 = getelementptr inbounds %struct.GPR, %struct.GPR* %3499, i32 0, i32 7
  %3501 = getelementptr inbounds %struct.Reg, %struct.Reg* %3500, i32 0, i32 0
  %RDX.i342 = bitcast %union.anon* %3501 to i64*
  %3502 = load i32, i32* %R8D.i341
  %3503 = zext i32 %3502 to i64
  %3504 = load i64, i64* %PC.i340
  %3505 = add i64 %3504, 3
  store i64 %3505, i64* %PC.i340
  %3506 = and i64 %3503, 4294967295
  store i64 %3506, i64* %RDX.i342, align 8
  store %struct.Memory* %loadMem_455216, %struct.Memory** %MEMORY
  %loadMem_455219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3508 = getelementptr inbounds %struct.GPR, %struct.GPR* %3507, i32 0, i32 33
  %3509 = getelementptr inbounds %struct.Reg, %struct.Reg* %3508, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %3509 to i64*
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3511 = getelementptr inbounds %struct.GPR, %struct.GPR* %3510, i32 0, i32 5
  %3512 = getelementptr inbounds %struct.Reg, %struct.Reg* %3511, i32 0, i32 0
  %ECX.i338 = bitcast %union.anon* %3512 to i32*
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3514 = getelementptr inbounds %struct.GPR, %struct.GPR* %3513, i32 0, i32 15
  %3515 = getelementptr inbounds %struct.Reg, %struct.Reg* %3514, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %3515 to i64*
  %3516 = load i64, i64* %RBP.i339
  %3517 = sub i64 %3516, 136
  %3518 = load i32, i32* %ECX.i338
  %3519 = zext i32 %3518 to i64
  %3520 = load i64, i64* %PC.i337
  %3521 = add i64 %3520, 6
  store i64 %3521, i64* %PC.i337
  %3522 = inttoptr i64 %3517 to i32*
  store i32 %3518, i32* %3522
  store %struct.Memory* %loadMem_455219, %struct.Memory** %MEMORY
  %loadMem_45521f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3524 = getelementptr inbounds %struct.GPR, %struct.GPR* %3523, i32 0, i32 33
  %3525 = getelementptr inbounds %struct.Reg, %struct.Reg* %3524, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %3525 to i64*
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3527 = getelementptr inbounds %struct.GPR, %struct.GPR* %3526, i32 0, i32 1
  %3528 = getelementptr inbounds %struct.Reg, %struct.Reg* %3527, i32 0, i32 0
  %EAX.i335 = bitcast %union.anon* %3528 to i32*
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3530 = getelementptr inbounds %struct.GPR, %struct.GPR* %3529, i32 0, i32 5
  %3531 = getelementptr inbounds %struct.Reg, %struct.Reg* %3530, i32 0, i32 0
  %RCX.i336 = bitcast %union.anon* %3531 to i64*
  %3532 = load i32, i32* %EAX.i335
  %3533 = zext i32 %3532 to i64
  %3534 = load i64, i64* %PC.i334
  %3535 = add i64 %3534, 2
  store i64 %3535, i64* %PC.i334
  %3536 = and i64 %3533, 4294967295
  store i64 %3536, i64* %RCX.i336, align 8
  store %struct.Memory* %loadMem_45521f, %struct.Memory** %MEMORY
  %loadMem_455221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3538 = getelementptr inbounds %struct.GPR, %struct.GPR* %3537, i32 0, i32 33
  %3539 = getelementptr inbounds %struct.Reg, %struct.Reg* %3538, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %3539 to i64*
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3541 = getelementptr inbounds %struct.GPR, %struct.GPR* %3540, i32 0, i32 17
  %3542 = getelementptr inbounds %struct.Reg, %struct.Reg* %3541, i32 0, i32 0
  %R8D.i332 = bitcast %union.anon* %3542 to i32*
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3544 = getelementptr inbounds %struct.GPR, %struct.GPR* %3543, i32 0, i32 15
  %3545 = getelementptr inbounds %struct.Reg, %struct.Reg* %3544, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %3545 to i64*
  %3546 = bitcast i32* %R8D.i332 to i64*
  %3547 = load i64, i64* %RBP.i333
  %3548 = sub i64 %3547, 136
  %3549 = load i64, i64* %PC.i331
  %3550 = add i64 %3549, 7
  store i64 %3550, i64* %PC.i331
  %3551 = inttoptr i64 %3548 to i32*
  %3552 = load i32, i32* %3551
  %3553 = zext i32 %3552 to i64
  store i64 %3553, i64* %3546, align 8
  store %struct.Memory* %loadMem_455221, %struct.Memory** %MEMORY
  %loadMem1_455228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3555 = getelementptr inbounds %struct.GPR, %struct.GPR* %3554, i32 0, i32 33
  %3556 = getelementptr inbounds %struct.Reg, %struct.Reg* %3555, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %3556 to i64*
  %3557 = load i64, i64* %PC.i330
  %3558 = add i64 %3557, 20376
  %3559 = load i64, i64* %PC.i330
  %3560 = add i64 %3559, 5
  %3561 = load i64, i64* %PC.i330
  %3562 = add i64 %3561, 5
  store i64 %3562, i64* %PC.i330
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3564 = load i64, i64* %3563, align 8
  %3565 = add i64 %3564, -8
  %3566 = inttoptr i64 %3565 to i64*
  store i64 %3560, i64* %3566
  store i64 %3565, i64* %3563, align 8
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3558, i64* %3567, align 8
  store %struct.Memory* %loadMem1_455228, %struct.Memory** %MEMORY
  %loadMem2_455228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_455228 = load i64, i64* %3
  %call2_455228 = call %struct.Memory* @sub_45a1c0.get_mem4Dshort(%struct.State* %0, i64 %loadPC_455228, %struct.Memory* %loadMem2_455228)
  store %struct.Memory* %call2_455228, %struct.Memory** %MEMORY
  %loadMem_45522d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 33
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %3570 to i64*
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 5
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %RCX.i329 = bitcast %union.anon* %3573 to i64*
  %3574 = load i64, i64* %PC.i328
  %3575 = add i64 %3574, 5
  store i64 %3575, i64* %PC.i328
  store i64 2, i64* %RCX.i329, align 8
  store %struct.Memory* %loadMem_45522d, %struct.Memory** %MEMORY
  %loadMem_455232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3577 = getelementptr inbounds %struct.GPR, %struct.GPR* %3576, i32 0, i32 33
  %3578 = getelementptr inbounds %struct.Reg, %struct.Reg* %3577, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %3578 to i64*
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3580 = getelementptr inbounds %struct.GPR, %struct.GPR* %3579, i32 0, i32 7
  %3581 = getelementptr inbounds %struct.Reg, %struct.Reg* %3580, i32 0, i32 0
  %RDX.i327 = bitcast %union.anon* %3581 to i64*
  %3582 = load i64, i64* %PC.i326
  %3583 = add i64 %3582, 5
  store i64 %3583, i64* %PC.i326
  store i64 4, i64* %RDX.i327, align 8
  store %struct.Memory* %loadMem_455232, %struct.Memory** %MEMORY
  %loadMem_455237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3585 = getelementptr inbounds %struct.GPR, %struct.GPR* %3584, i32 0, i32 33
  %3586 = getelementptr inbounds %struct.Reg, %struct.Reg* %3585, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %3586 to i64*
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3588 = getelementptr inbounds %struct.GPR, %struct.GPR* %3587, i32 0, i32 11
  %3589 = getelementptr inbounds %struct.Reg, %struct.Reg* %3588, i32 0, i32 0
  %RDI.i324 = bitcast %union.anon* %3589 to i64*
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 15
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %3592 to i64*
  %3593 = load i64, i64* %RBP.i325
  %3594 = sub i64 %3593, 24
  %3595 = load i64, i64* %PC.i323
  %3596 = add i64 %3595, 4
  store i64 %3596, i64* %PC.i323
  %3597 = inttoptr i64 %3594 to i64*
  %3598 = load i64, i64* %3597
  store i64 %3598, i64* %RDI.i324, align 8
  store %struct.Memory* %loadMem_455237, %struct.Memory** %MEMORY
  %loadMem_45523b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3600 = getelementptr inbounds %struct.GPR, %struct.GPR* %3599, i32 0, i32 33
  %3601 = getelementptr inbounds %struct.Reg, %struct.Reg* %3600, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %3601 to i64*
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3603 = getelementptr inbounds %struct.GPR, %struct.GPR* %3602, i32 0, i32 11
  %3604 = getelementptr inbounds %struct.Reg, %struct.Reg* %3603, i32 0, i32 0
  %RDI.i322 = bitcast %union.anon* %3604 to i64*
  %3605 = load i64, i64* %RDI.i322
  %3606 = load i64, i64* %PC.i321
  %3607 = add i64 %3606, 7
  store i64 %3607, i64* %PC.i321
  %3608 = add i64 3240, %3605
  store i64 %3608, i64* %RDI.i322, align 8
  %3609 = icmp ult i64 %3608, %3605
  %3610 = icmp ult i64 %3608, 3240
  %3611 = or i1 %3609, %3610
  %3612 = zext i1 %3611 to i8
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3612, i8* %3613, align 1
  %3614 = trunc i64 %3608 to i32
  %3615 = and i32 %3614, 255
  %3616 = call i32 @llvm.ctpop.i32(i32 %3615)
  %3617 = trunc i32 %3616 to i8
  %3618 = and i8 %3617, 1
  %3619 = xor i8 %3618, 1
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3619, i8* %3620, align 1
  %3621 = xor i64 3240, %3605
  %3622 = xor i64 %3621, %3608
  %3623 = lshr i64 %3622, 4
  %3624 = trunc i64 %3623 to i8
  %3625 = and i8 %3624, 1
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3625, i8* %3626, align 1
  %3627 = icmp eq i64 %3608, 0
  %3628 = zext i1 %3627 to i8
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3628, i8* %3629, align 1
  %3630 = lshr i64 %3608, 63
  %3631 = trunc i64 %3630 to i8
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3631, i8* %3632, align 1
  %3633 = lshr i64 %3605, 63
  %3634 = xor i64 %3630, %3633
  %3635 = add i64 %3634, %3630
  %3636 = icmp eq i64 %3635, 2
  %3637 = zext i1 %3636 to i8
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3637, i8* %3638, align 1
  store %struct.Memory* %loadMem_45523b, %struct.Memory** %MEMORY
  %loadMem_455242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3640 = getelementptr inbounds %struct.GPR, %struct.GPR* %3639, i32 0, i32 33
  %3641 = getelementptr inbounds %struct.Reg, %struct.Reg* %3640, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %3641 to i64*
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3643 = getelementptr inbounds %struct.GPR, %struct.GPR* %3642, i32 0, i32 9
  %3644 = getelementptr inbounds %struct.Reg, %struct.Reg* %3643, i32 0, i32 0
  %RSI.i319 = bitcast %union.anon* %3644 to i64*
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3646 = getelementptr inbounds %struct.GPR, %struct.GPR* %3645, i32 0, i32 15
  %3647 = getelementptr inbounds %struct.Reg, %struct.Reg* %3646, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %3647 to i64*
  %3648 = load i64, i64* %RBP.i320
  %3649 = sub i64 %3648, 4
  %3650 = load i64, i64* %PC.i318
  %3651 = add i64 %3650, 3
  store i64 %3651, i64* %PC.i318
  %3652 = inttoptr i64 %3649 to i32*
  %3653 = load i32, i32* %3652
  %3654 = zext i32 %3653 to i64
  store i64 %3654, i64* %RSI.i319, align 8
  store %struct.Memory* %loadMem_455242, %struct.Memory** %MEMORY
  %loadMem_455245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3656 = getelementptr inbounds %struct.GPR, %struct.GPR* %3655, i32 0, i32 33
  %3657 = getelementptr inbounds %struct.Reg, %struct.Reg* %3656, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %3657 to i64*
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3659 = getelementptr inbounds %struct.GPR, %struct.GPR* %3658, i32 0, i32 1
  %3660 = getelementptr inbounds %struct.Reg, %struct.Reg* %3659, i32 0, i32 0
  %EAX.i316 = bitcast %union.anon* %3660 to i32*
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3662 = getelementptr inbounds %struct.GPR, %struct.GPR* %3661, i32 0, i32 15
  %3663 = getelementptr inbounds %struct.Reg, %struct.Reg* %3662, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %3663 to i64*
  %3664 = load i64, i64* %RBP.i317
  %3665 = sub i64 %3664, 140
  %3666 = load i32, i32* %EAX.i316
  %3667 = zext i32 %3666 to i64
  %3668 = load i64, i64* %PC.i315
  %3669 = add i64 %3668, 6
  store i64 %3669, i64* %PC.i315
  %3670 = inttoptr i64 %3665 to i32*
  store i32 %3666, i32* %3670
  store %struct.Memory* %loadMem_455245, %struct.Memory** %MEMORY
  %loadMem_45524b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3672 = getelementptr inbounds %struct.GPR, %struct.GPR* %3671, i32 0, i32 33
  %3673 = getelementptr inbounds %struct.Reg, %struct.Reg* %3672, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %3673 to i64*
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3675 = getelementptr inbounds %struct.GPR, %struct.GPR* %3674, i32 0, i32 9
  %3676 = getelementptr inbounds %struct.Reg, %struct.Reg* %3675, i32 0, i32 0
  %ESI.i313 = bitcast %union.anon* %3676 to i32*
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3678 = getelementptr inbounds %struct.GPR, %struct.GPR* %3677, i32 0, i32 1
  %3679 = getelementptr inbounds %struct.Reg, %struct.Reg* %3678, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %3679 to i64*
  %3680 = load i32, i32* %ESI.i313
  %3681 = zext i32 %3680 to i64
  %3682 = load i64, i64* %PC.i312
  %3683 = add i64 %3682, 2
  store i64 %3683, i64* %PC.i312
  %3684 = and i64 %3681, 4294967295
  store i64 %3684, i64* %RAX.i314, align 8
  store %struct.Memory* %loadMem_45524b, %struct.Memory** %MEMORY
  %loadMem_45524d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 33
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %3687 to i64*
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 7
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %EDX.i310 = bitcast %union.anon* %3690 to i32*
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3692 = getelementptr inbounds %struct.GPR, %struct.GPR* %3691, i32 0, i32 15
  %3693 = getelementptr inbounds %struct.Reg, %struct.Reg* %3692, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %3693 to i64*
  %3694 = load i64, i64* %RBP.i311
  %3695 = sub i64 %3694, 144
  %3696 = load i32, i32* %EDX.i310
  %3697 = zext i32 %3696 to i64
  %3698 = load i64, i64* %PC.i309
  %3699 = add i64 %3698, 6
  store i64 %3699, i64* %PC.i309
  %3700 = inttoptr i64 %3695 to i32*
  store i32 %3696, i32* %3700
  store %struct.Memory* %loadMem_45524d, %struct.Memory** %MEMORY
  %loadMem_455253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3702 = getelementptr inbounds %struct.GPR, %struct.GPR* %3701, i32 0, i32 33
  %3703 = getelementptr inbounds %struct.Reg, %struct.Reg* %3702, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %3703 to i64*
  %3704 = load i64, i64* %PC.i308
  %3705 = add i64 %3704, 1
  store i64 %3705, i64* %PC.i308
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3708 = bitcast %union.anon* %3707 to i32*
  %3709 = load i32, i32* %3708, align 8
  %3710 = sext i32 %3709 to i64
  %3711 = lshr i64 %3710, 32
  store i64 %3711, i64* %3706, align 8
  store %struct.Memory* %loadMem_455253, %struct.Memory** %MEMORY
  %loadMem_455254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3713 = getelementptr inbounds %struct.GPR, %struct.GPR* %3712, i32 0, i32 33
  %3714 = getelementptr inbounds %struct.Reg, %struct.Reg* %3713, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %3714 to i64*
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3716 = getelementptr inbounds %struct.GPR, %struct.GPR* %3715, i32 0, i32 9
  %3717 = getelementptr inbounds %struct.Reg, %struct.Reg* %3716, i32 0, i32 0
  %RSI.i306 = bitcast %union.anon* %3717 to i64*
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3719 = getelementptr inbounds %struct.GPR, %struct.GPR* %3718, i32 0, i32 15
  %3720 = getelementptr inbounds %struct.Reg, %struct.Reg* %3719, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %3720 to i64*
  %3721 = load i64, i64* %RBP.i307
  %3722 = sub i64 %3721, 144
  %3723 = load i64, i64* %PC.i305
  %3724 = add i64 %3723, 6
  store i64 %3724, i64* %PC.i305
  %3725 = inttoptr i64 %3722 to i32*
  %3726 = load i32, i32* %3725
  %3727 = zext i32 %3726 to i64
  store i64 %3727, i64* %RSI.i306, align 8
  store %struct.Memory* %loadMem_455254, %struct.Memory** %MEMORY
  %loadMem_45525a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3729 = getelementptr inbounds %struct.GPR, %struct.GPR* %3728, i32 0, i32 33
  %3730 = getelementptr inbounds %struct.Reg, %struct.Reg* %3729, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %3730 to i64*
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3732 = getelementptr inbounds %struct.GPR, %struct.GPR* %3731, i32 0, i32 9
  %3733 = getelementptr inbounds %struct.Reg, %struct.Reg* %3732, i32 0, i32 0
  %ESI.i300 = bitcast %union.anon* %3733 to i32*
  %3734 = load i32, i32* %ESI.i300
  %3735 = zext i32 %3734 to i64
  %3736 = load i64, i64* %PC.i299
  %3737 = add i64 %3736, 2
  store i64 %3737, i64* %PC.i299
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3739 = bitcast %union.anon* %3738 to i32*
  %3740 = load i32, i32* %3739, align 8
  %3741 = zext i32 %3740 to i64
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3743 = bitcast %union.anon* %3742 to i32*
  %3744 = load i32, i32* %3743, align 8
  %3745 = zext i32 %3744 to i64
  %3746 = shl i64 %3735, 32
  %3747 = ashr exact i64 %3746, 32
  %3748 = shl i64 %3745, 32
  %3749 = or i64 %3748, %3741
  %3750 = sdiv i64 %3749, %3747
  %3751 = shl i64 %3750, 32
  %3752 = ashr exact i64 %3751, 32
  %3753 = icmp eq i64 %3750, %3752
  br i1 %3753, label %3758, label %3754

; <label>:3754:                                   ; preds = %routine_idivl__ecx.exit351
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3756 = load i64, i64* %3755, align 8
  %3757 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3756, %struct.Memory* %loadMem_45525a)
  br label %routine_idivl__esi.exit301

; <label>:3758:                                   ; preds = %routine_idivl__ecx.exit351
  %3759 = srem i64 %3749, %3747
  %3760 = getelementptr inbounds %union.anon, %union.anon* %3738, i64 0, i32 0
  %3761 = and i64 %3750, 4294967295
  store i64 %3761, i64* %3760, align 8
  %3762 = getelementptr inbounds %union.anon, %union.anon* %3742, i64 0, i32 0
  %3763 = and i64 %3759, 4294967295
  store i64 %3763, i64* %3762, align 8
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3764, align 1
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3765, align 1
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3766, align 1
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3767, align 1
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3768, align 1
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3769, align 1
  br label %routine_idivl__esi.exit301

routine_idivl__esi.exit301:                       ; preds = %3754, %3758
  %3770 = phi %struct.Memory* [ %3757, %3754 ], [ %loadMem_45525a, %3758 ]
  store %struct.Memory* %3770, %struct.Memory** %MEMORY
  %loadMem_45525c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 33
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %3773 to i64*
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 17
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %R8D.i297 = bitcast %union.anon* %3776 to i32*
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3778 = getelementptr inbounds %struct.GPR, %struct.GPR* %3777, i32 0, i32 15
  %3779 = getelementptr inbounds %struct.Reg, %struct.Reg* %3778, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %3779 to i64*
  %3780 = bitcast i32* %R8D.i297 to i64*
  %3781 = load i64, i64* %RBP.i298
  %3782 = sub i64 %3781, 8
  %3783 = load i64, i64* %PC.i296
  %3784 = add i64 %3783, 4
  store i64 %3784, i64* %PC.i296
  %3785 = inttoptr i64 %3782 to i32*
  %3786 = load i32, i32* %3785
  %3787 = zext i32 %3786 to i64
  store i64 %3787, i64* %3780, align 8
  store %struct.Memory* %loadMem_45525c, %struct.Memory** %MEMORY
  %loadMem_455260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 33
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %3790 to i64*
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3792 = getelementptr inbounds %struct.GPR, %struct.GPR* %3791, i32 0, i32 1
  %3793 = getelementptr inbounds %struct.Reg, %struct.Reg* %3792, i32 0, i32 0
  %EAX.i294 = bitcast %union.anon* %3793 to i32*
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3795 = getelementptr inbounds %struct.GPR, %struct.GPR* %3794, i32 0, i32 15
  %3796 = getelementptr inbounds %struct.Reg, %struct.Reg* %3795, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %3796 to i64*
  %3797 = load i64, i64* %RBP.i295
  %3798 = sub i64 %3797, 148
  %3799 = load i32, i32* %EAX.i294
  %3800 = zext i32 %3799 to i64
  %3801 = load i64, i64* %PC.i293
  %3802 = add i64 %3801, 6
  store i64 %3802, i64* %PC.i293
  %3803 = inttoptr i64 %3798 to i32*
  store i32 %3799, i32* %3803
  store %struct.Memory* %loadMem_455260, %struct.Memory** %MEMORY
  %loadMem_455266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3805 = getelementptr inbounds %struct.GPR, %struct.GPR* %3804, i32 0, i32 33
  %3806 = getelementptr inbounds %struct.Reg, %struct.Reg* %3805, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %3806 to i64*
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3808 = getelementptr inbounds %struct.GPR, %struct.GPR* %3807, i32 0, i32 17
  %3809 = getelementptr inbounds %struct.Reg, %struct.Reg* %3808, i32 0, i32 0
  %R8D.i291 = bitcast %union.anon* %3809 to i32*
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3811 = getelementptr inbounds %struct.GPR, %struct.GPR* %3810, i32 0, i32 1
  %3812 = getelementptr inbounds %struct.Reg, %struct.Reg* %3811, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %3812 to i64*
  %3813 = load i32, i32* %R8D.i291
  %3814 = zext i32 %3813 to i64
  %3815 = load i64, i64* %PC.i290
  %3816 = add i64 %3815, 3
  store i64 %3816, i64* %PC.i290
  %3817 = and i64 %3814, 4294967295
  store i64 %3817, i64* %RAX.i292, align 8
  store %struct.Memory* %loadMem_455266, %struct.Memory** %MEMORY
  %loadMem_455269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3819 = getelementptr inbounds %struct.GPR, %struct.GPR* %3818, i32 0, i32 33
  %3820 = getelementptr inbounds %struct.Reg, %struct.Reg* %3819, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %3820 to i64*
  %3821 = load i64, i64* %PC.i289
  %3822 = add i64 %3821, 1
  store i64 %3822, i64* %PC.i289
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3825 = bitcast %union.anon* %3824 to i32*
  %3826 = load i32, i32* %3825, align 8
  %3827 = sext i32 %3826 to i64
  %3828 = lshr i64 %3827, 32
  store i64 %3828, i64* %3823, align 8
  store %struct.Memory* %loadMem_455269, %struct.Memory** %MEMORY
  %loadMem_45526a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3830 = getelementptr inbounds %struct.GPR, %struct.GPR* %3829, i32 0, i32 33
  %3831 = getelementptr inbounds %struct.Reg, %struct.Reg* %3830, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %3831 to i64*
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3833 = getelementptr inbounds %struct.GPR, %struct.GPR* %3832, i32 0, i32 9
  %3834 = getelementptr inbounds %struct.Reg, %struct.Reg* %3833, i32 0, i32 0
  %ESI.i284 = bitcast %union.anon* %3834 to i32*
  %3835 = load i32, i32* %ESI.i284
  %3836 = zext i32 %3835 to i64
  %3837 = load i64, i64* %PC.i283
  %3838 = add i64 %3837, 2
  store i64 %3838, i64* %PC.i283
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3840 = bitcast %union.anon* %3839 to i32*
  %3841 = load i32, i32* %3840, align 8
  %3842 = zext i32 %3841 to i64
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3844 = bitcast %union.anon* %3843 to i32*
  %3845 = load i32, i32* %3844, align 8
  %3846 = zext i32 %3845 to i64
  %3847 = shl i64 %3836, 32
  %3848 = ashr exact i64 %3847, 32
  %3849 = shl i64 %3846, 32
  %3850 = or i64 %3849, %3842
  %3851 = sdiv i64 %3850, %3848
  %3852 = shl i64 %3851, 32
  %3853 = ashr exact i64 %3852, 32
  %3854 = icmp eq i64 %3851, %3853
  br i1 %3854, label %3859, label %3855

; <label>:3855:                                   ; preds = %routine_idivl__esi.exit301
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3857 = load i64, i64* %3856, align 8
  %3858 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3857, %struct.Memory* %loadMem_45526a)
  br label %routine_idivl__esi.exit285

; <label>:3859:                                   ; preds = %routine_idivl__esi.exit301
  %3860 = srem i64 %3850, %3848
  %3861 = getelementptr inbounds %union.anon, %union.anon* %3839, i64 0, i32 0
  %3862 = and i64 %3851, 4294967295
  store i64 %3862, i64* %3861, align 8
  %3863 = getelementptr inbounds %union.anon, %union.anon* %3843, i64 0, i32 0
  %3864 = and i64 %3860, 4294967295
  store i64 %3864, i64* %3863, align 8
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3865, align 1
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3866, align 1
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3867, align 1
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3868, align 1
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3869, align 1
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3870, align 1
  br label %routine_idivl__esi.exit285

routine_idivl__esi.exit285:                       ; preds = %3855, %3859
  %3871 = phi %struct.Memory* [ %3858, %3855 ], [ %loadMem_45526a, %3859 ]
  store %struct.Memory* %3871, %struct.Memory** %MEMORY
  %loadMem_45526c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3873 = getelementptr inbounds %struct.GPR, %struct.GPR* %3872, i32 0, i32 33
  %3874 = getelementptr inbounds %struct.Reg, %struct.Reg* %3873, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %3874 to i64*
  %3875 = load i64, i64* %PC.i282
  %3876 = add i64 %3875, 1
  store i64 %3876, i64* %PC.i282
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3879 = bitcast %union.anon* %3878 to i32*
  %3880 = load i32, i32* %3879, align 8
  %3881 = sext i32 %3880 to i64
  %3882 = lshr i64 %3881, 32
  store i64 %3882, i64* %3877, align 8
  store %struct.Memory* %loadMem_45526c, %struct.Memory** %MEMORY
  %loadMem_45526d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 33
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %3885 to i64*
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 5
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %ECX.i277 = bitcast %union.anon* %3888 to i32*
  %3889 = load i32, i32* %ECX.i277
  %3890 = zext i32 %3889 to i64
  %3891 = load i64, i64* %PC.i276
  %3892 = add i64 %3891, 2
  store i64 %3892, i64* %PC.i276
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3894 = bitcast %union.anon* %3893 to i32*
  %3895 = load i32, i32* %3894, align 8
  %3896 = zext i32 %3895 to i64
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3898 = bitcast %union.anon* %3897 to i32*
  %3899 = load i32, i32* %3898, align 8
  %3900 = zext i32 %3899 to i64
  %3901 = shl i64 %3890, 32
  %3902 = ashr exact i64 %3901, 32
  %3903 = shl i64 %3900, 32
  %3904 = or i64 %3903, %3896
  %3905 = sdiv i64 %3904, %3902
  %3906 = shl i64 %3905, 32
  %3907 = ashr exact i64 %3906, 32
  %3908 = icmp eq i64 %3905, %3907
  br i1 %3908, label %3913, label %3909

; <label>:3909:                                   ; preds = %routine_idivl__esi.exit285
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3911 = load i64, i64* %3910, align 8
  %3912 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3911, %struct.Memory* %loadMem_45526d)
  br label %routine_idivl__ecx.exit278

; <label>:3913:                                   ; preds = %routine_idivl__esi.exit285
  %3914 = srem i64 %3904, %3902
  %3915 = getelementptr inbounds %union.anon, %union.anon* %3893, i64 0, i32 0
  %3916 = and i64 %3905, 4294967295
  store i64 %3916, i64* %3915, align 8
  %3917 = getelementptr inbounds %union.anon, %union.anon* %3897, i64 0, i32 0
  %3918 = and i64 %3914, 4294967295
  store i64 %3918, i64* %3917, align 8
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3919, align 1
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3920, align 1
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3921, align 1
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3922, align 1
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3923, align 1
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3924, align 1
  br label %routine_idivl__ecx.exit278

routine_idivl__ecx.exit278:                       ; preds = %3909, %3913
  %3925 = phi %struct.Memory* [ %3912, %3909 ], [ %loadMem_45526d, %3913 ]
  store %struct.Memory* %3925, %struct.Memory** %MEMORY
  %loadMem_45526f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 33
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %3928 to i64*
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3930 = getelementptr inbounds %struct.GPR, %struct.GPR* %3929, i32 0, i32 9
  %3931 = getelementptr inbounds %struct.Reg, %struct.Reg* %3930, i32 0, i32 0
  %RSI.i274 = bitcast %union.anon* %3931 to i64*
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3933 = getelementptr inbounds %struct.GPR, %struct.GPR* %3932, i32 0, i32 15
  %3934 = getelementptr inbounds %struct.Reg, %struct.Reg* %3933, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %3934 to i64*
  %3935 = load i64, i64* %RBP.i275
  %3936 = sub i64 %3935, 148
  %3937 = load i64, i64* %PC.i273
  %3938 = add i64 %3937, 6
  store i64 %3938, i64* %PC.i273
  %3939 = inttoptr i64 %3936 to i32*
  %3940 = load i32, i32* %3939
  %3941 = zext i32 %3940 to i64
  store i64 %3941, i64* %RSI.i274, align 8
  store %struct.Memory* %loadMem_45526f, %struct.Memory** %MEMORY
  %loadMem_455275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 33
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %3944 to i64*
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 1
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %EAX.i271 = bitcast %union.anon* %3947 to i32*
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3949 = getelementptr inbounds %struct.GPR, %struct.GPR* %3948, i32 0, i32 7
  %3950 = getelementptr inbounds %struct.Reg, %struct.Reg* %3949, i32 0, i32 0
  %RDX.i272 = bitcast %union.anon* %3950 to i64*
  %3951 = load i32, i32* %EAX.i271
  %3952 = zext i32 %3951 to i64
  %3953 = load i64, i64* %PC.i270
  %3954 = add i64 %3953, 2
  store i64 %3954, i64* %PC.i270
  %3955 = and i64 %3952, 4294967295
  store i64 %3955, i64* %RDX.i272, align 8
  store %struct.Memory* %loadMem_455275, %struct.Memory** %MEMORY
  %loadMem1_455277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 33
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %3958 to i64*
  %3959 = load i64, i64* %PC.i269
  %3960 = add i64 %3959, 17577
  %3961 = load i64, i64* %PC.i269
  %3962 = add i64 %3961, 5
  %3963 = load i64, i64* %PC.i269
  %3964 = add i64 %3963, 5
  store i64 %3964, i64* %PC.i269
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3966 = load i64, i64* %3965, align 8
  %3967 = add i64 %3966, -8
  %3968 = inttoptr i64 %3967 to i64*
  store i64 %3962, i64* %3968
  store i64 %3967, i64* %3965, align 8
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3960, i64* %3969, align 8
  store %struct.Memory* %loadMem1_455277, %struct.Memory** %MEMORY
  %loadMem2_455277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_455277 = load i64, i64* %3
  %call2_455277 = call %struct.Memory* @sub_459720.get_mem2D(%struct.State* %0, i64 %loadPC_455277, %struct.Memory* %loadMem2_455277)
  store %struct.Memory* %call2_455277, %struct.Memory** %MEMORY
  %loadMem_45527c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 33
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %3972 to i64*
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3974 = getelementptr inbounds %struct.GPR, %struct.GPR* %3973, i32 0, i32 5
  %3975 = getelementptr inbounds %struct.Reg, %struct.Reg* %3974, i32 0, i32 0
  %RCX.i268 = bitcast %union.anon* %3975 to i64*
  %3976 = load i64, i64* %PC.i267
  %3977 = add i64 %3976, 5
  store i64 %3977, i64* %PC.i267
  store i64 2, i64* %RCX.i268, align 8
  store %struct.Memory* %loadMem_45527c, %struct.Memory** %MEMORY
  %loadMem_455281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3979 = getelementptr inbounds %struct.GPR, %struct.GPR* %3978, i32 0, i32 33
  %3980 = getelementptr inbounds %struct.Reg, %struct.Reg* %3979, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %3980 to i64*
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3982 = getelementptr inbounds %struct.GPR, %struct.GPR* %3981, i32 0, i32 7
  %3983 = getelementptr inbounds %struct.Reg, %struct.Reg* %3982, i32 0, i32 0
  %RDX.i266 = bitcast %union.anon* %3983 to i64*
  %3984 = load i64, i64* %PC.i265
  %3985 = add i64 %3984, 5
  store i64 %3985, i64* %PC.i265
  store i64 4, i64* %RDX.i266, align 8
  store %struct.Memory* %loadMem_455281, %struct.Memory** %MEMORY
  %loadMem_455286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 33
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %3988 to i64*
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3990 = getelementptr inbounds %struct.GPR, %struct.GPR* %3989, i32 0, i32 11
  %3991 = getelementptr inbounds %struct.Reg, %struct.Reg* %3990, i32 0, i32 0
  %RDI.i263 = bitcast %union.anon* %3991 to i64*
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3993 = getelementptr inbounds %struct.GPR, %struct.GPR* %3992, i32 0, i32 15
  %3994 = getelementptr inbounds %struct.Reg, %struct.Reg* %3993, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %3994 to i64*
  %3995 = load i64, i64* %RBP.i264
  %3996 = sub i64 %3995, 24
  %3997 = load i64, i64* %PC.i262
  %3998 = add i64 %3997, 4
  store i64 %3998, i64* %PC.i262
  %3999 = inttoptr i64 %3996 to i64*
  %4000 = load i64, i64* %3999
  store i64 %4000, i64* %RDI.i263, align 8
  store %struct.Memory* %loadMem_455286, %struct.Memory** %MEMORY
  %loadMem_45528a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4002 = getelementptr inbounds %struct.GPR, %struct.GPR* %4001, i32 0, i32 33
  %4003 = getelementptr inbounds %struct.Reg, %struct.Reg* %4002, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %4003 to i64*
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4005 = getelementptr inbounds %struct.GPR, %struct.GPR* %4004, i32 0, i32 11
  %4006 = getelementptr inbounds %struct.Reg, %struct.Reg* %4005, i32 0, i32 0
  %RDI.i261 = bitcast %union.anon* %4006 to i64*
  %4007 = load i64, i64* %RDI.i261
  %4008 = load i64, i64* %PC.i260
  %4009 = add i64 %4008, 7
  store i64 %4009, i64* %PC.i260
  %4010 = add i64 4832, %4007
  store i64 %4010, i64* %RDI.i261, align 8
  %4011 = icmp ult i64 %4010, %4007
  %4012 = icmp ult i64 %4010, 4832
  %4013 = or i1 %4011, %4012
  %4014 = zext i1 %4013 to i8
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4014, i8* %4015, align 1
  %4016 = trunc i64 %4010 to i32
  %4017 = and i32 %4016, 255
  %4018 = call i32 @llvm.ctpop.i32(i32 %4017)
  %4019 = trunc i32 %4018 to i8
  %4020 = and i8 %4019, 1
  %4021 = xor i8 %4020, 1
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4021, i8* %4022, align 1
  %4023 = xor i64 4832, %4007
  %4024 = xor i64 %4023, %4010
  %4025 = lshr i64 %4024, 4
  %4026 = trunc i64 %4025 to i8
  %4027 = and i8 %4026, 1
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4027, i8* %4028, align 1
  %4029 = icmp eq i64 %4010, 0
  %4030 = zext i1 %4029 to i8
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4030, i8* %4031, align 1
  %4032 = lshr i64 %4010, 63
  %4033 = trunc i64 %4032 to i8
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4033, i8* %4034, align 1
  %4035 = lshr i64 %4007, 63
  %4036 = xor i64 %4032, %4035
  %4037 = add i64 %4036, %4032
  %4038 = icmp eq i64 %4037, 2
  %4039 = zext i1 %4038 to i8
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4039, i8* %4040, align 1
  store %struct.Memory* %loadMem_45528a, %struct.Memory** %MEMORY
  %loadMem_455291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4042 = getelementptr inbounds %struct.GPR, %struct.GPR* %4041, i32 0, i32 33
  %4043 = getelementptr inbounds %struct.Reg, %struct.Reg* %4042, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %4043 to i64*
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4045 = getelementptr inbounds %struct.GPR, %struct.GPR* %4044, i32 0, i32 9
  %4046 = getelementptr inbounds %struct.Reg, %struct.Reg* %4045, i32 0, i32 0
  %RSI.i258 = bitcast %union.anon* %4046 to i64*
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4048 = getelementptr inbounds %struct.GPR, %struct.GPR* %4047, i32 0, i32 15
  %4049 = getelementptr inbounds %struct.Reg, %struct.Reg* %4048, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %4049 to i64*
  %4050 = load i64, i64* %RBP.i259
  %4051 = sub i64 %4050, 4
  %4052 = load i64, i64* %PC.i257
  %4053 = add i64 %4052, 3
  store i64 %4053, i64* %PC.i257
  %4054 = inttoptr i64 %4051 to i32*
  %4055 = load i32, i32* %4054
  %4056 = zext i32 %4055 to i64
  store i64 %4056, i64* %RSI.i258, align 8
  store %struct.Memory* %loadMem_455291, %struct.Memory** %MEMORY
  %loadMem_455294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 33
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %4059 to i64*
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4061 = getelementptr inbounds %struct.GPR, %struct.GPR* %4060, i32 0, i32 1
  %4062 = getelementptr inbounds %struct.Reg, %struct.Reg* %4061, i32 0, i32 0
  %EAX.i255 = bitcast %union.anon* %4062 to i32*
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4064 = getelementptr inbounds %struct.GPR, %struct.GPR* %4063, i32 0, i32 15
  %4065 = getelementptr inbounds %struct.Reg, %struct.Reg* %4064, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %4065 to i64*
  %4066 = load i64, i64* %RBP.i256
  %4067 = sub i64 %4066, 152
  %4068 = load i32, i32* %EAX.i255
  %4069 = zext i32 %4068 to i64
  %4070 = load i64, i64* %PC.i254
  %4071 = add i64 %4070, 6
  store i64 %4071, i64* %PC.i254
  %4072 = inttoptr i64 %4067 to i32*
  store i32 %4068, i32* %4072
  store %struct.Memory* %loadMem_455294, %struct.Memory** %MEMORY
  %loadMem_45529a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4074 = getelementptr inbounds %struct.GPR, %struct.GPR* %4073, i32 0, i32 33
  %4075 = getelementptr inbounds %struct.Reg, %struct.Reg* %4074, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %4075 to i64*
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4077 = getelementptr inbounds %struct.GPR, %struct.GPR* %4076, i32 0, i32 9
  %4078 = getelementptr inbounds %struct.Reg, %struct.Reg* %4077, i32 0, i32 0
  %ESI.i252 = bitcast %union.anon* %4078 to i32*
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4080 = getelementptr inbounds %struct.GPR, %struct.GPR* %4079, i32 0, i32 1
  %4081 = getelementptr inbounds %struct.Reg, %struct.Reg* %4080, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %4081 to i64*
  %4082 = load i32, i32* %ESI.i252
  %4083 = zext i32 %4082 to i64
  %4084 = load i64, i64* %PC.i251
  %4085 = add i64 %4084, 2
  store i64 %4085, i64* %PC.i251
  %4086 = and i64 %4083, 4294967295
  store i64 %4086, i64* %RAX.i253, align 8
  store %struct.Memory* %loadMem_45529a, %struct.Memory** %MEMORY
  %loadMem_45529c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4088 = getelementptr inbounds %struct.GPR, %struct.GPR* %4087, i32 0, i32 33
  %4089 = getelementptr inbounds %struct.Reg, %struct.Reg* %4088, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %4089 to i64*
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4091 = getelementptr inbounds %struct.GPR, %struct.GPR* %4090, i32 0, i32 7
  %4092 = getelementptr inbounds %struct.Reg, %struct.Reg* %4091, i32 0, i32 0
  %EDX.i249 = bitcast %union.anon* %4092 to i32*
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4094 = getelementptr inbounds %struct.GPR, %struct.GPR* %4093, i32 0, i32 15
  %4095 = getelementptr inbounds %struct.Reg, %struct.Reg* %4094, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %4095 to i64*
  %4096 = load i64, i64* %RBP.i250
  %4097 = sub i64 %4096, 156
  %4098 = load i32, i32* %EDX.i249
  %4099 = zext i32 %4098 to i64
  %4100 = load i64, i64* %PC.i248
  %4101 = add i64 %4100, 6
  store i64 %4101, i64* %PC.i248
  %4102 = inttoptr i64 %4097 to i32*
  store i32 %4098, i32* %4102
  store %struct.Memory* %loadMem_45529c, %struct.Memory** %MEMORY
  %loadMem_4552a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4104 = getelementptr inbounds %struct.GPR, %struct.GPR* %4103, i32 0, i32 33
  %4105 = getelementptr inbounds %struct.Reg, %struct.Reg* %4104, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %4105 to i64*
  %4106 = load i64, i64* %PC.i247
  %4107 = add i64 %4106, 1
  store i64 %4107, i64* %PC.i247
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4110 = bitcast %union.anon* %4109 to i32*
  %4111 = load i32, i32* %4110, align 8
  %4112 = sext i32 %4111 to i64
  %4113 = lshr i64 %4112, 32
  store i64 %4113, i64* %4108, align 8
  store %struct.Memory* %loadMem_4552a2, %struct.Memory** %MEMORY
  %loadMem_4552a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4115 = getelementptr inbounds %struct.GPR, %struct.GPR* %4114, i32 0, i32 33
  %4116 = getelementptr inbounds %struct.Reg, %struct.Reg* %4115, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %4116 to i64*
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4118 = getelementptr inbounds %struct.GPR, %struct.GPR* %4117, i32 0, i32 9
  %4119 = getelementptr inbounds %struct.Reg, %struct.Reg* %4118, i32 0, i32 0
  %RSI.i245 = bitcast %union.anon* %4119 to i64*
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4121 = getelementptr inbounds %struct.GPR, %struct.GPR* %4120, i32 0, i32 15
  %4122 = getelementptr inbounds %struct.Reg, %struct.Reg* %4121, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %4122 to i64*
  %4123 = load i64, i64* %RBP.i246
  %4124 = sub i64 %4123, 156
  %4125 = load i64, i64* %PC.i244
  %4126 = add i64 %4125, 6
  store i64 %4126, i64* %PC.i244
  %4127 = inttoptr i64 %4124 to i32*
  %4128 = load i32, i32* %4127
  %4129 = zext i32 %4128 to i64
  store i64 %4129, i64* %RSI.i245, align 8
  store %struct.Memory* %loadMem_4552a3, %struct.Memory** %MEMORY
  %loadMem_4552a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4131 = getelementptr inbounds %struct.GPR, %struct.GPR* %4130, i32 0, i32 33
  %4132 = getelementptr inbounds %struct.Reg, %struct.Reg* %4131, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %4132 to i64*
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4134 = getelementptr inbounds %struct.GPR, %struct.GPR* %4133, i32 0, i32 9
  %4135 = getelementptr inbounds %struct.Reg, %struct.Reg* %4134, i32 0, i32 0
  %ESI.i241 = bitcast %union.anon* %4135 to i32*
  %4136 = load i32, i32* %ESI.i241
  %4137 = zext i32 %4136 to i64
  %4138 = load i64, i64* %PC.i240
  %4139 = add i64 %4138, 2
  store i64 %4139, i64* %PC.i240
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4141 = bitcast %union.anon* %4140 to i32*
  %4142 = load i32, i32* %4141, align 8
  %4143 = zext i32 %4142 to i64
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4145 = bitcast %union.anon* %4144 to i32*
  %4146 = load i32, i32* %4145, align 8
  %4147 = zext i32 %4146 to i64
  %4148 = shl i64 %4137, 32
  %4149 = ashr exact i64 %4148, 32
  %4150 = shl i64 %4147, 32
  %4151 = or i64 %4150, %4143
  %4152 = sdiv i64 %4151, %4149
  %4153 = shl i64 %4152, 32
  %4154 = ashr exact i64 %4153, 32
  %4155 = icmp eq i64 %4152, %4154
  br i1 %4155, label %4160, label %4156

; <label>:4156:                                   ; preds = %routine_idivl__ecx.exit278
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4158 = load i64, i64* %4157, align 8
  %4159 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4158, %struct.Memory* %loadMem_4552a9)
  br label %routine_idivl__esi.exit242

; <label>:4160:                                   ; preds = %routine_idivl__ecx.exit278
  %4161 = srem i64 %4151, %4149
  %4162 = getelementptr inbounds %union.anon, %union.anon* %4140, i64 0, i32 0
  %4163 = and i64 %4152, 4294967295
  store i64 %4163, i64* %4162, align 8
  %4164 = getelementptr inbounds %union.anon, %union.anon* %4144, i64 0, i32 0
  %4165 = and i64 %4161, 4294967295
  store i64 %4165, i64* %4164, align 8
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4166, align 1
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4167, align 1
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4168, align 1
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4169, align 1
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4170, align 1
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4171, align 1
  br label %routine_idivl__esi.exit242

routine_idivl__esi.exit242:                       ; preds = %4156, %4160
  %4172 = phi %struct.Memory* [ %4159, %4156 ], [ %loadMem_4552a9, %4160 ]
  store %struct.Memory* %4172, %struct.Memory** %MEMORY
  %loadMem_4552ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4174 = getelementptr inbounds %struct.GPR, %struct.GPR* %4173, i32 0, i32 33
  %4175 = getelementptr inbounds %struct.Reg, %struct.Reg* %4174, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %4175 to i64*
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4177 = getelementptr inbounds %struct.GPR, %struct.GPR* %4176, i32 0, i32 17
  %4178 = getelementptr inbounds %struct.Reg, %struct.Reg* %4177, i32 0, i32 0
  %R8D.i238 = bitcast %union.anon* %4178 to i32*
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4180 = getelementptr inbounds %struct.GPR, %struct.GPR* %4179, i32 0, i32 15
  %4181 = getelementptr inbounds %struct.Reg, %struct.Reg* %4180, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %4181 to i64*
  %4182 = bitcast i32* %R8D.i238 to i64*
  %4183 = load i64, i64* %RBP.i239
  %4184 = sub i64 %4183, 8
  %4185 = load i64, i64* %PC.i237
  %4186 = add i64 %4185, 4
  store i64 %4186, i64* %PC.i237
  %4187 = inttoptr i64 %4184 to i32*
  %4188 = load i32, i32* %4187
  %4189 = zext i32 %4188 to i64
  store i64 %4189, i64* %4182, align 8
  store %struct.Memory* %loadMem_4552ab, %struct.Memory** %MEMORY
  %loadMem_4552af = load %struct.Memory*, %struct.Memory** %MEMORY
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4191 = getelementptr inbounds %struct.GPR, %struct.GPR* %4190, i32 0, i32 33
  %4192 = getelementptr inbounds %struct.Reg, %struct.Reg* %4191, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %4192 to i64*
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4194 = getelementptr inbounds %struct.GPR, %struct.GPR* %4193, i32 0, i32 1
  %4195 = getelementptr inbounds %struct.Reg, %struct.Reg* %4194, i32 0, i32 0
  %EAX.i235 = bitcast %union.anon* %4195 to i32*
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4197 = getelementptr inbounds %struct.GPR, %struct.GPR* %4196, i32 0, i32 15
  %4198 = getelementptr inbounds %struct.Reg, %struct.Reg* %4197, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %4198 to i64*
  %4199 = load i64, i64* %RBP.i236
  %4200 = sub i64 %4199, 160
  %4201 = load i32, i32* %EAX.i235
  %4202 = zext i32 %4201 to i64
  %4203 = load i64, i64* %PC.i234
  %4204 = add i64 %4203, 6
  store i64 %4204, i64* %PC.i234
  %4205 = inttoptr i64 %4200 to i32*
  store i32 %4201, i32* %4205
  store %struct.Memory* %loadMem_4552af, %struct.Memory** %MEMORY
  %loadMem_4552b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4207 = getelementptr inbounds %struct.GPR, %struct.GPR* %4206, i32 0, i32 33
  %4208 = getelementptr inbounds %struct.Reg, %struct.Reg* %4207, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %4208 to i64*
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4210 = getelementptr inbounds %struct.GPR, %struct.GPR* %4209, i32 0, i32 17
  %4211 = getelementptr inbounds %struct.Reg, %struct.Reg* %4210, i32 0, i32 0
  %R8D.i232 = bitcast %union.anon* %4211 to i32*
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4213 = getelementptr inbounds %struct.GPR, %struct.GPR* %4212, i32 0, i32 1
  %4214 = getelementptr inbounds %struct.Reg, %struct.Reg* %4213, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %4214 to i64*
  %4215 = load i32, i32* %R8D.i232
  %4216 = zext i32 %4215 to i64
  %4217 = load i64, i64* %PC.i231
  %4218 = add i64 %4217, 3
  store i64 %4218, i64* %PC.i231
  %4219 = and i64 %4216, 4294967295
  store i64 %4219, i64* %RAX.i233, align 8
  store %struct.Memory* %loadMem_4552b5, %struct.Memory** %MEMORY
  %loadMem_4552b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4221 = getelementptr inbounds %struct.GPR, %struct.GPR* %4220, i32 0, i32 33
  %4222 = getelementptr inbounds %struct.Reg, %struct.Reg* %4221, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %4222 to i64*
  %4223 = load i64, i64* %PC.i230
  %4224 = add i64 %4223, 1
  store i64 %4224, i64* %PC.i230
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4227 = bitcast %union.anon* %4226 to i32*
  %4228 = load i32, i32* %4227, align 8
  %4229 = sext i32 %4228 to i64
  %4230 = lshr i64 %4229, 32
  store i64 %4230, i64* %4225, align 8
  store %struct.Memory* %loadMem_4552b8, %struct.Memory** %MEMORY
  %loadMem_4552b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4232 = getelementptr inbounds %struct.GPR, %struct.GPR* %4231, i32 0, i32 33
  %4233 = getelementptr inbounds %struct.Reg, %struct.Reg* %4232, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %4233 to i64*
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4235 = getelementptr inbounds %struct.GPR, %struct.GPR* %4234, i32 0, i32 9
  %4236 = getelementptr inbounds %struct.Reg, %struct.Reg* %4235, i32 0, i32 0
  %ESI.i226 = bitcast %union.anon* %4236 to i32*
  %4237 = load i32, i32* %ESI.i226
  %4238 = zext i32 %4237 to i64
  %4239 = load i64, i64* %PC.i225
  %4240 = add i64 %4239, 2
  store i64 %4240, i64* %PC.i225
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4242 = bitcast %union.anon* %4241 to i32*
  %4243 = load i32, i32* %4242, align 8
  %4244 = zext i32 %4243 to i64
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4246 = bitcast %union.anon* %4245 to i32*
  %4247 = load i32, i32* %4246, align 8
  %4248 = zext i32 %4247 to i64
  %4249 = shl i64 %4238, 32
  %4250 = ashr exact i64 %4249, 32
  %4251 = shl i64 %4248, 32
  %4252 = or i64 %4251, %4244
  %4253 = sdiv i64 %4252, %4250
  %4254 = shl i64 %4253, 32
  %4255 = ashr exact i64 %4254, 32
  %4256 = icmp eq i64 %4253, %4255
  br i1 %4256, label %4261, label %4257

; <label>:4257:                                   ; preds = %routine_idivl__esi.exit242
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4259 = load i64, i64* %4258, align 8
  %4260 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4259, %struct.Memory* %loadMem_4552b9)
  br label %routine_idivl__esi.exit227

; <label>:4261:                                   ; preds = %routine_idivl__esi.exit242
  %4262 = srem i64 %4252, %4250
  %4263 = getelementptr inbounds %union.anon, %union.anon* %4241, i64 0, i32 0
  %4264 = and i64 %4253, 4294967295
  store i64 %4264, i64* %4263, align 8
  %4265 = getelementptr inbounds %union.anon, %union.anon* %4245, i64 0, i32 0
  %4266 = and i64 %4262, 4294967295
  store i64 %4266, i64* %4265, align 8
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4267, align 1
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4268, align 1
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4269, align 1
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4270, align 1
  %4271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4271, align 1
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4272, align 1
  br label %routine_idivl__esi.exit227

routine_idivl__esi.exit227:                       ; preds = %4257, %4261
  %4273 = phi %struct.Memory* [ %4260, %4257 ], [ %loadMem_4552b9, %4261 ]
  store %struct.Memory* %4273, %struct.Memory** %MEMORY
  %loadMem_4552bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4275 = getelementptr inbounds %struct.GPR, %struct.GPR* %4274, i32 0, i32 33
  %4276 = getelementptr inbounds %struct.Reg, %struct.Reg* %4275, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %4276 to i64*
  %4277 = load i64, i64* %PC.i224
  %4278 = add i64 %4277, 1
  store i64 %4278, i64* %PC.i224
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4281 = bitcast %union.anon* %4280 to i32*
  %4282 = load i32, i32* %4281, align 8
  %4283 = sext i32 %4282 to i64
  %4284 = lshr i64 %4283, 32
  store i64 %4284, i64* %4279, align 8
  store %struct.Memory* %loadMem_4552bb, %struct.Memory** %MEMORY
  %loadMem_4552bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4286 = getelementptr inbounds %struct.GPR, %struct.GPR* %4285, i32 0, i32 33
  %4287 = getelementptr inbounds %struct.Reg, %struct.Reg* %4286, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %4287 to i64*
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4289 = getelementptr inbounds %struct.GPR, %struct.GPR* %4288, i32 0, i32 5
  %4290 = getelementptr inbounds %struct.Reg, %struct.Reg* %4289, i32 0, i32 0
  %ECX.i219 = bitcast %union.anon* %4290 to i32*
  %4291 = load i32, i32* %ECX.i219
  %4292 = zext i32 %4291 to i64
  %4293 = load i64, i64* %PC.i218
  %4294 = add i64 %4293, 2
  store i64 %4294, i64* %PC.i218
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4296 = bitcast %union.anon* %4295 to i32*
  %4297 = load i32, i32* %4296, align 8
  %4298 = zext i32 %4297 to i64
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4300 = bitcast %union.anon* %4299 to i32*
  %4301 = load i32, i32* %4300, align 8
  %4302 = zext i32 %4301 to i64
  %4303 = shl i64 %4292, 32
  %4304 = ashr exact i64 %4303, 32
  %4305 = shl i64 %4302, 32
  %4306 = or i64 %4305, %4298
  %4307 = sdiv i64 %4306, %4304
  %4308 = shl i64 %4307, 32
  %4309 = ashr exact i64 %4308, 32
  %4310 = icmp eq i64 %4307, %4309
  br i1 %4310, label %4315, label %4311

; <label>:4311:                                   ; preds = %routine_idivl__esi.exit227
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4313 = load i64, i64* %4312, align 8
  %4314 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4313, %struct.Memory* %loadMem_4552bc)
  br label %routine_idivl__ecx.exit220

; <label>:4315:                                   ; preds = %routine_idivl__esi.exit227
  %4316 = srem i64 %4306, %4304
  %4317 = getelementptr inbounds %union.anon, %union.anon* %4295, i64 0, i32 0
  %4318 = and i64 %4307, 4294967295
  store i64 %4318, i64* %4317, align 8
  %4319 = getelementptr inbounds %union.anon, %union.anon* %4299, i64 0, i32 0
  %4320 = and i64 %4316, 4294967295
  store i64 %4320, i64* %4319, align 8
  %4321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4321, align 1
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4322, align 1
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4323, align 1
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4324, align 1
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4325, align 1
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4326, align 1
  br label %routine_idivl__ecx.exit220

routine_idivl__ecx.exit220:                       ; preds = %4311, %4315
  %4327 = phi %struct.Memory* [ %4314, %4311 ], [ %loadMem_4552bc, %4315 ]
  store %struct.Memory* %4327, %struct.Memory** %MEMORY
  %loadMem_4552be = load %struct.Memory*, %struct.Memory** %MEMORY
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4329 = getelementptr inbounds %struct.GPR, %struct.GPR* %4328, i32 0, i32 33
  %4330 = getelementptr inbounds %struct.Reg, %struct.Reg* %4329, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %4330 to i64*
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4332 = getelementptr inbounds %struct.GPR, %struct.GPR* %4331, i32 0, i32 5
  %4333 = getelementptr inbounds %struct.Reg, %struct.Reg* %4332, i32 0, i32 0
  %ECX.i216 = bitcast %union.anon* %4333 to i32*
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4335 = getelementptr inbounds %struct.GPR, %struct.GPR* %4334, i32 0, i32 9
  %4336 = getelementptr inbounds %struct.Reg, %struct.Reg* %4335, i32 0, i32 0
  %RSI.i217 = bitcast %union.anon* %4336 to i64*
  %4337 = load i32, i32* %ECX.i216
  %4338 = zext i32 %4337 to i64
  %4339 = load i64, i64* %PC.i215
  %4340 = add i64 %4339, 2
  store i64 %4340, i64* %PC.i215
  %4341 = and i64 %4338, 4294967295
  store i64 %4341, i64* %RSI.i217, align 8
  store %struct.Memory* %loadMem_4552be, %struct.Memory** %MEMORY
  %loadMem_4552c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4343 = getelementptr inbounds %struct.GPR, %struct.GPR* %4342, i32 0, i32 33
  %4344 = getelementptr inbounds %struct.Reg, %struct.Reg* %4343, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %4344 to i64*
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4346 = getelementptr inbounds %struct.GPR, %struct.GPR* %4345, i32 0, i32 5
  %4347 = getelementptr inbounds %struct.Reg, %struct.Reg* %4346, i32 0, i32 0
  %RCX.i213 = bitcast %union.anon* %4347 to i64*
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4349 = getelementptr inbounds %struct.GPR, %struct.GPR* %4348, i32 0, i32 15
  %4350 = getelementptr inbounds %struct.Reg, %struct.Reg* %4349, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %4350 to i64*
  %4351 = load i64, i64* %RBP.i214
  %4352 = sub i64 %4351, 160
  %4353 = load i64, i64* %PC.i212
  %4354 = add i64 %4353, 6
  store i64 %4354, i64* %PC.i212
  %4355 = inttoptr i64 %4352 to i32*
  %4356 = load i32, i32* %4355
  %4357 = zext i32 %4356 to i64
  store i64 %4357, i64* %RCX.i213, align 8
  store %struct.Memory* %loadMem_4552c0, %struct.Memory** %MEMORY
  %loadMem_4552c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 33
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %4360 to i64*
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4362 = getelementptr inbounds %struct.GPR, %struct.GPR* %4361, i32 0, i32 5
  %4363 = getelementptr inbounds %struct.Reg, %struct.Reg* %4362, i32 0, i32 0
  %ECX.i210 = bitcast %union.anon* %4363 to i32*
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4365 = getelementptr inbounds %struct.GPR, %struct.GPR* %4364, i32 0, i32 7
  %4366 = getelementptr inbounds %struct.Reg, %struct.Reg* %4365, i32 0, i32 0
  %RDX.i211 = bitcast %union.anon* %4366 to i64*
  %4367 = load i32, i32* %ECX.i210
  %4368 = zext i32 %4367 to i64
  %4369 = load i64, i64* %PC.i209
  %4370 = add i64 %4369, 2
  store i64 %4370, i64* %PC.i209
  %4371 = and i64 %4368, 4294967295
  store i64 %4371, i64* %RDX.i211, align 8
  store %struct.Memory* %loadMem_4552c6, %struct.Memory** %MEMORY
  %loadMem_4552c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4373 = getelementptr inbounds %struct.GPR, %struct.GPR* %4372, i32 0, i32 33
  %4374 = getelementptr inbounds %struct.Reg, %struct.Reg* %4373, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %4374 to i64*
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 1
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %EAX.i207 = bitcast %union.anon* %4377 to i32*
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 5
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %RCX.i208 = bitcast %union.anon* %4380 to i64*
  %4381 = load i32, i32* %EAX.i207
  %4382 = zext i32 %4381 to i64
  %4383 = load i64, i64* %PC.i206
  %4384 = add i64 %4383, 2
  store i64 %4384, i64* %PC.i206
  %4385 = and i64 %4382, 4294967295
  store i64 %4385, i64* %RCX.i208, align 8
  store %struct.Memory* %loadMem_4552c8, %struct.Memory** %MEMORY
  %loadMem1_4552ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4387 = getelementptr inbounds %struct.GPR, %struct.GPR* %4386, i32 0, i32 33
  %4388 = getelementptr inbounds %struct.Reg, %struct.Reg* %4387, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %4388 to i64*
  %4389 = load i64, i64* %PC.i205
  %4390 = add i64 %4389, 20038
  %4391 = load i64, i64* %PC.i205
  %4392 = add i64 %4391, 5
  %4393 = load i64, i64* %PC.i205
  %4394 = add i64 %4393, 5
  store i64 %4394, i64* %PC.i205
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4396 = load i64, i64* %4395, align 8
  %4397 = add i64 %4396, -8
  %4398 = inttoptr i64 %4397 to i64*
  store i64 %4392, i64* %4398
  store i64 %4397, i64* %4395, align 8
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4390, i64* %4399, align 8
  store %struct.Memory* %loadMem1_4552ca, %struct.Memory** %MEMORY
  %loadMem2_4552ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4552ca = load i64, i64* %3
  %call2_4552ca = call %struct.Memory* @sub_45a110.get_mem3Dshort(%struct.State* %0, i64 %loadPC_4552ca, %struct.Memory* %loadMem2_4552ca)
  store %struct.Memory* %call2_4552ca, %struct.Memory** %MEMORY
  %loadMem_4552cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4401 = getelementptr inbounds %struct.GPR, %struct.GPR* %4400, i32 0, i32 33
  %4402 = getelementptr inbounds %struct.Reg, %struct.Reg* %4401, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %4402 to i64*
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4404 = getelementptr inbounds %struct.GPR, %struct.GPR* %4403, i32 0, i32 5
  %4405 = getelementptr inbounds %struct.Reg, %struct.Reg* %4404, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %4405 to i64*
  %4406 = load i64, i64* %PC.i203
  %4407 = add i64 %4406, 5
  store i64 %4407, i64* %PC.i203
  store i64 2, i64* %RCX.i204, align 8
  store %struct.Memory* %loadMem_4552cf, %struct.Memory** %MEMORY
  %loadMem_4552d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4409 = getelementptr inbounds %struct.GPR, %struct.GPR* %4408, i32 0, i32 33
  %4410 = getelementptr inbounds %struct.Reg, %struct.Reg* %4409, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %4410 to i64*
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4412 = getelementptr inbounds %struct.GPR, %struct.GPR* %4411, i32 0, i32 7
  %4413 = getelementptr inbounds %struct.Reg, %struct.Reg* %4412, i32 0, i32 0
  %RDX.i202 = bitcast %union.anon* %4413 to i64*
  %4414 = load i64, i64* %PC.i201
  %4415 = add i64 %4414, 5
  store i64 %4415, i64* %PC.i201
  store i64 4, i64* %RDX.i202, align 8
  store %struct.Memory* %loadMem_4552d4, %struct.Memory** %MEMORY
  %loadMem_4552d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4417 = getelementptr inbounds %struct.GPR, %struct.GPR* %4416, i32 0, i32 33
  %4418 = getelementptr inbounds %struct.Reg, %struct.Reg* %4417, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %4418 to i64*
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4420 = getelementptr inbounds %struct.GPR, %struct.GPR* %4419, i32 0, i32 11
  %4421 = getelementptr inbounds %struct.Reg, %struct.Reg* %4420, i32 0, i32 0
  %RDI.i199 = bitcast %union.anon* %4421 to i64*
  %4422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4423 = getelementptr inbounds %struct.GPR, %struct.GPR* %4422, i32 0, i32 15
  %4424 = getelementptr inbounds %struct.Reg, %struct.Reg* %4423, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %4424 to i64*
  %4425 = load i64, i64* %RBP.i200
  %4426 = sub i64 %4425, 24
  %4427 = load i64, i64* %PC.i198
  %4428 = add i64 %4427, 4
  store i64 %4428, i64* %PC.i198
  %4429 = inttoptr i64 %4426 to i64*
  %4430 = load i64, i64* %4429
  store i64 %4430, i64* %RDI.i199, align 8
  store %struct.Memory* %loadMem_4552d9, %struct.Memory** %MEMORY
  %loadMem_4552dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4432 = getelementptr inbounds %struct.GPR, %struct.GPR* %4431, i32 0, i32 33
  %4433 = getelementptr inbounds %struct.Reg, %struct.Reg* %4432, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %4433 to i64*
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4435 = getelementptr inbounds %struct.GPR, %struct.GPR* %4434, i32 0, i32 11
  %4436 = getelementptr inbounds %struct.Reg, %struct.Reg* %4435, i32 0, i32 0
  %RDI.i197 = bitcast %union.anon* %4436 to i64*
  %4437 = load i64, i64* %RDI.i197
  %4438 = load i64, i64* %PC.i196
  %4439 = add i64 %4438, 7
  store i64 %4439, i64* %PC.i196
  %4440 = add i64 4840, %4437
  store i64 %4440, i64* %RDI.i197, align 8
  %4441 = icmp ult i64 %4440, %4437
  %4442 = icmp ult i64 %4440, 4840
  %4443 = or i1 %4441, %4442
  %4444 = zext i1 %4443 to i8
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4444, i8* %4445, align 1
  %4446 = trunc i64 %4440 to i32
  %4447 = and i32 %4446, 255
  %4448 = call i32 @llvm.ctpop.i32(i32 %4447)
  %4449 = trunc i32 %4448 to i8
  %4450 = and i8 %4449, 1
  %4451 = xor i8 %4450, 1
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4451, i8* %4452, align 1
  %4453 = xor i64 4840, %4437
  %4454 = xor i64 %4453, %4440
  %4455 = lshr i64 %4454, 4
  %4456 = trunc i64 %4455 to i8
  %4457 = and i8 %4456, 1
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4457, i8* %4458, align 1
  %4459 = icmp eq i64 %4440, 0
  %4460 = zext i1 %4459 to i8
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4460, i8* %4461, align 1
  %4462 = lshr i64 %4440, 63
  %4463 = trunc i64 %4462 to i8
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4463, i8* %4464, align 1
  %4465 = lshr i64 %4437, 63
  %4466 = xor i64 %4462, %4465
  %4467 = add i64 %4466, %4462
  %4468 = icmp eq i64 %4467, 2
  %4469 = zext i1 %4468 to i8
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4469, i8* %4470, align 1
  store %struct.Memory* %loadMem_4552dd, %struct.Memory** %MEMORY
  %loadMem_4552e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4472 = getelementptr inbounds %struct.GPR, %struct.GPR* %4471, i32 0, i32 33
  %4473 = getelementptr inbounds %struct.Reg, %struct.Reg* %4472, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %4473 to i64*
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4475 = getelementptr inbounds %struct.GPR, %struct.GPR* %4474, i32 0, i32 9
  %4476 = getelementptr inbounds %struct.Reg, %struct.Reg* %4475, i32 0, i32 0
  %RSI.i194 = bitcast %union.anon* %4476 to i64*
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4478 = getelementptr inbounds %struct.GPR, %struct.GPR* %4477, i32 0, i32 15
  %4479 = getelementptr inbounds %struct.Reg, %struct.Reg* %4478, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %4479 to i64*
  %4480 = load i64, i64* %RBP.i195
  %4481 = sub i64 %4480, 4
  %4482 = load i64, i64* %PC.i193
  %4483 = add i64 %4482, 3
  store i64 %4483, i64* %PC.i193
  %4484 = inttoptr i64 %4481 to i32*
  %4485 = load i32, i32* %4484
  %4486 = zext i32 %4485 to i64
  store i64 %4486, i64* %RSI.i194, align 8
  store %struct.Memory* %loadMem_4552e4, %struct.Memory** %MEMORY
  %loadMem_4552e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4488 = getelementptr inbounds %struct.GPR, %struct.GPR* %4487, i32 0, i32 33
  %4489 = getelementptr inbounds %struct.Reg, %struct.Reg* %4488, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %4489 to i64*
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4491 = getelementptr inbounds %struct.GPR, %struct.GPR* %4490, i32 0, i32 1
  %4492 = getelementptr inbounds %struct.Reg, %struct.Reg* %4491, i32 0, i32 0
  %EAX.i191 = bitcast %union.anon* %4492 to i32*
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 15
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %4495 to i64*
  %4496 = load i64, i64* %RBP.i192
  %4497 = sub i64 %4496, 164
  %4498 = load i32, i32* %EAX.i191
  %4499 = zext i32 %4498 to i64
  %4500 = load i64, i64* %PC.i190
  %4501 = add i64 %4500, 6
  store i64 %4501, i64* %PC.i190
  %4502 = inttoptr i64 %4497 to i32*
  store i32 %4498, i32* %4502
  store %struct.Memory* %loadMem_4552e7, %struct.Memory** %MEMORY
  %loadMem_4552ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4504 = getelementptr inbounds %struct.GPR, %struct.GPR* %4503, i32 0, i32 33
  %4505 = getelementptr inbounds %struct.Reg, %struct.Reg* %4504, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %4505 to i64*
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4507 = getelementptr inbounds %struct.GPR, %struct.GPR* %4506, i32 0, i32 9
  %4508 = getelementptr inbounds %struct.Reg, %struct.Reg* %4507, i32 0, i32 0
  %ESI.i188 = bitcast %union.anon* %4508 to i32*
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 1
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %4511 to i64*
  %4512 = load i32, i32* %ESI.i188
  %4513 = zext i32 %4512 to i64
  %4514 = load i64, i64* %PC.i187
  %4515 = add i64 %4514, 2
  store i64 %4515, i64* %PC.i187
  %4516 = and i64 %4513, 4294967295
  store i64 %4516, i64* %RAX.i189, align 8
  store %struct.Memory* %loadMem_4552ed, %struct.Memory** %MEMORY
  %loadMem_4552ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4518 = getelementptr inbounds %struct.GPR, %struct.GPR* %4517, i32 0, i32 33
  %4519 = getelementptr inbounds %struct.Reg, %struct.Reg* %4518, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %4519 to i64*
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4521 = getelementptr inbounds %struct.GPR, %struct.GPR* %4520, i32 0, i32 7
  %4522 = getelementptr inbounds %struct.Reg, %struct.Reg* %4521, i32 0, i32 0
  %EDX.i185 = bitcast %union.anon* %4522 to i32*
  %4523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4524 = getelementptr inbounds %struct.GPR, %struct.GPR* %4523, i32 0, i32 15
  %4525 = getelementptr inbounds %struct.Reg, %struct.Reg* %4524, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %4525 to i64*
  %4526 = load i64, i64* %RBP.i186
  %4527 = sub i64 %4526, 168
  %4528 = load i32, i32* %EDX.i185
  %4529 = zext i32 %4528 to i64
  %4530 = load i64, i64* %PC.i184
  %4531 = add i64 %4530, 6
  store i64 %4531, i64* %PC.i184
  %4532 = inttoptr i64 %4527 to i32*
  store i32 %4528, i32* %4532
  store %struct.Memory* %loadMem_4552ef, %struct.Memory** %MEMORY
  %loadMem_4552f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4534 = getelementptr inbounds %struct.GPR, %struct.GPR* %4533, i32 0, i32 33
  %4535 = getelementptr inbounds %struct.Reg, %struct.Reg* %4534, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %4535 to i64*
  %4536 = load i64, i64* %PC.i183
  %4537 = add i64 %4536, 1
  store i64 %4537, i64* %PC.i183
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4540 = bitcast %union.anon* %4539 to i32*
  %4541 = load i32, i32* %4540, align 8
  %4542 = sext i32 %4541 to i64
  %4543 = lshr i64 %4542, 32
  store i64 %4543, i64* %4538, align 8
  store %struct.Memory* %loadMem_4552f5, %struct.Memory** %MEMORY
  %loadMem_4552f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4545 = getelementptr inbounds %struct.GPR, %struct.GPR* %4544, i32 0, i32 33
  %4546 = getelementptr inbounds %struct.Reg, %struct.Reg* %4545, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %4546 to i64*
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4548 = getelementptr inbounds %struct.GPR, %struct.GPR* %4547, i32 0, i32 9
  %4549 = getelementptr inbounds %struct.Reg, %struct.Reg* %4548, i32 0, i32 0
  %RSI.i181 = bitcast %union.anon* %4549 to i64*
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4551 = getelementptr inbounds %struct.GPR, %struct.GPR* %4550, i32 0, i32 15
  %4552 = getelementptr inbounds %struct.Reg, %struct.Reg* %4551, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %4552 to i64*
  %4553 = load i64, i64* %RBP.i182
  %4554 = sub i64 %4553, 168
  %4555 = load i64, i64* %PC.i180
  %4556 = add i64 %4555, 6
  store i64 %4556, i64* %PC.i180
  %4557 = inttoptr i64 %4554 to i32*
  %4558 = load i32, i32* %4557
  %4559 = zext i32 %4558 to i64
  store i64 %4559, i64* %RSI.i181, align 8
  store %struct.Memory* %loadMem_4552f6, %struct.Memory** %MEMORY
  %loadMem_4552fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4561 = getelementptr inbounds %struct.GPR, %struct.GPR* %4560, i32 0, i32 33
  %4562 = getelementptr inbounds %struct.Reg, %struct.Reg* %4561, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %4562 to i64*
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4564 = getelementptr inbounds %struct.GPR, %struct.GPR* %4563, i32 0, i32 9
  %4565 = getelementptr inbounds %struct.Reg, %struct.Reg* %4564, i32 0, i32 0
  %ESI.i175 = bitcast %union.anon* %4565 to i32*
  %4566 = load i32, i32* %ESI.i175
  %4567 = zext i32 %4566 to i64
  %4568 = load i64, i64* %PC.i174
  %4569 = add i64 %4568, 2
  store i64 %4569, i64* %PC.i174
  %4570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4571 = bitcast %union.anon* %4570 to i32*
  %4572 = load i32, i32* %4571, align 8
  %4573 = zext i32 %4572 to i64
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4575 = bitcast %union.anon* %4574 to i32*
  %4576 = load i32, i32* %4575, align 8
  %4577 = zext i32 %4576 to i64
  %4578 = shl i64 %4567, 32
  %4579 = ashr exact i64 %4578, 32
  %4580 = shl i64 %4577, 32
  %4581 = or i64 %4580, %4573
  %4582 = sdiv i64 %4581, %4579
  %4583 = shl i64 %4582, 32
  %4584 = ashr exact i64 %4583, 32
  %4585 = icmp eq i64 %4582, %4584
  br i1 %4585, label %4590, label %4586

; <label>:4586:                                   ; preds = %routine_idivl__ecx.exit220
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4588 = load i64, i64* %4587, align 8
  %4589 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4588, %struct.Memory* %loadMem_4552fc)
  br label %routine_idivl__esi.exit176

; <label>:4590:                                   ; preds = %routine_idivl__ecx.exit220
  %4591 = srem i64 %4581, %4579
  %4592 = getelementptr inbounds %union.anon, %union.anon* %4570, i64 0, i32 0
  %4593 = and i64 %4582, 4294967295
  store i64 %4593, i64* %4592, align 8
  %4594 = getelementptr inbounds %union.anon, %union.anon* %4574, i64 0, i32 0
  %4595 = and i64 %4591, 4294967295
  store i64 %4595, i64* %4594, align 8
  %4596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4596, align 1
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4597, align 1
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4598, align 1
  %4599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4599, align 1
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4600, align 1
  %4601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4601, align 1
  br label %routine_idivl__esi.exit176

routine_idivl__esi.exit176:                       ; preds = %4586, %4590
  %4602 = phi %struct.Memory* [ %4589, %4586 ], [ %loadMem_4552fc, %4590 ]
  store %struct.Memory* %4602, %struct.Memory** %MEMORY
  %loadMem_4552fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4604 = getelementptr inbounds %struct.GPR, %struct.GPR* %4603, i32 0, i32 33
  %4605 = getelementptr inbounds %struct.Reg, %struct.Reg* %4604, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %4605 to i64*
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4607 = getelementptr inbounds %struct.GPR, %struct.GPR* %4606, i32 0, i32 17
  %4608 = getelementptr inbounds %struct.Reg, %struct.Reg* %4607, i32 0, i32 0
  %R8D.i172 = bitcast %union.anon* %4608 to i32*
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4610 = getelementptr inbounds %struct.GPR, %struct.GPR* %4609, i32 0, i32 15
  %4611 = getelementptr inbounds %struct.Reg, %struct.Reg* %4610, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %4611 to i64*
  %4612 = bitcast i32* %R8D.i172 to i64*
  %4613 = load i64, i64* %RBP.i173
  %4614 = sub i64 %4613, 8
  %4615 = load i64, i64* %PC.i171
  %4616 = add i64 %4615, 4
  store i64 %4616, i64* %PC.i171
  %4617 = inttoptr i64 %4614 to i32*
  %4618 = load i32, i32* %4617
  %4619 = zext i32 %4618 to i64
  store i64 %4619, i64* %4612, align 8
  store %struct.Memory* %loadMem_4552fe, %struct.Memory** %MEMORY
  %loadMem_455302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 33
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %4622 to i64*
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4624 = getelementptr inbounds %struct.GPR, %struct.GPR* %4623, i32 0, i32 1
  %4625 = getelementptr inbounds %struct.Reg, %struct.Reg* %4624, i32 0, i32 0
  %EAX.i169 = bitcast %union.anon* %4625 to i32*
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4627 = getelementptr inbounds %struct.GPR, %struct.GPR* %4626, i32 0, i32 15
  %4628 = getelementptr inbounds %struct.Reg, %struct.Reg* %4627, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %4628 to i64*
  %4629 = load i64, i64* %RBP.i170
  %4630 = sub i64 %4629, 172
  %4631 = load i32, i32* %EAX.i169
  %4632 = zext i32 %4631 to i64
  %4633 = load i64, i64* %PC.i168
  %4634 = add i64 %4633, 6
  store i64 %4634, i64* %PC.i168
  %4635 = inttoptr i64 %4630 to i32*
  store i32 %4631, i32* %4635
  store %struct.Memory* %loadMem_455302, %struct.Memory** %MEMORY
  %loadMem_455308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4637 = getelementptr inbounds %struct.GPR, %struct.GPR* %4636, i32 0, i32 33
  %4638 = getelementptr inbounds %struct.Reg, %struct.Reg* %4637, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %4638 to i64*
  %4639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4640 = getelementptr inbounds %struct.GPR, %struct.GPR* %4639, i32 0, i32 17
  %4641 = getelementptr inbounds %struct.Reg, %struct.Reg* %4640, i32 0, i32 0
  %R8D.i166 = bitcast %union.anon* %4641 to i32*
  %4642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4643 = getelementptr inbounds %struct.GPR, %struct.GPR* %4642, i32 0, i32 1
  %4644 = getelementptr inbounds %struct.Reg, %struct.Reg* %4643, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %4644 to i64*
  %4645 = load i32, i32* %R8D.i166
  %4646 = zext i32 %4645 to i64
  %4647 = load i64, i64* %PC.i165
  %4648 = add i64 %4647, 3
  store i64 %4648, i64* %PC.i165
  %4649 = and i64 %4646, 4294967295
  store i64 %4649, i64* %RAX.i167, align 8
  store %struct.Memory* %loadMem_455308, %struct.Memory** %MEMORY
  %loadMem_45530b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4651 = getelementptr inbounds %struct.GPR, %struct.GPR* %4650, i32 0, i32 33
  %4652 = getelementptr inbounds %struct.Reg, %struct.Reg* %4651, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %4652 to i64*
  %4653 = load i64, i64* %PC.i164
  %4654 = add i64 %4653, 1
  store i64 %4654, i64* %PC.i164
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4657 = bitcast %union.anon* %4656 to i32*
  %4658 = load i32, i32* %4657, align 8
  %4659 = sext i32 %4658 to i64
  %4660 = lshr i64 %4659, 32
  store i64 %4660, i64* %4655, align 8
  store %struct.Memory* %loadMem_45530b, %struct.Memory** %MEMORY
  %loadMem_45530c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4662 = getelementptr inbounds %struct.GPR, %struct.GPR* %4661, i32 0, i32 33
  %4663 = getelementptr inbounds %struct.Reg, %struct.Reg* %4662, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %4663 to i64*
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4665 = getelementptr inbounds %struct.GPR, %struct.GPR* %4664, i32 0, i32 9
  %4666 = getelementptr inbounds %struct.Reg, %struct.Reg* %4665, i32 0, i32 0
  %ESI.i159 = bitcast %union.anon* %4666 to i32*
  %4667 = load i32, i32* %ESI.i159
  %4668 = zext i32 %4667 to i64
  %4669 = load i64, i64* %PC.i158
  %4670 = add i64 %4669, 2
  store i64 %4670, i64* %PC.i158
  %4671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4672 = bitcast %union.anon* %4671 to i32*
  %4673 = load i32, i32* %4672, align 8
  %4674 = zext i32 %4673 to i64
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4676 = bitcast %union.anon* %4675 to i32*
  %4677 = load i32, i32* %4676, align 8
  %4678 = zext i32 %4677 to i64
  %4679 = shl i64 %4668, 32
  %4680 = ashr exact i64 %4679, 32
  %4681 = shl i64 %4678, 32
  %4682 = or i64 %4681, %4674
  %4683 = sdiv i64 %4682, %4680
  %4684 = shl i64 %4683, 32
  %4685 = ashr exact i64 %4684, 32
  %4686 = icmp eq i64 %4683, %4685
  br i1 %4686, label %4691, label %4687

; <label>:4687:                                   ; preds = %routine_idivl__esi.exit176
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4689 = load i64, i64* %4688, align 8
  %4690 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4689, %struct.Memory* %loadMem_45530c)
  br label %routine_idivl__esi.exit160

; <label>:4691:                                   ; preds = %routine_idivl__esi.exit176
  %4692 = srem i64 %4682, %4680
  %4693 = getelementptr inbounds %union.anon, %union.anon* %4671, i64 0, i32 0
  %4694 = and i64 %4683, 4294967295
  store i64 %4694, i64* %4693, align 8
  %4695 = getelementptr inbounds %union.anon, %union.anon* %4675, i64 0, i32 0
  %4696 = and i64 %4692, 4294967295
  store i64 %4696, i64* %4695, align 8
  %4697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4697, align 1
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4698, align 1
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4699, align 1
  %4700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4700, align 1
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4701, align 1
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4702, align 1
  br label %routine_idivl__esi.exit160

routine_idivl__esi.exit160:                       ; preds = %4687, %4691
  %4703 = phi %struct.Memory* [ %4690, %4687 ], [ %loadMem_45530c, %4691 ]
  store %struct.Memory* %4703, %struct.Memory** %MEMORY
  %loadMem_45530e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4705 = getelementptr inbounds %struct.GPR, %struct.GPR* %4704, i32 0, i32 33
  %4706 = getelementptr inbounds %struct.Reg, %struct.Reg* %4705, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %4706 to i64*
  %4707 = load i64, i64* %PC.i157
  %4708 = add i64 %4707, 1
  store i64 %4708, i64* %PC.i157
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4711 = bitcast %union.anon* %4710 to i32*
  %4712 = load i32, i32* %4711, align 8
  %4713 = sext i32 %4712 to i64
  %4714 = lshr i64 %4713, 32
  store i64 %4714, i64* %4709, align 8
  store %struct.Memory* %loadMem_45530e, %struct.Memory** %MEMORY
  %loadMem_45530f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4716 = getelementptr inbounds %struct.GPR, %struct.GPR* %4715, i32 0, i32 33
  %4717 = getelementptr inbounds %struct.Reg, %struct.Reg* %4716, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %4717 to i64*
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4719 = getelementptr inbounds %struct.GPR, %struct.GPR* %4718, i32 0, i32 5
  %4720 = getelementptr inbounds %struct.Reg, %struct.Reg* %4719, i32 0, i32 0
  %ECX.i153 = bitcast %union.anon* %4720 to i32*
  %4721 = load i32, i32* %ECX.i153
  %4722 = zext i32 %4721 to i64
  %4723 = load i64, i64* %PC.i152
  %4724 = add i64 %4723, 2
  store i64 %4724, i64* %PC.i152
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4726 = bitcast %union.anon* %4725 to i32*
  %4727 = load i32, i32* %4726, align 8
  %4728 = zext i32 %4727 to i64
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4730 = bitcast %union.anon* %4729 to i32*
  %4731 = load i32, i32* %4730, align 8
  %4732 = zext i32 %4731 to i64
  %4733 = shl i64 %4722, 32
  %4734 = ashr exact i64 %4733, 32
  %4735 = shl i64 %4732, 32
  %4736 = or i64 %4735, %4728
  %4737 = sdiv i64 %4736, %4734
  %4738 = shl i64 %4737, 32
  %4739 = ashr exact i64 %4738, 32
  %4740 = icmp eq i64 %4737, %4739
  br i1 %4740, label %4745, label %4741

; <label>:4741:                                   ; preds = %routine_idivl__esi.exit160
  %4742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4743 = load i64, i64* %4742, align 8
  %4744 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4743, %struct.Memory* %loadMem_45530f)
  br label %routine_idivl__ecx.exit154

; <label>:4745:                                   ; preds = %routine_idivl__esi.exit160
  %4746 = srem i64 %4736, %4734
  %4747 = getelementptr inbounds %union.anon, %union.anon* %4725, i64 0, i32 0
  %4748 = and i64 %4737, 4294967295
  store i64 %4748, i64* %4747, align 8
  %4749 = getelementptr inbounds %union.anon, %union.anon* %4729, i64 0, i32 0
  %4750 = and i64 %4746, 4294967295
  store i64 %4750, i64* %4749, align 8
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4751, align 1
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4752, align 1
  %4753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4753, align 1
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4754, align 1
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4755, align 1
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4756, align 1
  br label %routine_idivl__ecx.exit154

routine_idivl__ecx.exit154:                       ; preds = %4741, %4745
  %4757 = phi %struct.Memory* [ %4744, %4741 ], [ %loadMem_45530f, %4745 ]
  store %struct.Memory* %4757, %struct.Memory** %MEMORY
  %loadMem_455311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4759 = getelementptr inbounds %struct.GPR, %struct.GPR* %4758, i32 0, i32 33
  %4760 = getelementptr inbounds %struct.Reg, %struct.Reg* %4759, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %4760 to i64*
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4762 = getelementptr inbounds %struct.GPR, %struct.GPR* %4761, i32 0, i32 5
  %4763 = getelementptr inbounds %struct.Reg, %struct.Reg* %4762, i32 0, i32 0
  %ECX.i150 = bitcast %union.anon* %4763 to i32*
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4765 = getelementptr inbounds %struct.GPR, %struct.GPR* %4764, i32 0, i32 9
  %4766 = getelementptr inbounds %struct.Reg, %struct.Reg* %4765, i32 0, i32 0
  %RSI.i151 = bitcast %union.anon* %4766 to i64*
  %4767 = load i32, i32* %ECX.i150
  %4768 = zext i32 %4767 to i64
  %4769 = load i64, i64* %PC.i149
  %4770 = add i64 %4769, 2
  store i64 %4770, i64* %PC.i149
  %4771 = and i64 %4768, 4294967295
  store i64 %4771, i64* %RSI.i151, align 8
  store %struct.Memory* %loadMem_455311, %struct.Memory** %MEMORY
  %loadMem_455313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4773 = getelementptr inbounds %struct.GPR, %struct.GPR* %4772, i32 0, i32 33
  %4774 = getelementptr inbounds %struct.Reg, %struct.Reg* %4773, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %4774 to i64*
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4776 = getelementptr inbounds %struct.GPR, %struct.GPR* %4775, i32 0, i32 5
  %4777 = getelementptr inbounds %struct.Reg, %struct.Reg* %4776, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %4777 to i64*
  %4778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4779 = getelementptr inbounds %struct.GPR, %struct.GPR* %4778, i32 0, i32 15
  %4780 = getelementptr inbounds %struct.Reg, %struct.Reg* %4779, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %4780 to i64*
  %4781 = load i64, i64* %RBP.i148
  %4782 = sub i64 %4781, 172
  %4783 = load i64, i64* %PC.i146
  %4784 = add i64 %4783, 6
  store i64 %4784, i64* %PC.i146
  %4785 = inttoptr i64 %4782 to i32*
  %4786 = load i32, i32* %4785
  %4787 = zext i32 %4786 to i64
  store i64 %4787, i64* %RCX.i147, align 8
  store %struct.Memory* %loadMem_455313, %struct.Memory** %MEMORY
  %loadMem_455319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4789 = getelementptr inbounds %struct.GPR, %struct.GPR* %4788, i32 0, i32 33
  %4790 = getelementptr inbounds %struct.Reg, %struct.Reg* %4789, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %4790 to i64*
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4792 = getelementptr inbounds %struct.GPR, %struct.GPR* %4791, i32 0, i32 5
  %4793 = getelementptr inbounds %struct.Reg, %struct.Reg* %4792, i32 0, i32 0
  %ECX.i144 = bitcast %union.anon* %4793 to i32*
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4795 = getelementptr inbounds %struct.GPR, %struct.GPR* %4794, i32 0, i32 7
  %4796 = getelementptr inbounds %struct.Reg, %struct.Reg* %4795, i32 0, i32 0
  %RDX.i145 = bitcast %union.anon* %4796 to i64*
  %4797 = load i32, i32* %ECX.i144
  %4798 = zext i32 %4797 to i64
  %4799 = load i64, i64* %PC.i143
  %4800 = add i64 %4799, 2
  store i64 %4800, i64* %PC.i143
  %4801 = and i64 %4798, 4294967295
  store i64 %4801, i64* %RDX.i145, align 8
  store %struct.Memory* %loadMem_455319, %struct.Memory** %MEMORY
  %loadMem_45531b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4803 = getelementptr inbounds %struct.GPR, %struct.GPR* %4802, i32 0, i32 33
  %4804 = getelementptr inbounds %struct.Reg, %struct.Reg* %4803, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %4804 to i64*
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4806 = getelementptr inbounds %struct.GPR, %struct.GPR* %4805, i32 0, i32 1
  %4807 = getelementptr inbounds %struct.Reg, %struct.Reg* %4806, i32 0, i32 0
  %EAX.i141 = bitcast %union.anon* %4807 to i32*
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4809 = getelementptr inbounds %struct.GPR, %struct.GPR* %4808, i32 0, i32 5
  %4810 = getelementptr inbounds %struct.Reg, %struct.Reg* %4809, i32 0, i32 0
  %RCX.i142 = bitcast %union.anon* %4810 to i64*
  %4811 = load i32, i32* %EAX.i141
  %4812 = zext i32 %4811 to i64
  %4813 = load i64, i64* %PC.i140
  %4814 = add i64 %4813, 2
  store i64 %4814, i64* %PC.i140
  %4815 = and i64 %4812, 4294967295
  store i64 %4815, i64* %RCX.i142, align 8
  store %struct.Memory* %loadMem_45531b, %struct.Memory** %MEMORY
  %loadMem1_45531d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4817 = getelementptr inbounds %struct.GPR, %struct.GPR* %4816, i32 0, i32 33
  %4818 = getelementptr inbounds %struct.Reg, %struct.Reg* %4817, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %4818 to i64*
  %4819 = load i64, i64* %PC.i139
  %4820 = add i64 %4819, 18451
  %4821 = load i64, i64* %PC.i139
  %4822 = add i64 %4821, 5
  %4823 = load i64, i64* %PC.i139
  %4824 = add i64 %4823, 5
  store i64 %4824, i64* %PC.i139
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4826 = load i64, i64* %4825, align 8
  %4827 = add i64 %4826, -8
  %4828 = inttoptr i64 %4827 to i64*
  store i64 %4822, i64* %4828
  store i64 %4827, i64* %4825, align 8
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4820, i64* %4829, align 8
  store %struct.Memory* %loadMem1_45531d, %struct.Memory** %MEMORY
  %loadMem2_45531d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45531d = load i64, i64* %3
  %call2_45531d = call %struct.Memory* @sub_459b30.get_mem3Dint64(%struct.State* %0, i64 %loadPC_45531d, %struct.Memory* %loadMem2_45531d)
  store %struct.Memory* %call2_45531d, %struct.Memory** %MEMORY
  %loadMem_455322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4831 = getelementptr inbounds %struct.GPR, %struct.GPR* %4830, i32 0, i32 33
  %4832 = getelementptr inbounds %struct.Reg, %struct.Reg* %4831, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %4832 to i64*
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4834 = getelementptr inbounds %struct.GPR, %struct.GPR* %4833, i32 0, i32 5
  %4835 = getelementptr inbounds %struct.Reg, %struct.Reg* %4834, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %4835 to i64*
  %4836 = load i64, i64* %PC.i137
  %4837 = add i64 %4836, 5
  store i64 %4837, i64* %PC.i137
  store i64 2, i64* %RCX.i138, align 8
  store %struct.Memory* %loadMem_455322, %struct.Memory** %MEMORY
  %loadMem_455327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4839 = getelementptr inbounds %struct.GPR, %struct.GPR* %4838, i32 0, i32 33
  %4840 = getelementptr inbounds %struct.Reg, %struct.Reg* %4839, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %4840 to i64*
  %4841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4842 = getelementptr inbounds %struct.GPR, %struct.GPR* %4841, i32 0, i32 7
  %4843 = getelementptr inbounds %struct.Reg, %struct.Reg* %4842, i32 0, i32 0
  %RDX.i136 = bitcast %union.anon* %4843 to i64*
  %4844 = load i64, i64* %PC.i135
  %4845 = add i64 %4844, 5
  store i64 %4845, i64* %PC.i135
  store i64 4, i64* %RDX.i136, align 8
  store %struct.Memory* %loadMem_455327, %struct.Memory** %MEMORY
  %loadMem_45532c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4847 = getelementptr inbounds %struct.GPR, %struct.GPR* %4846, i32 0, i32 33
  %4848 = getelementptr inbounds %struct.Reg, %struct.Reg* %4847, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %4848 to i64*
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4850 = getelementptr inbounds %struct.GPR, %struct.GPR* %4849, i32 0, i32 11
  %4851 = getelementptr inbounds %struct.Reg, %struct.Reg* %4850, i32 0, i32 0
  %RDI.i133 = bitcast %union.anon* %4851 to i64*
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4853 = getelementptr inbounds %struct.GPR, %struct.GPR* %4852, i32 0, i32 15
  %4854 = getelementptr inbounds %struct.Reg, %struct.Reg* %4853, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %4854 to i64*
  %4855 = load i64, i64* %RBP.i134
  %4856 = sub i64 %4855, 24
  %4857 = load i64, i64* %PC.i132
  %4858 = add i64 %4857, 4
  store i64 %4858, i64* %PC.i132
  %4859 = inttoptr i64 %4856 to i64*
  %4860 = load i64, i64* %4859
  store i64 %4860, i64* %RDI.i133, align 8
  store %struct.Memory* %loadMem_45532c, %struct.Memory** %MEMORY
  %loadMem_455330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4862 = getelementptr inbounds %struct.GPR, %struct.GPR* %4861, i32 0, i32 33
  %4863 = getelementptr inbounds %struct.Reg, %struct.Reg* %4862, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %4863 to i64*
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4865 = getelementptr inbounds %struct.GPR, %struct.GPR* %4864, i32 0, i32 11
  %4866 = getelementptr inbounds %struct.Reg, %struct.Reg* %4865, i32 0, i32 0
  %RDI.i131 = bitcast %union.anon* %4866 to i64*
  %4867 = load i64, i64* %RDI.i131
  %4868 = load i64, i64* %PC.i130
  %4869 = add i64 %4868, 7
  store i64 %4869, i64* %PC.i130
  %4870 = add i64 4848, %4867
  store i64 %4870, i64* %RDI.i131, align 8
  %4871 = icmp ult i64 %4870, %4867
  %4872 = icmp ult i64 %4870, 4848
  %4873 = or i1 %4871, %4872
  %4874 = zext i1 %4873 to i8
  %4875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4874, i8* %4875, align 1
  %4876 = trunc i64 %4870 to i32
  %4877 = and i32 %4876, 255
  %4878 = call i32 @llvm.ctpop.i32(i32 %4877)
  %4879 = trunc i32 %4878 to i8
  %4880 = and i8 %4879, 1
  %4881 = xor i8 %4880, 1
  %4882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4881, i8* %4882, align 1
  %4883 = xor i64 4848, %4867
  %4884 = xor i64 %4883, %4870
  %4885 = lshr i64 %4884, 4
  %4886 = trunc i64 %4885 to i8
  %4887 = and i8 %4886, 1
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4887, i8* %4888, align 1
  %4889 = icmp eq i64 %4870, 0
  %4890 = zext i1 %4889 to i8
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4890, i8* %4891, align 1
  %4892 = lshr i64 %4870, 63
  %4893 = trunc i64 %4892 to i8
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4893, i8* %4894, align 1
  %4895 = lshr i64 %4867, 63
  %4896 = xor i64 %4892, %4895
  %4897 = add i64 %4896, %4892
  %4898 = icmp eq i64 %4897, 2
  %4899 = zext i1 %4898 to i8
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4899, i8* %4900, align 1
  store %struct.Memory* %loadMem_455330, %struct.Memory** %MEMORY
  %loadMem_455337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4902 = getelementptr inbounds %struct.GPR, %struct.GPR* %4901, i32 0, i32 33
  %4903 = getelementptr inbounds %struct.Reg, %struct.Reg* %4902, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %4903 to i64*
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4905 = getelementptr inbounds %struct.GPR, %struct.GPR* %4904, i32 0, i32 9
  %4906 = getelementptr inbounds %struct.Reg, %struct.Reg* %4905, i32 0, i32 0
  %RSI.i128 = bitcast %union.anon* %4906 to i64*
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4908 = getelementptr inbounds %struct.GPR, %struct.GPR* %4907, i32 0, i32 15
  %4909 = getelementptr inbounds %struct.Reg, %struct.Reg* %4908, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %4909 to i64*
  %4910 = load i64, i64* %RBP.i129
  %4911 = sub i64 %4910, 4
  %4912 = load i64, i64* %PC.i127
  %4913 = add i64 %4912, 3
  store i64 %4913, i64* %PC.i127
  %4914 = inttoptr i64 %4911 to i32*
  %4915 = load i32, i32* %4914
  %4916 = zext i32 %4915 to i64
  store i64 %4916, i64* %RSI.i128, align 8
  store %struct.Memory* %loadMem_455337, %struct.Memory** %MEMORY
  %loadMem_45533a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4918 = getelementptr inbounds %struct.GPR, %struct.GPR* %4917, i32 0, i32 33
  %4919 = getelementptr inbounds %struct.Reg, %struct.Reg* %4918, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %4919 to i64*
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4921 = getelementptr inbounds %struct.GPR, %struct.GPR* %4920, i32 0, i32 1
  %4922 = getelementptr inbounds %struct.Reg, %struct.Reg* %4921, i32 0, i32 0
  %EAX.i125 = bitcast %union.anon* %4922 to i32*
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4924 = getelementptr inbounds %struct.GPR, %struct.GPR* %4923, i32 0, i32 15
  %4925 = getelementptr inbounds %struct.Reg, %struct.Reg* %4924, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %4925 to i64*
  %4926 = load i64, i64* %RBP.i126
  %4927 = sub i64 %4926, 176
  %4928 = load i32, i32* %EAX.i125
  %4929 = zext i32 %4928 to i64
  %4930 = load i64, i64* %PC.i124
  %4931 = add i64 %4930, 6
  store i64 %4931, i64* %PC.i124
  %4932 = inttoptr i64 %4927 to i32*
  store i32 %4928, i32* %4932
  store %struct.Memory* %loadMem_45533a, %struct.Memory** %MEMORY
  %loadMem_455340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4934 = getelementptr inbounds %struct.GPR, %struct.GPR* %4933, i32 0, i32 33
  %4935 = getelementptr inbounds %struct.Reg, %struct.Reg* %4934, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %4935 to i64*
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4937 = getelementptr inbounds %struct.GPR, %struct.GPR* %4936, i32 0, i32 9
  %4938 = getelementptr inbounds %struct.Reg, %struct.Reg* %4937, i32 0, i32 0
  %ESI.i122 = bitcast %union.anon* %4938 to i32*
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4940 = getelementptr inbounds %struct.GPR, %struct.GPR* %4939, i32 0, i32 1
  %4941 = getelementptr inbounds %struct.Reg, %struct.Reg* %4940, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %4941 to i64*
  %4942 = load i32, i32* %ESI.i122
  %4943 = zext i32 %4942 to i64
  %4944 = load i64, i64* %PC.i121
  %4945 = add i64 %4944, 2
  store i64 %4945, i64* %PC.i121
  %4946 = and i64 %4943, 4294967295
  store i64 %4946, i64* %RAX.i123, align 8
  store %struct.Memory* %loadMem_455340, %struct.Memory** %MEMORY
  %loadMem_455342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4948 = getelementptr inbounds %struct.GPR, %struct.GPR* %4947, i32 0, i32 33
  %4949 = getelementptr inbounds %struct.Reg, %struct.Reg* %4948, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %4949 to i64*
  %4950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4951 = getelementptr inbounds %struct.GPR, %struct.GPR* %4950, i32 0, i32 7
  %4952 = getelementptr inbounds %struct.Reg, %struct.Reg* %4951, i32 0, i32 0
  %EDX.i119 = bitcast %union.anon* %4952 to i32*
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4954 = getelementptr inbounds %struct.GPR, %struct.GPR* %4953, i32 0, i32 15
  %4955 = getelementptr inbounds %struct.Reg, %struct.Reg* %4954, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %4955 to i64*
  %4956 = load i64, i64* %RBP.i120
  %4957 = sub i64 %4956, 180
  %4958 = load i32, i32* %EDX.i119
  %4959 = zext i32 %4958 to i64
  %4960 = load i64, i64* %PC.i118
  %4961 = add i64 %4960, 6
  store i64 %4961, i64* %PC.i118
  %4962 = inttoptr i64 %4957 to i32*
  store i32 %4958, i32* %4962
  store %struct.Memory* %loadMem_455342, %struct.Memory** %MEMORY
  %loadMem_455348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4964 = getelementptr inbounds %struct.GPR, %struct.GPR* %4963, i32 0, i32 33
  %4965 = getelementptr inbounds %struct.Reg, %struct.Reg* %4964, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %4965 to i64*
  %4966 = load i64, i64* %PC.i117
  %4967 = add i64 %4966, 1
  store i64 %4967, i64* %PC.i117
  %4968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4970 = bitcast %union.anon* %4969 to i32*
  %4971 = load i32, i32* %4970, align 8
  %4972 = sext i32 %4971 to i64
  %4973 = lshr i64 %4972, 32
  store i64 %4973, i64* %4968, align 8
  store %struct.Memory* %loadMem_455348, %struct.Memory** %MEMORY
  %loadMem_455349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4975 = getelementptr inbounds %struct.GPR, %struct.GPR* %4974, i32 0, i32 33
  %4976 = getelementptr inbounds %struct.Reg, %struct.Reg* %4975, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %4976 to i64*
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4978 = getelementptr inbounds %struct.GPR, %struct.GPR* %4977, i32 0, i32 9
  %4979 = getelementptr inbounds %struct.Reg, %struct.Reg* %4978, i32 0, i32 0
  %RSI.i115 = bitcast %union.anon* %4979 to i64*
  %4980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4981 = getelementptr inbounds %struct.GPR, %struct.GPR* %4980, i32 0, i32 15
  %4982 = getelementptr inbounds %struct.Reg, %struct.Reg* %4981, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %4982 to i64*
  %4983 = load i64, i64* %RBP.i116
  %4984 = sub i64 %4983, 180
  %4985 = load i64, i64* %PC.i114
  %4986 = add i64 %4985, 6
  store i64 %4986, i64* %PC.i114
  %4987 = inttoptr i64 %4984 to i32*
  %4988 = load i32, i32* %4987
  %4989 = zext i32 %4988 to i64
  store i64 %4989, i64* %RSI.i115, align 8
  store %struct.Memory* %loadMem_455349, %struct.Memory** %MEMORY
  %loadMem_45534f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4991 = getelementptr inbounds %struct.GPR, %struct.GPR* %4990, i32 0, i32 33
  %4992 = getelementptr inbounds %struct.Reg, %struct.Reg* %4991, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %4992 to i64*
  %4993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4994 = getelementptr inbounds %struct.GPR, %struct.GPR* %4993, i32 0, i32 9
  %4995 = getelementptr inbounds %struct.Reg, %struct.Reg* %4994, i32 0, i32 0
  %ESI.i109 = bitcast %union.anon* %4995 to i32*
  %4996 = load i32, i32* %ESI.i109
  %4997 = zext i32 %4996 to i64
  %4998 = load i64, i64* %PC.i108
  %4999 = add i64 %4998, 2
  store i64 %4999, i64* %PC.i108
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5001 = bitcast %union.anon* %5000 to i32*
  %5002 = load i32, i32* %5001, align 8
  %5003 = zext i32 %5002 to i64
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %5005 = bitcast %union.anon* %5004 to i32*
  %5006 = load i32, i32* %5005, align 8
  %5007 = zext i32 %5006 to i64
  %5008 = shl i64 %4997, 32
  %5009 = ashr exact i64 %5008, 32
  %5010 = shl i64 %5007, 32
  %5011 = or i64 %5010, %5003
  %5012 = sdiv i64 %5011, %5009
  %5013 = shl i64 %5012, 32
  %5014 = ashr exact i64 %5013, 32
  %5015 = icmp eq i64 %5012, %5014
  br i1 %5015, label %5020, label %5016

; <label>:5016:                                   ; preds = %routine_idivl__ecx.exit154
  %5017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5018 = load i64, i64* %5017, align 8
  %5019 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5018, %struct.Memory* %loadMem_45534f)
  br label %routine_idivl__esi.exit110

; <label>:5020:                                   ; preds = %routine_idivl__ecx.exit154
  %5021 = srem i64 %5011, %5009
  %5022 = getelementptr inbounds %union.anon, %union.anon* %5000, i64 0, i32 0
  %5023 = and i64 %5012, 4294967295
  store i64 %5023, i64* %5022, align 8
  %5024 = getelementptr inbounds %union.anon, %union.anon* %5004, i64 0, i32 0
  %5025 = and i64 %5021, 4294967295
  store i64 %5025, i64* %5024, align 8
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5026, align 1
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %5027, align 1
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5028, align 1
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5029, align 1
  %5030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5030, align 1
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5031, align 1
  br label %routine_idivl__esi.exit110

routine_idivl__esi.exit110:                       ; preds = %5016, %5020
  %5032 = phi %struct.Memory* [ %5019, %5016 ], [ %loadMem_45534f, %5020 ]
  store %struct.Memory* %5032, %struct.Memory** %MEMORY
  %loadMem_455351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5034 = getelementptr inbounds %struct.GPR, %struct.GPR* %5033, i32 0, i32 33
  %5035 = getelementptr inbounds %struct.Reg, %struct.Reg* %5034, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %5035 to i64*
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5037 = getelementptr inbounds %struct.GPR, %struct.GPR* %5036, i32 0, i32 17
  %5038 = getelementptr inbounds %struct.Reg, %struct.Reg* %5037, i32 0, i32 0
  %R8D.i106 = bitcast %union.anon* %5038 to i32*
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5040 = getelementptr inbounds %struct.GPR, %struct.GPR* %5039, i32 0, i32 15
  %5041 = getelementptr inbounds %struct.Reg, %struct.Reg* %5040, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %5041 to i64*
  %5042 = bitcast i32* %R8D.i106 to i64*
  %5043 = load i64, i64* %RBP.i107
  %5044 = sub i64 %5043, 8
  %5045 = load i64, i64* %PC.i105
  %5046 = add i64 %5045, 4
  store i64 %5046, i64* %PC.i105
  %5047 = inttoptr i64 %5044 to i32*
  %5048 = load i32, i32* %5047
  %5049 = zext i32 %5048 to i64
  store i64 %5049, i64* %5042, align 8
  store %struct.Memory* %loadMem_455351, %struct.Memory** %MEMORY
  %loadMem_455355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5051 = getelementptr inbounds %struct.GPR, %struct.GPR* %5050, i32 0, i32 33
  %5052 = getelementptr inbounds %struct.Reg, %struct.Reg* %5051, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %5052 to i64*
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5054 = getelementptr inbounds %struct.GPR, %struct.GPR* %5053, i32 0, i32 1
  %5055 = getelementptr inbounds %struct.Reg, %struct.Reg* %5054, i32 0, i32 0
  %EAX.i103 = bitcast %union.anon* %5055 to i32*
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5057 = getelementptr inbounds %struct.GPR, %struct.GPR* %5056, i32 0, i32 15
  %5058 = getelementptr inbounds %struct.Reg, %struct.Reg* %5057, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %5058 to i64*
  %5059 = load i64, i64* %RBP.i104
  %5060 = sub i64 %5059, 184
  %5061 = load i32, i32* %EAX.i103
  %5062 = zext i32 %5061 to i64
  %5063 = load i64, i64* %PC.i102
  %5064 = add i64 %5063, 6
  store i64 %5064, i64* %PC.i102
  %5065 = inttoptr i64 %5060 to i32*
  store i32 %5061, i32* %5065
  store %struct.Memory* %loadMem_455355, %struct.Memory** %MEMORY
  %loadMem_45535b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5067 = getelementptr inbounds %struct.GPR, %struct.GPR* %5066, i32 0, i32 33
  %5068 = getelementptr inbounds %struct.Reg, %struct.Reg* %5067, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %5068 to i64*
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5070 = getelementptr inbounds %struct.GPR, %struct.GPR* %5069, i32 0, i32 17
  %5071 = getelementptr inbounds %struct.Reg, %struct.Reg* %5070, i32 0, i32 0
  %R8D.i100 = bitcast %union.anon* %5071 to i32*
  %5072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5073 = getelementptr inbounds %struct.GPR, %struct.GPR* %5072, i32 0, i32 1
  %5074 = getelementptr inbounds %struct.Reg, %struct.Reg* %5073, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %5074 to i64*
  %5075 = load i32, i32* %R8D.i100
  %5076 = zext i32 %5075 to i64
  %5077 = load i64, i64* %PC.i99
  %5078 = add i64 %5077, 3
  store i64 %5078, i64* %PC.i99
  %5079 = and i64 %5076, 4294967295
  store i64 %5079, i64* %RAX.i101, align 8
  store %struct.Memory* %loadMem_45535b, %struct.Memory** %MEMORY
  %loadMem_45535e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 33
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %5082 to i64*
  %5083 = load i64, i64* %PC.i98
  %5084 = add i64 %5083, 1
  store i64 %5084, i64* %PC.i98
  %5085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %5086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5087 = bitcast %union.anon* %5086 to i32*
  %5088 = load i32, i32* %5087, align 8
  %5089 = sext i32 %5088 to i64
  %5090 = lshr i64 %5089, 32
  store i64 %5090, i64* %5085, align 8
  store %struct.Memory* %loadMem_45535e, %struct.Memory** %MEMORY
  %loadMem_45535f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5092 = getelementptr inbounds %struct.GPR, %struct.GPR* %5091, i32 0, i32 33
  %5093 = getelementptr inbounds %struct.Reg, %struct.Reg* %5092, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %5093 to i64*
  %5094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5095 = getelementptr inbounds %struct.GPR, %struct.GPR* %5094, i32 0, i32 9
  %5096 = getelementptr inbounds %struct.Reg, %struct.Reg* %5095, i32 0, i32 0
  %ESI.i94 = bitcast %union.anon* %5096 to i32*
  %5097 = load i32, i32* %ESI.i94
  %5098 = zext i32 %5097 to i64
  %5099 = load i64, i64* %PC.i93
  %5100 = add i64 %5099, 2
  store i64 %5100, i64* %PC.i93
  %5101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5102 = bitcast %union.anon* %5101 to i32*
  %5103 = load i32, i32* %5102, align 8
  %5104 = zext i32 %5103 to i64
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %5106 = bitcast %union.anon* %5105 to i32*
  %5107 = load i32, i32* %5106, align 8
  %5108 = zext i32 %5107 to i64
  %5109 = shl i64 %5098, 32
  %5110 = ashr exact i64 %5109, 32
  %5111 = shl i64 %5108, 32
  %5112 = or i64 %5111, %5104
  %5113 = sdiv i64 %5112, %5110
  %5114 = shl i64 %5113, 32
  %5115 = ashr exact i64 %5114, 32
  %5116 = icmp eq i64 %5113, %5115
  br i1 %5116, label %5121, label %5117

; <label>:5117:                                   ; preds = %routine_idivl__esi.exit110
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5119 = load i64, i64* %5118, align 8
  %5120 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5119, %struct.Memory* %loadMem_45535f)
  br label %routine_idivl__esi.exit95

; <label>:5121:                                   ; preds = %routine_idivl__esi.exit110
  %5122 = srem i64 %5112, %5110
  %5123 = getelementptr inbounds %union.anon, %union.anon* %5101, i64 0, i32 0
  %5124 = and i64 %5113, 4294967295
  store i64 %5124, i64* %5123, align 8
  %5125 = getelementptr inbounds %union.anon, %union.anon* %5105, i64 0, i32 0
  %5126 = and i64 %5122, 4294967295
  store i64 %5126, i64* %5125, align 8
  %5127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5127, align 1
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %5128, align 1
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5129, align 1
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5130, align 1
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5131, align 1
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5132, align 1
  br label %routine_idivl__esi.exit95

routine_idivl__esi.exit95:                        ; preds = %5117, %5121
  %5133 = phi %struct.Memory* [ %5120, %5117 ], [ %loadMem_45535f, %5121 ]
  store %struct.Memory* %5133, %struct.Memory** %MEMORY
  %loadMem_455361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5135 = getelementptr inbounds %struct.GPR, %struct.GPR* %5134, i32 0, i32 33
  %5136 = getelementptr inbounds %struct.Reg, %struct.Reg* %5135, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %5136 to i64*
  %5137 = load i64, i64* %PC.i92
  %5138 = add i64 %5137, 1
  store i64 %5138, i64* %PC.i92
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %5140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5141 = bitcast %union.anon* %5140 to i32*
  %5142 = load i32, i32* %5141, align 8
  %5143 = sext i32 %5142 to i64
  %5144 = lshr i64 %5143, 32
  store i64 %5144, i64* %5139, align 8
  store %struct.Memory* %loadMem_455361, %struct.Memory** %MEMORY
  %loadMem_455362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5146 = getelementptr inbounds %struct.GPR, %struct.GPR* %5145, i32 0, i32 33
  %5147 = getelementptr inbounds %struct.Reg, %struct.Reg* %5146, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %5147 to i64*
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5149 = getelementptr inbounds %struct.GPR, %struct.GPR* %5148, i32 0, i32 5
  %5150 = getelementptr inbounds %struct.Reg, %struct.Reg* %5149, i32 0, i32 0
  %ECX.i87 = bitcast %union.anon* %5150 to i32*
  %5151 = load i32, i32* %ECX.i87
  %5152 = zext i32 %5151 to i64
  %5153 = load i64, i64* %PC.i86
  %5154 = add i64 %5153, 2
  store i64 %5154, i64* %PC.i86
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5156 = bitcast %union.anon* %5155 to i32*
  %5157 = load i32, i32* %5156, align 8
  %5158 = zext i32 %5157 to i64
  %5159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %5160 = bitcast %union.anon* %5159 to i32*
  %5161 = load i32, i32* %5160, align 8
  %5162 = zext i32 %5161 to i64
  %5163 = shl i64 %5152, 32
  %5164 = ashr exact i64 %5163, 32
  %5165 = shl i64 %5162, 32
  %5166 = or i64 %5165, %5158
  %5167 = sdiv i64 %5166, %5164
  %5168 = shl i64 %5167, 32
  %5169 = ashr exact i64 %5168, 32
  %5170 = icmp eq i64 %5167, %5169
  br i1 %5170, label %5175, label %5171

; <label>:5171:                                   ; preds = %routine_idivl__esi.exit95
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5173 = load i64, i64* %5172, align 8
  %5174 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5173, %struct.Memory* %loadMem_455362)
  br label %routine_idivl__ecx.exit88

; <label>:5175:                                   ; preds = %routine_idivl__esi.exit95
  %5176 = srem i64 %5166, %5164
  %5177 = getelementptr inbounds %union.anon, %union.anon* %5155, i64 0, i32 0
  %5178 = and i64 %5167, 4294967295
  store i64 %5178, i64* %5177, align 8
  %5179 = getelementptr inbounds %union.anon, %union.anon* %5159, i64 0, i32 0
  %5180 = and i64 %5176, 4294967295
  store i64 %5180, i64* %5179, align 8
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5181, align 1
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %5182, align 1
  %5183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5183, align 1
  %5184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5184, align 1
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5185, align 1
  %5186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5186, align 1
  br label %routine_idivl__ecx.exit88

routine_idivl__ecx.exit88:                        ; preds = %5171, %5175
  %5187 = phi %struct.Memory* [ %5174, %5171 ], [ %loadMem_455362, %5175 ]
  store %struct.Memory* %5187, %struct.Memory** %MEMORY
  %loadMem_455364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5189 = getelementptr inbounds %struct.GPR, %struct.GPR* %5188, i32 0, i32 33
  %5190 = getelementptr inbounds %struct.Reg, %struct.Reg* %5189, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %5190 to i64*
  %5191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5192 = getelementptr inbounds %struct.GPR, %struct.GPR* %5191, i32 0, i32 5
  %5193 = getelementptr inbounds %struct.Reg, %struct.Reg* %5192, i32 0, i32 0
  %ECX.i84 = bitcast %union.anon* %5193 to i32*
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5195 = getelementptr inbounds %struct.GPR, %struct.GPR* %5194, i32 0, i32 9
  %5196 = getelementptr inbounds %struct.Reg, %struct.Reg* %5195, i32 0, i32 0
  %RSI.i85 = bitcast %union.anon* %5196 to i64*
  %5197 = load i32, i32* %ECX.i84
  %5198 = zext i32 %5197 to i64
  %5199 = load i64, i64* %PC.i83
  %5200 = add i64 %5199, 2
  store i64 %5200, i64* %PC.i83
  %5201 = and i64 %5198, 4294967295
  store i64 %5201, i64* %RSI.i85, align 8
  store %struct.Memory* %loadMem_455364, %struct.Memory** %MEMORY
  %loadMem_455366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5203 = getelementptr inbounds %struct.GPR, %struct.GPR* %5202, i32 0, i32 33
  %5204 = getelementptr inbounds %struct.Reg, %struct.Reg* %5203, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %5204 to i64*
  %5205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5206 = getelementptr inbounds %struct.GPR, %struct.GPR* %5205, i32 0, i32 17
  %5207 = getelementptr inbounds %struct.Reg, %struct.Reg* %5206, i32 0, i32 0
  %R8D.i81 = bitcast %union.anon* %5207 to i32*
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5209 = getelementptr inbounds %struct.GPR, %struct.GPR* %5208, i32 0, i32 15
  %5210 = getelementptr inbounds %struct.Reg, %struct.Reg* %5209, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %5210 to i64*
  %5211 = bitcast i32* %R8D.i81 to i64*
  %5212 = load i64, i64* %RBP.i82
  %5213 = sub i64 %5212, 184
  %5214 = load i64, i64* %PC.i80
  %5215 = add i64 %5214, 7
  store i64 %5215, i64* %PC.i80
  %5216 = inttoptr i64 %5213 to i32*
  %5217 = load i32, i32* %5216
  %5218 = zext i32 %5217 to i64
  store i64 %5218, i64* %5211, align 8
  store %struct.Memory* %loadMem_455366, %struct.Memory** %MEMORY
  %loadMem_45536d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5220 = getelementptr inbounds %struct.GPR, %struct.GPR* %5219, i32 0, i32 33
  %5221 = getelementptr inbounds %struct.Reg, %struct.Reg* %5220, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %5221 to i64*
  %5222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5223 = getelementptr inbounds %struct.GPR, %struct.GPR* %5222, i32 0, i32 17
  %5224 = getelementptr inbounds %struct.Reg, %struct.Reg* %5223, i32 0, i32 0
  %R8D.i78 = bitcast %union.anon* %5224 to i32*
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5226 = getelementptr inbounds %struct.GPR, %struct.GPR* %5225, i32 0, i32 7
  %5227 = getelementptr inbounds %struct.Reg, %struct.Reg* %5226, i32 0, i32 0
  %RDX.i79 = bitcast %union.anon* %5227 to i64*
  %5228 = load i32, i32* %R8D.i78
  %5229 = zext i32 %5228 to i64
  %5230 = load i64, i64* %PC.i77
  %5231 = add i64 %5230, 3
  store i64 %5231, i64* %PC.i77
  %5232 = and i64 %5229, 4294967295
  store i64 %5232, i64* %RDX.i79, align 8
  store %struct.Memory* %loadMem_45536d, %struct.Memory** %MEMORY
  %loadMem_455370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5234 = getelementptr inbounds %struct.GPR, %struct.GPR* %5233, i32 0, i32 33
  %5235 = getelementptr inbounds %struct.Reg, %struct.Reg* %5234, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %5235 to i64*
  %5236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5237 = getelementptr inbounds %struct.GPR, %struct.GPR* %5236, i32 0, i32 5
  %5238 = getelementptr inbounds %struct.Reg, %struct.Reg* %5237, i32 0, i32 0
  %ECX.i75 = bitcast %union.anon* %5238 to i32*
  %5239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5240 = getelementptr inbounds %struct.GPR, %struct.GPR* %5239, i32 0, i32 15
  %5241 = getelementptr inbounds %struct.Reg, %struct.Reg* %5240, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %5241 to i64*
  %5242 = load i64, i64* %RBP.i76
  %5243 = sub i64 %5242, 188
  %5244 = load i32, i32* %ECX.i75
  %5245 = zext i32 %5244 to i64
  %5246 = load i64, i64* %PC.i74
  %5247 = add i64 %5246, 6
  store i64 %5247, i64* %PC.i74
  %5248 = inttoptr i64 %5243 to i32*
  store i32 %5244, i32* %5248
  store %struct.Memory* %loadMem_455370, %struct.Memory** %MEMORY
  %loadMem_455376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5250 = getelementptr inbounds %struct.GPR, %struct.GPR* %5249, i32 0, i32 33
  %5251 = getelementptr inbounds %struct.Reg, %struct.Reg* %5250, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %5251 to i64*
  %5252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5253 = getelementptr inbounds %struct.GPR, %struct.GPR* %5252, i32 0, i32 1
  %5254 = getelementptr inbounds %struct.Reg, %struct.Reg* %5253, i32 0, i32 0
  %EAX.i72 = bitcast %union.anon* %5254 to i32*
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5256 = getelementptr inbounds %struct.GPR, %struct.GPR* %5255, i32 0, i32 5
  %5257 = getelementptr inbounds %struct.Reg, %struct.Reg* %5256, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %5257 to i64*
  %5258 = load i32, i32* %EAX.i72
  %5259 = zext i32 %5258 to i64
  %5260 = load i64, i64* %PC.i71
  %5261 = add i64 %5260, 2
  store i64 %5261, i64* %PC.i71
  %5262 = and i64 %5259, 4294967295
  store i64 %5262, i64* %RCX.i73, align 8
  store %struct.Memory* %loadMem_455376, %struct.Memory** %MEMORY
  %loadMem_455378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5264 = getelementptr inbounds %struct.GPR, %struct.GPR* %5263, i32 0, i32 33
  %5265 = getelementptr inbounds %struct.Reg, %struct.Reg* %5264, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %5265 to i64*
  %5266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5267 = getelementptr inbounds %struct.GPR, %struct.GPR* %5266, i32 0, i32 17
  %5268 = getelementptr inbounds %struct.Reg, %struct.Reg* %5267, i32 0, i32 0
  %R8D.i69 = bitcast %union.anon* %5268 to i32*
  %5269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5270 = getelementptr inbounds %struct.GPR, %struct.GPR* %5269, i32 0, i32 15
  %5271 = getelementptr inbounds %struct.Reg, %struct.Reg* %5270, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %5271 to i64*
  %5272 = bitcast i32* %R8D.i69 to i64*
  %5273 = load i64, i64* %RBP.i70
  %5274 = sub i64 %5273, 188
  %5275 = load i64, i64* %PC.i68
  %5276 = add i64 %5275, 7
  store i64 %5276, i64* %PC.i68
  %5277 = inttoptr i64 %5274 to i32*
  %5278 = load i32, i32* %5277
  %5279 = zext i32 %5278 to i64
  store i64 %5279, i64* %5272, align 8
  store %struct.Memory* %loadMem_455378, %struct.Memory** %MEMORY
  %loadMem1_45537f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5281 = getelementptr inbounds %struct.GPR, %struct.GPR* %5280, i32 0, i32 33
  %5282 = getelementptr inbounds %struct.Reg, %struct.Reg* %5281, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %5282 to i64*
  %5283 = load i64, i64* %PC.i67
  %5284 = add i64 %5283, 20033
  %5285 = load i64, i64* %PC.i67
  %5286 = add i64 %5285, 5
  %5287 = load i64, i64* %PC.i67
  %5288 = add i64 %5287, 5
  store i64 %5288, i64* %PC.i67
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5290 = load i64, i64* %5289, align 8
  %5291 = add i64 %5290, -8
  %5292 = inttoptr i64 %5291 to i64*
  store i64 %5286, i64* %5292
  store i64 %5291, i64* %5289, align 8
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5284, i64* %5293, align 8
  store %struct.Memory* %loadMem1_45537f, %struct.Memory** %MEMORY
  %loadMem2_45537f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45537f = load i64, i64* %3
  %call2_45537f = call %struct.Memory* @sub_45a1c0.get_mem4Dshort(%struct.State* %0, i64 %loadPC_45537f, %struct.Memory* %loadMem2_45537f)
  store %struct.Memory* %call2_45537f, %struct.Memory** %MEMORY
  %loadMem_455384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5295 = getelementptr inbounds %struct.GPR, %struct.GPR* %5294, i32 0, i32 33
  %5296 = getelementptr inbounds %struct.Reg, %struct.Reg* %5295, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %5296 to i64*
  %5297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5298 = getelementptr inbounds %struct.GPR, %struct.GPR* %5297, i32 0, i32 5
  %5299 = getelementptr inbounds %struct.Reg, %struct.Reg* %5298, i32 0, i32 0
  %RCX.i66 = bitcast %union.anon* %5299 to i64*
  %5300 = load i64, i64* %PC.i65
  %5301 = add i64 %5300, 5
  store i64 %5301, i64* %PC.i65
  store i64 2, i64* %RCX.i66, align 8
  store %struct.Memory* %loadMem_455384, %struct.Memory** %MEMORY
  %loadMem_455389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5303 = getelementptr inbounds %struct.GPR, %struct.GPR* %5302, i32 0, i32 33
  %5304 = getelementptr inbounds %struct.Reg, %struct.Reg* %5303, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %5304 to i64*
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5306 = getelementptr inbounds %struct.GPR, %struct.GPR* %5305, i32 0, i32 7
  %5307 = getelementptr inbounds %struct.Reg, %struct.Reg* %5306, i32 0, i32 0
  %RDX.i64 = bitcast %union.anon* %5307 to i64*
  %5308 = load i64, i64* %PC.i63
  %5309 = add i64 %5308, 5
  store i64 %5309, i64* %PC.i63
  store i64 4, i64* %RDX.i64, align 8
  store %struct.Memory* %loadMem_455389, %struct.Memory** %MEMORY
  %loadMem_45538e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5311 = getelementptr inbounds %struct.GPR, %struct.GPR* %5310, i32 0, i32 33
  %5312 = getelementptr inbounds %struct.Reg, %struct.Reg* %5311, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %5312 to i64*
  %5313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5314 = getelementptr inbounds %struct.GPR, %struct.GPR* %5313, i32 0, i32 11
  %5315 = getelementptr inbounds %struct.Reg, %struct.Reg* %5314, i32 0, i32 0
  %RDI.i61 = bitcast %union.anon* %5315 to i64*
  %5316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5317 = getelementptr inbounds %struct.GPR, %struct.GPR* %5316, i32 0, i32 15
  %5318 = getelementptr inbounds %struct.Reg, %struct.Reg* %5317, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %5318 to i64*
  %5319 = load i64, i64* %RBP.i62
  %5320 = sub i64 %5319, 24
  %5321 = load i64, i64* %PC.i60
  %5322 = add i64 %5321, 4
  store i64 %5322, i64* %PC.i60
  %5323 = inttoptr i64 %5320 to i64*
  %5324 = load i64, i64* %5323
  store i64 %5324, i64* %RDI.i61, align 8
  store %struct.Memory* %loadMem_45538e, %struct.Memory** %MEMORY
  %loadMem_455392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5326 = getelementptr inbounds %struct.GPR, %struct.GPR* %5325, i32 0, i32 33
  %5327 = getelementptr inbounds %struct.Reg, %struct.Reg* %5326, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %5327 to i64*
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5329 = getelementptr inbounds %struct.GPR, %struct.GPR* %5328, i32 0, i32 11
  %5330 = getelementptr inbounds %struct.Reg, %struct.Reg* %5329, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5330 to i64*
  %5331 = load i64, i64* %RDI.i
  %5332 = load i64, i64* %PC.i59
  %5333 = add i64 %5332, 7
  store i64 %5333, i64* %PC.i59
  %5334 = add i64 4856, %5331
  store i64 %5334, i64* %RDI.i, align 8
  %5335 = icmp ult i64 %5334, %5331
  %5336 = icmp ult i64 %5334, 4856
  %5337 = or i1 %5335, %5336
  %5338 = zext i1 %5337 to i8
  %5339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5338, i8* %5339, align 1
  %5340 = trunc i64 %5334 to i32
  %5341 = and i32 %5340, 255
  %5342 = call i32 @llvm.ctpop.i32(i32 %5341)
  %5343 = trunc i32 %5342 to i8
  %5344 = and i8 %5343, 1
  %5345 = xor i8 %5344, 1
  %5346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5345, i8* %5346, align 1
  %5347 = xor i64 4856, %5331
  %5348 = xor i64 %5347, %5334
  %5349 = lshr i64 %5348, 4
  %5350 = trunc i64 %5349 to i8
  %5351 = and i8 %5350, 1
  %5352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5351, i8* %5352, align 1
  %5353 = icmp eq i64 %5334, 0
  %5354 = zext i1 %5353 to i8
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5354, i8* %5355, align 1
  %5356 = lshr i64 %5334, 63
  %5357 = trunc i64 %5356 to i8
  %5358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5357, i8* %5358, align 1
  %5359 = lshr i64 %5331, 63
  %5360 = xor i64 %5356, %5359
  %5361 = add i64 %5360, %5356
  %5362 = icmp eq i64 %5361, 2
  %5363 = zext i1 %5362 to i8
  %5364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5363, i8* %5364, align 1
  store %struct.Memory* %loadMem_455392, %struct.Memory** %MEMORY
  %loadMem_455399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5366 = getelementptr inbounds %struct.GPR, %struct.GPR* %5365, i32 0, i32 33
  %5367 = getelementptr inbounds %struct.Reg, %struct.Reg* %5366, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %5367 to i64*
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5369 = getelementptr inbounds %struct.GPR, %struct.GPR* %5368, i32 0, i32 9
  %5370 = getelementptr inbounds %struct.Reg, %struct.Reg* %5369, i32 0, i32 0
  %RSI.i57 = bitcast %union.anon* %5370 to i64*
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5372 = getelementptr inbounds %struct.GPR, %struct.GPR* %5371, i32 0, i32 15
  %5373 = getelementptr inbounds %struct.Reg, %struct.Reg* %5372, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %5373 to i64*
  %5374 = load i64, i64* %RBP.i58
  %5375 = sub i64 %5374, 4
  %5376 = load i64, i64* %PC.i56
  %5377 = add i64 %5376, 3
  store i64 %5377, i64* %PC.i56
  %5378 = inttoptr i64 %5375 to i32*
  %5379 = load i32, i32* %5378
  %5380 = zext i32 %5379 to i64
  store i64 %5380, i64* %RSI.i57, align 8
  store %struct.Memory* %loadMem_455399, %struct.Memory** %MEMORY
  %loadMem_45539c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5382 = getelementptr inbounds %struct.GPR, %struct.GPR* %5381, i32 0, i32 33
  %5383 = getelementptr inbounds %struct.Reg, %struct.Reg* %5382, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %5383 to i64*
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5385 = getelementptr inbounds %struct.GPR, %struct.GPR* %5384, i32 0, i32 1
  %5386 = getelementptr inbounds %struct.Reg, %struct.Reg* %5385, i32 0, i32 0
  %EAX.i54 = bitcast %union.anon* %5386 to i32*
  %5387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5388 = getelementptr inbounds %struct.GPR, %struct.GPR* %5387, i32 0, i32 15
  %5389 = getelementptr inbounds %struct.Reg, %struct.Reg* %5388, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %5389 to i64*
  %5390 = load i64, i64* %RBP.i55
  %5391 = sub i64 %5390, 192
  %5392 = load i32, i32* %EAX.i54
  %5393 = zext i32 %5392 to i64
  %5394 = load i64, i64* %PC.i53
  %5395 = add i64 %5394, 6
  store i64 %5395, i64* %PC.i53
  %5396 = inttoptr i64 %5391 to i32*
  store i32 %5392, i32* %5396
  store %struct.Memory* %loadMem_45539c, %struct.Memory** %MEMORY
  %loadMem_4553a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5398 = getelementptr inbounds %struct.GPR, %struct.GPR* %5397, i32 0, i32 33
  %5399 = getelementptr inbounds %struct.Reg, %struct.Reg* %5398, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %5399 to i64*
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5401 = getelementptr inbounds %struct.GPR, %struct.GPR* %5400, i32 0, i32 9
  %5402 = getelementptr inbounds %struct.Reg, %struct.Reg* %5401, i32 0, i32 0
  %ESI.i51 = bitcast %union.anon* %5402 to i32*
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5404 = getelementptr inbounds %struct.GPR, %struct.GPR* %5403, i32 0, i32 1
  %5405 = getelementptr inbounds %struct.Reg, %struct.Reg* %5404, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %5405 to i64*
  %5406 = load i32, i32* %ESI.i51
  %5407 = zext i32 %5406 to i64
  %5408 = load i64, i64* %PC.i50
  %5409 = add i64 %5408, 2
  store i64 %5409, i64* %PC.i50
  %5410 = and i64 %5407, 4294967295
  store i64 %5410, i64* %RAX.i52, align 8
  store %struct.Memory* %loadMem_4553a2, %struct.Memory** %MEMORY
  %loadMem_4553a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5412 = getelementptr inbounds %struct.GPR, %struct.GPR* %5411, i32 0, i32 33
  %5413 = getelementptr inbounds %struct.Reg, %struct.Reg* %5412, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %5413 to i64*
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5415 = getelementptr inbounds %struct.GPR, %struct.GPR* %5414, i32 0, i32 7
  %5416 = getelementptr inbounds %struct.Reg, %struct.Reg* %5415, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %5416 to i32*
  %5417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5418 = getelementptr inbounds %struct.GPR, %struct.GPR* %5417, i32 0, i32 15
  %5419 = getelementptr inbounds %struct.Reg, %struct.Reg* %5418, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %5419 to i64*
  %5420 = load i64, i64* %RBP.i49
  %5421 = sub i64 %5420, 196
  %5422 = load i32, i32* %EDX.i
  %5423 = zext i32 %5422 to i64
  %5424 = load i64, i64* %PC.i48
  %5425 = add i64 %5424, 6
  store i64 %5425, i64* %PC.i48
  %5426 = inttoptr i64 %5421 to i32*
  store i32 %5422, i32* %5426
  store %struct.Memory* %loadMem_4553a4, %struct.Memory** %MEMORY
  %loadMem_4553aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5428 = getelementptr inbounds %struct.GPR, %struct.GPR* %5427, i32 0, i32 33
  %5429 = getelementptr inbounds %struct.Reg, %struct.Reg* %5428, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %5429 to i64*
  %5430 = load i64, i64* %PC.i47
  %5431 = add i64 %5430, 1
  store i64 %5431, i64* %PC.i47
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %5433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5434 = bitcast %union.anon* %5433 to i32*
  %5435 = load i32, i32* %5434, align 8
  %5436 = sext i32 %5435 to i64
  %5437 = lshr i64 %5436, 32
  store i64 %5437, i64* %5432, align 8
  store %struct.Memory* %loadMem_4553aa, %struct.Memory** %MEMORY
  %loadMem_4553ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %5438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5439 = getelementptr inbounds %struct.GPR, %struct.GPR* %5438, i32 0, i32 33
  %5440 = getelementptr inbounds %struct.Reg, %struct.Reg* %5439, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %5440 to i64*
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5442 = getelementptr inbounds %struct.GPR, %struct.GPR* %5441, i32 0, i32 9
  %5443 = getelementptr inbounds %struct.Reg, %struct.Reg* %5442, i32 0, i32 0
  %RSI.i45 = bitcast %union.anon* %5443 to i64*
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5445 = getelementptr inbounds %struct.GPR, %struct.GPR* %5444, i32 0, i32 15
  %5446 = getelementptr inbounds %struct.Reg, %struct.Reg* %5445, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %5446 to i64*
  %5447 = load i64, i64* %RBP.i46
  %5448 = sub i64 %5447, 196
  %5449 = load i64, i64* %PC.i44
  %5450 = add i64 %5449, 6
  store i64 %5450, i64* %PC.i44
  %5451 = inttoptr i64 %5448 to i32*
  %5452 = load i32, i32* %5451
  %5453 = zext i32 %5452 to i64
  store i64 %5453, i64* %RSI.i45, align 8
  store %struct.Memory* %loadMem_4553ab, %struct.Memory** %MEMORY
  %loadMem_4553b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5455 = getelementptr inbounds %struct.GPR, %struct.GPR* %5454, i32 0, i32 33
  %5456 = getelementptr inbounds %struct.Reg, %struct.Reg* %5455, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %5456 to i64*
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5458 = getelementptr inbounds %struct.GPR, %struct.GPR* %5457, i32 0, i32 9
  %5459 = getelementptr inbounds %struct.Reg, %struct.Reg* %5458, i32 0, i32 0
  %ESI.i40 = bitcast %union.anon* %5459 to i32*
  %5460 = load i32, i32* %ESI.i40
  %5461 = zext i32 %5460 to i64
  %5462 = load i64, i64* %PC.i39
  %5463 = add i64 %5462, 2
  store i64 %5463, i64* %PC.i39
  %5464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5465 = bitcast %union.anon* %5464 to i32*
  %5466 = load i32, i32* %5465, align 8
  %5467 = zext i32 %5466 to i64
  %5468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %5469 = bitcast %union.anon* %5468 to i32*
  %5470 = load i32, i32* %5469, align 8
  %5471 = zext i32 %5470 to i64
  %5472 = shl i64 %5461, 32
  %5473 = ashr exact i64 %5472, 32
  %5474 = shl i64 %5471, 32
  %5475 = or i64 %5474, %5467
  %5476 = sdiv i64 %5475, %5473
  %5477 = shl i64 %5476, 32
  %5478 = ashr exact i64 %5477, 32
  %5479 = icmp eq i64 %5476, %5478
  br i1 %5479, label %5484, label %5480

; <label>:5480:                                   ; preds = %routine_idivl__ecx.exit88
  %5481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5482 = load i64, i64* %5481, align 8
  %5483 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5482, %struct.Memory* %loadMem_4553b1)
  br label %routine_idivl__esi.exit41

; <label>:5484:                                   ; preds = %routine_idivl__ecx.exit88
  %5485 = srem i64 %5475, %5473
  %5486 = getelementptr inbounds %union.anon, %union.anon* %5464, i64 0, i32 0
  %5487 = and i64 %5476, 4294967295
  store i64 %5487, i64* %5486, align 8
  %5488 = getelementptr inbounds %union.anon, %union.anon* %5468, i64 0, i32 0
  %5489 = and i64 %5485, 4294967295
  store i64 %5489, i64* %5488, align 8
  %5490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5490, align 1
  %5491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %5491, align 1
  %5492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5492, align 1
  %5493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5493, align 1
  %5494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5494, align 1
  %5495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5495, align 1
  br label %routine_idivl__esi.exit41

routine_idivl__esi.exit41:                        ; preds = %5480, %5484
  %5496 = phi %struct.Memory* [ %5483, %5480 ], [ %loadMem_4553b1, %5484 ]
  store %struct.Memory* %5496, %struct.Memory** %MEMORY
  %loadMem_4553b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5498 = getelementptr inbounds %struct.GPR, %struct.GPR* %5497, i32 0, i32 33
  %5499 = getelementptr inbounds %struct.Reg, %struct.Reg* %5498, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %5499 to i64*
  %5500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5501 = getelementptr inbounds %struct.GPR, %struct.GPR* %5500, i32 0, i32 17
  %5502 = getelementptr inbounds %struct.Reg, %struct.Reg* %5501, i32 0, i32 0
  %R8D.i37 = bitcast %union.anon* %5502 to i32*
  %5503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5504 = getelementptr inbounds %struct.GPR, %struct.GPR* %5503, i32 0, i32 15
  %5505 = getelementptr inbounds %struct.Reg, %struct.Reg* %5504, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %5505 to i64*
  %5506 = bitcast i32* %R8D.i37 to i64*
  %5507 = load i64, i64* %RBP.i38
  %5508 = sub i64 %5507, 8
  %5509 = load i64, i64* %PC.i36
  %5510 = add i64 %5509, 4
  store i64 %5510, i64* %PC.i36
  %5511 = inttoptr i64 %5508 to i32*
  %5512 = load i32, i32* %5511
  %5513 = zext i32 %5512 to i64
  store i64 %5513, i64* %5506, align 8
  store %struct.Memory* %loadMem_4553b3, %struct.Memory** %MEMORY
  %loadMem_4553b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5515 = getelementptr inbounds %struct.GPR, %struct.GPR* %5514, i32 0, i32 33
  %5516 = getelementptr inbounds %struct.Reg, %struct.Reg* %5515, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %5516 to i64*
  %5517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5518 = getelementptr inbounds %struct.GPR, %struct.GPR* %5517, i32 0, i32 1
  %5519 = getelementptr inbounds %struct.Reg, %struct.Reg* %5518, i32 0, i32 0
  %EAX.i34 = bitcast %union.anon* %5519 to i32*
  %5520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5521 = getelementptr inbounds %struct.GPR, %struct.GPR* %5520, i32 0, i32 15
  %5522 = getelementptr inbounds %struct.Reg, %struct.Reg* %5521, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %5522 to i64*
  %5523 = load i64, i64* %RBP.i35
  %5524 = sub i64 %5523, 200
  %5525 = load i32, i32* %EAX.i34
  %5526 = zext i32 %5525 to i64
  %5527 = load i64, i64* %PC.i33
  %5528 = add i64 %5527, 6
  store i64 %5528, i64* %PC.i33
  %5529 = inttoptr i64 %5524 to i32*
  store i32 %5525, i32* %5529
  store %struct.Memory* %loadMem_4553b7, %struct.Memory** %MEMORY
  %loadMem_4553bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5531 = getelementptr inbounds %struct.GPR, %struct.GPR* %5530, i32 0, i32 33
  %5532 = getelementptr inbounds %struct.Reg, %struct.Reg* %5531, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %5532 to i64*
  %5533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5534 = getelementptr inbounds %struct.GPR, %struct.GPR* %5533, i32 0, i32 17
  %5535 = getelementptr inbounds %struct.Reg, %struct.Reg* %5534, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %5535 to i32*
  %5536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5537 = getelementptr inbounds %struct.GPR, %struct.GPR* %5536, i32 0, i32 1
  %5538 = getelementptr inbounds %struct.Reg, %struct.Reg* %5537, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %5538 to i64*
  %5539 = load i32, i32* %R8D.i
  %5540 = zext i32 %5539 to i64
  %5541 = load i64, i64* %PC.i31
  %5542 = add i64 %5541, 3
  store i64 %5542, i64* %PC.i31
  %5543 = and i64 %5540, 4294967295
  store i64 %5543, i64* %RAX.i32, align 8
  store %struct.Memory* %loadMem_4553bd, %struct.Memory** %MEMORY
  %loadMem_4553c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5545 = getelementptr inbounds %struct.GPR, %struct.GPR* %5544, i32 0, i32 33
  %5546 = getelementptr inbounds %struct.Reg, %struct.Reg* %5545, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %5546 to i64*
  %5547 = load i64, i64* %PC.i30
  %5548 = add i64 %5547, 1
  store i64 %5548, i64* %PC.i30
  %5549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5551 = bitcast %union.anon* %5550 to i32*
  %5552 = load i32, i32* %5551, align 8
  %5553 = sext i32 %5552 to i64
  %5554 = lshr i64 %5553, 32
  store i64 %5554, i64* %5549, align 8
  store %struct.Memory* %loadMem_4553c0, %struct.Memory** %MEMORY
  %loadMem_4553c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5556 = getelementptr inbounds %struct.GPR, %struct.GPR* %5555, i32 0, i32 33
  %5557 = getelementptr inbounds %struct.Reg, %struct.Reg* %5556, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %5557 to i64*
  %5558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5559 = getelementptr inbounds %struct.GPR, %struct.GPR* %5558, i32 0, i32 9
  %5560 = getelementptr inbounds %struct.Reg, %struct.Reg* %5559, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %5560 to i32*
  %5561 = load i32, i32* %ESI.i
  %5562 = zext i32 %5561 to i64
  %5563 = load i64, i64* %PC.i27
  %5564 = add i64 %5563, 2
  store i64 %5564, i64* %PC.i27
  %5565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5566 = bitcast %union.anon* %5565 to i32*
  %5567 = load i32, i32* %5566, align 8
  %5568 = zext i32 %5567 to i64
  %5569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %5570 = bitcast %union.anon* %5569 to i32*
  %5571 = load i32, i32* %5570, align 8
  %5572 = zext i32 %5571 to i64
  %5573 = shl i64 %5562, 32
  %5574 = ashr exact i64 %5573, 32
  %5575 = shl i64 %5572, 32
  %5576 = or i64 %5575, %5568
  %5577 = sdiv i64 %5576, %5574
  %5578 = shl i64 %5577, 32
  %5579 = ashr exact i64 %5578, 32
  %5580 = icmp eq i64 %5577, %5579
  br i1 %5580, label %5585, label %5581

; <label>:5581:                                   ; preds = %routine_idivl__esi.exit41
  %5582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5583 = load i64, i64* %5582, align 8
  %5584 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5583, %struct.Memory* %loadMem_4553c1)
  br label %routine_idivl__esi.exit

; <label>:5585:                                   ; preds = %routine_idivl__esi.exit41
  %5586 = srem i64 %5576, %5574
  %5587 = getelementptr inbounds %union.anon, %union.anon* %5565, i64 0, i32 0
  %5588 = and i64 %5577, 4294967295
  store i64 %5588, i64* %5587, align 8
  %5589 = getelementptr inbounds %union.anon, %union.anon* %5569, i64 0, i32 0
  %5590 = and i64 %5586, 4294967295
  store i64 %5590, i64* %5589, align 8
  %5591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5591, align 1
  %5592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %5592, align 1
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5593, align 1
  %5594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5594, align 1
  %5595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5595, align 1
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5596, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %5581, %5585
  %5597 = phi %struct.Memory* [ %5584, %5581 ], [ %loadMem_4553c1, %5585 ]
  store %struct.Memory* %5597, %struct.Memory** %MEMORY
  %loadMem_4553c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5599 = getelementptr inbounds %struct.GPR, %struct.GPR* %5598, i32 0, i32 33
  %5600 = getelementptr inbounds %struct.Reg, %struct.Reg* %5599, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %5600 to i64*
  %5601 = load i64, i64* %PC.i26
  %5602 = add i64 %5601, 1
  store i64 %5602, i64* %PC.i26
  %5603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %5604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5605 = bitcast %union.anon* %5604 to i32*
  %5606 = load i32, i32* %5605, align 8
  %5607 = sext i32 %5606 to i64
  %5608 = lshr i64 %5607, 32
  store i64 %5608, i64* %5603, align 8
  store %struct.Memory* %loadMem_4553c3, %struct.Memory** %MEMORY
  %loadMem_4553c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5610 = getelementptr inbounds %struct.GPR, %struct.GPR* %5609, i32 0, i32 33
  %5611 = getelementptr inbounds %struct.Reg, %struct.Reg* %5610, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %5611 to i64*
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5613 = getelementptr inbounds %struct.GPR, %struct.GPR* %5612, i32 0, i32 5
  %5614 = getelementptr inbounds %struct.Reg, %struct.Reg* %5613, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5614 to i32*
  %5615 = load i32, i32* %ECX.i
  %5616 = zext i32 %5615 to i64
  %5617 = load i64, i64* %PC.i22
  %5618 = add i64 %5617, 2
  store i64 %5618, i64* %PC.i22
  %5619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5620 = bitcast %union.anon* %5619 to i32*
  %5621 = load i32, i32* %5620, align 8
  %5622 = zext i32 %5621 to i64
  %5623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %5624 = bitcast %union.anon* %5623 to i32*
  %5625 = load i32, i32* %5624, align 8
  %5626 = zext i32 %5625 to i64
  %5627 = shl i64 %5616, 32
  %5628 = ashr exact i64 %5627, 32
  %5629 = shl i64 %5626, 32
  %5630 = or i64 %5629, %5622
  %5631 = sdiv i64 %5630, %5628
  %5632 = shl i64 %5631, 32
  %5633 = ashr exact i64 %5632, 32
  %5634 = icmp eq i64 %5631, %5633
  br i1 %5634, label %5639, label %5635

; <label>:5635:                                   ; preds = %routine_idivl__esi.exit
  %5636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5637 = load i64, i64* %5636, align 8
  %5638 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5637, %struct.Memory* %loadMem_4553c4)
  br label %routine_idivl__ecx.exit

; <label>:5639:                                   ; preds = %routine_idivl__esi.exit
  %5640 = srem i64 %5630, %5628
  %5641 = getelementptr inbounds %union.anon, %union.anon* %5619, i64 0, i32 0
  %5642 = and i64 %5631, 4294967295
  store i64 %5642, i64* %5641, align 8
  %5643 = getelementptr inbounds %union.anon, %union.anon* %5623, i64 0, i32 0
  %5644 = and i64 %5640, 4294967295
  store i64 %5644, i64* %5643, align 8
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5645, align 1
  %5646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %5646, align 1
  %5647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5647, align 1
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5648, align 1
  %5649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5649, align 1
  %5650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5650, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %5635, %5639
  %5651 = phi %struct.Memory* [ %5638, %5635 ], [ %loadMem_4553c4, %5639 ]
  store %struct.Memory* %5651, %struct.Memory** %MEMORY
  %loadMem_4553c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5653 = getelementptr inbounds %struct.GPR, %struct.GPR* %5652, i32 0, i32 33
  %5654 = getelementptr inbounds %struct.Reg, %struct.Reg* %5653, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %5654 to i64*
  %5655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5656 = getelementptr inbounds %struct.GPR, %struct.GPR* %5655, i32 0, i32 9
  %5657 = getelementptr inbounds %struct.Reg, %struct.Reg* %5656, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5657 to i64*
  %5658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5659 = getelementptr inbounds %struct.GPR, %struct.GPR* %5658, i32 0, i32 15
  %5660 = getelementptr inbounds %struct.Reg, %struct.Reg* %5659, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %5660 to i64*
  %5661 = load i64, i64* %RBP.i21
  %5662 = sub i64 %5661, 200
  %5663 = load i64, i64* %PC.i20
  %5664 = add i64 %5663, 6
  store i64 %5664, i64* %PC.i20
  %5665 = inttoptr i64 %5662 to i32*
  %5666 = load i32, i32* %5665
  %5667 = zext i32 %5666 to i64
  store i64 %5667, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4553c6, %struct.Memory** %MEMORY
  %loadMem_4553cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5669 = getelementptr inbounds %struct.GPR, %struct.GPR* %5668, i32 0, i32 33
  %5670 = getelementptr inbounds %struct.Reg, %struct.Reg* %5669, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %5670 to i64*
  %5671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5672 = getelementptr inbounds %struct.GPR, %struct.GPR* %5671, i32 0, i32 1
  %5673 = getelementptr inbounds %struct.Reg, %struct.Reg* %5672, i32 0, i32 0
  %EAX.i19 = bitcast %union.anon* %5673 to i32*
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5675 = getelementptr inbounds %struct.GPR, %struct.GPR* %5674, i32 0, i32 7
  %5676 = getelementptr inbounds %struct.Reg, %struct.Reg* %5675, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5676 to i64*
  %5677 = load i32, i32* %EAX.i19
  %5678 = zext i32 %5677 to i64
  %5679 = load i64, i64* %PC.i18
  %5680 = add i64 %5679, 2
  store i64 %5680, i64* %PC.i18
  %5681 = and i64 %5678, 4294967295
  store i64 %5681, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_4553cc, %struct.Memory** %MEMORY
  %loadMem1_4553ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %5682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5683 = getelementptr inbounds %struct.GPR, %struct.GPR* %5682, i32 0, i32 33
  %5684 = getelementptr inbounds %struct.Reg, %struct.Reg* %5683, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %5684 to i64*
  %5685 = load i64, i64* %PC.i17
  %5686 = add i64 %5685, 17234
  %5687 = load i64, i64* %PC.i17
  %5688 = add i64 %5687, 5
  %5689 = load i64, i64* %PC.i17
  %5690 = add i64 %5689, 5
  store i64 %5690, i64* %PC.i17
  %5691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5692 = load i64, i64* %5691, align 8
  %5693 = add i64 %5692, -8
  %5694 = inttoptr i64 %5693 to i64*
  store i64 %5688, i64* %5694
  store i64 %5693, i64* %5691, align 8
  %5695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5686, i64* %5695, align 8
  store %struct.Memory* %loadMem1_4553ce, %struct.Memory** %MEMORY
  %loadMem2_4553ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4553ce = load i64, i64* %3
  %call2_4553ce = call %struct.Memory* @sub_459720.get_mem2D(%struct.State* %0, i64 %loadPC_4553ce, %struct.Memory* %loadMem2_4553ce)
  store %struct.Memory* %call2_4553ce, %struct.Memory** %MEMORY
  %loadMem_4553d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5697 = getelementptr inbounds %struct.GPR, %struct.GPR* %5696, i32 0, i32 33
  %5698 = getelementptr inbounds %struct.Reg, %struct.Reg* %5697, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %5698 to i64*
  %5699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5700 = getelementptr inbounds %struct.GPR, %struct.GPR* %5699, i32 0, i32 1
  %5701 = getelementptr inbounds %struct.Reg, %struct.Reg* %5700, i32 0, i32 0
  %EAX.i15 = bitcast %union.anon* %5701 to i32*
  %5702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5703 = getelementptr inbounds %struct.GPR, %struct.GPR* %5702, i32 0, i32 15
  %5704 = getelementptr inbounds %struct.Reg, %struct.Reg* %5703, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %5704 to i64*
  %5705 = load i64, i64* %RBP.i16
  %5706 = sub i64 %5705, 204
  %5707 = load i32, i32* %EAX.i15
  %5708 = zext i32 %5707 to i64
  %5709 = load i64, i64* %PC.i14
  %5710 = add i64 %5709, 6
  store i64 %5710, i64* %PC.i14
  %5711 = inttoptr i64 %5706 to i32*
  store i32 %5707, i32* %5711
  store %struct.Memory* %loadMem_4553d3, %struct.Memory** %MEMORY
  br label %block_.L_4553d9

block_.L_4553d9:                                  ; preds = %routine_idivl__ecx.exit, %routine_idivl__ecx.exit548
  %loadMem_4553d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5713 = getelementptr inbounds %struct.GPR, %struct.GPR* %5712, i32 0, i32 33
  %5714 = getelementptr inbounds %struct.Reg, %struct.Reg* %5713, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %5714 to i64*
  %5715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5716 = getelementptr inbounds %struct.GPR, %struct.GPR* %5715, i32 0, i32 1
  %5717 = getelementptr inbounds %struct.Reg, %struct.Reg* %5716, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %5717 to i64*
  %5718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5719 = getelementptr inbounds %struct.GPR, %struct.GPR* %5718, i32 0, i32 15
  %5720 = getelementptr inbounds %struct.Reg, %struct.Reg* %5719, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %5720 to i64*
  %5721 = load i64, i64* %RBP.i13
  %5722 = sub i64 %5721, 12
  %5723 = load i64, i64* %PC.i11
  %5724 = add i64 %5723, 3
  store i64 %5724, i64* %PC.i11
  %5725 = inttoptr i64 %5722 to i32*
  %5726 = load i32, i32* %5725
  %5727 = zext i32 %5726 to i64
  store i64 %5727, i64* %RAX.i12, align 8
  store %struct.Memory* %loadMem_4553d9, %struct.Memory** %MEMORY
  %loadMem_4553dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5729 = getelementptr inbounds %struct.GPR, %struct.GPR* %5728, i32 0, i32 33
  %5730 = getelementptr inbounds %struct.Reg, %struct.Reg* %5729, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %5730 to i64*
  %5731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5732 = getelementptr inbounds %struct.GPR, %struct.GPR* %5731, i32 0, i32 5
  %5733 = getelementptr inbounds %struct.Reg, %struct.Reg* %5732, i32 0, i32 0
  %RCX.i9 = bitcast %union.anon* %5733 to i64*
  %5734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5735 = getelementptr inbounds %struct.GPR, %struct.GPR* %5734, i32 0, i32 15
  %5736 = getelementptr inbounds %struct.Reg, %struct.Reg* %5735, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %5736 to i64*
  %5737 = load i64, i64* %RBP.i10
  %5738 = sub i64 %5737, 24
  %5739 = load i64, i64* %PC.i8
  %5740 = add i64 %5739, 4
  store i64 %5740, i64* %PC.i8
  %5741 = inttoptr i64 %5738 to i64*
  %5742 = load i64, i64* %5741
  store i64 %5742, i64* %RCX.i9, align 8
  store %struct.Memory* %loadMem_4553dc, %struct.Memory** %MEMORY
  %loadMem_4553e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5744 = getelementptr inbounds %struct.GPR, %struct.GPR* %5743, i32 0, i32 33
  %5745 = getelementptr inbounds %struct.Reg, %struct.Reg* %5744, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5745 to i64*
  %5746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5747 = getelementptr inbounds %struct.GPR, %struct.GPR* %5746, i32 0, i32 1
  %5748 = getelementptr inbounds %struct.Reg, %struct.Reg* %5747, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5748 to i32*
  %5749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5750 = getelementptr inbounds %struct.GPR, %struct.GPR* %5749, i32 0, i32 5
  %5751 = getelementptr inbounds %struct.Reg, %struct.Reg* %5750, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5751 to i64*
  %5752 = load i64, i64* %RCX.i
  %5753 = load i32, i32* %EAX.i
  %5754 = zext i32 %5753 to i64
  %5755 = load i64, i64* %PC.i7
  %5756 = add i64 %5755, 2
  store i64 %5756, i64* %PC.i7
  %5757 = inttoptr i64 %5752 to i32*
  store i32 %5753, i32* %5757
  store %struct.Memory* %loadMem_4553e0, %struct.Memory** %MEMORY
  %loadMem_4553e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5759 = getelementptr inbounds %struct.GPR, %struct.GPR* %5758, i32 0, i32 33
  %5760 = getelementptr inbounds %struct.Reg, %struct.Reg* %5759, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5760 to i64*
  %5761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5762 = getelementptr inbounds %struct.GPR, %struct.GPR* %5761, i32 0, i32 1
  %5763 = getelementptr inbounds %struct.Reg, %struct.Reg* %5762, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5763 to i64*
  %5764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5765 = getelementptr inbounds %struct.GPR, %struct.GPR* %5764, i32 0, i32 15
  %5766 = getelementptr inbounds %struct.Reg, %struct.Reg* %5765, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %5766 to i64*
  %5767 = load i64, i64* %RBP.i6
  %5768 = sub i64 %5767, 24
  %5769 = load i64, i64* %PC.i5
  %5770 = add i64 %5769, 4
  store i64 %5770, i64* %PC.i5
  %5771 = inttoptr i64 %5768 to i64*
  %5772 = load i64, i64* %5771
  store i64 %5772, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_4553e2, %struct.Memory** %MEMORY
  %loadMem_4553e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5774 = getelementptr inbounds %struct.GPR, %struct.GPR* %5773, i32 0, i32 33
  %5775 = getelementptr inbounds %struct.Reg, %struct.Reg* %5774, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5775 to i64*
  %5776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5777 = getelementptr inbounds %struct.GPR, %struct.GPR* %5776, i32 0, i32 13
  %5778 = getelementptr inbounds %struct.Reg, %struct.Reg* %5777, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5778 to i64*
  %5779 = load i64, i64* %RSP.i
  %5780 = load i64, i64* %PC.i4
  %5781 = add i64 %5780, 7
  store i64 %5781, i64* %PC.i4
  %5782 = add i64 208, %5779
  store i64 %5782, i64* %RSP.i, align 8
  %5783 = icmp ult i64 %5782, %5779
  %5784 = icmp ult i64 %5782, 208
  %5785 = or i1 %5783, %5784
  %5786 = zext i1 %5785 to i8
  %5787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5786, i8* %5787, align 1
  %5788 = trunc i64 %5782 to i32
  %5789 = and i32 %5788, 255
  %5790 = call i32 @llvm.ctpop.i32(i32 %5789)
  %5791 = trunc i32 %5790 to i8
  %5792 = and i8 %5791, 1
  %5793 = xor i8 %5792, 1
  %5794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5793, i8* %5794, align 1
  %5795 = xor i64 208, %5779
  %5796 = xor i64 %5795, %5782
  %5797 = lshr i64 %5796, 4
  %5798 = trunc i64 %5797 to i8
  %5799 = and i8 %5798, 1
  %5800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5799, i8* %5800, align 1
  %5801 = icmp eq i64 %5782, 0
  %5802 = zext i1 %5801 to i8
  %5803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5802, i8* %5803, align 1
  %5804 = lshr i64 %5782, 63
  %5805 = trunc i64 %5804 to i8
  %5806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5805, i8* %5806, align 1
  %5807 = lshr i64 %5779, 63
  %5808 = xor i64 %5804, %5807
  %5809 = add i64 %5808, %5804
  %5810 = icmp eq i64 %5809, 2
  %5811 = zext i1 %5810 to i8
  %5812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5811, i8* %5812, align 1
  store %struct.Memory* %loadMem_4553e6, %struct.Memory** %MEMORY
  %loadMem_4553ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %5813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5814 = getelementptr inbounds %struct.GPR, %struct.GPR* %5813, i32 0, i32 33
  %5815 = getelementptr inbounds %struct.Reg, %struct.Reg* %5814, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5815 to i64*
  %5816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5817 = getelementptr inbounds %struct.GPR, %struct.GPR* %5816, i32 0, i32 15
  %5818 = getelementptr inbounds %struct.Reg, %struct.Reg* %5817, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5818 to i64*
  %5819 = load i64, i64* %PC.i2
  %5820 = add i64 %5819, 1
  store i64 %5820, i64* %PC.i2
  %5821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5822 = load i64, i64* %5821, align 8
  %5823 = add i64 %5822, 8
  %5824 = inttoptr i64 %5822 to i64*
  %5825 = load i64, i64* %5824
  store i64 %5825, i64* %RBP.i3, align 8
  store i64 %5823, i64* %5821, align 8
  store %struct.Memory* %loadMem_4553ed, %struct.Memory** %MEMORY
  %loadMem_4553ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %5826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5827 = getelementptr inbounds %struct.GPR, %struct.GPR* %5826, i32 0, i32 33
  %5828 = getelementptr inbounds %struct.Reg, %struct.Reg* %5827, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5828 to i64*
  %5829 = load i64, i64* %PC.i1
  %5830 = add i64 %5829, 1
  store i64 %5830, i64* %PC.i1
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5833 = load i64, i64* %5832, align 8
  %5834 = inttoptr i64 %5833 to i64*
  %5835 = load i64, i64* %5834
  store i64 %5835, i64* %5831, align 8
  %5836 = add i64 %5833, 8
  store i64 %5836, i64* %5832, align 8
  store %struct.Memory* %loadMem_4553ee, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4553ee
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

define %struct.Memory* @routine_subq__0xd0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 208
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 208
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
  %23 = xor i64 208, %9
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

define %struct.Memory* @routine_movl__0x1310___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4880, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__r8___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
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

define %struct.Memory* @routine_cmpq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_454fff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4c1d94___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c1d94_type* @G__0x4c1d94 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x4__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
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

define %struct.Memory* @routine_movl__ecx__0x8__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
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

define %struct.Memory* @routine_addq__0x640___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1600, %9
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1600
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
  %25 = xor i64 1600, %9
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

define %struct.Memory* @routine_movq__rdx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__edi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 44
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

define %struct.Memory* @routine_addq__0x648___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1608, %9
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1608
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
  %25 = xor i64 1608, %9
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
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

define %struct.Memory* @routine_addq__0x650___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1616, %9
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1616
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
  %25 = xor i64 1616, %9
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
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

define %struct.Memory* @routine_movl_MINUS0x40__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x44__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 68
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

define %struct.Memory* @routine_addq__0x658___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1624, %9
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1624
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
  %25 = xor i64 1624, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
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

define %struct.Memory* @routine_addq__0x1308___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 4872, %9
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 4872
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
  %25 = xor i64 4872, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_MINUS0x54__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_4553d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xc90___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 3216, %9
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 3216
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
  %25 = xor i64 3216, %9
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

define %struct.Memory* @routine_movq__rdx__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x6c__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 108
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xc98___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 3224, %9
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 3224
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
  %25 = xor i64 3224, %9
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

define %struct.Memory* @routine_movl__edx__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x74__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl_MINUS0x78__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xca0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 3232, %9
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 3232
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
  %25 = xor i64 3232, %9
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

define %struct.Memory* @routine_movl__edx__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x80__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 132
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x84__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 132
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x88__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xca8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 3240, %9
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 3240
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
  %25 = xor i64 3240, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 140
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x90__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 148
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x94__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x12e0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 4832, %9
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 4832
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
  %25 = xor i64 4832, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x9c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 156
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x9c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xa0__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x12e8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 4840, %9
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 4840
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
  %25 = xor i64 4840, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 164
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 168
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xa8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 172
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xac__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x12f0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 4848, %9
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 4848
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
  %25 = xor i64 4848, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 176
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0xb4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 180
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xb4__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 184
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xb8__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 184
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0xbc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 188
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xbc__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 188
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x12f8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 4856, %9
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 4856
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
  %25 = xor i64 4856, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 192
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0xc4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 196
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc4__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 200
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 204
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xd0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 208, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 208
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
  %25 = xor i64 208, %9
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
