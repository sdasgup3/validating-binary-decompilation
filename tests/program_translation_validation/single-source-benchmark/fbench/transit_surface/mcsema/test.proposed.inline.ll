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
%G_0x602340_type = type <{ [1 x i8] }>
%G_0x602348_type = type <{ [16 x i8] }>
%G_0x602370_type = type <{ [16 x i8] }>
%G_0x602630_type = type <{ [16 x i8] }>
%G_0x602638_type = type <{ [8 x i8] }>
%G_0x602640_type = type <{ [8 x i8] }>
%G_0x602648_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0A\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x602340 = global %G_0x602340_type zeroinitializer
@G_0x602348 = global %G_0x602348_type zeroinitializer
@G_0x602370 = global %G_0x602370_type zeroinitializer
@G_0x602630 = global %G_0x602630_type zeroinitializer
@G_0x602638 = global %G_0x602638_type zeroinitializer
@G_0x602640 = global %G_0x602640_type zeroinitializer
@G_0x602648 = global %G_0x602648_type zeroinitializer

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

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @ext_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_atan(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_cos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_tan(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

; Function Attrs: alwaysinline
define %struct.Memory* @transit_surface(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_401110 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_401110, %struct.Memory** %MEMORY
  %loadMem_401111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i98 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i98
  %27 = load i64, i64* %PC.i97
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i97
  store i64 %26, i64* %RBP.i99, align 8
  store %struct.Memory* %loadMem_401111, %struct.Memory** %MEMORY
  %loadMem_401114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i208 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i208
  %36 = load i64, i64* %PC.i207
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i207
  %38 = sub i64 %35, 144
  store i64 %38, i64* %RSP.i208, align 8
  %39 = icmp ult i64 %35, 144
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
  %49 = xor i64 144, %35
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
  store %struct.Memory* %loadMem_401114, %struct.Memory** %MEMORY
  %loadMem_40111b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %69 to i64*
  %70 = load i64, i64* %PC.i242
  %71 = add i64 %70, 9
  store i64 %71, i64* %PC.i242
  %72 = load i16, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*)
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %73, align 1
  %74 = and i16 %72, 255
  %75 = zext i16 %74 to i32
  %76 = call i32 @llvm.ctpop.i32(i32 %75)
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  %79 = xor i8 %78, 1
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %79, i8* %80, align 1
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %81, align 1
  %82 = icmp eq i16 %72, 0
  %83 = zext i1 %82 to i8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %83, i8* %84, align 1
  %85 = lshr i16 %72, 15
  %86 = trunc i16 %85 to i8
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %86, i8* %87, align 1
  %88 = lshr i16 %72, 15
  %89 = xor i16 %85, %88
  %90 = add i16 %89, %88
  %91 = icmp eq i16 %90, 2
  %92 = zext i1 %91 to i8
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %92, i8* %93, align 1
  store %struct.Memory* %loadMem_40111b, %struct.Memory** %MEMORY
  %loadMem_401124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 33
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %96 to i64*
  %97 = load i64, i64* %PC.i289
  %98 = add i64 %97, 391
  %99 = load i64, i64* %PC.i289
  %100 = add i64 %99, 6
  %101 = load i64, i64* %PC.i289
  %102 = add i64 %101, 6
  store i64 %102, i64* %PC.i289
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %104 = load i8, i8* %103, align 1
  store i8 %104, i8* %BRANCH_TAKEN, align 1
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %106 = icmp ne i8 %104, 0
  %107 = select i1 %106, i64 %98, i64 %100
  store i64 %107, i64* %105, align 8
  store %struct.Memory* %loadMem_401124, %struct.Memory** %MEMORY
  %loadBr_401124 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401124 = icmp eq i8 %loadBr_401124, 1
  br i1 %cmpBr_401124, label %block_.L_4012ab, label %block_40112a

block_40112a:                                     ; preds = %entry
  %loadMem_40112a = load %struct.Memory*, %struct.Memory** %MEMORY
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 33
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %110 to i64*
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %112 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %111, i64 0, i64 0
  %YMM0.i303 = bitcast %union.VectorReg* %112 to %"class.std::bitset"*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %114 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %113, i64 0, i64 0
  %XMM0.i304 = bitcast %union.VectorReg* %114 to %union.vec128_t*
  %115 = bitcast %"class.std::bitset"* %YMM0.i303 to i8*
  %116 = bitcast %"class.std::bitset"* %YMM0.i303 to i8*
  %117 = bitcast %union.vec128_t* %XMM0.i304 to i8*
  %118 = load i64, i64* %PC.i302
  %119 = add i64 %118, 3
  store i64 %119, i64* %PC.i302
  %120 = bitcast i8* %116 to i64*
  %121 = load i64, i64* %120, align 1
  %122 = getelementptr inbounds i8, i8* %116, i64 8
  %123 = bitcast i8* %122 to i64*
  %124 = load i64, i64* %123, align 1
  %125 = bitcast i8* %117 to i64*
  %126 = load i64, i64* %125, align 1
  %127 = getelementptr inbounds i8, i8* %117, i64 8
  %128 = bitcast i8* %127 to i64*
  %129 = load i64, i64* %128, align 1
  %130 = xor i64 %126, %121
  %131 = xor i64 %129, %124
  %132 = trunc i64 %130 to i32
  %133 = lshr i64 %130, 32
  %134 = trunc i64 %133 to i32
  %135 = bitcast i8* %115 to i32*
  store i32 %132, i32* %135, align 1
  %136 = getelementptr inbounds i8, i8* %115, i64 4
  %137 = bitcast i8* %136 to i32*
  store i32 %134, i32* %137, align 1
  %138 = trunc i64 %131 to i32
  %139 = getelementptr inbounds i8, i8* %115, i64 8
  %140 = bitcast i8* %139 to i32*
  store i32 %138, i32* %140, align 1
  %141 = lshr i64 %131, 32
  %142 = trunc i64 %141 to i32
  %143 = getelementptr inbounds i8, i8* %115, i64 12
  %144 = bitcast i8* %143 to i32*
  store i32 %142, i32* %144, align 1
  store %struct.Memory* %loadMem_40112a, %struct.Memory** %MEMORY
  %loadMem_40112d = load %struct.Memory*, %struct.Memory** %MEMORY
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 33
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %147 to i64*
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %149 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %148, i64 0, i64 1
  %YMM1.i355 = bitcast %union.VectorReg* %149 to %"class.std::bitset"*
  %150 = bitcast %"class.std::bitset"* %YMM1.i355 to i8*
  %151 = load i64, i64* %PC.i354
  %152 = add i64 %151, 9
  store i64 %152, i64* %PC.i354
  %153 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %154 = bitcast i8* %150 to double*
  store double %153, double* %154, align 1
  %155 = getelementptr inbounds i8, i8* %150, i64 8
  %156 = bitcast i8* %155 to double*
  store double 0.000000e+00, double* %156, align 1
  store %struct.Memory* %loadMem_40112d, %struct.Memory** %MEMORY
  %loadMem_401136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 33
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %159 to i64*
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %161 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %160, i64 0, i64 0
  %XMM0.i417 = bitcast %union.VectorReg* %161 to %union.vec128_t*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %163 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %162, i64 0, i64 1
  %XMM1.i418 = bitcast %union.VectorReg* %163 to %union.vec128_t*
  %164 = bitcast %union.vec128_t* %XMM1.i418 to i8*
  %165 = bitcast %union.vec128_t* %XMM0.i417 to i8*
  %166 = load i64, i64* %PC.i416
  %167 = add i64 %166, 4
  store i64 %167, i64* %PC.i416
  %168 = bitcast i8* %164 to double*
  %169 = load double, double* %168, align 1
  %170 = bitcast i8* %165 to double*
  %171 = load double, double* %170, align 1
  %172 = fcmp uno double %169, %171
  br i1 %172, label %173, label %185

; <label>:173:                                    ; preds = %block_40112a
  %174 = fadd double %169, %171
  %175 = bitcast double %174 to i64
  %176 = and i64 %175, 9221120237041090560
  %177 = icmp eq i64 %176, 9218868437227405312
  %178 = and i64 %175, 2251799813685247
  %179 = icmp ne i64 %178, 0
  %180 = and i1 %177, %179
  br i1 %180, label %181, label %191

; <label>:181:                                    ; preds = %173
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %183, %struct.Memory* %loadMem_401136)
  br label %routine_ucomisd__xmm0___xmm1.exit419

; <label>:185:                                    ; preds = %block_40112a
  %186 = fcmp ogt double %169, %171
  br i1 %186, label %191, label %187

; <label>:187:                                    ; preds = %185
  %188 = fcmp olt double %169, %171
  br i1 %188, label %191, label %189

; <label>:189:                                    ; preds = %187
  %190 = fcmp oeq double %169, %171
  br i1 %190, label %191, label %198

; <label>:191:                                    ; preds = %189, %187, %185, %173
  %192 = phi i8 [ 0, %185 ], [ 0, %187 ], [ 1, %189 ], [ 1, %173 ]
  %193 = phi i8 [ 0, %185 ], [ 0, %187 ], [ 0, %189 ], [ 1, %173 ]
  %194 = phi i8 [ 0, %185 ], [ 1, %187 ], [ 0, %189 ], [ 1, %173 ]
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %192, i8* %195, align 1
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %193, i8* %196, align 1
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %194, i8* %197, align 1
  br label %198

; <label>:198:                                    ; preds = %191, %189
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %199, align 1
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %200, align 1
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %201, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit419

routine_ucomisd__xmm0___xmm1.exit419:             ; preds = %181, %198
  %202 = phi %struct.Memory* [ %184, %181 ], [ %loadMem_401136, %198 ]
  store %struct.Memory* %202, %struct.Memory** %MEMORY
  %loadMem_40113a = load %struct.Memory*, %struct.Memory** %MEMORY
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 33
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %205 to i64*
  %206 = load i64, i64* %PC.i420
  %207 = add i64 %206, 17
  %208 = load i64, i64* %PC.i420
  %209 = add i64 %208, 6
  %210 = load i64, i64* %PC.i420
  %211 = add i64 %210, 6
  store i64 %211, i64* %PC.i420
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %213 = load i8, i8* %212, align 1
  %214 = icmp eq i8 %213, 0
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %BRANCH_TAKEN, align 1
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %217 = select i1 %214, i64 %207, i64 %209
  store i64 %217, i64* %216, align 8
  store %struct.Memory* %loadMem_40113a, %struct.Memory** %MEMORY
  %loadBr_40113a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40113a = icmp eq i8 %loadBr_40113a, 1
  br i1 %cmpBr_40113a, label %block_.L_40114b, label %block_401140

block_401140:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit419
  %loadMem_401140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 33
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %220 to i64*
  %221 = load i64, i64* %PC.i427
  %222 = add i64 %221, 11
  %223 = load i64, i64* %PC.i427
  %224 = add i64 %223, 6
  %225 = load i64, i64* %PC.i427
  %226 = add i64 %225, 6
  store i64 %226, i64* %PC.i427
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %228 = load i8, i8* %227, align 1
  store i8 %228, i8* %BRANCH_TAKEN, align 1
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %230 = icmp ne i8 %228, 0
  %231 = select i1 %230, i64 %222, i64 %224
  store i64 %231, i64* %229, align 8
  store %struct.Memory* %loadMem_401140, %struct.Memory** %MEMORY
  %loadBr_401140 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401140 = icmp eq i8 %loadBr_401140, 1
  br i1 %cmpBr_401140, label %block_.L_40114b, label %block_401146

block_401146:                                     ; preds = %block_401140
  %loadMem_401146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 33
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %234 to i64*
  %235 = load i64, i64* %PC.i426
  %236 = add i64 %235, 272
  %237 = load i64, i64* %PC.i426
  %238 = add i64 %237, 5
  store i64 %238, i64* %PC.i426
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %236, i64* %239, align 8
  store %struct.Memory* %loadMem_401146, %struct.Memory** %MEMORY
  br label %block_.L_401256

block_.L_40114b:                                  ; preds = %block_401140, %routine_ucomisd__xmm0___xmm1.exit419
  %loadMem_40114b = load %struct.Memory*, %struct.Memory** %MEMORY
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 33
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %242 to i64*
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %244 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %243, i64 0, i64 0
  %YMM0.i424 = bitcast %union.VectorReg* %244 to %"class.std::bitset"*
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %246 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %245, i64 0, i64 0
  %XMM0.i425 = bitcast %union.VectorReg* %246 to %union.vec128_t*
  %247 = bitcast %"class.std::bitset"* %YMM0.i424 to i8*
  %248 = bitcast %"class.std::bitset"* %YMM0.i424 to i8*
  %249 = bitcast %union.vec128_t* %XMM0.i425 to i8*
  %250 = load i64, i64* %PC.i423
  %251 = add i64 %250, 3
  store i64 %251, i64* %PC.i423
  %252 = bitcast i8* %248 to i64*
  %253 = load i64, i64* %252, align 1
  %254 = getelementptr inbounds i8, i8* %248, i64 8
  %255 = bitcast i8* %254 to i64*
  %256 = load i64, i64* %255, align 1
  %257 = bitcast i8* %249 to i64*
  %258 = load i64, i64* %257, align 1
  %259 = getelementptr inbounds i8, i8* %249, i64 8
  %260 = bitcast i8* %259 to i64*
  %261 = load i64, i64* %260, align 1
  %262 = xor i64 %258, %253
  %263 = xor i64 %261, %256
  %264 = trunc i64 %262 to i32
  %265 = lshr i64 %262, 32
  %266 = trunc i64 %265 to i32
  %267 = bitcast i8* %247 to i32*
  store i32 %264, i32* %267, align 1
  %268 = getelementptr inbounds i8, i8* %247, i64 4
  %269 = bitcast i8* %268 to i32*
  store i32 %266, i32* %269, align 1
  %270 = trunc i64 %263 to i32
  %271 = getelementptr inbounds i8, i8* %247, i64 8
  %272 = bitcast i8* %271 to i32*
  store i32 %270, i32* %272, align 1
  %273 = lshr i64 %263, 32
  %274 = trunc i64 %273 to i32
  %275 = getelementptr inbounds i8, i8* %247, i64 12
  %276 = bitcast i8* %275 to i32*
  store i32 %274, i32* %276, align 1
  store %struct.Memory* %loadMem_40114b, %struct.Memory** %MEMORY
  %loadMem_40114e = load %struct.Memory*, %struct.Memory** %MEMORY
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 33
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %279 to i64*
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %280, i64 0, i64 1
  %YMM1.i422 = bitcast %union.VectorReg* %281 to %"class.std::bitset"*
  %282 = bitcast %"class.std::bitset"* %YMM1.i422 to i8*
  %283 = load i64, i64* %PC.i421
  %284 = add i64 %283, 9
  store i64 %284, i64* %PC.i421
  %285 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  %286 = bitcast i8* %282 to double*
  store double %285, double* %286, align 1
  %287 = getelementptr inbounds i8, i8* %282, i64 8
  %288 = bitcast i8* %287 to double*
  store double 0.000000e+00, double* %288, align 1
  store %struct.Memory* %loadMem_40114e, %struct.Memory** %MEMORY
  %loadMem_401157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 33
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %291 to i64*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %293 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %292, i64 0, i64 0
  %XMM0.i413 = bitcast %union.VectorReg* %293 to %union.vec128_t*
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %295 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %294, i64 0, i64 1
  %XMM1.i414 = bitcast %union.VectorReg* %295 to %union.vec128_t*
  %296 = bitcast %union.vec128_t* %XMM1.i414 to i8*
  %297 = bitcast %union.vec128_t* %XMM0.i413 to i8*
  %298 = load i64, i64* %PC.i412
  %299 = add i64 %298, 4
  store i64 %299, i64* %PC.i412
  %300 = bitcast i8* %296 to double*
  %301 = load double, double* %300, align 1
  %302 = bitcast i8* %297 to double*
  %303 = load double, double* %302, align 1
  %304 = fcmp uno double %301, %303
  br i1 %304, label %305, label %317

; <label>:305:                                    ; preds = %block_.L_40114b
  %306 = fadd double %301, %303
  %307 = bitcast double %306 to i64
  %308 = and i64 %307, 9221120237041090560
  %309 = icmp eq i64 %308, 9218868437227405312
  %310 = and i64 %307, 2251799813685247
  %311 = icmp ne i64 %310, 0
  %312 = and i1 %309, %311
  br i1 %312, label %313, label %323

; <label>:313:                                    ; preds = %305
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %315, %struct.Memory* %loadMem_401157)
  br label %routine_ucomisd__xmm0___xmm1.exit415

; <label>:317:                                    ; preds = %block_.L_40114b
  %318 = fcmp ogt double %301, %303
  br i1 %318, label %323, label %319

; <label>:319:                                    ; preds = %317
  %320 = fcmp olt double %301, %303
  br i1 %320, label %323, label %321

; <label>:321:                                    ; preds = %319
  %322 = fcmp oeq double %301, %303
  br i1 %322, label %323, label %330

; <label>:323:                                    ; preds = %321, %319, %317, %305
  %324 = phi i8 [ 0, %317 ], [ 0, %319 ], [ 1, %321 ], [ 1, %305 ]
  %325 = phi i8 [ 0, %317 ], [ 0, %319 ], [ 0, %321 ], [ 1, %305 ]
  %326 = phi i8 [ 0, %317 ], [ 1, %319 ], [ 0, %321 ], [ 1, %305 ]
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %324, i8* %327, align 1
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %325, i8* %328, align 1
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %326, i8* %329, align 1
  br label %330

; <label>:330:                                    ; preds = %323, %321
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %331, align 1
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %332, align 1
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %333, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit415

routine_ucomisd__xmm0___xmm1.exit415:             ; preds = %313, %330
  %334 = phi %struct.Memory* [ %316, %313 ], [ %loadMem_401157, %330 ]
  store %struct.Memory* %334, %struct.Memory** %MEMORY
  %loadMem_40115b = load %struct.Memory*, %struct.Memory** %MEMORY
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 33
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %337 to i64*
  %338 = load i64, i64* %PC.i411
  %339 = add i64 %338, 52
  %340 = load i64, i64* %PC.i411
  %341 = add i64 %340, 6
  %342 = load i64, i64* %PC.i411
  %343 = add i64 %342, 6
  store i64 %343, i64* %PC.i411
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %345 = load i8, i8* %344, align 1
  %346 = icmp eq i8 %345, 0
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %BRANCH_TAKEN, align 1
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %349 = select i1 %346, i64 %339, i64 %341
  store i64 %349, i64* %348, align 8
  store %struct.Memory* %loadMem_40115b, %struct.Memory** %MEMORY
  %loadBr_40115b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40115b = icmp eq i8 %loadBr_40115b, 1
  br i1 %cmpBr_40115b, label %block_.L_40118f, label %block_401161

block_401161:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit415
  %loadMem_401161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 33
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %352 to i64*
  %353 = load i64, i64* %PC.i410
  %354 = add i64 %353, 46
  %355 = load i64, i64* %PC.i410
  %356 = add i64 %355, 6
  %357 = load i64, i64* %PC.i410
  %358 = add i64 %357, 6
  store i64 %358, i64* %PC.i410
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %360 = load i8, i8* %359, align 1
  store i8 %360, i8* %BRANCH_TAKEN, align 1
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %362 = icmp ne i8 %360, 0
  %363 = select i1 %362, i64 %354, i64 %356
  store i64 %363, i64* %361, align 8
  store %struct.Memory* %loadMem_401161, %struct.Memory** %MEMORY
  %loadBr_401161 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401161 = icmp eq i8 %loadBr_401161, 1
  br i1 %cmpBr_401161, label %block_.L_40118f, label %block_401167

block_401167:                                     ; preds = %block_401161
  %loadMem_401167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 33
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %368 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %367, i64 0, i64 0
  %YMM0.i408 = bitcast %union.VectorReg* %368 to %"class.std::bitset"*
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %370 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %369, i64 0, i64 0
  %XMM0.i409 = bitcast %union.VectorReg* %370 to %union.vec128_t*
  %371 = bitcast %"class.std::bitset"* %YMM0.i408 to i8*
  %372 = bitcast %"class.std::bitset"* %YMM0.i408 to i8*
  %373 = bitcast %union.vec128_t* %XMM0.i409 to i8*
  %374 = load i64, i64* %PC.i407
  %375 = add i64 %374, 3
  store i64 %375, i64* %PC.i407
  %376 = bitcast i8* %372 to i64*
  %377 = load i64, i64* %376, align 1
  %378 = getelementptr inbounds i8, i8* %372, i64 8
  %379 = bitcast i8* %378 to i64*
  %380 = load i64, i64* %379, align 1
  %381 = bitcast i8* %373 to i64*
  %382 = load i64, i64* %381, align 1
  %383 = getelementptr inbounds i8, i8* %373, i64 8
  %384 = bitcast i8* %383 to i64*
  %385 = load i64, i64* %384, align 1
  %386 = xor i64 %382, %377
  %387 = xor i64 %385, %380
  %388 = trunc i64 %386 to i32
  %389 = lshr i64 %386, 32
  %390 = trunc i64 %389 to i32
  %391 = bitcast i8* %371 to i32*
  store i32 %388, i32* %391, align 1
  %392 = getelementptr inbounds i8, i8* %371, i64 4
  %393 = bitcast i8* %392 to i32*
  store i32 %390, i32* %393, align 1
  %394 = trunc i64 %387 to i32
  %395 = getelementptr inbounds i8, i8* %371, i64 8
  %396 = bitcast i8* %395 to i32*
  store i32 %394, i32* %396, align 1
  %397 = lshr i64 %387, 32
  %398 = trunc i64 %397 to i32
  %399 = getelementptr inbounds i8, i8* %371, i64 12
  %400 = bitcast i8* %399 to i32*
  store i32 %398, i32* %400, align 1
  store %struct.Memory* %loadMem_401167, %struct.Memory** %MEMORY
  %loadMem_40116a = load %struct.Memory*, %struct.Memory** %MEMORY
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 33
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %403 to i64*
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %405 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %404, i64 0, i64 0
  %XMM0.i406 = bitcast %union.VectorReg* %405 to %union.vec128_t*
  %406 = bitcast %union.vec128_t* %XMM0.i406 to i8*
  %407 = load i64, i64* %PC.i405
  %408 = add i64 %407, 9
  store i64 %408, i64* %PC.i405
  %409 = bitcast i8* %406 to double*
  %410 = load double, double* %409, align 1
  store double %410, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  store %struct.Memory* %loadMem_40116a, %struct.Memory** %MEMORY
  %loadMem_401173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 33
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %413 to i64*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %415 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %414, i64 0, i64 0
  %YMM0.i404 = bitcast %union.VectorReg* %415 to %"class.std::bitset"*
  %416 = bitcast %"class.std::bitset"* %YMM0.i404 to i8*
  %417 = load i64, i64* %PC.i403
  %418 = add i64 %417, 9
  store i64 %418, i64* %PC.i403
  %419 = load double, double* bitcast (%G_0x602630_type* @G_0x602630 to double*)
  %420 = bitcast i8* %416 to double*
  store double %419, double* %420, align 1
  %421 = getelementptr inbounds i8, i8* %416, i64 8
  %422 = bitcast i8* %421 to double*
  store double 0.000000e+00, double* %422, align 1
  store %struct.Memory* %loadMem_401173, %struct.Memory** %MEMORY
  %loadMem_40117c = load %struct.Memory*, %struct.Memory** %MEMORY
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 33
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %425 to i64*
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %427 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %426, i64 0, i64 0
  %YMM0.i402 = bitcast %union.VectorReg* %427 to %"class.std::bitset"*
  %428 = bitcast %"class.std::bitset"* %YMM0.i402 to i8*
  %429 = bitcast %"class.std::bitset"* %YMM0.i402 to i8*
  %430 = load i64, i64* %PC.i401
  %431 = add i64 %430, 9
  store i64 %431, i64* %PC.i401
  %432 = bitcast i8* %429 to double*
  %433 = load double, double* %432, align 1
  %434 = getelementptr inbounds i8, i8* %429, i64 8
  %435 = bitcast i8* %434 to i64*
  %436 = load i64, i64* %435, align 1
  %437 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %438 = fdiv double %433, %437
  %439 = bitcast i8* %428 to double*
  store double %438, double* %439, align 1
  %440 = getelementptr inbounds i8, i8* %428, i64 8
  %441 = bitcast i8* %440 to i64*
  store i64 %436, i64* %441, align 1
  store %struct.Memory* %loadMem_40117c, %struct.Memory** %MEMORY
  %loadMem_401185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %443 = getelementptr inbounds %struct.GPR, %struct.GPR* %442, i32 0, i32 33
  %444 = getelementptr inbounds %struct.Reg, %struct.Reg* %443, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %444 to i64*
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %446 = getelementptr inbounds %struct.GPR, %struct.GPR* %445, i32 0, i32 15
  %447 = getelementptr inbounds %struct.Reg, %struct.Reg* %446, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %447 to i64*
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %449 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %448, i64 0, i64 0
  %XMM0.i400 = bitcast %union.VectorReg* %449 to %union.vec128_t*
  %450 = load i64, i64* %RBP.i399
  %451 = sub i64 %450, 24
  %452 = bitcast %union.vec128_t* %XMM0.i400 to i8*
  %453 = load i64, i64* %PC.i398
  %454 = add i64 %453, 5
  store i64 %454, i64* %PC.i398
  %455 = bitcast i8* %452 to double*
  %456 = load double, double* %455, align 1
  %457 = inttoptr i64 %451 to double*
  store double %456, double* %457
  store %struct.Memory* %loadMem_401185, %struct.Memory** %MEMORY
  %loadMem_40118a = load %struct.Memory*, %struct.Memory** %MEMORY
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 33
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %460 to i64*
  %461 = load i64, i64* %PC.i397
  %462 = add i64 %461, 46
  %463 = load i64, i64* %PC.i397
  %464 = add i64 %463, 5
  store i64 %464, i64* %PC.i397
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %462, i64* %465, align 8
  store %struct.Memory* %loadMem_40118a, %struct.Memory** %MEMORY
  br label %block_.L_4011b8

