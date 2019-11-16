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
%G_0x6cc02c_type = type <{ [4 x i8] }>
%G_0x6ccae8_type = type <{ [4 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x6cb8f8 = global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = global %G_0x6cb900_type zeroinitializer
@G_0x6cb908 = global %G_0x6cb908_type zeroinitializer
@G_0x6cc02c = global %G_0x6cc02c_type zeroinitializer
@G_0x6ccae8 = global %G_0x6ccae8_type zeroinitializer

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

declare %struct.Memory* @sub_448a10.write_terminating_bit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_443f60.writeMBLayer(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_448a90.set_last_dquant(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @write_one_macroblock(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_448b70 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_448b70, %struct.Memory** %MEMORY
  %loadMem_448b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i393 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i393
  %27 = load i64, i64* %PC.i392
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i392
  store i64 %26, i64* %RBP.i394, align 8
  store %struct.Memory* %loadMem_448b71, %struct.Memory** %MEMORY
  %loadMem_448b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i391 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i391
  %36 = load i64, i64* %PC.i390
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i390
  %38 = sub i64 %35, 48
  store i64 %38, i64* %RSP.i391, align 8
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
  store %struct.Memory* %loadMem_448b74, %struct.Memory** %MEMORY
  %loadMem_448b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EDI.i388 = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i389
  %77 = sub i64 %76, 4
  %78 = load i32, i32* %EDI.i388
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %PC.i387
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i387
  %82 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %82
  store %struct.Memory* %loadMem_448b78, %struct.Memory** %MEMORY
  %loadMem_448b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RAX.i386 = bitcast %union.anon* %88 to i64*
  %89 = load i64, i64* %PC.i385
  %90 = add i64 %89, 8
  store i64 %90, i64* %PC.i385
  %91 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %91, i64* %RAX.i386, align 8
  store %struct.Memory* %loadMem_448b7b, %struct.Memory** %MEMORY
  %loadMem_448b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %93 = getelementptr inbounds %struct.GPR, %struct.GPR* %92, i32 0, i32 33
  %94 = getelementptr inbounds %struct.Reg, %struct.Reg* %93, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %94 to i64*
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %RAX.i384 = bitcast %union.anon* %97 to i64*
  %98 = load i64, i64* %RAX.i384
  %99 = add i64 %98, 14168
  %100 = load i64, i64* %PC.i383
  %101 = add i64 %100, 7
  store i64 %101, i64* %PC.i383
  %102 = inttoptr i64 %99 to i64*
  %103 = load i64, i64* %102
  store i64 %103, i64* %RAX.i384, align 8
  store %struct.Memory* %loadMem_448b83, %struct.Memory** %MEMORY
  %loadMem_448b8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 33
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RCX.i382 = bitcast %union.anon* %109 to i64*
  %110 = load i64, i64* %PC.i381
  %111 = add i64 %110, 8
  store i64 %111, i64* %PC.i381
  %112 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %112, i64* %RCX.i382, align 8
  store %struct.Memory* %loadMem_448b8a, %struct.Memory** %MEMORY
  %loadMem_448b92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 33
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %115 to i64*
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %RCX.i380 = bitcast %union.anon* %118 to i64*
  %119 = load i64, i64* %RCX.i380
  %120 = add i64 %119, 12
  %121 = load i64, i64* %PC.i379
  %122 = add i64 %121, 4
  store i64 %122, i64* %PC.i379
  %123 = inttoptr i64 %120 to i32*
  %124 = load i32, i32* %123
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %RCX.i380, align 8
  store %struct.Memory* %loadMem_448b92, %struct.Memory** %MEMORY
  %loadMem_448b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 33
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %128 to i64*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %RCX.i378 = bitcast %union.anon* %131 to i64*
  %132 = load i64, i64* %RCX.i378
  %133 = load i64, i64* %PC.i377
  %134 = add i64 %133, 7
  store i64 %134, i64* %PC.i377
  %135 = sext i64 %132 to i128
  %136 = and i128 %135, -18446744073709551616
  %137 = zext i64 %132 to i128
  %138 = or i128 %136, %137
  %139 = mul i128 632, %138
  %140 = trunc i128 %139 to i64
  store i64 %140, i64* %RCX.i378, align 8
  %141 = sext i64 %140 to i128
  %142 = icmp ne i128 %141, %139
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %143, i8* %144, align 1
  %145 = trunc i128 %139 to i32
  %146 = and i32 %145, 255
  %147 = call i32 @llvm.ctpop.i32(i32 %146)
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %150, i8* %151, align 1
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %152, align 1
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %153, align 1
  %154 = lshr i64 %140, 63
  %155 = trunc i64 %154 to i8
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %155, i8* %156, align 1
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %143, i8* %157, align 1
  store %struct.Memory* %loadMem_448b96, %struct.Memory** %MEMORY
  %loadMem_448b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 33
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %RAX.i375 = bitcast %union.anon* %163 to i64*
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %RCX.i376 = bitcast %union.anon* %166 to i64*
  %167 = load i64, i64* %RAX.i375
  %168 = load i64, i64* %RCX.i376
  %169 = load i64, i64* %PC.i374
  %170 = add i64 %169, 3
  store i64 %170, i64* %PC.i374
  %171 = add i64 %168, %167
  store i64 %171, i64* %RAX.i375, align 8
  %172 = icmp ult i64 %171, %167
  %173 = icmp ult i64 %171, %168
  %174 = or i1 %172, %173
  %175 = zext i1 %174 to i8
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %175, i8* %176, align 1
  %177 = trunc i64 %171 to i32
  %178 = and i32 %177, 255
  %179 = call i32 @llvm.ctpop.i32(i32 %178)
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  %182 = xor i8 %181, 1
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %182, i8* %183, align 1
  %184 = xor i64 %168, %167
  %185 = xor i64 %184, %171
  %186 = lshr i64 %185, 4
  %187 = trunc i64 %186 to i8
  %188 = and i8 %187, 1
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %188, i8* %189, align 1
  %190 = icmp eq i64 %171, 0
  %191 = zext i1 %190 to i8
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %191, i8* %192, align 1
  %193 = lshr i64 %171, 63
  %194 = trunc i64 %193 to i8
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %194, i8* %195, align 1
  %196 = lshr i64 %167, 63
  %197 = lshr i64 %168, 63
  %198 = xor i64 %193, %196
  %199 = xor i64 %193, %197
  %200 = add i64 %198, %199
  %201 = icmp eq i64 %200, 2
  %202 = zext i1 %201 to i8
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %202, i8* %203, align 1
  store %struct.Memory* %loadMem_448b9d, %struct.Memory** %MEMORY
  %loadMem_448ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 33
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %206 to i64*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %RAX.i372 = bitcast %union.anon* %209 to i64*
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 15
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %212 to i64*
  %213 = load i64, i64* %RBP.i373
  %214 = sub i64 %213, 16
  %215 = load i64, i64* %RAX.i372
  %216 = load i64, i64* %PC.i371
  %217 = add i64 %216, 4
  store i64 %217, i64* %PC.i371
  %218 = inttoptr i64 %214 to i64*
  store i64 %215, i64* %218
  store %struct.Memory* %loadMem_448ba0, %struct.Memory** %MEMORY
  %loadMem_448ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 33
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %221 to i64*
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %224 to i64*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 15
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %227 to i64*
  %228 = load i64, i64* %RBP.i370
  %229 = sub i64 %228, 16
  %230 = load i64, i64* %PC.i368
  %231 = add i64 %230, 4
  store i64 %231, i64* %PC.i368
  %232 = inttoptr i64 %229 to i64*
  %233 = load i64, i64* %232
  store i64 %233, i64* %RAX.i369, align 8
  store %struct.Memory* %loadMem_448ba4, %struct.Memory** %MEMORY
  %loadMem_448ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 33
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RAX.i367 = bitcast %union.anon* %239 to i64*
  %240 = load i64, i64* %RAX.i367
  %241 = load i64, i64* %PC.i366
  %242 = add i64 %241, 4
  store i64 %242, i64* %PC.i366
  %243 = add i64 20, %240
  store i64 %243, i64* %RAX.i367, align 8
  %244 = icmp ult i64 %243, %240
  %245 = icmp ult i64 %243, 20
  %246 = or i1 %244, %245
  %247 = zext i1 %246 to i8
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %247, i8* %248, align 1
  %249 = trunc i64 %243 to i32
  %250 = and i32 %249, 255
  %251 = call i32 @llvm.ctpop.i32(i32 %250)
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  %254 = xor i8 %253, 1
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %254, i8* %255, align 1
  %256 = xor i64 20, %240
  %257 = xor i64 %256, %243
  %258 = lshr i64 %257, 4
  %259 = trunc i64 %258 to i8
  %260 = and i8 %259, 1
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %260, i8* %261, align 1
  %262 = icmp eq i64 %243, 0
  %263 = zext i1 %262 to i8
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %263, i8* %264, align 1
  %265 = lshr i64 %243, 63
  %266 = trunc i64 %265 to i8
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %266, i8* %267, align 1
  %268 = lshr i64 %240, 63
  %269 = xor i64 %265, %268
  %270 = add i64 %269, %265
  %271 = icmp eq i64 %270, 2
  %272 = zext i1 %271 to i8
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %272, i8* %273, align 1
  store %struct.Memory* %loadMem_448ba8, %struct.Memory** %MEMORY
  %loadMem_448bac = load %struct.Memory*, %struct.Memory** %MEMORY
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 33
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %276 to i64*
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %RAX.i364 = bitcast %union.anon* %279 to i64*
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 15
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %282 to i64*
  %283 = load i64, i64* %RBP.i365
  %284 = sub i64 %283, 24
  %285 = load i64, i64* %RAX.i364
  %286 = load i64, i64* %PC.i363
  %287 = add i64 %286, 4
  store i64 %287, i64* %PC.i363
  %288 = inttoptr i64 %284 to i64*
  store i64 %285, i64* %288
  store %struct.Memory* %loadMem_448bac, %struct.Memory** %MEMORY
  %loadMem_448bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 33
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %291 to i64*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %RAX.i362 = bitcast %union.anon* %294 to i64*
  %295 = load i64, i64* %PC.i361
  %296 = add i64 %295, 8
  store i64 %296, i64* %PC.i361
  %297 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %297, i64* %RAX.i362, align 8
  store %struct.Memory* %loadMem_448bb0, %struct.Memory** %MEMORY
  %loadMem_448bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 33
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %300 to i64*
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %RAX.i360 = bitcast %union.anon* %303 to i64*
  %304 = load i64, i64* %RAX.i360
  %305 = add i64 %304, 12
  %306 = load i64, i64* %PC.i359
  %307 = add i64 %306, 4
  store i64 %307, i64* %PC.i359
  %308 = inttoptr i64 %305 to i32*
  %309 = load i32, i32* %308
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %310, align 1
  %311 = and i32 %309, 255
  %312 = call i32 @llvm.ctpop.i32(i32 %311)
  %313 = trunc i32 %312 to i8
  %314 = and i8 %313, 1
  %315 = xor i8 %314, 1
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %315, i8* %316, align 1
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %317, align 1
  %318 = icmp eq i32 %309, 0
  %319 = zext i1 %318 to i8
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %319, i8* %320, align 1
  %321 = lshr i32 %309, 31
  %322 = trunc i32 %321 to i8
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %322, i8* %323, align 1
  %324 = lshr i32 %309, 31
  %325 = xor i32 %321, %324
  %326 = add i32 %325, %324
  %327 = icmp eq i32 %326, 2
  %328 = zext i1 %327 to i8
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %328, i8* %329, align 1
  store %struct.Memory* %loadMem_448bb8, %struct.Memory** %MEMORY
  %loadMem_448bbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %331 = getelementptr inbounds %struct.GPR, %struct.GPR* %330, i32 0, i32 33
  %332 = getelementptr inbounds %struct.Reg, %struct.Reg* %331, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %332 to i64*
  %333 = load i64, i64* %PC.i358
  %334 = add i64 %333, 17
  %335 = load i64, i64* %PC.i358
  %336 = add i64 %335, 6
  %337 = load i64, i64* %PC.i358
  %338 = add i64 %337, 6
  store i64 %338, i64* %PC.i358
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %340 = load i8, i8* %339, align 1
  %341 = icmp eq i8 %340, 0
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %BRANCH_TAKEN, align 1
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %344 = select i1 %341, i64 %334, i64 %336
  store i64 %344, i64* %343, align 8
  store %struct.Memory* %loadMem_448bbc, %struct.Memory** %MEMORY
  %loadBr_448bbc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448bbc = icmp eq i8 %loadBr_448bbc, 1
  br i1 %cmpBr_448bbc, label %block_.L_448bcd, label %block_448bc2

block_448bc2:                                     ; preds = %entry
  %loadMem_448bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 33
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %347 to i64*
  %348 = load i64, i64* %PC.i357
  %349 = add i64 %348, 11
  store i64 %349, i64* %PC.i357
  store i32 0, i32* bitcast (%G_0x6ccae8_type* @G_0x6ccae8 to i32*)
  store %struct.Memory* %loadMem_448bc2, %struct.Memory** %MEMORY
  br label %block_.L_448bcd

block_.L_448bcd:                                  ; preds = %block_448bc2, %entry
  %loadMem_448bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 33
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %352 to i64*
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %RAX.i355 = bitcast %union.anon* %355 to i64*
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 15
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %358 to i64*
  %359 = load i64, i64* %RBP.i356
  %360 = sub i64 %359, 16
  %361 = load i64, i64* %PC.i354
  %362 = add i64 %361, 4
  store i64 %362, i64* %PC.i354
  %363 = inttoptr i64 %360 to i64*
  %364 = load i64, i64* %363
  store i64 %364, i64* %RAX.i355, align 8
  store %struct.Memory* %loadMem_448bcd, %struct.Memory** %MEMORY
  %loadMem_448bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 33
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %367 to i64*
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %RAX.i353 = bitcast %union.anon* %370 to i64*
  %371 = load i64, i64* %RAX.i353
  %372 = add i64 %371, 72
  %373 = load i64, i64* %PC.i352
  %374 = add i64 %373, 4
  store i64 %374, i64* %PC.i352
  %375 = inttoptr i64 %372 to i32*
  %376 = load i32, i32* %375
  %377 = sub i32 %376, 9
  %378 = icmp ult i32 %376, 9
  %379 = zext i1 %378 to i8
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %379, i8* %380, align 1
  %381 = and i32 %377, 255
  %382 = call i32 @llvm.ctpop.i32(i32 %381)
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %385, i8* %386, align 1
  %387 = xor i32 %376, 9
  %388 = xor i32 %387, %377
  %389 = lshr i32 %388, 4
  %390 = trunc i32 %389 to i8
  %391 = and i8 %390, 1
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %391, i8* %392, align 1
  %393 = icmp eq i32 %377, 0
  %394 = zext i1 %393 to i8
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %394, i8* %395, align 1
  %396 = lshr i32 %377, 31
  %397 = trunc i32 %396 to i8
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %397, i8* %398, align 1
  %399 = lshr i32 %376, 31
  %400 = xor i32 %396, %399
  %401 = add i32 %400, %399
  %402 = icmp eq i32 %401, 2
  %403 = zext i1 %402 to i8
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %403, i8* %404, align 1
  store %struct.Memory* %loadMem_448bd1, %struct.Memory** %MEMORY
  %loadMem_448bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %406 = getelementptr inbounds %struct.GPR, %struct.GPR* %405, i32 0, i32 33
  %407 = getelementptr inbounds %struct.Reg, %struct.Reg* %406, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %407 to i64*
  %408 = load i64, i64* %PC.i351
  %409 = add i64 %408, 34
  %410 = load i64, i64* %PC.i351
  %411 = add i64 %410, 6
  %412 = load i64, i64* %PC.i351
  %413 = add i64 %412, 6
  store i64 %413, i64* %PC.i351
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %415 = load i8, i8* %414, align 1
  store i8 %415, i8* %BRANCH_TAKEN, align 1
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %417 = icmp ne i8 %415, 0
  %418 = select i1 %417, i64 %409, i64 %411
  store i64 %418, i64* %416, align 8
  store %struct.Memory* %loadMem_448bd5, %struct.Memory** %MEMORY
  %loadBr_448bd5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448bd5 = icmp eq i8 %loadBr_448bd5, 1
  br i1 %cmpBr_448bd5, label %block_.L_448bf7, label %block_448bdb

block_448bdb:                                     ; preds = %block_.L_448bcd
  %loadMem_448bdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 33
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %421 to i64*
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 1
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %424 to i64*
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 15
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %427 to i64*
  %428 = load i64, i64* %RBP.i350
  %429 = sub i64 %428, 16
  %430 = load i64, i64* %PC.i348
  %431 = add i64 %430, 4
  store i64 %431, i64* %PC.i348
  %432 = inttoptr i64 %429 to i64*
  %433 = load i64, i64* %432
  store i64 %433, i64* %RAX.i349, align 8
  store %struct.Memory* %loadMem_448bdb, %struct.Memory** %MEMORY
  %loadMem_448bdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 33
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %436 to i64*
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 1
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %RAX.i347 = bitcast %union.anon* %439 to i64*
  %440 = load i64, i64* %RAX.i347
  %441 = add i64 %440, 72
  %442 = load i64, i64* %PC.i346
  %443 = add i64 %442, 4
  store i64 %443, i64* %PC.i346
  %444 = inttoptr i64 %441 to i32*
  %445 = load i32, i32* %444
  %446 = sub i32 %445, 10
  %447 = icmp ult i32 %445, 10
  %448 = zext i1 %447 to i8
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %448, i8* %449, align 1
  %450 = and i32 %446, 255
  %451 = call i32 @llvm.ctpop.i32(i32 %450)
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  %454 = xor i8 %453, 1
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %454, i8* %455, align 1
  %456 = xor i32 %445, 10
  %457 = xor i32 %456, %446
  %458 = lshr i32 %457, 4
  %459 = trunc i32 %458 to i8
  %460 = and i8 %459, 1
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %460, i8* %461, align 1
  %462 = icmp eq i32 %446, 0
  %463 = zext i1 %462 to i8
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %463, i8* %464, align 1
  %465 = lshr i32 %446, 31
  %466 = trunc i32 %465 to i8
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %466, i8* %467, align 1
  %468 = lshr i32 %445, 31
  %469 = xor i32 %465, %468
  %470 = add i32 %469, %468
  %471 = icmp eq i32 %470, 2
  %472 = zext i1 %471 to i8
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %472, i8* %473, align 1
  store %struct.Memory* %loadMem_448bdf, %struct.Memory** %MEMORY
  %loadMem_448be3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 33
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %476 to i64*
  %477 = load i64, i64* %PC.i345
  %478 = add i64 %477, 20
  %479 = load i64, i64* %PC.i345
  %480 = add i64 %479, 6
  %481 = load i64, i64* %PC.i345
  %482 = add i64 %481, 6
  store i64 %482, i64* %PC.i345
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %484 = load i8, i8* %483, align 1
  store i8 %484, i8* %BRANCH_TAKEN, align 1
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %486 = icmp ne i8 %484, 0
  %487 = select i1 %486, i64 %478, i64 %480
  store i64 %487, i64* %485, align 8
  store %struct.Memory* %loadMem_448be3, %struct.Memory** %MEMORY
  %loadBr_448be3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448be3 = icmp eq i8 %loadBr_448be3, 1
  br i1 %cmpBr_448be3, label %block_.L_448bf7, label %block_448be9

block_448be9:                                     ; preds = %block_448bdb
  %loadMem_448be9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 33
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %490 to i64*
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 1
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %RAX.i343 = bitcast %union.anon* %493 to i64*
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 15
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %496 to i64*
  %497 = load i64, i64* %RBP.i344
  %498 = sub i64 %497, 16
  %499 = load i64, i64* %PC.i342
  %500 = add i64 %499, 4
  store i64 %500, i64* %PC.i342
  %501 = inttoptr i64 %498 to i64*
  %502 = load i64, i64* %501
  store i64 %502, i64* %RAX.i343, align 8
  store %struct.Memory* %loadMem_448be9, %struct.Memory** %MEMORY
  %loadMem_448bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 33
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %505 to i64*
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 1
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %508 to i64*
  %509 = load i64, i64* %RAX.i341
  %510 = add i64 %509, 72
  %511 = load i64, i64* %PC.i340
  %512 = add i64 %511, 4
  store i64 %512, i64* %PC.i340
  %513 = inttoptr i64 %510 to i32*
  %514 = load i32, i32* %513
  %515 = sub i32 %514, 13
  %516 = icmp ult i32 %514, 13
  %517 = zext i1 %516 to i8
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %517, i8* %518, align 1
  %519 = and i32 %515, 255
  %520 = call i32 @llvm.ctpop.i32(i32 %519)
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, 1
  %523 = xor i8 %522, 1
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %523, i8* %524, align 1
  %525 = xor i32 %514, 13
  %526 = xor i32 %525, %515
  %527 = lshr i32 %526, 4
  %528 = trunc i32 %527 to i8
  %529 = and i8 %528, 1
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %529, i8* %530, align 1
  %531 = icmp eq i32 %515, 0
  %532 = zext i1 %531 to i8
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %532, i8* %533, align 1
  %534 = lshr i32 %515, 31
  %535 = trunc i32 %534 to i8
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %535, i8* %536, align 1
  %537 = lshr i32 %514, 31
  %538 = xor i32 %534, %537
  %539 = add i32 %538, %537
  %540 = icmp eq i32 %539, 2
  %541 = zext i1 %540 to i8
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %541, i8* %542, align 1
  store %struct.Memory* %loadMem_448bed, %struct.Memory** %MEMORY
  %loadMem_448bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 33
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %545 to i64*
  %546 = load i64, i64* %PC.i339
  %547 = add i64 %546, 23
  %548 = load i64, i64* %PC.i339
  %549 = add i64 %548, 6
  %550 = load i64, i64* %PC.i339
  %551 = add i64 %550, 6
  store i64 %551, i64* %PC.i339
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %553 = load i8, i8* %552, align 1
  %554 = icmp eq i8 %553, 0
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %BRANCH_TAKEN, align 1
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %557 = select i1 %554, i64 %547, i64 %549
  store i64 %557, i64* %556, align 8
  store %struct.Memory* %loadMem_448bf1, %struct.Memory** %MEMORY
  %loadBr_448bf1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448bf1 = icmp eq i8 %loadBr_448bf1, 1
  br i1 %cmpBr_448bf1, label %block_.L_448c08, label %block_.L_448bf7

block_.L_448bf7:                                  ; preds = %block_448be9, %block_448bdb, %block_.L_448bcd
  %loadMem_448bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 33
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %560 to i64*
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 1
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %RAX.i338 = bitcast %union.anon* %563 to i64*
  %564 = load i64, i64* %PC.i337
  %565 = add i64 %564, 7
  store i64 %565, i64* %PC.i337
  %566 = load i32, i32* bitcast (%G_0x6ccae8_type* @G_0x6ccae8 to i32*)
  %567 = zext i32 %566 to i64
  store i64 %567, i64* %RAX.i338, align 8
  store %struct.Memory* %loadMem_448bf7, %struct.Memory** %MEMORY
  %loadMem_448bfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 33
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %570 to i64*
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 1
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %RAX.i336 = bitcast %union.anon* %573 to i64*
  %574 = load i64, i64* %RAX.i336
  %575 = load i64, i64* %PC.i335
  %576 = add i64 %575, 3
  store i64 %576, i64* %PC.i335
  %577 = trunc i64 %574 to i32
  %578 = add i32 1, %577
  %579 = zext i32 %578 to i64
  store i64 %579, i64* %RAX.i336, align 8
  %580 = icmp ult i32 %578, %577
  %581 = icmp ult i32 %578, 1
  %582 = or i1 %580, %581
  %583 = zext i1 %582 to i8
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %583, i8* %584, align 1
  %585 = and i32 %578, 255
  %586 = call i32 @llvm.ctpop.i32(i32 %585)
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  %589 = xor i8 %588, 1
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %589, i8* %590, align 1
  %591 = xor i64 1, %574
  %592 = trunc i64 %591 to i32
  %593 = xor i32 %592, %578
  %594 = lshr i32 %593, 4
  %595 = trunc i32 %594 to i8
  %596 = and i8 %595, 1
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %596, i8* %597, align 1
  %598 = icmp eq i32 %578, 0
  %599 = zext i1 %598 to i8
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %599, i8* %600, align 1
  %601 = lshr i32 %578, 31
  %602 = trunc i32 %601 to i8
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %602, i8* %603, align 1
  %604 = lshr i32 %577, 31
  %605 = xor i32 %601, %604
  %606 = add i32 %605, %601
  %607 = icmp eq i32 %606, 2
  %608 = zext i1 %607 to i8
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %608, i8* %609, align 1
  store %struct.Memory* %loadMem_448bfe, %struct.Memory** %MEMORY
  %loadMem_448c01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 33
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %612 to i64*
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %614 = getelementptr inbounds %struct.GPR, %struct.GPR* %613, i32 0, i32 1
  %615 = getelementptr inbounds %struct.Reg, %struct.Reg* %614, i32 0, i32 0
  %EAX.i334 = bitcast %union.anon* %615 to i32*
  %616 = load i32, i32* %EAX.i334
  %617 = zext i32 %616 to i64
  %618 = load i64, i64* %PC.i333
  %619 = add i64 %618, 7
  store i64 %619, i64* %PC.i333
  store i32 %616, i32* bitcast (%G_0x6ccae8_type* @G_0x6ccae8 to i32*)
  store %struct.Memory* %loadMem_448c01, %struct.Memory** %MEMORY
  br label %block_.L_448c08

block_.L_448c08:                                  ; preds = %block_.L_448bf7, %block_448be9
  %loadMem_448c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 33
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %622 to i64*
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %624 = getelementptr inbounds %struct.GPR, %struct.GPR* %623, i32 0, i32 1
  %625 = getelementptr inbounds %struct.Reg, %struct.Reg* %624, i32 0, i32 0
  %RAX.i332 = bitcast %union.anon* %625 to i64*
  %626 = load i64, i64* %PC.i331
  %627 = add i64 %626, 8
  store i64 %627, i64* %PC.i331
  %628 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %628, i64* %RAX.i332, align 8
  store %struct.Memory* %loadMem_448c08, %struct.Memory** %MEMORY
  %loadMem_448c10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 33
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %631 to i64*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 1
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %634 to i64*
  %635 = load i64, i64* %RAX.i330
  %636 = add i64 %635, 2356
  %637 = load i64, i64* %PC.i329
  %638 = add i64 %637, 7
  store i64 %638, i64* %PC.i329
  %639 = inttoptr i64 %636 to i32*
  %640 = load i32, i32* %639
  %641 = sub i32 %640, 1
  %642 = icmp ult i32 %640, 1
  %643 = zext i1 %642 to i8
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %643, i8* %644, align 1
  %645 = and i32 %641, 255
  %646 = call i32 @llvm.ctpop.i32(i32 %645)
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  %649 = xor i8 %648, 1
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %649, i8* %650, align 1
  %651 = xor i32 %640, 1
  %652 = xor i32 %651, %641
  %653 = lshr i32 %652, 4
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %655, i8* %656, align 1
  %657 = icmp eq i32 %641, 0
  %658 = zext i1 %657 to i8
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %658, i8* %659, align 1
  %660 = lshr i32 %641, 31
  %661 = trunc i32 %660 to i8
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %661, i8* %662, align 1
  %663 = lshr i32 %640, 31
  %664 = xor i32 %660, %663
  %665 = add i32 %664, %663
  %666 = icmp eq i32 %665, 2
  %667 = zext i1 %666 to i8
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %667, i8* %668, align 1
  store %struct.Memory* %loadMem_448c10, %struct.Memory** %MEMORY
  %loadMem_448c17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %670 = getelementptr inbounds %struct.GPR, %struct.GPR* %669, i32 0, i32 33
  %671 = getelementptr inbounds %struct.Reg, %struct.Reg* %670, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %671 to i64*
  %672 = load i64, i64* %PC.i328
  %673 = add i64 %672, 58
  %674 = load i64, i64* %PC.i328
  %675 = add i64 %674, 6
  %676 = load i64, i64* %PC.i328
  %677 = add i64 %676, 6
  store i64 %677, i64* %PC.i328
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %679 = load i8, i8* %678, align 1
  %680 = icmp eq i8 %679, 0
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %BRANCH_TAKEN, align 1
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %683 = select i1 %680, i64 %673, i64 %675
  store i64 %683, i64* %682, align 8
  store %struct.Memory* %loadMem_448c17, %struct.Memory** %MEMORY
  %loadBr_448c17 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448c17 = icmp eq i8 %loadBr_448c17, 1
  br i1 %cmpBr_448c17, label %block_.L_448c51, label %block_448c1d

block_448c1d:                                     ; preds = %block_.L_448c08
  %loadMem_448c1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 33
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %686 to i64*
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 1
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %RAX.i327 = bitcast %union.anon* %689 to i64*
  %690 = load i64, i64* %PC.i326
  %691 = add i64 %690, 8
  store i64 %691, i64* %PC.i326
  %692 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %692, i64* %RAX.i327, align 8
  store %struct.Memory* %loadMem_448c1d, %struct.Memory** %MEMORY
  %loadMem_448c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 33
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %695 to i64*
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 1
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %698 to i64*
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 5
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %RCX.i325 = bitcast %union.anon* %701 to i64*
  %702 = load i64, i64* %RAX.i324
  %703 = add i64 %702, 12
  %704 = load i64, i64* %PC.i323
  %705 = add i64 %704, 3
  store i64 %705, i64* %PC.i323
  %706 = inttoptr i64 %703 to i32*
  %707 = load i32, i32* %706
  %708 = zext i32 %707 to i64
  store i64 %708, i64* %RCX.i325, align 8
  store %struct.Memory* %loadMem_448c25, %struct.Memory** %MEMORY
  %loadMem_448c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 33
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %711 to i64*
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 1
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %RAX.i322 = bitcast %union.anon* %714 to i64*
  %715 = load i64, i64* %PC.i321
  %716 = add i64 %715, 8
  store i64 %716, i64* %PC.i321
  %717 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %717, i64* %RAX.i322, align 8
  store %struct.Memory* %loadMem_448c28, %struct.Memory** %MEMORY
  %loadMem_448c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 33
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %720 to i64*
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %722 = getelementptr inbounds %struct.GPR, %struct.GPR* %721, i32 0, i32 1
  %723 = getelementptr inbounds %struct.Reg, %struct.Reg* %722, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %723 to i64*
  %724 = load i64, i64* %RAX.i320
  %725 = add i64 %724, 14160
  %726 = load i64, i64* %PC.i319
  %727 = add i64 %726, 7
  store i64 %727, i64* %PC.i319
  %728 = inttoptr i64 %725 to i64*
  %729 = load i64, i64* %728
  store i64 %729, i64* %RAX.i320, align 8
  store %struct.Memory* %loadMem_448c30, %struct.Memory** %MEMORY
  %loadMem_448c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 33
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %732 to i64*
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 5
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %ECX.i317 = bitcast %union.anon* %735 to i32*
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 1
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %738 to i64*
  %739 = load i32, i32* %ECX.i317
  %740 = zext i32 %739 to i64
  %741 = load i64, i64* %RAX.i318
  %742 = add i64 %741, 12
  %743 = load i64, i64* %PC.i316
  %744 = add i64 %743, 3
  store i64 %744, i64* %PC.i316
  %745 = inttoptr i64 %742 to i32*
  %746 = load i32, i32* %745
  %747 = sub i32 %739, %746
  %748 = icmp ult i32 %739, %746
  %749 = zext i1 %748 to i8
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %749, i8* %750, align 1
  %751 = and i32 %747, 255
  %752 = call i32 @llvm.ctpop.i32(i32 %751)
  %753 = trunc i32 %752 to i8
  %754 = and i8 %753, 1
  %755 = xor i8 %754, 1
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %755, i8* %756, align 1
  %757 = xor i32 %746, %739
  %758 = xor i32 %757, %747
  %759 = lshr i32 %758, 4
  %760 = trunc i32 %759 to i8
  %761 = and i8 %760, 1
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %761, i8* %762, align 1
  %763 = icmp eq i32 %747, 0
  %764 = zext i1 %763 to i8
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %764, i8* %765, align 1
  %766 = lshr i32 %747, 31
  %767 = trunc i32 %766 to i8
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %767, i8* %768, align 1
  %769 = lshr i32 %739, 31
  %770 = lshr i32 %746, 31
  %771 = xor i32 %770, %769
  %772 = xor i32 %766, %769
  %773 = add i32 %772, %771
  %774 = icmp eq i32 %773, 2
  %775 = zext i1 %774 to i8
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %775, i8* %776, align 1
  store %struct.Memory* %loadMem_448c37, %struct.Memory** %MEMORY
  %loadMem_448c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 33
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %779 to i64*
  %780 = load i64, i64* %PC.i315
  %781 = add i64 %780, 23
  %782 = load i64, i64* %PC.i315
  %783 = add i64 %782, 6
  %784 = load i64, i64* %PC.i315
  %785 = add i64 %784, 6
  store i64 %785, i64* %PC.i315
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %787 = load i8, i8* %786, align 1
  store i8 %787, i8* %BRANCH_TAKEN, align 1
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %789 = icmp ne i8 %787, 0
  %790 = select i1 %789, i64 %781, i64 %783
  store i64 %790, i64* %788, align 8
  store %struct.Memory* %loadMem_448c3a, %struct.Memory** %MEMORY
  %loadBr_448c3a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448c3a = icmp eq i8 %loadBr_448c3a, 1
  br i1 %cmpBr_448c3a, label %block_.L_448c51, label %block_448c40

block_448c40:                                     ; preds = %block_448c1d
  %loadMem_448c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 33
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %793 to i64*
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 15
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %796 to i64*
  %797 = load i64, i64* %RBP.i314
  %798 = sub i64 %797, 4
  %799 = load i64, i64* %PC.i313
  %800 = add i64 %799, 4
  store i64 %800, i64* %PC.i313
  %801 = inttoptr i64 %798 to i32*
  %802 = load i32, i32* %801
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %803, align 1
  %804 = and i32 %802, 255
  %805 = call i32 @llvm.ctpop.i32(i32 %804)
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  %808 = xor i8 %807, 1
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %808, i8* %809, align 1
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %810, align 1
  %811 = icmp eq i32 %802, 0
  %812 = zext i1 %811 to i8
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %812, i8* %813, align 1
  %814 = lshr i32 %802, 31
  %815 = trunc i32 %814 to i8
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %815, i8* %816, align 1
  %817 = lshr i32 %802, 31
  %818 = xor i32 %814, %817
  %819 = add i32 %818, %817
  %820 = icmp eq i32 %819, 2
  %821 = zext i1 %820 to i8
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %821, i8* %822, align 1
  store %struct.Memory* %loadMem_448c40, %struct.Memory** %MEMORY
  %loadMem_448c44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 33
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %825 to i64*
  %826 = load i64, i64* %PC.i312
  %827 = add i64 %826, 13
  %828 = load i64, i64* %PC.i312
  %829 = add i64 %828, 6
  %830 = load i64, i64* %PC.i312
  %831 = add i64 %830, 6
  store i64 %831, i64* %PC.i312
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %833 = load i8, i8* %832, align 1
  store i8 %833, i8* %BRANCH_TAKEN, align 1
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %835 = icmp ne i8 %833, 0
  %836 = select i1 %835, i64 %827, i64 %829
  store i64 %836, i64* %834, align 8
  store %struct.Memory* %loadMem_448c44, %struct.Memory** %MEMORY
  %loadBr_448c44 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448c44 = icmp eq i8 %loadBr_448c44, 1
  br i1 %cmpBr_448c44, label %block_.L_448c51, label %block_448c4a

block_448c4a:                                     ; preds = %block_448c40
  %loadMem_448c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 33
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %839 to i64*
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %841 = getelementptr inbounds %struct.GPR, %struct.GPR* %840, i32 0, i32 11
  %842 = getelementptr inbounds %struct.Reg, %struct.Reg* %841, i32 0, i32 0
  %EDI.i310 = bitcast %union.anon* %842 to i32*
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %844 = getelementptr inbounds %struct.GPR, %struct.GPR* %843, i32 0, i32 11
  %845 = getelementptr inbounds %struct.Reg, %struct.Reg* %844, i32 0, i32 0
  %RDI.i311 = bitcast %union.anon* %845 to i64*
  %846 = load i64, i64* %RDI.i311
  %847 = load i32, i32* %EDI.i310
  %848 = zext i32 %847 to i64
  %849 = load i64, i64* %PC.i309
  %850 = add i64 %849, 2
  store i64 %850, i64* %PC.i309
  %851 = xor i64 %848, %846
  %852 = trunc i64 %851 to i32
  %853 = and i64 %851, 4294967295
  store i64 %853, i64* %RDI.i311, align 8
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %854, align 1
  %855 = and i32 %852, 255
  %856 = call i32 @llvm.ctpop.i32(i32 %855)
  %857 = trunc i32 %856 to i8
  %858 = and i8 %857, 1
  %859 = xor i8 %858, 1
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %859, i8* %860, align 1
  %861 = icmp eq i32 %852, 0
  %862 = zext i1 %861 to i8
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %862, i8* %863, align 1
  %864 = lshr i32 %852, 31
  %865 = trunc i32 %864 to i8
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %865, i8* %866, align 1
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %867, align 1
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %868, align 1
  store %struct.Memory* %loadMem_448c4a, %struct.Memory** %MEMORY
  %loadMem1_448c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 33
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %871 to i64*
  %872 = load i64, i64* %PC.i308
  %873 = add i64 %872, -572
  %874 = load i64, i64* %PC.i308
  %875 = add i64 %874, 5
  %876 = load i64, i64* %PC.i308
  %877 = add i64 %876, 5
  store i64 %877, i64* %PC.i308
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %879 = load i64, i64* %878, align 8
  %880 = add i64 %879, -8
  %881 = inttoptr i64 %880 to i64*
  store i64 %875, i64* %881
  store i64 %880, i64* %878, align 8
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %873, i64* %882, align 8
  store %struct.Memory* %loadMem1_448c4c, %struct.Memory** %MEMORY
  %loadMem2_448c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_448c4c = load i64, i64* %3
  %call2_448c4c = call %struct.Memory* @sub_448a10.write_terminating_bit(%struct.State* %0, i64 %loadPC_448c4c, %struct.Memory* %loadMem2_448c4c)
  store %struct.Memory* %call2_448c4c, %struct.Memory** %MEMORY
  br label %block_.L_448c51

block_.L_448c51:                                  ; preds = %block_448c4a, %block_448c40, %block_448c1d, %block_.L_448c08
  %loadMem_448c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 33
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %885 to i64*
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 11
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %888 to i32*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 11
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %891 to i64*
  %892 = load i64, i64* %RDI.i
  %893 = load i32, i32* %EDI.i
  %894 = zext i32 %893 to i64
  %895 = load i64, i64* %PC.i307
  %896 = add i64 %895, 2
  store i64 %896, i64* %PC.i307
  %897 = xor i64 %894, %892
  %898 = trunc i64 %897 to i32
  %899 = and i64 %897, 4294967295
  store i64 %899, i64* %RDI.i, align 8
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %900, align 1
  %901 = and i32 %898, 255
  %902 = call i32 @llvm.ctpop.i32(i32 %901)
  %903 = trunc i32 %902 to i8
  %904 = and i8 %903, 1
  %905 = xor i8 %904, 1
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %905, i8* %906, align 1
  %907 = icmp eq i32 %898, 0
  %908 = zext i1 %907 to i8
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %908, i8* %909, align 1
  %910 = lshr i32 %898, 31
  %911 = trunc i32 %910 to i8
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %911, i8* %912, align 1
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %913, align 1
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %914, align 1
  store %struct.Memory* %loadMem_448c51, %struct.Memory** %MEMORY
  %loadMem_448c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 33
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %917 to i64*
  %918 = load i64, i64* %PC.i306
  %919 = add i64 %918, 11
  store i64 %919, i64* %PC.i306
  store i32 1, i32* bitcast (%G_0x6cc02c_type* @G_0x6cc02c to i32*)
  store %struct.Memory* %loadMem_448c53, %struct.Memory** %MEMORY
  %loadMem1_448c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 33
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %922 to i64*
  %923 = load i64, i64* %PC.i305
  %924 = add i64 %923, -19710
  %925 = load i64, i64* %PC.i305
  %926 = add i64 %925, 5
  %927 = load i64, i64* %PC.i305
  %928 = add i64 %927, 5
  store i64 %928, i64* %PC.i305
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %930 = load i64, i64* %929, align 8
  %931 = add i64 %930, -8
  %932 = inttoptr i64 %931 to i64*
  store i64 %926, i64* %932
  store i64 %931, i64* %929, align 8
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %924, i64* %933, align 8
  store %struct.Memory* %loadMem1_448c5e, %struct.Memory** %MEMORY
  %loadMem2_448c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_448c5e = load i64, i64* %3
  %call2_448c5e = call %struct.Memory* @sub_443f60.writeMBLayer(%struct.State* %0, i64 %loadPC_448c5e, %struct.Memory* %loadMem2_448c5e)
  store %struct.Memory* %call2_448c5e, %struct.Memory** %MEMORY
  %loadMem_448c63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 33
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %936 to i64*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 5
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %RCX.i303 = bitcast %union.anon* %939 to i64*
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 15
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %942 to i64*
  %943 = load i64, i64* %RBP.i304
  %944 = sub i64 %943, 16
  %945 = load i64, i64* %PC.i302
  %946 = add i64 %945, 4
  store i64 %946, i64* %PC.i302
  %947 = inttoptr i64 %944 to i64*
  %948 = load i64, i64* %947
  store i64 %948, i64* %RCX.i303, align 8
  store %struct.Memory* %loadMem_448c63, %struct.Memory** %MEMORY
  %loadMem_448c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 33
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %951 to i64*
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %953 = getelementptr inbounds %struct.GPR, %struct.GPR* %952, i32 0, i32 5
  %954 = getelementptr inbounds %struct.Reg, %struct.Reg* %953, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %954 to i64*
  %955 = load i64, i64* %RCX.i301
  %956 = add i64 %955, 72
  %957 = load i64, i64* %PC.i300
  %958 = add i64 %957, 4
  store i64 %958, i64* %PC.i300
  %959 = inttoptr i64 %956 to i32*
  %960 = load i32, i32* %959
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %961, align 1
  %962 = and i32 %960, 255
  %963 = call i32 @llvm.ctpop.i32(i32 %962)
  %964 = trunc i32 %963 to i8
  %965 = and i8 %964, 1
  %966 = xor i8 %965, 1
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %966, i8* %967, align 1
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %968, align 1
  %969 = icmp eq i32 %960, 0
  %970 = zext i1 %969 to i8
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %970, i8* %971, align 1
  %972 = lshr i32 %960, 31
  %973 = trunc i32 %972 to i8
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %973, i8* %974, align 1
  %975 = lshr i32 %960, 31
  %976 = xor i32 %972, %975
  %977 = add i32 %976, %975
  %978 = icmp eq i32 %977, 2
  %979 = zext i1 %978 to i8
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %979, i8* %980, align 1
  store %struct.Memory* %loadMem_448c67, %struct.Memory** %MEMORY
  %loadMem_448c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 33
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %983 to i64*
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 1
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %EAX.i298 = bitcast %union.anon* %986 to i32*
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 15
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %989 to i64*
  %990 = load i64, i64* %RBP.i299
  %991 = sub i64 %990, 36
  %992 = load i32, i32* %EAX.i298
  %993 = zext i32 %992 to i64
  %994 = load i64, i64* %PC.i297
  %995 = add i64 %994, 3
  store i64 %995, i64* %PC.i297
  %996 = inttoptr i64 %991 to i32*
  store i32 %992, i32* %996
  store %struct.Memory* %loadMem_448c6b, %struct.Memory** %MEMORY
  %loadMem_448c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 33
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %999 to i64*
  %1000 = load i64, i64* %PC.i296
  %1001 = add i64 %1000, 181
  %1002 = load i64, i64* %PC.i296
  %1003 = add i64 %1002, 6
  %1004 = load i64, i64* %PC.i296
  %1005 = add i64 %1004, 6
  store i64 %1005, i64* %PC.i296
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1007 = load i8, i8* %1006, align 1
  %1008 = icmp eq i8 %1007, 0
  %1009 = zext i1 %1008 to i8
  store i8 %1009, i8* %BRANCH_TAKEN, align 1
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1011 = select i1 %1008, i64 %1001, i64 %1003
  store i64 %1011, i64* %1010, align 8
  store %struct.Memory* %loadMem_448c6e, %struct.Memory** %MEMORY
  %loadBr_448c6e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448c6e = icmp eq i8 %loadBr_448c6e, 1
  br i1 %cmpBr_448c6e, label %block_.L_448d23, label %block_448c74

block_448c74:                                     ; preds = %block_.L_448c51
  %loadMem_448c74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1013 = getelementptr inbounds %struct.GPR, %struct.GPR* %1012, i32 0, i32 33
  %1014 = getelementptr inbounds %struct.Reg, %struct.Reg* %1013, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %1014 to i64*
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1016 = getelementptr inbounds %struct.GPR, %struct.GPR* %1015, i32 0, i32 1
  %1017 = getelementptr inbounds %struct.Reg, %struct.Reg* %1016, i32 0, i32 0
  %RAX.i295 = bitcast %union.anon* %1017 to i64*
  %1018 = load i64, i64* %PC.i294
  %1019 = add i64 %1018, 8
  store i64 %1019, i64* %PC.i294
  %1020 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1020, i64* %RAX.i295, align 8
  store %struct.Memory* %loadMem_448c74, %struct.Memory** %MEMORY
  %loadMem_448c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 33
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %1023 to i64*
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 1
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %RAX.i293 = bitcast %union.anon* %1026 to i64*
  %1027 = load i64, i64* %RAX.i293
  %1028 = add i64 %1027, 24
  %1029 = load i64, i64* %PC.i292
  %1030 = add i64 %1029, 4
  store i64 %1030, i64* %PC.i292
  %1031 = inttoptr i64 %1028 to i32*
  %1032 = load i32, i32* %1031
  %1033 = sub i32 %1032, 1
  %1034 = icmp ult i32 %1032, 1
  %1035 = zext i1 %1034 to i8
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1035, i8* %1036, align 1
  %1037 = and i32 %1033, 255
  %1038 = call i32 @llvm.ctpop.i32(i32 %1037)
  %1039 = trunc i32 %1038 to i8
  %1040 = and i8 %1039, 1
  %1041 = xor i8 %1040, 1
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1041, i8* %1042, align 1
  %1043 = xor i32 %1032, 1
  %1044 = xor i32 %1043, %1033
  %1045 = lshr i32 %1044, 4
  %1046 = trunc i32 %1045 to i8
  %1047 = and i8 %1046, 1
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1047, i8* %1048, align 1
  %1049 = icmp eq i32 %1033, 0
  %1050 = zext i1 %1049 to i8
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1050, i8* %1051, align 1
  %1052 = lshr i32 %1033, 31
  %1053 = trunc i32 %1052 to i8
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1053, i8* %1054, align 1
  %1055 = lshr i32 %1032, 31
  %1056 = xor i32 %1052, %1055
  %1057 = add i32 %1056, %1055
  %1058 = icmp eq i32 %1057, 2
  %1059 = zext i1 %1058 to i8
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1059, i8* %1060, align 1
  store %struct.Memory* %loadMem_448c7c, %struct.Memory** %MEMORY
  %loadMem_448c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 33
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %1063 to i64*
  %1064 = load i64, i64* %PC.i291
  %1065 = add i64 %1064, 23
  %1066 = load i64, i64* %PC.i291
  %1067 = add i64 %1066, 6
  %1068 = load i64, i64* %PC.i291
  %1069 = add i64 %1068, 6
  store i64 %1069, i64* %PC.i291
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1071 = load i8, i8* %1070, align 1
  %1072 = icmp eq i8 %1071, 0
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %BRANCH_TAKEN, align 1
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1075 = select i1 %1072, i64 %1065, i64 %1067
  store i64 %1075, i64* %1074, align 8
  store %struct.Memory* %loadMem_448c80, %struct.Memory** %MEMORY
  %loadBr_448c80 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448c80 = icmp eq i8 %loadBr_448c80, 1
  br i1 %cmpBr_448c80, label %block_.L_448c97, label %block_448c86

block_448c86:                                     ; preds = %block_448c74
  %loadMem_448c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 33
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %1078 to i64*
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 1
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %1081 to i64*
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 15
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %1084 to i64*
  %1085 = load i64, i64* %RBP.i290
  %1086 = sub i64 %1085, 16
  %1087 = load i64, i64* %PC.i288
  %1088 = add i64 %1087, 4
  store i64 %1088, i64* %PC.i288
  %1089 = inttoptr i64 %1086 to i64*
  %1090 = load i64, i64* %1089
  store i64 %1090, i64* %RAX.i289, align 8
  store %struct.Memory* %loadMem_448c86, %struct.Memory** %MEMORY
  %loadMem_448c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 33
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %1093 to i64*
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 1
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %1096 to i64*
  %1097 = load i64, i64* %RAX.i287
  %1098 = add i64 %1097, 460
  %1099 = load i64, i64* %PC.i286
  %1100 = add i64 %1099, 7
  store i64 %1100, i64* %PC.i286
  %1101 = inttoptr i64 %1098 to i32*
  %1102 = load i32, i32* %1101
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1103, align 1
  %1104 = and i32 %1102, 255
  %1105 = call i32 @llvm.ctpop.i32(i32 %1104)
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  %1108 = xor i8 %1107, 1
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1108, i8* %1109, align 1
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1110, align 1
  %1111 = icmp eq i32 %1102, 0
  %1112 = zext i1 %1111 to i8
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1112, i8* %1113, align 1
  %1114 = lshr i32 %1102, 31
  %1115 = trunc i32 %1114 to i8
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1115, i8* %1116, align 1
  %1117 = lshr i32 %1102, 31
  %1118 = xor i32 %1114, %1117
  %1119 = add i32 %1118, %1117
  %1120 = icmp eq i32 %1119, 2
  %1121 = zext i1 %1120 to i8
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1121, i8* %1122, align 1
  store %struct.Memory* %loadMem_448c8a, %struct.Memory** %MEMORY
  %loadMem_448c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 33
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %1125 to i64*
  %1126 = load i64, i64* %PC.i285
  %1127 = add i64 %1126, 146
  %1128 = load i64, i64* %PC.i285
  %1129 = add i64 %1128, 6
  %1130 = load i64, i64* %PC.i285
  %1131 = add i64 %1130, 6
  store i64 %1131, i64* %PC.i285
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1133 = load i8, i8* %1132, align 1
  %1134 = icmp eq i8 %1133, 0
  %1135 = zext i1 %1134 to i8
  store i8 %1135, i8* %BRANCH_TAKEN, align 1
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1137 = select i1 %1134, i64 %1127, i64 %1129
  store i64 %1137, i64* %1136, align 8
  store %struct.Memory* %loadMem_448c91, %struct.Memory** %MEMORY
  %loadBr_448c91 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448c91 = icmp eq i8 %loadBr_448c91, 1
  br i1 %cmpBr_448c91, label %block_.L_448d23, label %block_.L_448c97

block_.L_448c97:                                  ; preds = %block_448c86, %block_448c74
  %loadMem_448c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 33
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %1140 to i64*
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 15
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %RBP.i284 = bitcast %union.anon* %1143 to i64*
  %1144 = load i64, i64* %RBP.i284
  %1145 = sub i64 %1144, 32
  %1146 = load i64, i64* %PC.i283
  %1147 = add i64 %1146, 7
  store i64 %1147, i64* %PC.i283
  %1148 = inttoptr i64 %1145 to i32*
  store i32 0, i32* %1148
  store %struct.Memory* %loadMem_448c97, %struct.Memory** %MEMORY
  br label %block_.L_448c9e

block_.L_448c9e:                                  ; preds = %block_.L_448d10, %block_.L_448c97
  %loadMem_448c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 33
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %1151 to i64*
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 1
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %RAX.i281 = bitcast %union.anon* %1154 to i64*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 15
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %1157 to i64*
  %1158 = load i64, i64* %RBP.i282
  %1159 = sub i64 %1158, 32
  %1160 = load i64, i64* %PC.i280
  %1161 = add i64 %1160, 3
  store i64 %1161, i64* %PC.i280
  %1162 = inttoptr i64 %1159 to i32*
  %1163 = load i32, i32* %1162
  %1164 = zext i32 %1163 to i64
  store i64 %1164, i64* %RAX.i281, align 8
  store %struct.Memory* %loadMem_448c9e, %struct.Memory** %MEMORY
  %loadMem_448ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1166 = getelementptr inbounds %struct.GPR, %struct.GPR* %1165, i32 0, i32 33
  %1167 = getelementptr inbounds %struct.Reg, %struct.Reg* %1166, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %1167 to i64*
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1169 = getelementptr inbounds %struct.GPR, %struct.GPR* %1168, i32 0, i32 5
  %1170 = getelementptr inbounds %struct.Reg, %struct.Reg* %1169, i32 0, i32 0
  %RCX.i279 = bitcast %union.anon* %1170 to i64*
  %1171 = load i64, i64* %PC.i278
  %1172 = add i64 %1171, 8
  store i64 %1172, i64* %PC.i278
  %1173 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1173, i64* %RCX.i279, align 8
  store %struct.Memory* %loadMem_448ca1, %struct.Memory** %MEMORY
  %loadMem_448ca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1175 = getelementptr inbounds %struct.GPR, %struct.GPR* %1174, i32 0, i32 33
  %1176 = getelementptr inbounds %struct.Reg, %struct.Reg* %1175, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %1176 to i64*
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 5
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %RCX.i276 = bitcast %union.anon* %1179 to i64*
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 7
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %RDX.i277 = bitcast %union.anon* %1182 to i64*
  %1183 = load i64, i64* %RCX.i276
  %1184 = add i64 %1183, 72692
  %1185 = load i64, i64* %PC.i275
  %1186 = add i64 %1185, 6
  store i64 %1186, i64* %PC.i275
  %1187 = inttoptr i64 %1184 to i32*
  %1188 = load i32, i32* %1187
  %1189 = zext i32 %1188 to i64
  store i64 %1189, i64* %RDX.i277, align 8
  store %struct.Memory* %loadMem_448ca9, %struct.Memory** %MEMORY
  %loadMem_448caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 33
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %1192 to i64*
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 7
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %1195 to i64*
  %1196 = load i64, i64* %RDX.i
  %1197 = load i64, i64* %PC.i274
  %1198 = add i64 %1197, 3
  store i64 %1198, i64* %PC.i274
  %1199 = trunc i64 %1196 to i32
  %1200 = add i32 4, %1199
  %1201 = zext i32 %1200 to i64
  store i64 %1201, i64* %RDX.i, align 8
  %1202 = icmp ult i32 %1200, %1199
  %1203 = icmp ult i32 %1200, 4
  %1204 = or i1 %1202, %1203
  %1205 = zext i1 %1204 to i8
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1205, i8* %1206, align 1
  %1207 = and i32 %1200, 255
  %1208 = call i32 @llvm.ctpop.i32(i32 %1207)
  %1209 = trunc i32 %1208 to i8
  %1210 = and i8 %1209, 1
  %1211 = xor i8 %1210, 1
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1211, i8* %1212, align 1
  %1213 = xor i64 4, %1196
  %1214 = trunc i64 %1213 to i32
  %1215 = xor i32 %1214, %1200
  %1216 = lshr i32 %1215, 4
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1218, i8* %1219, align 1
  %1220 = icmp eq i32 %1200, 0
  %1221 = zext i1 %1220 to i8
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1221, i8* %1222, align 1
  %1223 = lshr i32 %1200, 31
  %1224 = trunc i32 %1223 to i8
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1224, i8* %1225, align 1
  %1226 = lshr i32 %1199, 31
  %1227 = xor i32 %1223, %1226
  %1228 = add i32 %1227, %1223
  %1229 = icmp eq i32 %1228, 2
  %1230 = zext i1 %1229 to i8
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1230, i8* %1231, align 1
  store %struct.Memory* %loadMem_448caf, %struct.Memory** %MEMORY
  %loadMem_448cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1233 = getelementptr inbounds %struct.GPR, %struct.GPR* %1232, i32 0, i32 33
  %1234 = getelementptr inbounds %struct.Reg, %struct.Reg* %1233, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %1234 to i64*
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 1
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %EAX.i273 = bitcast %union.anon* %1237 to i32*
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 7
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %1240 to i32*
  %1241 = load i32, i32* %EAX.i273
  %1242 = zext i32 %1241 to i64
  %1243 = load i32, i32* %EDX.i
  %1244 = zext i32 %1243 to i64
  %1245 = load i64, i64* %PC.i272
  %1246 = add i64 %1245, 2
  store i64 %1246, i64* %PC.i272
  %1247 = sub i32 %1241, %1243
  %1248 = icmp ult i32 %1241, %1243
  %1249 = zext i1 %1248 to i8
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1249, i8* %1250, align 1
  %1251 = and i32 %1247, 255
  %1252 = call i32 @llvm.ctpop.i32(i32 %1251)
  %1253 = trunc i32 %1252 to i8
  %1254 = and i8 %1253, 1
  %1255 = xor i8 %1254, 1
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1255, i8* %1256, align 1
  %1257 = xor i64 %1244, %1242
  %1258 = trunc i64 %1257 to i32
  %1259 = xor i32 %1258, %1247
  %1260 = lshr i32 %1259, 4
  %1261 = trunc i32 %1260 to i8
  %1262 = and i8 %1261, 1
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1262, i8* %1263, align 1
  %1264 = icmp eq i32 %1247, 0
  %1265 = zext i1 %1264 to i8
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1265, i8* %1266, align 1
  %1267 = lshr i32 %1247, 31
  %1268 = trunc i32 %1267 to i8
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1268, i8* %1269, align 1
  %1270 = lshr i32 %1241, 31
  %1271 = lshr i32 %1243, 31
  %1272 = xor i32 %1271, %1270
  %1273 = xor i32 %1267, %1270
  %1274 = add i32 %1273, %1272
  %1275 = icmp eq i32 %1274, 2
  %1276 = zext i1 %1275 to i8
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1276, i8* %1277, align 1
  store %struct.Memory* %loadMem_448cb2, %struct.Memory** %MEMORY
  %loadMem_448cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1279 = getelementptr inbounds %struct.GPR, %struct.GPR* %1278, i32 0, i32 33
  %1280 = getelementptr inbounds %struct.Reg, %struct.Reg* %1279, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %1280 to i64*
  %1281 = load i64, i64* %PC.i271
  %1282 = add i64 %1281, 106
  %1283 = load i64, i64* %PC.i271
  %1284 = add i64 %1283, 6
  %1285 = load i64, i64* %PC.i271
  %1286 = add i64 %1285, 6
  store i64 %1286, i64* %PC.i271
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1288 = load i8, i8* %1287, align 1
  %1289 = icmp ne i8 %1288, 0
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1291 = load i8, i8* %1290, align 1
  %1292 = icmp ne i8 %1291, 0
  %1293 = xor i1 %1289, %1292
  %1294 = xor i1 %1293, true
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %BRANCH_TAKEN, align 1
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1297 = select i1 %1293, i64 %1284, i64 %1282
  store i64 %1297, i64* %1296, align 8
  store %struct.Memory* %loadMem_448cb4, %struct.Memory** %MEMORY
  %loadBr_448cb4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448cb4 = icmp eq i8 %loadBr_448cb4, 1
  br i1 %cmpBr_448cb4, label %block_.L_448d1e, label %block_448cba

block_448cba:                                     ; preds = %block_.L_448c9e
  %loadMem_448cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1299 = getelementptr inbounds %struct.GPR, %struct.GPR* %1298, i32 0, i32 33
  %1300 = getelementptr inbounds %struct.Reg, %struct.Reg* %1299, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %1300 to i64*
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1302 = getelementptr inbounds %struct.GPR, %struct.GPR* %1301, i32 0, i32 15
  %1303 = getelementptr inbounds %struct.Reg, %struct.Reg* %1302, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %1303 to i64*
  %1304 = load i64, i64* %RBP.i270
  %1305 = sub i64 %1304, 28
  %1306 = load i64, i64* %PC.i269
  %1307 = add i64 %1306, 7
  store i64 %1307, i64* %PC.i269
  %1308 = inttoptr i64 %1305 to i32*
  store i32 0, i32* %1308
  store %struct.Memory* %loadMem_448cba, %struct.Memory** %MEMORY
  br label %block_.L_448cc1

block_.L_448cc1:                                  ; preds = %block_448ccb, %block_448cba
  %loadMem_448cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 33
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %1311 to i64*
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 15
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %1314 to i64*
  %1315 = load i64, i64* %RBP.i268
  %1316 = sub i64 %1315, 28
  %1317 = load i64, i64* %PC.i267
  %1318 = add i64 %1317, 4
  store i64 %1318, i64* %PC.i267
  %1319 = inttoptr i64 %1316 to i32*
  %1320 = load i32, i32* %1319
  %1321 = sub i32 %1320, 4
  %1322 = icmp ult i32 %1320, 4
  %1323 = zext i1 %1322 to i8
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1323, i8* %1324, align 1
  %1325 = and i32 %1321, 255
  %1326 = call i32 @llvm.ctpop.i32(i32 %1325)
  %1327 = trunc i32 %1326 to i8
  %1328 = and i8 %1327, 1
  %1329 = xor i8 %1328, 1
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1329, i8* %1330, align 1
  %1331 = xor i32 %1320, 4
  %1332 = xor i32 %1331, %1321
  %1333 = lshr i32 %1332, 4
  %1334 = trunc i32 %1333 to i8
  %1335 = and i8 %1334, 1
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1335, i8* %1336, align 1
  %1337 = icmp eq i32 %1321, 0
  %1338 = zext i1 %1337 to i8
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1338, i8* %1339, align 1
  %1340 = lshr i32 %1321, 31
  %1341 = trunc i32 %1340 to i8
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1341, i8* %1342, align 1
  %1343 = lshr i32 %1320, 31
  %1344 = xor i32 %1340, %1343
  %1345 = add i32 %1344, %1343
  %1346 = icmp eq i32 %1345, 2
  %1347 = zext i1 %1346 to i8
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1347, i8* %1348, align 1
  store %struct.Memory* %loadMem_448cc1, %struct.Memory** %MEMORY
  %loadMem_448cc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 33
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %1351 to i64*
  %1352 = load i64, i64* %PC.i266
  %1353 = add i64 %1352, 70
  %1354 = load i64, i64* %PC.i266
  %1355 = add i64 %1354, 6
  %1356 = load i64, i64* %PC.i266
  %1357 = add i64 %1356, 6
  store i64 %1357, i64* %PC.i266
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1359 = load i8, i8* %1358, align 1
  %1360 = icmp ne i8 %1359, 0
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1362 = load i8, i8* %1361, align 1
  %1363 = icmp ne i8 %1362, 0
  %1364 = xor i1 %1360, %1363
  %1365 = xor i1 %1364, true
  %1366 = zext i1 %1365 to i8
  store i8 %1366, i8* %BRANCH_TAKEN, align 1
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1368 = select i1 %1364, i64 %1355, i64 %1353
  store i64 %1368, i64* %1367, align 8
  store %struct.Memory* %loadMem_448cc5, %struct.Memory** %MEMORY
  %loadBr_448cc5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448cc5 = icmp eq i8 %loadBr_448cc5, 1
  br i1 %cmpBr_448cc5, label %block_.L_448d0b, label %block_448ccb

block_448ccb:                                     ; preds = %block_.L_448cc1
  %loadMem_448ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1370 = getelementptr inbounds %struct.GPR, %struct.GPR* %1369, i32 0, i32 33
  %1371 = getelementptr inbounds %struct.Reg, %struct.Reg* %1370, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %1371 to i64*
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1373 = getelementptr inbounds %struct.GPR, %struct.GPR* %1372, i32 0, i32 1
  %1374 = getelementptr inbounds %struct.Reg, %struct.Reg* %1373, i32 0, i32 0
  %RAX.i265 = bitcast %union.anon* %1374 to i64*
  %1375 = load i64, i64* %PC.i264
  %1376 = add i64 %1375, 8
  store i64 %1376, i64* %PC.i264
  %1377 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1377, i64* %RAX.i265, align 8
  store %struct.Memory* %loadMem_448ccb, %struct.Memory** %MEMORY
  %loadMem_448cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 33
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %1380 to i64*
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1382 = getelementptr inbounds %struct.GPR, %struct.GPR* %1381, i32 0, i32 1
  %1383 = getelementptr inbounds %struct.Reg, %struct.Reg* %1382, i32 0, i32 0
  %RAX.i263 = bitcast %union.anon* %1383 to i64*
  %1384 = load i64, i64* %RAX.i263
  %1385 = add i64 %1384, 128
  %1386 = load i64, i64* %PC.i262
  %1387 = add i64 %1386, 7
  store i64 %1387, i64* %PC.i262
  %1388 = inttoptr i64 %1385 to i64*
  %1389 = load i64, i64* %1388
  store i64 %1389, i64* %RAX.i263, align 8
  store %struct.Memory* %loadMem_448cd3, %struct.Memory** %MEMORY
  %loadMem_448cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 33
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %1392 to i64*
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 5
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %RCX.i261 = bitcast %union.anon* %1395 to i64*
  %1396 = load i64, i64* %PC.i260
  %1397 = add i64 %1396, 8
  store i64 %1397, i64* %PC.i260
  %1398 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1398, i64* %RCX.i261, align 8
  store %struct.Memory* %loadMem_448cda, %struct.Memory** %MEMORY
  %loadMem_448ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1400 = getelementptr inbounds %struct.GPR, %struct.GPR* %1399, i32 0, i32 33
  %1401 = getelementptr inbounds %struct.Reg, %struct.Reg* %1400, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %1401 to i64*
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 5
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %RCX.i259 = bitcast %union.anon* %1404 to i64*
  %1405 = load i64, i64* %RCX.i259
  %1406 = add i64 %1405, 12
  %1407 = load i64, i64* %PC.i258
  %1408 = add i64 %1407, 4
  store i64 %1408, i64* %PC.i258
  %1409 = inttoptr i64 %1406 to i32*
  %1410 = load i32, i32* %1409
  %1411 = sext i32 %1410 to i64
  store i64 %1411, i64* %RCX.i259, align 8
  store %struct.Memory* %loadMem_448ce2, %struct.Memory** %MEMORY
  %loadMem_448ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 33
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %1414 to i64*
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1416 = getelementptr inbounds %struct.GPR, %struct.GPR* %1415, i32 0, i32 1
  %1417 = getelementptr inbounds %struct.Reg, %struct.Reg* %1416, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %1417 to i64*
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 5
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %RCX.i257 = bitcast %union.anon* %1420 to i64*
  %1421 = load i64, i64* %RAX.i256
  %1422 = load i64, i64* %RCX.i257
  %1423 = mul i64 %1422, 8
  %1424 = add i64 %1423, %1421
  %1425 = load i64, i64* %PC.i255
  %1426 = add i64 %1425, 4
  store i64 %1426, i64* %PC.i255
  %1427 = inttoptr i64 %1424 to i64*
  %1428 = load i64, i64* %1427
  store i64 %1428, i64* %RAX.i256, align 8
  store %struct.Memory* %loadMem_448ce6, %struct.Memory** %MEMORY
  %loadMem_448cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 33
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %1431 to i64*
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 5
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %RCX.i253 = bitcast %union.anon* %1434 to i64*
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 15
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %1437 to i64*
  %1438 = load i64, i64* %RBP.i254
  %1439 = sub i64 %1438, 28
  %1440 = load i64, i64* %PC.i252
  %1441 = add i64 %1440, 4
  store i64 %1441, i64* %PC.i252
  %1442 = inttoptr i64 %1439 to i32*
  %1443 = load i32, i32* %1442
  %1444 = sext i32 %1443 to i64
  store i64 %1444, i64* %RCX.i253, align 8
  store %struct.Memory* %loadMem_448cea, %struct.Memory** %MEMORY
  %loadMem_448cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1446 = getelementptr inbounds %struct.GPR, %struct.GPR* %1445, i32 0, i32 33
  %1447 = getelementptr inbounds %struct.Reg, %struct.Reg* %1446, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %1447 to i64*
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 1
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %RAX.i250 = bitcast %union.anon* %1450 to i64*
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 5
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %RCX.i251 = bitcast %union.anon* %1453 to i64*
  %1454 = load i64, i64* %RAX.i250
  %1455 = load i64, i64* %RCX.i251
  %1456 = mul i64 %1455, 8
  %1457 = add i64 %1456, %1454
  %1458 = load i64, i64* %PC.i249
  %1459 = add i64 %1458, 4
  store i64 %1459, i64* %PC.i249
  %1460 = inttoptr i64 %1457 to i64*
  %1461 = load i64, i64* %1460
  store i64 %1461, i64* %RAX.i250, align 8
  store %struct.Memory* %loadMem_448cee, %struct.Memory** %MEMORY
  %loadMem_448cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 33
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %1464 to i64*
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 5
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %RCX.i247 = bitcast %union.anon* %1467 to i64*
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 15
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %1470 to i64*
  %1471 = load i64, i64* %RBP.i248
  %1472 = sub i64 %1471, 32
  %1473 = load i64, i64* %PC.i246
  %1474 = add i64 %1473, 4
  store i64 %1474, i64* %PC.i246
  %1475 = inttoptr i64 %1472 to i32*
  %1476 = load i32, i32* %1475
  %1477 = sext i32 %1476 to i64
  store i64 %1477, i64* %RCX.i247, align 8
  store %struct.Memory* %loadMem_448cf2, %struct.Memory** %MEMORY
  %loadMem_448cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1479 = getelementptr inbounds %struct.GPR, %struct.GPR* %1478, i32 0, i32 33
  %1480 = getelementptr inbounds %struct.Reg, %struct.Reg* %1479, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %1480 to i64*
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1482 = getelementptr inbounds %struct.GPR, %struct.GPR* %1481, i32 0, i32 1
  %1483 = getelementptr inbounds %struct.Reg, %struct.Reg* %1482, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %1483 to i64*
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 5
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %RCX.i245 = bitcast %union.anon* %1486 to i64*
  %1487 = load i64, i64* %RAX.i244
  %1488 = load i64, i64* %RCX.i245
  %1489 = mul i64 %1488, 4
  %1490 = add i64 %1489, %1487
  %1491 = load i64, i64* %PC.i243
  %1492 = add i64 %1491, 7
  store i64 %1492, i64* %PC.i243
  %1493 = inttoptr i64 %1490 to i32*
  store i32 0, i32* %1493
  store %struct.Memory* %loadMem_448cf6, %struct.Memory** %MEMORY
  %loadMem_448cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 33
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %1496 to i64*
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 1
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %1499 to i64*
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1501 = getelementptr inbounds %struct.GPR, %struct.GPR* %1500, i32 0, i32 15
  %1502 = getelementptr inbounds %struct.Reg, %struct.Reg* %1501, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %1502 to i64*
  %1503 = load i64, i64* %RBP.i242
  %1504 = sub i64 %1503, 28
  %1505 = load i64, i64* %PC.i240
  %1506 = add i64 %1505, 3
  store i64 %1506, i64* %PC.i240
  %1507 = inttoptr i64 %1504 to i32*
  %1508 = load i32, i32* %1507
  %1509 = zext i32 %1508 to i64
  store i64 %1509, i64* %RAX.i241, align 8
  store %struct.Memory* %loadMem_448cfd, %struct.Memory** %MEMORY
  %loadMem_448d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 33
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 1
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %RAX.i239 = bitcast %union.anon* %1515 to i64*
  %1516 = load i64, i64* %RAX.i239
  %1517 = load i64, i64* %PC.i238
  %1518 = add i64 %1517, 3
  store i64 %1518, i64* %PC.i238
  %1519 = trunc i64 %1516 to i32
  %1520 = add i32 1, %1519
  %1521 = zext i32 %1520 to i64
  store i64 %1521, i64* %RAX.i239, align 8
  %1522 = icmp ult i32 %1520, %1519
  %1523 = icmp ult i32 %1520, 1
  %1524 = or i1 %1522, %1523
  %1525 = zext i1 %1524 to i8
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1525, i8* %1526, align 1
  %1527 = and i32 %1520, 255
  %1528 = call i32 @llvm.ctpop.i32(i32 %1527)
  %1529 = trunc i32 %1528 to i8
  %1530 = and i8 %1529, 1
  %1531 = xor i8 %1530, 1
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1531, i8* %1532, align 1
  %1533 = xor i64 1, %1516
  %1534 = trunc i64 %1533 to i32
  %1535 = xor i32 %1534, %1520
  %1536 = lshr i32 %1535, 4
  %1537 = trunc i32 %1536 to i8
  %1538 = and i8 %1537, 1
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1538, i8* %1539, align 1
  %1540 = icmp eq i32 %1520, 0
  %1541 = zext i1 %1540 to i8
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1541, i8* %1542, align 1
  %1543 = lshr i32 %1520, 31
  %1544 = trunc i32 %1543 to i8
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1544, i8* %1545, align 1
  %1546 = lshr i32 %1519, 31
  %1547 = xor i32 %1543, %1546
  %1548 = add i32 %1547, %1543
  %1549 = icmp eq i32 %1548, 2
  %1550 = zext i1 %1549 to i8
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1550, i8* %1551, align 1
  store %struct.Memory* %loadMem_448d00, %struct.Memory** %MEMORY
  %loadMem_448d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 33
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %1554 to i64*
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 1
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %EAX.i236 = bitcast %union.anon* %1557 to i32*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 15
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %1560 to i64*
  %1561 = load i64, i64* %RBP.i237
  %1562 = sub i64 %1561, 28
  %1563 = load i32, i32* %EAX.i236
  %1564 = zext i32 %1563 to i64
  %1565 = load i64, i64* %PC.i235
  %1566 = add i64 %1565, 3
  store i64 %1566, i64* %PC.i235
  %1567 = inttoptr i64 %1562 to i32*
  store i32 %1563, i32* %1567
  store %struct.Memory* %loadMem_448d03, %struct.Memory** %MEMORY
  %loadMem_448d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1569 = getelementptr inbounds %struct.GPR, %struct.GPR* %1568, i32 0, i32 33
  %1570 = getelementptr inbounds %struct.Reg, %struct.Reg* %1569, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %1570 to i64*
  %1571 = load i64, i64* %PC.i234
  %1572 = add i64 %1571, -69
  %1573 = load i64, i64* %PC.i234
  %1574 = add i64 %1573, 5
  store i64 %1574, i64* %PC.i234
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1572, i64* %1575, align 8
  store %struct.Memory* %loadMem_448d06, %struct.Memory** %MEMORY
  br label %block_.L_448cc1

block_.L_448d0b:                                  ; preds = %block_.L_448cc1
  %loadMem_448d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 33
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %1578 to i64*
  %1579 = load i64, i64* %PC.i233
  %1580 = add i64 %1579, 5
  %1581 = load i64, i64* %PC.i233
  %1582 = add i64 %1581, 5
  store i64 %1582, i64* %PC.i233
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1580, i64* %1583, align 8
  store %struct.Memory* %loadMem_448d0b, %struct.Memory** %MEMORY
  br label %block_.L_448d10

block_.L_448d10:                                  ; preds = %block_.L_448d0b
  %loadMem_448d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1585 = getelementptr inbounds %struct.GPR, %struct.GPR* %1584, i32 0, i32 33
  %1586 = getelementptr inbounds %struct.Reg, %struct.Reg* %1585, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %1586 to i64*
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 1
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %1589 to i64*
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 15
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %1592 to i64*
  %1593 = load i64, i64* %RBP.i232
  %1594 = sub i64 %1593, 32
  %1595 = load i64, i64* %PC.i230
  %1596 = add i64 %1595, 3
  store i64 %1596, i64* %PC.i230
  %1597 = inttoptr i64 %1594 to i32*
  %1598 = load i32, i32* %1597
  %1599 = zext i32 %1598 to i64
  store i64 %1599, i64* %RAX.i231, align 8
  store %struct.Memory* %loadMem_448d10, %struct.Memory** %MEMORY
  %loadMem_448d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1601 = getelementptr inbounds %struct.GPR, %struct.GPR* %1600, i32 0, i32 33
  %1602 = getelementptr inbounds %struct.Reg, %struct.Reg* %1601, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %1602 to i64*
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 1
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %1605 to i64*
  %1606 = load i64, i64* %RAX.i229
  %1607 = load i64, i64* %PC.i228
  %1608 = add i64 %1607, 3
  store i64 %1608, i64* %PC.i228
  %1609 = trunc i64 %1606 to i32
  %1610 = add i32 1, %1609
  %1611 = zext i32 %1610 to i64
  store i64 %1611, i64* %RAX.i229, align 8
  %1612 = icmp ult i32 %1610, %1609
  %1613 = icmp ult i32 %1610, 1
  %1614 = or i1 %1612, %1613
  %1615 = zext i1 %1614 to i8
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1615, i8* %1616, align 1
  %1617 = and i32 %1610, 255
  %1618 = call i32 @llvm.ctpop.i32(i32 %1617)
  %1619 = trunc i32 %1618 to i8
  %1620 = and i8 %1619, 1
  %1621 = xor i8 %1620, 1
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1621, i8* %1622, align 1
  %1623 = xor i64 1, %1606
  %1624 = trunc i64 %1623 to i32
  %1625 = xor i32 %1624, %1610
  %1626 = lshr i32 %1625, 4
  %1627 = trunc i32 %1626 to i8
  %1628 = and i8 %1627, 1
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1628, i8* %1629, align 1
  %1630 = icmp eq i32 %1610, 0
  %1631 = zext i1 %1630 to i8
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1631, i8* %1632, align 1
  %1633 = lshr i32 %1610, 31
  %1634 = trunc i32 %1633 to i8
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1634, i8* %1635, align 1
  %1636 = lshr i32 %1609, 31
  %1637 = xor i32 %1633, %1636
  %1638 = add i32 %1637, %1633
  %1639 = icmp eq i32 %1638, 2
  %1640 = zext i1 %1639 to i8
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1640, i8* %1641, align 1
  store %struct.Memory* %loadMem_448d13, %struct.Memory** %MEMORY
  %loadMem_448d16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 33
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %1644 to i64*
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 1
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %1647 to i32*
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 15
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %1650 to i64*
  %1651 = load i64, i64* %RBP.i227
  %1652 = sub i64 %1651, 32
  %1653 = load i32, i32* %EAX.i
  %1654 = zext i32 %1653 to i64
  %1655 = load i64, i64* %PC.i226
  %1656 = add i64 %1655, 3
  store i64 %1656, i64* %PC.i226
  %1657 = inttoptr i64 %1652 to i32*
  store i32 %1653, i32* %1657
  store %struct.Memory* %loadMem_448d16, %struct.Memory** %MEMORY
  %loadMem_448d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1659 = getelementptr inbounds %struct.GPR, %struct.GPR* %1658, i32 0, i32 33
  %1660 = getelementptr inbounds %struct.Reg, %struct.Reg* %1659, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %1660 to i64*
  %1661 = load i64, i64* %PC.i225
  %1662 = add i64 %1661, -123
  %1663 = load i64, i64* %PC.i225
  %1664 = add i64 %1663, 5
  store i64 %1664, i64* %PC.i225
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1662, i64* %1665, align 8
  store %struct.Memory* %loadMem_448d19, %struct.Memory** %MEMORY
  br label %block_.L_448c9e

block_.L_448d1e:                                  ; preds = %block_.L_448c9e
  %loadMem_448d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 33
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1668 to i64*
  %1669 = load i64, i64* %PC.i224
  %1670 = add i64 %1669, 5
  %1671 = load i64, i64* %PC.i224
  %1672 = add i64 %1671, 5
  store i64 %1672, i64* %PC.i224
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1670, i64* %1673, align 8
  store %struct.Memory* %loadMem_448d1e, %struct.Memory** %MEMORY
  br label %block_.L_448d23

block_.L_448d23:                                  ; preds = %block_.L_448d1e, %block_448c86, %block_.L_448c51
  %loadMem1_448d23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 33
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %1676 to i64*
  %1677 = load i64, i64* %PC.i223
  %1678 = add i64 %1677, -659
  %1679 = load i64, i64* %PC.i223
  %1680 = add i64 %1679, 5
  %1681 = load i64, i64* %PC.i223
  %1682 = add i64 %1681, 5
  store i64 %1682, i64* %PC.i223
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1684 = load i64, i64* %1683, align 8
  %1685 = add i64 %1684, -8
  %1686 = inttoptr i64 %1685 to i64*
  store i64 %1680, i64* %1686
  store i64 %1685, i64* %1683, align 8
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1678, i64* %1687, align 8
  store %struct.Memory* %loadMem1_448d23, %struct.Memory** %MEMORY
  %loadMem2_448d23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_448d23 = load i64, i64* %3
  %call2_448d23 = call %struct.Memory* @sub_448a90.set_last_dquant(%struct.State* %0, i64 %loadPC_448d23, %struct.Memory* %loadMem2_448d23)
  store %struct.Memory* %call2_448d23, %struct.Memory** %MEMORY
  %loadMem_448d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 33
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %1690 to i64*
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1692 = getelementptr inbounds %struct.GPR, %struct.GPR* %1691, i32 0, i32 1
  %1693 = getelementptr inbounds %struct.Reg, %struct.Reg* %1692, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %1693 to i64*
  %1694 = load i64, i64* %PC.i221
  %1695 = add i64 %1694, 8
  store i64 %1695, i64* %PC.i221
  %1696 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %1696, i64* %RAX.i222, align 8
  store %struct.Memory* %loadMem_448d28, %struct.Memory** %MEMORY
  %loadMem_448d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 33
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %1699 to i64*
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 1
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %1702 to i64*
  %1703 = load i64, i64* %RAX.i220
  %1704 = add i64 %1703, 216
  %1705 = load i64, i64* %PC.i219
  %1706 = add i64 %1705, 7
  store i64 %1706, i64* %PC.i219
  %1707 = inttoptr i64 %1704 to i32*
  %1708 = load i32, i32* %1707
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1709, align 1
  %1710 = and i32 %1708, 255
  %1711 = call i32 @llvm.ctpop.i32(i32 %1710)
  %1712 = trunc i32 %1711 to i8
  %1713 = and i8 %1712, 1
  %1714 = xor i8 %1713, 1
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1714, i8* %1715, align 1
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1716, align 1
  %1717 = icmp eq i32 %1708, 0
  %1718 = zext i1 %1717 to i8
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1718, i8* %1719, align 1
  %1720 = lshr i32 %1708, 31
  %1721 = trunc i32 %1720 to i8
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1721, i8* %1722, align 1
  %1723 = lshr i32 %1708, 31
  %1724 = xor i32 %1720, %1723
  %1725 = add i32 %1724, %1723
  %1726 = icmp eq i32 %1725, 2
  %1727 = zext i1 %1726 to i8
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1727, i8* %1728, align 1
  store %struct.Memory* %loadMem_448d30, %struct.Memory** %MEMORY
  %loadMem_448d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 33
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %1731 to i64*
  %1732 = load i64, i64* %PC.i218
  %1733 = add i64 %1732, 123
  %1734 = load i64, i64* %PC.i218
  %1735 = add i64 %1734, 6
  %1736 = load i64, i64* %PC.i218
  %1737 = add i64 %1736, 6
  store i64 %1737, i64* %PC.i218
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1739 = load i8, i8* %1738, align 1
  store i8 %1739, i8* %BRANCH_TAKEN, align 1
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1741 = icmp ne i8 %1739, 0
  %1742 = select i1 %1741, i64 %1733, i64 %1735
  store i64 %1742, i64* %1740, align 8
  store %struct.Memory* %loadMem_448d37, %struct.Memory** %MEMORY
  %loadBr_448d37 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448d37 = icmp eq i8 %loadBr_448d37, 1
  br i1 %cmpBr_448d37, label %block_.L_448db2, label %block_448d3d

block_448d3d:                                     ; preds = %block_.L_448d23
  %loadMem_448d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 33
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %1745 to i64*
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 1
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %1748 to i64*
  %1749 = load i64, i64* %PC.i216
  %1750 = add i64 %1749, 8
  store i64 %1750, i64* %PC.i216
  %1751 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1751, i64* %RAX.i217, align 8
  store %struct.Memory* %loadMem_448d3d, %struct.Memory** %MEMORY
  %loadMem_448d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 33
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %1754 to i64*
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1756 = getelementptr inbounds %struct.GPR, %struct.GPR* %1755, i32 0, i32 1
  %1757 = getelementptr inbounds %struct.Reg, %struct.Reg* %1756, i32 0, i32 0
  %RAX.i215 = bitcast %union.anon* %1757 to i64*
  %1758 = load i64, i64* %RAX.i215
  %1759 = add i64 %1758, 24
  %1760 = load i64, i64* %PC.i214
  %1761 = add i64 %1760, 4
  store i64 %1761, i64* %PC.i214
  %1762 = inttoptr i64 %1759 to i32*
  %1763 = load i32, i32* %1762
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1764, align 1
  %1765 = and i32 %1763, 255
  %1766 = call i32 @llvm.ctpop.i32(i32 %1765)
  %1767 = trunc i32 %1766 to i8
  %1768 = and i8 %1767, 1
  %1769 = xor i8 %1768, 1
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1769, i8* %1770, align 1
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1771, align 1
  %1772 = icmp eq i32 %1763, 0
  %1773 = zext i1 %1772 to i8
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1773, i8* %1774, align 1
  %1775 = lshr i32 %1763, 31
  %1776 = trunc i32 %1775 to i8
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1776, i8* %1777, align 1
  %1778 = lshr i32 %1763, 31
  %1779 = xor i32 %1775, %1778
  %1780 = add i32 %1779, %1778
  %1781 = icmp eq i32 %1780, 2
  %1782 = zext i1 %1781 to i8
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1782, i8* %1783, align 1
  store %struct.Memory* %loadMem_448d45, %struct.Memory** %MEMORY
  %loadMem_448d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 33
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %1786 to i64*
  %1787 = load i64, i64* %PC.i213
  %1788 = add i64 %1787, 24
  %1789 = load i64, i64* %PC.i213
  %1790 = add i64 %1789, 6
  %1791 = load i64, i64* %PC.i213
  %1792 = add i64 %1791, 6
  store i64 %1792, i64* %PC.i213
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1794 = load i8, i8* %1793, align 1
  store i8 %1794, i8* %BRANCH_TAKEN, align 1
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1796 = icmp ne i8 %1794, 0
  %1797 = select i1 %1796, i64 %1788, i64 %1790
  store i64 %1797, i64* %1795, align 8
  store %struct.Memory* %loadMem_448d49, %struct.Memory** %MEMORY
  %loadBr_448d49 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448d49 = icmp eq i8 %loadBr_448d49, 1
  br i1 %cmpBr_448d49, label %block_.L_448d61, label %block_448d4f

block_448d4f:                                     ; preds = %block_448d3d
  %loadMem_448d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 33
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %1800 to i64*
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1802 = getelementptr inbounds %struct.GPR, %struct.GPR* %1801, i32 0, i32 1
  %1803 = getelementptr inbounds %struct.Reg, %struct.Reg* %1802, i32 0, i32 0
  %RAX.i212 = bitcast %union.anon* %1803 to i64*
  %1804 = load i64, i64* %PC.i211
  %1805 = add i64 %1804, 8
  store i64 %1805, i64* %PC.i211
  %1806 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1806, i64* %RAX.i212, align 8
  store %struct.Memory* %loadMem_448d4f, %struct.Memory** %MEMORY
  %loadMem_448d57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 33
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %1809 to i64*
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 1
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %1812 to i64*
  %1813 = load i64, i64* %RAX.i210
  %1814 = add i64 %1813, 24
  %1815 = load i64, i64* %PC.i209
  %1816 = add i64 %1815, 4
  store i64 %1816, i64* %PC.i209
  %1817 = inttoptr i64 %1814 to i32*
  %1818 = load i32, i32* %1817
  %1819 = sub i32 %1818, 1
  %1820 = icmp ult i32 %1818, 1
  %1821 = zext i1 %1820 to i8
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1821, i8* %1822, align 1
  %1823 = and i32 %1819, 255
  %1824 = call i32 @llvm.ctpop.i32(i32 %1823)
  %1825 = trunc i32 %1824 to i8
  %1826 = and i8 %1825, 1
  %1827 = xor i8 %1826, 1
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1827, i8* %1828, align 1
  %1829 = xor i32 %1818, 1
  %1830 = xor i32 %1829, %1819
  %1831 = lshr i32 %1830, 4
  %1832 = trunc i32 %1831 to i8
  %1833 = and i8 %1832, 1
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1833, i8* %1834, align 1
  %1835 = icmp eq i32 %1819, 0
  %1836 = zext i1 %1835 to i8
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1836, i8* %1837, align 1
  %1838 = lshr i32 %1819, 31
  %1839 = trunc i32 %1838 to i8
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1839, i8* %1840, align 1
  %1841 = lshr i32 %1818, 31
  %1842 = xor i32 %1838, %1841
  %1843 = add i32 %1842, %1841
  %1844 = icmp eq i32 %1843, 2
  %1845 = zext i1 %1844 to i8
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1845, i8* %1846, align 1
  store %struct.Memory* %loadMem_448d57, %struct.Memory** %MEMORY
  %loadMem_448d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1848 = getelementptr inbounds %struct.GPR, %struct.GPR* %1847, i32 0, i32 33
  %1849 = getelementptr inbounds %struct.Reg, %struct.Reg* %1848, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %1849 to i64*
  %1850 = load i64, i64* %PC.i208
  %1851 = add i64 %1850, 87
  %1852 = load i64, i64* %PC.i208
  %1853 = add i64 %1852, 6
  %1854 = load i64, i64* %PC.i208
  %1855 = add i64 %1854, 6
  store i64 %1855, i64* %PC.i208
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1857 = load i8, i8* %1856, align 1
  %1858 = icmp eq i8 %1857, 0
  %1859 = zext i1 %1858 to i8
  store i8 %1859, i8* %BRANCH_TAKEN, align 1
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1861 = select i1 %1858, i64 %1851, i64 %1853
  store i64 %1861, i64* %1860, align 8
  store %struct.Memory* %loadMem_448d5b, %struct.Memory** %MEMORY
  %loadBr_448d5b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448d5b = icmp eq i8 %loadBr_448d5b, 1
  br i1 %cmpBr_448d5b, label %block_.L_448db2, label %block_.L_448d61

block_.L_448d61:                                  ; preds = %block_448d4f, %block_448d3d
  %loadMem_448d61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 33
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %1864 to i64*
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 1
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %RAX.i206 = bitcast %union.anon* %1867 to i64*
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 15
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %1870 to i64*
  %1871 = load i64, i64* %RBP.i207
  %1872 = sub i64 %1871, 16
  %1873 = load i64, i64* %PC.i205
  %1874 = add i64 %1873, 4
  store i64 %1874, i64* %PC.i205
  %1875 = inttoptr i64 %1872 to i64*
  %1876 = load i64, i64* %1875
  store i64 %1876, i64* %RAX.i206, align 8
  store %struct.Memory* %loadMem_448d61, %struct.Memory** %MEMORY
  %loadMem_448d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 33
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %1879 to i64*
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 1
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %RAX.i204 = bitcast %union.anon* %1882 to i64*
  %1883 = load i64, i64* %RAX.i204
  %1884 = add i64 %1883, 72
  %1885 = load i64, i64* %PC.i203
  %1886 = add i64 %1885, 4
  store i64 %1886, i64* %PC.i203
  %1887 = inttoptr i64 %1884 to i32*
  %1888 = load i32, i32* %1887
  %1889 = sub i32 %1888, 9
  %1890 = icmp ult i32 %1888, 9
  %1891 = zext i1 %1890 to i8
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1891, i8* %1892, align 1
  %1893 = and i32 %1889, 255
  %1894 = call i32 @llvm.ctpop.i32(i32 %1893)
  %1895 = trunc i32 %1894 to i8
  %1896 = and i8 %1895, 1
  %1897 = xor i8 %1896, 1
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1897, i8* %1898, align 1
  %1899 = xor i32 %1888, 9
  %1900 = xor i32 %1899, %1889
  %1901 = lshr i32 %1900, 4
  %1902 = trunc i32 %1901 to i8
  %1903 = and i8 %1902, 1
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1903, i8* %1904, align 1
  %1905 = icmp eq i32 %1889, 0
  %1906 = zext i1 %1905 to i8
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1906, i8* %1907, align 1
  %1908 = lshr i32 %1889, 31
  %1909 = trunc i32 %1908 to i8
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1909, i8* %1910, align 1
  %1911 = lshr i32 %1888, 31
  %1912 = xor i32 %1908, %1911
  %1913 = add i32 %1912, %1911
  %1914 = icmp eq i32 %1913, 2
  %1915 = zext i1 %1914 to i8
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1915, i8* %1916, align 1
  store %struct.Memory* %loadMem_448d65, %struct.Memory** %MEMORY
  %loadMem_448d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1918 = getelementptr inbounds %struct.GPR, %struct.GPR* %1917, i32 0, i32 33
  %1919 = getelementptr inbounds %struct.Reg, %struct.Reg* %1918, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %1919 to i64*
  %1920 = load i64, i64* %PC.i202
  %1921 = add i64 %1920, 68
  %1922 = load i64, i64* %PC.i202
  %1923 = add i64 %1922, 6
  %1924 = load i64, i64* %PC.i202
  %1925 = add i64 %1924, 6
  store i64 %1925, i64* %PC.i202
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1927 = load i8, i8* %1926, align 1
  store i8 %1927, i8* %BRANCH_TAKEN, align 1
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1929 = icmp ne i8 %1927, 0
  %1930 = select i1 %1929, i64 %1921, i64 %1923
  store i64 %1930, i64* %1928, align 8
  store %struct.Memory* %loadMem_448d69, %struct.Memory** %MEMORY
  %loadBr_448d69 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448d69 = icmp eq i8 %loadBr_448d69, 1
  br i1 %cmpBr_448d69, label %block_.L_448dad, label %block_448d6f

block_448d6f:                                     ; preds = %block_.L_448d61
  %loadMem_448d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 33
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %1933 to i64*
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 1
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 15
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %1939 to i64*
  %1940 = load i64, i64* %RBP.i201
  %1941 = sub i64 %1940, 16
  %1942 = load i64, i64* %PC.i199
  %1943 = add i64 %1942, 4
  store i64 %1943, i64* %PC.i199
  %1944 = inttoptr i64 %1941 to i64*
  %1945 = load i64, i64* %1944
  store i64 %1945, i64* %RAX.i200, align 8
  store %struct.Memory* %loadMem_448d6f, %struct.Memory** %MEMORY
  %loadMem_448d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 33
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %1948 to i64*
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1950 = getelementptr inbounds %struct.GPR, %struct.GPR* %1949, i32 0, i32 1
  %1951 = getelementptr inbounds %struct.Reg, %struct.Reg* %1950, i32 0, i32 0
  %RAX.i198 = bitcast %union.anon* %1951 to i64*
  %1952 = load i64, i64* %RAX.i198
  %1953 = add i64 %1952, 72
  %1954 = load i64, i64* %PC.i197
  %1955 = add i64 %1954, 4
  store i64 %1955, i64* %PC.i197
  %1956 = inttoptr i64 %1953 to i32*
  %1957 = load i32, i32* %1956
  %1958 = sub i32 %1957, 10
  %1959 = icmp ult i32 %1957, 10
  %1960 = zext i1 %1959 to i8
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1960, i8* %1961, align 1
  %1962 = and i32 %1958, 255
  %1963 = call i32 @llvm.ctpop.i32(i32 %1962)
  %1964 = trunc i32 %1963 to i8
  %1965 = and i8 %1964, 1
  %1966 = xor i8 %1965, 1
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1966, i8* %1967, align 1
  %1968 = xor i32 %1957, 10
  %1969 = xor i32 %1968, %1958
  %1970 = lshr i32 %1969, 4
  %1971 = trunc i32 %1970 to i8
  %1972 = and i8 %1971, 1
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1972, i8* %1973, align 1
  %1974 = icmp eq i32 %1958, 0
  %1975 = zext i1 %1974 to i8
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1975, i8* %1976, align 1
  %1977 = lshr i32 %1958, 31
  %1978 = trunc i32 %1977 to i8
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1978, i8* %1979, align 1
  %1980 = lshr i32 %1957, 31
  %1981 = xor i32 %1977, %1980
  %1982 = add i32 %1981, %1980
  %1983 = icmp eq i32 %1982, 2
  %1984 = zext i1 %1983 to i8
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1984, i8* %1985, align 1
  store %struct.Memory* %loadMem_448d73, %struct.Memory** %MEMORY
  %loadMem_448d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1987 = getelementptr inbounds %struct.GPR, %struct.GPR* %1986, i32 0, i32 33
  %1988 = getelementptr inbounds %struct.Reg, %struct.Reg* %1987, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %1988 to i64*
  %1989 = load i64, i64* %PC.i196
  %1990 = add i64 %1989, 54
  %1991 = load i64, i64* %PC.i196
  %1992 = add i64 %1991, 6
  %1993 = load i64, i64* %PC.i196
  %1994 = add i64 %1993, 6
  store i64 %1994, i64* %PC.i196
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1996 = load i8, i8* %1995, align 1
  store i8 %1996, i8* %BRANCH_TAKEN, align 1
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1998 = icmp ne i8 %1996, 0
  %1999 = select i1 %1998, i64 %1990, i64 %1992
  store i64 %1999, i64* %1997, align 8
  store %struct.Memory* %loadMem_448d77, %struct.Memory** %MEMORY
  %loadBr_448d77 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448d77 = icmp eq i8 %loadBr_448d77, 1
  br i1 %cmpBr_448d77, label %block_.L_448dad, label %block_448d7d

block_448d7d:                                     ; preds = %block_448d6f
  %loadMem_448d7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 33
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %2002 to i64*
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 1
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %2005 to i64*
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 15
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %2008 to i64*
  %2009 = load i64, i64* %RBP.i195
  %2010 = sub i64 %2009, 16
  %2011 = load i64, i64* %PC.i193
  %2012 = add i64 %2011, 4
  store i64 %2012, i64* %PC.i193
  %2013 = inttoptr i64 %2010 to i64*
  %2014 = load i64, i64* %2013
  store i64 %2014, i64* %RAX.i194, align 8
  store %struct.Memory* %loadMem_448d7d, %struct.Memory** %MEMORY
  %loadMem_448d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 33
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 1
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %RAX.i192 = bitcast %union.anon* %2020 to i64*
  %2021 = load i64, i64* %RAX.i192
  %2022 = add i64 %2021, 72
  %2023 = load i64, i64* %PC.i191
  %2024 = add i64 %2023, 4
  store i64 %2024, i64* %PC.i191
  %2025 = inttoptr i64 %2022 to i32*
  %2026 = load i32, i32* %2025
  %2027 = sub i32 %2026, 13
  %2028 = icmp ult i32 %2026, 13
  %2029 = zext i1 %2028 to i8
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2029, i8* %2030, align 1
  %2031 = and i32 %2027, 255
  %2032 = call i32 @llvm.ctpop.i32(i32 %2031)
  %2033 = trunc i32 %2032 to i8
  %2034 = and i8 %2033, 1
  %2035 = xor i8 %2034, 1
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2035, i8* %2036, align 1
  %2037 = xor i32 %2026, 13
  %2038 = xor i32 %2037, %2027
  %2039 = lshr i32 %2038, 4
  %2040 = trunc i32 %2039 to i8
  %2041 = and i8 %2040, 1
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2041, i8* %2042, align 1
  %2043 = icmp eq i32 %2027, 0
  %2044 = zext i1 %2043 to i8
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2044, i8* %2045, align 1
  %2046 = lshr i32 %2027, 31
  %2047 = trunc i32 %2046 to i8
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2047, i8* %2048, align 1
  %2049 = lshr i32 %2026, 31
  %2050 = xor i32 %2046, %2049
  %2051 = add i32 %2050, %2049
  %2052 = icmp eq i32 %2051, 2
  %2053 = zext i1 %2052 to i8
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2053, i8* %2054, align 1
  store %struct.Memory* %loadMem_448d81, %struct.Memory** %MEMORY
  %loadMem_448d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2056 = getelementptr inbounds %struct.GPR, %struct.GPR* %2055, i32 0, i32 33
  %2057 = getelementptr inbounds %struct.Reg, %struct.Reg* %2056, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %2057 to i64*
  %2058 = load i64, i64* %PC.i190
  %2059 = add i64 %2058, 40
  %2060 = load i64, i64* %PC.i190
  %2061 = add i64 %2060, 6
  %2062 = load i64, i64* %PC.i190
  %2063 = add i64 %2062, 6
  store i64 %2063, i64* %PC.i190
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2065 = load i8, i8* %2064, align 1
  store i8 %2065, i8* %BRANCH_TAKEN, align 1
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2067 = icmp ne i8 %2065, 0
  %2068 = select i1 %2067, i64 %2059, i64 %2061
  store i64 %2068, i64* %2066, align 8
  store %struct.Memory* %loadMem_448d85, %struct.Memory** %MEMORY
  %loadBr_448d85 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448d85 = icmp eq i8 %loadBr_448d85, 1
  br i1 %cmpBr_448d85, label %block_.L_448dad, label %block_448d8b

block_448d8b:                                     ; preds = %block_448d7d
  %loadMem_448d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 33
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %2071 to i64*
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 1
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %2074 to i64*
  %2075 = load i64, i64* %PC.i188
  %2076 = add i64 %2075, 8
  store i64 %2076, i64* %PC.i188
  %2077 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2077, i64* %RAX.i189, align 8
  store %struct.Memory* %loadMem_448d8b, %struct.Memory** %MEMORY
  %loadMem_448d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 33
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %2080 to i64*
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2082 = getelementptr inbounds %struct.GPR, %struct.GPR* %2081, i32 0, i32 1
  %2083 = getelementptr inbounds %struct.Reg, %struct.Reg* %2082, i32 0, i32 0
  %RAX.i187 = bitcast %union.anon* %2083 to i64*
  %2084 = load i64, i64* %RAX.i187
  %2085 = add i64 %2084, 71784
  %2086 = load i64, i64* %PC.i186
  %2087 = add i64 %2086, 7
  store i64 %2087, i64* %PC.i186
  %2088 = inttoptr i64 %2085 to i64*
  %2089 = load i64, i64* %2088
  store i64 %2089, i64* %RAX.i187, align 8
  store %struct.Memory* %loadMem_448d93, %struct.Memory** %MEMORY
  %loadMem_448d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 33
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %2092 to i64*
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 5
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %RCX.i185 = bitcast %union.anon* %2095 to i64*
  %2096 = load i64, i64* %PC.i184
  %2097 = add i64 %2096, 8
  store i64 %2097, i64* %PC.i184
  %2098 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2098, i64* %RCX.i185, align 8
  store %struct.Memory* %loadMem_448d9a, %struct.Memory** %MEMORY
  %loadMem_448da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2100 = getelementptr inbounds %struct.GPR, %struct.GPR* %2099, i32 0, i32 33
  %2101 = getelementptr inbounds %struct.Reg, %struct.Reg* %2100, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %2101 to i64*
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2103 = getelementptr inbounds %struct.GPR, %struct.GPR* %2102, i32 0, i32 5
  %2104 = getelementptr inbounds %struct.Reg, %struct.Reg* %2103, i32 0, i32 0
  %RCX.i183 = bitcast %union.anon* %2104 to i64*
  %2105 = load i64, i64* %RCX.i183
  %2106 = add i64 %2105, 12
  %2107 = load i64, i64* %PC.i182
  %2108 = add i64 %2107, 4
  store i64 %2108, i64* %PC.i182
  %2109 = inttoptr i64 %2106 to i32*
  %2110 = load i32, i32* %2109
  %2111 = sext i32 %2110 to i64
  store i64 %2111, i64* %RCX.i183, align 8
  store %struct.Memory* %loadMem_448da2, %struct.Memory** %MEMORY
  %loadMem_448da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 33
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %2114 to i64*
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 1
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %2117 to i64*
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2119 = getelementptr inbounds %struct.GPR, %struct.GPR* %2118, i32 0, i32 5
  %2120 = getelementptr inbounds %struct.Reg, %struct.Reg* %2119, i32 0, i32 0
  %RCX.i181 = bitcast %union.anon* %2120 to i64*
  %2121 = load i64, i64* %RAX.i180
  %2122 = load i64, i64* %RCX.i181
  %2123 = mul i64 %2122, 4
  %2124 = add i64 %2123, %2121
  %2125 = load i64, i64* %PC.i179
  %2126 = add i64 %2125, 7
  store i64 %2126, i64* %PC.i179
  %2127 = inttoptr i64 %2124 to i32*
  store i32 0, i32* %2127
  store %struct.Memory* %loadMem_448da6, %struct.Memory** %MEMORY
  br label %block_.L_448dad

block_.L_448dad:                                  ; preds = %block_448d8b, %block_448d7d, %block_448d6f, %block_.L_448d61
  %loadMem_448dad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2129 = getelementptr inbounds %struct.GPR, %struct.GPR* %2128, i32 0, i32 33
  %2130 = getelementptr inbounds %struct.Reg, %struct.Reg* %2129, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %2130 to i64*
  %2131 = load i64, i64* %PC.i178
  %2132 = add i64 %2131, 5
  %2133 = load i64, i64* %PC.i178
  %2134 = add i64 %2133, 5
  store i64 %2134, i64* %PC.i178
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2132, i64* %2135, align 8
  store %struct.Memory* %loadMem_448dad, %struct.Memory** %MEMORY
  br label %block_.L_448db2

block_.L_448db2:                                  ; preds = %block_.L_448dad, %block_448d4f, %block_.L_448d23
  %loadMem_448db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 33
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %2138 to i64*
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 1
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %RAX.i176 = bitcast %union.anon* %2141 to i64*
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 15
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %2144 to i64*
  %2145 = load i64, i64* %RBP.i177
  %2146 = sub i64 %2145, 24
  %2147 = load i64, i64* %PC.i175
  %2148 = add i64 %2147, 4
  store i64 %2148, i64* %PC.i175
  %2149 = inttoptr i64 %2146 to i64*
  %2150 = load i64, i64* %2149
  store i64 %2150, i64* %RAX.i176, align 8
  store %struct.Memory* %loadMem_448db2, %struct.Memory** %MEMORY
  %loadMem_448db6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2152 = getelementptr inbounds %struct.GPR, %struct.GPR* %2151, i32 0, i32 33
  %2153 = getelementptr inbounds %struct.Reg, %struct.Reg* %2152, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %2153 to i64*
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 1
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %2156 to i64*
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2158 = getelementptr inbounds %struct.GPR, %struct.GPR* %2157, i32 0, i32 5
  %2159 = getelementptr inbounds %struct.Reg, %struct.Reg* %2158, i32 0, i32 0
  %RCX.i174 = bitcast %union.anon* %2159 to i64*
  %2160 = load i64, i64* %RAX.i173
  %2161 = add i64 %2160, 8
  %2162 = load i64, i64* %PC.i172
  %2163 = add i64 %2162, 3
  store i64 %2163, i64* %PC.i172
  %2164 = inttoptr i64 %2161 to i32*
  %2165 = load i32, i32* %2164
  %2166 = zext i32 %2165 to i64
  store i64 %2166, i64* %RCX.i174, align 8
  store %struct.Memory* %loadMem_448db6, %struct.Memory** %MEMORY
  %loadMem_448db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 33
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %2169 to i64*
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 1
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %RAX.i170 = bitcast %union.anon* %2172 to i64*
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 15
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %2175 to i64*
  %2176 = load i64, i64* %RBP.i171
  %2177 = sub i64 %2176, 24
  %2178 = load i64, i64* %PC.i169
  %2179 = add i64 %2178, 4
  store i64 %2179, i64* %PC.i169
  %2180 = inttoptr i64 %2177 to i64*
  %2181 = load i64, i64* %2180
  store i64 %2181, i64* %RAX.i170, align 8
  store %struct.Memory* %loadMem_448db9, %struct.Memory** %MEMORY
  %loadMem_448dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2183 = getelementptr inbounds %struct.GPR, %struct.GPR* %2182, i32 0, i32 33
  %2184 = getelementptr inbounds %struct.Reg, %struct.Reg* %2183, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %2184 to i64*
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2186 = getelementptr inbounds %struct.GPR, %struct.GPR* %2185, i32 0, i32 1
  %2187 = getelementptr inbounds %struct.Reg, %struct.Reg* %2186, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %2187 to i64*
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2189 = getelementptr inbounds %struct.GPR, %struct.GPR* %2188, i32 0, i32 5
  %2190 = getelementptr inbounds %struct.Reg, %struct.Reg* %2189, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %2190 to i64*
  %2191 = load i64, i64* %RCX.i168
  %2192 = load i64, i64* %RAX.i167
  %2193 = add i64 %2192, 20
  %2194 = load i64, i64* %PC.i166
  %2195 = add i64 %2194, 3
  store i64 %2195, i64* %PC.i166
  %2196 = trunc i64 %2191 to i32
  %2197 = inttoptr i64 %2193 to i32*
  %2198 = load i32, i32* %2197
  %2199 = add i32 %2198, %2196
  %2200 = zext i32 %2199 to i64
  store i64 %2200, i64* %RCX.i168, align 8
  %2201 = icmp ult i32 %2199, %2196
  %2202 = icmp ult i32 %2199, %2198
  %2203 = or i1 %2201, %2202
  %2204 = zext i1 %2203 to i8
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2204, i8* %2205, align 1
  %2206 = and i32 %2199, 255
  %2207 = call i32 @llvm.ctpop.i32(i32 %2206)
  %2208 = trunc i32 %2207 to i8
  %2209 = and i8 %2208, 1
  %2210 = xor i8 %2209, 1
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2210, i8* %2211, align 1
  %2212 = xor i32 %2198, %2196
  %2213 = xor i32 %2212, %2199
  %2214 = lshr i32 %2213, 4
  %2215 = trunc i32 %2214 to i8
  %2216 = and i8 %2215, 1
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2216, i8* %2217, align 1
  %2218 = icmp eq i32 %2199, 0
  %2219 = zext i1 %2218 to i8
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2219, i8* %2220, align 1
  %2221 = lshr i32 %2199, 31
  %2222 = trunc i32 %2221 to i8
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2222, i8* %2223, align 1
  %2224 = lshr i32 %2196, 31
  %2225 = lshr i32 %2198, 31
  %2226 = xor i32 %2221, %2224
  %2227 = xor i32 %2221, %2225
  %2228 = add i32 %2226, %2227
  %2229 = icmp eq i32 %2228, 2
  %2230 = zext i1 %2229 to i8
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2230, i8* %2231, align 1
  store %struct.Memory* %loadMem_448dbd, %struct.Memory** %MEMORY
  %loadMem_448dc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2233 = getelementptr inbounds %struct.GPR, %struct.GPR* %2232, i32 0, i32 33
  %2234 = getelementptr inbounds %struct.Reg, %struct.Reg* %2233, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %2234 to i64*
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2236 = getelementptr inbounds %struct.GPR, %struct.GPR* %2235, i32 0, i32 1
  %2237 = getelementptr inbounds %struct.Reg, %struct.Reg* %2236, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %2237 to i64*
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2239 = getelementptr inbounds %struct.GPR, %struct.GPR* %2238, i32 0, i32 15
  %2240 = getelementptr inbounds %struct.Reg, %struct.Reg* %2239, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %2240 to i64*
  %2241 = load i64, i64* %RBP.i165
  %2242 = sub i64 %2241, 24
  %2243 = load i64, i64* %PC.i163
  %2244 = add i64 %2243, 4
  store i64 %2244, i64* %PC.i163
  %2245 = inttoptr i64 %2242 to i64*
  %2246 = load i64, i64* %2245
  store i64 %2246, i64* %RAX.i164, align 8
  store %struct.Memory* %loadMem_448dc0, %struct.Memory** %MEMORY
  %loadMem_448dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2248 = getelementptr inbounds %struct.GPR, %struct.GPR* %2247, i32 0, i32 33
  %2249 = getelementptr inbounds %struct.Reg, %struct.Reg* %2248, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %2249 to i64*
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2251 = getelementptr inbounds %struct.GPR, %struct.GPR* %2250, i32 0, i32 1
  %2252 = getelementptr inbounds %struct.Reg, %struct.Reg* %2251, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %2252 to i64*
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 5
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %RCX.i162 = bitcast %union.anon* %2255 to i64*
  %2256 = load i64, i64* %RCX.i162
  %2257 = load i64, i64* %RAX.i161
  %2258 = add i64 %2257, 12
  %2259 = load i64, i64* %PC.i160
  %2260 = add i64 %2259, 3
  store i64 %2260, i64* %PC.i160
  %2261 = trunc i64 %2256 to i32
  %2262 = inttoptr i64 %2258 to i32*
  %2263 = load i32, i32* %2262
  %2264 = add i32 %2263, %2261
  %2265 = zext i32 %2264 to i64
  store i64 %2265, i64* %RCX.i162, align 8
  %2266 = icmp ult i32 %2264, %2261
  %2267 = icmp ult i32 %2264, %2263
  %2268 = or i1 %2266, %2267
  %2269 = zext i1 %2268 to i8
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2269, i8* %2270, align 1
  %2271 = and i32 %2264, 255
  %2272 = call i32 @llvm.ctpop.i32(i32 %2271)
  %2273 = trunc i32 %2272 to i8
  %2274 = and i8 %2273, 1
  %2275 = xor i8 %2274, 1
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2275, i8* %2276, align 1
  %2277 = xor i32 %2263, %2261
  %2278 = xor i32 %2277, %2264
  %2279 = lshr i32 %2278, 4
  %2280 = trunc i32 %2279 to i8
  %2281 = and i8 %2280, 1
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2281, i8* %2282, align 1
  %2283 = icmp eq i32 %2264, 0
  %2284 = zext i1 %2283 to i8
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2284, i8* %2285, align 1
  %2286 = lshr i32 %2264, 31
  %2287 = trunc i32 %2286 to i8
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2287, i8* %2288, align 1
  %2289 = lshr i32 %2261, 31
  %2290 = lshr i32 %2263, 31
  %2291 = xor i32 %2286, %2289
  %2292 = xor i32 %2286, %2290
  %2293 = add i32 %2291, %2292
  %2294 = icmp eq i32 %2293, 2
  %2295 = zext i1 %2294 to i8
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2295, i8* %2296, align 1
  store %struct.Memory* %loadMem_448dc4, %struct.Memory** %MEMORY
  %loadMem_448dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2298 = getelementptr inbounds %struct.GPR, %struct.GPR* %2297, i32 0, i32 33
  %2299 = getelementptr inbounds %struct.Reg, %struct.Reg* %2298, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %2299 to i64*
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2301 = getelementptr inbounds %struct.GPR, %struct.GPR* %2300, i32 0, i32 1
  %2302 = getelementptr inbounds %struct.Reg, %struct.Reg* %2301, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %2302 to i64*
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 15
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %2305 to i64*
  %2306 = load i64, i64* %RBP.i159
  %2307 = sub i64 %2306, 24
  %2308 = load i64, i64* %PC.i157
  %2309 = add i64 %2308, 4
  store i64 %2309, i64* %PC.i157
  %2310 = inttoptr i64 %2307 to i64*
  %2311 = load i64, i64* %2310
  store i64 %2311, i64* %RAX.i158, align 8
  store %struct.Memory* %loadMem_448dc7, %struct.Memory** %MEMORY
  %loadMem_448dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2313 = getelementptr inbounds %struct.GPR, %struct.GPR* %2312, i32 0, i32 33
  %2314 = getelementptr inbounds %struct.Reg, %struct.Reg* %2313, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %2314 to i64*
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2316 = getelementptr inbounds %struct.GPR, %struct.GPR* %2315, i32 0, i32 1
  %2317 = getelementptr inbounds %struct.Reg, %struct.Reg* %2316, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %2317 to i64*
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2319 = getelementptr inbounds %struct.GPR, %struct.GPR* %2318, i32 0, i32 5
  %2320 = getelementptr inbounds %struct.Reg, %struct.Reg* %2319, i32 0, i32 0
  %RCX.i156 = bitcast %union.anon* %2320 to i64*
  %2321 = load i64, i64* %RCX.i156
  %2322 = load i64, i64* %RAX.i155
  %2323 = add i64 %2322, 16
  %2324 = load i64, i64* %PC.i154
  %2325 = add i64 %2324, 3
  store i64 %2325, i64* %PC.i154
  %2326 = trunc i64 %2321 to i32
  %2327 = inttoptr i64 %2323 to i32*
  %2328 = load i32, i32* %2327
  %2329 = add i32 %2328, %2326
  %2330 = zext i32 %2329 to i64
  store i64 %2330, i64* %RCX.i156, align 8
  %2331 = icmp ult i32 %2329, %2326
  %2332 = icmp ult i32 %2329, %2328
  %2333 = or i1 %2331, %2332
  %2334 = zext i1 %2333 to i8
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2334, i8* %2335, align 1
  %2336 = and i32 %2329, 255
  %2337 = call i32 @llvm.ctpop.i32(i32 %2336)
  %2338 = trunc i32 %2337 to i8
  %2339 = and i8 %2338, 1
  %2340 = xor i8 %2339, 1
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2340, i8* %2341, align 1
  %2342 = xor i32 %2328, %2326
  %2343 = xor i32 %2342, %2329
  %2344 = lshr i32 %2343, 4
  %2345 = trunc i32 %2344 to i8
  %2346 = and i8 %2345, 1
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2346, i8* %2347, align 1
  %2348 = icmp eq i32 %2329, 0
  %2349 = zext i1 %2348 to i8
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2349, i8* %2350, align 1
  %2351 = lshr i32 %2329, 31
  %2352 = trunc i32 %2351 to i8
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2352, i8* %2353, align 1
  %2354 = lshr i32 %2326, 31
  %2355 = lshr i32 %2328, 31
  %2356 = xor i32 %2351, %2354
  %2357 = xor i32 %2351, %2355
  %2358 = add i32 %2356, %2357
  %2359 = icmp eq i32 %2358, 2
  %2360 = zext i1 %2359 to i8
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2360, i8* %2361, align 1
  store %struct.Memory* %loadMem_448dcb, %struct.Memory** %MEMORY
  %loadMem_448dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 33
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %2364 to i64*
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 1
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %2367 to i64*
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 15
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %2370 to i64*
  %2371 = load i64, i64* %RBP.i153
  %2372 = sub i64 %2371, 24
  %2373 = load i64, i64* %PC.i151
  %2374 = add i64 %2373, 4
  store i64 %2374, i64* %PC.i151
  %2375 = inttoptr i64 %2372 to i64*
  %2376 = load i64, i64* %2375
  store i64 %2376, i64* %RAX.i152, align 8
  store %struct.Memory* %loadMem_448dce, %struct.Memory** %MEMORY
  %loadMem_448dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 33
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %2379 to i64*
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 1
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %2382 to i64*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 5
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %RCX.i150 = bitcast %union.anon* %2385 to i64*
  %2386 = load i64, i64* %RCX.i150
  %2387 = load i64, i64* %RAX.i149
  %2388 = add i64 %2387, 28
  %2389 = load i64, i64* %PC.i148
  %2390 = add i64 %2389, 3
  store i64 %2390, i64* %PC.i148
  %2391 = trunc i64 %2386 to i32
  %2392 = inttoptr i64 %2388 to i32*
  %2393 = load i32, i32* %2392
  %2394 = add i32 %2393, %2391
  %2395 = zext i32 %2394 to i64
  store i64 %2395, i64* %RCX.i150, align 8
  %2396 = icmp ult i32 %2394, %2391
  %2397 = icmp ult i32 %2394, %2393
  %2398 = or i1 %2396, %2397
  %2399 = zext i1 %2398 to i8
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2399, i8* %2400, align 1
  %2401 = and i32 %2394, 255
  %2402 = call i32 @llvm.ctpop.i32(i32 %2401)
  %2403 = trunc i32 %2402 to i8
  %2404 = and i8 %2403, 1
  %2405 = xor i8 %2404, 1
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2405, i8* %2406, align 1
  %2407 = xor i32 %2393, %2391
  %2408 = xor i32 %2407, %2394
  %2409 = lshr i32 %2408, 4
  %2410 = trunc i32 %2409 to i8
  %2411 = and i8 %2410, 1
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2411, i8* %2412, align 1
  %2413 = icmp eq i32 %2394, 0
  %2414 = zext i1 %2413 to i8
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2414, i8* %2415, align 1
  %2416 = lshr i32 %2394, 31
  %2417 = trunc i32 %2416 to i8
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2417, i8* %2418, align 1
  %2419 = lshr i32 %2391, 31
  %2420 = lshr i32 %2393, 31
  %2421 = xor i32 %2416, %2419
  %2422 = xor i32 %2416, %2420
  %2423 = add i32 %2421, %2422
  %2424 = icmp eq i32 %2423, 2
  %2425 = zext i1 %2424 to i8
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2425, i8* %2426, align 1
  store %struct.Memory* %loadMem_448dd2, %struct.Memory** %MEMORY
  %loadMem_448dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 33
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %2429 to i64*
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2431 = getelementptr inbounds %struct.GPR, %struct.GPR* %2430, i32 0, i32 1
  %2432 = getelementptr inbounds %struct.Reg, %struct.Reg* %2431, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %2432 to i64*
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2434 = getelementptr inbounds %struct.GPR, %struct.GPR* %2433, i32 0, i32 15
  %2435 = getelementptr inbounds %struct.Reg, %struct.Reg* %2434, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %2435 to i64*
  %2436 = load i64, i64* %RBP.i147
  %2437 = sub i64 %2436, 24
  %2438 = load i64, i64* %PC.i145
  %2439 = add i64 %2438, 4
  store i64 %2439, i64* %PC.i145
  %2440 = inttoptr i64 %2437 to i64*
  %2441 = load i64, i64* %2440
  store i64 %2441, i64* %RAX.i146, align 8
  store %struct.Memory* %loadMem_448dd5, %struct.Memory** %MEMORY
  %loadMem_448dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2443 = getelementptr inbounds %struct.GPR, %struct.GPR* %2442, i32 0, i32 33
  %2444 = getelementptr inbounds %struct.Reg, %struct.Reg* %2443, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %2444 to i64*
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2446 = getelementptr inbounds %struct.GPR, %struct.GPR* %2445, i32 0, i32 1
  %2447 = getelementptr inbounds %struct.Reg, %struct.Reg* %2446, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %2447 to i64*
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2449 = getelementptr inbounds %struct.GPR, %struct.GPR* %2448, i32 0, i32 5
  %2450 = getelementptr inbounds %struct.Reg, %struct.Reg* %2449, i32 0, i32 0
  %RCX.i144 = bitcast %union.anon* %2450 to i64*
  %2451 = load i64, i64* %RCX.i144
  %2452 = load i64, i64* %RAX.i143
  %2453 = add i64 %2452, 24
  %2454 = load i64, i64* %PC.i142
  %2455 = add i64 %2454, 3
  store i64 %2455, i64* %PC.i142
  %2456 = trunc i64 %2451 to i32
  %2457 = inttoptr i64 %2453 to i32*
  %2458 = load i32, i32* %2457
  %2459 = add i32 %2458, %2456
  %2460 = zext i32 %2459 to i64
  store i64 %2460, i64* %RCX.i144, align 8
  %2461 = icmp ult i32 %2459, %2456
  %2462 = icmp ult i32 %2459, %2458
  %2463 = or i1 %2461, %2462
  %2464 = zext i1 %2463 to i8
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2464, i8* %2465, align 1
  %2466 = and i32 %2459, 255
  %2467 = call i32 @llvm.ctpop.i32(i32 %2466)
  %2468 = trunc i32 %2467 to i8
  %2469 = and i8 %2468, 1
  %2470 = xor i8 %2469, 1
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2470, i8* %2471, align 1
  %2472 = xor i32 %2458, %2456
  %2473 = xor i32 %2472, %2459
  %2474 = lshr i32 %2473, 4
  %2475 = trunc i32 %2474 to i8
  %2476 = and i8 %2475, 1
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2476, i8* %2477, align 1
  %2478 = icmp eq i32 %2459, 0
  %2479 = zext i1 %2478 to i8
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2479, i8* %2480, align 1
  %2481 = lshr i32 %2459, 31
  %2482 = trunc i32 %2481 to i8
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2482, i8* %2483, align 1
  %2484 = lshr i32 %2456, 31
  %2485 = lshr i32 %2458, 31
  %2486 = xor i32 %2481, %2484
  %2487 = xor i32 %2481, %2485
  %2488 = add i32 %2486, %2487
  %2489 = icmp eq i32 %2488, 2
  %2490 = zext i1 %2489 to i8
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2490, i8* %2491, align 1
  store %struct.Memory* %loadMem_448dd9, %struct.Memory** %MEMORY
  %loadMem_448ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2493 = getelementptr inbounds %struct.GPR, %struct.GPR* %2492, i32 0, i32 33
  %2494 = getelementptr inbounds %struct.Reg, %struct.Reg* %2493, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %2494 to i64*
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 1
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %2497 to i64*
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 15
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %2500 to i64*
  %2501 = load i64, i64* %RBP.i141
  %2502 = sub i64 %2501, 24
  %2503 = load i64, i64* %PC.i139
  %2504 = add i64 %2503, 4
  store i64 %2504, i64* %PC.i139
  %2505 = inttoptr i64 %2502 to i64*
  %2506 = load i64, i64* %2505
  store i64 %2506, i64* %RAX.i140, align 8
  store %struct.Memory* %loadMem_448ddc, %struct.Memory** %MEMORY
  %loadMem_448de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 33
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %2509 to i64*
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 5
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %ECX.i137 = bitcast %union.anon* %2512 to i32*
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 1
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %2515 to i64*
  %2516 = load i64, i64* %RAX.i138
  %2517 = add i64 %2516, 4
  %2518 = load i32, i32* %ECX.i137
  %2519 = zext i32 %2518 to i64
  %2520 = load i64, i64* %PC.i136
  %2521 = add i64 %2520, 3
  store i64 %2521, i64* %PC.i136
  %2522 = inttoptr i64 %2517 to i32*
  store i32 %2518, i32* %2522
  store %struct.Memory* %loadMem_448de0, %struct.Memory** %MEMORY
  %loadMem_448de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2524 = getelementptr inbounds %struct.GPR, %struct.GPR* %2523, i32 0, i32 33
  %2525 = getelementptr inbounds %struct.Reg, %struct.Reg* %2524, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %2525 to i64*
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 1
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %RAX.i134 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 15
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %2531 to i64*
  %2532 = load i64, i64* %RBP.i135
  %2533 = sub i64 %2532, 24
  %2534 = load i64, i64* %PC.i133
  %2535 = add i64 %2534, 4
  store i64 %2535, i64* %PC.i133
  %2536 = inttoptr i64 %2533 to i64*
  %2537 = load i64, i64* %2536
  store i64 %2537, i64* %RAX.i134, align 8
  store %struct.Memory* %loadMem_448de3, %struct.Memory** %MEMORY
  %loadMem_448de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2539 = getelementptr inbounds %struct.GPR, %struct.GPR* %2538, i32 0, i32 33
  %2540 = getelementptr inbounds %struct.Reg, %struct.Reg* %2539, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %2540 to i64*
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2542 = getelementptr inbounds %struct.GPR, %struct.GPR* %2541, i32 0, i32 1
  %2543 = getelementptr inbounds %struct.Reg, %struct.Reg* %2542, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %2543 to i64*
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2545 = getelementptr inbounds %struct.GPR, %struct.GPR* %2544, i32 0, i32 5
  %2546 = getelementptr inbounds %struct.Reg, %struct.Reg* %2545, i32 0, i32 0
  %RCX.i132 = bitcast %union.anon* %2546 to i64*
  %2547 = load i64, i64* %RAX.i131
  %2548 = add i64 %2547, 8
  %2549 = load i64, i64* %PC.i130
  %2550 = add i64 %2549, 3
  store i64 %2550, i64* %PC.i130
  %2551 = inttoptr i64 %2548 to i32*
  %2552 = load i32, i32* %2551
  %2553 = zext i32 %2552 to i64
  store i64 %2553, i64* %RCX.i132, align 8
  store %struct.Memory* %loadMem_448de7, %struct.Memory** %MEMORY
  %loadMem_448dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2555 = getelementptr inbounds %struct.GPR, %struct.GPR* %2554, i32 0, i32 33
  %2556 = getelementptr inbounds %struct.Reg, %struct.Reg* %2555, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %2556 to i64*
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2558 = getelementptr inbounds %struct.GPR, %struct.GPR* %2557, i32 0, i32 1
  %2559 = getelementptr inbounds %struct.Reg, %struct.Reg* %2558, i32 0, i32 0
  %RAX.i128 = bitcast %union.anon* %2559 to i64*
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2561 = getelementptr inbounds %struct.GPR, %struct.GPR* %2560, i32 0, i32 15
  %2562 = getelementptr inbounds %struct.Reg, %struct.Reg* %2561, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %2562 to i64*
  %2563 = load i64, i64* %RBP.i129
  %2564 = sub i64 %2563, 24
  %2565 = load i64, i64* %PC.i127
  %2566 = add i64 %2565, 4
  store i64 %2566, i64* %PC.i127
  %2567 = inttoptr i64 %2564 to i64*
  %2568 = load i64, i64* %2567
  store i64 %2568, i64* %RAX.i128, align 8
  store %struct.Memory* %loadMem_448dea, %struct.Memory** %MEMORY
  %loadMem_448dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2570 = getelementptr inbounds %struct.GPR, %struct.GPR* %2569, i32 0, i32 33
  %2571 = getelementptr inbounds %struct.Reg, %struct.Reg* %2570, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %2571 to i64*
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2573 = getelementptr inbounds %struct.GPR, %struct.GPR* %2572, i32 0, i32 1
  %2574 = getelementptr inbounds %struct.Reg, %struct.Reg* %2573, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %2574 to i64*
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 5
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %RCX.i126 = bitcast %union.anon* %2577 to i64*
  %2578 = load i64, i64* %RCX.i126
  %2579 = load i64, i64* %RAX.i125
  %2580 = add i64 %2579, 12
  %2581 = load i64, i64* %PC.i124
  %2582 = add i64 %2581, 3
  store i64 %2582, i64* %PC.i124
  %2583 = trunc i64 %2578 to i32
  %2584 = inttoptr i64 %2580 to i32*
  %2585 = load i32, i32* %2584
  %2586 = add i32 %2585, %2583
  %2587 = zext i32 %2586 to i64
  store i64 %2587, i64* %RCX.i126, align 8
  %2588 = icmp ult i32 %2586, %2583
  %2589 = icmp ult i32 %2586, %2585
  %2590 = or i1 %2588, %2589
  %2591 = zext i1 %2590 to i8
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2591, i8* %2592, align 1
  %2593 = and i32 %2586, 255
  %2594 = call i32 @llvm.ctpop.i32(i32 %2593)
  %2595 = trunc i32 %2594 to i8
  %2596 = and i8 %2595, 1
  %2597 = xor i8 %2596, 1
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2597, i8* %2598, align 1
  %2599 = xor i32 %2585, %2583
  %2600 = xor i32 %2599, %2586
  %2601 = lshr i32 %2600, 4
  %2602 = trunc i32 %2601 to i8
  %2603 = and i8 %2602, 1
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2603, i8* %2604, align 1
  %2605 = icmp eq i32 %2586, 0
  %2606 = zext i1 %2605 to i8
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2606, i8* %2607, align 1
  %2608 = lshr i32 %2586, 31
  %2609 = trunc i32 %2608 to i8
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2609, i8* %2610, align 1
  %2611 = lshr i32 %2583, 31
  %2612 = lshr i32 %2585, 31
  %2613 = xor i32 %2608, %2611
  %2614 = xor i32 %2608, %2612
  %2615 = add i32 %2613, %2614
  %2616 = icmp eq i32 %2615, 2
  %2617 = zext i1 %2616 to i8
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2617, i8* %2618, align 1
  store %struct.Memory* %loadMem_448dee, %struct.Memory** %MEMORY
  %loadMem_448df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 33
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %2621 to i64*
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 1
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %RAX.i122 = bitcast %union.anon* %2624 to i64*
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 15
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %2627 to i64*
  %2628 = load i64, i64* %RBP.i123
  %2629 = sub i64 %2628, 24
  %2630 = load i64, i64* %PC.i121
  %2631 = add i64 %2630, 4
  store i64 %2631, i64* %PC.i121
  %2632 = inttoptr i64 %2629 to i64*
  %2633 = load i64, i64* %2632
  store i64 %2633, i64* %RAX.i122, align 8
  store %struct.Memory* %loadMem_448df1, %struct.Memory** %MEMORY
  %loadMem_448df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2635 = getelementptr inbounds %struct.GPR, %struct.GPR* %2634, i32 0, i32 33
  %2636 = getelementptr inbounds %struct.Reg, %struct.Reg* %2635, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %2636 to i64*
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 1
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %2639 to i64*
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2641 = getelementptr inbounds %struct.GPR, %struct.GPR* %2640, i32 0, i32 5
  %2642 = getelementptr inbounds %struct.Reg, %struct.Reg* %2641, i32 0, i32 0
  %RCX.i120 = bitcast %union.anon* %2642 to i64*
  %2643 = load i64, i64* %RCX.i120
  %2644 = load i64, i64* %RAX.i119
  %2645 = add i64 %2644, 16
  %2646 = load i64, i64* %PC.i118
  %2647 = add i64 %2646, 3
  store i64 %2647, i64* %PC.i118
  %2648 = trunc i64 %2643 to i32
  %2649 = inttoptr i64 %2645 to i32*
  %2650 = load i32, i32* %2649
  %2651 = add i32 %2650, %2648
  %2652 = zext i32 %2651 to i64
  store i64 %2652, i64* %RCX.i120, align 8
  %2653 = icmp ult i32 %2651, %2648
  %2654 = icmp ult i32 %2651, %2650
  %2655 = or i1 %2653, %2654
  %2656 = zext i1 %2655 to i8
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2656, i8* %2657, align 1
  %2658 = and i32 %2651, 255
  %2659 = call i32 @llvm.ctpop.i32(i32 %2658)
  %2660 = trunc i32 %2659 to i8
  %2661 = and i8 %2660, 1
  %2662 = xor i8 %2661, 1
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2662, i8* %2663, align 1
  %2664 = xor i32 %2650, %2648
  %2665 = xor i32 %2664, %2651
  %2666 = lshr i32 %2665, 4
  %2667 = trunc i32 %2666 to i8
  %2668 = and i8 %2667, 1
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2668, i8* %2669, align 1
  %2670 = icmp eq i32 %2651, 0
  %2671 = zext i1 %2670 to i8
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2671, i8* %2672, align 1
  %2673 = lshr i32 %2651, 31
  %2674 = trunc i32 %2673 to i8
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2674, i8* %2675, align 1
  %2676 = lshr i32 %2648, 31
  %2677 = lshr i32 %2650, 31
  %2678 = xor i32 %2673, %2676
  %2679 = xor i32 %2673, %2677
  %2680 = add i32 %2678, %2679
  %2681 = icmp eq i32 %2680, 2
  %2682 = zext i1 %2681 to i8
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2682, i8* %2683, align 1
  store %struct.Memory* %loadMem_448df5, %struct.Memory** %MEMORY
  %loadMem_448df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2685 = getelementptr inbounds %struct.GPR, %struct.GPR* %2684, i32 0, i32 33
  %2686 = getelementptr inbounds %struct.Reg, %struct.Reg* %2685, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %2686 to i64*
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2688 = getelementptr inbounds %struct.GPR, %struct.GPR* %2687, i32 0, i32 1
  %2689 = getelementptr inbounds %struct.Reg, %struct.Reg* %2688, i32 0, i32 0
  %RAX.i116 = bitcast %union.anon* %2689 to i64*
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 15
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %2692 to i64*
  %2693 = load i64, i64* %RBP.i117
  %2694 = sub i64 %2693, 24
  %2695 = load i64, i64* %PC.i115
  %2696 = add i64 %2695, 4
  store i64 %2696, i64* %PC.i115
  %2697 = inttoptr i64 %2694 to i64*
  %2698 = load i64, i64* %2697
  store i64 %2698, i64* %RAX.i116, align 8
  store %struct.Memory* %loadMem_448df8, %struct.Memory** %MEMORY
  %loadMem_448dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2700 = getelementptr inbounds %struct.GPR, %struct.GPR* %2699, i32 0, i32 33
  %2701 = getelementptr inbounds %struct.Reg, %struct.Reg* %2700, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %2701 to i64*
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 1
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %2704 to i64*
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2706 = getelementptr inbounds %struct.GPR, %struct.GPR* %2705, i32 0, i32 5
  %2707 = getelementptr inbounds %struct.Reg, %struct.Reg* %2706, i32 0, i32 0
  %RCX.i114 = bitcast %union.anon* %2707 to i64*
  %2708 = load i64, i64* %RCX.i114
  %2709 = load i64, i64* %RAX.i113
  %2710 = add i64 %2709, 28
  %2711 = load i64, i64* %PC.i112
  %2712 = add i64 %2711, 3
  store i64 %2712, i64* %PC.i112
  %2713 = trunc i64 %2708 to i32
  %2714 = inttoptr i64 %2710 to i32*
  %2715 = load i32, i32* %2714
  %2716 = add i32 %2715, %2713
  %2717 = zext i32 %2716 to i64
  store i64 %2717, i64* %RCX.i114, align 8
  %2718 = icmp ult i32 %2716, %2713
  %2719 = icmp ult i32 %2716, %2715
  %2720 = or i1 %2718, %2719
  %2721 = zext i1 %2720 to i8
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2721, i8* %2722, align 1
  %2723 = and i32 %2716, 255
  %2724 = call i32 @llvm.ctpop.i32(i32 %2723)
  %2725 = trunc i32 %2724 to i8
  %2726 = and i8 %2725, 1
  %2727 = xor i8 %2726, 1
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2727, i8* %2728, align 1
  %2729 = xor i32 %2715, %2713
  %2730 = xor i32 %2729, %2716
  %2731 = lshr i32 %2730, 4
  %2732 = trunc i32 %2731 to i8
  %2733 = and i8 %2732, 1
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2733, i8* %2734, align 1
  %2735 = icmp eq i32 %2716, 0
  %2736 = zext i1 %2735 to i8
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2736, i8* %2737, align 1
  %2738 = lshr i32 %2716, 31
  %2739 = trunc i32 %2738 to i8
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2739, i8* %2740, align 1
  %2741 = lshr i32 %2713, 31
  %2742 = lshr i32 %2715, 31
  %2743 = xor i32 %2738, %2741
  %2744 = xor i32 %2738, %2742
  %2745 = add i32 %2743, %2744
  %2746 = icmp eq i32 %2745, 2
  %2747 = zext i1 %2746 to i8
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2747, i8* %2748, align 1
  store %struct.Memory* %loadMem_448dfc, %struct.Memory** %MEMORY
  %loadMem_448dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 33
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %2751 to i64*
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 1
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %2754 to i64*
  %2755 = load i64, i64* %PC.i110
  %2756 = add i64 %2755, 8
  store i64 %2756, i64* %PC.i110
  %2757 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2757, i64* %RAX.i111, align 8
  store %struct.Memory* %loadMem_448dff, %struct.Memory** %MEMORY
  %loadMem_448e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2759 = getelementptr inbounds %struct.GPR, %struct.GPR* %2758, i32 0, i32 33
  %2760 = getelementptr inbounds %struct.Reg, %struct.Reg* %2759, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %2760 to i64*
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 5
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %ECX.i108 = bitcast %union.anon* %2763 to i32*
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2765 = getelementptr inbounds %struct.GPR, %struct.GPR* %2764, i32 0, i32 1
  %2766 = getelementptr inbounds %struct.Reg, %struct.Reg* %2765, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %2766 to i64*
  %2767 = load i64, i64* %RAX.i109
  %2768 = add i64 %2767, 72556
  %2769 = load i32, i32* %ECX.i108
  %2770 = zext i32 %2769 to i64
  %2771 = load i64, i64* %PC.i107
  %2772 = add i64 %2771, 6
  store i64 %2772, i64* %PC.i107
  %2773 = inttoptr i64 %2768 to i32*
  store i32 %2769, i32* %2773
  store %struct.Memory* %loadMem_448e07, %struct.Memory** %MEMORY
  %loadMem_448e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2775 = getelementptr inbounds %struct.GPR, %struct.GPR* %2774, i32 0, i32 33
  %2776 = getelementptr inbounds %struct.Reg, %struct.Reg* %2775, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %2776 to i64*
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2778 = getelementptr inbounds %struct.GPR, %struct.GPR* %2777, i32 0, i32 1
  %2779 = getelementptr inbounds %struct.Reg, %struct.Reg* %2778, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %2779 to i64*
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2781 = getelementptr inbounds %struct.GPR, %struct.GPR* %2780, i32 0, i32 15
  %2782 = getelementptr inbounds %struct.Reg, %struct.Reg* %2781, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %2782 to i64*
  %2783 = load i64, i64* %RBP.i106
  %2784 = sub i64 %2783, 24
  %2785 = load i64, i64* %PC.i104
  %2786 = add i64 %2785, 4
  store i64 %2786, i64* %PC.i104
  %2787 = inttoptr i64 %2784 to i64*
  %2788 = load i64, i64* %2787
  store i64 %2788, i64* %RAX.i105, align 8
  store %struct.Memory* %loadMem_448e0d, %struct.Memory** %MEMORY
  %loadMem_448e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 33
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %2791 to i64*
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2793 = getelementptr inbounds %struct.GPR, %struct.GPR* %2792, i32 0, i32 1
  %2794 = getelementptr inbounds %struct.Reg, %struct.Reg* %2793, i32 0, i32 0
  %RAX.i102 = bitcast %union.anon* %2794 to i64*
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2796 = getelementptr inbounds %struct.GPR, %struct.GPR* %2795, i32 0, i32 5
  %2797 = getelementptr inbounds %struct.Reg, %struct.Reg* %2796, i32 0, i32 0
  %RCX.i103 = bitcast %union.anon* %2797 to i64*
  %2798 = load i64, i64* %RAX.i102
  %2799 = add i64 %2798, 20
  %2800 = load i64, i64* %PC.i101
  %2801 = add i64 %2800, 3
  store i64 %2801, i64* %PC.i101
  %2802 = inttoptr i64 %2799 to i32*
  %2803 = load i32, i32* %2802
  %2804 = zext i32 %2803 to i64
  store i64 %2804, i64* %RCX.i103, align 8
  store %struct.Memory* %loadMem_448e11, %struct.Memory** %MEMORY
  %loadMem_448e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2806 = getelementptr inbounds %struct.GPR, %struct.GPR* %2805, i32 0, i32 33
  %2807 = getelementptr inbounds %struct.Reg, %struct.Reg* %2806, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %2807 to i64*
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 1
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %RAX.i99 = bitcast %union.anon* %2810 to i64*
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 15
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %2813 to i64*
  %2814 = load i64, i64* %RBP.i100
  %2815 = sub i64 %2814, 24
  %2816 = load i64, i64* %PC.i98
  %2817 = add i64 %2816, 4
  store i64 %2817, i64* %PC.i98
  %2818 = inttoptr i64 %2815 to i64*
  %2819 = load i64, i64* %2818
  store i64 %2819, i64* %RAX.i99, align 8
  store %struct.Memory* %loadMem_448e14, %struct.Memory** %MEMORY
  %loadMem_448e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2821 = getelementptr inbounds %struct.GPR, %struct.GPR* %2820, i32 0, i32 33
  %2822 = getelementptr inbounds %struct.Reg, %struct.Reg* %2821, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %2822 to i64*
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 1
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %2825 to i64*
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 5
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %RCX.i97 = bitcast %union.anon* %2828 to i64*
  %2829 = load i64, i64* %RCX.i97
  %2830 = load i64, i64* %RAX.i96
  %2831 = add i64 %2830, 24
  %2832 = load i64, i64* %PC.i95
  %2833 = add i64 %2832, 3
  store i64 %2833, i64* %PC.i95
  %2834 = trunc i64 %2829 to i32
  %2835 = inttoptr i64 %2831 to i32*
  %2836 = load i32, i32* %2835
  %2837 = add i32 %2836, %2834
  %2838 = zext i32 %2837 to i64
  store i64 %2838, i64* %RCX.i97, align 8
  %2839 = icmp ult i32 %2837, %2834
  %2840 = icmp ult i32 %2837, %2836
  %2841 = or i1 %2839, %2840
  %2842 = zext i1 %2841 to i8
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2842, i8* %2843, align 1
  %2844 = and i32 %2837, 255
  %2845 = call i32 @llvm.ctpop.i32(i32 %2844)
  %2846 = trunc i32 %2845 to i8
  %2847 = and i8 %2846, 1
  %2848 = xor i8 %2847, 1
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2848, i8* %2849, align 1
  %2850 = xor i32 %2836, %2834
  %2851 = xor i32 %2850, %2837
  %2852 = lshr i32 %2851, 4
  %2853 = trunc i32 %2852 to i8
  %2854 = and i8 %2853, 1
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2854, i8* %2855, align 1
  %2856 = icmp eq i32 %2837, 0
  %2857 = zext i1 %2856 to i8
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2857, i8* %2858, align 1
  %2859 = lshr i32 %2837, 31
  %2860 = trunc i32 %2859 to i8
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2860, i8* %2861, align 1
  %2862 = lshr i32 %2834, 31
  %2863 = lshr i32 %2836, 31
  %2864 = xor i32 %2859, %2862
  %2865 = xor i32 %2859, %2863
  %2866 = add i32 %2864, %2865
  %2867 = icmp eq i32 %2866, 2
  %2868 = zext i1 %2867 to i8
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2868, i8* %2869, align 1
  store %struct.Memory* %loadMem_448e18, %struct.Memory** %MEMORY
  %loadMem_448e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 33
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %2872 to i64*
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 1
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %2875 to i64*
  %2876 = load i64, i64* %PC.i93
  %2877 = add i64 %2876, 8
  store i64 %2877, i64* %PC.i93
  %2878 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2878, i64* %RAX.i94, align 8
  store %struct.Memory* %loadMem_448e1b, %struct.Memory** %MEMORY
  %loadMem_448e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2880 = getelementptr inbounds %struct.GPR, %struct.GPR* %2879, i32 0, i32 33
  %2881 = getelementptr inbounds %struct.Reg, %struct.Reg* %2880, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %2881 to i64*
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2883 = getelementptr inbounds %struct.GPR, %struct.GPR* %2882, i32 0, i32 5
  %2884 = getelementptr inbounds %struct.Reg, %struct.Reg* %2883, i32 0, i32 0
  %ECX.i91 = bitcast %union.anon* %2884 to i32*
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2886 = getelementptr inbounds %struct.GPR, %struct.GPR* %2885, i32 0, i32 1
  %2887 = getelementptr inbounds %struct.Reg, %struct.Reg* %2886, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %2887 to i64*
  %2888 = load i64, i64* %RAX.i92
  %2889 = add i64 %2888, 72552
  %2890 = load i32, i32* %ECX.i91
  %2891 = zext i32 %2890 to i64
  %2892 = load i64, i64* %PC.i90
  %2893 = add i64 %2892, 6
  store i64 %2893, i64* %PC.i90
  %2894 = inttoptr i64 %2889 to i32*
  store i32 %2890, i32* %2894
  store %struct.Memory* %loadMem_448e23, %struct.Memory** %MEMORY
  %loadMem_448e29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 33
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %2897 to i64*
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 1
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %2900 to i64*
  %2901 = load i64, i64* %PC.i88
  %2902 = add i64 %2901, 8
  store i64 %2902, i64* %PC.i88
  %2903 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2903, i64* %RAX.i89, align 8
  store %struct.Memory* %loadMem_448e29, %struct.Memory** %MEMORY
  %loadMem_448e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 33
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %2906 to i64*
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2908 = getelementptr inbounds %struct.GPR, %struct.GPR* %2907, i32 0, i32 1
  %2909 = getelementptr inbounds %struct.Reg, %struct.Reg* %2908, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %2909 to i64*
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 5
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %RCX.i87 = bitcast %union.anon* %2912 to i64*
  %2913 = load i64, i64* %RAX.i86
  %2914 = add i64 %2913, 72552
  %2915 = load i64, i64* %PC.i85
  %2916 = add i64 %2915, 6
  store i64 %2916, i64* %PC.i85
  %2917 = inttoptr i64 %2914 to i32*
  %2918 = load i32, i32* %2917
  %2919 = zext i32 %2918 to i64
  store i64 %2919, i64* %RCX.i87, align 8
  store %struct.Memory* %loadMem_448e31, %struct.Memory** %MEMORY
  %loadMem_448e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 33
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %2922 to i64*
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 1
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %RAX.i84 = bitcast %union.anon* %2925 to i64*
  %2926 = load i64, i64* %PC.i83
  %2927 = add i64 %2926, 8
  store i64 %2927, i64* %PC.i83
  %2928 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2928, i64* %RAX.i84, align 8
  store %struct.Memory* %loadMem_448e37, %struct.Memory** %MEMORY
  %loadMem_448e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 33
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %2931 to i64*
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2933 = getelementptr inbounds %struct.GPR, %struct.GPR* %2932, i32 0, i32 1
  %2934 = getelementptr inbounds %struct.Reg, %struct.Reg* %2933, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %2934 to i64*
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2936 = getelementptr inbounds %struct.GPR, %struct.GPR* %2935, i32 0, i32 5
  %2937 = getelementptr inbounds %struct.Reg, %struct.Reg* %2936, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %2937 to i64*
  %2938 = load i64, i64* %RCX.i82
  %2939 = load i64, i64* %RAX.i81
  %2940 = add i64 %2939, 72528
  %2941 = load i64, i64* %PC.i80
  %2942 = add i64 %2941, 6
  store i64 %2942, i64* %PC.i80
  %2943 = trunc i64 %2938 to i32
  %2944 = inttoptr i64 %2940 to i32*
  %2945 = load i32, i32* %2944
  %2946 = add i32 %2945, %2943
  %2947 = zext i32 %2946 to i64
  store i64 %2947, i64* %RCX.i82, align 8
  %2948 = icmp ult i32 %2946, %2943
  %2949 = icmp ult i32 %2946, %2945
  %2950 = or i1 %2948, %2949
  %2951 = zext i1 %2950 to i8
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2951, i8* %2952, align 1
  %2953 = and i32 %2946, 255
  %2954 = call i32 @llvm.ctpop.i32(i32 %2953)
  %2955 = trunc i32 %2954 to i8
  %2956 = and i8 %2955, 1
  %2957 = xor i8 %2956, 1
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2957, i8* %2958, align 1
  %2959 = xor i32 %2945, %2943
  %2960 = xor i32 %2959, %2946
  %2961 = lshr i32 %2960, 4
  %2962 = trunc i32 %2961 to i8
  %2963 = and i8 %2962, 1
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2963, i8* %2964, align 1
  %2965 = icmp eq i32 %2946, 0
  %2966 = zext i1 %2965 to i8
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2966, i8* %2967, align 1
  %2968 = lshr i32 %2946, 31
  %2969 = trunc i32 %2968 to i8
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2969, i8* %2970, align 1
  %2971 = lshr i32 %2943, 31
  %2972 = lshr i32 %2945, 31
  %2973 = xor i32 %2968, %2971
  %2974 = xor i32 %2968, %2972
  %2975 = add i32 %2973, %2974
  %2976 = icmp eq i32 %2975, 2
  %2977 = zext i1 %2976 to i8
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2977, i8* %2978, align 1
  store %struct.Memory* %loadMem_448e3f, %struct.Memory** %MEMORY
  %loadMem_448e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2980 = getelementptr inbounds %struct.GPR, %struct.GPR* %2979, i32 0, i32 33
  %2981 = getelementptr inbounds %struct.Reg, %struct.Reg* %2980, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %2981 to i64*
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2983 = getelementptr inbounds %struct.GPR, %struct.GPR* %2982, i32 0, i32 5
  %2984 = getelementptr inbounds %struct.Reg, %struct.Reg* %2983, i32 0, i32 0
  %ECX.i78 = bitcast %union.anon* %2984 to i32*
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2986 = getelementptr inbounds %struct.GPR, %struct.GPR* %2985, i32 0, i32 1
  %2987 = getelementptr inbounds %struct.Reg, %struct.Reg* %2986, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %2987 to i64*
  %2988 = load i64, i64* %RAX.i79
  %2989 = add i64 %2988, 72528
  %2990 = load i32, i32* %ECX.i78
  %2991 = zext i32 %2990 to i64
  %2992 = load i64, i64* %PC.i77
  %2993 = add i64 %2992, 6
  store i64 %2993, i64* %PC.i77
  %2994 = inttoptr i64 %2989 to i32*
  store i32 %2990, i32* %2994
  store %struct.Memory* %loadMem_448e45, %struct.Memory** %MEMORY
  %loadMem_448e4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 33
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %2997 to i64*
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2999 = getelementptr inbounds %struct.GPR, %struct.GPR* %2998, i32 0, i32 1
  %3000 = getelementptr inbounds %struct.Reg, %struct.Reg* %2999, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %3000 to i64*
  %3001 = load i64, i64* %PC.i75
  %3002 = add i64 %3001, 8
  store i64 %3002, i64* %PC.i75
  %3003 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3003, i64* %RAX.i76, align 8
  store %struct.Memory* %loadMem_448e4b, %struct.Memory** %MEMORY
  %loadMem_448e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 33
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %3006 to i64*
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 1
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %3009 to i64*
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 5
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %RCX.i74 = bitcast %union.anon* %3012 to i64*
  %3013 = load i64, i64* %RAX.i73
  %3014 = add i64 %3013, 72556
  %3015 = load i64, i64* %PC.i72
  %3016 = add i64 %3015, 6
  store i64 %3016, i64* %PC.i72
  %3017 = inttoptr i64 %3014 to i32*
  %3018 = load i32, i32* %3017
  %3019 = zext i32 %3018 to i64
  store i64 %3019, i64* %RCX.i74, align 8
  store %struct.Memory* %loadMem_448e53, %struct.Memory** %MEMORY
  %loadMem_448e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 33
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %3022 to i64*
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 1
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %3025 to i64*
  %3026 = load i64, i64* %PC.i70
  %3027 = add i64 %3026, 8
  store i64 %3027, i64* %PC.i70
  %3028 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3028, i64* %RAX.i71, align 8
  store %struct.Memory* %loadMem_448e59, %struct.Memory** %MEMORY
  %loadMem_448e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3030 = getelementptr inbounds %struct.GPR, %struct.GPR* %3029, i32 0, i32 33
  %3031 = getelementptr inbounds %struct.Reg, %struct.Reg* %3030, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %3031 to i64*
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 1
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %3034 to i64*
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3036 = getelementptr inbounds %struct.GPR, %struct.GPR* %3035, i32 0, i32 5
  %3037 = getelementptr inbounds %struct.Reg, %struct.Reg* %3036, i32 0, i32 0
  %RCX.i69 = bitcast %union.anon* %3037 to i64*
  %3038 = load i64, i64* %RCX.i69
  %3039 = load i64, i64* %RAX.i68
  %3040 = add i64 %3039, 72524
  %3041 = load i64, i64* %PC.i67
  %3042 = add i64 %3041, 6
  store i64 %3042, i64* %PC.i67
  %3043 = trunc i64 %3038 to i32
  %3044 = inttoptr i64 %3040 to i32*
  %3045 = load i32, i32* %3044
  %3046 = add i32 %3045, %3043
  %3047 = zext i32 %3046 to i64
  store i64 %3047, i64* %RCX.i69, align 8
  %3048 = icmp ult i32 %3046, %3043
  %3049 = icmp ult i32 %3046, %3045
  %3050 = or i1 %3048, %3049
  %3051 = zext i1 %3050 to i8
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3051, i8* %3052, align 1
  %3053 = and i32 %3046, 255
  %3054 = call i32 @llvm.ctpop.i32(i32 %3053)
  %3055 = trunc i32 %3054 to i8
  %3056 = and i8 %3055, 1
  %3057 = xor i8 %3056, 1
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3057, i8* %3058, align 1
  %3059 = xor i32 %3045, %3043
  %3060 = xor i32 %3059, %3046
  %3061 = lshr i32 %3060, 4
  %3062 = trunc i32 %3061 to i8
  %3063 = and i8 %3062, 1
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3063, i8* %3064, align 1
  %3065 = icmp eq i32 %3046, 0
  %3066 = zext i1 %3065 to i8
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3066, i8* %3067, align 1
  %3068 = lshr i32 %3046, 31
  %3069 = trunc i32 %3068 to i8
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3069, i8* %3070, align 1
  %3071 = lshr i32 %3043, 31
  %3072 = lshr i32 %3045, 31
  %3073 = xor i32 %3068, %3071
  %3074 = xor i32 %3068, %3072
  %3075 = add i32 %3073, %3074
  %3076 = icmp eq i32 %3075, 2
  %3077 = zext i1 %3076 to i8
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3077, i8* %3078, align 1
  store %struct.Memory* %loadMem_448e61, %struct.Memory** %MEMORY
  %loadMem_448e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3080 = getelementptr inbounds %struct.GPR, %struct.GPR* %3079, i32 0, i32 33
  %3081 = getelementptr inbounds %struct.Reg, %struct.Reg* %3080, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %3081 to i64*
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 5
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %ECX.i65 = bitcast %union.anon* %3084 to i32*
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 1
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %3087 to i64*
  %3088 = load i64, i64* %RAX.i66
  %3089 = add i64 %3088, 72524
  %3090 = load i32, i32* %ECX.i65
  %3091 = zext i32 %3090 to i64
  %3092 = load i64, i64* %PC.i64
  %3093 = add i64 %3092, 6
  store i64 %3093, i64* %PC.i64
  %3094 = inttoptr i64 %3089 to i32*
  store i32 %3090, i32* %3094
  store %struct.Memory* %loadMem_448e67, %struct.Memory** %MEMORY
  %loadMem_448e6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3096 = getelementptr inbounds %struct.GPR, %struct.GPR* %3095, i32 0, i32 33
  %3097 = getelementptr inbounds %struct.Reg, %struct.Reg* %3096, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %3097 to i64*
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3099 = getelementptr inbounds %struct.GPR, %struct.GPR* %3098, i32 0, i32 1
  %3100 = getelementptr inbounds %struct.Reg, %struct.Reg* %3099, i32 0, i32 0
  %RAX.i63 = bitcast %union.anon* %3100 to i64*
  %3101 = load i64, i64* %PC.i62
  %3102 = add i64 %3101, 8
  store i64 %3102, i64* %PC.i62
  %3103 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3103, i64* %RAX.i63, align 8
  store %struct.Memory* %loadMem_448e6d, %struct.Memory** %MEMORY
  %loadMem_448e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 33
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %3106 to i64*
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 1
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %3109 to i64*
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 5
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %RCX.i61 = bitcast %union.anon* %3112 to i64*
  %3113 = load i64, i64* %RAX.i60
  %3114 = add i64 %3113, 72620
  %3115 = load i64, i64* %PC.i59
  %3116 = add i64 %3115, 6
  store i64 %3116, i64* %PC.i59
  %3117 = inttoptr i64 %3114 to i32*
  %3118 = load i32, i32* %3117
  %3119 = zext i32 %3118 to i64
  store i64 %3119, i64* %RCX.i61, align 8
  store %struct.Memory* %loadMem_448e75, %struct.Memory** %MEMORY
  %loadMem_448e7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 33
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %3122 to i64*
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 1
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %RAX.i58 = bitcast %union.anon* %3125 to i64*
  %3126 = load i64, i64* %PC.i57
  %3127 = add i64 %3126, 8
  store i64 %3127, i64* %PC.i57
  %3128 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3128, i64* %RAX.i58, align 8
  store %struct.Memory* %loadMem_448e7b, %struct.Memory** %MEMORY
  %loadMem_448e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 33
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %3131 to i64*
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3133 = getelementptr inbounds %struct.GPR, %struct.GPR* %3132, i32 0, i32 5
  %3134 = getelementptr inbounds %struct.Reg, %struct.Reg* %3133, i32 0, i32 0
  %ECX.i55 = bitcast %union.anon* %3134 to i32*
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3136 = getelementptr inbounds %struct.GPR, %struct.GPR* %3135, i32 0, i32 1
  %3137 = getelementptr inbounds %struct.Reg, %struct.Reg* %3136, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %3137 to i64*
  %3138 = load i32, i32* %ECX.i55
  %3139 = zext i32 %3138 to i64
  %3140 = load i64, i64* %RAX.i56
  %3141 = add i64 %3140, 72608
  %3142 = load i64, i64* %PC.i54
  %3143 = add i64 %3142, 6
  store i64 %3143, i64* %PC.i54
  %3144 = inttoptr i64 %3141 to i32*
  %3145 = load i32, i32* %3144
  %3146 = sub i32 %3138, %3145
  %3147 = icmp ult i32 %3138, %3145
  %3148 = zext i1 %3147 to i8
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3148, i8* %3149, align 1
  %3150 = and i32 %3146, 255
  %3151 = call i32 @llvm.ctpop.i32(i32 %3150)
  %3152 = trunc i32 %3151 to i8
  %3153 = and i8 %3152, 1
  %3154 = xor i8 %3153, 1
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3154, i8* %3155, align 1
  %3156 = xor i32 %3145, %3138
  %3157 = xor i32 %3156, %3146
  %3158 = lshr i32 %3157, 4
  %3159 = trunc i32 %3158 to i8
  %3160 = and i8 %3159, 1
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3160, i8* %3161, align 1
  %3162 = icmp eq i32 %3146, 0
  %3163 = zext i1 %3162 to i8
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3163, i8* %3164, align 1
  %3165 = lshr i32 %3146, 31
  %3166 = trunc i32 %3165 to i8
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3166, i8* %3167, align 1
  %3168 = lshr i32 %3138, 31
  %3169 = lshr i32 %3145, 31
  %3170 = xor i32 %3169, %3168
  %3171 = xor i32 %3165, %3168
  %3172 = add i32 %3171, %3170
  %3173 = icmp eq i32 %3172, 2
  %3174 = zext i1 %3173 to i8
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3174, i8* %3175, align 1
  store %struct.Memory* %loadMem_448e83, %struct.Memory** %MEMORY
  %loadMem_448e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3177 = getelementptr inbounds %struct.GPR, %struct.GPR* %3176, i32 0, i32 33
  %3178 = getelementptr inbounds %struct.Reg, %struct.Reg* %3177, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %3178 to i64*
  %3179 = load i64, i64* %PC.i53
  %3180 = add i64 %3179, 74
  %3181 = load i64, i64* %PC.i53
  %3182 = add i64 %3181, 6
  %3183 = load i64, i64* %PC.i53
  %3184 = add i64 %3183, 6
  store i64 %3184, i64* %PC.i53
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3186 = load i8, i8* %3185, align 1
  %3187 = icmp ne i8 %3186, 0
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3189 = load i8, i8* %3188, align 1
  %3190 = icmp ne i8 %3189, 0
  %3191 = xor i1 %3187, %3190
  %3192 = xor i1 %3191, true
  %3193 = zext i1 %3192 to i8
  store i8 %3193, i8* %BRANCH_TAKEN, align 1
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3195 = select i1 %3191, i64 %3182, i64 %3180
  store i64 %3195, i64* %3194, align 8
  store %struct.Memory* %loadMem_448e89, %struct.Memory** %MEMORY
  %loadBr_448e89 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448e89 = icmp eq i8 %loadBr_448e89, 1
  br i1 %cmpBr_448e89, label %block_.L_448ed3, label %block_448e8f

block_448e8f:                                     ; preds = %block_.L_448db2
  %loadMem_448e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 33
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %3198 to i64*
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3200 = getelementptr inbounds %struct.GPR, %struct.GPR* %3199, i32 0, i32 1
  %3201 = getelementptr inbounds %struct.Reg, %struct.Reg* %3200, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %3201 to i64*
  %3202 = load i64, i64* %PC.i51
  %3203 = add i64 %3202, 8
  store i64 %3203, i64* %PC.i51
  %3204 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3204, i64* %RAX.i52, align 8
  store %struct.Memory* %loadMem_448e8f, %struct.Memory** %MEMORY
  %loadMem_448e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3206 = getelementptr inbounds %struct.GPR, %struct.GPR* %3205, i32 0, i32 33
  %3207 = getelementptr inbounds %struct.Reg, %struct.Reg* %3206, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %3207 to i64*
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 1
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %3210 to i64*
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 5
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %RCX.i50 = bitcast %union.anon* %3213 to i64*
  %3214 = load i64, i64* %RAX.i49
  %3215 = add i64 %3214, 72556
  %3216 = load i64, i64* %PC.i48
  %3217 = add i64 %3216, 6
  store i64 %3217, i64* %PC.i48
  %3218 = inttoptr i64 %3215 to i32*
  %3219 = load i32, i32* %3218
  %3220 = zext i32 %3219 to i64
  store i64 %3220, i64* %RCX.i50, align 8
  store %struct.Memory* %loadMem_448e97, %struct.Memory** %MEMORY
  %loadMem_448e9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3222 = getelementptr inbounds %struct.GPR, %struct.GPR* %3221, i32 0, i32 33
  %3223 = getelementptr inbounds %struct.Reg, %struct.Reg* %3222, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %3223 to i64*
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3225 = getelementptr inbounds %struct.GPR, %struct.GPR* %3224, i32 0, i32 1
  %3226 = getelementptr inbounds %struct.Reg, %struct.Reg* %3225, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %3226 to i64*
  %3227 = load i64, i64* %PC.i46
  %3228 = add i64 %3227, 8
  store i64 %3228, i64* %PC.i46
  %3229 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3229, i64* %RAX.i47, align 8
  store %struct.Memory* %loadMem_448e9d, %struct.Memory** %MEMORY
  %loadMem_448ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3231 = getelementptr inbounds %struct.GPR, %struct.GPR* %3230, i32 0, i32 33
  %3232 = getelementptr inbounds %struct.Reg, %struct.Reg* %3231, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %3232 to i64*
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3234 = getelementptr inbounds %struct.GPR, %struct.GPR* %3233, i32 0, i32 1
  %3235 = getelementptr inbounds %struct.Reg, %struct.Reg* %3234, i32 0, i32 0
  %RAX.i44 = bitcast %union.anon* %3235 to i64*
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3237 = getelementptr inbounds %struct.GPR, %struct.GPR* %3236, i32 0, i32 5
  %3238 = getelementptr inbounds %struct.Reg, %struct.Reg* %3237, i32 0, i32 0
  %RCX.i45 = bitcast %union.anon* %3238 to i64*
  %3239 = load i64, i64* %RCX.i45
  %3240 = load i64, i64* %RAX.i44
  %3241 = add i64 %3240, 72532
  %3242 = load i64, i64* %PC.i43
  %3243 = add i64 %3242, 6
  store i64 %3243, i64* %PC.i43
  %3244 = trunc i64 %3239 to i32
  %3245 = inttoptr i64 %3241 to i32*
  %3246 = load i32, i32* %3245
  %3247 = add i32 %3246, %3244
  %3248 = zext i32 %3247 to i64
  store i64 %3248, i64* %RCX.i45, align 8
  %3249 = icmp ult i32 %3247, %3244
  %3250 = icmp ult i32 %3247, %3246
  %3251 = or i1 %3249, %3250
  %3252 = zext i1 %3251 to i8
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3252, i8* %3253, align 1
  %3254 = and i32 %3247, 255
  %3255 = call i32 @llvm.ctpop.i32(i32 %3254)
  %3256 = trunc i32 %3255 to i8
  %3257 = and i8 %3256, 1
  %3258 = xor i8 %3257, 1
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3258, i8* %3259, align 1
  %3260 = xor i32 %3246, %3244
  %3261 = xor i32 %3260, %3247
  %3262 = lshr i32 %3261, 4
  %3263 = trunc i32 %3262 to i8
  %3264 = and i8 %3263, 1
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3264, i8* %3265, align 1
  %3266 = icmp eq i32 %3247, 0
  %3267 = zext i1 %3266 to i8
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3267, i8* %3268, align 1
  %3269 = lshr i32 %3247, 31
  %3270 = trunc i32 %3269 to i8
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3270, i8* %3271, align 1
  %3272 = lshr i32 %3244, 31
  %3273 = lshr i32 %3246, 31
  %3274 = xor i32 %3269, %3272
  %3275 = xor i32 %3269, %3273
  %3276 = add i32 %3274, %3275
  %3277 = icmp eq i32 %3276, 2
  %3278 = zext i1 %3277 to i8
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3278, i8* %3279, align 1
  store %struct.Memory* %loadMem_448ea5, %struct.Memory** %MEMORY
  %loadMem_448eab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3281 = getelementptr inbounds %struct.GPR, %struct.GPR* %3280, i32 0, i32 33
  %3282 = getelementptr inbounds %struct.Reg, %struct.Reg* %3281, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %3282 to i64*
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3284 = getelementptr inbounds %struct.GPR, %struct.GPR* %3283, i32 0, i32 5
  %3285 = getelementptr inbounds %struct.Reg, %struct.Reg* %3284, i32 0, i32 0
  %ECX.i41 = bitcast %union.anon* %3285 to i32*
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3287 = getelementptr inbounds %struct.GPR, %struct.GPR* %3286, i32 0, i32 1
  %3288 = getelementptr inbounds %struct.Reg, %struct.Reg* %3287, i32 0, i32 0
  %RAX.i42 = bitcast %union.anon* %3288 to i64*
  %3289 = load i64, i64* %RAX.i42
  %3290 = add i64 %3289, 72532
  %3291 = load i32, i32* %ECX.i41
  %3292 = zext i32 %3291 to i64
  %3293 = load i64, i64* %PC.i40
  %3294 = add i64 %3293, 6
  store i64 %3294, i64* %PC.i40
  %3295 = inttoptr i64 %3290 to i32*
  store i32 %3291, i32* %3295
  store %struct.Memory* %loadMem_448eab, %struct.Memory** %MEMORY
  %loadMem_448eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3297 = getelementptr inbounds %struct.GPR, %struct.GPR* %3296, i32 0, i32 33
  %3298 = getelementptr inbounds %struct.Reg, %struct.Reg* %3297, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %3298 to i64*
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3300 = getelementptr inbounds %struct.GPR, %struct.GPR* %3299, i32 0, i32 1
  %3301 = getelementptr inbounds %struct.Reg, %struct.Reg* %3300, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %3301 to i64*
  %3302 = load i64, i64* %PC.i38
  %3303 = add i64 %3302, 8
  store i64 %3303, i64* %PC.i38
  %3304 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3304, i64* %RAX.i39, align 8
  store %struct.Memory* %loadMem_448eb1, %struct.Memory** %MEMORY
  %loadMem_448eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 33
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %3307 to i64*
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 1
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %3310 to i64*
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 5
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %RCX.i37 = bitcast %union.anon* %3313 to i64*
  %3314 = load i64, i64* %RAX.i36
  %3315 = add i64 %3314, 72552
  %3316 = load i64, i64* %PC.i35
  %3317 = add i64 %3316, 6
  store i64 %3317, i64* %PC.i35
  %3318 = inttoptr i64 %3315 to i32*
  %3319 = load i32, i32* %3318
  %3320 = zext i32 %3319 to i64
  store i64 %3320, i64* %RCX.i37, align 8
  store %struct.Memory* %loadMem_448eb9, %struct.Memory** %MEMORY
  %loadMem_448ebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 33
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %3323 to i64*
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 1
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %3326 to i64*
  %3327 = load i64, i64* %PC.i33
  %3328 = add i64 %3327, 8
  store i64 %3328, i64* %PC.i33
  %3329 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3329, i64* %RAX.i34, align 8
  store %struct.Memory* %loadMem_448ebf, %struct.Memory** %MEMORY
  %loadMem_448ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 33
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %3332 to i64*
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3334 = getelementptr inbounds %struct.GPR, %struct.GPR* %3333, i32 0, i32 1
  %3335 = getelementptr inbounds %struct.Reg, %struct.Reg* %3334, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %3335 to i64*
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 5
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %RCX.i32 = bitcast %union.anon* %3338 to i64*
  %3339 = load i64, i64* %RCX.i32
  %3340 = load i64, i64* %RAX.i31
  %3341 = add i64 %3340, 72536
  %3342 = load i64, i64* %PC.i30
  %3343 = add i64 %3342, 6
  store i64 %3343, i64* %PC.i30
  %3344 = trunc i64 %3339 to i32
  %3345 = inttoptr i64 %3341 to i32*
  %3346 = load i32, i32* %3345
  %3347 = add i32 %3346, %3344
  %3348 = zext i32 %3347 to i64
  store i64 %3348, i64* %RCX.i32, align 8
  %3349 = icmp ult i32 %3347, %3344
  %3350 = icmp ult i32 %3347, %3346
  %3351 = or i1 %3349, %3350
  %3352 = zext i1 %3351 to i8
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3352, i8* %3353, align 1
  %3354 = and i32 %3347, 255
  %3355 = call i32 @llvm.ctpop.i32(i32 %3354)
  %3356 = trunc i32 %3355 to i8
  %3357 = and i8 %3356, 1
  %3358 = xor i8 %3357, 1
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3358, i8* %3359, align 1
  %3360 = xor i32 %3346, %3344
  %3361 = xor i32 %3360, %3347
  %3362 = lshr i32 %3361, 4
  %3363 = trunc i32 %3362 to i8
  %3364 = and i8 %3363, 1
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3364, i8* %3365, align 1
  %3366 = icmp eq i32 %3347, 0
  %3367 = zext i1 %3366 to i8
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3367, i8* %3368, align 1
  %3369 = lshr i32 %3347, 31
  %3370 = trunc i32 %3369 to i8
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3370, i8* %3371, align 1
  %3372 = lshr i32 %3344, 31
  %3373 = lshr i32 %3346, 31
  %3374 = xor i32 %3369, %3372
  %3375 = xor i32 %3369, %3373
  %3376 = add i32 %3374, %3375
  %3377 = icmp eq i32 %3376, 2
  %3378 = zext i1 %3377 to i8
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3378, i8* %3379, align 1
  store %struct.Memory* %loadMem_448ec7, %struct.Memory** %MEMORY
  %loadMem_448ecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3381 = getelementptr inbounds %struct.GPR, %struct.GPR* %3380, i32 0, i32 33
  %3382 = getelementptr inbounds %struct.Reg, %struct.Reg* %3381, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %3382 to i64*
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 5
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %ECX.i28 = bitcast %union.anon* %3385 to i32*
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 1
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %3388 to i64*
  %3389 = load i64, i64* %RAX.i29
  %3390 = add i64 %3389, 72536
  %3391 = load i32, i32* %ECX.i28
  %3392 = zext i32 %3391 to i64
  %3393 = load i64, i64* %PC.i27
  %3394 = add i64 %3393, 6
  store i64 %3394, i64* %PC.i27
  %3395 = inttoptr i64 %3390 to i32*
  store i32 %3391, i32* %3395
  store %struct.Memory* %loadMem_448ecd, %struct.Memory** %MEMORY
  br label %block_.L_448ed3

block_.L_448ed3:                                  ; preds = %block_448e8f, %block_.L_448db2
  %loadMem_448ed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 33
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %3398 to i64*
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 1
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %3401 to i64*
  %3402 = load i64, i64* %PC.i25
  %3403 = add i64 %3402, 8
  store i64 %3403, i64* %PC.i25
  %3404 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3404, i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_448ed3, %struct.Memory** %MEMORY
  %loadMem_448edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 33
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3407 to i64*
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 1
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %3410 to i64*
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 5
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %RCX.i24 = bitcast %union.anon* %3413 to i64*
  %3414 = load i64, i64* %RAX.i23
  %3415 = add i64 %3414, 72616
  %3416 = load i64, i64* %PC.i22
  %3417 = add i64 %3416, 6
  store i64 %3417, i64* %PC.i22
  %3418 = inttoptr i64 %3415 to i32*
  %3419 = load i32, i32* %3418
  %3420 = zext i32 %3419 to i64
  store i64 %3420, i64* %RCX.i24, align 8
  store %struct.Memory* %loadMem_448edb, %struct.Memory** %MEMORY
  %loadMem_448ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 33
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %3423 to i64*
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3425 = getelementptr inbounds %struct.GPR, %struct.GPR* %3424, i32 0, i32 5
  %3426 = getelementptr inbounds %struct.Reg, %struct.Reg* %3425, i32 0, i32 0
  %RCX.i21 = bitcast %union.anon* %3426 to i64*
  %3427 = load i64, i64* %RCX.i21
  %3428 = load i64, i64* %PC.i20
  %3429 = add i64 %3428, 3
  store i64 %3429, i64* %PC.i20
  %3430 = trunc i64 %3427 to i32
  %3431 = add i32 1, %3430
  %3432 = zext i32 %3431 to i64
  store i64 %3432, i64* %RCX.i21, align 8
  %3433 = icmp ult i32 %3431, %3430
  %3434 = icmp ult i32 %3431, 1
  %3435 = or i1 %3433, %3434
  %3436 = zext i1 %3435 to i8
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3436, i8* %3437, align 1
  %3438 = and i32 %3431, 255
  %3439 = call i32 @llvm.ctpop.i32(i32 %3438)
  %3440 = trunc i32 %3439 to i8
  %3441 = and i8 %3440, 1
  %3442 = xor i8 %3441, 1
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3442, i8* %3443, align 1
  %3444 = xor i64 1, %3427
  %3445 = trunc i64 %3444 to i32
  %3446 = xor i32 %3445, %3431
  %3447 = lshr i32 %3446, 4
  %3448 = trunc i32 %3447 to i8
  %3449 = and i8 %3448, 1
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3449, i8* %3450, align 1
  %3451 = icmp eq i32 %3431, 0
  %3452 = zext i1 %3451 to i8
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3452, i8* %3453, align 1
  %3454 = lshr i32 %3431, 31
  %3455 = trunc i32 %3454 to i8
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3455, i8* %3456, align 1
  %3457 = lshr i32 %3430, 31
  %3458 = xor i32 %3454, %3457
  %3459 = add i32 %3458, %3454
  %3460 = icmp eq i32 %3459, 2
  %3461 = zext i1 %3460 to i8
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3461, i8* %3462, align 1
  store %struct.Memory* %loadMem_448ee1, %struct.Memory** %MEMORY
  %loadMem_448ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3464 = getelementptr inbounds %struct.GPR, %struct.GPR* %3463, i32 0, i32 33
  %3465 = getelementptr inbounds %struct.Reg, %struct.Reg* %3464, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3465 to i64*
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3467 = getelementptr inbounds %struct.GPR, %struct.GPR* %3466, i32 0, i32 5
  %3468 = getelementptr inbounds %struct.Reg, %struct.Reg* %3467, i32 0, i32 0
  %ECX.i18 = bitcast %union.anon* %3468 to i32*
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3470 = getelementptr inbounds %struct.GPR, %struct.GPR* %3469, i32 0, i32 1
  %3471 = getelementptr inbounds %struct.Reg, %struct.Reg* %3470, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %3471 to i64*
  %3472 = load i64, i64* %RAX.i19
  %3473 = add i64 %3472, 72616
  %3474 = load i32, i32* %ECX.i18
  %3475 = zext i32 %3474 to i64
  %3476 = load i64, i64* %PC.i17
  %3477 = add i64 %3476, 6
  store i64 %3477, i64* %PC.i17
  %3478 = inttoptr i64 %3473 to i32*
  store i32 %3474, i32* %3478
  store %struct.Memory* %loadMem_448ee4, %struct.Memory** %MEMORY
  %loadMem_448eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3480 = getelementptr inbounds %struct.GPR, %struct.GPR* %3479, i32 0, i32 33
  %3481 = getelementptr inbounds %struct.Reg, %struct.Reg* %3480, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3481 to i64*
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 1
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %3484 to i64*
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3486 = getelementptr inbounds %struct.GPR, %struct.GPR* %3485, i32 0, i32 15
  %3487 = getelementptr inbounds %struct.Reg, %struct.Reg* %3486, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %3487 to i64*
  %3488 = load i64, i64* %RBP.i16
  %3489 = sub i64 %3488, 24
  %3490 = load i64, i64* %PC.i14
  %3491 = add i64 %3490, 4
  store i64 %3491, i64* %PC.i14
  %3492 = inttoptr i64 %3489 to i64*
  %3493 = load i64, i64* %3492
  store i64 %3493, i64* %RAX.i15, align 8
  store %struct.Memory* %loadMem_448eea, %struct.Memory** %MEMORY
  %loadMem_448eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3495 = getelementptr inbounds %struct.GPR, %struct.GPR* %3494, i32 0, i32 33
  %3496 = getelementptr inbounds %struct.Reg, %struct.Reg* %3495, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %3496 to i64*
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3498 = getelementptr inbounds %struct.GPR, %struct.GPR* %3497, i32 0, i32 1
  %3499 = getelementptr inbounds %struct.Reg, %struct.Reg* %3498, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %3499 to i64*
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3501 = getelementptr inbounds %struct.GPR, %struct.GPR* %3500, i32 0, i32 5
  %3502 = getelementptr inbounds %struct.Reg, %struct.Reg* %3501, i32 0, i32 0
  %RCX.i13 = bitcast %union.anon* %3502 to i64*
  %3503 = load i64, i64* %RAX.i12
  %3504 = add i64 %3503, 4
  %3505 = load i64, i64* %PC.i11
  %3506 = add i64 %3505, 3
  store i64 %3506, i64* %PC.i11
  %3507 = inttoptr i64 %3504 to i32*
  %3508 = load i32, i32* %3507
  %3509 = zext i32 %3508 to i64
  store i64 %3509, i64* %RCX.i13, align 8
  store %struct.Memory* %loadMem_448eee, %struct.Memory** %MEMORY
  %loadMem_448ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3511 = getelementptr inbounds %struct.GPR, %struct.GPR* %3510, i32 0, i32 33
  %3512 = getelementptr inbounds %struct.Reg, %struct.Reg* %3511, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3512 to i64*
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3514 = getelementptr inbounds %struct.GPR, %struct.GPR* %3513, i32 0, i32 1
  %3515 = getelementptr inbounds %struct.Reg, %struct.Reg* %3514, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %3515 to i64*
  %3516 = load i64, i64* %PC.i9
  %3517 = add i64 %3516, 8
  store i64 %3517, i64* %PC.i9
  %3518 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %3518, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_448ef1, %struct.Memory** %MEMORY
  %loadMem_448ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 33
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %3521 to i64*
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3523 = getelementptr inbounds %struct.GPR, %struct.GPR* %3522, i32 0, i32 1
  %3524 = getelementptr inbounds %struct.Reg, %struct.Reg* %3523, i32 0, i32 0
  %RAX.i8 = bitcast %union.anon* %3524 to i64*
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3526 = getelementptr inbounds %struct.GPR, %struct.GPR* %3525, i32 0, i32 5
  %3527 = getelementptr inbounds %struct.Reg, %struct.Reg* %3526, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3527 to i64*
  %3528 = load i64, i64* %RCX.i
  %3529 = load i64, i64* %RAX.i8
  %3530 = add i64 %3529, 24
  %3531 = load i64, i64* %PC.i7
  %3532 = add i64 %3531, 3
  store i64 %3532, i64* %PC.i7
  %3533 = trunc i64 %3528 to i32
  %3534 = inttoptr i64 %3530 to i32*
  %3535 = load i32, i32* %3534
  %3536 = add i32 %3535, %3533
  %3537 = zext i32 %3536 to i64
  store i64 %3537, i64* %RCX.i, align 8
  %3538 = icmp ult i32 %3536, %3533
  %3539 = icmp ult i32 %3536, %3535
  %3540 = or i1 %3538, %3539
  %3541 = zext i1 %3540 to i8
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3541, i8* %3542, align 1
  %3543 = and i32 %3536, 255
  %3544 = call i32 @llvm.ctpop.i32(i32 %3543)
  %3545 = trunc i32 %3544 to i8
  %3546 = and i8 %3545, 1
  %3547 = xor i8 %3546, 1
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3547, i8* %3548, align 1
  %3549 = xor i32 %3535, %3533
  %3550 = xor i32 %3549, %3536
  %3551 = lshr i32 %3550, 4
  %3552 = trunc i32 %3551 to i8
  %3553 = and i8 %3552, 1
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3553, i8* %3554, align 1
  %3555 = icmp eq i32 %3536, 0
  %3556 = zext i1 %3555 to i8
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3556, i8* %3557, align 1
  %3558 = lshr i32 %3536, 31
  %3559 = trunc i32 %3558 to i8
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3559, i8* %3560, align 1
  %3561 = lshr i32 %3533, 31
  %3562 = lshr i32 %3535, 31
  %3563 = xor i32 %3558, %3561
  %3564 = xor i32 %3558, %3562
  %3565 = add i32 %3563, %3564
  %3566 = icmp eq i32 %3565, 2
  %3567 = zext i1 %3566 to i8
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3567, i8* %3568, align 1
  store %struct.Memory* %loadMem_448ef9, %struct.Memory** %MEMORY
  %loadMem_448efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3570 = getelementptr inbounds %struct.GPR, %struct.GPR* %3569, i32 0, i32 33
  %3571 = getelementptr inbounds %struct.Reg, %struct.Reg* %3570, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3571 to i64*
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3573 = getelementptr inbounds %struct.GPR, %struct.GPR* %3572, i32 0, i32 5
  %3574 = getelementptr inbounds %struct.Reg, %struct.Reg* %3573, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3574 to i32*
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3576 = getelementptr inbounds %struct.GPR, %struct.GPR* %3575, i32 0, i32 1
  %3577 = getelementptr inbounds %struct.Reg, %struct.Reg* %3576, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3577 to i64*
  %3578 = load i64, i64* %RAX.i
  %3579 = add i64 %3578, 24
  %3580 = load i32, i32* %ECX.i
  %3581 = zext i32 %3580 to i64
  %3582 = load i64, i64* %PC.i6
  %3583 = add i64 %3582, 3
  store i64 %3583, i64* %PC.i6
  %3584 = inttoptr i64 %3579 to i32*
  store i32 %3580, i32* %3584
  store %struct.Memory* %loadMem_448efc, %struct.Memory** %MEMORY
  %loadMem_448eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3586 = getelementptr inbounds %struct.GPR, %struct.GPR* %3585, i32 0, i32 33
  %3587 = getelementptr inbounds %struct.Reg, %struct.Reg* %3586, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3587 to i64*
  %3588 = load i64, i64* %PC.i5
  %3589 = add i64 %3588, 11
  store i64 %3589, i64* %PC.i5
  store i32 0, i32* bitcast (%G_0x6cc02c_type* @G_0x6cc02c to i32*)
  store %struct.Memory* %loadMem_448eff, %struct.Memory** %MEMORY
  %loadMem_448f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 33
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3592 to i64*
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 13
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3595 to i64*
  %3596 = load i64, i64* %RSP.i
  %3597 = load i64, i64* %PC.i4
  %3598 = add i64 %3597, 4
  store i64 %3598, i64* %PC.i4
  %3599 = add i64 48, %3596
  store i64 %3599, i64* %RSP.i, align 8
  %3600 = icmp ult i64 %3599, %3596
  %3601 = icmp ult i64 %3599, 48
  %3602 = or i1 %3600, %3601
  %3603 = zext i1 %3602 to i8
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3603, i8* %3604, align 1
  %3605 = trunc i64 %3599 to i32
  %3606 = and i32 %3605, 255
  %3607 = call i32 @llvm.ctpop.i32(i32 %3606)
  %3608 = trunc i32 %3607 to i8
  %3609 = and i8 %3608, 1
  %3610 = xor i8 %3609, 1
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3610, i8* %3611, align 1
  %3612 = xor i64 48, %3596
  %3613 = xor i64 %3612, %3599
  %3614 = lshr i64 %3613, 4
  %3615 = trunc i64 %3614 to i8
  %3616 = and i8 %3615, 1
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3616, i8* %3617, align 1
  %3618 = icmp eq i64 %3599, 0
  %3619 = zext i1 %3618 to i8
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3619, i8* %3620, align 1
  %3621 = lshr i64 %3599, 63
  %3622 = trunc i64 %3621 to i8
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3622, i8* %3623, align 1
  %3624 = lshr i64 %3596, 63
  %3625 = xor i64 %3621, %3624
  %3626 = add i64 %3625, %3621
  %3627 = icmp eq i64 %3626, 2
  %3628 = zext i1 %3627 to i8
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3628, i8* %3629, align 1
  store %struct.Memory* %loadMem_448f0a, %struct.Memory** %MEMORY
  %loadMem_448f0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3631 = getelementptr inbounds %struct.GPR, %struct.GPR* %3630, i32 0, i32 33
  %3632 = getelementptr inbounds %struct.Reg, %struct.Reg* %3631, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3632 to i64*
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3634 = getelementptr inbounds %struct.GPR, %struct.GPR* %3633, i32 0, i32 15
  %3635 = getelementptr inbounds %struct.Reg, %struct.Reg* %3634, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3635 to i64*
  %3636 = load i64, i64* %PC.i2
  %3637 = add i64 %3636, 1
  store i64 %3637, i64* %PC.i2
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3639 = load i64, i64* %3638, align 8
  %3640 = add i64 %3639, 8
  %3641 = inttoptr i64 %3639 to i64*
  %3642 = load i64, i64* %3641
  store i64 %3642, i64* %RBP.i3, align 8
  store i64 %3640, i64* %3638, align 8
  store %struct.Memory* %loadMem_448f0e, %struct.Memory** %MEMORY
  %loadMem_448f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3644 = getelementptr inbounds %struct.GPR, %struct.GPR* %3643, i32 0, i32 33
  %3645 = getelementptr inbounds %struct.Reg, %struct.Reg* %3644, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3645 to i64*
  %3646 = load i64, i64* %PC.i1
  %3647 = add i64 %3646, 1
  store i64 %3647, i64* %PC.i1
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3650 = load i64, i64* %3649, align 8
  %3651 = inttoptr i64 %3650 to i64*
  %3652 = load i64, i64* %3651
  store i64 %3652, i64* %3648, align 8
  %3653 = add i64 %3650, 8
  store i64 %3653, i64* %3649, align 8
  store %struct.Memory* %loadMem_448f0f, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_448f0f
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

define %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 14168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq_0xc__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 632, %15
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

define %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 12
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

define %struct.Memory* @routine_jne_.L_448bcd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__0x6ccae8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0x6ccae8_type* @G_0x6ccae8 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x9__0x48__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 9
  %16 = icmp ult i32 %14, 9
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
  %25 = xor i32 %14, 9
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

define %struct.Memory* @routine_je_.L_448bf7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0xa__0x48__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 10
  %16 = icmp ult i32 %14, 10
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
  %25 = xor i32 %14, 10
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

define %struct.Memory* @routine_cmpl__0xd__0x48__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 13
  %16 = icmp ult i32 %14, 13
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
  %25 = xor i32 %14, 13
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

define %struct.Memory* @routine_jne_.L_448c08(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x6ccae8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x6ccae8_type* @G_0x6ccae8 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__0x6ccae8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x6ccae8_type* @G_0x6ccae8 to i32*)
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

define %struct.Memory* @routine_cmpl__0x1__0x934__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2356
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jne_.L_448c51(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl_0xc__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 12
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

define %struct.Memory* @routine_je_.L_448c51(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_xorl__edi___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.write_terminating_bit(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__0x6cc02c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 1, i32* bitcast (%G_0x6cc02c_type* @G_0x6cc02c to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.writeMBLayer(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x48__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72
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

define %struct.Memory* @routine_jne_.L_448d23(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_448c97(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x1cc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 460
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

define %struct.Memory* @routine_movl_0x11bf4__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72692
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x4___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 4, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 4
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
  %26 = xor i64 4, %9
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

define %struct.Memory* @routine_jge_.L_448d1e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 4
  %16 = icmp ult i32 %14, 4
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
  %25 = xor i32 %14, 4
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

define %struct.Memory* @routine_jge_.L_448d0b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_448cc1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_448d10(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_448c9e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_448d23(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.set_last_dquant(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0xd8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_448db2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_448d61(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_448db2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_448dad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x11868__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 71784
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_448db2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addl_0x14__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 20
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

define %struct.Memory* @routine_addl_0xc__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 12
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

define %struct.Memory* @routine_addl_0x10__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 16
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

define %struct.Memory* @routine_addl_0x1c__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 28
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

define %struct.Memory* @routine_addl_0x18__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 24
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

define %struct.Memory* @routine_movl__ecx__0x11b6c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72556
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__ecx__0x11b68__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72552
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x11b68__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72552
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x11b50__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 72528
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_movl__ecx__0x11b50__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72528
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x11b6c__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72556
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x11b4c__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 72524
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_movl__ecx__0x11b4c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72524
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x11bac__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72620
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x11ba0__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 72608
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

define %struct.Memory* @routine_jge_.L_448ed3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl_0x11b54__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 72532
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_movl__ecx__0x11b54__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72532
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x11b58__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 72536
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_movl__ecx__0x11b58__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72536
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x11ba8__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72616
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__0x11ba8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72616
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x6cc02c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0x6cc02c_type* @G_0x6cc02c to i32*)
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