block_.L_40118f:                                  ; preds = %block_401161, %routine_ucomisd__xmm0___xmm1.exit415
  %loadMem_40118f = load %struct.Memory*, %struct.Memory** %MEMORY
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 33
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %468 to i64*
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %470 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %469, i64 0, i64 0
  %YMM0.i396 = bitcast %union.VectorReg* %470 to %"class.std::bitset"*
  %471 = bitcast %"class.std::bitset"* %YMM0.i396 to i8*
  %472 = load i64, i64* %PC.i395
  %473 = add i64 %472, 9
  store i64 %473, i64* %PC.i395
  %474 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  %475 = bitcast i8* %471 to double*
  store double %474, double* %475, align 1
  %476 = getelementptr inbounds i8, i8* %471, i64 8
  %477 = bitcast i8* %476 to double*
  store double 0.000000e+00, double* %477, align 1
  store %struct.Memory* %loadMem_40118f, %struct.Memory** %MEMORY
  %loadMem_401198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 33
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %480 to i64*
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %482 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %481, i64 0, i64 0
  %YMM0.i394 = bitcast %union.VectorReg* %482 to %"class.std::bitset"*
  %483 = bitcast %"class.std::bitset"* %YMM0.i394 to i8*
  %484 = bitcast %"class.std::bitset"* %YMM0.i394 to i8*
  %485 = load i64, i64* %PC.i393
  %486 = add i64 %485, 9
  store i64 %486, i64* %PC.i393
  %487 = bitcast i8* %484 to double*
  %488 = load double, double* %487, align 1
  %489 = getelementptr inbounds i8, i8* %484, i64 8
  %490 = bitcast i8* %489 to i64*
  %491 = load i64, i64* %490, align 1
  %492 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %493 = fsub double %488, %492
  %494 = bitcast i8* %483 to double*
  store double %493, double* %494, align 1
  %495 = getelementptr inbounds i8, i8* %483, i64 8
  %496 = bitcast i8* %495 to i64*
  store i64 %491, i64* %496, align 1
  store %struct.Memory* %loadMem_401198, %struct.Memory** %MEMORY
  %loadMem_4011a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 33
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %499 to i64*
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %501 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %500, i64 0, i64 0
  %YMM0.i392 = bitcast %union.VectorReg* %501 to %"class.std::bitset"*
  %502 = bitcast %"class.std::bitset"* %YMM0.i392 to i8*
  %503 = bitcast %"class.std::bitset"* %YMM0.i392 to i8*
  %504 = load i64, i64* %PC.i391
  %505 = add i64 %504, 9
  store i64 %505, i64* %PC.i391
  %506 = bitcast i8* %503 to double*
  %507 = load double, double* %506, align 1
  %508 = getelementptr inbounds i8, i8* %503, i64 8
  %509 = bitcast i8* %508 to i64*
  %510 = load i64, i64* %509, align 1
  %511 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %512 = fdiv double %507, %511
  %513 = bitcast i8* %502 to double*
  store double %512, double* %513, align 1
  %514 = getelementptr inbounds i8, i8* %502, i64 8
  %515 = bitcast i8* %514 to i64*
  store i64 %510, i64* %515, align 1
  store %struct.Memory* %loadMem_4011a1, %struct.Memory** %MEMORY
  %loadMem_4011aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 33
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %518 to i64*
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %520 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %519, i64 0, i64 0
  %YMM0.i390 = bitcast %union.VectorReg* %520 to %"class.std::bitset"*
  %521 = bitcast %"class.std::bitset"* %YMM0.i390 to i8*
  %522 = bitcast %"class.std::bitset"* %YMM0.i390 to i8*
  %523 = load i64, i64* %PC.i389
  %524 = add i64 %523, 9
  store i64 %524, i64* %PC.i389
  %525 = bitcast i8* %522 to double*
  %526 = load double, double* %525, align 1
  %527 = getelementptr inbounds i8, i8* %522, i64 8
  %528 = bitcast i8* %527 to i64*
  %529 = load i64, i64* %528, align 1
  %530 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %531 = fmul double %526, %530
  %532 = bitcast i8* %521 to double*
  store double %531, double* %532, align 1
  %533 = getelementptr inbounds i8, i8* %521, i64 8
  %534 = bitcast i8* %533 to i64*
  store i64 %529, i64* %534, align 1
  store %struct.Memory* %loadMem_4011aa, %struct.Memory** %MEMORY
  %loadMem_4011b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 33
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %537 to i64*
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 15
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %540 to i64*
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %542 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %541, i64 0, i64 0
  %XMM0.i388 = bitcast %union.VectorReg* %542 to %union.vec128_t*
  %543 = load i64, i64* %RBP.i387
  %544 = sub i64 %543, 24
  %545 = bitcast %union.vec128_t* %XMM0.i388 to i8*
  %546 = load i64, i64* %PC.i386
  %547 = add i64 %546, 5
  store i64 %547, i64* %PC.i386
  %548 = bitcast i8* %545 to double*
  %549 = load double, double* %548, align 1
  %550 = inttoptr i64 %544 to double*
  store double %549, double* %550
  store %struct.Memory* %loadMem_4011b3, %struct.Memory** %MEMORY
  br label %block_.L_4011b8

block_.L_4011b8:                                  ; preds = %block_.L_40118f, %block_401167
  %loadMem_4011b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 33
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %553 to i64*
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %555 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %554, i64 0, i64 0
  %YMM0.i384 = bitcast %union.VectorReg* %555 to %"class.std::bitset"*
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %557 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %556, i64 0, i64 0
  %XMM0.i385 = bitcast %union.VectorReg* %557 to %union.vec128_t*
  %558 = bitcast %"class.std::bitset"* %YMM0.i384 to i8*
  %559 = bitcast %"class.std::bitset"* %YMM0.i384 to i8*
  %560 = bitcast %union.vec128_t* %XMM0.i385 to i8*
  %561 = load i64, i64* %PC.i383
  %562 = add i64 %561, 3
  store i64 %562, i64* %PC.i383
  %563 = bitcast i8* %559 to i64*
  %564 = load i64, i64* %563, align 1
  %565 = getelementptr inbounds i8, i8* %559, i64 8
  %566 = bitcast i8* %565 to i64*
  %567 = load i64, i64* %566, align 1
  %568 = bitcast i8* %560 to i64*
  %569 = load i64, i64* %568, align 1
  %570 = getelementptr inbounds i8, i8* %560, i64 8
  %571 = bitcast i8* %570 to i64*
  %572 = load i64, i64* %571, align 1
  %573 = xor i64 %569, %564
  %574 = xor i64 %572, %567
  %575 = trunc i64 %573 to i32
  %576 = lshr i64 %573, 32
  %577 = trunc i64 %576 to i32
  %578 = bitcast i8* %558 to i32*
  store i32 %575, i32* %578, align 1
  %579 = getelementptr inbounds i8, i8* %558, i64 4
  %580 = bitcast i8* %579 to i32*
  store i32 %577, i32* %580, align 1
  %581 = trunc i64 %574 to i32
  %582 = getelementptr inbounds i8, i8* %558, i64 8
  %583 = bitcast i8* %582 to i32*
  store i32 %581, i32* %583, align 1
  %584 = lshr i64 %574, 32
  %585 = trunc i64 %584 to i32
  %586 = getelementptr inbounds i8, i8* %558, i64 12
  %587 = bitcast i8* %586 to i32*
  store i32 %585, i32* %587, align 1
  store %struct.Memory* %loadMem_4011b8, %struct.Memory** %MEMORY
  %loadMem_4011bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 33
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %590 to i64*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %592 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %591, i64 0, i64 1
  %YMM1.i382 = bitcast %union.VectorReg* %592 to %"class.std::bitset"*
  %593 = bitcast %"class.std::bitset"* %YMM1.i382 to i8*
  %594 = load i64, i64* %PC.i381
  %595 = add i64 %594, 9
  store i64 %595, i64* %PC.i381
  %596 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*)
  %597 = bitcast i8* %593 to double*
  store double %596, double* %597, align 1
  %598 = getelementptr inbounds i8, i8* %593, i64 8
  %599 = bitcast i8* %598 to double*
  store double 0.000000e+00, double* %599, align 1
  store %struct.Memory* %loadMem_4011bb, %struct.Memory** %MEMORY
  %loadMem_4011c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 33
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %602 to i64*
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %604 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %603, i64 0, i64 1
  %YMM1.i380 = bitcast %union.VectorReg* %604 to %"class.std::bitset"*
  %605 = bitcast %"class.std::bitset"* %YMM1.i380 to i8*
  %606 = bitcast %"class.std::bitset"* %YMM1.i380 to i8*
  %607 = load i64, i64* %PC.i379
  %608 = add i64 %607, 9
  store i64 %608, i64* %PC.i379
  %609 = bitcast i8* %606 to double*
  %610 = load double, double* %609, align 1
  %611 = getelementptr inbounds i8, i8* %606, i64 8
  %612 = bitcast i8* %611 to i64*
  %613 = load i64, i64* %612, align 1
  %614 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*)
  %615 = fdiv double %610, %614
  %616 = bitcast i8* %605 to double*
  store double %615, double* %616, align 1
  %617 = getelementptr inbounds i8, i8* %605, i64 8
  %618 = bitcast i8* %617 to i64*
  store i64 %613, i64* %618, align 1
  store %struct.Memory* %loadMem_4011c4, %struct.Memory** %MEMORY
  %loadMem_4011cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 33
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %621 to i64*
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 15
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %624 to i64*
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %626 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %625, i64 0, i64 1
  %YMM1.i378 = bitcast %union.VectorReg* %626 to %"class.std::bitset"*
  %627 = bitcast %"class.std::bitset"* %YMM1.i378 to i8*
  %628 = bitcast %"class.std::bitset"* %YMM1.i378 to i8*
  %629 = load i64, i64* %RBP.i377
  %630 = sub i64 %629, 24
  %631 = load i64, i64* %PC.i376
  %632 = add i64 %631, 5
  store i64 %632, i64* %PC.i376
  %633 = bitcast i8* %628 to double*
  %634 = load double, double* %633, align 1
  %635 = getelementptr inbounds i8, i8* %628, i64 8
  %636 = bitcast i8* %635 to i64*
  %637 = load i64, i64* %636, align 1
  %638 = inttoptr i64 %630 to double*
  %639 = load double, double* %638
  %640 = fmul double %634, %639
  %641 = bitcast i8* %627 to double*
  store double %640, double* %641, align 1
  %642 = getelementptr inbounds i8, i8* %627, i64 8
  %643 = bitcast i8* %642 to i64*
  store i64 %637, i64* %643, align 1
  store %struct.Memory* %loadMem_4011cd, %struct.Memory** %MEMORY
  %loadMem_4011d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 33
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %646 to i64*
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 15
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %649 to i64*
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %651 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %650, i64 0, i64 1
  %XMM1.i375 = bitcast %union.VectorReg* %651 to %union.vec128_t*
  %652 = load i64, i64* %RBP.i374
  %653 = sub i64 %652, 32
  %654 = bitcast %union.vec128_t* %XMM1.i375 to i8*
  %655 = load i64, i64* %PC.i373
  %656 = add i64 %655, 5
  store i64 %656, i64* %PC.i373
  %657 = bitcast i8* %654 to double*
  %658 = load double, double* %657, align 1
  %659 = inttoptr i64 %653 to double*
  store double %658, double* %659
  store %struct.Memory* %loadMem_4011d2, %struct.Memory** %MEMORY
  %loadMem_4011d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 33
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %662 to i64*
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %664 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %663, i64 0, i64 1
  %YMM1.i372 = bitcast %union.VectorReg* %664 to %"class.std::bitset"*
  %665 = bitcast %"class.std::bitset"* %YMM1.i372 to i8*
  %666 = load i64, i64* %PC.i371
  %667 = add i64 %666, 9
  store i64 %667, i64* %PC.i371
  %668 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %669 = bitcast i8* %665 to double*
  store double %668, double* %669, align 1
  %670 = getelementptr inbounds i8, i8* %665, i64 8
  %671 = bitcast i8* %670 to double*
  store double 0.000000e+00, double* %671, align 1
  store %struct.Memory* %loadMem_4011d7, %struct.Memory** %MEMORY
  %loadMem_4011e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 33
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %674 to i64*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 15
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %677 to i64*
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %679 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %678, i64 0, i64 1
  %XMM1.i370 = bitcast %union.VectorReg* %679 to %union.vec128_t*
  %680 = load i64, i64* %RBP.i369
  %681 = sub i64 %680, 40
  %682 = bitcast %union.vec128_t* %XMM1.i370 to i8*
  %683 = load i64, i64* %PC.i368
  %684 = add i64 %683, 5
  store i64 %684, i64* %PC.i368
  %685 = bitcast i8* %682 to double*
  %686 = load double, double* %685, align 1
  %687 = inttoptr i64 %681 to double*
  store double %686, double* %687
  store %struct.Memory* %loadMem_4011e0, %struct.Memory** %MEMORY
  %loadMem_4011e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 33
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %690 to i64*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %692 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %691, i64 0, i64 1
  %YMM1.i367 = bitcast %union.VectorReg* %692 to %"class.std::bitset"*
  %693 = bitcast %"class.std::bitset"* %YMM1.i367 to i8*
  %694 = load i64, i64* %PC.i366
  %695 = add i64 %694, 9
  store i64 %695, i64* %PC.i366
  %696 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %697 = bitcast i8* %693 to double*
  store double %696, double* %697, align 1
  %698 = getelementptr inbounds i8, i8* %693, i64 8
  %699 = bitcast i8* %698 to double*
  store double 0.000000e+00, double* %699, align 1
  store %struct.Memory* %loadMem_4011e5, %struct.Memory** %MEMORY
  %loadMem_4011ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 33
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %702 to i64*
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 15
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %705 to i64*
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %707 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %706, i64 0, i64 1
  %YMM1.i365 = bitcast %union.VectorReg* %707 to %"class.std::bitset"*
  %708 = bitcast %"class.std::bitset"* %YMM1.i365 to i8*
  %709 = bitcast %"class.std::bitset"* %YMM1.i365 to i8*
  %710 = load i64, i64* %RBP.i364
  %711 = sub i64 %710, 24
  %712 = load i64, i64* %PC.i363
  %713 = add i64 %712, 5
  store i64 %713, i64* %PC.i363
  %714 = bitcast i8* %709 to double*
  %715 = load double, double* %714, align 1
  %716 = getelementptr inbounds i8, i8* %709, i64 8
  %717 = bitcast i8* %716 to i64*
  %718 = load i64, i64* %717, align 1
  %719 = inttoptr i64 %711 to double*
  %720 = load double, double* %719
  %721 = fadd double %715, %720
  %722 = bitcast i8* %708 to double*
  store double %721, double* %722, align 1
  %723 = getelementptr inbounds i8, i8* %708, i64 8
  %724 = bitcast i8* %723 to i64*
  store i64 %718, i64* %724, align 1
  store %struct.Memory* %loadMem_4011ee, %struct.Memory** %MEMORY
  %loadMem_4011f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 33
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %727 to i64*
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 15
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %730 to i64*
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %732 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %731, i64 0, i64 1
  %YMM1.i362 = bitcast %union.VectorReg* %732 to %"class.std::bitset"*
  %733 = bitcast %"class.std::bitset"* %YMM1.i362 to i8*
  %734 = bitcast %"class.std::bitset"* %YMM1.i362 to i8*
  %735 = load i64, i64* %RBP.i361
  %736 = sub i64 %735, 32
  %737 = load i64, i64* %PC.i360
  %738 = add i64 %737, 5
  store i64 %738, i64* %PC.i360
  %739 = bitcast i8* %734 to double*
  %740 = load double, double* %739, align 1
  %741 = getelementptr inbounds i8, i8* %734, i64 8
  %742 = bitcast i8* %741 to i64*
  %743 = load i64, i64* %742, align 1
  %744 = inttoptr i64 %736 to double*
  %745 = load double, double* %744
  %746 = fsub double %740, %745
  %747 = bitcast i8* %733 to double*
  store double %746, double* %747, align 1
  %748 = getelementptr inbounds i8, i8* %733, i64 8
  %749 = bitcast i8* %748 to i64*
  store i64 %743, i64* %749, align 1
  store %struct.Memory* %loadMem_4011f3, %struct.Memory** %MEMORY
  %loadMem_4011f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 33
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %752 to i64*
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %754 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %753, i64 0, i64 1
  %XMM1.i359 = bitcast %union.VectorReg* %754 to %union.vec128_t*
  %755 = bitcast %union.vec128_t* %XMM1.i359 to i8*
  %756 = load i64, i64* %PC.i358
  %757 = add i64 %756, 9
  store i64 %757, i64* %PC.i358
  %758 = bitcast i8* %755 to double*
  %759 = load double, double* %758, align 1
  store double %759, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  store %struct.Memory* %loadMem_4011f8, %struct.Memory** %MEMORY
  %loadMem_401201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 33
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %762 to i64*
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %764 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %763, i64 0, i64 1
  %YMM1.i357 = bitcast %union.VectorReg* %764 to %"class.std::bitset"*
  %765 = bitcast %"class.std::bitset"* %YMM1.i357 to i8*
  %766 = load i64, i64* %PC.i356
  %767 = add i64 %766, 9
  store i64 %767, i64* %PC.i356
  %768 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  %769 = bitcast i8* %765 to double*
  store double %768, double* %769, align 1
  %770 = getelementptr inbounds i8, i8* %765, i64 8
  %771 = bitcast i8* %770 to double*
  store double 0.000000e+00, double* %771, align 1
  store %struct.Memory* %loadMem_401201, %struct.Memory** %MEMORY
  %loadMem_40120a = load %struct.Memory*, %struct.Memory** %MEMORY
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 33
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %774 to i64*
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %776 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %775, i64 0, i64 0
  %XMM0.i351 = bitcast %union.VectorReg* %776 to %union.vec128_t*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %778 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %777, i64 0, i64 1
  %XMM1.i352 = bitcast %union.VectorReg* %778 to %union.vec128_t*
  %779 = bitcast %union.vec128_t* %XMM1.i352 to i8*
  %780 = bitcast %union.vec128_t* %XMM0.i351 to i8*
  %781 = load i64, i64* %PC.i350
  %782 = add i64 %781, 4
  store i64 %782, i64* %PC.i350
  %783 = bitcast i8* %779 to double*
  %784 = load double, double* %783, align 1
  %785 = bitcast i8* %780 to double*
  %786 = load double, double* %785, align 1
  %787 = fcmp uno double %784, %786
  br i1 %787, label %788, label %800

; <label>:788:                                    ; preds = %block_.L_4011b8
  %789 = fadd double %784, %786
  %790 = bitcast double %789 to i64
  %791 = and i64 %790, 9221120237041090560
  %792 = icmp eq i64 %791, 9218868437227405312
  %793 = and i64 %790, 2251799813685247
  %794 = icmp ne i64 %793, 0
  %795 = and i1 %792, %794
  br i1 %795, label %796, label %806

; <label>:796:                                    ; preds = %788
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %798 = load i64, i64* %797, align 8
  %799 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %798, %struct.Memory* %loadMem_40120a)
  br label %routine_ucomisd__xmm0___xmm1.exit353

; <label>:800:                                    ; preds = %block_.L_4011b8
  %801 = fcmp ogt double %784, %786
  br i1 %801, label %806, label %802

; <label>:802:                                    ; preds = %800
  %803 = fcmp olt double %784, %786
  br i1 %803, label %806, label %804

; <label>:804:                                    ; preds = %802
  %805 = fcmp oeq double %784, %786
  br i1 %805, label %806, label %813

; <label>:806:                                    ; preds = %804, %802, %800, %788
  %807 = phi i8 [ 0, %800 ], [ 0, %802 ], [ 1, %804 ], [ 1, %788 ]
  %808 = phi i8 [ 0, %800 ], [ 0, %802 ], [ 0, %804 ], [ 1, %788 ]
  %809 = phi i8 [ 0, %800 ], [ 1, %802 ], [ 0, %804 ], [ 1, %788 ]
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %807, i8* %810, align 1
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %808, i8* %811, align 1
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %809, i8* %812, align 1
  br label %813

; <label>:813:                                    ; preds = %806, %804
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %814, align 1
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %815, align 1
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %816, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit353

routine_ucomisd__xmm0___xmm1.exit353:             ; preds = %796, %813
  %817 = phi %struct.Memory* [ %799, %796 ], [ %loadMem_40120a, %813 ]
  store %struct.Memory* %817, %struct.Memory** %MEMORY
  %loadMem_40120e = load %struct.Memory*, %struct.Memory** %MEMORY
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 33
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %820 to i64*
  %821 = load i64, i64* %PC.i349
  %822 = add i64 %821, 17
  %823 = load i64, i64* %PC.i349
  %824 = add i64 %823, 6
  %825 = load i64, i64* %PC.i349
  %826 = add i64 %825, 6
  store i64 %826, i64* %PC.i349
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %828 = load i8, i8* %827, align 1
  %829 = icmp eq i8 %828, 0
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %BRANCH_TAKEN, align 1
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %832 = select i1 %829, i64 %822, i64 %824
  store i64 %832, i64* %831, align 8
  store %struct.Memory* %loadMem_40120e, %struct.Memory** %MEMORY
  %loadBr_40120e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40120e = icmp eq i8 %loadBr_40120e, 1
  br i1 %cmpBr_40120e, label %block_.L_40121f, label %block_401214

block_401214:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit353
  %loadMem_401214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 33
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %835 to i64*
  %836 = load i64, i64* %PC.i348
  %837 = add i64 %836, 11
  %838 = load i64, i64* %PC.i348
  %839 = add i64 %838, 6
  %840 = load i64, i64* %PC.i348
  %841 = add i64 %840, 6
  store i64 %841, i64* %PC.i348
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %843 = load i8, i8* %842, align 1
  store i8 %843, i8* %BRANCH_TAKEN, align 1
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %845 = icmp ne i8 %843, 0
  %846 = select i1 %845, i64 %837, i64 %839
  store i64 %846, i64* %844, align 8
  store %struct.Memory* %loadMem_401214, %struct.Memory** %MEMORY
  %loadBr_401214 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401214 = icmp eq i8 %loadBr_401214, 1
  br i1 %cmpBr_401214, label %block_.L_40121f, label %block_40121a

block_40121a:                                     ; preds = %block_401214
  %loadMem_40121a = load %struct.Memory*, %struct.Memory** %MEMORY
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 33
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %849 to i64*
  %850 = load i64, i64* %PC.i347
  %851 = add i64 %850, 28
  %852 = load i64, i64* %PC.i347
  %853 = add i64 %852, 5
  store i64 %853, i64* %PC.i347
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %851, i64* %854, align 8
  store %struct.Memory* %loadMem_40121a, %struct.Memory** %MEMORY
  br label %block_.L_401236

block_.L_40121f:                                  ; preds = %block_401214, %routine_ucomisd__xmm0___xmm1.exit353
  %loadMem_40121f = load %struct.Memory*, %struct.Memory** %MEMORY
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 33
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %857 to i64*
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %859 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %858, i64 0, i64 0
  %YMM0.i346 = bitcast %union.VectorReg* %859 to %"class.std::bitset"*
  %860 = bitcast %"class.std::bitset"* %YMM0.i346 to i8*
  %861 = load i64, i64* %PC.i345
  %862 = add i64 %861, 9
  store i64 %862, i64* %PC.i345
  %863 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  %864 = bitcast i8* %860 to double*
  store double %863, double* %864, align 1
  %865 = getelementptr inbounds i8, i8* %860, i64 8
  %866 = bitcast i8* %865 to double*
  store double 0.000000e+00, double* %866, align 1
  store %struct.Memory* %loadMem_40121f, %struct.Memory** %MEMORY
  %loadMem_401228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 33
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %869 to i64*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 15
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %872 to i64*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %874 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %873, i64 0, i64 0
  %YMM0.i344 = bitcast %union.VectorReg* %874 to %"class.std::bitset"*
  %875 = bitcast %"class.std::bitset"* %YMM0.i344 to i8*
  %876 = bitcast %"class.std::bitset"* %YMM0.i344 to i8*
  %877 = load i64, i64* %RBP.i343
  %878 = sub i64 %877, 40
  %879 = load i64, i64* %PC.i342
  %880 = add i64 %879, 5
  store i64 %880, i64* %PC.i342
  %881 = bitcast i8* %876 to double*
  %882 = load double, double* %881, align 1
  %883 = getelementptr inbounds i8, i8* %876, i64 8
  %884 = bitcast i8* %883 to i64*
  %885 = load i64, i64* %884, align 1
  %886 = inttoptr i64 %878 to double*
  %887 = load double, double* %886
  %888 = fmul double %882, %887
  %889 = bitcast i8* %875 to double*
  store double %888, double* %889, align 1
  %890 = getelementptr inbounds i8, i8* %875, i64 8
  %891 = bitcast i8* %890 to i64*
  store i64 %885, i64* %891, align 1
  store %struct.Memory* %loadMem_401228, %struct.Memory** %MEMORY
  %loadMem_40122d = load %struct.Memory*, %struct.Memory** %MEMORY
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 33
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %894 to i64*
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %896 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %895, i64 0, i64 0
  %XMM0.i341 = bitcast %union.VectorReg* %896 to %union.vec128_t*
  %897 = bitcast %union.vec128_t* %XMM0.i341 to i8*
  %898 = load i64, i64* %PC.i340
  %899 = add i64 %898, 9
  store i64 %899, i64* %PC.i340
  %900 = bitcast i8* %897 to double*
  %901 = load double, double* %900, align 1
  store double %901, double* bitcast (%G_0x602630_type* @G_0x602630 to double*)
  store %struct.Memory* %loadMem_40122d, %struct.Memory** %MEMORY
  br label %block_.L_401236

block_.L_401236:                                  ; preds = %block_.L_40121f, %block_40121a
  %loadMem_401236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 33
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %904 to i64*
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %906 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %905, i64 0, i64 0
  %YMM0.i339 = bitcast %union.VectorReg* %906 to %"class.std::bitset"*
  %907 = bitcast %"class.std::bitset"* %YMM0.i339 to i8*
  %908 = load i64, i64* %PC.i338
  %909 = add i64 %908, 9
  store i64 %909, i64* %PC.i338
  %910 = load double, double* bitcast (%G_0x602630_type* @G_0x602630 to double*)
  %911 = bitcast i8* %907 to double*
  store double %910, double* %911, align 1
  %912 = getelementptr inbounds i8, i8* %907, i64 8
  %913 = bitcast i8* %912 to double*
  store double 0.000000e+00, double* %913, align 1
  store %struct.Memory* %loadMem_401236, %struct.Memory** %MEMORY
  %loadMem_40123f = load %struct.Memory*, %struct.Memory** %MEMORY
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %915 = getelementptr inbounds %struct.GPR, %struct.GPR* %914, i32 0, i32 33
  %916 = getelementptr inbounds %struct.Reg, %struct.Reg* %915, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %916 to i64*
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %918 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %917, i64 0, i64 0
  %YMM0.i337 = bitcast %union.VectorReg* %918 to %"class.std::bitset"*
  %919 = bitcast %"class.std::bitset"* %YMM0.i337 to i8*
  %920 = bitcast %"class.std::bitset"* %YMM0.i337 to i8*
  %921 = load i64, i64* %PC.i336
  %922 = add i64 %921, 9
  store i64 %922, i64* %PC.i336
  %923 = bitcast i8* %920 to double*
  %924 = load double, double* %923, align 1
  %925 = getelementptr inbounds i8, i8* %920, i64 8
  %926 = bitcast i8* %925 to i64*
  %927 = load i64, i64* %926, align 1
  %928 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %929 = fdiv double %924, %928
  %930 = bitcast i8* %919 to double*
  store double %929, double* %930, align 1
  %931 = getelementptr inbounds i8, i8* %919, i64 8
  %932 = bitcast i8* %931 to i64*
  store i64 %927, i64* %932, align 1
  store %struct.Memory* %loadMem_40123f, %struct.Memory** %MEMORY
  %loadMem_401248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %934 = getelementptr inbounds %struct.GPR, %struct.GPR* %933, i32 0, i32 33
  %935 = getelementptr inbounds %struct.Reg, %struct.Reg* %934, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %935 to i64*
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %937 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %936, i64 0, i64 0
  %XMM0.i335 = bitcast %union.VectorReg* %937 to %union.vec128_t*
  %938 = bitcast %union.vec128_t* %XMM0.i335 to i8*
  %939 = load i64, i64* %PC.i334
  %940 = add i64 %939, 9
  store i64 %940, i64* %PC.i334
  %941 = bitcast i8* %938 to double*
  %942 = load double, double* %941, align 1
  store double %942, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  store %struct.Memory* %loadMem_401248, %struct.Memory** %MEMORY
  %loadMem_401251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 33
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %945 to i64*
  %946 = load i64, i64* %PC.i333
  %947 = add i64 %946, 788
  %948 = load i64, i64* %PC.i333
  %949 = add i64 %948, 5
  store i64 %949, i64* %PC.i333
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %947, i64* %950, align 8
  store %struct.Memory* %loadMem_401251, %struct.Memory** %MEMORY
  br label %block_.L_401565

block_.L_401256:                                  ; preds = %block_401146
  %loadMem_401256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 33
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %953 to i64*
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %955 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %954, i64 0, i64 0
  %YMM0.i332 = bitcast %union.VectorReg* %955 to %"class.std::bitset"*
  %956 = bitcast %"class.std::bitset"* %YMM0.i332 to i8*
  %957 = load i64, i64* %PC.i331
  %958 = add i64 %957, 9
  store i64 %958, i64* %PC.i331
  %959 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  %960 = bitcast i8* %956 to double*
  store double %959, double* %960, align 1
  %961 = getelementptr inbounds i8, i8* %956, i64 8
  %962 = bitcast i8* %961 to double*
  store double 0.000000e+00, double* %962, align 1
  store %struct.Memory* %loadMem_401256, %struct.Memory** %MEMORY
  %loadMem_40125f = load %struct.Memory*, %struct.Memory** %MEMORY
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 33
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %967 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %966, i64 0, i64 1
  %YMM1.i330 = bitcast %union.VectorReg* %967 to %"class.std::bitset"*
  %968 = bitcast %"class.std::bitset"* %YMM1.i330 to i8*
  %969 = load i64, i64* %PC.i329
  %970 = add i64 %969, 9
  store i64 %970, i64* %PC.i329
  %971 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*)
  %972 = bitcast i8* %968 to double*
  store double %971, double* %972, align 1
  %973 = getelementptr inbounds i8, i8* %968, i64 8
  %974 = bitcast i8* %973 to double*
  store double 0.000000e+00, double* %974, align 1
  store %struct.Memory* %loadMem_40125f, %struct.Memory** %MEMORY
  %loadMem_401268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 33
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %977 to i64*
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %979 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %978, i64 0, i64 1
  %YMM1.i328 = bitcast %union.VectorReg* %979 to %"class.std::bitset"*
  %980 = bitcast %"class.std::bitset"* %YMM1.i328 to i8*
  %981 = bitcast %"class.std::bitset"* %YMM1.i328 to i8*
  %982 = load i64, i64* %PC.i327
  %983 = add i64 %982, 9
  store i64 %983, i64* %PC.i327
  %984 = bitcast i8* %981 to double*
  %985 = load double, double* %984, align 1
  %986 = getelementptr inbounds i8, i8* %981, i64 8
  %987 = bitcast i8* %986 to i64*
  %988 = load i64, i64* %987, align 1
  %989 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*)
  %990 = fdiv double %985, %989
  %991 = bitcast i8* %980 to double*
  store double %990, double* %991, align 1
  %992 = getelementptr inbounds i8, i8* %980, i64 8
  %993 = bitcast i8* %992 to i64*
  store i64 %988, i64* %993, align 1
  store %struct.Memory* %loadMem_401268, %struct.Memory** %MEMORY
  %loadMem_401271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 33
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %996 to i64*
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %998 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %997, i64 0, i64 0
  %YMM0.i325 = bitcast %union.VectorReg* %998 to %"class.std::bitset"*
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1000 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %999, i64 0, i64 1
  %XMM1.i326 = bitcast %union.VectorReg* %1000 to %union.vec128_t*
  %1001 = bitcast %"class.std::bitset"* %YMM0.i325 to i8*
  %1002 = bitcast %"class.std::bitset"* %YMM0.i325 to i8*
  %1003 = bitcast %union.vec128_t* %XMM1.i326 to i8*
  %1004 = load i64, i64* %PC.i324
  %1005 = add i64 %1004, 4
  store i64 %1005, i64* %PC.i324
  %1006 = bitcast i8* %1002 to double*
  %1007 = load double, double* %1006, align 1
  %1008 = getelementptr inbounds i8, i8* %1002, i64 8
  %1009 = bitcast i8* %1008 to i64*
  %1010 = load i64, i64* %1009, align 1
  %1011 = bitcast i8* %1003 to double*
  %1012 = load double, double* %1011, align 1
  %1013 = fmul double %1007, %1012
  %1014 = bitcast i8* %1001 to double*
  store double %1013, double* %1014, align 1
  %1015 = getelementptr inbounds i8, i8* %1001, i64 8
  %1016 = bitcast i8* %1015 to i64*
  store i64 %1010, i64* %1016, align 1
  store %struct.Memory* %loadMem_401271, %struct.Memory** %MEMORY
  %loadMem_401275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 33
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %1019 to i64*
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1021 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1020, i64 0, i64 0
  %XMM0.i323 = bitcast %union.VectorReg* %1021 to %union.vec128_t*
  %1022 = bitcast %union.vec128_t* %XMM0.i323 to i8*
  %1023 = load i64, i64* %PC.i322
  %1024 = add i64 %1023, 9
  store i64 %1024, i64* %PC.i322
  %1025 = bitcast i8* %1022 to double*
  %1026 = load double, double* %1025, align 1
  store double %1026, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  store %struct.Memory* %loadMem_401275, %struct.Memory** %MEMORY
  %loadMem_40127e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 33
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %1029 to i64*
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1031 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1030, i64 0, i64 0
  %YMM0.i321 = bitcast %union.VectorReg* %1031 to %"class.std::bitset"*
  %1032 = bitcast %"class.std::bitset"* %YMM0.i321 to i8*
  %1033 = load i64, i64* %PC.i320
  %1034 = add i64 %1033, 9
  store i64 %1034, i64* %PC.i320
  %1035 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %1036 = bitcast i8* %1032 to double*
  store double %1035, double* %1036, align 1
  %1037 = getelementptr inbounds i8, i8* %1032, i64 8
  %1038 = bitcast i8* %1037 to double*
  store double 0.000000e+00, double* %1038, align 1
  store %struct.Memory* %loadMem_40127e, %struct.Memory** %MEMORY
  %loadMem_401287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 33
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %1041 to i64*
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1043 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1042, i64 0, i64 1
  %YMM1.i319 = bitcast %union.VectorReg* %1043 to %"class.std::bitset"*
  %1044 = bitcast %"class.std::bitset"* %YMM1.i319 to i8*
  %1045 = load i64, i64* %PC.i318
  %1046 = add i64 %1045, 9
  store i64 %1046, i64* %PC.i318
  %1047 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*)
  %1048 = bitcast i8* %1044 to double*
  store double %1047, double* %1048, align 1
  %1049 = getelementptr inbounds i8, i8* %1044, i64 8
  %1050 = bitcast i8* %1049 to double*
  store double 0.000000e+00, double* %1050, align 1
  store %struct.Memory* %loadMem_401287, %struct.Memory** %MEMORY
  %loadMem_401290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 33
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %1053 to i64*
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1055 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1054, i64 0, i64 1
  %YMM1.i317 = bitcast %union.VectorReg* %1055 to %"class.std::bitset"*
  %1056 = bitcast %"class.std::bitset"* %YMM1.i317 to i8*
  %1057 = bitcast %"class.std::bitset"* %YMM1.i317 to i8*
  %1058 = load i64, i64* %PC.i316
  %1059 = add i64 %1058, 9
  store i64 %1059, i64* %PC.i316
  %1060 = bitcast i8* %1057 to double*
  %1061 = load double, double* %1060, align 1
  %1062 = getelementptr inbounds i8, i8* %1057, i64 8
  %1063 = bitcast i8* %1062 to i64*
  %1064 = load i64, i64* %1063, align 1
  %1065 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*)
  %1066 = fdiv double %1061, %1065
  %1067 = bitcast i8* %1056 to double*
  store double %1066, double* %1067, align 1
  %1068 = getelementptr inbounds i8, i8* %1056, i64 8
  %1069 = bitcast i8* %1068 to i64*
  store i64 %1064, i64* %1069, align 1
  store %struct.Memory* %loadMem_401290, %struct.Memory** %MEMORY
  %loadMem_401299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 33
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %1072 to i64*
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1074 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1073, i64 0, i64 0
  %YMM0.i314 = bitcast %union.VectorReg* %1074 to %"class.std::bitset"*
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1076 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1075, i64 0, i64 1
  %XMM1.i315 = bitcast %union.VectorReg* %1076 to %union.vec128_t*
  %1077 = bitcast %"class.std::bitset"* %YMM0.i314 to i8*
  %1078 = bitcast %"class.std::bitset"* %YMM0.i314 to i8*
  %1079 = bitcast %union.vec128_t* %XMM1.i315 to i8*
  %1080 = load i64, i64* %PC.i313
  %1081 = add i64 %1080, 4
  store i64 %1081, i64* %PC.i313
  %1082 = bitcast i8* %1078 to double*
  %1083 = load double, double* %1082, align 1
  %1084 = getelementptr inbounds i8, i8* %1078, i64 8
  %1085 = bitcast i8* %1084 to i64*
  %1086 = load i64, i64* %1085, align 1
  %1087 = bitcast i8* %1079 to double*
  %1088 = load double, double* %1087, align 1
  %1089 = fmul double %1083, %1088
  %1090 = bitcast i8* %1077 to double*
  store double %1089, double* %1090, align 1
  %1091 = getelementptr inbounds i8, i8* %1077, i64 8
  %1092 = bitcast i8* %1091 to i64*
  store i64 %1086, i64* %1092, align 1
  store %struct.Memory* %loadMem_401299, %struct.Memory** %MEMORY
  %loadMem_40129d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 33
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %1095 to i64*
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1097 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1096, i64 0, i64 0
  %XMM0.i312 = bitcast %union.VectorReg* %1097 to %union.vec128_t*
  %1098 = bitcast %union.vec128_t* %XMM0.i312 to i8*
  %1099 = load i64, i64* %PC.i311
  %1100 = add i64 %1099, 9
  store i64 %1100, i64* %PC.i311
  %1101 = bitcast i8* %1098 to double*
  %1102 = load double, double* %1101, align 1
  store double %1102, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  store %struct.Memory* %loadMem_40129d, %struct.Memory** %MEMORY
  %loadMem_4012a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 33
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %1105 to i64*
  %1106 = load i64, i64* %PC.i310
  %1107 = add i64 %1106, 703
  %1108 = load i64, i64* %PC.i310
  %1109 = add i64 %1108, 5
  store i64 %1109, i64* %PC.i310
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1107, i64* %1110, align 8
  store %struct.Memory* %loadMem_4012a6, %struct.Memory** %MEMORY
  br label %block_.L_401565

block_.L_4012ab:                                  ; preds = %entry
  %loadMem_4012ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 33
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %1113 to i64*
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1115 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1114, i64 0, i64 0
  %YMM0.i308 = bitcast %union.VectorReg* %1115 to %"class.std::bitset"*
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1117 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1116, i64 0, i64 0
  %XMM0.i309 = bitcast %union.VectorReg* %1117 to %union.vec128_t*
  %1118 = bitcast %"class.std::bitset"* %YMM0.i308 to i8*
  %1119 = bitcast %"class.std::bitset"* %YMM0.i308 to i8*
  %1120 = bitcast %union.vec128_t* %XMM0.i309 to i8*
  %1121 = load i64, i64* %PC.i307
  %1122 = add i64 %1121, 3
  store i64 %1122, i64* %PC.i307
  %1123 = bitcast i8* %1119 to i64*
  %1124 = load i64, i64* %1123, align 1
  %1125 = getelementptr inbounds i8, i8* %1119, i64 8
  %1126 = bitcast i8* %1125 to i64*
  %1127 = load i64, i64* %1126, align 1
  %1128 = bitcast i8* %1120 to i64*
  %1129 = load i64, i64* %1128, align 1
  %1130 = getelementptr inbounds i8, i8* %1120, i64 8
  %1131 = bitcast i8* %1130 to i64*
  %1132 = load i64, i64* %1131, align 1
  %1133 = xor i64 %1129, %1124
  %1134 = xor i64 %1132, %1127
  %1135 = trunc i64 %1133 to i32
  %1136 = lshr i64 %1133, 32
  %1137 = trunc i64 %1136 to i32
  %1138 = bitcast i8* %1118 to i32*
  store i32 %1135, i32* %1138, align 1
  %1139 = getelementptr inbounds i8, i8* %1118, i64 4
  %1140 = bitcast i8* %1139 to i32*
  store i32 %1137, i32* %1140, align 1
  %1141 = trunc i64 %1134 to i32
  %1142 = getelementptr inbounds i8, i8* %1118, i64 8
  %1143 = bitcast i8* %1142 to i32*
  store i32 %1141, i32* %1143, align 1
  %1144 = lshr i64 %1134, 32
  %1145 = trunc i64 %1144 to i32
  %1146 = getelementptr inbounds i8, i8* %1118, i64 12
  %1147 = bitcast i8* %1146 to i32*
  store i32 %1145, i32* %1147, align 1
  store %struct.Memory* %loadMem_4012ab, %struct.Memory** %MEMORY
  %loadMem_4012ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 33
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %1150 to i64*
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1152 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1151, i64 0, i64 1
  %YMM1.i306 = bitcast %union.VectorReg* %1152 to %"class.std::bitset"*
  %1153 = bitcast %"class.std::bitset"* %YMM1.i306 to i8*
  %1154 = load i64, i64* %PC.i305
  %1155 = add i64 %1154, 9
  store i64 %1155, i64* %PC.i305
  %1156 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %1157 = bitcast i8* %1153 to double*
  store double %1156, double* %1157, align 1
  %1158 = getelementptr inbounds i8, i8* %1153, i64 8
  %1159 = bitcast i8* %1158 to double*
  store double 0.000000e+00, double* %1159, align 1
  store %struct.Memory* %loadMem_4012ae, %struct.Memory** %MEMORY
  %loadMem_4012b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1161 = getelementptr inbounds %struct.GPR, %struct.GPR* %1160, i32 0, i32 33
  %1162 = getelementptr inbounds %struct.Reg, %struct.Reg* %1161, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %1162 to i64*
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1164 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1163, i64 0, i64 0
  %XMM0.i299 = bitcast %union.VectorReg* %1164 to %union.vec128_t*
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1166 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1165, i64 0, i64 1
  %XMM1.i300 = bitcast %union.VectorReg* %1166 to %union.vec128_t*
  %1167 = bitcast %union.vec128_t* %XMM1.i300 to i8*
  %1168 = bitcast %union.vec128_t* %XMM0.i299 to i8*
  %1169 = load i64, i64* %PC.i298
  %1170 = add i64 %1169, 4
  store i64 %1170, i64* %PC.i298
  %1171 = bitcast i8* %1167 to double*
  %1172 = load double, double* %1171, align 1
  %1173 = bitcast i8* %1168 to double*
  %1174 = load double, double* %1173, align 1
  %1175 = fcmp uno double %1172, %1174
  br i1 %1175, label %1176, label %1188

; <label>:1176:                                   ; preds = %block_.L_4012ab
  %1177 = fadd double %1172, %1174
  %1178 = bitcast double %1177 to i64
  %1179 = and i64 %1178, 9221120237041090560
  %1180 = icmp eq i64 %1179, 9218868437227405312
  %1181 = and i64 %1178, 2251799813685247
  %1182 = icmp ne i64 %1181, 0
  %1183 = and i1 %1180, %1182
  br i1 %1183, label %1184, label %1194

; <label>:1184:                                   ; preds = %1176
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1186 = load i64, i64* %1185, align 8
  %1187 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1186, %struct.Memory* %loadMem_4012b7)
  br label %routine_ucomisd__xmm0___xmm1.exit301

; <label>:1188:                                   ; preds = %block_.L_4012ab
  %1189 = fcmp ogt double %1172, %1174
  br i1 %1189, label %1194, label %1190

; <label>:1190:                                   ; preds = %1188
  %1191 = fcmp olt double %1172, %1174
  br i1 %1191, label %1194, label %1192

; <label>:1192:                                   ; preds = %1190
  %1193 = fcmp oeq double %1172, %1174
  br i1 %1193, label %1194, label %1201

; <label>:1194:                                   ; preds = %1192, %1190, %1188, %1176
  %1195 = phi i8 [ 0, %1188 ], [ 0, %1190 ], [ 1, %1192 ], [ 1, %1176 ]
  %1196 = phi i8 [ 0, %1188 ], [ 0, %1190 ], [ 0, %1192 ], [ 1, %1176 ]
  %1197 = phi i8 [ 0, %1188 ], [ 1, %1190 ], [ 0, %1192 ], [ 1, %1176 ]
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1195, i8* %1198, align 1
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1196, i8* %1199, align 1
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1197, i8* %1200, align 1
  br label %1201

; <label>:1201:                                   ; preds = %1194, %1192
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1202, align 1
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1203, align 1
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1204, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit301

routine_ucomisd__xmm0___xmm1.exit301:             ; preds = %1184, %1201
  %1205 = phi %struct.Memory* [ %1187, %1184 ], [ %loadMem_4012b7, %1201 ]
  store %struct.Memory* %1205, %struct.Memory** %MEMORY
  %loadMem_4012bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 33
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %1208 to i64*
  %1209 = load i64, i64* %PC.i297
  %1210 = add i64 %1209, 17
  %1211 = load i64, i64* %PC.i297
  %1212 = add i64 %1211, 6
  %1213 = load i64, i64* %PC.i297
  %1214 = add i64 %1213, 6
  store i64 %1214, i64* %PC.i297
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1216 = load i8, i8* %1215, align 1
  %1217 = icmp eq i8 %1216, 0
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %BRANCH_TAKEN, align 1
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1220 = select i1 %1217, i64 %1210, i64 %1212
  store i64 %1220, i64* %1219, align 8
  store %struct.Memory* %loadMem_4012bb, %struct.Memory** %MEMORY
  %loadBr_4012bb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4012bb = icmp eq i8 %loadBr_4012bb, 1
  br i1 %cmpBr_4012bb, label %block_.L_4012cc, label %block_4012c1

block_4012c1:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit301
  %loadMem_4012c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1222 = getelementptr inbounds %struct.GPR, %struct.GPR* %1221, i32 0, i32 33
  %1223 = getelementptr inbounds %struct.Reg, %struct.Reg* %1222, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %1223 to i64*
  %1224 = load i64, i64* %PC.i296
  %1225 = add i64 %1224, 11
  %1226 = load i64, i64* %PC.i296
  %1227 = add i64 %1226, 6
  %1228 = load i64, i64* %PC.i296
  %1229 = add i64 %1228, 6
  store i64 %1229, i64* %PC.i296
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1231 = load i8, i8* %1230, align 1
  store i8 %1231, i8* %BRANCH_TAKEN, align 1
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1233 = icmp ne i8 %1231, 0
  %1234 = select i1 %1233, i64 %1225, i64 %1227
  store i64 %1234, i64* %1232, align 8
  store %struct.Memory* %loadMem_4012c1, %struct.Memory** %MEMORY
  %loadBr_4012c1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4012c1 = icmp eq i8 %loadBr_4012c1, 1
  br i1 %cmpBr_4012c1, label %block_.L_4012cc, label %block_4012c7

block_4012c7:                                     ; preds = %block_4012c1
  %loadMem_4012c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 33
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %1237 to i64*
  %1238 = load i64, i64* %PC.i295
  %1239 = add i64 %1238, 409
  %1240 = load i64, i64* %PC.i295
  %1241 = add i64 %1240, 5
  store i64 %1241, i64* %PC.i295
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1239, i64* %1242, align 8
  store %struct.Memory* %loadMem_4012c7, %struct.Memory** %MEMORY
  br label %block_.L_401460

block_.L_4012cc:                                  ; preds = %block_4012c1, %routine_ucomisd__xmm0___xmm1.exit301
  %loadMem_4012cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1244 = getelementptr inbounds %struct.GPR, %struct.GPR* %1243, i32 0, i32 33
  %1245 = getelementptr inbounds %struct.Reg, %struct.Reg* %1244, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %1245 to i64*
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1247 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1246, i64 0, i64 0
  %YMM0.i293 = bitcast %union.VectorReg* %1247 to %"class.std::bitset"*
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1249 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1248, i64 0, i64 0
  %XMM0.i294 = bitcast %union.VectorReg* %1249 to %union.vec128_t*
  %1250 = bitcast %"class.std::bitset"* %YMM0.i293 to i8*
  %1251 = bitcast %"class.std::bitset"* %YMM0.i293 to i8*
  %1252 = bitcast %union.vec128_t* %XMM0.i294 to i8*
  %1253 = load i64, i64* %PC.i292
  %1254 = add i64 %1253, 3
  store i64 %1254, i64* %PC.i292
  %1255 = bitcast i8* %1251 to i64*
  %1256 = load i64, i64* %1255, align 1
  %1257 = getelementptr inbounds i8, i8* %1251, i64 8
  %1258 = bitcast i8* %1257 to i64*
  %1259 = load i64, i64* %1258, align 1
  %1260 = bitcast i8* %1252 to i64*
  %1261 = load i64, i64* %1260, align 1
  %1262 = getelementptr inbounds i8, i8* %1252, i64 8
  %1263 = bitcast i8* %1262 to i64*
  %1264 = load i64, i64* %1263, align 1
  %1265 = xor i64 %1261, %1256
  %1266 = xor i64 %1264, %1259
  %1267 = trunc i64 %1265 to i32
  %1268 = lshr i64 %1265, 32
  %1269 = trunc i64 %1268 to i32
  %1270 = bitcast i8* %1250 to i32*
  store i32 %1267, i32* %1270, align 1
  %1271 = getelementptr inbounds i8, i8* %1250, i64 4
  %1272 = bitcast i8* %1271 to i32*
  store i32 %1269, i32* %1272, align 1
  %1273 = trunc i64 %1266 to i32
  %1274 = getelementptr inbounds i8, i8* %1250, i64 8
  %1275 = bitcast i8* %1274 to i32*
  store i32 %1273, i32* %1275, align 1
  %1276 = lshr i64 %1266, 32
  %1277 = trunc i64 %1276 to i32
  %1278 = getelementptr inbounds i8, i8* %1250, i64 12
  %1279 = bitcast i8* %1278 to i32*
  store i32 %1277, i32* %1279, align 1
  store %struct.Memory* %loadMem_4012cc, %struct.Memory** %MEMORY
  %loadMem_4012cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 33
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %1282 to i64*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1284 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1283, i64 0, i64 1
  %YMM1.i291 = bitcast %union.VectorReg* %1284 to %"class.std::bitset"*
  %1285 = bitcast %"class.std::bitset"* %YMM1.i291 to i8*
  %1286 = load i64, i64* %PC.i290
  %1287 = add i64 %1286, 9
  store i64 %1287, i64* %PC.i290
  %1288 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  %1289 = bitcast i8* %1285 to double*
  store double %1288, double* %1289, align 1
  %1290 = getelementptr inbounds i8, i8* %1285, i64 8
  %1291 = bitcast i8* %1290 to double*
  store double 0.000000e+00, double* %1291, align 1
  store %struct.Memory* %loadMem_4012cf, %struct.Memory** %MEMORY
  %loadMem_4012d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1293 = getelementptr inbounds %struct.GPR, %struct.GPR* %1292, i32 0, i32 33
  %1294 = getelementptr inbounds %struct.Reg, %struct.Reg* %1293, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %1294 to i64*
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1296 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1295, i64 0, i64 0
  %XMM0.i287 = bitcast %union.VectorReg* %1296 to %union.vec128_t*
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1298 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1297, i64 0, i64 1
  %XMM1.i288 = bitcast %union.VectorReg* %1298 to %union.vec128_t*
  %1299 = bitcast %union.vec128_t* %XMM1.i288 to i8*
  %1300 = bitcast %union.vec128_t* %XMM0.i287 to i8*
  %1301 = load i64, i64* %PC.i286
  %1302 = add i64 %1301, 4
  store i64 %1302, i64* %PC.i286
  %1303 = bitcast i8* %1299 to double*
  %1304 = load double, double* %1303, align 1
  %1305 = bitcast i8* %1300 to double*
  %1306 = load double, double* %1305, align 1
  %1307 = fcmp uno double %1304, %1306
  br i1 %1307, label %1308, label %1320

; <label>:1308:                                   ; preds = %block_.L_4012cc
  %1309 = fadd double %1304, %1306
  %1310 = bitcast double %1309 to i64
  %1311 = and i64 %1310, 9221120237041090560
  %1312 = icmp eq i64 %1311, 9218868437227405312
  %1313 = and i64 %1310, 2251799813685247
  %1314 = icmp ne i64 %1313, 0
  %1315 = and i1 %1312, %1314
  br i1 %1315, label %1316, label %1326

; <label>:1316:                                   ; preds = %1308
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1318 = load i64, i64* %1317, align 8
  %1319 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1318, %struct.Memory* %loadMem_4012d8)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:1320:                                   ; preds = %block_.L_4012cc
  %1321 = fcmp ogt double %1304, %1306
  br i1 %1321, label %1326, label %1322

; <label>:1322:                                   ; preds = %1320
  %1323 = fcmp olt double %1304, %1306
  br i1 %1323, label %1326, label %1324

; <label>:1324:                                   ; preds = %1322
  %1325 = fcmp oeq double %1304, %1306
  br i1 %1325, label %1326, label %1333

; <label>:1326:                                   ; preds = %1324, %1322, %1320, %1308
  %1327 = phi i8 [ 0, %1320 ], [ 0, %1322 ], [ 1, %1324 ], [ 1, %1308 ]
  %1328 = phi i8 [ 0, %1320 ], [ 0, %1322 ], [ 0, %1324 ], [ 1, %1308 ]
  %1329 = phi i8 [ 0, %1320 ], [ 1, %1322 ], [ 0, %1324 ], [ 1, %1308 ]
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1327, i8* %1330, align 1
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1328, i8* %1331, align 1
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1329, i8* %1332, align 1
  br label %1333

; <label>:1333:                                   ; preds = %1326, %1324
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1334, align 1
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1335, align 1
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1336, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %1316, %1333
  %1337 = phi %struct.Memory* [ %1319, %1316 ], [ %loadMem_4012d8, %1333 ]
  store %struct.Memory* %1337, %struct.Memory** %MEMORY
  %loadMem_4012dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 33
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %1340 to i64*
  %1341 = load i64, i64* %PC.i285
  %1342 = add i64 %1341, 52
  %1343 = load i64, i64* %PC.i285
  %1344 = add i64 %1343, 6
  %1345 = load i64, i64* %PC.i285
  %1346 = add i64 %1345, 6
  store i64 %1346, i64* %PC.i285
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1348 = load i8, i8* %1347, align 1
  %1349 = icmp eq i8 %1348, 0
  %1350 = zext i1 %1349 to i8
  store i8 %1350, i8* %BRANCH_TAKEN, align 1
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1352 = select i1 %1349, i64 %1342, i64 %1344
  store i64 %1352, i64* %1351, align 8
  store %struct.Memory* %loadMem_4012dc, %struct.Memory** %MEMORY
  %loadBr_4012dc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4012dc = icmp eq i8 %loadBr_4012dc, 1
  br i1 %cmpBr_4012dc, label %block_.L_401310, label %block_4012e2

block_4012e2:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_4012e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 33
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %1355 to i64*
  %1356 = load i64, i64* %PC.i284
  %1357 = add i64 %1356, 46
  %1358 = load i64, i64* %PC.i284
  %1359 = add i64 %1358, 6
  %1360 = load i64, i64* %PC.i284
  %1361 = add i64 %1360, 6
  store i64 %1361, i64* %PC.i284
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1363 = load i8, i8* %1362, align 1
  store i8 %1363, i8* %BRANCH_TAKEN, align 1
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1365 = icmp ne i8 %1363, 0
  %1366 = select i1 %1365, i64 %1357, i64 %1359
  store i64 %1366, i64* %1364, align 8
  store %struct.Memory* %loadMem_4012e2, %struct.Memory** %MEMORY
  %loadBr_4012e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4012e2 = icmp eq i8 %loadBr_4012e2, 1
  br i1 %cmpBr_4012e2, label %block_.L_401310, label %block_4012e8

block_4012e8:                                     ; preds = %block_4012e2
  %loadMem_4012e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 33
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %1369 to i64*
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1371 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1370, i64 0, i64 0
  %YMM0.i282 = bitcast %union.VectorReg* %1371 to %"class.std::bitset"*
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1373 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1372, i64 0, i64 0
  %XMM0.i283 = bitcast %union.VectorReg* %1373 to %union.vec128_t*
  %1374 = bitcast %"class.std::bitset"* %YMM0.i282 to i8*
  %1375 = bitcast %"class.std::bitset"* %YMM0.i282 to i8*
  %1376 = bitcast %union.vec128_t* %XMM0.i283 to i8*
  %1377 = load i64, i64* %PC.i281
  %1378 = add i64 %1377, 3
  store i64 %1378, i64* %PC.i281
  %1379 = bitcast i8* %1375 to i64*
  %1380 = load i64, i64* %1379, align 1
  %1381 = getelementptr inbounds i8, i8* %1375, i64 8
  %1382 = bitcast i8* %1381 to i64*
  %1383 = load i64, i64* %1382, align 1
  %1384 = bitcast i8* %1376 to i64*
  %1385 = load i64, i64* %1384, align 1
  %1386 = getelementptr inbounds i8, i8* %1376, i64 8
  %1387 = bitcast i8* %1386 to i64*
  %1388 = load i64, i64* %1387, align 1
  %1389 = xor i64 %1385, %1380
  %1390 = xor i64 %1388, %1383
  %1391 = trunc i64 %1389 to i32
  %1392 = lshr i64 %1389, 32
  %1393 = trunc i64 %1392 to i32
  %1394 = bitcast i8* %1374 to i32*
  store i32 %1391, i32* %1394, align 1
  %1395 = getelementptr inbounds i8, i8* %1374, i64 4
  %1396 = bitcast i8* %1395 to i32*
  store i32 %1393, i32* %1396, align 1
  %1397 = trunc i64 %1390 to i32
  %1398 = getelementptr inbounds i8, i8* %1374, i64 8
  %1399 = bitcast i8* %1398 to i32*
  store i32 %1397, i32* %1399, align 1
  %1400 = lshr i64 %1390, 32
  %1401 = trunc i64 %1400 to i32
  %1402 = getelementptr inbounds i8, i8* %1374, i64 12
  %1403 = bitcast i8* %1402 to i32*
  store i32 %1401, i32* %1403, align 1
  store %struct.Memory* %loadMem_4012e8, %struct.Memory** %MEMORY
  %loadMem_4012eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 33
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %1406 to i64*
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1408 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1407, i64 0, i64 0
  %XMM0.i280 = bitcast %union.VectorReg* %1408 to %union.vec128_t*
  %1409 = bitcast %union.vec128_t* %XMM0.i280 to i8*
  %1410 = load i64, i64* %PC.i279
  %1411 = add i64 %1410, 9
  store i64 %1411, i64* %PC.i279
  %1412 = bitcast i8* %1409 to double*
  %1413 = load double, double* %1412, align 1
  store double %1413, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  store %struct.Memory* %loadMem_4012eb, %struct.Memory** %MEMORY
  %loadMem_4012f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 33
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %1416 to i64*
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1418 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1417, i64 0, i64 0
  %YMM0.i278 = bitcast %union.VectorReg* %1418 to %"class.std::bitset"*
  %1419 = bitcast %"class.std::bitset"* %YMM0.i278 to i8*
  %1420 = load i64, i64* %PC.i277
  %1421 = add i64 %1420, 9
  store i64 %1421, i64* %PC.i277
  %1422 = load double, double* bitcast (%G_0x602630_type* @G_0x602630 to double*)
  %1423 = bitcast i8* %1419 to double*
  store double %1422, double* %1423, align 1
  %1424 = getelementptr inbounds i8, i8* %1419, i64 8
  %1425 = bitcast i8* %1424 to double*
  store double 0.000000e+00, double* %1425, align 1
  store %struct.Memory* %loadMem_4012f4, %struct.Memory** %MEMORY
  %loadMem_4012fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 33
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %1428 to i64*
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1430 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1429, i64 0, i64 0
  %YMM0.i276 = bitcast %union.VectorReg* %1430 to %"class.std::bitset"*
  %1431 = bitcast %"class.std::bitset"* %YMM0.i276 to i8*
  %1432 = bitcast %"class.std::bitset"* %YMM0.i276 to i8*
  %1433 = load i64, i64* %PC.i275
  %1434 = add i64 %1433, 9
  store i64 %1434, i64* %PC.i275
  %1435 = bitcast i8* %1432 to double*
  %1436 = load double, double* %1435, align 1
  %1437 = getelementptr inbounds i8, i8* %1432, i64 8
  %1438 = bitcast i8* %1437 to i64*
  %1439 = load i64, i64* %1438, align 1
  %1440 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %1441 = fdiv double %1436, %1440
  %1442 = bitcast i8* %1431 to double*
  store double %1441, double* %1442, align 1
  %1443 = getelementptr inbounds i8, i8* %1431, i64 8
  %1444 = bitcast i8* %1443 to i64*
  store i64 %1439, i64* %1444, align 1
  store %struct.Memory* %loadMem_4012fd, %struct.Memory** %MEMORY
  %loadMem_401306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1446 = getelementptr inbounds %struct.GPR, %struct.GPR* %1445, i32 0, i32 33
  %1447 = getelementptr inbounds %struct.Reg, %struct.Reg* %1446, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %1447 to i64*
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 15
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %1450 to i64*
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1452 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1451, i64 0, i64 0
  %XMM0.i274 = bitcast %union.VectorReg* %1452 to %union.vec128_t*
  %1453 = load i64, i64* %RBP.i273
  %1454 = sub i64 %1453, 24
  %1455 = bitcast %union.vec128_t* %XMM0.i274 to i8*
  %1456 = load i64, i64* %PC.i272
  %1457 = add i64 %1456, 5
  store i64 %1457, i64* %PC.i272
  %1458 = bitcast i8* %1455 to double*
  %1459 = load double, double* %1458, align 1
  %1460 = inttoptr i64 %1454 to double*
  store double %1459, double* %1460
  store %struct.Memory* %loadMem_401306, %struct.Memory** %MEMORY
  %loadMem_40130b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 33
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %1463 to i64*
  %1464 = load i64, i64* %PC.i271
  %1465 = add i64 %1464, 68
  %1466 = load i64, i64* %PC.i271
  %1467 = add i64 %1466, 5
  store i64 %1467, i64* %PC.i271
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1465, i64* %1468, align 8
  store %struct.Memory* %loadMem_40130b, %struct.Memory** %MEMORY
  br label %block_.L_40134f

block_.L_401310:                                  ; preds = %block_4012e2, %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_401310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 33
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %1471 to i64*
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1473 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1472, i64 0, i64 0
  %YMM0.i270 = bitcast %union.VectorReg* %1473 to %"class.std::bitset"*
  %1474 = bitcast %"class.std::bitset"* %YMM0.i270 to i8*
  %1475 = load i64, i64* %PC.i269
  %1476 = add i64 %1475, 9
  store i64 %1476, i64* %PC.i269
  %1477 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  %1478 = bitcast i8* %1474 to double*
  store double %1477, double* %1478, align 1
  %1479 = getelementptr inbounds i8, i8* %1474, i64 8
  %1480 = bitcast i8* %1479 to double*
  store double 0.000000e+00, double* %1480, align 1
  store %struct.Memory* %loadMem_401310, %struct.Memory** %MEMORY
  %loadMem_401319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1482 = getelementptr inbounds %struct.GPR, %struct.GPR* %1481, i32 0, i32 33
  %1483 = getelementptr inbounds %struct.Reg, %struct.Reg* %1482, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %1483 to i64*
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1485 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1484, i64 0, i64 0
  %YMM0.i268 = bitcast %union.VectorReg* %1485 to %"class.std::bitset"*
  %1486 = bitcast %"class.std::bitset"* %YMM0.i268 to i8*
  %1487 = bitcast %"class.std::bitset"* %YMM0.i268 to i8*
  %1488 = load i64, i64* %PC.i267
  %1489 = add i64 %1488, 9
  store i64 %1489, i64* %PC.i267
  %1490 = bitcast i8* %1487 to double*
  %1491 = load double, double* %1490, align 1
  %1492 = getelementptr inbounds i8, i8* %1487, i64 8
  %1493 = bitcast i8* %1492 to i64*
  %1494 = load i64, i64* %1493, align 1
  %1495 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %1496 = fsub double %1491, %1495
  %1497 = bitcast i8* %1486 to double*
  store double %1496, double* %1497, align 1
  %1498 = getelementptr inbounds i8, i8* %1486, i64 8
  %1499 = bitcast i8* %1498 to i64*
  store i64 %1494, i64* %1499, align 1
  store %struct.Memory* %loadMem_401319, %struct.Memory** %MEMORY
  %loadMem_401322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1501 = getelementptr inbounds %struct.GPR, %struct.GPR* %1500, i32 0, i32 33
  %1502 = getelementptr inbounds %struct.Reg, %struct.Reg* %1501, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %1502 to i64*
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1504 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1503, i64 0, i64 0
  %YMM0.i266 = bitcast %union.VectorReg* %1504 to %"class.std::bitset"*
  %1505 = bitcast %"class.std::bitset"* %YMM0.i266 to i8*
  %1506 = bitcast %"class.std::bitset"* %YMM0.i266 to i8*
  %1507 = load i64, i64* %PC.i265
  %1508 = add i64 %1507, 9
  store i64 %1508, i64* %PC.i265
  %1509 = bitcast i8* %1506 to double*
  %1510 = load double, double* %1509, align 1
  %1511 = getelementptr inbounds i8, i8* %1506, i64 8
  %1512 = bitcast i8* %1511 to i64*
  %1513 = load i64, i64* %1512, align 1
  %1514 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %1515 = fdiv double %1510, %1514
  %1516 = bitcast i8* %1505 to double*
  store double %1515, double* %1516, align 1
  %1517 = getelementptr inbounds i8, i8* %1505, i64 8
  %1518 = bitcast i8* %1517 to i64*
  store i64 %1513, i64* %1518, align 1
  store %struct.Memory* %loadMem_401322, %struct.Memory** %MEMORY
  %loadMem_40132b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 33
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %1521 to i64*
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1523 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1522, i64 0, i64 1
  %YMM1.i264 = bitcast %union.VectorReg* %1523 to %"class.std::bitset"*
  %1524 = bitcast %"class.std::bitset"* %YMM1.i264 to i8*
  %1525 = load i64, i64* %PC.i263
  %1526 = add i64 %1525, 9
  store i64 %1526, i64* %PC.i263
  %1527 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %1528 = bitcast i8* %1524 to double*
  store double %1527, double* %1528, align 1
  %1529 = getelementptr inbounds i8, i8* %1524, i64 8
  %1530 = bitcast i8* %1529 to double*
  store double 0.000000e+00, double* %1530, align 1
  store %struct.Memory* %loadMem_40132b, %struct.Memory** %MEMORY
  %loadMem_401334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 33
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %1533 to i64*
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 15
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %1536 to i64*
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1538 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1537, i64 0, i64 0
  %XMM0.i262 = bitcast %union.VectorReg* %1538 to %union.vec128_t*
  %1539 = load i64, i64* %RBP.i261
  %1540 = sub i64 %1539, 56
  %1541 = bitcast %union.vec128_t* %XMM0.i262 to i8*
  %1542 = load i64, i64* %PC.i260
  %1543 = add i64 %1542, 5
  store i64 %1543, i64* %PC.i260
  %1544 = bitcast i8* %1541 to double*
  %1545 = load double, double* %1544, align 1
  %1546 = inttoptr i64 %1540 to double*
  store double %1545, double* %1546
  store %struct.Memory* %loadMem_401334, %struct.Memory** %MEMORY
  %loadMem_401339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 33
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %1549 to i64*
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1551 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1550, i64 0, i64 0
  %YMM0.i258 = bitcast %union.VectorReg* %1551 to %"class.std::bitset"*
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1553 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1552, i64 0, i64 1
  %XMM1.i259 = bitcast %union.VectorReg* %1553 to %union.vec128_t*
  %1554 = bitcast %"class.std::bitset"* %YMM0.i258 to i8*
  %1555 = bitcast %union.vec128_t* %XMM1.i259 to i8*
  %1556 = load i64, i64* %PC.i257
  %1557 = add i64 %1556, 3
  store i64 %1557, i64* %PC.i257
  %1558 = bitcast i8* %1555 to <2 x i32>*
  %1559 = load <2 x i32>, <2 x i32>* %1558, align 1
  %1560 = getelementptr inbounds i8, i8* %1555, i64 8
  %1561 = bitcast i8* %1560 to <2 x i32>*
  %1562 = load <2 x i32>, <2 x i32>* %1561, align 1
  %1563 = extractelement <2 x i32> %1559, i32 0
  %1564 = bitcast i8* %1554 to i32*
  store i32 %1563, i32* %1564, align 1
  %1565 = extractelement <2 x i32> %1559, i32 1
  %1566 = getelementptr inbounds i8, i8* %1554, i64 4
  %1567 = bitcast i8* %1566 to i32*
  store i32 %1565, i32* %1567, align 1
  %1568 = extractelement <2 x i32> %1562, i32 0
  %1569 = getelementptr inbounds i8, i8* %1554, i64 8
  %1570 = bitcast i8* %1569 to i32*
  store i32 %1568, i32* %1570, align 1
  %1571 = extractelement <2 x i32> %1562, i32 1
  %1572 = getelementptr inbounds i8, i8* %1554, i64 12
  %1573 = bitcast i8* %1572 to i32*
  store i32 %1571, i32* %1573, align 1
  store %struct.Memory* %loadMem_401339, %struct.Memory** %MEMORY
  %loadMem1_40133c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 33
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %1576 to i64*
  %1577 = load i64, i64* %PC.i256
  %1578 = add i64 %1577, -3356
  %1579 = load i64, i64* %PC.i256
  %1580 = add i64 %1579, 5
  %1581 = load i64, i64* %PC.i256
  %1582 = add i64 %1581, 5
  store i64 %1582, i64* %PC.i256
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1584 = load i64, i64* %1583, align 8
  %1585 = add i64 %1584, -8
  %1586 = inttoptr i64 %1585 to i64*
  store i64 %1580, i64* %1586
  store i64 %1585, i64* %1583, align 8
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1578, i64* %1587, align 8
  store %struct.Memory* %loadMem1_40133c, %struct.Memory** %MEMORY
  %loadMem2_40133c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40133c = load i64, i64* %3
  %call2_40133c = call %struct.Memory* @ext_sin(%struct.State* %0, i64 %loadPC_40133c, %struct.Memory* %loadMem2_40133c)
  store %struct.Memory* %call2_40133c, %struct.Memory** %MEMORY
  %loadMem_401341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 33
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %1590 to i64*
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 15
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %1593 to i64*
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1595 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1594, i64 0, i64 1
  %YMM1.i255 = bitcast %union.VectorReg* %1595 to %"class.std::bitset"*
  %1596 = bitcast %"class.std::bitset"* %YMM1.i255 to i8*
  %1597 = load i64, i64* %RBP.i254
  %1598 = sub i64 %1597, 56
  %1599 = load i64, i64* %PC.i253
  %1600 = add i64 %1599, 5
  store i64 %1600, i64* %PC.i253
  %1601 = inttoptr i64 %1598 to double*
  %1602 = load double, double* %1601
  %1603 = bitcast i8* %1596 to double*
  store double %1602, double* %1603, align 1
  %1604 = getelementptr inbounds i8, i8* %1596, i64 8
  %1605 = bitcast i8* %1604 to double*
  store double 0.000000e+00, double* %1605, align 1
  store %struct.Memory* %loadMem_401341, %struct.Memory** %MEMORY
  %loadMem_401346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 33
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %1608 to i64*
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1610 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1609, i64 0, i64 1
  %YMM1.i251 = bitcast %union.VectorReg* %1610 to %"class.std::bitset"*
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1612 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1611, i64 0, i64 0
  %XMM0.i252 = bitcast %union.VectorReg* %1612 to %union.vec128_t*
  %1613 = bitcast %"class.std::bitset"* %YMM1.i251 to i8*
  %1614 = bitcast %"class.std::bitset"* %YMM1.i251 to i8*
  %1615 = bitcast %union.vec128_t* %XMM0.i252 to i8*
  %1616 = load i64, i64* %PC.i250
  %1617 = add i64 %1616, 4
  store i64 %1617, i64* %PC.i250
  %1618 = bitcast i8* %1614 to double*
  %1619 = load double, double* %1618, align 1
  %1620 = getelementptr inbounds i8, i8* %1614, i64 8
  %1621 = bitcast i8* %1620 to i64*
  %1622 = load i64, i64* %1621, align 1
  %1623 = bitcast i8* %1615 to double*
  %1624 = load double, double* %1623, align 1
  %1625 = fmul double %1619, %1624
  %1626 = bitcast i8* %1613 to double*
  store double %1625, double* %1626, align 1
  %1627 = getelementptr inbounds i8, i8* %1613, i64 8
  %1628 = bitcast i8* %1627 to i64*
  store i64 %1622, i64* %1628, align 1
  store %struct.Memory* %loadMem_401346, %struct.Memory** %MEMORY
  %loadMem_40134a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1630 = getelementptr inbounds %struct.GPR, %struct.GPR* %1629, i32 0, i32 33
  %1631 = getelementptr inbounds %struct.Reg, %struct.Reg* %1630, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %1631 to i64*
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 15
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %1634 to i64*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1636 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1635, i64 0, i64 1
  %XMM1.i249 = bitcast %union.VectorReg* %1636 to %union.vec128_t*
  %1637 = load i64, i64* %RBP.i248
  %1638 = sub i64 %1637, 24
  %1639 = bitcast %union.vec128_t* %XMM1.i249 to i8*
  %1640 = load i64, i64* %PC.i247
  %1641 = add i64 %1640, 5
  store i64 %1641, i64* %PC.i247
  %1642 = bitcast i8* %1639 to double*
  %1643 = load double, double* %1642, align 1
  %1644 = inttoptr i64 %1638 to double*
  store double %1643, double* %1644
  store %struct.Memory* %loadMem_40134a, %struct.Memory** %MEMORY
  br label %block_.L_40134f

block_.L_40134f:                                  ; preds = %block_.L_401310, %block_4012e8
  %loadMem_40134f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 33
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %1647 to i64*
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 15
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %1650 to i64*
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1652 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1651, i64 0, i64 0
  %YMM0.i246 = bitcast %union.VectorReg* %1652 to %"class.std::bitset"*
  %1653 = bitcast %"class.std::bitset"* %YMM0.i246 to i8*
  %1654 = load i64, i64* %RBP.i245
  %1655 = sub i64 %1654, 24
  %1656 = load i64, i64* %PC.i244
  %1657 = add i64 %1656, 5
  store i64 %1657, i64* %PC.i244
  %1658 = inttoptr i64 %1655 to double*
  %1659 = load double, double* %1658
  %1660 = bitcast i8* %1653 to double*
  store double %1659, double* %1660, align 1
  %1661 = getelementptr inbounds i8, i8* %1653, i64 8
  %1662 = bitcast i8* %1661 to double*
  store double 0.000000e+00, double* %1662, align 1
  store %struct.Memory* %loadMem_40134f, %struct.Memory** %MEMORY
  %loadMem1_401354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 33
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %1665 to i64*
  %1666 = load i64, i64* %PC.i243
  %1667 = add i64 %1666, -3364
  %1668 = load i64, i64* %PC.i243
  %1669 = add i64 %1668, 5
  %1670 = load i64, i64* %PC.i243
  %1671 = add i64 %1670, 5
  store i64 %1671, i64* %PC.i243
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1673 = load i64, i64* %1672, align 8
  %1674 = add i64 %1673, -8
  %1675 = inttoptr i64 %1674 to i64*
  store i64 %1669, i64* %1675
  store i64 %1674, i64* %1672, align 8
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1667, i64* %1676, align 8
  store %struct.Memory* %loadMem1_401354, %struct.Memory** %MEMORY
  %loadMem2_401354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401354 = load i64, i64* %3
  %1677 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @asin to i64), %struct.Memory* %loadMem2_401354)
  store %struct.Memory* %1677, %struct.Memory** %MEMORY
  %loadMem_401359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 33
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %1680 to i64*
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1682 = getelementptr inbounds %struct.GPR, %struct.GPR* %1681, i32 0, i32 15
  %1683 = getelementptr inbounds %struct.Reg, %struct.Reg* %1682, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %1683 to i64*
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1685 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1684, i64 0, i64 0
  %XMM0.i241 = bitcast %union.VectorReg* %1685 to %union.vec128_t*
  %1686 = load i64, i64* %RBP.i240
  %1687 = sub i64 %1686, 8
  %1688 = bitcast %union.vec128_t* %XMM0.i241 to i8*
  %1689 = load i64, i64* %PC.i239
  %1690 = add i64 %1689, 5
  store i64 %1690, i64* %PC.i239
  %1691 = bitcast i8* %1688 to double*
  %1692 = load double, double* %1691, align 1
  %1693 = inttoptr i64 %1687 to double*
  store double %1692, double* %1693
  store %struct.Memory* %loadMem_401359, %struct.Memory** %MEMORY
  %loadMem_40135e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 33
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %1696 to i64*
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1698 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1697, i64 0, i64 0
  %YMM0.i238 = bitcast %union.VectorReg* %1698 to %"class.std::bitset"*
  %1699 = bitcast %"class.std::bitset"* %YMM0.i238 to i8*
  %1700 = load i64, i64* %PC.i237
  %1701 = add i64 %1700, 9
  store i64 %1701, i64* %PC.i237
  %1702 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*)
  %1703 = bitcast i8* %1699 to double*
  store double %1702, double* %1703, align 1
  %1704 = getelementptr inbounds i8, i8* %1699, i64 8
  %1705 = bitcast i8* %1704 to double*
  store double 0.000000e+00, double* %1705, align 1
  store %struct.Memory* %loadMem_40135e, %struct.Memory** %MEMORY
  %loadMem_401367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 33
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %1708 to i64*
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1710 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1709, i64 0, i64 0
  %YMM0.i236 = bitcast %union.VectorReg* %1710 to %"class.std::bitset"*
  %1711 = bitcast %"class.std::bitset"* %YMM0.i236 to i8*
  %1712 = bitcast %"class.std::bitset"* %YMM0.i236 to i8*
  %1713 = load i64, i64* %PC.i235
  %1714 = add i64 %1713, 9
  store i64 %1714, i64* %PC.i235
  %1715 = bitcast i8* %1712 to double*
  %1716 = load double, double* %1715, align 1
  %1717 = getelementptr inbounds i8, i8* %1712, i64 8
  %1718 = bitcast i8* %1717 to i64*
  %1719 = load i64, i64* %1718, align 1
  %1720 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*)
  %1721 = fdiv double %1716, %1720
  %1722 = bitcast i8* %1711 to double*
  store double %1721, double* %1722, align 1
  %1723 = getelementptr inbounds i8, i8* %1711, i64 8
  %1724 = bitcast i8* %1723 to i64*
  store i64 %1719, i64* %1724, align 1
  store %struct.Memory* %loadMem_401367, %struct.Memory** %MEMORY
  %loadMem_401370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 33
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %1727 to i64*
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 15
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %1730 to i64*
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1732 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1731, i64 0, i64 0
  %YMM0.i234 = bitcast %union.VectorReg* %1732 to %"class.std::bitset"*
  %1733 = bitcast %"class.std::bitset"* %YMM0.i234 to i8*
  %1734 = bitcast %"class.std::bitset"* %YMM0.i234 to i8*
  %1735 = load i64, i64* %RBP.i233
  %1736 = sub i64 %1735, 24
  %1737 = load i64, i64* %PC.i232
  %1738 = add i64 %1737, 5
  store i64 %1738, i64* %PC.i232
  %1739 = bitcast i8* %1734 to double*
  %1740 = load double, double* %1739, align 1
  %1741 = getelementptr inbounds i8, i8* %1734, i64 8
  %1742 = bitcast i8* %1741 to i64*
  %1743 = load i64, i64* %1742, align 1
  %1744 = inttoptr i64 %1736 to double*
  %1745 = load double, double* %1744
  %1746 = fmul double %1740, %1745
  %1747 = bitcast i8* %1733 to double*
  store double %1746, double* %1747, align 1
  %1748 = getelementptr inbounds i8, i8* %1733, i64 8
  %1749 = bitcast i8* %1748 to i64*
  store i64 %1743, i64* %1749, align 1
  store %struct.Memory* %loadMem_401370, %struct.Memory** %MEMORY
  %loadMem_401375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 33
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %1752 to i64*
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 15
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %1755 to i64*
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1757 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1756, i64 0, i64 0
  %XMM0.i231 = bitcast %union.VectorReg* %1757 to %union.vec128_t*
  %1758 = load i64, i64* %RBP.i230
  %1759 = sub i64 %1758, 32
  %1760 = bitcast %union.vec128_t* %XMM0.i231 to i8*
  %1761 = load i64, i64* %PC.i229
  %1762 = add i64 %1761, 5
  store i64 %1762, i64* %PC.i229
  %1763 = bitcast i8* %1760 to double*
  %1764 = load double, double* %1763, align 1
  %1765 = inttoptr i64 %1759 to double*
  store double %1764, double* %1765
  store %struct.Memory* %loadMem_401375, %struct.Memory** %MEMORY
  %loadMem_40137a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 33
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %1768 to i64*
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1770 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1769, i64 0, i64 0
  %YMM0.i228 = bitcast %union.VectorReg* %1770 to %"class.std::bitset"*
  %1771 = bitcast %"class.std::bitset"* %YMM0.i228 to i8*
  %1772 = load i64, i64* %PC.i227
  %1773 = add i64 %1772, 9
  store i64 %1773, i64* %PC.i227
  %1774 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %1775 = bitcast i8* %1771 to double*
  store double %1774, double* %1775, align 1
  %1776 = getelementptr inbounds i8, i8* %1771, i64 8
  %1777 = bitcast i8* %1776 to double*
  store double 0.000000e+00, double* %1777, align 1
  store %struct.Memory* %loadMem_40137a, %struct.Memory** %MEMORY
  %loadMem_401383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 33
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1780 to i64*
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 15
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %1783 to i64*
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1785 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1784, i64 0, i64 0
  %XMM0.i226 = bitcast %union.VectorReg* %1785 to %union.vec128_t*
  %1786 = load i64, i64* %RBP.i225
  %1787 = sub i64 %1786, 40
  %1788 = bitcast %union.vec128_t* %XMM0.i226 to i8*
  %1789 = load i64, i64* %PC.i224
  %1790 = add i64 %1789, 5
  store i64 %1790, i64* %PC.i224
  %1791 = bitcast i8* %1788 to double*
  %1792 = load double, double* %1791, align 1
  %1793 = inttoptr i64 %1787 to double*
  store double %1792, double* %1793
  store %struct.Memory* %loadMem_401383, %struct.Memory** %MEMORY
  %loadMem_401388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 33
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %1796 to i64*
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1798 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1797, i64 0, i64 0
  %YMM0.i223 = bitcast %union.VectorReg* %1798 to %"class.std::bitset"*
  %1799 = bitcast %"class.std::bitset"* %YMM0.i223 to i8*
  %1800 = load i64, i64* %PC.i222
  %1801 = add i64 %1800, 9
  store i64 %1801, i64* %PC.i222
  %1802 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %1803 = bitcast i8* %1799 to double*
  store double %1802, double* %1803, align 1
  %1804 = getelementptr inbounds i8, i8* %1799, i64 8
  %1805 = bitcast i8* %1804 to double*
  store double 0.000000e+00, double* %1805, align 1
  store %struct.Memory* %loadMem_401388, %struct.Memory** %MEMORY
  %loadMem_401391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 33
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %1808 to i64*
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 15
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %1811 to i64*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1813 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1812, i64 0, i64 0
  %YMM0.i221 = bitcast %union.VectorReg* %1813 to %"class.std::bitset"*
  %1814 = bitcast %"class.std::bitset"* %YMM0.i221 to i8*
  %1815 = bitcast %"class.std::bitset"* %YMM0.i221 to i8*
  %1816 = load i64, i64* %RBP.i220
  %1817 = sub i64 %1816, 8
  %1818 = load i64, i64* %PC.i219
  %1819 = add i64 %1818, 5
  store i64 %1819, i64* %PC.i219
  %1820 = bitcast i8* %1815 to double*
  %1821 = load double, double* %1820, align 1
  %1822 = getelementptr inbounds i8, i8* %1815, i64 8
  %1823 = bitcast i8* %1822 to i64*
  %1824 = load i64, i64* %1823, align 1
  %1825 = inttoptr i64 %1817 to double*
  %1826 = load double, double* %1825
  %1827 = fadd double %1821, %1826
  %1828 = bitcast i8* %1814 to double*
  store double %1827, double* %1828, align 1
  %1829 = getelementptr inbounds i8, i8* %1814, i64 8
  %1830 = bitcast i8* %1829 to i64*
  store i64 %1824, i64* %1830, align 1
  store %struct.Memory* %loadMem_401391, %struct.Memory** %MEMORY
  %loadMem_401396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 33
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %1833 to i64*
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 15
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %1836 to i64*
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1838 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1837, i64 0, i64 1
  %YMM1.i218 = bitcast %union.VectorReg* %1838 to %"class.std::bitset"*
  %1839 = bitcast %"class.std::bitset"* %YMM1.i218 to i8*
  %1840 = load i64, i64* %RBP.i217
  %1841 = sub i64 %1840, 32
  %1842 = load i64, i64* %PC.i216
  %1843 = add i64 %1842, 5
  store i64 %1843, i64* %PC.i216
  %1844 = inttoptr i64 %1841 to double*
  %1845 = load double, double* %1844
  %1846 = bitcast i8* %1839 to double*
  store double %1845, double* %1846, align 1
  %1847 = getelementptr inbounds i8, i8* %1839, i64 8
  %1848 = bitcast i8* %1847 to double*
  store double 0.000000e+00, double* %1848, align 1
  store %struct.Memory* %loadMem_401396, %struct.Memory** %MEMORY
  %loadMem_40139b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1850 = getelementptr inbounds %struct.GPR, %struct.GPR* %1849, i32 0, i32 33
  %1851 = getelementptr inbounds %struct.Reg, %struct.Reg* %1850, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %1851 to i64*
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 15
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %1854 to i64*
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1856 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1855, i64 0, i64 0
  %XMM0.i215 = bitcast %union.VectorReg* %1856 to %union.vec128_t*
  %1857 = load i64, i64* %RBP.i214
  %1858 = sub i64 %1857, 64
  %1859 = bitcast %union.vec128_t* %XMM0.i215 to i8*
  %1860 = load i64, i64* %PC.i213
  %1861 = add i64 %1860, 5
  store i64 %1861, i64* %PC.i213
  %1862 = bitcast i8* %1859 to double*
  %1863 = load double, double* %1862, align 1
  %1864 = inttoptr i64 %1858 to double*
  store double %1863, double* %1864
  store %struct.Memory* %loadMem_40139b, %struct.Memory** %MEMORY
  %loadMem_4013a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 33
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %1867 to i64*
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1869 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1868, i64 0, i64 0
  %YMM0.i211 = bitcast %union.VectorReg* %1869 to %"class.std::bitset"*
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1871 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1870, i64 0, i64 1
  %XMM1.i212 = bitcast %union.VectorReg* %1871 to %union.vec128_t*
  %1872 = bitcast %"class.std::bitset"* %YMM0.i211 to i8*
  %1873 = bitcast %union.vec128_t* %XMM1.i212 to i8*
  %1874 = load i64, i64* %PC.i210
  %1875 = add i64 %1874, 3
  store i64 %1875, i64* %PC.i210
  %1876 = bitcast i8* %1873 to <2 x i32>*
  %1877 = load <2 x i32>, <2 x i32>* %1876, align 1
  %1878 = getelementptr inbounds i8, i8* %1873, i64 8
  %1879 = bitcast i8* %1878 to <2 x i32>*
  %1880 = load <2 x i32>, <2 x i32>* %1879, align 1
  %1881 = extractelement <2 x i32> %1877, i32 0
  %1882 = bitcast i8* %1872 to i32*
  store i32 %1881, i32* %1882, align 1
  %1883 = extractelement <2 x i32> %1877, i32 1
  %1884 = getelementptr inbounds i8, i8* %1872, i64 4
  %1885 = bitcast i8* %1884 to i32*
  store i32 %1883, i32* %1885, align 1
  %1886 = extractelement <2 x i32> %1880, i32 0
  %1887 = getelementptr inbounds i8, i8* %1872, i64 8
  %1888 = bitcast i8* %1887 to i32*
  store i32 %1886, i32* %1888, align 1
  %1889 = extractelement <2 x i32> %1880, i32 1
  %1890 = getelementptr inbounds i8, i8* %1872, i64 12
  %1891 = bitcast i8* %1890 to i32*
  store i32 %1889, i32* %1891, align 1
  store %struct.Memory* %loadMem_4013a0, %struct.Memory** %MEMORY
  %loadMem1_4013a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 33
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %1894 to i64*
  %1895 = load i64, i64* %PC.i209
  %1896 = add i64 %1895, -3443
  %1897 = load i64, i64* %PC.i209
  %1898 = add i64 %1897, 5
  %1899 = load i64, i64* %PC.i209
  %1900 = add i64 %1899, 5
  store i64 %1900, i64* %PC.i209
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1902 = load i64, i64* %1901, align 8
  %1903 = add i64 %1902, -8
  %1904 = inttoptr i64 %1903 to i64*
  store i64 %1898, i64* %1904
  store i64 %1903, i64* %1901, align 8
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1896, i64* %1905, align 8
  store %struct.Memory* %loadMem1_4013a3, %struct.Memory** %MEMORY
  %loadMem2_4013a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4013a3 = load i64, i64* %3
  %1906 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @asin to i64), %struct.Memory* %loadMem2_4013a3)
  store %struct.Memory* %1906, %struct.Memory** %MEMORY
  %loadMem_4013a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 33
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %1909 to i64*
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1911 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1910, i64 0, i64 1
  %YMM1.i206 = bitcast %union.VectorReg* %1911 to %"class.std::bitset"*
  %1912 = bitcast %"class.std::bitset"* %YMM1.i206 to i8*
  %1913 = load i64, i64* %PC.i205
  %1914 = add i64 %1913, 696
  %1915 = load i64, i64* %PC.i205
  %1916 = add i64 %1915, 8
  store i64 %1916, i64* %PC.i205
  %1917 = inttoptr i64 %1914 to double*
  %1918 = load double, double* %1917
  %1919 = bitcast i8* %1912 to double*
  store double %1918, double* %1919, align 1
  %1920 = getelementptr inbounds i8, i8* %1912, i64 8
  %1921 = bitcast i8* %1920 to double*
  store double 0.000000e+00, double* %1921, align 1
  store %struct.Memory* %loadMem_4013a8, %struct.Memory** %MEMORY
  %loadMem_4013b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1923 = getelementptr inbounds %struct.GPR, %struct.GPR* %1922, i32 0, i32 33
  %1924 = getelementptr inbounds %struct.Reg, %struct.Reg* %1923, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %1924 to i64*
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1926 = getelementptr inbounds %struct.GPR, %struct.GPR* %1925, i32 0, i32 15
  %1927 = getelementptr inbounds %struct.Reg, %struct.Reg* %1926, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %1927 to i64*
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1929 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1928, i64 0, i64 2
  %YMM2.i204 = bitcast %union.VectorReg* %1929 to %"class.std::bitset"*
  %1930 = bitcast %"class.std::bitset"* %YMM2.i204 to i8*
  %1931 = load i64, i64* %RBP.i203
  %1932 = sub i64 %1931, 64
  %1933 = load i64, i64* %PC.i202
  %1934 = add i64 %1933, 5
  store i64 %1934, i64* %PC.i202
  %1935 = inttoptr i64 %1932 to double*
  %1936 = load double, double* %1935
  %1937 = bitcast i8* %1930 to double*
  store double %1936, double* %1937, align 1
  %1938 = getelementptr inbounds i8, i8* %1930, i64 8
  %1939 = bitcast i8* %1938 to double*
  store double 0.000000e+00, double* %1939, align 1
  store %struct.Memory* %loadMem_4013b0, %struct.Memory** %MEMORY
  %loadMem_4013b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 33
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %1942 to i64*
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1944 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1943, i64 0, i64 2
  %YMM2.i200 = bitcast %union.VectorReg* %1944 to %"class.std::bitset"*
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1946 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1945, i64 0, i64 0
  %XMM0.i201 = bitcast %union.VectorReg* %1946 to %union.vec128_t*
  %1947 = bitcast %"class.std::bitset"* %YMM2.i200 to i8*
  %1948 = bitcast %"class.std::bitset"* %YMM2.i200 to i8*
  %1949 = bitcast %union.vec128_t* %XMM0.i201 to i8*
  %1950 = load i64, i64* %PC.i199
  %1951 = add i64 %1950, 4
  store i64 %1951, i64* %PC.i199
  %1952 = bitcast i8* %1948 to double*
  %1953 = load double, double* %1952, align 1
  %1954 = getelementptr inbounds i8, i8* %1948, i64 8
  %1955 = bitcast i8* %1954 to i64*
  %1956 = load i64, i64* %1955, align 1
  %1957 = bitcast i8* %1949 to double*
  %1958 = load double, double* %1957, align 1
  %1959 = fsub double %1953, %1958
  %1960 = bitcast i8* %1947 to double*
  store double %1959, double* %1960, align 1
  %1961 = getelementptr inbounds i8, i8* %1947, i64 8
  %1962 = bitcast i8* %1961 to i64*
  store i64 %1956, i64* %1962, align 1
  store %struct.Memory* %loadMem_4013b5, %struct.Memory** %MEMORY
  %loadMem_4013b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 33
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %1965 to i64*
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1967 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1966, i64 0, i64 2
  %XMM2.i198 = bitcast %union.VectorReg* %1967 to %union.vec128_t*
  %1968 = bitcast %union.vec128_t* %XMM2.i198 to i8*
  %1969 = load i64, i64* %PC.i197
  %1970 = add i64 %1969, 9
  store i64 %1970, i64* %PC.i197
  %1971 = bitcast i8* %1968 to double*
  %1972 = load double, double* %1971, align 1
  store double %1972, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  store %struct.Memory* %loadMem_4013b9, %struct.Memory** %MEMORY
  %loadMem_4013c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 33
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %1975 to i64*
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 15
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %1978 to i64*
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1980 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1979, i64 0, i64 0
  %YMM0.i196 = bitcast %union.VectorReg* %1980 to %"class.std::bitset"*
  %1981 = bitcast %"class.std::bitset"* %YMM0.i196 to i8*
  %1982 = load i64, i64* %RBP.i195
  %1983 = sub i64 %1982, 40
  %1984 = load i64, i64* %PC.i194
  %1985 = add i64 %1984, 5
  store i64 %1985, i64* %PC.i194
  %1986 = inttoptr i64 %1983 to double*
  %1987 = load double, double* %1986
  %1988 = bitcast i8* %1981 to double*
  store double %1987, double* %1988, align 1
  %1989 = getelementptr inbounds i8, i8* %1981, i64 8
  %1990 = bitcast i8* %1989 to double*
  store double 0.000000e+00, double* %1990, align 1
  store %struct.Memory* %loadMem_4013c2, %struct.Memory** %MEMORY
  %loadMem_4013c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 33
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %1993 to i64*
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 15
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %1996 to i64*
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1998 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1997, i64 0, i64 0
  %YMM0.i193 = bitcast %union.VectorReg* %1998 to %"class.std::bitset"*
  %1999 = bitcast %"class.std::bitset"* %YMM0.i193 to i8*
  %2000 = bitcast %"class.std::bitset"* %YMM0.i193 to i8*
  %2001 = load i64, i64* %RBP.i192
  %2002 = sub i64 %2001, 8
  %2003 = load i64, i64* %PC.i191
  %2004 = add i64 %2003, 5
  store i64 %2004, i64* %PC.i191
  %2005 = bitcast i8* %2000 to double*
  %2006 = load double, double* %2005, align 1
  %2007 = getelementptr inbounds i8, i8* %2000, i64 8
  %2008 = bitcast i8* %2007 to i64*
  %2009 = load i64, i64* %2008, align 1
  %2010 = inttoptr i64 %2002 to double*
  %2011 = load double, double* %2010
  %2012 = fadd double %2006, %2011
  %2013 = bitcast i8* %1999 to double*
  store double %2012, double* %2013, align 1
  %2014 = getelementptr inbounds i8, i8* %1999, i64 8
  %2015 = bitcast i8* %2014 to i64*
  store i64 %2009, i64* %2015, align 1
  store %struct.Memory* %loadMem_4013c7, %struct.Memory** %MEMORY
  %loadMem_4013cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2017 = getelementptr inbounds %struct.GPR, %struct.GPR* %2016, i32 0, i32 33
  %2018 = getelementptr inbounds %struct.Reg, %struct.Reg* %2017, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %2018 to i64*
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2020 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2019, i64 0, i64 0
  %YMM0.i189 = bitcast %union.VectorReg* %2020 to %"class.std::bitset"*
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2022 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2021, i64 0, i64 1
  %XMM1.i190 = bitcast %union.VectorReg* %2022 to %union.vec128_t*
  %2023 = bitcast %"class.std::bitset"* %YMM0.i189 to i8*
  %2024 = bitcast %"class.std::bitset"* %YMM0.i189 to i8*
  %2025 = bitcast %union.vec128_t* %XMM1.i190 to i8*
  %2026 = load i64, i64* %PC.i188
  %2027 = add i64 %2026, 4
  store i64 %2027, i64* %PC.i188
  %2028 = bitcast i8* %2024 to double*
  %2029 = load double, double* %2028, align 1
  %2030 = getelementptr inbounds i8, i8* %2024, i64 8
  %2031 = bitcast i8* %2030 to i64*
  %2032 = load i64, i64* %2031, align 1
  %2033 = bitcast i8* %2025 to double*
  %2034 = load double, double* %2033, align 1
  %2035 = fdiv double %2029, %2034
  %2036 = bitcast i8* %2023 to double*
  store double %2035, double* %2036, align 1
  %2037 = getelementptr inbounds i8, i8* %2023, i64 8
  %2038 = bitcast i8* %2037 to i64*
  store i64 %2032, i64* %2038, align 1
  store %struct.Memory* %loadMem_4013cc, %struct.Memory** %MEMORY
  %loadMem_4013d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2040 = getelementptr inbounds %struct.GPR, %struct.GPR* %2039, i32 0, i32 33
  %2041 = getelementptr inbounds %struct.Reg, %struct.Reg* %2040, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %2041 to i64*
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2043 = getelementptr inbounds %struct.GPR, %struct.GPR* %2042, i32 0, i32 15
  %2044 = getelementptr inbounds %struct.Reg, %struct.Reg* %2043, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %2044 to i64*
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2046 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2045, i64 0, i64 1
  %XMM1.i187 = bitcast %union.VectorReg* %2046 to %union.vec128_t*
  %2047 = load i64, i64* %RBP.i186
  %2048 = sub i64 %2047, 72
  %2049 = bitcast %union.vec128_t* %XMM1.i187 to i8*
  %2050 = load i64, i64* %PC.i185
  %2051 = add i64 %2050, 5
  store i64 %2051, i64* %PC.i185
  %2052 = bitcast i8* %2049 to double*
  %2053 = load double, double* %2052, align 1
  %2054 = inttoptr i64 %2048 to double*
  store double %2053, double* %2054
  store %struct.Memory* %loadMem_4013d0, %struct.Memory** %MEMORY
  %loadMem1_4013d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2056 = getelementptr inbounds %struct.GPR, %struct.GPR* %2055, i32 0, i32 33
  %2057 = getelementptr inbounds %struct.Reg, %struct.Reg* %2056, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %2057 to i64*
  %2058 = load i64, i64* %PC.i184
  %2059 = add i64 %2058, -3509
  %2060 = load i64, i64* %PC.i184
  %2061 = add i64 %2060, 5
  %2062 = load i64, i64* %PC.i184
  %2063 = add i64 %2062, 5
  store i64 %2063, i64* %PC.i184
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2065 = load i64, i64* %2064, align 8
  %2066 = add i64 %2065, -8
  %2067 = inttoptr i64 %2066 to i64*
  store i64 %2061, i64* %2067
  store i64 %2066, i64* %2064, align 8
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2059, i64* %2068, align 8
  store %struct.Memory* %loadMem1_4013d5, %struct.Memory** %MEMORY
  %loadMem2_4013d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4013d5 = load i64, i64* %3
  %call2_4013d5 = call %struct.Memory* @ext_sin(%struct.State* %0, i64 %loadPC_4013d5, %struct.Memory* %loadMem2_4013d5)
  store %struct.Memory* %call2_4013d5, %struct.Memory** %MEMORY
  %loadMem_4013da = load %struct.Memory*, %struct.Memory** %MEMORY
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 33
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %2071 to i64*
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 15
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %2074 to i64*
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2076 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2075, i64 0, i64 0
  %XMM0.i183 = bitcast %union.VectorReg* %2076 to %union.vec128_t*
  %2077 = load i64, i64* %RBP.i182
  %2078 = sub i64 %2077, 48
  %2079 = bitcast %union.vec128_t* %XMM0.i183 to i8*
  %2080 = load i64, i64* %PC.i181
  %2081 = add i64 %2080, 5
  store i64 %2081, i64* %PC.i181
  %2082 = bitcast i8* %2079 to double*
  %2083 = load double, double* %2082, align 1
  %2084 = inttoptr i64 %2078 to double*
  store double %2083, double* %2084
  store %struct.Memory* %loadMem_4013da, %struct.Memory** %MEMORY
  %loadMem_4013df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 33
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %2087 to i64*
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 15
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %2090 to i64*
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2092 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2091, i64 0, i64 0
  %YMM0.i180 = bitcast %union.VectorReg* %2092 to %"class.std::bitset"*
  %2093 = bitcast %"class.std::bitset"* %YMM0.i180 to i8*
  %2094 = load i64, i64* %RBP.i179
  %2095 = sub i64 %2094, 72
  %2096 = load i64, i64* %PC.i178
  %2097 = add i64 %2096, 5
  store i64 %2097, i64* %PC.i178
  %2098 = inttoptr i64 %2095 to double*
  %2099 = load double, double* %2098
  %2100 = bitcast i8* %2093 to double*
  store double %2099, double* %2100, align 1
  %2101 = getelementptr inbounds i8, i8* %2093, i64 8
  %2102 = bitcast i8* %2101 to double*
  store double 0.000000e+00, double* %2102, align 1
  store %struct.Memory* %loadMem_4013df, %struct.Memory** %MEMORY
  %loadMem_4013e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2104 = getelementptr inbounds %struct.GPR, %struct.GPR* %2103, i32 0, i32 33
  %2105 = getelementptr inbounds %struct.Reg, %struct.Reg* %2104, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %2105 to i64*
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2107 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2106, i64 0, i64 0
  %YMM0.i177 = bitcast %union.VectorReg* %2107 to %"class.std::bitset"*
  %2108 = bitcast %"class.std::bitset"* %YMM0.i177 to i8*
  %2109 = bitcast %"class.std::bitset"* %YMM0.i177 to i8*
  %2110 = load i64, i64* %PC.i176
  %2111 = add i64 %2110, 9
  store i64 %2111, i64* %PC.i176
  %2112 = bitcast i8* %2109 to double*
  %2113 = load double, double* %2112, align 1
  %2114 = getelementptr inbounds i8, i8* %2109, i64 8
  %2115 = bitcast i8* %2114 to i64*
  %2116 = load i64, i64* %2115, align 1
  %2117 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %2118 = fmul double %2113, %2117
  %2119 = bitcast i8* %2108 to double*
  store double %2118, double* %2119, align 1
  %2120 = getelementptr inbounds i8, i8* %2108, i64 8
  %2121 = bitcast i8* %2120 to i64*
  store i64 %2116, i64* %2121, align 1
  store %struct.Memory* %loadMem_4013e4, %struct.Memory** %MEMORY
  %loadMem_4013ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 33
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %2124 to i64*
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 15
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %2127 to i64*
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2129 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2128, i64 0, i64 0
  %YMM0.i175 = bitcast %union.VectorReg* %2129 to %"class.std::bitset"*
  %2130 = bitcast %"class.std::bitset"* %YMM0.i175 to i8*
  %2131 = bitcast %"class.std::bitset"* %YMM0.i175 to i8*
  %2132 = load i64, i64* %RBP.i174
  %2133 = sub i64 %2132, 48
  %2134 = load i64, i64* %PC.i173
  %2135 = add i64 %2134, 5
  store i64 %2135, i64* %PC.i173
  %2136 = bitcast i8* %2131 to double*
  %2137 = load double, double* %2136, align 1
  %2138 = getelementptr inbounds i8, i8* %2131, i64 8
  %2139 = bitcast i8* %2138 to i64*
  %2140 = load i64, i64* %2139, align 1
  %2141 = inttoptr i64 %2133 to double*
  %2142 = load double, double* %2141
  %2143 = fmul double %2137, %2142
  %2144 = bitcast i8* %2130 to double*
  store double %2143, double* %2144, align 1
  %2145 = getelementptr inbounds i8, i8* %2130, i64 8
  %2146 = bitcast i8* %2145 to i64*
  store i64 %2140, i64* %2146, align 1
  store %struct.Memory* %loadMem_4013ed, %struct.Memory** %MEMORY
  %loadMem_4013f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2148 = getelementptr inbounds %struct.GPR, %struct.GPR* %2147, i32 0, i32 33
  %2149 = getelementptr inbounds %struct.Reg, %struct.Reg* %2148, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %2149 to i64*
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2151 = getelementptr inbounds %struct.GPR, %struct.GPR* %2150, i32 0, i32 15
  %2152 = getelementptr inbounds %struct.Reg, %struct.Reg* %2151, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %2152 to i64*
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2154 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2153, i64 0, i64 0
  %YMM0.i172 = bitcast %union.VectorReg* %2154 to %"class.std::bitset"*
  %2155 = bitcast %"class.std::bitset"* %YMM0.i172 to i8*
  %2156 = bitcast %"class.std::bitset"* %YMM0.i172 to i8*
  %2157 = load i64, i64* %RBP.i171
  %2158 = sub i64 %2157, 48
  %2159 = load i64, i64* %PC.i170
  %2160 = add i64 %2159, 5
  store i64 %2160, i64* %PC.i170
  %2161 = bitcast i8* %2156 to double*
  %2162 = load double, double* %2161, align 1
  %2163 = getelementptr inbounds i8, i8* %2156, i64 8
  %2164 = bitcast i8* %2163 to i64*
  %2165 = load i64, i64* %2164, align 1
  %2166 = inttoptr i64 %2158 to double*
  %2167 = load double, double* %2166
  %2168 = fmul double %2162, %2167
  %2169 = bitcast i8* %2155 to double*
  store double %2168, double* %2169, align 1
  %2170 = getelementptr inbounds i8, i8* %2155, i64 8
  %2171 = bitcast i8* %2170 to i64*
  store i64 %2165, i64* %2171, align 1
  store %struct.Memory* %loadMem_4013f2, %struct.Memory** %MEMORY
  %loadMem_4013f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2173 = getelementptr inbounds %struct.GPR, %struct.GPR* %2172, i32 0, i32 33
  %2174 = getelementptr inbounds %struct.Reg, %struct.Reg* %2173, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %2174 to i64*
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 15
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %2177 to i64*
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2179 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2178, i64 0, i64 0
  %XMM0.i169 = bitcast %union.VectorReg* %2179 to %union.vec128_t*
  %2180 = load i64, i64* %RBP.i168
  %2181 = sub i64 %2180, 48
  %2182 = bitcast %union.vec128_t* %XMM0.i169 to i8*
  %2183 = load i64, i64* %PC.i167
  %2184 = add i64 %2183, 5
  store i64 %2184, i64* %PC.i167
  %2185 = bitcast i8* %2182 to double*
  %2186 = load double, double* %2185, align 1
  %2187 = inttoptr i64 %2181 to double*
  store double %2186, double* %2187
  store %struct.Memory* %loadMem_4013f7, %struct.Memory** %MEMORY
  %loadMem_4013fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2189 = getelementptr inbounds %struct.GPR, %struct.GPR* %2188, i32 0, i32 33
  %2190 = getelementptr inbounds %struct.Reg, %struct.Reg* %2189, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %2190 to i64*
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2192 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2191, i64 0, i64 0
  %YMM0.i166 = bitcast %union.VectorReg* %2192 to %"class.std::bitset"*
  %2193 = bitcast %"class.std::bitset"* %YMM0.i166 to i8*
  %2194 = load i64, i64* %PC.i165
  %2195 = add i64 %2194, 9
  store i64 %2195, i64* %PC.i165
  %2196 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %2197 = bitcast i8* %2193 to double*
  store double %2196, double* %2197, align 1
  %2198 = getelementptr inbounds i8, i8* %2193, i64 8
  %2199 = bitcast i8* %2198 to double*
  store double 0.000000e+00, double* %2199, align 1
  store %struct.Memory* %loadMem_4013fc, %struct.Memory** %MEMORY
  %loadMem_401405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2201 = getelementptr inbounds %struct.GPR, %struct.GPR* %2200, i32 0, i32 33
  %2202 = getelementptr inbounds %struct.Reg, %struct.Reg* %2201, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %2202 to i64*
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2204 = getelementptr inbounds %struct.GPR, %struct.GPR* %2203, i32 0, i32 15
  %2205 = getelementptr inbounds %struct.Reg, %struct.Reg* %2204, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %2205 to i64*
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2207 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2206, i64 0, i64 1
  %YMM1.i164 = bitcast %union.VectorReg* %2207 to %"class.std::bitset"*
  %2208 = bitcast %"class.std::bitset"* %YMM1.i164 to i8*
  %2209 = load i64, i64* %RBP.i163
  %2210 = sub i64 %2209, 40
  %2211 = load i64, i64* %PC.i162
  %2212 = add i64 %2211, 5
  store i64 %2212, i64* %PC.i162
  %2213 = inttoptr i64 %2210 to double*
  %2214 = load double, double* %2213
  %2215 = bitcast i8* %2208 to double*
  store double %2214, double* %2215, align 1
  %2216 = getelementptr inbounds i8, i8* %2208, i64 8
  %2217 = bitcast i8* %2216 to double*
  store double 0.000000e+00, double* %2217, align 1
  store %struct.Memory* %loadMem_401405, %struct.Memory** %MEMORY
  %loadMem_40140a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 33
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %2220 to i64*
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 15
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %2223 to i64*
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2225 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2224, i64 0, i64 1
  %YMM1.i161 = bitcast %union.VectorReg* %2225 to %"class.std::bitset"*
  %2226 = bitcast %"class.std::bitset"* %YMM1.i161 to i8*
  %2227 = bitcast %"class.std::bitset"* %YMM1.i161 to i8*
  %2228 = load i64, i64* %RBP.i160
  %2229 = sub i64 %2228, 8
  %2230 = load i64, i64* %PC.i159
  %2231 = add i64 %2230, 5
  store i64 %2231, i64* %PC.i159
  %2232 = bitcast i8* %2227 to double*
  %2233 = load double, double* %2232, align 1
  %2234 = getelementptr inbounds i8, i8* %2227, i64 8
  %2235 = bitcast i8* %2234 to i64*
  %2236 = load i64, i64* %2235, align 1
  %2237 = inttoptr i64 %2229 to double*
  %2238 = load double, double* %2237
  %2239 = fadd double %2233, %2238
  %2240 = bitcast i8* %2226 to double*
  store double %2239, double* %2240, align 1
  %2241 = getelementptr inbounds i8, i8* %2226, i64 8
  %2242 = bitcast i8* %2241 to i64*
  store i64 %2236, i64* %2242, align 1
  store %struct.Memory* %loadMem_40140a, %struct.Memory** %MEMORY
  %loadMem_40140f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 33
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %2245 to i64*
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2247 = getelementptr inbounds %struct.GPR, %struct.GPR* %2246, i32 0, i32 15
  %2248 = getelementptr inbounds %struct.Reg, %struct.Reg* %2247, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %2248 to i64*
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2250 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2249, i64 0, i64 0
  %XMM0.i158 = bitcast %union.VectorReg* %2250 to %union.vec128_t*
  %2251 = load i64, i64* %RBP.i157
  %2252 = sub i64 %2251, 80
  %2253 = bitcast %union.vec128_t* %XMM0.i158 to i8*
  %2254 = load i64, i64* %PC.i156
  %2255 = add i64 %2254, 5
  store i64 %2255, i64* %PC.i156
  %2256 = bitcast i8* %2253 to double*
  %2257 = load double, double* %2256, align 1
  %2258 = inttoptr i64 %2252 to double*
  store double %2257, double* %2258
  store %struct.Memory* %loadMem_40140f, %struct.Memory** %MEMORY
  %loadMem_401414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 33
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %2261 to i64*
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2263 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2262, i64 0, i64 0
  %YMM0.i154 = bitcast %union.VectorReg* %2263 to %"class.std::bitset"*
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2264, i64 0, i64 1
  %XMM1.i155 = bitcast %union.VectorReg* %2265 to %union.vec128_t*
  %2266 = bitcast %"class.std::bitset"* %YMM0.i154 to i8*
  %2267 = bitcast %union.vec128_t* %XMM1.i155 to i8*
  %2268 = load i64, i64* %PC.i153
  %2269 = add i64 %2268, 3
  store i64 %2269, i64* %PC.i153
  %2270 = bitcast i8* %2267 to <2 x i32>*
  %2271 = load <2 x i32>, <2 x i32>* %2270, align 1
  %2272 = getelementptr inbounds i8, i8* %2267, i64 8
  %2273 = bitcast i8* %2272 to <2 x i32>*
  %2274 = load <2 x i32>, <2 x i32>* %2273, align 1
  %2275 = extractelement <2 x i32> %2271, i32 0
  %2276 = bitcast i8* %2266 to i32*
  store i32 %2275, i32* %2276, align 1
  %2277 = extractelement <2 x i32> %2271, i32 1
  %2278 = getelementptr inbounds i8, i8* %2266, i64 4
  %2279 = bitcast i8* %2278 to i32*
  store i32 %2277, i32* %2279, align 1
  %2280 = extractelement <2 x i32> %2274, i32 0
  %2281 = getelementptr inbounds i8, i8* %2266, i64 8
  %2282 = bitcast i8* %2281 to i32*
  store i32 %2280, i32* %2282, align 1
  %2283 = extractelement <2 x i32> %2274, i32 1
  %2284 = getelementptr inbounds i8, i8* %2266, i64 12
  %2285 = bitcast i8* %2284 to i32*
  store i32 %2283, i32* %2285, align 1
  store %struct.Memory* %loadMem_401414, %struct.Memory** %MEMORY
  %loadMem1_401417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 33
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %2288 to i64*
  %2289 = load i64, i64* %PC.i152
  %2290 = add i64 %2289, -3575
  %2291 = load i64, i64* %PC.i152
  %2292 = add i64 %2291, 5
  %2293 = load i64, i64* %PC.i152
  %2294 = add i64 %2293, 5
  store i64 %2294, i64* %PC.i152
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2296 = load i64, i64* %2295, align 8
  %2297 = add i64 %2296, -8
  %2298 = inttoptr i64 %2297 to i64*
  store i64 %2292, i64* %2298
  store i64 %2297, i64* %2295, align 8
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2290, i64* %2299, align 8
  store %struct.Memory* %loadMem1_401417, %struct.Memory** %MEMORY
  %loadMem2_401417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401417 = load i64, i64* %3
  %call2_401417 = call %struct.Memory* @ext_sin(%struct.State* %0, i64 %loadPC_401417, %struct.Memory* %loadMem2_401417)
  store %struct.Memory* %call2_401417, %struct.Memory** %MEMORY
  %loadMem_40141c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2301 = getelementptr inbounds %struct.GPR, %struct.GPR* %2300, i32 0, i32 33
  %2302 = getelementptr inbounds %struct.Reg, %struct.Reg* %2301, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %2302 to i64*
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 15
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %2305 to i64*
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2306, i64 0, i64 1
  %YMM1.i151 = bitcast %union.VectorReg* %2307 to %"class.std::bitset"*
  %2308 = bitcast %"class.std::bitset"* %YMM1.i151 to i8*
  %2309 = load i64, i64* %RBP.i150
  %2310 = sub i64 %2309, 80
  %2311 = load i64, i64* %PC.i149
  %2312 = add i64 %2311, 5
  store i64 %2312, i64* %PC.i149
  %2313 = inttoptr i64 %2310 to double*
  %2314 = load double, double* %2313
  %2315 = bitcast i8* %2308 to double*
  store double %2314, double* %2315, align 1
  %2316 = getelementptr inbounds i8, i8* %2308, i64 8
  %2317 = bitcast i8* %2316 to double*
  store double 0.000000e+00, double* %2317, align 1
  store %struct.Memory* %loadMem_40141c, %struct.Memory** %MEMORY
  %loadMem_401421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2319 = getelementptr inbounds %struct.GPR, %struct.GPR* %2318, i32 0, i32 33
  %2320 = getelementptr inbounds %struct.Reg, %struct.Reg* %2319, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2320 to i64*
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2322 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2321, i64 0, i64 1
  %YMM1.i147 = bitcast %union.VectorReg* %2322 to %"class.std::bitset"*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2324 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2323, i64 0, i64 0
  %XMM0.i148 = bitcast %union.VectorReg* %2324 to %union.vec128_t*
  %2325 = bitcast %"class.std::bitset"* %YMM1.i147 to i8*
  %2326 = bitcast %"class.std::bitset"* %YMM1.i147 to i8*
  %2327 = bitcast %union.vec128_t* %XMM0.i148 to i8*
  %2328 = load i64, i64* %PC.i146
  %2329 = add i64 %2328, 4
  store i64 %2329, i64* %PC.i146
  %2330 = bitcast i8* %2326 to double*
  %2331 = load double, double* %2330, align 1
  %2332 = getelementptr inbounds i8, i8* %2326, i64 8
  %2333 = bitcast i8* %2332 to i64*
  %2334 = load i64, i64* %2333, align 1
  %2335 = bitcast i8* %2327 to double*
  %2336 = load double, double* %2335, align 1
  %2337 = fmul double %2331, %2336
  %2338 = bitcast i8* %2325 to double*
  store double %2337, double* %2338, align 1
  %2339 = getelementptr inbounds i8, i8* %2325, i64 8
  %2340 = bitcast i8* %2339 to i64*
  store i64 %2334, i64* %2340, align 1
  store %struct.Memory* %loadMem_401421, %struct.Memory** %MEMORY
  %loadMem_401425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 33
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %2343 to i64*
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2345 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2344, i64 0, i64 0
  %YMM0.i145 = bitcast %union.VectorReg* %2345 to %"class.std::bitset"*
  %2346 = bitcast %"class.std::bitset"* %YMM0.i145 to i8*
  %2347 = load i64, i64* %PC.i144
  %2348 = add i64 %2347, 9
  store i64 %2348, i64* %PC.i144
  %2349 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %2350 = bitcast i8* %2346 to double*
  store double %2349, double* %2350, align 1
  %2351 = getelementptr inbounds i8, i8* %2346, i64 8
  %2352 = bitcast i8* %2351 to double*
  store double 0.000000e+00, double* %2352, align 1
  store %struct.Memory* %loadMem_401425, %struct.Memory** %MEMORY
  %loadMem_40142e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 33
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %2355 to i64*
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 15
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %2358 to i64*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2360 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2359, i64 0, i64 1
  %XMM1.i143 = bitcast %union.VectorReg* %2360 to %union.vec128_t*
  %2361 = load i64, i64* %RBP.i142
  %2362 = sub i64 %2361, 88
  %2363 = bitcast %union.vec128_t* %XMM1.i143 to i8*
  %2364 = load i64, i64* %PC.i141
  %2365 = add i64 %2364, 5
  store i64 %2365, i64* %PC.i141
  %2366 = bitcast i8* %2363 to double*
  %2367 = load double, double* %2366, align 1
  %2368 = inttoptr i64 %2362 to double*
  store double %2367, double* %2368
  store %struct.Memory* %loadMem_40142e, %struct.Memory** %MEMORY
  %loadMem1_401433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2370 = getelementptr inbounds %struct.GPR, %struct.GPR* %2369, i32 0, i32 33
  %2371 = getelementptr inbounds %struct.Reg, %struct.Reg* %2370, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %2371 to i64*
  %2372 = load i64, i64* %PC.i140
  %2373 = add i64 %2372, -3619
  %2374 = load i64, i64* %PC.i140
  %2375 = add i64 %2374, 5
  %2376 = load i64, i64* %PC.i140
  %2377 = add i64 %2376, 5
  store i64 %2377, i64* %PC.i140
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2379 = load i64, i64* %2378, align 8
  %2380 = add i64 %2379, -8
  %2381 = inttoptr i64 %2380 to i64*
  store i64 %2375, i64* %2381
  store i64 %2380, i64* %2378, align 8
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2373, i64* %2382, align 8
  store %struct.Memory* %loadMem1_401433, %struct.Memory** %MEMORY
  %loadMem2_401433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401433 = load i64, i64* %3
  %call2_401433 = call %struct.Memory* @ext_tan(%struct.State* %0, i64 %loadPC_401433, %struct.Memory* %loadMem2_401433)
  store %struct.Memory* %call2_401433, %struct.Memory** %MEMORY
  %loadMem_401438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 33
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %2385 to i64*
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2387 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2386, i64 0, i64 1
  %YMM1.i139 = bitcast %union.VectorReg* %2387 to %"class.std::bitset"*
  %2388 = bitcast %"class.std::bitset"* %YMM1.i139 to i8*
  %2389 = load i64, i64* %PC.i138
  %2390 = add i64 %2389, 544
  %2391 = load i64, i64* %PC.i138
  %2392 = add i64 %2391, 8
  store i64 %2392, i64* %PC.i138
  %2393 = inttoptr i64 %2390 to double*
  %2394 = load double, double* %2393
  %2395 = bitcast i8* %2388 to double*
  store double %2394, double* %2395, align 1
  %2396 = getelementptr inbounds i8, i8* %2388, i64 8
  %2397 = bitcast i8* %2396 to double*
  store double 0.000000e+00, double* %2397, align 1
  store %struct.Memory* %loadMem_401438, %struct.Memory** %MEMORY
  %loadMem_401440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2399 = getelementptr inbounds %struct.GPR, %struct.GPR* %2398, i32 0, i32 33
  %2400 = getelementptr inbounds %struct.Reg, %struct.Reg* %2399, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %2400 to i64*
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2402 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2401, i64 0, i64 1
  %YMM1.i136 = bitcast %union.VectorReg* %2402 to %"class.std::bitset"*
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2404 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2403, i64 0, i64 0
  %XMM0.i137 = bitcast %union.VectorReg* %2404 to %union.vec128_t*
  %2405 = bitcast %"class.std::bitset"* %YMM1.i136 to i8*
  %2406 = bitcast %"class.std::bitset"* %YMM1.i136 to i8*
  %2407 = bitcast %union.vec128_t* %XMM0.i137 to i8*
  %2408 = load i64, i64* %PC.i135
  %2409 = add i64 %2408, 4
  store i64 %2409, i64* %PC.i135
  %2410 = bitcast i8* %2406 to double*
  %2411 = load double, double* %2410, align 1
  %2412 = getelementptr inbounds i8, i8* %2406, i64 8
  %2413 = bitcast i8* %2412 to i64*
  %2414 = load i64, i64* %2413, align 1
  %2415 = bitcast i8* %2407 to double*
  %2416 = load double, double* %2415, align 1
  %2417 = fdiv double %2411, %2416
  %2418 = bitcast i8* %2405 to double*
  store double %2417, double* %2418, align 1
  %2419 = getelementptr inbounds i8, i8* %2405, i64 8
  %2420 = bitcast i8* %2419 to i64*
  store i64 %2414, i64* %2420, align 1
  store %struct.Memory* %loadMem_401440, %struct.Memory** %MEMORY
  %loadMem_401444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2422 = getelementptr inbounds %struct.GPR, %struct.GPR* %2421, i32 0, i32 33
  %2423 = getelementptr inbounds %struct.Reg, %struct.Reg* %2422, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %2423 to i64*
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2425 = getelementptr inbounds %struct.GPR, %struct.GPR* %2424, i32 0, i32 15
  %2426 = getelementptr inbounds %struct.Reg, %struct.Reg* %2425, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %2426 to i64*
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2428 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2427, i64 0, i64 0
  %YMM0.i134 = bitcast %union.VectorReg* %2428 to %"class.std::bitset"*
  %2429 = bitcast %"class.std::bitset"* %YMM0.i134 to i8*
  %2430 = load i64, i64* %RBP.i133
  %2431 = sub i64 %2430, 88
  %2432 = load i64, i64* %PC.i132
  %2433 = add i64 %2432, 5
  store i64 %2433, i64* %PC.i132
  %2434 = inttoptr i64 %2431 to double*
  %2435 = load double, double* %2434
  %2436 = bitcast i8* %2429 to double*
  store double %2435, double* %2436, align 1
  %2437 = getelementptr inbounds i8, i8* %2429, i64 8
  %2438 = bitcast i8* %2437 to double*
  store double 0.000000e+00, double* %2438, align 1
  store %struct.Memory* %loadMem_401444, %struct.Memory** %MEMORY
  %loadMem_401449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2440 = getelementptr inbounds %struct.GPR, %struct.GPR* %2439, i32 0, i32 33
  %2441 = getelementptr inbounds %struct.Reg, %struct.Reg* %2440, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %2441 to i64*
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2443 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2442, i64 0, i64 0
  %YMM0.i130 = bitcast %union.VectorReg* %2443 to %"class.std::bitset"*
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2445 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2444, i64 0, i64 1
  %XMM1.i131 = bitcast %union.VectorReg* %2445 to %union.vec128_t*
  %2446 = bitcast %"class.std::bitset"* %YMM0.i130 to i8*
  %2447 = bitcast %"class.std::bitset"* %YMM0.i130 to i8*
  %2448 = bitcast %union.vec128_t* %XMM1.i131 to i8*
  %2449 = load i64, i64* %PC.i129
  %2450 = add i64 %2449, 4
  store i64 %2450, i64* %PC.i129
  %2451 = bitcast i8* %2447 to double*
  %2452 = load double, double* %2451, align 1
  %2453 = getelementptr inbounds i8, i8* %2447, i64 8
  %2454 = bitcast i8* %2453 to i64*
  %2455 = load i64, i64* %2454, align 1
  %2456 = bitcast i8* %2448 to double*
  %2457 = load double, double* %2456, align 1
  %2458 = fmul double %2452, %2457
  %2459 = bitcast i8* %2446 to double*
  store double %2458, double* %2459, align 1
  %2460 = getelementptr inbounds i8, i8* %2446, i64 8
  %2461 = bitcast i8* %2460 to i64*
  store i64 %2455, i64* %2461, align 1
  store %struct.Memory* %loadMem_401449, %struct.Memory** %MEMORY
  %loadMem_40144d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 33
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %2464 to i64*
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2466 = getelementptr inbounds %struct.GPR, %struct.GPR* %2465, i32 0, i32 15
  %2467 = getelementptr inbounds %struct.Reg, %struct.Reg* %2466, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %2467 to i64*
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2469 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2468, i64 0, i64 0
  %YMM0.i128 = bitcast %union.VectorReg* %2469 to %"class.std::bitset"*
  %2470 = bitcast %"class.std::bitset"* %YMM0.i128 to i8*
  %2471 = bitcast %"class.std::bitset"* %YMM0.i128 to i8*
  %2472 = load i64, i64* %RBP.i127
  %2473 = sub i64 %2472, 48
  %2474 = load i64, i64* %PC.i126
  %2475 = add i64 %2474, 5
  store i64 %2475, i64* %PC.i126
  %2476 = bitcast i8* %2471 to double*
  %2477 = load double, double* %2476, align 1
  %2478 = getelementptr inbounds i8, i8* %2471, i64 8
  %2479 = bitcast i8* %2478 to i64*
  %2480 = load i64, i64* %2479, align 1
  %2481 = inttoptr i64 %2473 to double*
  %2482 = load double, double* %2481
  %2483 = fadd double %2477, %2482
  %2484 = bitcast i8* %2470 to double*
  store double %2483, double* %2484, align 1
  %2485 = getelementptr inbounds i8, i8* %2470, i64 8
  %2486 = bitcast i8* %2485 to i64*
  store i64 %2480, i64* %2486, align 1
  store %struct.Memory* %loadMem_40144d, %struct.Memory** %MEMORY
  %loadMem_401452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 33
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2491 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2490, i64 0, i64 0
  %XMM0.i125 = bitcast %union.VectorReg* %2491 to %union.vec128_t*
  %2492 = bitcast %union.vec128_t* %XMM0.i125 to i8*
  %2493 = load i64, i64* %PC.i124
  %2494 = add i64 %2493, 9
  store i64 %2494, i64* %PC.i124
  %2495 = bitcast i8* %2492 to double*
  %2496 = load double, double* %2495, align 1
  store double %2496, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  store %struct.Memory* %loadMem_401452, %struct.Memory** %MEMORY
  %loadMem_40145b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2498 = getelementptr inbounds %struct.GPR, %struct.GPR* %2497, i32 0, i32 33
  %2499 = getelementptr inbounds %struct.Reg, %struct.Reg* %2498, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %2499 to i64*
  %2500 = load i64, i64* %PC.i123
  %2501 = add i64 %2500, 266
  %2502 = load i64, i64* %PC.i123
  %2503 = add i64 %2502, 5
  store i64 %2503, i64* %PC.i123
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2501, i64* %2504, align 8
  store %struct.Memory* %loadMem_40145b, %struct.Memory** %MEMORY
  br label %block_.L_401565

block_.L_401460:                                  ; preds = %block_4012c7
  %loadMem_401460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2506 = getelementptr inbounds %struct.GPR, %struct.GPR* %2505, i32 0, i32 33
  %2507 = getelementptr inbounds %struct.Reg, %struct.Reg* %2506, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %2507 to i64*
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2509 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2508, i64 0, i64 0
  %YMM0.i122 = bitcast %union.VectorReg* %2509 to %"class.std::bitset"*
  %2510 = bitcast %"class.std::bitset"* %YMM0.i122 to i8*
  %2511 = load i64, i64* %PC.i121
  %2512 = add i64 %2511, 9
  store i64 %2512, i64* %PC.i121
  %2513 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*)
  %2514 = bitcast i8* %2510 to double*
  store double %2513, double* %2514, align 1
  %2515 = getelementptr inbounds i8, i8* %2510, i64 8
  %2516 = bitcast i8* %2515 to double*
  store double 0.000000e+00, double* %2516, align 1
  store %struct.Memory* %loadMem_401460, %struct.Memory** %MEMORY
  %loadMem_401469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 33
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %2519 to i64*
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2521 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2520, i64 0, i64 0
  %YMM0.i120 = bitcast %union.VectorReg* %2521 to %"class.std::bitset"*
  %2522 = bitcast %"class.std::bitset"* %YMM0.i120 to i8*
  %2523 = bitcast %"class.std::bitset"* %YMM0.i120 to i8*
  %2524 = load i64, i64* %PC.i119
  %2525 = add i64 %2524, 9
  store i64 %2525, i64* %PC.i119
  %2526 = bitcast i8* %2523 to double*
  %2527 = load double, double* %2526, align 1
  %2528 = getelementptr inbounds i8, i8* %2523, i64 8
  %2529 = bitcast i8* %2528 to i64*
  %2530 = load i64, i64* %2529, align 1
  %2531 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*)
  %2532 = fdiv double %2527, %2531
  %2533 = bitcast i8* %2522 to double*
  store double %2532, double* %2533, align 1
  %2534 = getelementptr inbounds i8, i8* %2522, i64 8
  %2535 = bitcast i8* %2534 to i64*
  store i64 %2530, i64* %2535, align 1
  store %struct.Memory* %loadMem_401469, %struct.Memory** %MEMORY
  %loadMem_401472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2537 = getelementptr inbounds %struct.GPR, %struct.GPR* %2536, i32 0, i32 33
  %2538 = getelementptr inbounds %struct.Reg, %struct.Reg* %2537, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %2538 to i64*
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2540 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2539, i64 0, i64 1
  %YMM1.i118 = bitcast %union.VectorReg* %2540 to %"class.std::bitset"*
  %2541 = bitcast %"class.std::bitset"* %YMM1.i118 to i8*
  %2542 = load i64, i64* %PC.i117
  %2543 = add i64 %2542, 9
  store i64 %2543, i64* %PC.i117
  %2544 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %2545 = bitcast i8* %2541 to double*
  store double %2544, double* %2545, align 1
  %2546 = getelementptr inbounds i8, i8* %2541, i64 8
  %2547 = bitcast i8* %2546 to double*
  store double 0.000000e+00, double* %2547, align 1
  store %struct.Memory* %loadMem_401472, %struct.Memory** %MEMORY
  %loadMem_40147b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 33
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %2550 to i64*
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2552 = getelementptr inbounds %struct.GPR, %struct.GPR* %2551, i32 0, i32 15
  %2553 = getelementptr inbounds %struct.Reg, %struct.Reg* %2552, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %2553 to i64*
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2555 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2554, i64 0, i64 0
  %XMM0.i116 = bitcast %union.VectorReg* %2555 to %union.vec128_t*
  %2556 = load i64, i64* %RBP.i115
  %2557 = sub i64 %2556, 96
  %2558 = bitcast %union.vec128_t* %XMM0.i116 to i8*
  %2559 = load i64, i64* %PC.i114
  %2560 = add i64 %2559, 5
  store i64 %2560, i64* %PC.i114
  %2561 = bitcast i8* %2558 to double*
  %2562 = load double, double* %2561, align 1
  %2563 = inttoptr i64 %2557 to double*
  store double %2562, double* %2563
  store %struct.Memory* %loadMem_40147b, %struct.Memory** %MEMORY
  %loadMem_401480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 33
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %2566 to i64*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2568 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2567, i64 0, i64 0
  %YMM0.i112 = bitcast %union.VectorReg* %2568 to %"class.std::bitset"*
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2570 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2569, i64 0, i64 1
  %XMM1.i113 = bitcast %union.VectorReg* %2570 to %union.vec128_t*
  %2571 = bitcast %"class.std::bitset"* %YMM0.i112 to i8*
  %2572 = bitcast %union.vec128_t* %XMM1.i113 to i8*
  %2573 = load i64, i64* %PC.i111
  %2574 = add i64 %2573, 3
  store i64 %2574, i64* %PC.i111
  %2575 = bitcast i8* %2572 to <2 x i32>*
  %2576 = load <2 x i32>, <2 x i32>* %2575, align 1
  %2577 = getelementptr inbounds i8, i8* %2572, i64 8
  %2578 = bitcast i8* %2577 to <2 x i32>*
  %2579 = load <2 x i32>, <2 x i32>* %2578, align 1
  %2580 = extractelement <2 x i32> %2576, i32 0
  %2581 = bitcast i8* %2571 to i32*
  store i32 %2580, i32* %2581, align 1
  %2582 = extractelement <2 x i32> %2576, i32 1
  %2583 = getelementptr inbounds i8, i8* %2571, i64 4
  %2584 = bitcast i8* %2583 to i32*
  store i32 %2582, i32* %2584, align 1
  %2585 = extractelement <2 x i32> %2579, i32 0
  %2586 = getelementptr inbounds i8, i8* %2571, i64 8
  %2587 = bitcast i8* %2586 to i32*
  store i32 %2585, i32* %2587, align 1
  %2588 = extractelement <2 x i32> %2579, i32 1
  %2589 = getelementptr inbounds i8, i8* %2571, i64 12
  %2590 = bitcast i8* %2589 to i32*
  store i32 %2588, i32* %2590, align 1
  store %struct.Memory* %loadMem_401480, %struct.Memory** %MEMORY
  %loadMem1_401483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 33
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %2593 to i64*
  %2594 = load i64, i64* %PC.i110
  %2595 = add i64 %2594, -3683
  %2596 = load i64, i64* %PC.i110
  %2597 = add i64 %2596, 5
  %2598 = load i64, i64* %PC.i110
  %2599 = add i64 %2598, 5
  store i64 %2599, i64* %PC.i110
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2601 = load i64, i64* %2600, align 8
  %2602 = add i64 %2601, -8
  %2603 = inttoptr i64 %2602 to i64*
  store i64 %2597, i64* %2603
  store i64 %2602, i64* %2600, align 8
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2595, i64* %2604, align 8
  store %struct.Memory* %loadMem1_401483, %struct.Memory** %MEMORY
  %loadMem2_401483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401483 = load i64, i64* %3
  %call2_401483 = call %struct.Memory* @ext_sin(%struct.State* %0, i64 %loadPC_401483, %struct.Memory* %loadMem2_401483)
  store %struct.Memory* %call2_401483, %struct.Memory** %MEMORY
  %loadMem_401488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 33
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 15
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %2610 to i64*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2612 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2611, i64 0, i64 1
  %YMM1.i109 = bitcast %union.VectorReg* %2612 to %"class.std::bitset"*
  %2613 = bitcast %"class.std::bitset"* %YMM1.i109 to i8*
  %2614 = load i64, i64* %RBP.i108
  %2615 = sub i64 %2614, 96
  %2616 = load i64, i64* %PC.i107
  %2617 = add i64 %2616, 5
  store i64 %2617, i64* %PC.i107
  %2618 = inttoptr i64 %2615 to double*
  %2619 = load double, double* %2618
  %2620 = bitcast i8* %2613 to double*
  store double %2619, double* %2620, align 1
  %2621 = getelementptr inbounds i8, i8* %2613, i64 8
  %2622 = bitcast i8* %2621 to double*
  store double 0.000000e+00, double* %2622, align 1
  store %struct.Memory* %loadMem_401488, %struct.Memory** %MEMORY
  %loadMem_40148d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 33
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %2625 to i64*
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2627 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2626, i64 0, i64 1
  %YMM1.i105 = bitcast %union.VectorReg* %2627 to %"class.std::bitset"*
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2629 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2628, i64 0, i64 0
  %XMM0.i106 = bitcast %union.VectorReg* %2629 to %union.vec128_t*
  %2630 = bitcast %"class.std::bitset"* %YMM1.i105 to i8*
  %2631 = bitcast %"class.std::bitset"* %YMM1.i105 to i8*
  %2632 = bitcast %union.vec128_t* %XMM0.i106 to i8*
  %2633 = load i64, i64* %PC.i104
  %2634 = add i64 %2633, 4
  store i64 %2634, i64* %PC.i104
  %2635 = bitcast i8* %2631 to double*
  %2636 = load double, double* %2635, align 1
  %2637 = getelementptr inbounds i8, i8* %2631, i64 8
  %2638 = bitcast i8* %2637 to i64*
  %2639 = load i64, i64* %2638, align 1
  %2640 = bitcast i8* %2632 to double*
  %2641 = load double, double* %2640, align 1
  %2642 = fmul double %2636, %2641
  %2643 = bitcast i8* %2630 to double*
  store double %2642, double* %2643, align 1
  %2644 = getelementptr inbounds i8, i8* %2630, i64 8
  %2645 = bitcast i8* %2644 to i64*
  store i64 %2639, i64* %2645, align 1
  store %struct.Memory* %loadMem_40148d, %struct.Memory** %MEMORY
  %loadMem_401491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2647 = getelementptr inbounds %struct.GPR, %struct.GPR* %2646, i32 0, i32 33
  %2648 = getelementptr inbounds %struct.Reg, %struct.Reg* %2647, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %2648 to i64*
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2650 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2649, i64 0, i64 0
  %YMM0.i102 = bitcast %union.VectorReg* %2650 to %"class.std::bitset"*
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2652 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2651, i64 0, i64 1
  %XMM1.i103 = bitcast %union.VectorReg* %2652 to %union.vec128_t*
  %2653 = bitcast %"class.std::bitset"* %YMM0.i102 to i8*
  %2654 = bitcast %union.vec128_t* %XMM1.i103 to i8*
  %2655 = load i64, i64* %PC.i101
  %2656 = add i64 %2655, 3
  store i64 %2656, i64* %PC.i101
  %2657 = bitcast i8* %2654 to <2 x i32>*
  %2658 = load <2 x i32>, <2 x i32>* %2657, align 1
  %2659 = getelementptr inbounds i8, i8* %2654, i64 8
  %2660 = bitcast i8* %2659 to <2 x i32>*
  %2661 = load <2 x i32>, <2 x i32>* %2660, align 1
  %2662 = extractelement <2 x i32> %2658, i32 0
  %2663 = bitcast i8* %2653 to i32*
  store i32 %2662, i32* %2663, align 1
  %2664 = extractelement <2 x i32> %2658, i32 1
  %2665 = getelementptr inbounds i8, i8* %2653, i64 4
  %2666 = bitcast i8* %2665 to i32*
  store i32 %2664, i32* %2666, align 1
  %2667 = extractelement <2 x i32> %2661, i32 0
  %2668 = getelementptr inbounds i8, i8* %2653, i64 8
  %2669 = bitcast i8* %2668 to i32*
  store i32 %2667, i32* %2669, align 1
  %2670 = extractelement <2 x i32> %2661, i32 1
  %2671 = getelementptr inbounds i8, i8* %2653, i64 12
  %2672 = bitcast i8* %2671 to i32*
  store i32 %2670, i32* %2672, align 1
  store %struct.Memory* %loadMem_401491, %struct.Memory** %MEMORY
  %loadMem1_401494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2674 = getelementptr inbounds %struct.GPR, %struct.GPR* %2673, i32 0, i32 33
  %2675 = getelementptr inbounds %struct.Reg, %struct.Reg* %2674, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %2675 to i64*
  %2676 = load i64, i64* %PC.i100
  %2677 = add i64 %2676, -3684
  %2678 = load i64, i64* %PC.i100
  %2679 = add i64 %2678, 5
  %2680 = load i64, i64* %PC.i100
  %2681 = add i64 %2680, 5
  store i64 %2681, i64* %PC.i100
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2683 = load i64, i64* %2682, align 8
  %2684 = add i64 %2683, -8
  %2685 = inttoptr i64 %2684 to i64*
  store i64 %2679, i64* %2685
  store i64 %2684, i64* %2682, align 8
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2677, i64* %2686, align 8
  store %struct.Memory* %loadMem1_401494, %struct.Memory** %MEMORY
  %loadMem2_401494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401494 = load i64, i64* %3
  %2687 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @asin to i64), %struct.Memory* %loadMem2_401494)
  store %struct.Memory* %2687, %struct.Memory** %MEMORY
  %loadMem_401499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 33
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %2690 to i64*
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2692 = getelementptr inbounds %struct.GPR, %struct.GPR* %2691, i32 0, i32 1
  %2693 = getelementptr inbounds %struct.Reg, %struct.Reg* %2692, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %2693 to i64*
  %2694 = load i64, i64* %PC.i95
  %2695 = add i64 %2694, 10
  store i64 %2695, i64* %PC.i95
  store i64 -9223372036854775808, i64* %RAX.i96, align 8
  store %struct.Memory* %loadMem_401499, %struct.Memory** %MEMORY
  %loadMem_4014a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 33
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %2698 to i64*
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2700 = getelementptr inbounds %struct.GPR, %struct.GPR* %2699, i32 0, i32 5
  %2701 = getelementptr inbounds %struct.Reg, %struct.Reg* %2700, i32 0, i32 0
  %RCX.i93 = bitcast %union.anon* %2701 to i64*
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2703 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2702, i64 0, i64 0
  %XMM0.i94 = bitcast %union.VectorReg* %2703 to %union.vec128_t*
  %2704 = bitcast %union.vec128_t* %XMM0.i94 to i8*
  %2705 = load i64, i64* %PC.i92
  %2706 = add i64 %2705, 5
  store i64 %2706, i64* %PC.i92
  %2707 = bitcast i8* %2704 to i64*
  %2708 = load i64, i64* %2707, align 1
  store i64 %2708, i64* %RCX.i93, align 1
  store %struct.Memory* %loadMem_4014a3, %struct.Memory** %MEMORY
  %loadMem_4014a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2710 = getelementptr inbounds %struct.GPR, %struct.GPR* %2709, i32 0, i32 33
  %2711 = getelementptr inbounds %struct.Reg, %struct.Reg* %2710, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %2711 to i64*
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2713 = getelementptr inbounds %struct.GPR, %struct.GPR* %2712, i32 0, i32 1
  %2714 = getelementptr inbounds %struct.Reg, %struct.Reg* %2713, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %2714 to i64*
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 5
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %RCX.i91 = bitcast %union.anon* %2717 to i64*
  %2718 = load i64, i64* %RCX.i91
  %2719 = load i64, i64* %RAX.i90
  %2720 = load i64, i64* %PC.i89
  %2721 = add i64 %2720, 3
  store i64 %2721, i64* %PC.i89
  %2722 = xor i64 %2719, %2718
  store i64 %2722, i64* %RCX.i91, align 8
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2723, align 1
  %2724 = trunc i64 %2722 to i32
  %2725 = and i32 %2724, 255
  %2726 = call i32 @llvm.ctpop.i32(i32 %2725)
  %2727 = trunc i32 %2726 to i8
  %2728 = and i8 %2727, 1
  %2729 = xor i8 %2728, 1
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2729, i8* %2730, align 1
  %2731 = icmp eq i64 %2722, 0
  %2732 = zext i1 %2731 to i8
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2732, i8* %2733, align 1
  %2734 = lshr i64 %2722, 63
  %2735 = trunc i64 %2734 to i8
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2735, i8* %2736, align 1
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2737, align 1
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2738, align 1
  store %struct.Memory* %loadMem_4014a8, %struct.Memory** %MEMORY
  %loadMem_4014ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 33
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %2741 to i64*
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 5
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %RCX.i87 = bitcast %union.anon* %2744 to i64*
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2746 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2745, i64 0, i64 0
  %YMM0.i88 = bitcast %union.VectorReg* %2746 to %"class.std::bitset"*
  %2747 = bitcast %"class.std::bitset"* %YMM0.i88 to i8*
  %2748 = load i64, i64* %RCX.i87
  %2749 = load i64, i64* %PC.i86
  %2750 = add i64 %2749, 5
  store i64 %2750, i64* %PC.i86
  %2751 = bitcast i8* %2747 to i64*
  store i64 %2748, i64* %2751, align 1
  %2752 = getelementptr inbounds i8, i8* %2747, i64 8
  %2753 = bitcast i8* %2752 to i64*
  store i64 0, i64* %2753, align 1
  store %struct.Memory* %loadMem_4014ab, %struct.Memory** %MEMORY
  %loadMem_4014b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 33
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %2756 to i64*
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 15
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %2759 to i64*
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2761 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2760, i64 0, i64 0
  %XMM0.i85 = bitcast %union.VectorReg* %2761 to %union.vec128_t*
  %2762 = load i64, i64* %RBP.i84
  %2763 = sub i64 %2762, 16
  %2764 = bitcast %union.vec128_t* %XMM0.i85 to i8*
  %2765 = load i64, i64* %PC.i83
  %2766 = add i64 %2765, 5
  store i64 %2766, i64* %PC.i83
  %2767 = bitcast i8* %2764 to double*
  %2768 = load double, double* %2767, align 1
  %2769 = inttoptr i64 %2763 to double*
  store double %2768, double* %2769
  store %struct.Memory* %loadMem_4014b0, %struct.Memory** %MEMORY
  %loadMem_4014b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 33
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %2772 to i64*
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2774 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2773, i64 0, i64 0
  %YMM0.i82 = bitcast %union.VectorReg* %2774 to %"class.std::bitset"*
  %2775 = bitcast %"class.std::bitset"* %YMM0.i82 to i8*
  %2776 = load i64, i64* %PC.i81
  %2777 = add i64 %2776, 9
  store i64 %2777, i64* %PC.i81
  %2778 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  %2779 = bitcast i8* %2775 to double*
  store double %2778, double* %2779, align 1
  %2780 = getelementptr inbounds i8, i8* %2775, i64 8
  %2781 = bitcast i8* %2780 to double*
  store double 0.000000e+00, double* %2781, align 1
  store %struct.Memory* %loadMem_4014b5, %struct.Memory** %MEMORY
  %loadMem_4014be = load %struct.Memory*, %struct.Memory** %MEMORY
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2783 = getelementptr inbounds %struct.GPR, %struct.GPR* %2782, i32 0, i32 33
  %2784 = getelementptr inbounds %struct.Reg, %struct.Reg* %2783, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %2784 to i64*
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2786 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2785, i64 0, i64 1
  %YMM1.i80 = bitcast %union.VectorReg* %2786 to %"class.std::bitset"*
  %2787 = bitcast %"class.std::bitset"* %YMM1.i80 to i8*
  %2788 = load i64, i64* %PC.i79
  %2789 = add i64 %2788, 9
  store i64 %2789, i64* %PC.i79
  %2790 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*)
  %2791 = bitcast i8* %2787 to double*
  store double %2790, double* %2791, align 1
  %2792 = getelementptr inbounds i8, i8* %2787, i64 8
  %2793 = bitcast i8* %2792 to double*
  store double 0.000000e+00, double* %2793, align 1
  store %struct.Memory* %loadMem_4014be, %struct.Memory** %MEMORY
  %loadMem_4014c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2795 = getelementptr inbounds %struct.GPR, %struct.GPR* %2794, i32 0, i32 33
  %2796 = getelementptr inbounds %struct.Reg, %struct.Reg* %2795, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %2796 to i64*
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 15
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %2799 to i64*
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2801 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2800, i64 0, i64 2
  %YMM2.i78 = bitcast %union.VectorReg* %2801 to %"class.std::bitset"*
  %2802 = bitcast %"class.std::bitset"* %YMM2.i78 to i8*
  %2803 = load i64, i64* %RBP.i77
  %2804 = sub i64 %2803, 16
  %2805 = load i64, i64* %PC.i76
  %2806 = add i64 %2805, 5
  store i64 %2806, i64* %PC.i76
  %2807 = inttoptr i64 %2804 to double*
  %2808 = load double, double* %2807
  %2809 = bitcast i8* %2802 to double*
  store double %2808, double* %2809, align 1
  %2810 = getelementptr inbounds i8, i8* %2802, i64 8
  %2811 = bitcast i8* %2810 to double*
  store double 0.000000e+00, double* %2811, align 1
  store %struct.Memory* %loadMem_4014c7, %struct.Memory** %MEMORY
  %loadMem_4014cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2813 = getelementptr inbounds %struct.GPR, %struct.GPR* %2812, i32 0, i32 33
  %2814 = getelementptr inbounds %struct.Reg, %struct.Reg* %2813, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %2814 to i64*
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 5
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %RCX.i74 = bitcast %union.anon* %2817 to i64*
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2819 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2818, i64 0, i64 2
  %XMM2.i75 = bitcast %union.VectorReg* %2819 to %union.vec128_t*
  %2820 = bitcast %union.vec128_t* %XMM2.i75 to i8*
  %2821 = load i64, i64* %PC.i73
  %2822 = add i64 %2821, 5
  store i64 %2822, i64* %PC.i73
  %2823 = bitcast i8* %2820 to i64*
  %2824 = load i64, i64* %2823, align 1
  store i64 %2824, i64* %RCX.i74, align 1
  store %struct.Memory* %loadMem_4014cc, %struct.Memory** %MEMORY
  %loadMem_4014d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 33
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %2827 to i64*
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2829 = getelementptr inbounds %struct.GPR, %struct.GPR* %2828, i32 0, i32 1
  %2830 = getelementptr inbounds %struct.Reg, %struct.Reg* %2829, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %2830 to i64*
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2832 = getelementptr inbounds %struct.GPR, %struct.GPR* %2831, i32 0, i32 5
  %2833 = getelementptr inbounds %struct.Reg, %struct.Reg* %2832, i32 0, i32 0
  %RCX.i72 = bitcast %union.anon* %2833 to i64*
  %2834 = load i64, i64* %RCX.i72
  %2835 = load i64, i64* %RAX.i71
  %2836 = load i64, i64* %PC.i70
  %2837 = add i64 %2836, 3
  store i64 %2837, i64* %PC.i70
  %2838 = xor i64 %2835, %2834
  store i64 %2838, i64* %RCX.i72, align 8
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2839, align 1
  %2840 = trunc i64 %2838 to i32
  %2841 = and i32 %2840, 255
  %2842 = call i32 @llvm.ctpop.i32(i32 %2841)
  %2843 = trunc i32 %2842 to i8
  %2844 = and i8 %2843, 1
  %2845 = xor i8 %2844, 1
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2845, i8* %2846, align 1
  %2847 = icmp eq i64 %2838, 0
  %2848 = zext i1 %2847 to i8
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2848, i8* %2849, align 1
  %2850 = lshr i64 %2838, 63
  %2851 = trunc i64 %2850 to i8
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2851, i8* %2852, align 1
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2853, align 1
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2854, align 1
  store %struct.Memory* %loadMem_4014d1, %struct.Memory** %MEMORY
  %loadMem_4014d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2856 = getelementptr inbounds %struct.GPR, %struct.GPR* %2855, i32 0, i32 33
  %2857 = getelementptr inbounds %struct.Reg, %struct.Reg* %2856, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %2857 to i64*
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2859 = getelementptr inbounds %struct.GPR, %struct.GPR* %2858, i32 0, i32 5
  %2860 = getelementptr inbounds %struct.Reg, %struct.Reg* %2859, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %2860 to i64*
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2862 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2861, i64 0, i64 2
  %YMM2.i69 = bitcast %union.VectorReg* %2862 to %"class.std::bitset"*
  %2863 = bitcast %"class.std::bitset"* %YMM2.i69 to i8*
  %2864 = load i64, i64* %RCX.i68
  %2865 = load i64, i64* %PC.i67
  %2866 = add i64 %2865, 5
  store i64 %2866, i64* %PC.i67
  %2867 = bitcast i8* %2863 to i64*
  store i64 %2864, i64* %2867, align 1
  %2868 = getelementptr inbounds i8, i8* %2863, i64 8
  %2869 = bitcast i8* %2868 to i64*
  store i64 0, i64* %2869, align 1
  store %struct.Memory* %loadMem_4014d4, %struct.Memory** %MEMORY
  %loadMem_4014d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 33
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %2872 to i64*
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 15
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %2875 to i64*
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2877 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2876, i64 0, i64 0
  %XMM0.i66 = bitcast %union.VectorReg* %2877 to %union.vec128_t*
  %2878 = load i64, i64* %RBP.i65
  %2879 = sub i64 %2878, 104
  %2880 = bitcast %union.vec128_t* %XMM0.i66 to i8*
  %2881 = load i64, i64* %PC.i64
  %2882 = add i64 %2881, 5
  store i64 %2882, i64* %PC.i64
  %2883 = bitcast i8* %2880 to double*
  %2884 = load double, double* %2883, align 1
  %2885 = inttoptr i64 %2879 to double*
  store double %2884, double* %2885
  store %struct.Memory* %loadMem_4014d9, %struct.Memory** %MEMORY
  %loadMem_4014de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 33
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %2888 to i64*
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2890 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2889, i64 0, i64 0
  %YMM0.i62 = bitcast %union.VectorReg* %2890 to %"class.std::bitset"*
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2892 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2891, i64 0, i64 2
  %XMM2.i63 = bitcast %union.VectorReg* %2892 to %union.vec128_t*
  %2893 = bitcast %"class.std::bitset"* %YMM0.i62 to i8*
  %2894 = bitcast %union.vec128_t* %XMM2.i63 to i8*
  %2895 = load i64, i64* %PC.i61
  %2896 = add i64 %2895, 3
  store i64 %2896, i64* %PC.i61
  %2897 = bitcast i8* %2894 to <2 x i32>*
  %2898 = load <2 x i32>, <2 x i32>* %2897, align 1
  %2899 = getelementptr inbounds i8, i8* %2894, i64 8
  %2900 = bitcast i8* %2899 to <2 x i32>*
  %2901 = load <2 x i32>, <2 x i32>* %2900, align 1
  %2902 = extractelement <2 x i32> %2898, i32 0
  %2903 = bitcast i8* %2893 to i32*
  store i32 %2902, i32* %2903, align 1
  %2904 = extractelement <2 x i32> %2898, i32 1
  %2905 = getelementptr inbounds i8, i8* %2893, i64 4
  %2906 = bitcast i8* %2905 to i32*
  store i32 %2904, i32* %2906, align 1
  %2907 = extractelement <2 x i32> %2901, i32 0
  %2908 = getelementptr inbounds i8, i8* %2893, i64 8
  %2909 = bitcast i8* %2908 to i32*
  store i32 %2907, i32* %2909, align 1
  %2910 = extractelement <2 x i32> %2901, i32 1
  %2911 = getelementptr inbounds i8, i8* %2893, i64 12
  %2912 = bitcast i8* %2911 to i32*
  store i32 %2910, i32* %2912, align 1
  store %struct.Memory* %loadMem_4014de, %struct.Memory** %MEMORY
  %loadMem_4014e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 33
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %2915 to i64*
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 1
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %2918 to i64*
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2920 = getelementptr inbounds %struct.GPR, %struct.GPR* %2919, i32 0, i32 15
  %2921 = getelementptr inbounds %struct.Reg, %struct.Reg* %2920, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %2921 to i64*
  %2922 = load i64, i64* %RBP.i60
  %2923 = sub i64 %2922, 112
  %2924 = load i64, i64* %RAX.i59
  %2925 = load i64, i64* %PC.i58
  %2926 = add i64 %2925, 4
  store i64 %2926, i64* %PC.i58
  %2927 = inttoptr i64 %2923 to i64*
  store i64 %2924, i64* %2927
  store %struct.Memory* %loadMem_4014e1, %struct.Memory** %MEMORY
  %loadMem_4014e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 33
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %2930 to i64*
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 15
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %2933 to i64*
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2935 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2934, i64 0, i64 1
  %XMM1.i57 = bitcast %union.VectorReg* %2935 to %union.vec128_t*
  %2936 = load i64, i64* %RBP.i56
  %2937 = sub i64 %2936, 120
  %2938 = bitcast %union.vec128_t* %XMM1.i57 to i8*
  %2939 = load i64, i64* %PC.i55
  %2940 = add i64 %2939, 5
  store i64 %2940, i64* %PC.i55
  %2941 = bitcast i8* %2938 to double*
  %2942 = load double, double* %2941, align 1
  %2943 = inttoptr i64 %2937 to double*
  store double %2942, double* %2943
  store %struct.Memory* %loadMem_4014e5, %struct.Memory** %MEMORY
  %loadMem1_4014ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 33
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %2946 to i64*
  %2947 = load i64, i64* %PC.i54
  %2948 = add i64 %2947, -3834
  %2949 = load i64, i64* %PC.i54
  %2950 = add i64 %2949, 5
  %2951 = load i64, i64* %PC.i54
  %2952 = add i64 %2951, 5
  store i64 %2952, i64* %PC.i54
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2954 = load i64, i64* %2953, align 8
  %2955 = add i64 %2954, -8
  %2956 = inttoptr i64 %2955 to i64*
  store i64 %2950, i64* %2956
  store i64 %2955, i64* %2953, align 8
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2948, i64* %2957, align 8
  store %struct.Memory* %loadMem1_4014ea, %struct.Memory** %MEMORY
  %loadMem2_4014ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4014ea = load i64, i64* %3
  %call2_4014ea = call %struct.Memory* @ext_cos(%struct.State* %0, i64 %loadPC_4014ea, %struct.Memory* %loadMem2_4014ea)
  store %struct.Memory* %call2_4014ea, %struct.Memory** %MEMORY
  %loadMem_4014ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2959 = getelementptr inbounds %struct.GPR, %struct.GPR* %2958, i32 0, i32 33
  %2960 = getelementptr inbounds %struct.Reg, %struct.Reg* %2959, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %2960 to i64*
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 15
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %2963 to i64*
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2965 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2964, i64 0, i64 1
  %YMM1.i53 = bitcast %union.VectorReg* %2965 to %"class.std::bitset"*
  %2966 = bitcast %"class.std::bitset"* %YMM1.i53 to i8*
  %2967 = load i64, i64* %RBP.i52
  %2968 = sub i64 %2967, 120
  %2969 = load i64, i64* %PC.i51
  %2970 = add i64 %2969, 5
  store i64 %2970, i64* %PC.i51
  %2971 = inttoptr i64 %2968 to double*
  %2972 = load double, double* %2971
  %2973 = bitcast i8* %2966 to double*
  store double %2972, double* %2973, align 1
  %2974 = getelementptr inbounds i8, i8* %2966, i64 8
  %2975 = bitcast i8* %2974 to double*
  store double 0.000000e+00, double* %2975, align 1
  store %struct.Memory* %loadMem_4014ef, %struct.Memory** %MEMORY
  %loadMem_4014f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2977 = getelementptr inbounds %struct.GPR, %struct.GPR* %2976, i32 0, i32 33
  %2978 = getelementptr inbounds %struct.Reg, %struct.Reg* %2977, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %2978 to i64*
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2980 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2979, i64 0, i64 1
  %YMM1.i49 = bitcast %union.VectorReg* %2980 to %"class.std::bitset"*
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2982 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2981, i64 0, i64 0
  %XMM0.i50 = bitcast %union.VectorReg* %2982 to %union.vec128_t*
  %2983 = bitcast %"class.std::bitset"* %YMM1.i49 to i8*
  %2984 = bitcast %"class.std::bitset"* %YMM1.i49 to i8*
  %2985 = bitcast %union.vec128_t* %XMM0.i50 to i8*
  %2986 = load i64, i64* %PC.i48
  %2987 = add i64 %2986, 4
  store i64 %2987, i64* %PC.i48
  %2988 = bitcast i8* %2984 to double*
  %2989 = load double, double* %2988, align 1
  %2990 = getelementptr inbounds i8, i8* %2984, i64 8
  %2991 = bitcast i8* %2990 to i64*
  %2992 = load i64, i64* %2991, align 1
  %2993 = bitcast i8* %2985 to double*
  %2994 = load double, double* %2993, align 1
  %2995 = fmul double %2989, %2994
  %2996 = bitcast i8* %2983 to double*
  store double %2995, double* %2996, align 1
  %2997 = getelementptr inbounds i8, i8* %2983, i64 8
  %2998 = bitcast i8* %2997 to i64*
  store i64 %2992, i64* %2998, align 1
  store %struct.Memory* %loadMem_4014f4, %struct.Memory** %MEMORY
  %loadMem_4014f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 33
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3003 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3002, i64 0, i64 0
  %YMM0.i47 = bitcast %union.VectorReg* %3003 to %"class.std::bitset"*
  %3004 = bitcast %"class.std::bitset"* %YMM0.i47 to i8*
  %3005 = load i64, i64* %PC.i46
  %3006 = add i64 %3005, 9
  store i64 %3006, i64* %PC.i46
  %3007 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*)
  %3008 = bitcast i8* %3004 to double*
  store double %3007, double* %3008, align 1
  %3009 = getelementptr inbounds i8, i8* %3004, i64 8
  %3010 = bitcast i8* %3009 to double*
  store double 0.000000e+00, double* %3010, align 1
  store %struct.Memory* %loadMem_4014f8, %struct.Memory** %MEMORY
  %loadMem_401501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3012 = getelementptr inbounds %struct.GPR, %struct.GPR* %3011, i32 0, i32 33
  %3013 = getelementptr inbounds %struct.Reg, %struct.Reg* %3012, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %3013 to i64*
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3015 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3014, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %3015 to %"class.std::bitset"*
  %3016 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %3017 = load i64, i64* %PC.i45
  %3018 = add i64 %3017, 9
  store i64 %3018, i64* %PC.i45
  %3019 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %3020 = bitcast i8* %3016 to double*
  store double %3019, double* %3020, align 1
  %3021 = getelementptr inbounds i8, i8* %3016, i64 8
  %3022 = bitcast i8* %3021 to double*
  store double 0.000000e+00, double* %3022, align 1
  store %struct.Memory* %loadMem_401501, %struct.Memory** %MEMORY
  %loadMem_40150a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 33
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %3025 to i64*
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 15
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %3028 to i64*
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3030 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3029, i64 0, i64 0
  %XMM0.i44 = bitcast %union.VectorReg* %3030 to %union.vec128_t*
  %3031 = load i64, i64* %RBP.i43
  %3032 = sub i64 %3031, 128
  %3033 = bitcast %union.vec128_t* %XMM0.i44 to i8*
  %3034 = load i64, i64* %PC.i42
  %3035 = add i64 %3034, 5
  store i64 %3035, i64* %PC.i42
  %3036 = bitcast i8* %3033 to double*
  %3037 = load double, double* %3036, align 1
  %3038 = inttoptr i64 %3032 to double*
  store double %3037, double* %3038
  store %struct.Memory* %loadMem_40150a, %struct.Memory** %MEMORY
  %loadMem_40150f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3040 = getelementptr inbounds %struct.GPR, %struct.GPR* %3039, i32 0, i32 33
  %3041 = getelementptr inbounds %struct.Reg, %struct.Reg* %3040, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %3041 to i64*
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3043 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3042, i64 0, i64 0
  %YMM0.i41 = bitcast %union.VectorReg* %3043 to %"class.std::bitset"*
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3045 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3044, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %3045 to %union.vec128_t*
  %3046 = bitcast %"class.std::bitset"* %YMM0.i41 to i8*
  %3047 = bitcast %union.vec128_t* %XMM2.i to i8*
  %3048 = load i64, i64* %PC.i40
  %3049 = add i64 %3048, 3
  store i64 %3049, i64* %PC.i40
  %3050 = bitcast i8* %3047 to <2 x i32>*
  %3051 = load <2 x i32>, <2 x i32>* %3050, align 1
  %3052 = getelementptr inbounds i8, i8* %3047, i64 8
  %3053 = bitcast i8* %3052 to <2 x i32>*
  %3054 = load <2 x i32>, <2 x i32>* %3053, align 1
  %3055 = extractelement <2 x i32> %3051, i32 0
  %3056 = bitcast i8* %3046 to i32*
  store i32 %3055, i32* %3056, align 1
  %3057 = extractelement <2 x i32> %3051, i32 1
  %3058 = getelementptr inbounds i8, i8* %3046, i64 4
  %3059 = bitcast i8* %3058 to i32*
  store i32 %3057, i32* %3059, align 1
  %3060 = extractelement <2 x i32> %3054, i32 0
  %3061 = getelementptr inbounds i8, i8* %3046, i64 8
  %3062 = bitcast i8* %3061 to i32*
  store i32 %3060, i32* %3062, align 1
  %3063 = extractelement <2 x i32> %3054, i32 1
  %3064 = getelementptr inbounds i8, i8* %3046, i64 12
  %3065 = bitcast i8* %3064 to i32*
  store i32 %3063, i32* %3065, align 1
  store %struct.Memory* %loadMem_40150f, %struct.Memory** %MEMORY
  %loadMem_401512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3067 = getelementptr inbounds %struct.GPR, %struct.GPR* %3066, i32 0, i32 33
  %3068 = getelementptr inbounds %struct.Reg, %struct.Reg* %3067, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %3068 to i64*
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3070 = getelementptr inbounds %struct.GPR, %struct.GPR* %3069, i32 0, i32 15
  %3071 = getelementptr inbounds %struct.Reg, %struct.Reg* %3070, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %3071 to i64*
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3073 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3072, i64 0, i64 1
  %XMM1.i39 = bitcast %union.VectorReg* %3073 to %union.vec128_t*
  %3074 = load i64, i64* %RBP.i38
  %3075 = sub i64 %3074, 136
  %3076 = bitcast %union.vec128_t* %XMM1.i39 to i8*
  %3077 = load i64, i64* %PC.i37
  %3078 = add i64 %3077, 8
  store i64 %3078, i64* %PC.i37
  %3079 = bitcast i8* %3076 to double*
  %3080 = load double, double* %3079, align 1
  %3081 = inttoptr i64 %3075 to double*
  store double %3080, double* %3081
  store %struct.Memory* %loadMem_401512, %struct.Memory** %MEMORY
  %loadMem1_40151a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 33
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %3084 to i64*
  %3085 = load i64, i64* %PC.i36
  %3086 = add i64 %3085, -3882
  %3087 = load i64, i64* %PC.i36
  %3088 = add i64 %3087, 5
  %3089 = load i64, i64* %PC.i36
  %3090 = add i64 %3089, 5
  store i64 %3090, i64* %PC.i36
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3092 = load i64, i64* %3091, align 8
  %3093 = add i64 %3092, -8
  %3094 = inttoptr i64 %3093 to i64*
  store i64 %3088, i64* %3094
  store i64 %3093, i64* %3091, align 8
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3086, i64* %3095, align 8
  store %struct.Memory* %loadMem1_40151a, %struct.Memory** %MEMORY
  %loadMem2_40151a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40151a = load i64, i64* %3
  %call2_40151a = call %struct.Memory* @ext_cos(%struct.State* %0, i64 %loadPC_40151a, %struct.Memory* %loadMem2_40151a)
  store %struct.Memory* %call2_40151a, %struct.Memory** %MEMORY
  %loadMem_40151f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 33
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %3098 to i64*
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 15
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %3101 to i64*
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3103 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3102, i64 0, i64 1
  %YMM1.i35 = bitcast %union.VectorReg* %3103 to %"class.std::bitset"*
  %3104 = bitcast %"class.std::bitset"* %YMM1.i35 to i8*
  %3105 = load i64, i64* %RBP.i34
  %3106 = sub i64 %3105, 128
  %3107 = load i64, i64* %PC.i33
  %3108 = add i64 %3107, 5
  store i64 %3108, i64* %PC.i33
  %3109 = inttoptr i64 %3106 to double*
  %3110 = load double, double* %3109
  %3111 = bitcast i8* %3104 to double*
  store double %3110, double* %3111, align 1
  %3112 = getelementptr inbounds i8, i8* %3104, i64 8
  %3113 = bitcast i8* %3112 to double*
  store double 0.000000e+00, double* %3113, align 1
  store %struct.Memory* %loadMem_40151f, %struct.Memory** %MEMORY
  %loadMem_401524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3115 = getelementptr inbounds %struct.GPR, %struct.GPR* %3114, i32 0, i32 33
  %3116 = getelementptr inbounds %struct.Reg, %struct.Reg* %3115, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %3116 to i64*
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3118 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3117, i64 0, i64 1
  %YMM1.i31 = bitcast %union.VectorReg* %3118 to %"class.std::bitset"*
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3120 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3119, i64 0, i64 0
  %XMM0.i32 = bitcast %union.VectorReg* %3120 to %union.vec128_t*
  %3121 = bitcast %"class.std::bitset"* %YMM1.i31 to i8*
  %3122 = bitcast %"class.std::bitset"* %YMM1.i31 to i8*
  %3123 = bitcast %union.vec128_t* %XMM0.i32 to i8*
  %3124 = load i64, i64* %PC.i30
  %3125 = add i64 %3124, 4
  store i64 %3125, i64* %PC.i30
  %3126 = bitcast i8* %3122 to double*
  %3127 = load double, double* %3126, align 1
  %3128 = getelementptr inbounds i8, i8* %3122, i64 8
  %3129 = bitcast i8* %3128 to i64*
  %3130 = load i64, i64* %3129, align 1
  %3131 = bitcast i8* %3123 to double*
  %3132 = load double, double* %3131, align 1
  %3133 = fmul double %3127, %3132
  %3134 = bitcast i8* %3121 to double*
  store double %3133, double* %3134, align 1
  %3135 = getelementptr inbounds i8, i8* %3121, i64 8
  %3136 = bitcast i8* %3135 to i64*
  store i64 %3130, i64* %3136, align 1
  store %struct.Memory* %loadMem_401524, %struct.Memory** %MEMORY
  %loadMem_401528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 33
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %3139 to i64*
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 15
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %3142 to i64*
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3144 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3143, i64 0, i64 0
  %YMM0.i29 = bitcast %union.VectorReg* %3144 to %"class.std::bitset"*
  %3145 = bitcast %"class.std::bitset"* %YMM0.i29 to i8*
  %3146 = load i64, i64* %RBP.i28
  %3147 = sub i64 %3146, 136
  %3148 = load i64, i64* %PC.i27
  %3149 = add i64 %3148, 8
  store i64 %3149, i64* %PC.i27
  %3150 = inttoptr i64 %3147 to double*
  %3151 = load double, double* %3150
  %3152 = bitcast i8* %3145 to double*
  store double %3151, double* %3152, align 1
  %3153 = getelementptr inbounds i8, i8* %3145, i64 8
  %3154 = bitcast i8* %3153 to double*
  store double 0.000000e+00, double* %3154, align 1
  store %struct.Memory* %loadMem_401528, %struct.Memory** %MEMORY
  %loadMem_401530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 33
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %3157 to i64*
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3159 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3158, i64 0, i64 0
  %YMM0.i25 = bitcast %union.VectorReg* %3159 to %"class.std::bitset"*
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3161 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3160, i64 0, i64 1
  %XMM1.i26 = bitcast %union.VectorReg* %3161 to %union.vec128_t*
  %3162 = bitcast %"class.std::bitset"* %YMM0.i25 to i8*
  %3163 = bitcast %"class.std::bitset"* %YMM0.i25 to i8*
  %3164 = bitcast %union.vec128_t* %XMM1.i26 to i8*
  %3165 = load i64, i64* %PC.i24
  %3166 = add i64 %3165, 4
  store i64 %3166, i64* %PC.i24
  %3167 = bitcast i8* %3163 to double*
  %3168 = load double, double* %3167, align 1
  %3169 = getelementptr inbounds i8, i8* %3163, i64 8
  %3170 = bitcast i8* %3169 to i64*
  %3171 = load i64, i64* %3170, align 1
  %3172 = bitcast i8* %3164 to double*
  %3173 = load double, double* %3172, align 1
  %3174 = fdiv double %3168, %3173
  %3175 = bitcast i8* %3162 to double*
  store double %3174, double* %3175, align 1
  %3176 = getelementptr inbounds i8, i8* %3162, i64 8
  %3177 = bitcast i8* %3176 to i64*
  store i64 %3171, i64* %3177, align 1
  store %struct.Memory* %loadMem_401530, %struct.Memory** %MEMORY
  %loadMem_401534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 33
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %3180 to i64*
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3182 = getelementptr inbounds %struct.GPR, %struct.GPR* %3181, i32 0, i32 15
  %3183 = getelementptr inbounds %struct.Reg, %struct.Reg* %3182, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %3183 to i64*
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3185 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3184, i64 0, i64 1
  %YMM1.i23 = bitcast %union.VectorReg* %3185 to %"class.std::bitset"*
  %3186 = bitcast %"class.std::bitset"* %YMM1.i23 to i8*
  %3187 = load i64, i64* %RBP.i22
  %3188 = sub i64 %3187, 104
  %3189 = load i64, i64* %PC.i21
  %3190 = add i64 %3189, 5
  store i64 %3190, i64* %PC.i21
  %3191 = inttoptr i64 %3188 to double*
  %3192 = load double, double* %3191
  %3193 = bitcast i8* %3186 to double*
  store double %3192, double* %3193, align 1
  %3194 = getelementptr inbounds i8, i8* %3186, i64 8
  %3195 = bitcast i8* %3194 to double*
  store double 0.000000e+00, double* %3195, align 1
  store %struct.Memory* %loadMem_401534, %struct.Memory** %MEMORY
  %loadMem_401539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 33
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %3198 to i64*
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3200 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3199, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3200 to %"class.std::bitset"*
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3202 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3201, i64 0, i64 0
  %XMM0.i20 = bitcast %union.VectorReg* %3202 to %union.vec128_t*
  %3203 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3204 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3205 = bitcast %union.vec128_t* %XMM0.i20 to i8*
  %3206 = load i64, i64* %PC.i19
  %3207 = add i64 %3206, 4
  store i64 %3207, i64* %PC.i19
  %3208 = bitcast i8* %3204 to double*
  %3209 = load double, double* %3208, align 1
  %3210 = getelementptr inbounds i8, i8* %3204, i64 8
  %3211 = bitcast i8* %3210 to i64*
  %3212 = load i64, i64* %3211, align 1
  %3213 = bitcast i8* %3205 to double*
  %3214 = load double, double* %3213, align 1
  %3215 = fmul double %3209, %3214
  %3216 = bitcast i8* %3203 to double*
  store double %3215, double* %3216, align 1
  %3217 = getelementptr inbounds i8, i8* %3203, i64 8
  %3218 = bitcast i8* %3217 to i64*
  store i64 %3212, i64* %3218, align 1
  store %struct.Memory* %loadMem_401539, %struct.Memory** %MEMORY
  %loadMem_40153d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 33
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3221 to i64*
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3223 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3222, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %3223 to %union.vec128_t*
  %3224 = bitcast %union.vec128_t* %XMM1.i to i8*
  %3225 = load i64, i64* %PC.i18
  %3226 = add i64 %3225, 9
  store i64 %3226, i64* %PC.i18
  %3227 = bitcast i8* %3224 to double*
  %3228 = load double, double* %3227, align 1
  store double %3228, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  store %struct.Memory* %loadMem_40153d, %struct.Memory** %MEMORY
  %loadMem_401546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3230 = getelementptr inbounds %struct.GPR, %struct.GPR* %3229, i32 0, i32 33
  %3231 = getelementptr inbounds %struct.Reg, %struct.Reg* %3230, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3231 to i64*
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 15
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %3234 to i64*
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3236 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3235, i64 0, i64 0
  %YMM0.i17 = bitcast %union.VectorReg* %3236 to %"class.std::bitset"*
  %3237 = bitcast %"class.std::bitset"* %YMM0.i17 to i8*
  %3238 = load i64, i64* %RBP.i16
  %3239 = sub i64 %3238, 16
  %3240 = load i64, i64* %PC.i15
  %3241 = add i64 %3240, 5
  store i64 %3241, i64* %PC.i15
  %3242 = inttoptr i64 %3239 to double*
  %3243 = load double, double* %3242
  %3244 = bitcast i8* %3237 to double*
  store double %3243, double* %3244, align 1
  %3245 = getelementptr inbounds i8, i8* %3237, i64 8
  %3246 = bitcast i8* %3245 to double*
  store double 0.000000e+00, double* %3246, align 1
  store %struct.Memory* %loadMem_401546, %struct.Memory** %MEMORY
  %loadMem_40154b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3248 = getelementptr inbounds %struct.GPR, %struct.GPR* %3247, i32 0, i32 33
  %3249 = getelementptr inbounds %struct.Reg, %struct.Reg* %3248, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %3249 to i64*
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3251 = getelementptr inbounds %struct.GPR, %struct.GPR* %3250, i32 0, i32 1
  %3252 = getelementptr inbounds %struct.Reg, %struct.Reg* %3251, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %3252 to i64*
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3254 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3253, i64 0, i64 0
  %XMM0.i14 = bitcast %union.VectorReg* %3254 to %union.vec128_t*
  %3255 = bitcast %union.vec128_t* %XMM0.i14 to i8*
  %3256 = load i64, i64* %PC.i12
  %3257 = add i64 %3256, 5
  store i64 %3257, i64* %PC.i12
  %3258 = bitcast i8* %3255 to i64*
  %3259 = load i64, i64* %3258, align 1
  store i64 %3259, i64* %RAX.i13, align 1
  store %struct.Memory* %loadMem_40154b, %struct.Memory** %MEMORY
  %loadMem_401550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 33
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3262 to i64*
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 5
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %RCX.i10 = bitcast %union.anon* %3265 to i64*
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3267 = getelementptr inbounds %struct.GPR, %struct.GPR* %3266, i32 0, i32 15
  %3268 = getelementptr inbounds %struct.Reg, %struct.Reg* %3267, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %3268 to i64*
  %3269 = load i64, i64* %RBP.i11
  %3270 = sub i64 %3269, 112
  %3271 = load i64, i64* %PC.i9
  %3272 = add i64 %3271, 4
  store i64 %3272, i64* %PC.i9
  %3273 = inttoptr i64 %3270 to i64*
  %3274 = load i64, i64* %3273
  store i64 %3274, i64* %RCX.i10, align 8
  store %struct.Memory* %loadMem_401550, %struct.Memory** %MEMORY
  %loadMem_401554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 33
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %3277 to i64*
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 1
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %RAX.i8 = bitcast %union.anon* %3280 to i64*
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 5
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3283 to i64*
  %3284 = load i64, i64* %RAX.i8
  %3285 = load i64, i64* %RCX.i
  %3286 = load i64, i64* %PC.i7
  %3287 = add i64 %3286, 3
  store i64 %3287, i64* %PC.i7
  %3288 = xor i64 %3285, %3284
  store i64 %3288, i64* %RAX.i8, align 8
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3289, align 1
  %3290 = trunc i64 %3288 to i32
  %3291 = and i32 %3290, 255
  %3292 = call i32 @llvm.ctpop.i32(i32 %3291)
  %3293 = trunc i32 %3292 to i8
  %3294 = and i8 %3293, 1
  %3295 = xor i8 %3294, 1
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3295, i8* %3296, align 1
  %3297 = icmp eq i64 %3288, 0
  %3298 = zext i1 %3297 to i8
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3298, i8* %3299, align 1
  %3300 = lshr i64 %3288, 63
  %3301 = trunc i64 %3300 to i8
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3301, i8* %3302, align 1
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3303, align 1
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3304, align 1
  store %struct.Memory* %loadMem_401554, %struct.Memory** %MEMORY
  %loadMem_401557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 33
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3307 to i64*
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 1
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3310 to i64*
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3312 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3311, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3312 to %"class.std::bitset"*
  %3313 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3314 = load i64, i64* %RAX.i
  %3315 = load i64, i64* %PC.i6
  %3316 = add i64 %3315, 5
  store i64 %3316, i64* %PC.i6
  %3317 = bitcast i8* %3313 to i64*
  store i64 %3314, i64* %3317, align 1
  %3318 = getelementptr inbounds i8, i8* %3313, i64 8
  %3319 = bitcast i8* %3318 to i64*
  store i64 0, i64* %3319, align 1
  store %struct.Memory* %loadMem_401557, %struct.Memory** %MEMORY
  %loadMem_40155c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3321 = getelementptr inbounds %struct.GPR, %struct.GPR* %3320, i32 0, i32 33
  %3322 = getelementptr inbounds %struct.Reg, %struct.Reg* %3321, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3322 to i64*
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3324 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3323, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3324 to %union.vec128_t*
  %3325 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3326 = load i64, i64* %PC.i5
  %3327 = add i64 %3326, 9
  store i64 %3327, i64* %PC.i5
  %3328 = bitcast i8* %3325 to double*
  %3329 = load double, double* %3328, align 1
  store double %3329, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  store %struct.Memory* %loadMem_40155c, %struct.Memory** %MEMORY
  br label %block_.L_401565

block_.L_401565:                                  ; preds = %block_.L_401460, %block_.L_40134f, %block_.L_401256, %block_.L_401236
  %loadMem_401565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 33
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3332 to i64*
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3334 = getelementptr inbounds %struct.GPR, %struct.GPR* %3333, i32 0, i32 13
  %3335 = getelementptr inbounds %struct.Reg, %struct.Reg* %3334, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3335 to i64*
  %3336 = load i64, i64* %RSP.i
  %3337 = load i64, i64* %PC.i4
  %3338 = add i64 %3337, 7
  store i64 %3338, i64* %PC.i4
  %3339 = add i64 144, %3336
  store i64 %3339, i64* %RSP.i, align 8
  %3340 = icmp ult i64 %3339, %3336
  %3341 = icmp ult i64 %3339, 144
  %3342 = or i1 %3340, %3341
  %3343 = zext i1 %3342 to i8
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3343, i8* %3344, align 1
  %3345 = trunc i64 %3339 to i32
  %3346 = and i32 %3345, 255
  %3347 = call i32 @llvm.ctpop.i32(i32 %3346)
  %3348 = trunc i32 %3347 to i8
  %3349 = and i8 %3348, 1
  %3350 = xor i8 %3349, 1
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3350, i8* %3351, align 1
  %3352 = xor i64 144, %3336
  %3353 = xor i64 %3352, %3339
  %3354 = lshr i64 %3353, 4
  %3355 = trunc i64 %3354 to i8
  %3356 = and i8 %3355, 1
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3356, i8* %3357, align 1
  %3358 = icmp eq i64 %3339, 0
  %3359 = zext i1 %3358 to i8
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3359, i8* %3360, align 1
  %3361 = lshr i64 %3339, 63
  %3362 = trunc i64 %3361 to i8
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3362, i8* %3363, align 1
  %3364 = lshr i64 %3336, 63
  %3365 = xor i64 %3361, %3364
  %3366 = add i64 %3365, %3361
  %3367 = icmp eq i64 %3366, 2
  %3368 = zext i1 %3367 to i8
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3368, i8* %3369, align 1
  store %struct.Memory* %loadMem_401565, %struct.Memory** %MEMORY
  %loadMem_40156c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 33
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3372 to i64*
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 15
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3375 to i64*
  %3376 = load i64, i64* %PC.i2
  %3377 = add i64 %3376, 1
  store i64 %3377, i64* %PC.i2
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3379 = load i64, i64* %3378, align 8
  %3380 = add i64 %3379, 8
  %3381 = inttoptr i64 %3379 to i64*
  %3382 = load i64, i64* %3381
  store i64 %3382, i64* %RBP.i3, align 8
  store i64 %3380, i64* %3378, align 8
  store %struct.Memory* %loadMem_40156c, %struct.Memory** %MEMORY
  %loadMem_40156d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 33
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3385 to i64*
  %3386 = load i64, i64* %PC.i1
  %3387 = add i64 %3386, 1
  store i64 %3387, i64* %PC.i1
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3390 = load i64, i64* %3389, align 8
  %3391 = inttoptr i64 %3390 to i64*
  %3392 = load i64, i64* %3391
  store i64 %3392, i64* %3388, align 8
  %3393 = add i64 %3390, 8
  store i64 %3393, i64* %3389, align 8
  store %struct.Memory* %loadMem_40156d, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_40156d
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

define %struct.Memory* @routine_subq__0x90___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 144
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 144
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
  %23 = xor i64 144, %9
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

define %struct.Memory* @routine_cmpw__0x0__0x602340(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC
  %8 = load i16, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*)
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i16 %8, 255
  %11 = zext i16 %10 to i32
  %12 = call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i16 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i16 %8, 15
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = lshr i16 %8, 15
  %25 = xor i16 %21, %24
  %26 = add i16 %25, %24
  %27 = icmp eq i16 %26, 2
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4012ab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
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

define %struct.Memory* @routine_movsd_0x602640___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
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

define %struct.Memory* @routine_jne_.L_40114b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jp_.L_40114b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401256(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x602348___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_40118f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jp_.L_40118f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x602370(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602630___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x602630_type* @G_0x602630 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x602640___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %18 = fdiv double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4011b8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x602348___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_0x602640___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %18 = fsub double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x602370___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %18 = fmul double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602638___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x602648___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*)
  %18 = fdiv double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
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

define %struct.Memory* @routine_movsd_0x602370___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 40
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

define %struct.Memory* @routine_addsd_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x20__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fsub double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x602370(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_40121f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jp_.L_40121f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401236(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x602630(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x602630_type* @G_0x602630 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x602370___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %18 = fdiv double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x602348(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401565(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x602648___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x602638___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*)
  %18 = fdiv double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
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

define %struct.Memory* @routine_movsd_0x602370___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4012cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jp_.L_4012cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401460(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_401310(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jp_.L_401310(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40134f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 56
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

define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_callq_.sin_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
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

define %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fmul double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.asin_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 8
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

define %struct.Memory* @routine_movsd_0x602638___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x602648___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*)
  %18 = fdiv double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 32
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 40
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

define %struct.Memory* @routine_addsd_MINUS0x8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 64
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

define %struct.Memory* @routine_movsd_0x2b0__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 696
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

define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
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

define %struct.Memory* @routine_subsd__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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

define %struct.Memory* @routine_movsd__xmm2__0x602370(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 72
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 48
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

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
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

define %struct.Memory* @routine_mulsd_0x602640___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %18 = fmul double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602640___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
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

define %struct.Memory* @routine_addsd_MINUS0x8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 80
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

define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 88
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

define %struct.Memory* @routine_callq_.tan_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x218__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 544
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

define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
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

define %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 96
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

define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
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

define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 -9223372036854775808, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__xmm0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to i64*
  %15 = load i64, i64* %14, align 1
  store i64 %15, i64* %RCX, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorq__rax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = xor i64 %13, %12
  store i64 %16, i64* %RCX, align 8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %17, align 1
  %18 = trunc i64 %16 to i32
  %19 = and i32 %18, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i64 %16, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %16, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to i64*
  store i64 %12, i64* %15, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to i64*
  store i64 0, i64* %17, align 1
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

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
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

define %struct.Memory* @routine_movq__xmm2___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to i64*
  %15 = load i64, i64* %14, align 1
  store i64 %15, i64* %RCX, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to i64*
  store i64 %12, i64* %15, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to i64*
  store i64 0, i64* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 104
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

define %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 120
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

define %struct.Memory* @routine_callq_.cos_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
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

define %struct.Memory* @routine_movsd_0x602370___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 128
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 136
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
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

define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
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

define %struct.Memory* @routine_movsd__xmm1__0x602348(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__xmm0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to i64*
  %15 = load i64, i64* %14, align 1
  store i64 %15, i64* %RAX, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = xor i64 %13, %12
  store i64 %16, i64* %RAX, align 8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %17, align 1
  %18 = trunc i64 %16 to i32
  %19 = and i32 %18, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i64 %16, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %16, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to i64*
  store i64 %12, i64* %15, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to i64*
  store i64 0, i64* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x90___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 144, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 144
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
  %25 = xor i64 144, %9
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
