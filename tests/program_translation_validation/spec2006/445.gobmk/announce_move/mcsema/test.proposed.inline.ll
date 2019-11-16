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
%G_0xab0340_type = type <{ [1 x i8] }>
%G_0xab0344_type = type <{ [1 x i8] }>
%G_0xab0348_type = type <{ [1 x i8] }>
%G_0xab0f28_type = type <{ [1 x i8] }>
%G__0x57bdf4_type = type <{ [8 x i8] }>
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
@G_0x7ae438 = global %G_0x7ae438_type zeroinitializer
@G_0xab0340 = global %G_0xab0340_type zeroinitializer
@G_0xab0344 = global %G_0xab0344_type zeroinitializer
@G_0xab0348 = global %G_0xab0348_type zeroinitializer
@G_0xab0f28 = global %G_0xab0f28_type zeroinitializer
@G__0x57bdf4 = global %G__0x57bdf4_type zeroinitializer

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

declare %struct.Memory* @sub_434f20.set_minimum_move_value(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @announce_move(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_425700 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_425700, %struct.Memory** %MEMORY
  %loadMem_425701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i87 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i87
  %27 = load i64, i64* %PC.i86
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i86
  store i64 %26, i64* %RBP.i88, align 8
  store %struct.Memory* %loadMem_425701, %struct.Memory** %MEMORY
  %loadMem_425704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i102 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i102
  %36 = load i64, i64* %PC.i101
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i101
  %38 = sub i64 %35, 48
  store i64 %38, i64* %RSP.i102, align 8
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
  store %struct.Memory* %loadMem_425704, %struct.Memory** %MEMORY
  %loadMem_425708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EDI.i180 = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i181
  %77 = sub i64 %76, 4
  %78 = load i32, i32* %EDI.i180
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %PC.i179
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i179
  %82 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %82
  store %struct.Memory* %loadMem_425708, %struct.Memory** %MEMORY
  %loadMem_42570b = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %ESI.i195 = bitcast %union.anon* %88 to i32*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %91 to i64*
  %92 = load i64, i64* %RBP.i196
  %93 = sub i64 %92, 8
  %94 = load i32, i32* %ESI.i195
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* %PC.i194
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC.i194
  %98 = inttoptr i64 %93 to i32*
  store i32 %94, i32* %98
  store %struct.Memory* %loadMem_42570b, %struct.Memory** %MEMORY
  %loadMem_42570e = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 7
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %EDX.i276 = bitcast %union.anon* %104 to i32*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 15
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %107 to i64*
  %108 = load i64, i64* %RBP.i277
  %109 = sub i64 %108, 12
  %110 = load i32, i32* %EDX.i276
  %111 = zext i32 %110 to i64
  %112 = load i64, i64* %PC.i275
  %113 = add i64 %112, 3
  store i64 %113, i64* %PC.i275
  %114 = inttoptr i64 %109 to i32*
  store i32 %110, i32* %114
  store %struct.Memory* %loadMem_42570e, %struct.Memory** %MEMORY
  %loadMem_425711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 33
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %117 to i64*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %RAX.i291 = bitcast %union.anon* %120 to i64*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 15
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %123 to i64*
  %124 = load i64, i64* %RBP.i292
  %125 = sub i64 %124, 4
  %126 = load i64, i64* %PC.i290
  %127 = add i64 %126, 4
  store i64 %127, i64* %PC.i290
  %128 = inttoptr i64 %125 to i32*
  %129 = load i32, i32* %128
  %130 = sext i32 %129 to i64
  store i64 %130, i64* %RAX.i291, align 8
  store %struct.Memory* %loadMem_425711, %struct.Memory** %MEMORY
  %loadMem_425715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 33
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %133 to i64*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 7
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %RDX.i316 = bitcast %union.anon* %139 to i64*
  %140 = load i64, i64* %RAX.i315
  %141 = add i64 %140, 12099168
  %142 = load i64, i64* %PC.i314
  %143 = add i64 %142, 8
  store i64 %143, i64* %PC.i314
  %144 = inttoptr i64 %141 to i8*
  %145 = load i8, i8* %144
  %146 = zext i8 %145 to i64
  store i64 %146, i64* %RDX.i316, align 8
  store %struct.Memory* %loadMem_425715, %struct.Memory** %MEMORY
  %loadMem_42571d = load %struct.Memory*, %struct.Memory** %MEMORY
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 33
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %149 to i64*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 7
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %EDX.i313 = bitcast %union.anon* %152 to i32*
  %153 = load i32, i32* %EDX.i313
  %154 = zext i32 %153 to i64
  %155 = load i64, i64* %PC.i312
  %156 = add i64 %155, 3
  store i64 %156, i64* %PC.i312
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %157, align 1
  %158 = and i32 %153, 255
  %159 = call i32 @llvm.ctpop.i32(i32 %158)
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %162, i8* %163, align 1
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %164, align 1
  %165 = icmp eq i32 %153, 0
  %166 = zext i1 %165 to i8
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %166, i8* %167, align 1
  %168 = lshr i32 %153, 31
  %169 = trunc i32 %168 to i8
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %169, i8* %170, align 1
  %171 = lshr i32 %153, 31
  %172 = xor i32 %168, %171
  %173 = add i32 %172, %171
  %174 = icmp eq i32 %173, 2
  %175 = zext i1 %174 to i8
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %175, i8* %176, align 1
  store %struct.Memory* %loadMem_42571d, %struct.Memory** %MEMORY
  %loadMem_425720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 33
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %179 to i64*
  %180 = load i64, i64* %PC.i311
  %181 = add i64 %180, 11
  %182 = load i64, i64* %PC.i311
  %183 = add i64 %182, 6
  %184 = load i64, i64* %PC.i311
  %185 = add i64 %184, 6
  store i64 %185, i64* %PC.i311
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %187 = load i8, i8* %186, align 1
  store i8 %187, i8* %BRANCH_TAKEN, align 1
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %189 = icmp ne i8 %187, 0
  %190 = select i1 %189, i64 %181, i64 %183
  store i64 %190, i64* %188, align 8
  store %struct.Memory* %loadMem_425720, %struct.Memory** %MEMORY
  %loadBr_425720 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425720 = icmp eq i8 %loadBr_425720, 1
  br i1 %cmpBr_425720, label %block_.L_42572b, label %block_425726

block_425726:                                     ; preds = %entry
  %loadMem_425726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 33
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %193 to i64*
  %194 = load i64, i64* %PC.i310
  %195 = add i64 %194, 501
  %196 = load i64, i64* %PC.i310
  %197 = add i64 %196, 5
  store i64 %197, i64* %PC.i310
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %195, i64* %198, align 8
  store %struct.Memory* %loadMem_425726, %struct.Memory** %MEMORY
  br label %block_.L_42591b

block_.L_42572b:                                  ; preds = %entry
  %loadMem_42572b = load %struct.Memory*, %struct.Memory** %MEMORY
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 33
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %201 to i64*
  %202 = load i64, i64* %PC.i309
  %203 = add i64 %202, 8
  store i64 %203, i64* %PC.i309
  %204 = load i32, i32* bitcast (%G_0xab0340_type* @G_0xab0340 to i32*)
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %205, align 1
  %206 = and i32 %204, 255
  %207 = call i32 @llvm.ctpop.i32(i32 %206)
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  %210 = xor i8 %209, 1
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %210, i8* %211, align 1
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %212, align 1
  %213 = icmp eq i32 %204, 0
  %214 = zext i1 %213 to i8
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %214, i8* %215, align 1
  %216 = lshr i32 %204, 31
  %217 = trunc i32 %216 to i8
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %217, i8* %218, align 1
  %219 = lshr i32 %204, 31
  %220 = xor i32 %216, %219
  %221 = add i32 %220, %219
  %222 = icmp eq i32 %221, 2
  %223 = zext i1 %222 to i8
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %223, i8* %224, align 1
  store %struct.Memory* %loadMem_42572b, %struct.Memory** %MEMORY
  %loadMem_425733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 33
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %227 to i64*
  %228 = load i64, i64* %PC.i308
  %229 = add i64 %228, 130
  %230 = load i64, i64* %PC.i308
  %231 = add i64 %230, 6
  %232 = load i64, i64* %PC.i308
  %233 = add i64 %232, 6
  store i64 %233, i64* %PC.i308
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %235 = load i8, i8* %234, align 1
  store i8 %235, i8* %BRANCH_TAKEN, align 1
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %237 = icmp ne i8 %235, 0
  %238 = select i1 %237, i64 %229, i64 %231
  store i64 %238, i64* %236, align 8
  store %struct.Memory* %loadMem_425733, %struct.Memory** %MEMORY
  %loadBr_425733 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425733 = icmp eq i8 %loadBr_425733, 1
  br i1 %cmpBr_425733, label %block_.L_4257b5, label %block_425739

block_425739:                                     ; preds = %block_.L_42572b
  %loadMem_425739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 33
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %241 to i64*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %244 to i64*
  %245 = load i64, i64* %PC.i306
  %246 = add i64 %245, 5
  store i64 %246, i64* %PC.i306
  store i64 20, i64* %RAX.i307, align 8
  store %struct.Memory* %loadMem_425739, %struct.Memory** %MEMORY
  %loadMem_42573e = load %struct.Memory*, %struct.Memory** %MEMORY
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 33
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %249 to i64*
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 5
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %RCX.i304 = bitcast %union.anon* %252 to i64*
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 15
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %255 to i64*
  %256 = load i64, i64* %RBP.i305
  %257 = sub i64 %256, 4
  %258 = load i64, i64* %PC.i303
  %259 = add i64 %258, 3
  store i64 %259, i64* %PC.i303
  %260 = inttoptr i64 %257 to i32*
  %261 = load i32, i32* %260
  %262 = zext i32 %261 to i64
  store i64 %262, i64* %RCX.i304, align 8
  store %struct.Memory* %loadMem_42573e, %struct.Memory** %MEMORY
  %loadMem_425741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 33
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %265 to i64*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %EAX.i301 = bitcast %union.anon* %268 to i32*
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 15
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %271 to i64*
  %272 = load i64, i64* %RBP.i302
  %273 = sub i64 %272, 24
  %274 = load i32, i32* %EAX.i301
  %275 = zext i32 %274 to i64
  %276 = load i64, i64* %PC.i300
  %277 = add i64 %276, 3
  store i64 %277, i64* %PC.i300
  %278 = inttoptr i64 %273 to i32*
  store i32 %274, i32* %278
  store %struct.Memory* %loadMem_425741, %struct.Memory** %MEMORY
  %loadMem_425744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 33
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %281 to i64*
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 5
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %ECX.i298 = bitcast %union.anon* %284 to i32*
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %287 to i64*
  %288 = load i32, i32* %ECX.i298
  %289 = zext i32 %288 to i64
  %290 = load i64, i64* %PC.i297
  %291 = add i64 %290, 2
  store i64 %291, i64* %PC.i297
  %292 = and i64 %289, 4294967295
  store i64 %292, i64* %RAX.i299, align 8
  store %struct.Memory* %loadMem_425744, %struct.Memory** %MEMORY
  %loadMem_425746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 33
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %295 to i64*
  %296 = load i64, i64* %PC.i296
  %297 = add i64 %296, 1
  store i64 %297, i64* %PC.i296
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %300 = bitcast %union.anon* %299 to i32*
  %301 = load i32, i32* %300, align 8
  %302 = sext i32 %301 to i64
  %303 = lshr i64 %302, 32
  store i64 %303, i64* %298, align 8
  store %struct.Memory* %loadMem_425746, %struct.Memory** %MEMORY
  %loadMem_425747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %305 = getelementptr inbounds %struct.GPR, %struct.GPR* %304, i32 0, i32 33
  %306 = getelementptr inbounds %struct.Reg, %struct.Reg* %305, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %306 to i64*
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 5
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %RCX.i294 = bitcast %union.anon* %309 to i64*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 15
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %312 to i64*
  %313 = load i64, i64* %RBP.i295
  %314 = sub i64 %313, 24
  %315 = load i64, i64* %PC.i293
  %316 = add i64 %315, 3
  store i64 %316, i64* %PC.i293
  %317 = inttoptr i64 %314 to i32*
  %318 = load i32, i32* %317
  %319 = zext i32 %318 to i64
  store i64 %319, i64* %RCX.i294, align 8
  store %struct.Memory* %loadMem_425747, %struct.Memory** %MEMORY
  %loadMem_42574a = load %struct.Memory*, %struct.Memory** %MEMORY
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 33
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %322 to i64*
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %324 = getelementptr inbounds %struct.GPR, %struct.GPR* %323, i32 0, i32 5
  %325 = getelementptr inbounds %struct.Reg, %struct.Reg* %324, i32 0, i32 0
  %ECX.i288 = bitcast %union.anon* %325 to i32*
  %326 = load i32, i32* %ECX.i288
  %327 = zext i32 %326 to i64
  %328 = load i64, i64* %PC.i287
  %329 = add i64 %328, 2
  store i64 %329, i64* %PC.i287
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %331 = bitcast %union.anon* %330 to i32*
  %332 = load i32, i32* %331, align 8
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %335 = bitcast %union.anon* %334 to i32*
  %336 = load i32, i32* %335, align 8
  %337 = zext i32 %336 to i64
  %338 = shl i64 %327, 32
  %339 = ashr exact i64 %338, 32
  %340 = shl i64 %337, 32
  %341 = or i64 %340, %333
  %342 = sdiv i64 %341, %339
  %343 = shl i64 %342, 32
  %344 = ashr exact i64 %343, 32
  %345 = icmp eq i64 %342, %344
  br i1 %345, label %350, label %346

; <label>:346:                                    ; preds = %block_425739
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %348, %struct.Memory* %loadMem_42574a)
  br label %routine_idivl__ecx.exit289

; <label>:350:                                    ; preds = %block_425739
  %351 = srem i64 %341, %339
  %352 = getelementptr inbounds %union.anon, %union.anon* %330, i64 0, i32 0
  %353 = and i64 %342, 4294967295
  store i64 %353, i64* %352, align 8
  %354 = getelementptr inbounds %union.anon, %union.anon* %334, i64 0, i32 0
  %355 = and i64 %351, 4294967295
  store i64 %355, i64* %354, align 8
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %356, align 1
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %357, align 1
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %358, align 1
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %359, align 1
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %360, align 1
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %361, align 1
  br label %routine_idivl__ecx.exit289

routine_idivl__ecx.exit289:                       ; preds = %346, %350
  %362 = phi %struct.Memory* [ %349, %346 ], [ %loadMem_42574a, %350 ]
  store %struct.Memory* %362, %struct.Memory** %MEMORY
  %loadMem_42574c = load %struct.Memory*, %struct.Memory** %MEMORY
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 33
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %365 to i64*
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %367 = getelementptr inbounds %struct.GPR, %struct.GPR* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.Reg, %struct.Reg* %367, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %368 to i64*
  %369 = load i64, i64* %RAX.i286
  %370 = load i64, i64* %PC.i285
  %371 = add i64 %370, 3
  store i64 %371, i64* %PC.i285
  %372 = trunc i64 %369 to i32
  %373 = sub i32 %372, 1
  %374 = zext i32 %373 to i64
  store i64 %374, i64* %RAX.i286, align 8
  %375 = icmp ult i32 %372, 1
  %376 = zext i1 %375 to i8
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %376, i8* %377, align 1
  %378 = and i32 %373, 255
  %379 = call i32 @llvm.ctpop.i32(i32 %378)
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  %382 = xor i8 %381, 1
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %382, i8* %383, align 1
  %384 = xor i64 1, %369
  %385 = trunc i64 %384 to i32
  %386 = xor i32 %385, %373
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %389, i8* %390, align 1
  %391 = icmp eq i32 %373, 0
  %392 = zext i1 %391 to i8
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %392, i8* %393, align 1
  %394 = lshr i32 %373, 31
  %395 = trunc i32 %394 to i8
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %395, i8* %396, align 1
  %397 = lshr i32 %372, 31
  %398 = xor i32 %394, %397
  %399 = add i32 %398, %397
  %400 = icmp eq i32 %399, 2
  %401 = zext i1 %400 to i8
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %401, i8* %402, align 1
  store %struct.Memory* %loadMem_42574c, %struct.Memory** %MEMORY
  %loadMem_42574f = load %struct.Memory*, %struct.Memory** %MEMORY
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 33
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %405 to i64*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %EAX.i283 = bitcast %union.anon* %408 to i32*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 15
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %RBP.i284 = bitcast %union.anon* %411 to i64*
  %412 = load i64, i64* %RBP.i284
  %413 = sub i64 %412, 16
  %414 = load i32, i32* %EAX.i283
  %415 = zext i32 %414 to i64
  %416 = load i64, i64* %PC.i282
  %417 = add i64 %416, 3
  store i64 %417, i64* %PC.i282
  %418 = inttoptr i64 %413 to i32*
  store i32 %414, i32* %418
  store %struct.Memory* %loadMem_42574f, %struct.Memory** %MEMORY
  %loadMem_425752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 33
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %421 to i64*
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 1
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %RAX.i280 = bitcast %union.anon* %424 to i64*
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 15
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %427 to i64*
  %428 = load i64, i64* %RBP.i281
  %429 = sub i64 %428, 4
  %430 = load i64, i64* %PC.i279
  %431 = add i64 %430, 3
  store i64 %431, i64* %PC.i279
  %432 = inttoptr i64 %429 to i32*
  %433 = load i32, i32* %432
  %434 = zext i32 %433 to i64
  store i64 %434, i64* %RAX.i280, align 8
  store %struct.Memory* %loadMem_425752, %struct.Memory** %MEMORY
  %loadMem_425755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %436 = getelementptr inbounds %struct.GPR, %struct.GPR* %435, i32 0, i32 33
  %437 = getelementptr inbounds %struct.Reg, %struct.Reg* %436, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %437 to i64*
  %438 = load i64, i64* %PC.i278
  %439 = add i64 %438, 1
  store i64 %439, i64* %PC.i278
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %442 = bitcast %union.anon* %441 to i32*
  %443 = load i32, i32* %442, align 8
  %444 = sext i32 %443 to i64
  %445 = lshr i64 %444, 32
  store i64 %445, i64* %440, align 8
  store %struct.Memory* %loadMem_425755, %struct.Memory** %MEMORY
  %loadMem_425756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 33
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %448 to i64*
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 5
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %ECX.i273 = bitcast %union.anon* %451 to i32*
  %452 = load i32, i32* %ECX.i273
  %453 = zext i32 %452 to i64
  %454 = load i64, i64* %PC.i272
  %455 = add i64 %454, 2
  store i64 %455, i64* %PC.i272
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %457 = bitcast %union.anon* %456 to i32*
  %458 = load i32, i32* %457, align 8
  %459 = zext i32 %458 to i64
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %461 = bitcast %union.anon* %460 to i32*
  %462 = load i32, i32* %461, align 8
  %463 = zext i32 %462 to i64
  %464 = shl i64 %453, 32
  %465 = ashr exact i64 %464, 32
  %466 = shl i64 %463, 32
  %467 = or i64 %466, %459
  %468 = sdiv i64 %467, %465
  %469 = shl i64 %468, 32
  %470 = ashr exact i64 %469, 32
  %471 = icmp eq i64 %468, %470
  br i1 %471, label %476, label %472

; <label>:472:                                    ; preds = %routine_idivl__ecx.exit289
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %474 = load i64, i64* %473, align 8
  %475 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %474, %struct.Memory* %loadMem_425756)
  br label %routine_idivl__ecx.exit274

; <label>:476:                                    ; preds = %routine_idivl__ecx.exit289
  %477 = srem i64 %467, %465
  %478 = getelementptr inbounds %union.anon, %union.anon* %456, i64 0, i32 0
  %479 = and i64 %468, 4294967295
  store i64 %479, i64* %478, align 8
  %480 = getelementptr inbounds %union.anon, %union.anon* %460, i64 0, i32 0
  %481 = and i64 %477, 4294967295
  store i64 %481, i64* %480, align 8
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %482, align 1
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %483, align 1
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %484, align 1
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %485, align 1
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %486, align 1
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %487, align 1
  br label %routine_idivl__ecx.exit274

routine_idivl__ecx.exit274:                       ; preds = %472, %476
  %488 = phi %struct.Memory* [ %475, %472 ], [ %loadMem_425756, %476 ]
  store %struct.Memory* %488, %struct.Memory** %MEMORY
  %loadMem_425758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 33
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %491 to i64*
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 7
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %RDX.i271 = bitcast %union.anon* %494 to i64*
  %495 = load i64, i64* %RDX.i271
  %496 = load i64, i64* %PC.i270
  %497 = add i64 %496, 3
  store i64 %497, i64* %PC.i270
  %498 = trunc i64 %495 to i32
  %499 = sub i32 %498, 1
  %500 = zext i32 %499 to i64
  store i64 %500, i64* %RDX.i271, align 8
  %501 = icmp ult i32 %498, 1
  %502 = zext i1 %501 to i8
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %502, i8* %503, align 1
  %504 = and i32 %499, 255
  %505 = call i32 @llvm.ctpop.i32(i32 %504)
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  %508 = xor i8 %507, 1
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %508, i8* %509, align 1
  %510 = xor i64 1, %495
  %511 = trunc i64 %510 to i32
  %512 = xor i32 %511, %499
  %513 = lshr i32 %512, 4
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %515, i8* %516, align 1
  %517 = icmp eq i32 %499, 0
  %518 = zext i1 %517 to i8
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %518, i8* %519, align 1
  %520 = lshr i32 %499, 31
  %521 = trunc i32 %520 to i8
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %521, i8* %522, align 1
  %523 = lshr i32 %498, 31
  %524 = xor i32 %520, %523
  %525 = add i32 %524, %523
  %526 = icmp eq i32 %525, 2
  %527 = zext i1 %526 to i8
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %527, i8* %528, align 1
  store %struct.Memory* %loadMem_425758, %struct.Memory** %MEMORY
  %loadMem_42575b = load %struct.Memory*, %struct.Memory** %MEMORY
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 33
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 7
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %EDX.i268 = bitcast %union.anon* %534 to i32*
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 15
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %537 to i64*
  %538 = load i64, i64* %RBP.i269
  %539 = sub i64 %538, 20
  %540 = load i32, i32* %EDX.i268
  %541 = zext i32 %540 to i64
  %542 = load i64, i64* %PC.i267
  %543 = add i64 %542, 3
  store i64 %543, i64* %PC.i267
  %544 = inttoptr i64 %539 to i32*
  store i32 %540, i32* %544
  store %struct.Memory* %loadMem_42575b, %struct.Memory** %MEMORY
  %loadMem_42575e = load %struct.Memory*, %struct.Memory** %MEMORY
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 33
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %547 to i64*
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 7
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %RDX.i265 = bitcast %union.anon* %550 to i64*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 15
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %553 to i64*
  %554 = load i64, i64* %RBP.i266
  %555 = sub i64 %554, 20
  %556 = load i64, i64* %PC.i264
  %557 = add i64 %556, 3
  store i64 %557, i64* %PC.i264
  %558 = inttoptr i64 %555 to i32*
  %559 = load i32, i32* %558
  %560 = zext i32 %559 to i64
  store i64 %560, i64* %RDX.i265, align 8
  store %struct.Memory* %loadMem_42575e, %struct.Memory** %MEMORY
  %loadMem_425761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 33
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %563 to i64*
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %565 = getelementptr inbounds %struct.GPR, %struct.GPR* %564, i32 0, i32 7
  %566 = getelementptr inbounds %struct.Reg, %struct.Reg* %565, i32 0, i32 0
  %RDX.i263 = bitcast %union.anon* %566 to i64*
  %567 = load i64, i64* %RDX.i263
  %568 = load i64, i64* %PC.i262
  %569 = add i64 %568, 2
  store i64 %569, i64* %PC.i262
  %570 = trunc i64 %567 to i32
  %571 = shl i32 %570, 1
  %572 = icmp slt i32 %570, 0
  %573 = icmp slt i32 %571, 0
  %574 = xor i1 %572, %573
  %575 = zext i32 %571 to i64
  store i64 %575, i64* %RDX.i263, align 8
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %577 = zext i1 %572 to i8
  store i8 %577, i8* %576, align 1
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %579 = and i32 %571, 254
  %580 = call i32 @llvm.ctpop.i32(i32 %579)
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  %583 = xor i8 %582, 1
  store i8 %583, i8* %578, align 1
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %584, align 1
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %586 = icmp eq i32 %571, 0
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %585, align 1
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %589 = lshr i32 %571, 31
  %590 = trunc i32 %589 to i8
  store i8 %590, i8* %588, align 1
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %592 = zext i1 %574 to i8
  store i8 %592, i8* %591, align 1
  store %struct.Memory* %loadMem_425761, %struct.Memory** %MEMORY
  %loadMem_425764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 33
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %595 to i64*
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 9
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %RSI.i261 = bitcast %union.anon* %598 to i64*
  %599 = load i64, i64* %PC.i260
  %600 = add i64 %599, 7
  store i64 %600, i64* %PC.i260
  %601 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %602 = zext i32 %601 to i64
  store i64 %602, i64* %RSI.i261, align 8
  store %struct.Memory* %loadMem_425764, %struct.Memory** %MEMORY
  %loadMem_42576b = load %struct.Memory*, %struct.Memory** %MEMORY
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 33
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %605 to i64*
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 9
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %RSI.i259 = bitcast %union.anon* %608 to i64*
  %609 = load i64, i64* %RSI.i259
  %610 = load i64, i64* %PC.i258
  %611 = add i64 %610, 3
  store i64 %611, i64* %PC.i258
  %612 = trunc i64 %609 to i32
  %613 = sub i32 %612, 1
  %614 = zext i32 %613 to i64
  store i64 %614, i64* %RSI.i259, align 8
  %615 = icmp ult i32 %612, 1
  %616 = zext i1 %615 to i8
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %616, i8* %617, align 1
  %618 = and i32 %613, 255
  %619 = call i32 @llvm.ctpop.i32(i32 %618)
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  %622 = xor i8 %621, 1
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %622, i8* %623, align 1
  %624 = xor i64 1, %609
  %625 = trunc i64 %624 to i32
  %626 = xor i32 %625, %613
  %627 = lshr i32 %626, 4
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %629, i8* %630, align 1
  %631 = icmp eq i32 %613, 0
  %632 = zext i1 %631 to i8
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %632, i8* %633, align 1
  %634 = lshr i32 %613, 31
  %635 = trunc i32 %634 to i8
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %635, i8* %636, align 1
  %637 = lshr i32 %612, 31
  %638 = xor i32 %634, %637
  %639 = add i32 %638, %637
  %640 = icmp eq i32 %639, 2
  %641 = zext i1 %640 to i8
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %641, i8* %642, align 1
  store %struct.Memory* %loadMem_42576b, %struct.Memory** %MEMORY
  %loadMem_42576e = load %struct.Memory*, %struct.Memory** %MEMORY
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 33
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %645 to i64*
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 7
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %EDX.i256 = bitcast %union.anon* %648 to i32*
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 9
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %ESI.i257 = bitcast %union.anon* %651 to i32*
  %652 = load i32, i32* %EDX.i256
  %653 = zext i32 %652 to i64
  %654 = load i32, i32* %ESI.i257
  %655 = zext i32 %654 to i64
  %656 = load i64, i64* %PC.i255
  %657 = add i64 %656, 2
  store i64 %657, i64* %PC.i255
  %658 = sub i32 %652, %654
  %659 = icmp ult i32 %652, %654
  %660 = zext i1 %659 to i8
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %660, i8* %661, align 1
  %662 = and i32 %658, 255
  %663 = call i32 @llvm.ctpop.i32(i32 %662)
  %664 = trunc i32 %663 to i8
  %665 = and i8 %664, 1
  %666 = xor i8 %665, 1
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %666, i8* %667, align 1
  %668 = xor i64 %655, %653
  %669 = trunc i64 %668 to i32
  %670 = xor i32 %669, %658
  %671 = lshr i32 %670, 4
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %673, i8* %674, align 1
  %675 = icmp eq i32 %658, 0
  %676 = zext i1 %675 to i8
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %676, i8* %677, align 1
  %678 = lshr i32 %658, 31
  %679 = trunc i32 %678 to i8
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %679, i8* %680, align 1
  %681 = lshr i32 %652, 31
  %682 = lshr i32 %654, 31
  %683 = xor i32 %682, %681
  %684 = xor i32 %678, %681
  %685 = add i32 %684, %683
  %686 = icmp eq i32 %685, 2
  %687 = zext i1 %686 to i8
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %687, i8* %688, align 1
  store %struct.Memory* %loadMem_42576e, %struct.Memory** %MEMORY
  %loadMem_425770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 33
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %691 to i64*
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %693 = getelementptr inbounds %struct.GPR, %struct.GPR* %692, i32 0, i32 11
  %694 = getelementptr inbounds %struct.Reg, %struct.Reg* %693, i32 0, i32 0
  %695 = bitcast %union.anon* %694 to %struct.anon.2*
  %DIL.i254 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %695, i32 0, i32 0
  %696 = load i64, i64* %PC.i253
  %697 = add i64 %696, 4
  store i64 %697, i64* %PC.i253
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %699 = load i8, i8* %698, align 1
  %700 = icmp ne i8 %699, 0
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %702 = load i8, i8* %701, align 1
  %703 = icmp ne i8 %702, 0
  %704 = xor i1 %700, %703
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %DIL.i254, align 1
  store %struct.Memory* %loadMem_425770, %struct.Memory** %MEMORY
  %loadMem_425774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 33
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %708 to i64*
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 11
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %712 = bitcast %union.anon* %711 to %struct.anon.2*
  %DIL.i252 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %712, i32 0, i32 0
  %713 = load i8, i8* %DIL.i252
  %714 = zext i8 %713 to i64
  %715 = load i64, i64* %PC.i251
  %716 = add i64 %715, 4
  store i64 %716, i64* %PC.i251
  %717 = and i64 1, %714
  %718 = trunc i64 %717 to i8
  store i8 %718, i8* %DIL.i252, align 1
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %719, align 1
  %720 = trunc i64 %717 to i32
  %721 = and i32 %720, 255
  %722 = call i32 @llvm.ctpop.i32(i32 %721)
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  %725 = xor i8 %724, 1
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %725, i8* %726, align 1
  %727 = icmp eq i8 %718, 0
  %728 = zext i1 %727 to i8
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %728, i8* %729, align 1
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %730, align 1
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %731, align 1
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %732, align 1
  store %struct.Memory* %loadMem_425774, %struct.Memory** %MEMORY
  %loadMem_425778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 33
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %735 to i64*
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 11
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %739 = bitcast %union.anon* %738 to %struct.anon.2*
  %DIL.i249 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %739, i32 0, i32 0
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 7
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %RDX.i250 = bitcast %union.anon* %742 to i64*
  %743 = load i8, i8* %DIL.i249
  %744 = zext i8 %743 to i64
  %745 = load i64, i64* %PC.i248
  %746 = add i64 %745, 4
  store i64 %746, i64* %PC.i248
  %747 = and i64 %744, 255
  store i64 %747, i64* %RDX.i250, align 8
  store %struct.Memory* %loadMem_425778, %struct.Memory** %MEMORY
  %loadMem_42577c = load %struct.Memory*, %struct.Memory** %MEMORY
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %749 = getelementptr inbounds %struct.GPR, %struct.GPR* %748, i32 0, i32 33
  %750 = getelementptr inbounds %struct.Reg, %struct.Reg* %749, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %750 to i64*
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %752 = getelementptr inbounds %struct.GPR, %struct.GPR* %751, i32 0, i32 15
  %753 = getelementptr inbounds %struct.Reg, %struct.Reg* %752, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %753 to i64*
  %754 = load i64, i64* %RBP.i247
  %755 = sub i64 %754, 12
  %756 = load i64, i64* %PC.i246
  %757 = add i64 %756, 4
  store i64 %757, i64* %PC.i246
  %758 = inttoptr i64 %755 to i32*
  %759 = load i32, i32* %758
  %760 = sub i32 %759, 1
  %761 = icmp ult i32 %759, 1
  %762 = zext i1 %761 to i8
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %762, i8* %763, align 1
  %764 = and i32 %760, 255
  %765 = call i32 @llvm.ctpop.i32(i32 %764)
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  %768 = xor i8 %767, 1
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %768, i8* %769, align 1
  %770 = xor i32 %759, 1
  %771 = xor i32 %770, %760
  %772 = lshr i32 %771, 4
  %773 = trunc i32 %772 to i8
  %774 = and i8 %773, 1
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %774, i8* %775, align 1
  %776 = icmp eq i32 %760, 0
  %777 = zext i1 %776 to i8
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %777, i8* %778, align 1
  %779 = lshr i32 %760, 31
  %780 = trunc i32 %779 to i8
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %780, i8* %781, align 1
  %782 = lshr i32 %759, 31
  %783 = xor i32 %779, %782
  %784 = add i32 %783, %782
  %785 = icmp eq i32 %784, 2
  %786 = zext i1 %785 to i8
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %786, i8* %787, align 1
  store %struct.Memory* %loadMem_42577c, %struct.Memory** %MEMORY
  %loadMem_425780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 33
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %790 to i64*
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 11
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %794 = bitcast %union.anon* %793 to %struct.anon.2*
  %DIL.i245 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %794, i32 0, i32 0
  %795 = load i64, i64* %PC.i244
  %796 = add i64 %795, 4
  store i64 %796, i64* %PC.i244
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %798 = load i8, i8* %797, align 1
  store i8 %798, i8* %DIL.i245, align 1
  store %struct.Memory* %loadMem_425780, %struct.Memory** %MEMORY
  %loadMem_425784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 33
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %801 to i64*
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 11
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %805 = bitcast %union.anon* %804 to %struct.anon.2*
  %DIL.i243 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %805, i32 0, i32 0
  %806 = load i8, i8* %DIL.i243
  %807 = zext i8 %806 to i64
  %808 = load i64, i64* %PC.i242
  %809 = add i64 %808, 4
  store i64 %809, i64* %PC.i242
  %810 = and i64 1, %807
  %811 = trunc i64 %810 to i8
  store i8 %811, i8* %DIL.i243, align 1
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %812, align 1
  %813 = trunc i64 %810 to i32
  %814 = and i32 %813, 255
  %815 = call i32 @llvm.ctpop.i32(i32 %814)
  %816 = trunc i32 %815 to i8
  %817 = and i8 %816, 1
  %818 = xor i8 %817, 1
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %818, i8* %819, align 1
  %820 = icmp eq i8 %811, 0
  %821 = zext i1 %820 to i8
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %821, i8* %822, align 1
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %823, align 1
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %824, align 1
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %825, align 1
  store %struct.Memory* %loadMem_425784, %struct.Memory** %MEMORY
  %loadMem_425788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 33
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %828 to i64*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 11
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %832 = bitcast %union.anon* %831 to %struct.anon.2*
  %DIL.i240 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %832, i32 0, i32 0
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 9
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %RSI.i241 = bitcast %union.anon* %835 to i64*
  %836 = load i8, i8* %DIL.i240
  %837 = zext i8 %836 to i64
  %838 = load i64, i64* %PC.i239
  %839 = add i64 %838, 4
  store i64 %839, i64* %PC.i239
  %840 = and i64 %837, 255
  store i64 %840, i64* %RSI.i241, align 8
  store %struct.Memory* %loadMem_425788, %struct.Memory** %MEMORY
  %loadMem_42578c = load %struct.Memory*, %struct.Memory** %MEMORY
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 33
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %843 to i64*
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 9
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %ESI.i237 = bitcast %union.anon* %846 to i32*
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 7
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %RDX.i238 = bitcast %union.anon* %849 to i64*
  %850 = load i64, i64* %RDX.i238
  %851 = load i32, i32* %ESI.i237
  %852 = zext i32 %851 to i64
  %853 = load i64, i64* %PC.i236
  %854 = add i64 %853, 2
  store i64 %854, i64* %PC.i236
  %855 = xor i64 %852, %850
  %856 = trunc i64 %855 to i32
  %857 = and i64 %855, 4294967295
  store i64 %857, i64* %RDX.i238, align 8
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %858, align 1
  %859 = and i32 %856, 255
  %860 = call i32 @llvm.ctpop.i32(i32 %859)
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  %863 = xor i8 %862, 1
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %863, i8* %864, align 1
  %865 = icmp eq i32 %856, 0
  %866 = zext i1 %865 to i8
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %866, i8* %867, align 1
  %868 = lshr i32 %856, 31
  %869 = trunc i32 %868 to i8
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %869, i8* %870, align 1
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %871, align 1
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %872, align 1
  store %struct.Memory* %loadMem_42578c, %struct.Memory** %MEMORY
  %loadMem_42578e = load %struct.Memory*, %struct.Memory** %MEMORY
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 33
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %875 to i64*
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 7
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %EDX.i235 = bitcast %union.anon* %878 to i32*
  %879 = load i32, i32* %EDX.i235
  %880 = zext i32 %879 to i64
  %881 = load i64, i64* %PC.i234
  %882 = add i64 %881, 3
  store i64 %882, i64* %PC.i234
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %883, align 1
  %884 = and i32 %879, 255
  %885 = call i32 @llvm.ctpop.i32(i32 %884)
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  %888 = xor i8 %887, 1
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %888, i8* %889, align 1
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %890, align 1
  %891 = icmp eq i32 %879, 0
  %892 = zext i1 %891 to i8
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %892, i8* %893, align 1
  %894 = lshr i32 %879, 31
  %895 = trunc i32 %894 to i8
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %895, i8* %896, align 1
  %897 = lshr i32 %879, 31
  %898 = xor i32 %894, %897
  %899 = add i32 %898, %897
  %900 = icmp eq i32 %899, 2
  %901 = zext i1 %900 to i8
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %901, i8* %902, align 1
  store %struct.Memory* %loadMem_42578e, %struct.Memory** %MEMORY
  %loadMem_425791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 33
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %905 to i64*
  %906 = load i64, i64* %PC.i233
  %907 = add i64 %906, 31
  %908 = load i64, i64* %PC.i233
  %909 = add i64 %908, 6
  %910 = load i64, i64* %PC.i233
  %911 = add i64 %910, 6
  store i64 %911, i64* %PC.i233
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %913 = load i8, i8* %912, align 1
  store i8 %913, i8* %BRANCH_TAKEN, align 1
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %915 = icmp ne i8 %913, 0
  %916 = select i1 %915, i64 %907, i64 %909
  store i64 %916, i64* %914, align 8
  store %struct.Memory* %loadMem_425791, %struct.Memory** %MEMORY
  %loadBr_425791 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425791 = icmp eq i8 %loadBr_425791, 1
  br i1 %cmpBr_425791, label %block_.L_4257b0, label %block_425797

block_425797:                                     ; preds = %routine_idivl__ecx.exit274
  %loadMem_425797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 33
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %919 to i64*
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 1
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %922 to i64*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 15
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %925 to i64*
  %926 = load i64, i64* %RBP.i232
  %927 = sub i64 %926, 16
  %928 = load i64, i64* %PC.i230
  %929 = add i64 %928, 4
  store i64 %929, i64* %PC.i230
  %930 = inttoptr i64 %927 to i32*
  %931 = load i32, i32* %930
  %932 = sext i32 %931 to i64
  %933 = mul i64 %932, 20
  %934 = trunc i64 %933 to i32
  %935 = and i64 %933, 4294967295
  store i64 %935, i64* %RAX.i231, align 8
  %936 = shl i64 %933, 32
  %937 = ashr exact i64 %936, 32
  %938 = icmp ne i64 %937, %933
  %939 = zext i1 %938 to i8
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %939, i8* %940, align 1
  %941 = and i32 %934, 255
  %942 = call i32 @llvm.ctpop.i32(i32 %941)
  %943 = trunc i32 %942 to i8
  %944 = and i8 %943, 1
  %945 = xor i8 %944, 1
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %945, i8* %946, align 1
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %947, align 1
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %948, align 1
  %949 = lshr i32 %934, 31
  %950 = trunc i32 %949 to i8
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %950, i8* %951, align 1
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %939, i8* %952, align 1
  store %struct.Memory* %loadMem_425797, %struct.Memory** %MEMORY
  %loadMem_42579b = load %struct.Memory*, %struct.Memory** %MEMORY
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 33
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %955 to i64*
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %957 = getelementptr inbounds %struct.GPR, %struct.GPR* %956, i32 0, i32 1
  %958 = getelementptr inbounds %struct.Reg, %struct.Reg* %957, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %958 to i64*
  %959 = load i64, i64* %RAX.i229
  %960 = load i64, i64* %PC.i228
  %961 = add i64 %960, 3
  store i64 %961, i64* %PC.i228
  %962 = trunc i64 %959 to i32
  %963 = add i32 21, %962
  %964 = zext i32 %963 to i64
  store i64 %964, i64* %RAX.i229, align 8
  %965 = icmp ult i32 %963, %962
  %966 = icmp ult i32 %963, 21
  %967 = or i1 %965, %966
  %968 = zext i1 %967 to i8
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %968, i8* %969, align 1
  %970 = and i32 %963, 255
  %971 = call i32 @llvm.ctpop.i32(i32 %970)
  %972 = trunc i32 %971 to i8
  %973 = and i8 %972, 1
  %974 = xor i8 %973, 1
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %974, i8* %975, align 1
  %976 = xor i64 21, %959
  %977 = trunc i64 %976 to i32
  %978 = xor i32 %977, %963
  %979 = lshr i32 %978, 4
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %981, i8* %982, align 1
  %983 = icmp eq i32 %963, 0
  %984 = zext i1 %983 to i8
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %984, i8* %985, align 1
  %986 = lshr i32 %963, 31
  %987 = trunc i32 %986 to i8
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %987, i8* %988, align 1
  %989 = lshr i32 %962, 31
  %990 = xor i32 %986, %989
  %991 = add i32 %990, %986
  %992 = icmp eq i32 %991, 2
  %993 = zext i1 %992 to i8
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %993, i8* %994, align 1
  store %struct.Memory* %loadMem_42579b, %struct.Memory** %MEMORY
  %loadMem_42579e = load %struct.Memory*, %struct.Memory** %MEMORY
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 33
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %997 to i64*
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 5
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %RCX.i227 = bitcast %union.anon* %1000 to i64*
  %1001 = load i64, i64* %PC.i226
  %1002 = add i64 %1001, 7
  store i64 %1002, i64* %PC.i226
  %1003 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %1004 = zext i32 %1003 to i64
  store i64 %1004, i64* %RCX.i227, align 8
  store %struct.Memory* %loadMem_42579e, %struct.Memory** %MEMORY
  %loadMem_4257a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 33
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1007 to i64*
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 5
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %RCX.i225 = bitcast %union.anon* %1010 to i64*
  %1011 = load i64, i64* %RCX.i225
  %1012 = load i64, i64* %PC.i224
  %1013 = add i64 %1012, 3
  store i64 %1013, i64* %PC.i224
  %1014 = trunc i64 %1011 to i32
  %1015 = sub i32 %1014, 1
  %1016 = zext i32 %1015 to i64
  store i64 %1016, i64* %RCX.i225, align 8
  %1017 = icmp ult i32 %1014, 1
  %1018 = zext i1 %1017 to i8
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1018, i8* %1019, align 1
  %1020 = and i32 %1015, 255
  %1021 = call i32 @llvm.ctpop.i32(i32 %1020)
  %1022 = trunc i32 %1021 to i8
  %1023 = and i8 %1022, 1
  %1024 = xor i8 %1023, 1
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1024, i8* %1025, align 1
  %1026 = xor i64 1, %1011
  %1027 = trunc i64 %1026 to i32
  %1028 = xor i32 %1027, %1015
  %1029 = lshr i32 %1028, 4
  %1030 = trunc i32 %1029 to i8
  %1031 = and i8 %1030, 1
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1031, i8* %1032, align 1
  %1033 = icmp eq i32 %1015, 0
  %1034 = zext i1 %1033 to i8
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1034, i8* %1035, align 1
  %1036 = lshr i32 %1015, 31
  %1037 = trunc i32 %1036 to i8
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1037, i8* %1038, align 1
  %1039 = lshr i32 %1014, 31
  %1040 = xor i32 %1036, %1039
  %1041 = add i32 %1040, %1039
  %1042 = icmp eq i32 %1041, 2
  %1043 = zext i1 %1042 to i8
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1043, i8* %1044, align 1
  store %struct.Memory* %loadMem_4257a5, %struct.Memory** %MEMORY
  %loadMem_4257a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 33
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %1047 to i64*
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 5
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %RCX.i222 = bitcast %union.anon* %1050 to i64*
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 15
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %1053 to i64*
  %1054 = load i64, i64* %RCX.i222
  %1055 = load i64, i64* %RBP.i223
  %1056 = sub i64 %1055, 20
  %1057 = load i64, i64* %PC.i221
  %1058 = add i64 %1057, 3
  store i64 %1058, i64* %PC.i221
  %1059 = trunc i64 %1054 to i32
  %1060 = inttoptr i64 %1056 to i32*
  %1061 = load i32, i32* %1060
  %1062 = sub i32 %1059, %1061
  %1063 = zext i32 %1062 to i64
  store i64 %1063, i64* %RCX.i222, align 8
  %1064 = icmp ult i32 %1059, %1061
  %1065 = zext i1 %1064 to i8
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1065, i8* %1066, align 1
  %1067 = and i32 %1062, 255
  %1068 = call i32 @llvm.ctpop.i32(i32 %1067)
  %1069 = trunc i32 %1068 to i8
  %1070 = and i8 %1069, 1
  %1071 = xor i8 %1070, 1
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1071, i8* %1072, align 1
  %1073 = xor i32 %1061, %1059
  %1074 = xor i32 %1073, %1062
  %1075 = lshr i32 %1074, 4
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1077, i8* %1078, align 1
  %1079 = icmp eq i32 %1062, 0
  %1080 = zext i1 %1079 to i8
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1080, i8* %1081, align 1
  %1082 = lshr i32 %1062, 31
  %1083 = trunc i32 %1082 to i8
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1083, i8* %1084, align 1
  %1085 = lshr i32 %1059, 31
  %1086 = lshr i32 %1061, 31
  %1087 = xor i32 %1086, %1085
  %1088 = xor i32 %1082, %1085
  %1089 = add i32 %1088, %1087
  %1090 = icmp eq i32 %1089, 2
  %1091 = zext i1 %1090 to i8
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1091, i8* %1092, align 1
  store %struct.Memory* %loadMem_4257a8, %struct.Memory** %MEMORY
  %loadMem_4257ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 33
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %1095 to i64*
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 5
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %ECX.i219 = bitcast %union.anon* %1098 to i32*
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 1
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %1101 to i64*
  %1102 = load i64, i64* %RAX.i220
  %1103 = load i32, i32* %ECX.i219
  %1104 = zext i32 %1103 to i64
  %1105 = load i64, i64* %PC.i218
  %1106 = add i64 %1105, 2
  store i64 %1106, i64* %PC.i218
  %1107 = trunc i64 %1102 to i32
  %1108 = add i32 %1103, %1107
  %1109 = zext i32 %1108 to i64
  store i64 %1109, i64* %RAX.i220, align 8
  %1110 = icmp ult i32 %1108, %1107
  %1111 = icmp ult i32 %1108, %1103
  %1112 = or i1 %1110, %1111
  %1113 = zext i1 %1112 to i8
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1113, i8* %1114, align 1
  %1115 = and i32 %1108, 255
  %1116 = call i32 @llvm.ctpop.i32(i32 %1115)
  %1117 = trunc i32 %1116 to i8
  %1118 = and i8 %1117, 1
  %1119 = xor i8 %1118, 1
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1119, i8* %1120, align 1
  %1121 = xor i64 %1104, %1102
  %1122 = trunc i64 %1121 to i32
  %1123 = xor i32 %1122, %1108
  %1124 = lshr i32 %1123, 4
  %1125 = trunc i32 %1124 to i8
  %1126 = and i8 %1125, 1
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1126, i8* %1127, align 1
  %1128 = icmp eq i32 %1108, 0
  %1129 = zext i1 %1128 to i8
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1129, i8* %1130, align 1
  %1131 = lshr i32 %1108, 31
  %1132 = trunc i32 %1131 to i8
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1132, i8* %1133, align 1
  %1134 = lshr i32 %1107, 31
  %1135 = lshr i32 %1103, 31
  %1136 = xor i32 %1131, %1134
  %1137 = xor i32 %1131, %1135
  %1138 = add i32 %1136, %1137
  %1139 = icmp eq i32 %1138, 2
  %1140 = zext i1 %1139 to i8
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1140, i8* %1141, align 1
  store %struct.Memory* %loadMem_4257ab, %struct.Memory** %MEMORY
  %loadMem_4257ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 33
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %1144 to i64*
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 1
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %EAX.i216 = bitcast %union.anon* %1147 to i32*
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 15
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %1150 to i64*
  %1151 = load i64, i64* %RBP.i217
  %1152 = sub i64 %1151, 4
  %1153 = load i32, i32* %EAX.i216
  %1154 = zext i32 %1153 to i64
  %1155 = load i64, i64* %PC.i215
  %1156 = add i64 %1155, 3
  store i64 %1156, i64* %PC.i215
  %1157 = inttoptr i64 %1152 to i32*
  store i32 %1153, i32* %1157
  store %struct.Memory* %loadMem_4257ad, %struct.Memory** %MEMORY
  br label %block_.L_4257b0

block_.L_4257b0:                                  ; preds = %block_425797, %routine_idivl__ecx.exit274
  %loadMem_4257b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 33
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %1160 to i64*
  %1161 = load i64, i64* %PC.i214
  %1162 = add i64 %1161, 5
  %1163 = load i64, i64* %PC.i214
  %1164 = add i64 %1163, 5
  store i64 %1164, i64* %PC.i214
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1162, i64* %1165, align 8
  store %struct.Memory* %loadMem_4257b0, %struct.Memory** %MEMORY
  br label %block_.L_4257b5

block_.L_4257b5:                                  ; preds = %block_.L_4257b0, %block_.L_42572b
  %loadMem_4257b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 33
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %1168 to i64*
  %1169 = load i64, i64* %PC.i213
  %1170 = add i64 %1169, 8
  store i64 %1170, i64* %PC.i213
  %1171 = load i32, i32* bitcast (%G_0xab0344_type* @G_0xab0344 to i32*)
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1172, align 1
  %1173 = and i32 %1171, 255
  %1174 = call i32 @llvm.ctpop.i32(i32 %1173)
  %1175 = trunc i32 %1174 to i8
  %1176 = and i8 %1175, 1
  %1177 = xor i8 %1176, 1
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1177, i8* %1178, align 1
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1179, align 1
  %1180 = icmp eq i32 %1171, 0
  %1181 = zext i1 %1180 to i8
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1181, i8* %1182, align 1
  %1183 = lshr i32 %1171, 31
  %1184 = trunc i32 %1183 to i8
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1184, i8* %1185, align 1
  %1186 = lshr i32 %1171, 31
  %1187 = xor i32 %1183, %1186
  %1188 = add i32 %1187, %1186
  %1189 = icmp eq i32 %1188, 2
  %1190 = zext i1 %1189 to i8
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1190, i8* %1191, align 1
  store %struct.Memory* %loadMem_4257b5, %struct.Memory** %MEMORY
  %loadMem_4257bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1193 = getelementptr inbounds %struct.GPR, %struct.GPR* %1192, i32 0, i32 33
  %1194 = getelementptr inbounds %struct.Reg, %struct.Reg* %1193, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %1194 to i64*
  %1195 = load i64, i64* %PC.i212
  %1196 = add i64 %1195, 130
  %1197 = load i64, i64* %PC.i212
  %1198 = add i64 %1197, 6
  %1199 = load i64, i64* %PC.i212
  %1200 = add i64 %1199, 6
  store i64 %1200, i64* %PC.i212
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1202 = load i8, i8* %1201, align 1
  store i8 %1202, i8* %BRANCH_TAKEN, align 1
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1204 = icmp ne i8 %1202, 0
  %1205 = select i1 %1204, i64 %1196, i64 %1198
  store i64 %1205, i64* %1203, align 8
  store %struct.Memory* %loadMem_4257bd, %struct.Memory** %MEMORY
  %loadBr_4257bd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4257bd = icmp eq i8 %loadBr_4257bd, 1
  br i1 %cmpBr_4257bd, label %block_.L_42583f, label %block_4257c3

block_4257c3:                                     ; preds = %block_.L_4257b5
  %loadMem_4257c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 33
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %1208 to i64*
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 1
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %1211 to i64*
  %1212 = load i64, i64* %PC.i210
  %1213 = add i64 %1212, 5
  store i64 %1213, i64* %PC.i210
  store i64 20, i64* %RAX.i211, align 8
  store %struct.Memory* %loadMem_4257c3, %struct.Memory** %MEMORY
  %loadMem_4257c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 33
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %1216 to i64*
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 5
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %RCX.i208 = bitcast %union.anon* %1219 to i64*
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 15
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %1222 to i64*
  %1223 = load i64, i64* %RBP.i209
  %1224 = sub i64 %1223, 4
  %1225 = load i64, i64* %PC.i207
  %1226 = add i64 %1225, 3
  store i64 %1226, i64* %PC.i207
  %1227 = inttoptr i64 %1224 to i32*
  %1228 = load i32, i32* %1227
  %1229 = zext i32 %1228 to i64
  store i64 %1229, i64* %RCX.i208, align 8
  store %struct.Memory* %loadMem_4257c8, %struct.Memory** %MEMORY
  %loadMem_4257cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 33
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %1232 to i64*
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 1
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %EAX.i205 = bitcast %union.anon* %1235 to i32*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 15
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %1238 to i64*
  %1239 = load i64, i64* %RBP.i206
  %1240 = sub i64 %1239, 28
  %1241 = load i32, i32* %EAX.i205
  %1242 = zext i32 %1241 to i64
  %1243 = load i64, i64* %PC.i204
  %1244 = add i64 %1243, 3
  store i64 %1244, i64* %PC.i204
  %1245 = inttoptr i64 %1240 to i32*
  store i32 %1241, i32* %1245
  store %struct.Memory* %loadMem_4257cb, %struct.Memory** %MEMORY
  %loadMem_4257ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 33
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 5
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %ECX.i202 = bitcast %union.anon* %1251 to i32*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 1
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %1254 to i64*
  %1255 = load i32, i32* %ECX.i202
  %1256 = zext i32 %1255 to i64
  %1257 = load i64, i64* %PC.i201
  %1258 = add i64 %1257, 2
  store i64 %1258, i64* %PC.i201
  %1259 = and i64 %1256, 4294967295
  store i64 %1259, i64* %RAX.i203, align 8
  store %struct.Memory* %loadMem_4257ce, %struct.Memory** %MEMORY
  %loadMem_4257d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 33
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %1262 to i64*
  %1263 = load i64, i64* %PC.i200
  %1264 = add i64 %1263, 1
  store i64 %1264, i64* %PC.i200
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1267 = bitcast %union.anon* %1266 to i32*
  %1268 = load i32, i32* %1267, align 8
  %1269 = sext i32 %1268 to i64
  %1270 = lshr i64 %1269, 32
  store i64 %1270, i64* %1265, align 8
  store %struct.Memory* %loadMem_4257d0, %struct.Memory** %MEMORY
  %loadMem_4257d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 33
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %1273 to i64*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 5
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %1276 to i64*
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 15
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %1279 to i64*
  %1280 = load i64, i64* %RBP.i199
  %1281 = sub i64 %1280, 28
  %1282 = load i64, i64* %PC.i197
  %1283 = add i64 %1282, 3
  store i64 %1283, i64* %PC.i197
  %1284 = inttoptr i64 %1281 to i32*
  %1285 = load i32, i32* %1284
  %1286 = zext i32 %1285 to i64
  store i64 %1286, i64* %RCX.i198, align 8
  store %struct.Memory* %loadMem_4257d1, %struct.Memory** %MEMORY
  %loadMem_4257d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1288 = getelementptr inbounds %struct.GPR, %struct.GPR* %1287, i32 0, i32 33
  %1289 = getelementptr inbounds %struct.Reg, %struct.Reg* %1288, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %1289 to i64*
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 5
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %ECX.i192 = bitcast %union.anon* %1292 to i32*
  %1293 = load i32, i32* %ECX.i192
  %1294 = zext i32 %1293 to i64
  %1295 = load i64, i64* %PC.i191
  %1296 = add i64 %1295, 2
  store i64 %1296, i64* %PC.i191
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1298 = bitcast %union.anon* %1297 to i32*
  %1299 = load i32, i32* %1298, align 8
  %1300 = zext i32 %1299 to i64
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1302 = bitcast %union.anon* %1301 to i32*
  %1303 = load i32, i32* %1302, align 8
  %1304 = zext i32 %1303 to i64
  %1305 = shl i64 %1294, 32
  %1306 = ashr exact i64 %1305, 32
  %1307 = shl i64 %1304, 32
  %1308 = or i64 %1307, %1300
  %1309 = sdiv i64 %1308, %1306
  %1310 = shl i64 %1309, 32
  %1311 = ashr exact i64 %1310, 32
  %1312 = icmp eq i64 %1309, %1311
  br i1 %1312, label %1317, label %1313

; <label>:1313:                                   ; preds = %block_4257c3
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1315 = load i64, i64* %1314, align 8
  %1316 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1315, %struct.Memory* %loadMem_4257d4)
  br label %routine_idivl__ecx.exit193

; <label>:1317:                                   ; preds = %block_4257c3
  %1318 = srem i64 %1308, %1306
  %1319 = getelementptr inbounds %union.anon, %union.anon* %1297, i64 0, i32 0
  %1320 = and i64 %1309, 4294967295
  store i64 %1320, i64* %1319, align 8
  %1321 = getelementptr inbounds %union.anon, %union.anon* %1301, i64 0, i32 0
  %1322 = and i64 %1318, 4294967295
  store i64 %1322, i64* %1321, align 8
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1323, align 1
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1324, align 1
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1325, align 1
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1326, align 1
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1327, align 1
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1328, align 1
  br label %routine_idivl__ecx.exit193

routine_idivl__ecx.exit193:                       ; preds = %1313, %1317
  %1329 = phi %struct.Memory* [ %1316, %1313 ], [ %loadMem_4257d4, %1317 ]
  store %struct.Memory* %1329, %struct.Memory** %MEMORY
  %loadMem_4257d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 33
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %1332 to i64*
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 1
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %1335 to i64*
  %1336 = load i64, i64* %RAX.i190
  %1337 = load i64, i64* %PC.i189
  %1338 = add i64 %1337, 3
  store i64 %1338, i64* %PC.i189
  %1339 = trunc i64 %1336 to i32
  %1340 = sub i32 %1339, 1
  %1341 = zext i32 %1340 to i64
  store i64 %1341, i64* %RAX.i190, align 8
  %1342 = icmp ult i32 %1339, 1
  %1343 = zext i1 %1342 to i8
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1343, i8* %1344, align 1
  %1345 = and i32 %1340, 255
  %1346 = call i32 @llvm.ctpop.i32(i32 %1345)
  %1347 = trunc i32 %1346 to i8
  %1348 = and i8 %1347, 1
  %1349 = xor i8 %1348, 1
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1349, i8* %1350, align 1
  %1351 = xor i64 1, %1336
  %1352 = trunc i64 %1351 to i32
  %1353 = xor i32 %1352, %1340
  %1354 = lshr i32 %1353, 4
  %1355 = trunc i32 %1354 to i8
  %1356 = and i8 %1355, 1
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1356, i8* %1357, align 1
  %1358 = icmp eq i32 %1340, 0
  %1359 = zext i1 %1358 to i8
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1359, i8* %1360, align 1
  %1361 = lshr i32 %1340, 31
  %1362 = trunc i32 %1361 to i8
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1362, i8* %1363, align 1
  %1364 = lshr i32 %1339, 31
  %1365 = xor i32 %1361, %1364
  %1366 = add i32 %1365, %1364
  %1367 = icmp eq i32 %1366, 2
  %1368 = zext i1 %1367 to i8
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1368, i8* %1369, align 1
  store %struct.Memory* %loadMem_4257d6, %struct.Memory** %MEMORY
  %loadMem_4257d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 33
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %1372 to i64*
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1374 = getelementptr inbounds %struct.GPR, %struct.GPR* %1373, i32 0, i32 1
  %1375 = getelementptr inbounds %struct.Reg, %struct.Reg* %1374, i32 0, i32 0
  %EAX.i187 = bitcast %union.anon* %1375 to i32*
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 15
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %1378 to i64*
  %1379 = load i64, i64* %RBP.i188
  %1380 = sub i64 %1379, 16
  %1381 = load i32, i32* %EAX.i187
  %1382 = zext i32 %1381 to i64
  %1383 = load i64, i64* %PC.i186
  %1384 = add i64 %1383, 3
  store i64 %1384, i64* %PC.i186
  %1385 = inttoptr i64 %1380 to i32*
  store i32 %1381, i32* %1385
  store %struct.Memory* %loadMem_4257d9, %struct.Memory** %MEMORY
  %loadMem_4257dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1387 = getelementptr inbounds %struct.GPR, %struct.GPR* %1386, i32 0, i32 33
  %1388 = getelementptr inbounds %struct.Reg, %struct.Reg* %1387, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %1388 to i64*
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 1
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %1391 to i64*
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 15
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %1394 to i64*
  %1395 = load i64, i64* %RBP.i185
  %1396 = sub i64 %1395, 4
  %1397 = load i64, i64* %PC.i183
  %1398 = add i64 %1397, 3
  store i64 %1398, i64* %PC.i183
  %1399 = inttoptr i64 %1396 to i32*
  %1400 = load i32, i32* %1399
  %1401 = zext i32 %1400 to i64
  store i64 %1401, i64* %RAX.i184, align 8
  store %struct.Memory* %loadMem_4257dc, %struct.Memory** %MEMORY
  %loadMem_4257df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 33
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %1404 to i64*
  %1405 = load i64, i64* %PC.i182
  %1406 = add i64 %1405, 1
  store i64 %1406, i64* %PC.i182
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1409 = bitcast %union.anon* %1408 to i32*
  %1410 = load i32, i32* %1409, align 8
  %1411 = sext i32 %1410 to i64
  %1412 = lshr i64 %1411, 32
  store i64 %1412, i64* %1407, align 8
  store %struct.Memory* %loadMem_4257df, %struct.Memory** %MEMORY
  %loadMem_4257e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1414 = getelementptr inbounds %struct.GPR, %struct.GPR* %1413, i32 0, i32 33
  %1415 = getelementptr inbounds %struct.Reg, %struct.Reg* %1414, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %1415 to i64*
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 5
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %ECX.i177 = bitcast %union.anon* %1418 to i32*
  %1419 = load i32, i32* %ECX.i177
  %1420 = zext i32 %1419 to i64
  %1421 = load i64, i64* %PC.i176
  %1422 = add i64 %1421, 2
  store i64 %1422, i64* %PC.i176
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1424 = bitcast %union.anon* %1423 to i32*
  %1425 = load i32, i32* %1424, align 8
  %1426 = zext i32 %1425 to i64
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1428 = bitcast %union.anon* %1427 to i32*
  %1429 = load i32, i32* %1428, align 8
  %1430 = zext i32 %1429 to i64
  %1431 = shl i64 %1420, 32
  %1432 = ashr exact i64 %1431, 32
  %1433 = shl i64 %1430, 32
  %1434 = or i64 %1433, %1426
  %1435 = sdiv i64 %1434, %1432
  %1436 = shl i64 %1435, 32
  %1437 = ashr exact i64 %1436, 32
  %1438 = icmp eq i64 %1435, %1437
  br i1 %1438, label %1443, label %1439

; <label>:1439:                                   ; preds = %routine_idivl__ecx.exit193
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1441 = load i64, i64* %1440, align 8
  %1442 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1441, %struct.Memory* %loadMem_4257e0)
  br label %routine_idivl__ecx.exit178

; <label>:1443:                                   ; preds = %routine_idivl__ecx.exit193
  %1444 = srem i64 %1434, %1432
  %1445 = getelementptr inbounds %union.anon, %union.anon* %1423, i64 0, i32 0
  %1446 = and i64 %1435, 4294967295
  store i64 %1446, i64* %1445, align 8
  %1447 = getelementptr inbounds %union.anon, %union.anon* %1427, i64 0, i32 0
  %1448 = and i64 %1444, 4294967295
  store i64 %1448, i64* %1447, align 8
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1449, align 1
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1450, align 1
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1451, align 1
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1452, align 1
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1453, align 1
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1454, align 1
  br label %routine_idivl__ecx.exit178

routine_idivl__ecx.exit178:                       ; preds = %1439, %1443
  %1455 = phi %struct.Memory* [ %1442, %1439 ], [ %loadMem_4257e0, %1443 ]
  store %struct.Memory* %1455, %struct.Memory** %MEMORY
  %loadMem_4257e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 33
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %1458 to i64*
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 7
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %RDX.i175 = bitcast %union.anon* %1461 to i64*
  %1462 = load i64, i64* %RDX.i175
  %1463 = load i64, i64* %PC.i174
  %1464 = add i64 %1463, 3
  store i64 %1464, i64* %PC.i174
  %1465 = trunc i64 %1462 to i32
  %1466 = sub i32 %1465, 1
  %1467 = zext i32 %1466 to i64
  store i64 %1467, i64* %RDX.i175, align 8
  %1468 = icmp ult i32 %1465, 1
  %1469 = zext i1 %1468 to i8
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1469, i8* %1470, align 1
  %1471 = and i32 %1466, 255
  %1472 = call i32 @llvm.ctpop.i32(i32 %1471)
  %1473 = trunc i32 %1472 to i8
  %1474 = and i8 %1473, 1
  %1475 = xor i8 %1474, 1
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1475, i8* %1476, align 1
  %1477 = xor i64 1, %1462
  %1478 = trunc i64 %1477 to i32
  %1479 = xor i32 %1478, %1466
  %1480 = lshr i32 %1479, 4
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1482, i8* %1483, align 1
  %1484 = icmp eq i32 %1466, 0
  %1485 = zext i1 %1484 to i8
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1485, i8* %1486, align 1
  %1487 = lshr i32 %1466, 31
  %1488 = trunc i32 %1487 to i8
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1488, i8* %1489, align 1
  %1490 = lshr i32 %1465, 31
  %1491 = xor i32 %1487, %1490
  %1492 = add i32 %1491, %1490
  %1493 = icmp eq i32 %1492, 2
  %1494 = zext i1 %1493 to i8
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1494, i8* %1495, align 1
  store %struct.Memory* %loadMem_4257e2, %struct.Memory** %MEMORY
  %loadMem_4257e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 33
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %1498 to i64*
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 7
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %EDX.i172 = bitcast %union.anon* %1501 to i32*
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1503 = getelementptr inbounds %struct.GPR, %struct.GPR* %1502, i32 0, i32 15
  %1504 = getelementptr inbounds %struct.Reg, %struct.Reg* %1503, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %1504 to i64*
  %1505 = load i64, i64* %RBP.i173
  %1506 = sub i64 %1505, 20
  %1507 = load i32, i32* %EDX.i172
  %1508 = zext i32 %1507 to i64
  %1509 = load i64, i64* %PC.i171
  %1510 = add i64 %1509, 3
  store i64 %1510, i64* %PC.i171
  %1511 = inttoptr i64 %1506 to i32*
  store i32 %1507, i32* %1511
  store %struct.Memory* %loadMem_4257e5, %struct.Memory** %MEMORY
  %loadMem_4257e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1513 = getelementptr inbounds %struct.GPR, %struct.GPR* %1512, i32 0, i32 33
  %1514 = getelementptr inbounds %struct.Reg, %struct.Reg* %1513, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %1514 to i64*
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1516 = getelementptr inbounds %struct.GPR, %struct.GPR* %1515, i32 0, i32 7
  %1517 = getelementptr inbounds %struct.Reg, %struct.Reg* %1516, i32 0, i32 0
  %RDX.i169 = bitcast %union.anon* %1517 to i64*
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1519 = getelementptr inbounds %struct.GPR, %struct.GPR* %1518, i32 0, i32 15
  %1520 = getelementptr inbounds %struct.Reg, %struct.Reg* %1519, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %1520 to i64*
  %1521 = load i64, i64* %RBP.i170
  %1522 = sub i64 %1521, 16
  %1523 = load i64, i64* %PC.i168
  %1524 = add i64 %1523, 3
  store i64 %1524, i64* %PC.i168
  %1525 = inttoptr i64 %1522 to i32*
  %1526 = load i32, i32* %1525
  %1527 = zext i32 %1526 to i64
  store i64 %1527, i64* %RDX.i169, align 8
  store %struct.Memory* %loadMem_4257e8, %struct.Memory** %MEMORY
  %loadMem_4257eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 33
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %1530 to i64*
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 7
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %RDX.i167 = bitcast %union.anon* %1533 to i64*
  %1534 = load i64, i64* %RDX.i167
  %1535 = load i64, i64* %PC.i166
  %1536 = add i64 %1535, 2
  store i64 %1536, i64* %PC.i166
  %1537 = trunc i64 %1534 to i32
  %1538 = shl i32 %1537, 1
  %1539 = icmp slt i32 %1537, 0
  %1540 = icmp slt i32 %1538, 0
  %1541 = xor i1 %1539, %1540
  %1542 = zext i32 %1538 to i64
  store i64 %1542, i64* %RDX.i167, align 8
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1544 = zext i1 %1539 to i8
  store i8 %1544, i8* %1543, align 1
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1546 = and i32 %1538, 254
  %1547 = call i32 @llvm.ctpop.i32(i32 %1546)
  %1548 = trunc i32 %1547 to i8
  %1549 = and i8 %1548, 1
  %1550 = xor i8 %1549, 1
  store i8 %1550, i8* %1545, align 1
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1551, align 1
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1553 = icmp eq i32 %1538, 0
  %1554 = zext i1 %1553 to i8
  store i8 %1554, i8* %1552, align 1
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1556 = lshr i32 %1538, 31
  %1557 = trunc i32 %1556 to i8
  store i8 %1557, i8* %1555, align 1
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1559 = zext i1 %1541 to i8
  store i8 %1559, i8* %1558, align 1
  store %struct.Memory* %loadMem_4257eb, %struct.Memory** %MEMORY
  %loadMem_4257ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1561 = getelementptr inbounds %struct.GPR, %struct.GPR* %1560, i32 0, i32 33
  %1562 = getelementptr inbounds %struct.Reg, %struct.Reg* %1561, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %1562 to i64*
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1564 = getelementptr inbounds %struct.GPR, %struct.GPR* %1563, i32 0, i32 9
  %1565 = getelementptr inbounds %struct.Reg, %struct.Reg* %1564, i32 0, i32 0
  %RSI.i165 = bitcast %union.anon* %1565 to i64*
  %1566 = load i64, i64* %PC.i164
  %1567 = add i64 %1566, 7
  store i64 %1567, i64* %PC.i164
  %1568 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %1569 = zext i32 %1568 to i64
  store i64 %1569, i64* %RSI.i165, align 8
  store %struct.Memory* %loadMem_4257ee, %struct.Memory** %MEMORY
  %loadMem_4257f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 33
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %1572 to i64*
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1574 = getelementptr inbounds %struct.GPR, %struct.GPR* %1573, i32 0, i32 9
  %1575 = getelementptr inbounds %struct.Reg, %struct.Reg* %1574, i32 0, i32 0
  %RSI.i163 = bitcast %union.anon* %1575 to i64*
  %1576 = load i64, i64* %RSI.i163
  %1577 = load i64, i64* %PC.i162
  %1578 = add i64 %1577, 3
  store i64 %1578, i64* %PC.i162
  %1579 = trunc i64 %1576 to i32
  %1580 = sub i32 %1579, 1
  %1581 = zext i32 %1580 to i64
  store i64 %1581, i64* %RSI.i163, align 8
  %1582 = icmp ult i32 %1579, 1
  %1583 = zext i1 %1582 to i8
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1583, i8* %1584, align 1
  %1585 = and i32 %1580, 255
  %1586 = call i32 @llvm.ctpop.i32(i32 %1585)
  %1587 = trunc i32 %1586 to i8
  %1588 = and i8 %1587, 1
  %1589 = xor i8 %1588, 1
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1589, i8* %1590, align 1
  %1591 = xor i64 1, %1576
  %1592 = trunc i64 %1591 to i32
  %1593 = xor i32 %1592, %1580
  %1594 = lshr i32 %1593, 4
  %1595 = trunc i32 %1594 to i8
  %1596 = and i8 %1595, 1
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1596, i8* %1597, align 1
  %1598 = icmp eq i32 %1580, 0
  %1599 = zext i1 %1598 to i8
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1599, i8* %1600, align 1
  %1601 = lshr i32 %1580, 31
  %1602 = trunc i32 %1601 to i8
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1602, i8* %1603, align 1
  %1604 = lshr i32 %1579, 31
  %1605 = xor i32 %1601, %1604
  %1606 = add i32 %1605, %1604
  %1607 = icmp eq i32 %1606, 2
  %1608 = zext i1 %1607 to i8
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1608, i8* %1609, align 1
  store %struct.Memory* %loadMem_4257f5, %struct.Memory** %MEMORY
  %loadMem_4257f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 33
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %1612 to i64*
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1614 = getelementptr inbounds %struct.GPR, %struct.GPR* %1613, i32 0, i32 7
  %1615 = getelementptr inbounds %struct.Reg, %struct.Reg* %1614, i32 0, i32 0
  %EDX.i160 = bitcast %union.anon* %1615 to i32*
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1617 = getelementptr inbounds %struct.GPR, %struct.GPR* %1616, i32 0, i32 9
  %1618 = getelementptr inbounds %struct.Reg, %struct.Reg* %1617, i32 0, i32 0
  %ESI.i161 = bitcast %union.anon* %1618 to i32*
  %1619 = load i32, i32* %EDX.i160
  %1620 = zext i32 %1619 to i64
  %1621 = load i32, i32* %ESI.i161
  %1622 = zext i32 %1621 to i64
  %1623 = load i64, i64* %PC.i159
  %1624 = add i64 %1623, 2
  store i64 %1624, i64* %PC.i159
  %1625 = sub i32 %1619, %1621
  %1626 = icmp ult i32 %1619, %1621
  %1627 = zext i1 %1626 to i8
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1627, i8* %1628, align 1
  %1629 = and i32 %1625, 255
  %1630 = call i32 @llvm.ctpop.i32(i32 %1629)
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  %1633 = xor i8 %1632, 1
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1633, i8* %1634, align 1
  %1635 = xor i64 %1622, %1620
  %1636 = trunc i64 %1635 to i32
  %1637 = xor i32 %1636, %1625
  %1638 = lshr i32 %1637, 4
  %1639 = trunc i32 %1638 to i8
  %1640 = and i8 %1639, 1
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1640, i8* %1641, align 1
  %1642 = icmp eq i32 %1625, 0
  %1643 = zext i1 %1642 to i8
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1643, i8* %1644, align 1
  %1645 = lshr i32 %1625, 31
  %1646 = trunc i32 %1645 to i8
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1646, i8* %1647, align 1
  %1648 = lshr i32 %1619, 31
  %1649 = lshr i32 %1621, 31
  %1650 = xor i32 %1649, %1648
  %1651 = xor i32 %1645, %1648
  %1652 = add i32 %1651, %1650
  %1653 = icmp eq i32 %1652, 2
  %1654 = zext i1 %1653 to i8
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1654, i8* %1655, align 1
  store %struct.Memory* %loadMem_4257f8, %struct.Memory** %MEMORY
  %loadMem_4257fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1657 = getelementptr inbounds %struct.GPR, %struct.GPR* %1656, i32 0, i32 33
  %1658 = getelementptr inbounds %struct.Reg, %struct.Reg* %1657, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %1658 to i64*
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1660 = getelementptr inbounds %struct.GPR, %struct.GPR* %1659, i32 0, i32 11
  %1661 = getelementptr inbounds %struct.Reg, %struct.Reg* %1660, i32 0, i32 0
  %1662 = bitcast %union.anon* %1661 to %struct.anon.2*
  %DIL.i158 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1662, i32 0, i32 0
  %1663 = load i64, i64* %PC.i157
  %1664 = add i64 %1663, 4
  store i64 %1664, i64* %PC.i157
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1666 = load i8, i8* %1665, align 1
  %1667 = icmp eq i8 %1666, 0
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1669 = load i8, i8* %1668, align 1
  %1670 = icmp ne i8 %1669, 0
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1672 = load i8, i8* %1671, align 1
  %1673 = icmp ne i8 %1672, 0
  %1674 = xor i1 %1670, %1673
  %1675 = xor i1 %1674, true
  %1676 = and i1 %1667, %1675
  %1677 = zext i1 %1676 to i8
  store i8 %1677, i8* %DIL.i158, align 1
  store %struct.Memory* %loadMem_4257fa, %struct.Memory** %MEMORY
  %loadMem_4257fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 33
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %1680 to i64*
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1682 = getelementptr inbounds %struct.GPR, %struct.GPR* %1681, i32 0, i32 11
  %1683 = getelementptr inbounds %struct.Reg, %struct.Reg* %1682, i32 0, i32 0
  %1684 = bitcast %union.anon* %1683 to %struct.anon.2*
  %DIL.i156 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1684, i32 0, i32 0
  %1685 = load i8, i8* %DIL.i156
  %1686 = zext i8 %1685 to i64
  %1687 = load i64, i64* %PC.i155
  %1688 = add i64 %1687, 4
  store i64 %1688, i64* %PC.i155
  %1689 = and i64 1, %1686
  %1690 = trunc i64 %1689 to i8
  store i8 %1690, i8* %DIL.i156, align 1
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1691, align 1
  %1692 = trunc i64 %1689 to i32
  %1693 = and i32 %1692, 255
  %1694 = call i32 @llvm.ctpop.i32(i32 %1693)
  %1695 = trunc i32 %1694 to i8
  %1696 = and i8 %1695, 1
  %1697 = xor i8 %1696, 1
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1697, i8* %1698, align 1
  %1699 = icmp eq i8 %1690, 0
  %1700 = zext i1 %1699 to i8
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1700, i8* %1701, align 1
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1702, align 1
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1703, align 1
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1704, align 1
  store %struct.Memory* %loadMem_4257fe, %struct.Memory** %MEMORY
  %loadMem_425802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 33
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %1707 to i64*
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1709 = getelementptr inbounds %struct.GPR, %struct.GPR* %1708, i32 0, i32 11
  %1710 = getelementptr inbounds %struct.Reg, %struct.Reg* %1709, i32 0, i32 0
  %1711 = bitcast %union.anon* %1710 to %struct.anon.2*
  %DIL.i153 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1711, i32 0, i32 0
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 7
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %RDX.i154 = bitcast %union.anon* %1714 to i64*
  %1715 = load i8, i8* %DIL.i153
  %1716 = zext i8 %1715 to i64
  %1717 = load i64, i64* %PC.i152
  %1718 = add i64 %1717, 4
  store i64 %1718, i64* %PC.i152
  %1719 = and i64 %1716, 255
  store i64 %1719, i64* %RDX.i154, align 8
  store %struct.Memory* %loadMem_425802, %struct.Memory** %MEMORY
  %loadMem_425806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 33
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %1722 to i64*
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 15
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %1725 to i64*
  %1726 = load i64, i64* %RBP.i151
  %1727 = sub i64 %1726, 12
  %1728 = load i64, i64* %PC.i150
  %1729 = add i64 %1728, 4
  store i64 %1729, i64* %PC.i150
  %1730 = inttoptr i64 %1727 to i32*
  %1731 = load i32, i32* %1730
  %1732 = sub i32 %1731, 1
  %1733 = icmp ult i32 %1731, 1
  %1734 = zext i1 %1733 to i8
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1734, i8* %1735, align 1
  %1736 = and i32 %1732, 255
  %1737 = call i32 @llvm.ctpop.i32(i32 %1736)
  %1738 = trunc i32 %1737 to i8
  %1739 = and i8 %1738, 1
  %1740 = xor i8 %1739, 1
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1740, i8* %1741, align 1
  %1742 = xor i32 %1731, 1
  %1743 = xor i32 %1742, %1732
  %1744 = lshr i32 %1743, 4
  %1745 = trunc i32 %1744 to i8
  %1746 = and i8 %1745, 1
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1746, i8* %1747, align 1
  %1748 = icmp eq i32 %1732, 0
  %1749 = zext i1 %1748 to i8
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1749, i8* %1750, align 1
  %1751 = lshr i32 %1732, 31
  %1752 = trunc i32 %1751 to i8
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1752, i8* %1753, align 1
  %1754 = lshr i32 %1731, 31
  %1755 = xor i32 %1751, %1754
  %1756 = add i32 %1755, %1754
  %1757 = icmp eq i32 %1756, 2
  %1758 = zext i1 %1757 to i8
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1758, i8* %1759, align 1
  store %struct.Memory* %loadMem_425806, %struct.Memory** %MEMORY
  %loadMem_42580a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 33
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %1762 to i64*
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1764 = getelementptr inbounds %struct.GPR, %struct.GPR* %1763, i32 0, i32 11
  %1765 = getelementptr inbounds %struct.Reg, %struct.Reg* %1764, i32 0, i32 0
  %1766 = bitcast %union.anon* %1765 to %struct.anon.2*
  %DIL.i149 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1766, i32 0, i32 0
  %1767 = load i64, i64* %PC.i148
  %1768 = add i64 %1767, 4
  store i64 %1768, i64* %PC.i148
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1770 = load i8, i8* %1769, align 1
  store i8 %1770, i8* %DIL.i149, align 1
  store %struct.Memory* %loadMem_42580a, %struct.Memory** %MEMORY
  %loadMem_42580e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1772 = getelementptr inbounds %struct.GPR, %struct.GPR* %1771, i32 0, i32 33
  %1773 = getelementptr inbounds %struct.Reg, %struct.Reg* %1772, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %1773 to i64*
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1775 = getelementptr inbounds %struct.GPR, %struct.GPR* %1774, i32 0, i32 11
  %1776 = getelementptr inbounds %struct.Reg, %struct.Reg* %1775, i32 0, i32 0
  %1777 = bitcast %union.anon* %1776 to %struct.anon.2*
  %DIL.i147 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1777, i32 0, i32 0
  %1778 = load i8, i8* %DIL.i147
  %1779 = zext i8 %1778 to i64
  %1780 = load i64, i64* %PC.i146
  %1781 = add i64 %1780, 4
  store i64 %1781, i64* %PC.i146
  %1782 = and i64 1, %1779
  %1783 = trunc i64 %1782 to i8
  store i8 %1783, i8* %DIL.i147, align 1
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1784, align 1
  %1785 = trunc i64 %1782 to i32
  %1786 = and i32 %1785, 255
  %1787 = call i32 @llvm.ctpop.i32(i32 %1786)
  %1788 = trunc i32 %1787 to i8
  %1789 = and i8 %1788, 1
  %1790 = xor i8 %1789, 1
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1790, i8* %1791, align 1
  %1792 = icmp eq i8 %1783, 0
  %1793 = zext i1 %1792 to i8
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1793, i8* %1794, align 1
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1795, align 1
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1796, align 1
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1797, align 1
  store %struct.Memory* %loadMem_42580e, %struct.Memory** %MEMORY
  %loadMem_425812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 33
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %1800 to i64*
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1802 = getelementptr inbounds %struct.GPR, %struct.GPR* %1801, i32 0, i32 11
  %1803 = getelementptr inbounds %struct.Reg, %struct.Reg* %1802, i32 0, i32 0
  %1804 = bitcast %union.anon* %1803 to %struct.anon.2*
  %DIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1804, i32 0, i32 0
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1806 = getelementptr inbounds %struct.GPR, %struct.GPR* %1805, i32 0, i32 9
  %1807 = getelementptr inbounds %struct.Reg, %struct.Reg* %1806, i32 0, i32 0
  %RSI.i145 = bitcast %union.anon* %1807 to i64*
  %1808 = load i8, i8* %DIL.i
  %1809 = zext i8 %1808 to i64
  %1810 = load i64, i64* %PC.i144
  %1811 = add i64 %1810, 4
  store i64 %1811, i64* %PC.i144
  %1812 = and i64 %1809, 255
  store i64 %1812, i64* %RSI.i145, align 8
  store %struct.Memory* %loadMem_425812, %struct.Memory** %MEMORY
  %loadMem_425816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 33
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %1815 to i64*
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1817 = getelementptr inbounds %struct.GPR, %struct.GPR* %1816, i32 0, i32 9
  %1818 = getelementptr inbounds %struct.Reg, %struct.Reg* %1817, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %1818 to i32*
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1820 = getelementptr inbounds %struct.GPR, %struct.GPR* %1819, i32 0, i32 7
  %1821 = getelementptr inbounds %struct.Reg, %struct.Reg* %1820, i32 0, i32 0
  %RDX.i143 = bitcast %union.anon* %1821 to i64*
  %1822 = load i64, i64* %RDX.i143
  %1823 = load i32, i32* %ESI.i
  %1824 = zext i32 %1823 to i64
  %1825 = load i64, i64* %PC.i142
  %1826 = add i64 %1825, 2
  store i64 %1826, i64* %PC.i142
  %1827 = xor i64 %1824, %1822
  %1828 = trunc i64 %1827 to i32
  %1829 = and i64 %1827, 4294967295
  store i64 %1829, i64* %RDX.i143, align 8
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1830, align 1
  %1831 = and i32 %1828, 255
  %1832 = call i32 @llvm.ctpop.i32(i32 %1831)
  %1833 = trunc i32 %1832 to i8
  %1834 = and i8 %1833, 1
  %1835 = xor i8 %1834, 1
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1835, i8* %1836, align 1
  %1837 = icmp eq i32 %1828, 0
  %1838 = zext i1 %1837 to i8
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1838, i8* %1839, align 1
  %1840 = lshr i32 %1828, 31
  %1841 = trunc i32 %1840 to i8
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1841, i8* %1842, align 1
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1843, align 1
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1844, align 1
  store %struct.Memory* %loadMem_425816, %struct.Memory** %MEMORY
  %loadMem_425818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1846 = getelementptr inbounds %struct.GPR, %struct.GPR* %1845, i32 0, i32 33
  %1847 = getelementptr inbounds %struct.Reg, %struct.Reg* %1846, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %1847 to i64*
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1849 = getelementptr inbounds %struct.GPR, %struct.GPR* %1848, i32 0, i32 7
  %1850 = getelementptr inbounds %struct.Reg, %struct.Reg* %1849, i32 0, i32 0
  %EDX.i141 = bitcast %union.anon* %1850 to i32*
  %1851 = load i32, i32* %EDX.i141
  %1852 = zext i32 %1851 to i64
  %1853 = load i64, i64* %PC.i140
  %1854 = add i64 %1853, 3
  store i64 %1854, i64* %PC.i140
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1855, align 1
  %1856 = and i32 %1851, 255
  %1857 = call i32 @llvm.ctpop.i32(i32 %1856)
  %1858 = trunc i32 %1857 to i8
  %1859 = and i8 %1858, 1
  %1860 = xor i8 %1859, 1
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1860, i8* %1861, align 1
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1862, align 1
  %1863 = icmp eq i32 %1851, 0
  %1864 = zext i1 %1863 to i8
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1864, i8* %1865, align 1
  %1866 = lshr i32 %1851, 31
  %1867 = trunc i32 %1866 to i8
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1867, i8* %1868, align 1
  %1869 = lshr i32 %1851, 31
  %1870 = xor i32 %1866, %1869
  %1871 = add i32 %1870, %1869
  %1872 = icmp eq i32 %1871, 2
  %1873 = zext i1 %1872 to i8
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1873, i8* %1874, align 1
  store %struct.Memory* %loadMem_425818, %struct.Memory** %MEMORY
  %loadMem_42581b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1876 = getelementptr inbounds %struct.GPR, %struct.GPR* %1875, i32 0, i32 33
  %1877 = getelementptr inbounds %struct.Reg, %struct.Reg* %1876, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %1877 to i64*
  %1878 = load i64, i64* %PC.i139
  %1879 = add i64 %1878, 31
  %1880 = load i64, i64* %PC.i139
  %1881 = add i64 %1880, 6
  %1882 = load i64, i64* %PC.i139
  %1883 = add i64 %1882, 6
  store i64 %1883, i64* %PC.i139
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1885 = load i8, i8* %1884, align 1
  store i8 %1885, i8* %BRANCH_TAKEN, align 1
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1887 = icmp ne i8 %1885, 0
  %1888 = select i1 %1887, i64 %1879, i64 %1881
  store i64 %1888, i64* %1886, align 8
  store %struct.Memory* %loadMem_42581b, %struct.Memory** %MEMORY
  %loadBr_42581b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42581b = icmp eq i8 %loadBr_42581b, 1
  br i1 %cmpBr_42581b, label %block_.L_42583a, label %block_425821

block_425821:                                     ; preds = %routine_idivl__ecx.exit178
  %loadMem_425821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 33
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %1891 to i64*
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 1
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %1894 to i64*
  %1895 = load i64, i64* %PC.i137
  %1896 = add i64 %1895, 7
  store i64 %1896, i64* %PC.i137
  %1897 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %1898 = zext i32 %1897 to i64
  store i64 %1898, i64* %RAX.i138, align 8
  store %struct.Memory* %loadMem_425821, %struct.Memory** %MEMORY
  %loadMem_425828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 33
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %1901 to i64*
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1903 = getelementptr inbounds %struct.GPR, %struct.GPR* %1902, i32 0, i32 1
  %1904 = getelementptr inbounds %struct.Reg, %struct.Reg* %1903, i32 0, i32 0
  %RAX.i136 = bitcast %union.anon* %1904 to i64*
  %1905 = load i64, i64* %RAX.i136
  %1906 = load i64, i64* %PC.i135
  %1907 = add i64 %1906, 3
  store i64 %1907, i64* %PC.i135
  %1908 = trunc i64 %1905 to i32
  %1909 = sub i32 %1908, 1
  %1910 = zext i32 %1909 to i64
  store i64 %1910, i64* %RAX.i136, align 8
  %1911 = icmp ult i32 %1908, 1
  %1912 = zext i1 %1911 to i8
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1912, i8* %1913, align 1
  %1914 = and i32 %1909, 255
  %1915 = call i32 @llvm.ctpop.i32(i32 %1914)
  %1916 = trunc i32 %1915 to i8
  %1917 = and i8 %1916, 1
  %1918 = xor i8 %1917, 1
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1918, i8* %1919, align 1
  %1920 = xor i64 1, %1905
  %1921 = trunc i64 %1920 to i32
  %1922 = xor i32 %1921, %1909
  %1923 = lshr i32 %1922, 4
  %1924 = trunc i32 %1923 to i8
  %1925 = and i8 %1924, 1
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1925, i8* %1926, align 1
  %1927 = icmp eq i32 %1909, 0
  %1928 = zext i1 %1927 to i8
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1928, i8* %1929, align 1
  %1930 = lshr i32 %1909, 31
  %1931 = trunc i32 %1930 to i8
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1931, i8* %1932, align 1
  %1933 = lshr i32 %1908, 31
  %1934 = xor i32 %1930, %1933
  %1935 = add i32 %1934, %1933
  %1936 = icmp eq i32 %1935, 2
  %1937 = zext i1 %1936 to i8
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1937, i8* %1938, align 1
  store %struct.Memory* %loadMem_425828, %struct.Memory** %MEMORY
  %loadMem_42582b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1940 = getelementptr inbounds %struct.GPR, %struct.GPR* %1939, i32 0, i32 33
  %1941 = getelementptr inbounds %struct.Reg, %struct.Reg* %1940, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %1941 to i64*
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1943 = getelementptr inbounds %struct.GPR, %struct.GPR* %1942, i32 0, i32 1
  %1944 = getelementptr inbounds %struct.Reg, %struct.Reg* %1943, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %1944 to i64*
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 15
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %1947 to i64*
  %1948 = load i64, i64* %RAX.i133
  %1949 = load i64, i64* %RBP.i134
  %1950 = sub i64 %1949, 16
  %1951 = load i64, i64* %PC.i132
  %1952 = add i64 %1951, 3
  store i64 %1952, i64* %PC.i132
  %1953 = trunc i64 %1948 to i32
  %1954 = inttoptr i64 %1950 to i32*
  %1955 = load i32, i32* %1954
  %1956 = sub i32 %1953, %1955
  %1957 = zext i32 %1956 to i64
  store i64 %1957, i64* %RAX.i133, align 8
  %1958 = icmp ult i32 %1953, %1955
  %1959 = zext i1 %1958 to i8
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1959, i8* %1960, align 1
  %1961 = and i32 %1956, 255
  %1962 = call i32 @llvm.ctpop.i32(i32 %1961)
  %1963 = trunc i32 %1962 to i8
  %1964 = and i8 %1963, 1
  %1965 = xor i8 %1964, 1
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1965, i8* %1966, align 1
  %1967 = xor i32 %1955, %1953
  %1968 = xor i32 %1967, %1956
  %1969 = lshr i32 %1968, 4
  %1970 = trunc i32 %1969 to i8
  %1971 = and i8 %1970, 1
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1971, i8* %1972, align 1
  %1973 = icmp eq i32 %1956, 0
  %1974 = zext i1 %1973 to i8
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1974, i8* %1975, align 1
  %1976 = lshr i32 %1956, 31
  %1977 = trunc i32 %1976 to i8
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1977, i8* %1978, align 1
  %1979 = lshr i32 %1953, 31
  %1980 = lshr i32 %1955, 31
  %1981 = xor i32 %1980, %1979
  %1982 = xor i32 %1976, %1979
  %1983 = add i32 %1982, %1981
  %1984 = icmp eq i32 %1983, 2
  %1985 = zext i1 %1984 to i8
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1985, i8* %1986, align 1
  store %struct.Memory* %loadMem_42582b, %struct.Memory** %MEMORY
  %loadMem_42582e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1988 = getelementptr inbounds %struct.GPR, %struct.GPR* %1987, i32 0, i32 33
  %1989 = getelementptr inbounds %struct.Reg, %struct.Reg* %1988, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %1989 to i64*
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 1
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %EAX.i130 = bitcast %union.anon* %1992 to i32*
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 1
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %1995 to i64*
  %1996 = load i32, i32* %EAX.i130
  %1997 = zext i32 %1996 to i64
  %1998 = load i64, i64* %PC.i129
  %1999 = add i64 %1998, 3
  store i64 %1999, i64* %PC.i129
  %2000 = shl i64 %1997, 32
  %2001 = ashr exact i64 %2000, 32
  %2002 = mul i64 20, %2001
  %2003 = trunc i64 %2002 to i32
  %2004 = and i64 %2002, 4294967295
  store i64 %2004, i64* %RAX.i131, align 8
  %2005 = shl i64 %2002, 32
  %2006 = ashr exact i64 %2005, 32
  %2007 = icmp ne i64 %2006, %2002
  %2008 = zext i1 %2007 to i8
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2008, i8* %2009, align 1
  %2010 = and i32 %2003, 255
  %2011 = call i32 @llvm.ctpop.i32(i32 %2010)
  %2012 = trunc i32 %2011 to i8
  %2013 = and i8 %2012, 1
  %2014 = xor i8 %2013, 1
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2014, i8* %2015, align 1
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2016, align 1
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2017, align 1
  %2018 = lshr i32 %2003, 31
  %2019 = trunc i32 %2018 to i8
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2019, i8* %2020, align 1
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2008, i8* %2021, align 1
  store %struct.Memory* %loadMem_42582e, %struct.Memory** %MEMORY
  %loadMem_425831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2023 = getelementptr inbounds %struct.GPR, %struct.GPR* %2022, i32 0, i32 33
  %2024 = getelementptr inbounds %struct.Reg, %struct.Reg* %2023, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %2024 to i64*
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2026 = getelementptr inbounds %struct.GPR, %struct.GPR* %2025, i32 0, i32 1
  %2027 = getelementptr inbounds %struct.Reg, %struct.Reg* %2026, i32 0, i32 0
  %RAX.i128 = bitcast %union.anon* %2027 to i64*
  %2028 = load i64, i64* %RAX.i128
  %2029 = load i64, i64* %PC.i127
  %2030 = add i64 %2029, 3
  store i64 %2030, i64* %PC.i127
  %2031 = trunc i64 %2028 to i32
  %2032 = add i32 21, %2031
  %2033 = zext i32 %2032 to i64
  store i64 %2033, i64* %RAX.i128, align 8
  %2034 = icmp ult i32 %2032, %2031
  %2035 = icmp ult i32 %2032, 21
  %2036 = or i1 %2034, %2035
  %2037 = zext i1 %2036 to i8
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2037, i8* %2038, align 1
  %2039 = and i32 %2032, 255
  %2040 = call i32 @llvm.ctpop.i32(i32 %2039)
  %2041 = trunc i32 %2040 to i8
  %2042 = and i8 %2041, 1
  %2043 = xor i8 %2042, 1
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2043, i8* %2044, align 1
  %2045 = xor i64 21, %2028
  %2046 = trunc i64 %2045 to i32
  %2047 = xor i32 %2046, %2032
  %2048 = lshr i32 %2047, 4
  %2049 = trunc i32 %2048 to i8
  %2050 = and i8 %2049, 1
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2050, i8* %2051, align 1
  %2052 = icmp eq i32 %2032, 0
  %2053 = zext i1 %2052 to i8
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2053, i8* %2054, align 1
  %2055 = lshr i32 %2032, 31
  %2056 = trunc i32 %2055 to i8
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2056, i8* %2057, align 1
  %2058 = lshr i32 %2031, 31
  %2059 = xor i32 %2055, %2058
  %2060 = add i32 %2059, %2055
  %2061 = icmp eq i32 %2060, 2
  %2062 = zext i1 %2061 to i8
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2062, i8* %2063, align 1
  store %struct.Memory* %loadMem_425831, %struct.Memory** %MEMORY
  %loadMem_425834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 33
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %2066 to i64*
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 1
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %2069 to i64*
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 15
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %2072 to i64*
  %2073 = load i64, i64* %RAX.i125
  %2074 = load i64, i64* %RBP.i126
  %2075 = sub i64 %2074, 20
  %2076 = load i64, i64* %PC.i124
  %2077 = add i64 %2076, 3
  store i64 %2077, i64* %PC.i124
  %2078 = trunc i64 %2073 to i32
  %2079 = inttoptr i64 %2075 to i32*
  %2080 = load i32, i32* %2079
  %2081 = add i32 %2080, %2078
  %2082 = zext i32 %2081 to i64
  store i64 %2082, i64* %RAX.i125, align 8
  %2083 = icmp ult i32 %2081, %2078
  %2084 = icmp ult i32 %2081, %2080
  %2085 = or i1 %2083, %2084
  %2086 = zext i1 %2085 to i8
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2086, i8* %2087, align 1
  %2088 = and i32 %2081, 255
  %2089 = call i32 @llvm.ctpop.i32(i32 %2088)
  %2090 = trunc i32 %2089 to i8
  %2091 = and i8 %2090, 1
  %2092 = xor i8 %2091, 1
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2092, i8* %2093, align 1
  %2094 = xor i32 %2080, %2078
  %2095 = xor i32 %2094, %2081
  %2096 = lshr i32 %2095, 4
  %2097 = trunc i32 %2096 to i8
  %2098 = and i8 %2097, 1
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2098, i8* %2099, align 1
  %2100 = icmp eq i32 %2081, 0
  %2101 = zext i1 %2100 to i8
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2101, i8* %2102, align 1
  %2103 = lshr i32 %2081, 31
  %2104 = trunc i32 %2103 to i8
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2104, i8* %2105, align 1
  %2106 = lshr i32 %2078, 31
  %2107 = lshr i32 %2080, 31
  %2108 = xor i32 %2103, %2106
  %2109 = xor i32 %2103, %2107
  %2110 = add i32 %2108, %2109
  %2111 = icmp eq i32 %2110, 2
  %2112 = zext i1 %2111 to i8
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2112, i8* %2113, align 1
  store %struct.Memory* %loadMem_425834, %struct.Memory** %MEMORY
  %loadMem_425837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2115 = getelementptr inbounds %struct.GPR, %struct.GPR* %2114, i32 0, i32 33
  %2116 = getelementptr inbounds %struct.Reg, %struct.Reg* %2115, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %2116 to i64*
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 1
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %EAX.i122 = bitcast %union.anon* %2119 to i32*
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2121 = getelementptr inbounds %struct.GPR, %struct.GPR* %2120, i32 0, i32 15
  %2122 = getelementptr inbounds %struct.Reg, %struct.Reg* %2121, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %2122 to i64*
  %2123 = load i64, i64* %RBP.i123
  %2124 = sub i64 %2123, 4
  %2125 = load i32, i32* %EAX.i122
  %2126 = zext i32 %2125 to i64
  %2127 = load i64, i64* %PC.i121
  %2128 = add i64 %2127, 3
  store i64 %2128, i64* %PC.i121
  %2129 = inttoptr i64 %2124 to i32*
  store i32 %2125, i32* %2129
  store %struct.Memory* %loadMem_425837, %struct.Memory** %MEMORY
  br label %block_.L_42583a

block_.L_42583a:                                  ; preds = %block_425821, %routine_idivl__ecx.exit178
  %loadMem_42583a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 33
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %2132 to i64*
  %2133 = load i64, i64* %PC.i120
  %2134 = add i64 %2133, 5
  %2135 = load i64, i64* %PC.i120
  %2136 = add i64 %2135, 5
  store i64 %2136, i64* %PC.i120
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2134, i64* %2137, align 8
  store %struct.Memory* %loadMem_42583a, %struct.Memory** %MEMORY
  br label %block_.L_42583f

block_.L_42583f:                                  ; preds = %block_.L_42583a, %block_.L_4257b5
  %loadMem_42583f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2139 = getelementptr inbounds %struct.GPR, %struct.GPR* %2138, i32 0, i32 33
  %2140 = getelementptr inbounds %struct.Reg, %struct.Reg* %2139, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %2140 to i64*
  %2141 = load i64, i64* %PC.i119
  %2142 = add i64 %2141, 8
  store i64 %2142, i64* %PC.i119
  %2143 = load i32, i32* bitcast (%G_0xab0348_type* @G_0xab0348 to i32*)
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2144, align 1
  %2145 = and i32 %2143, 255
  %2146 = call i32 @llvm.ctpop.i32(i32 %2145)
  %2147 = trunc i32 %2146 to i8
  %2148 = and i8 %2147, 1
  %2149 = xor i8 %2148, 1
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2149, i8* %2150, align 1
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2151, align 1
  %2152 = icmp eq i32 %2143, 0
  %2153 = zext i1 %2152 to i8
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2153, i8* %2154, align 1
  %2155 = lshr i32 %2143, 31
  %2156 = trunc i32 %2155 to i8
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2156, i8* %2157, align 1
  %2158 = lshr i32 %2143, 31
  %2159 = xor i32 %2155, %2158
  %2160 = add i32 %2159, %2158
  %2161 = icmp eq i32 %2160, 2
  %2162 = zext i1 %2161 to i8
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2162, i8* %2163, align 1
  store %struct.Memory* %loadMem_42583f, %struct.Memory** %MEMORY
  %loadMem_425847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 33
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %2166 to i64*
  %2167 = load i64, i64* %PC.i118
  %2168 = add i64 %2167, 140
  %2169 = load i64, i64* %PC.i118
  %2170 = add i64 %2169, 6
  %2171 = load i64, i64* %PC.i118
  %2172 = add i64 %2171, 6
  store i64 %2172, i64* %PC.i118
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2174 = load i8, i8* %2173, align 1
  store i8 %2174, i8* %BRANCH_TAKEN, align 1
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2176 = icmp ne i8 %2174, 0
  %2177 = select i1 %2176, i64 %2168, i64 %2170
  store i64 %2177, i64* %2175, align 8
  store %struct.Memory* %loadMem_425847, %struct.Memory** %MEMORY
  %loadBr_425847 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425847 = icmp eq i8 %loadBr_425847, 1
  br i1 %cmpBr_425847, label %block_.L_4258d3, label %block_42584d

block_42584d:                                     ; preds = %block_.L_42583f
  %loadMem_42584d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 33
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2180 to i64*
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 1
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %RAX.i117 = bitcast %union.anon* %2183 to i64*
  %2184 = load i64, i64* %PC.i116
  %2185 = add i64 %2184, 5
  store i64 %2185, i64* %PC.i116
  store i64 20, i64* %RAX.i117, align 8
  store %struct.Memory* %loadMem_42584d, %struct.Memory** %MEMORY
  %loadMem_425852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2187 = getelementptr inbounds %struct.GPR, %struct.GPR* %2186, i32 0, i32 33
  %2188 = getelementptr inbounds %struct.Reg, %struct.Reg* %2187, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %2188 to i64*
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 5
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %RCX.i114 = bitcast %union.anon* %2191 to i64*
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 15
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %2194 to i64*
  %2195 = load i64, i64* %RBP.i115
  %2196 = sub i64 %2195, 4
  %2197 = load i64, i64* %PC.i113
  %2198 = add i64 %2197, 3
  store i64 %2198, i64* %PC.i113
  %2199 = inttoptr i64 %2196 to i32*
  %2200 = load i32, i32* %2199
  %2201 = zext i32 %2200 to i64
  store i64 %2201, i64* %RCX.i114, align 8
  store %struct.Memory* %loadMem_425852, %struct.Memory** %MEMORY
  %loadMem_425855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2203 = getelementptr inbounds %struct.GPR, %struct.GPR* %2202, i32 0, i32 33
  %2204 = getelementptr inbounds %struct.Reg, %struct.Reg* %2203, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %2204 to i64*
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2206 = getelementptr inbounds %struct.GPR, %struct.GPR* %2205, i32 0, i32 1
  %2207 = getelementptr inbounds %struct.Reg, %struct.Reg* %2206, i32 0, i32 0
  %EAX.i111 = bitcast %union.anon* %2207 to i32*
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2209 = getelementptr inbounds %struct.GPR, %struct.GPR* %2208, i32 0, i32 15
  %2210 = getelementptr inbounds %struct.Reg, %struct.Reg* %2209, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %2210 to i64*
  %2211 = load i64, i64* %RBP.i112
  %2212 = sub i64 %2211, 32
  %2213 = load i32, i32* %EAX.i111
  %2214 = zext i32 %2213 to i64
  %2215 = load i64, i64* %PC.i110
  %2216 = add i64 %2215, 3
  store i64 %2216, i64* %PC.i110
  %2217 = inttoptr i64 %2212 to i32*
  store i32 %2213, i32* %2217
  store %struct.Memory* %loadMem_425855, %struct.Memory** %MEMORY
  %loadMem_425858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 33
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %2220 to i64*
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 5
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %ECX.i108 = bitcast %union.anon* %2223 to i32*
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2225 = getelementptr inbounds %struct.GPR, %struct.GPR* %2224, i32 0, i32 1
  %2226 = getelementptr inbounds %struct.Reg, %struct.Reg* %2225, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %2226 to i64*
  %2227 = load i32, i32* %ECX.i108
  %2228 = zext i32 %2227 to i64
  %2229 = load i64, i64* %PC.i107
  %2230 = add i64 %2229, 2
  store i64 %2230, i64* %PC.i107
  %2231 = and i64 %2228, 4294967295
  store i64 %2231, i64* %RAX.i109, align 8
  store %struct.Memory* %loadMem_425858, %struct.Memory** %MEMORY
  %loadMem_42585a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2233 = getelementptr inbounds %struct.GPR, %struct.GPR* %2232, i32 0, i32 33
  %2234 = getelementptr inbounds %struct.Reg, %struct.Reg* %2233, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %2234 to i64*
  %2235 = load i64, i64* %PC.i106
  %2236 = add i64 %2235, 1
  store i64 %2236, i64* %PC.i106
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2239 = bitcast %union.anon* %2238 to i32*
  %2240 = load i32, i32* %2239, align 8
  %2241 = sext i32 %2240 to i64
  %2242 = lshr i64 %2241, 32
  store i64 %2242, i64* %2237, align 8
  store %struct.Memory* %loadMem_42585a, %struct.Memory** %MEMORY
  %loadMem_42585b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 33
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %2245 to i64*
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2247 = getelementptr inbounds %struct.GPR, %struct.GPR* %2246, i32 0, i32 5
  %2248 = getelementptr inbounds %struct.Reg, %struct.Reg* %2247, i32 0, i32 0
  %RCX.i104 = bitcast %union.anon* %2248 to i64*
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 15
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %2251 to i64*
  %2252 = load i64, i64* %RBP.i105
  %2253 = sub i64 %2252, 32
  %2254 = load i64, i64* %PC.i103
  %2255 = add i64 %2254, 3
  store i64 %2255, i64* %PC.i103
  %2256 = inttoptr i64 %2253 to i32*
  %2257 = load i32, i32* %2256
  %2258 = zext i32 %2257 to i64
  store i64 %2258, i64* %RCX.i104, align 8
  store %struct.Memory* %loadMem_42585b, %struct.Memory** %MEMORY
  %loadMem_42585e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 33
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %2261 to i64*
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2263 = getelementptr inbounds %struct.GPR, %struct.GPR* %2262, i32 0, i32 5
  %2264 = getelementptr inbounds %struct.Reg, %struct.Reg* %2263, i32 0, i32 0
  %ECX.i99 = bitcast %union.anon* %2264 to i32*
  %2265 = load i32, i32* %ECX.i99
  %2266 = zext i32 %2265 to i64
  %2267 = load i64, i64* %PC.i98
  %2268 = add i64 %2267, 2
  store i64 %2268, i64* %PC.i98
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2270 = bitcast %union.anon* %2269 to i32*
  %2271 = load i32, i32* %2270, align 8
  %2272 = zext i32 %2271 to i64
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2274 = bitcast %union.anon* %2273 to i32*
  %2275 = load i32, i32* %2274, align 8
  %2276 = zext i32 %2275 to i64
  %2277 = shl i64 %2266, 32
  %2278 = ashr exact i64 %2277, 32
  %2279 = shl i64 %2276, 32
  %2280 = or i64 %2279, %2272
  %2281 = sdiv i64 %2280, %2278
  %2282 = shl i64 %2281, 32
  %2283 = ashr exact i64 %2282, 32
  %2284 = icmp eq i64 %2281, %2283
  br i1 %2284, label %2289, label %2285

; <label>:2285:                                   ; preds = %block_42584d
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2287 = load i64, i64* %2286, align 8
  %2288 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2287, %struct.Memory* %loadMem_42585e)
  br label %routine_idivl__ecx.exit100

; <label>:2289:                                   ; preds = %block_42584d
  %2290 = srem i64 %2280, %2278
  %2291 = getelementptr inbounds %union.anon, %union.anon* %2269, i64 0, i32 0
  %2292 = and i64 %2281, 4294967295
  store i64 %2292, i64* %2291, align 8
  %2293 = getelementptr inbounds %union.anon, %union.anon* %2273, i64 0, i32 0
  %2294 = and i64 %2290, 4294967295
  store i64 %2294, i64* %2293, align 8
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2295, align 1
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2296, align 1
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2297, align 1
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2298, align 1
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2299, align 1
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2300, align 1
  br label %routine_idivl__ecx.exit100

routine_idivl__ecx.exit100:                       ; preds = %2285, %2289
  %2301 = phi %struct.Memory* [ %2288, %2285 ], [ %loadMem_42585e, %2289 ]
  store %struct.Memory* %2301, %struct.Memory** %MEMORY
  %loadMem_425860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 33
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %2304 to i64*
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 1
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %2307 to i64*
  %2308 = load i64, i64* %RAX.i97
  %2309 = load i64, i64* %PC.i96
  %2310 = add i64 %2309, 3
  store i64 %2310, i64* %PC.i96
  %2311 = trunc i64 %2308 to i32
  %2312 = sub i32 %2311, 1
  %2313 = zext i32 %2312 to i64
  store i64 %2313, i64* %RAX.i97, align 8
  %2314 = icmp ult i32 %2311, 1
  %2315 = zext i1 %2314 to i8
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2315, i8* %2316, align 1
  %2317 = and i32 %2312, 255
  %2318 = call i32 @llvm.ctpop.i32(i32 %2317)
  %2319 = trunc i32 %2318 to i8
  %2320 = and i8 %2319, 1
  %2321 = xor i8 %2320, 1
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2321, i8* %2322, align 1
  %2323 = xor i64 1, %2308
  %2324 = trunc i64 %2323 to i32
  %2325 = xor i32 %2324, %2312
  %2326 = lshr i32 %2325, 4
  %2327 = trunc i32 %2326 to i8
  %2328 = and i8 %2327, 1
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2328, i8* %2329, align 1
  %2330 = icmp eq i32 %2312, 0
  %2331 = zext i1 %2330 to i8
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2331, i8* %2332, align 1
  %2333 = lshr i32 %2312, 31
  %2334 = trunc i32 %2333 to i8
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2334, i8* %2335, align 1
  %2336 = lshr i32 %2311, 31
  %2337 = xor i32 %2333, %2336
  %2338 = add i32 %2337, %2336
  %2339 = icmp eq i32 %2338, 2
  %2340 = zext i1 %2339 to i8
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2340, i8* %2341, align 1
  store %struct.Memory* %loadMem_425860, %struct.Memory** %MEMORY
  %loadMem_425863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 33
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %2344 to i64*
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 1
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %EAX.i94 = bitcast %union.anon* %2347 to i32*
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 15
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %2350 to i64*
  %2351 = load i64, i64* %RBP.i95
  %2352 = sub i64 %2351, 16
  %2353 = load i32, i32* %EAX.i94
  %2354 = zext i32 %2353 to i64
  %2355 = load i64, i64* %PC.i93
  %2356 = add i64 %2355, 3
  store i64 %2356, i64* %PC.i93
  %2357 = inttoptr i64 %2352 to i32*
  store i32 %2353, i32* %2357
  store %struct.Memory* %loadMem_425863, %struct.Memory** %MEMORY
  %loadMem_425866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2359 = getelementptr inbounds %struct.GPR, %struct.GPR* %2358, i32 0, i32 33
  %2360 = getelementptr inbounds %struct.Reg, %struct.Reg* %2359, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %2360 to i64*
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2362 = getelementptr inbounds %struct.GPR, %struct.GPR* %2361, i32 0, i32 1
  %2363 = getelementptr inbounds %struct.Reg, %struct.Reg* %2362, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %2363 to i64*
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2365 = getelementptr inbounds %struct.GPR, %struct.GPR* %2364, i32 0, i32 15
  %2366 = getelementptr inbounds %struct.Reg, %struct.Reg* %2365, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %2366 to i64*
  %2367 = load i64, i64* %RBP.i92
  %2368 = sub i64 %2367, 4
  %2369 = load i64, i64* %PC.i90
  %2370 = add i64 %2369, 3
  store i64 %2370, i64* %PC.i90
  %2371 = inttoptr i64 %2368 to i32*
  %2372 = load i32, i32* %2371
  %2373 = zext i32 %2372 to i64
  store i64 %2373, i64* %RAX.i91, align 8
  store %struct.Memory* %loadMem_425866, %struct.Memory** %MEMORY
  %loadMem_425869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 33
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %2376 to i64*
  %2377 = load i64, i64* %PC.i89
  %2378 = add i64 %2377, 1
  store i64 %2378, i64* %PC.i89
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2381 = bitcast %union.anon* %2380 to i32*
  %2382 = load i32, i32* %2381, align 8
  %2383 = sext i32 %2382 to i64
  %2384 = lshr i64 %2383, 32
  store i64 %2384, i64* %2379, align 8
  store %struct.Memory* %loadMem_425869, %struct.Memory** %MEMORY
  %loadMem_42586a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2386 = getelementptr inbounds %struct.GPR, %struct.GPR* %2385, i32 0, i32 33
  %2387 = getelementptr inbounds %struct.Reg, %struct.Reg* %2386, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %2387 to i64*
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2389 = getelementptr inbounds %struct.GPR, %struct.GPR* %2388, i32 0, i32 5
  %2390 = getelementptr inbounds %struct.Reg, %struct.Reg* %2389, i32 0, i32 0
  %ECX.i85 = bitcast %union.anon* %2390 to i32*
  %2391 = load i32, i32* %ECX.i85
  %2392 = zext i32 %2391 to i64
  %2393 = load i64, i64* %PC.i84
  %2394 = add i64 %2393, 2
  store i64 %2394, i64* %PC.i84
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2396 = bitcast %union.anon* %2395 to i32*
  %2397 = load i32, i32* %2396, align 8
  %2398 = zext i32 %2397 to i64
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2400 = bitcast %union.anon* %2399 to i32*
  %2401 = load i32, i32* %2400, align 8
  %2402 = zext i32 %2401 to i64
  %2403 = shl i64 %2392, 32
  %2404 = ashr exact i64 %2403, 32
  %2405 = shl i64 %2402, 32
  %2406 = or i64 %2405, %2398
  %2407 = sdiv i64 %2406, %2404
  %2408 = shl i64 %2407, 32
  %2409 = ashr exact i64 %2408, 32
  %2410 = icmp eq i64 %2407, %2409
  br i1 %2410, label %2415, label %2411

; <label>:2411:                                   ; preds = %routine_idivl__ecx.exit100
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2413 = load i64, i64* %2412, align 8
  %2414 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2413, %struct.Memory* %loadMem_42586a)
  br label %routine_idivl__ecx.exit

; <label>:2415:                                   ; preds = %routine_idivl__ecx.exit100
  %2416 = srem i64 %2406, %2404
  %2417 = getelementptr inbounds %union.anon, %union.anon* %2395, i64 0, i32 0
  %2418 = and i64 %2407, 4294967295
  store i64 %2418, i64* %2417, align 8
  %2419 = getelementptr inbounds %union.anon, %union.anon* %2399, i64 0, i32 0
  %2420 = and i64 %2416, 4294967295
  store i64 %2420, i64* %2419, align 8
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2421, align 1
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2422, align 1
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2423, align 1
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2424, align 1
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2425, align 1
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2426, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %2411, %2415
  %2427 = phi %struct.Memory* [ %2414, %2411 ], [ %loadMem_42586a, %2415 ]
  store %struct.Memory* %2427, %struct.Memory** %MEMORY
  %loadMem_42586c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2429 = getelementptr inbounds %struct.GPR, %struct.GPR* %2428, i32 0, i32 33
  %2430 = getelementptr inbounds %struct.Reg, %struct.Reg* %2429, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %2430 to i64*
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 7
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %RDX.i83 = bitcast %union.anon* %2433 to i64*
  %2434 = load i64, i64* %RDX.i83
  %2435 = load i64, i64* %PC.i82
  %2436 = add i64 %2435, 3
  store i64 %2436, i64* %PC.i82
  %2437 = trunc i64 %2434 to i32
  %2438 = sub i32 %2437, 1
  %2439 = zext i32 %2438 to i64
  store i64 %2439, i64* %RDX.i83, align 8
  %2440 = icmp ult i32 %2437, 1
  %2441 = zext i1 %2440 to i8
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2441, i8* %2442, align 1
  %2443 = and i32 %2438, 255
  %2444 = call i32 @llvm.ctpop.i32(i32 %2443)
  %2445 = trunc i32 %2444 to i8
  %2446 = and i8 %2445, 1
  %2447 = xor i8 %2446, 1
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2447, i8* %2448, align 1
  %2449 = xor i64 1, %2434
  %2450 = trunc i64 %2449 to i32
  %2451 = xor i32 %2450, %2438
  %2452 = lshr i32 %2451, 4
  %2453 = trunc i32 %2452 to i8
  %2454 = and i8 %2453, 1
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2454, i8* %2455, align 1
  %2456 = icmp eq i32 %2438, 0
  %2457 = zext i1 %2456 to i8
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2457, i8* %2458, align 1
  %2459 = lshr i32 %2438, 31
  %2460 = trunc i32 %2459 to i8
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2460, i8* %2461, align 1
  %2462 = lshr i32 %2437, 31
  %2463 = xor i32 %2459, %2462
  %2464 = add i32 %2463, %2462
  %2465 = icmp eq i32 %2464, 2
  %2466 = zext i1 %2465 to i8
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2466, i8* %2467, align 1
  store %struct.Memory* %loadMem_42586c, %struct.Memory** %MEMORY
  %loadMem_42586f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2469 = getelementptr inbounds %struct.GPR, %struct.GPR* %2468, i32 0, i32 33
  %2470 = getelementptr inbounds %struct.Reg, %struct.Reg* %2469, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %2470 to i64*
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 7
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %EDX.i80 = bitcast %union.anon* %2473 to i32*
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 15
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %2476 to i64*
  %2477 = load i64, i64* %RBP.i81
  %2478 = sub i64 %2477, 20
  %2479 = load i32, i32* %EDX.i80
  %2480 = zext i32 %2479 to i64
  %2481 = load i64, i64* %PC.i79
  %2482 = add i64 %2481, 3
  store i64 %2482, i64* %PC.i79
  %2483 = inttoptr i64 %2478 to i32*
  store i32 %2479, i32* %2483
  store %struct.Memory* %loadMem_42586f, %struct.Memory** %MEMORY
  %loadMem_425872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 33
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %2486 to i64*
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 7
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %RDX.i78 = bitcast %union.anon* %2489 to i64*
  %2490 = load i64, i64* %PC.i77
  %2491 = add i64 %2490, 7
  store i64 %2491, i64* %PC.i77
  %2492 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %2493 = zext i32 %2492 to i64
  store i64 %2493, i64* %RDX.i78, align 8
  store %struct.Memory* %loadMem_425872, %struct.Memory** %MEMORY
  %loadMem_425879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2495 = getelementptr inbounds %struct.GPR, %struct.GPR* %2494, i32 0, i32 33
  %2496 = getelementptr inbounds %struct.Reg, %struct.Reg* %2495, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %2496 to i64*
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2498 = getelementptr inbounds %struct.GPR, %struct.GPR* %2497, i32 0, i32 7
  %2499 = getelementptr inbounds %struct.Reg, %struct.Reg* %2498, i32 0, i32 0
  %RDX.i76 = bitcast %union.anon* %2499 to i64*
  %2500 = load i64, i64* %RDX.i76
  %2501 = load i64, i64* %PC.i75
  %2502 = add i64 %2501, 3
  store i64 %2502, i64* %PC.i75
  %2503 = trunc i64 %2500 to i32
  %2504 = sub i32 %2503, 1
  %2505 = zext i32 %2504 to i64
  store i64 %2505, i64* %RDX.i76, align 8
  %2506 = icmp ult i32 %2503, 1
  %2507 = zext i1 %2506 to i8
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2507, i8* %2508, align 1
  %2509 = and i32 %2504, 255
  %2510 = call i32 @llvm.ctpop.i32(i32 %2509)
  %2511 = trunc i32 %2510 to i8
  %2512 = and i8 %2511, 1
  %2513 = xor i8 %2512, 1
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2513, i8* %2514, align 1
  %2515 = xor i64 1, %2500
  %2516 = trunc i64 %2515 to i32
  %2517 = xor i32 %2516, %2504
  %2518 = lshr i32 %2517, 4
  %2519 = trunc i32 %2518 to i8
  %2520 = and i8 %2519, 1
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2520, i8* %2521, align 1
  %2522 = icmp eq i32 %2504, 0
  %2523 = zext i1 %2522 to i8
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2523, i8* %2524, align 1
  %2525 = lshr i32 %2504, 31
  %2526 = trunc i32 %2525 to i8
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2526, i8* %2527, align 1
  %2528 = lshr i32 %2503, 31
  %2529 = xor i32 %2525, %2528
  %2530 = add i32 %2529, %2528
  %2531 = icmp eq i32 %2530, 2
  %2532 = zext i1 %2531 to i8
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2532, i8* %2533, align 1
  store %struct.Memory* %loadMem_425879, %struct.Memory** %MEMORY
  %loadMem_42587c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2535 = getelementptr inbounds %struct.GPR, %struct.GPR* %2534, i32 0, i32 33
  %2536 = getelementptr inbounds %struct.Reg, %struct.Reg* %2535, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %2536 to i64*
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2538 = getelementptr inbounds %struct.GPR, %struct.GPR* %2537, i32 0, i32 7
  %2539 = getelementptr inbounds %struct.Reg, %struct.Reg* %2538, i32 0, i32 0
  %RDX.i73 = bitcast %union.anon* %2539 to i64*
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 15
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %2542 to i64*
  %2543 = load i64, i64* %RDX.i73
  %2544 = load i64, i64* %RBP.i74
  %2545 = sub i64 %2544, 20
  %2546 = load i64, i64* %PC.i72
  %2547 = add i64 %2546, 3
  store i64 %2547, i64* %PC.i72
  %2548 = trunc i64 %2543 to i32
  %2549 = inttoptr i64 %2545 to i32*
  %2550 = load i32, i32* %2549
  %2551 = sub i32 %2548, %2550
  %2552 = zext i32 %2551 to i64
  store i64 %2552, i64* %RDX.i73, align 8
  %2553 = icmp ult i32 %2548, %2550
  %2554 = zext i1 %2553 to i8
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2554, i8* %2555, align 1
  %2556 = and i32 %2551, 255
  %2557 = call i32 @llvm.ctpop.i32(i32 %2556)
  %2558 = trunc i32 %2557 to i8
  %2559 = and i8 %2558, 1
  %2560 = xor i8 %2559, 1
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2560, i8* %2561, align 1
  %2562 = xor i32 %2550, %2548
  %2563 = xor i32 %2562, %2551
  %2564 = lshr i32 %2563, 4
  %2565 = trunc i32 %2564 to i8
  %2566 = and i8 %2565, 1
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2566, i8* %2567, align 1
  %2568 = icmp eq i32 %2551, 0
  %2569 = zext i1 %2568 to i8
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2569, i8* %2570, align 1
  %2571 = lshr i32 %2551, 31
  %2572 = trunc i32 %2571 to i8
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2572, i8* %2573, align 1
  %2574 = lshr i32 %2548, 31
  %2575 = lshr i32 %2550, 31
  %2576 = xor i32 %2575, %2574
  %2577 = xor i32 %2571, %2574
  %2578 = add i32 %2577, %2576
  %2579 = icmp eq i32 %2578, 2
  %2580 = zext i1 %2579 to i8
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2580, i8* %2581, align 1
  store %struct.Memory* %loadMem_42587c, %struct.Memory** %MEMORY
  %loadMem_42587f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2583 = getelementptr inbounds %struct.GPR, %struct.GPR* %2582, i32 0, i32 33
  %2584 = getelementptr inbounds %struct.Reg, %struct.Reg* %2583, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %2584 to i64*
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 7
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %EDX.i70 = bitcast %union.anon* %2587 to i32*
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 15
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %2590 to i64*
  %2591 = load i32, i32* %EDX.i70
  %2592 = zext i32 %2591 to i64
  %2593 = load i64, i64* %RBP.i71
  %2594 = sub i64 %2593, 16
  %2595 = load i64, i64* %PC.i69
  %2596 = add i64 %2595, 3
  store i64 %2596, i64* %PC.i69
  %2597 = inttoptr i64 %2594 to i32*
  %2598 = load i32, i32* %2597
  %2599 = sub i32 %2591, %2598
  %2600 = icmp ult i32 %2591, %2598
  %2601 = zext i1 %2600 to i8
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2601, i8* %2602, align 1
  %2603 = and i32 %2599, 255
  %2604 = call i32 @llvm.ctpop.i32(i32 %2603)
  %2605 = trunc i32 %2604 to i8
  %2606 = and i8 %2605, 1
  %2607 = xor i8 %2606, 1
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2607, i8* %2608, align 1
  %2609 = xor i32 %2598, %2591
  %2610 = xor i32 %2609, %2599
  %2611 = lshr i32 %2610, 4
  %2612 = trunc i32 %2611 to i8
  %2613 = and i8 %2612, 1
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2613, i8* %2614, align 1
  %2615 = icmp eq i32 %2599, 0
  %2616 = zext i1 %2615 to i8
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2616, i8* %2617, align 1
  %2618 = lshr i32 %2599, 31
  %2619 = trunc i32 %2618 to i8
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2619, i8* %2620, align 1
  %2621 = lshr i32 %2591, 31
  %2622 = lshr i32 %2598, 31
  %2623 = xor i32 %2622, %2621
  %2624 = xor i32 %2618, %2621
  %2625 = add i32 %2624, %2623
  %2626 = icmp eq i32 %2625, 2
  %2627 = zext i1 %2626 to i8
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2627, i8* %2628, align 1
  store %struct.Memory* %loadMem_42587f, %struct.Memory** %MEMORY
  %loadMem_425882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2630 = getelementptr inbounds %struct.GPR, %struct.GPR* %2629, i32 0, i32 33
  %2631 = getelementptr inbounds %struct.Reg, %struct.Reg* %2630, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %2631 to i64*
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2633 = getelementptr inbounds %struct.GPR, %struct.GPR* %2632, i32 0, i32 9
  %2634 = getelementptr inbounds %struct.Reg, %struct.Reg* %2633, i32 0, i32 0
  %2635 = bitcast %union.anon* %2634 to %struct.anon.2*
  %SIL.i68 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2635, i32 0, i32 0
  %2636 = load i64, i64* %PC.i67
  %2637 = add i64 %2636, 4
  store i64 %2637, i64* %PC.i67
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2639 = load i8, i8* %2638, align 1
  %2640 = icmp eq i8 %2639, 0
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2642 = load i8, i8* %2641, align 1
  %2643 = icmp ne i8 %2642, 0
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2645 = load i8, i8* %2644, align 1
  %2646 = icmp ne i8 %2645, 0
  %2647 = xor i1 %2643, %2646
  %2648 = xor i1 %2647, true
  %2649 = and i1 %2640, %2648
  %2650 = zext i1 %2649 to i8
  store i8 %2650, i8* %SIL.i68, align 1
  store %struct.Memory* %loadMem_425882, %struct.Memory** %MEMORY
  %loadMem_425886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 33
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %2653 to i64*
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 9
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %2657 = bitcast %union.anon* %2656 to %struct.anon.2*
  %SIL.i66 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2657, i32 0, i32 0
  %2658 = load i8, i8* %SIL.i66
  %2659 = zext i8 %2658 to i64
  %2660 = load i64, i64* %PC.i65
  %2661 = add i64 %2660, 4
  store i64 %2661, i64* %PC.i65
  %2662 = and i64 1, %2659
  %2663 = trunc i64 %2662 to i8
  store i8 %2663, i8* %SIL.i66, align 1
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2664, align 1
  %2665 = trunc i64 %2662 to i32
  %2666 = and i32 %2665, 255
  %2667 = call i32 @llvm.ctpop.i32(i32 %2666)
  %2668 = trunc i32 %2667 to i8
  %2669 = and i8 %2668, 1
  %2670 = xor i8 %2669, 1
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2670, i8* %2671, align 1
  %2672 = icmp eq i8 %2663, 0
  %2673 = zext i1 %2672 to i8
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2673, i8* %2674, align 1
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2675, align 1
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2676, align 1
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2677, align 1
  store %struct.Memory* %loadMem_425886, %struct.Memory** %MEMORY
  %loadMem_42588a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 33
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %2680 to i64*
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 9
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %2684 = bitcast %union.anon* %2683 to %struct.anon.2*
  %SIL.i63 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2684, i32 0, i32 0
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 7
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %RDX.i64 = bitcast %union.anon* %2687 to i64*
  %2688 = load i8, i8* %SIL.i63
  %2689 = zext i8 %2688 to i64
  %2690 = load i64, i64* %PC.i62
  %2691 = add i64 %2690, 4
  store i64 %2691, i64* %PC.i62
  %2692 = and i64 %2689, 255
  store i64 %2692, i64* %RDX.i64, align 8
  store %struct.Memory* %loadMem_42588a, %struct.Memory** %MEMORY
  %loadMem_42588e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2694 = getelementptr inbounds %struct.GPR, %struct.GPR* %2693, i32 0, i32 33
  %2695 = getelementptr inbounds %struct.Reg, %struct.Reg* %2694, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %2695 to i64*
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 15
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %2698 to i64*
  %2699 = load i64, i64* %RBP.i61
  %2700 = sub i64 %2699, 12
  %2701 = load i64, i64* %PC.i60
  %2702 = add i64 %2701, 4
  store i64 %2702, i64* %PC.i60
  %2703 = inttoptr i64 %2700 to i32*
  %2704 = load i32, i32* %2703
  %2705 = sub i32 %2704, 1
  %2706 = icmp ult i32 %2704, 1
  %2707 = zext i1 %2706 to i8
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2707, i8* %2708, align 1
  %2709 = and i32 %2705, 255
  %2710 = call i32 @llvm.ctpop.i32(i32 %2709)
  %2711 = trunc i32 %2710 to i8
  %2712 = and i8 %2711, 1
  %2713 = xor i8 %2712, 1
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2713, i8* %2714, align 1
  %2715 = xor i32 %2704, 1
  %2716 = xor i32 %2715, %2705
  %2717 = lshr i32 %2716, 4
  %2718 = trunc i32 %2717 to i8
  %2719 = and i8 %2718, 1
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2719, i8* %2720, align 1
  %2721 = icmp eq i32 %2705, 0
  %2722 = zext i1 %2721 to i8
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2722, i8* %2723, align 1
  %2724 = lshr i32 %2705, 31
  %2725 = trunc i32 %2724 to i8
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2725, i8* %2726, align 1
  %2727 = lshr i32 %2704, 31
  %2728 = xor i32 %2724, %2727
  %2729 = add i32 %2728, %2727
  %2730 = icmp eq i32 %2729, 2
  %2731 = zext i1 %2730 to i8
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2731, i8* %2732, align 1
  store %struct.Memory* %loadMem_42588e, %struct.Memory** %MEMORY
  %loadMem_425892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2734 = getelementptr inbounds %struct.GPR, %struct.GPR* %2733, i32 0, i32 33
  %2735 = getelementptr inbounds %struct.Reg, %struct.Reg* %2734, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %2735 to i64*
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2737 = getelementptr inbounds %struct.GPR, %struct.GPR* %2736, i32 0, i32 9
  %2738 = getelementptr inbounds %struct.Reg, %struct.Reg* %2737, i32 0, i32 0
  %2739 = bitcast %union.anon* %2738 to %struct.anon.2*
  %SIL.i59 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2739, i32 0, i32 0
  %2740 = load i64, i64* %PC.i58
  %2741 = add i64 %2740, 4
  store i64 %2741, i64* %PC.i58
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2743 = load i8, i8* %2742, align 1
  store i8 %2743, i8* %SIL.i59, align 1
  store %struct.Memory* %loadMem_425892, %struct.Memory** %MEMORY
  %loadMem_425896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2745 = getelementptr inbounds %struct.GPR, %struct.GPR* %2744, i32 0, i32 33
  %2746 = getelementptr inbounds %struct.Reg, %struct.Reg* %2745, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %2746 to i64*
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2748 = getelementptr inbounds %struct.GPR, %struct.GPR* %2747, i32 0, i32 9
  %2749 = getelementptr inbounds %struct.Reg, %struct.Reg* %2748, i32 0, i32 0
  %2750 = bitcast %union.anon* %2749 to %struct.anon.2*
  %SIL.i57 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2750, i32 0, i32 0
  %2751 = load i8, i8* %SIL.i57
  %2752 = zext i8 %2751 to i64
  %2753 = load i64, i64* %PC.i56
  %2754 = add i64 %2753, 4
  store i64 %2754, i64* %PC.i56
  %2755 = and i64 1, %2752
  %2756 = trunc i64 %2755 to i8
  store i8 %2756, i8* %SIL.i57, align 1
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2757, align 1
  %2758 = trunc i64 %2755 to i32
  %2759 = and i32 %2758, 255
  %2760 = call i32 @llvm.ctpop.i32(i32 %2759)
  %2761 = trunc i32 %2760 to i8
  %2762 = and i8 %2761, 1
  %2763 = xor i8 %2762, 1
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2763, i8* %2764, align 1
  %2765 = icmp eq i8 %2756, 0
  %2766 = zext i1 %2765 to i8
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2766, i8* %2767, align 1
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2768, align 1
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2769, align 1
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2770, align 1
  store %struct.Memory* %loadMem_425896, %struct.Memory** %MEMORY
  %loadMem_42589a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 33
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %2773 to i64*
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2775 = getelementptr inbounds %struct.GPR, %struct.GPR* %2774, i32 0, i32 9
  %2776 = getelementptr inbounds %struct.Reg, %struct.Reg* %2775, i32 0, i32 0
  %2777 = bitcast %union.anon* %2776 to %struct.anon.2*
  %SIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2777, i32 0, i32 0
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2779 = getelementptr inbounds %struct.GPR, %struct.GPR* %2778, i32 0, i32 11
  %2780 = getelementptr inbounds %struct.Reg, %struct.Reg* %2779, i32 0, i32 0
  %RDI.i55 = bitcast %union.anon* %2780 to i64*
  %2781 = load i8, i8* %SIL.i
  %2782 = zext i8 %2781 to i64
  %2783 = load i64, i64* %PC.i54
  %2784 = add i64 %2783, 4
  store i64 %2784, i64* %PC.i54
  %2785 = and i64 %2782, 255
  store i64 %2785, i64* %RDI.i55, align 8
  store %struct.Memory* %loadMem_42589a, %struct.Memory** %MEMORY
  %loadMem_42589e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2787 = getelementptr inbounds %struct.GPR, %struct.GPR* %2786, i32 0, i32 33
  %2788 = getelementptr inbounds %struct.Reg, %struct.Reg* %2787, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %2788 to i64*
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 11
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %2791 to i32*
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2793 = getelementptr inbounds %struct.GPR, %struct.GPR* %2792, i32 0, i32 7
  %2794 = getelementptr inbounds %struct.Reg, %struct.Reg* %2793, i32 0, i32 0
  %RDX.i53 = bitcast %union.anon* %2794 to i64*
  %2795 = load i64, i64* %RDX.i53
  %2796 = load i32, i32* %EDI.i
  %2797 = zext i32 %2796 to i64
  %2798 = load i64, i64* %PC.i52
  %2799 = add i64 %2798, 2
  store i64 %2799, i64* %PC.i52
  %2800 = xor i64 %2797, %2795
  %2801 = trunc i64 %2800 to i32
  %2802 = and i64 %2800, 4294967295
  store i64 %2802, i64* %RDX.i53, align 8
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2803, align 1
  %2804 = and i32 %2801, 255
  %2805 = call i32 @llvm.ctpop.i32(i32 %2804)
  %2806 = trunc i32 %2805 to i8
  %2807 = and i8 %2806, 1
  %2808 = xor i8 %2807, 1
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2808, i8* %2809, align 1
  %2810 = icmp eq i32 %2801, 0
  %2811 = zext i1 %2810 to i8
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2811, i8* %2812, align 1
  %2813 = lshr i32 %2801, 31
  %2814 = trunc i32 %2813 to i8
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2814, i8* %2815, align 1
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2816, align 1
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2817, align 1
  store %struct.Memory* %loadMem_42589e, %struct.Memory** %MEMORY
  %loadMem_4258a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 33
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %2820 to i64*
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 7
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %2823 to i32*
  %2824 = load i32, i32* %EDX.i
  %2825 = zext i32 %2824 to i64
  %2826 = load i64, i64* %PC.i51
  %2827 = add i64 %2826, 3
  store i64 %2827, i64* %PC.i51
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2828, align 1
  %2829 = and i32 %2824, 255
  %2830 = call i32 @llvm.ctpop.i32(i32 %2829)
  %2831 = trunc i32 %2830 to i8
  %2832 = and i8 %2831, 1
  %2833 = xor i8 %2832, 1
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2833, i8* %2834, align 1
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2835, align 1
  %2836 = icmp eq i32 %2824, 0
  %2837 = zext i1 %2836 to i8
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2837, i8* %2838, align 1
  %2839 = lshr i32 %2824, 31
  %2840 = trunc i32 %2839 to i8
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2840, i8* %2841, align 1
  %2842 = lshr i32 %2824, 31
  %2843 = xor i32 %2839, %2842
  %2844 = add i32 %2843, %2842
  %2845 = icmp eq i32 %2844, 2
  %2846 = zext i1 %2845 to i8
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2846, i8* %2847, align 1
  store %struct.Memory* %loadMem_4258a0, %struct.Memory** %MEMORY
  %loadMem_4258a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2849 = getelementptr inbounds %struct.GPR, %struct.GPR* %2848, i32 0, i32 33
  %2850 = getelementptr inbounds %struct.Reg, %struct.Reg* %2849, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %2850 to i64*
  %2851 = load i64, i64* %PC.i50
  %2852 = add i64 %2851, 43
  %2853 = load i64, i64* %PC.i50
  %2854 = add i64 %2853, 6
  %2855 = load i64, i64* %PC.i50
  %2856 = add i64 %2855, 6
  store i64 %2856, i64* %PC.i50
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2858 = load i8, i8* %2857, align 1
  store i8 %2858, i8* %BRANCH_TAKEN, align 1
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2860 = icmp ne i8 %2858, 0
  %2861 = select i1 %2860, i64 %2852, i64 %2854
  store i64 %2861, i64* %2859, align 8
  store %struct.Memory* %loadMem_4258a3, %struct.Memory** %MEMORY
  %loadBr_4258a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4258a3 = icmp eq i8 %loadBr_4258a3, 1
  br i1 %cmpBr_4258a3, label %block_.L_4258ce, label %block_4258a9

block_4258a9:                                     ; preds = %routine_idivl__ecx.exit
  %loadMem_4258a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2863 = getelementptr inbounds %struct.GPR, %struct.GPR* %2862, i32 0, i32 33
  %2864 = getelementptr inbounds %struct.Reg, %struct.Reg* %2863, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %2864 to i64*
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2866 = getelementptr inbounds %struct.GPR, %struct.GPR* %2865, i32 0, i32 1
  %2867 = getelementptr inbounds %struct.Reg, %struct.Reg* %2866, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %2867 to i64*
  %2868 = load i64, i64* %PC.i48
  %2869 = add i64 %2868, 7
  store i64 %2869, i64* %PC.i48
  %2870 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %2871 = zext i32 %2870 to i64
  store i64 %2871, i64* %RAX.i49, align 8
  store %struct.Memory* %loadMem_4258a9, %struct.Memory** %MEMORY
  %loadMem_4258b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2873 = getelementptr inbounds %struct.GPR, %struct.GPR* %2872, i32 0, i32 33
  %2874 = getelementptr inbounds %struct.Reg, %struct.Reg* %2873, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %2874 to i64*
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2876 = getelementptr inbounds %struct.GPR, %struct.GPR* %2875, i32 0, i32 1
  %2877 = getelementptr inbounds %struct.Reg, %struct.Reg* %2876, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %2877 to i64*
  %2878 = load i64, i64* %RAX.i47
  %2879 = load i64, i64* %PC.i46
  %2880 = add i64 %2879, 3
  store i64 %2880, i64* %PC.i46
  %2881 = trunc i64 %2878 to i32
  %2882 = sub i32 %2881, 1
  %2883 = zext i32 %2882 to i64
  store i64 %2883, i64* %RAX.i47, align 8
  %2884 = icmp ult i32 %2881, 1
  %2885 = zext i1 %2884 to i8
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2885, i8* %2886, align 1
  %2887 = and i32 %2882, 255
  %2888 = call i32 @llvm.ctpop.i32(i32 %2887)
  %2889 = trunc i32 %2888 to i8
  %2890 = and i8 %2889, 1
  %2891 = xor i8 %2890, 1
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2891, i8* %2892, align 1
  %2893 = xor i64 1, %2878
  %2894 = trunc i64 %2893 to i32
  %2895 = xor i32 %2894, %2882
  %2896 = lshr i32 %2895, 4
  %2897 = trunc i32 %2896 to i8
  %2898 = and i8 %2897, 1
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2898, i8* %2899, align 1
  %2900 = icmp eq i32 %2882, 0
  %2901 = zext i1 %2900 to i8
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2901, i8* %2902, align 1
  %2903 = lshr i32 %2882, 31
  %2904 = trunc i32 %2903 to i8
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2904, i8* %2905, align 1
  %2906 = lshr i32 %2881, 31
  %2907 = xor i32 %2903, %2906
  %2908 = add i32 %2907, %2906
  %2909 = icmp eq i32 %2908, 2
  %2910 = zext i1 %2909 to i8
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2910, i8* %2911, align 1
  store %struct.Memory* %loadMem_4258b0, %struct.Memory** %MEMORY
  %loadMem_4258b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2913 = getelementptr inbounds %struct.GPR, %struct.GPR* %2912, i32 0, i32 33
  %2914 = getelementptr inbounds %struct.Reg, %struct.Reg* %2913, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %2914 to i64*
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2916 = getelementptr inbounds %struct.GPR, %struct.GPR* %2915, i32 0, i32 1
  %2917 = getelementptr inbounds %struct.Reg, %struct.Reg* %2916, i32 0, i32 0
  %RAX.i44 = bitcast %union.anon* %2917 to i64*
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 15
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %2920 to i64*
  %2921 = load i64, i64* %RAX.i44
  %2922 = load i64, i64* %RBP.i45
  %2923 = sub i64 %2922, 20
  %2924 = load i64, i64* %PC.i43
  %2925 = add i64 %2924, 3
  store i64 %2925, i64* %PC.i43
  %2926 = trunc i64 %2921 to i32
  %2927 = inttoptr i64 %2923 to i32*
  %2928 = load i32, i32* %2927
  %2929 = sub i32 %2926, %2928
  %2930 = zext i32 %2929 to i64
  store i64 %2930, i64* %RAX.i44, align 8
  %2931 = icmp ult i32 %2926, %2928
  %2932 = zext i1 %2931 to i8
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2932, i8* %2933, align 1
  %2934 = and i32 %2929, 255
  %2935 = call i32 @llvm.ctpop.i32(i32 %2934)
  %2936 = trunc i32 %2935 to i8
  %2937 = and i8 %2936, 1
  %2938 = xor i8 %2937, 1
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2938, i8* %2939, align 1
  %2940 = xor i32 %2928, %2926
  %2941 = xor i32 %2940, %2929
  %2942 = lshr i32 %2941, 4
  %2943 = trunc i32 %2942 to i8
  %2944 = and i8 %2943, 1
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2944, i8* %2945, align 1
  %2946 = icmp eq i32 %2929, 0
  %2947 = zext i1 %2946 to i8
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2947, i8* %2948, align 1
  %2949 = lshr i32 %2929, 31
  %2950 = trunc i32 %2949 to i8
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2950, i8* %2951, align 1
  %2952 = lshr i32 %2926, 31
  %2953 = lshr i32 %2928, 31
  %2954 = xor i32 %2953, %2952
  %2955 = xor i32 %2949, %2952
  %2956 = add i32 %2955, %2954
  %2957 = icmp eq i32 %2956, 2
  %2958 = zext i1 %2957 to i8
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2958, i8* %2959, align 1
  store %struct.Memory* %loadMem_4258b3, %struct.Memory** %MEMORY
  %loadMem_4258b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 33
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %2962 to i64*
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2964 = getelementptr inbounds %struct.GPR, %struct.GPR* %2963, i32 0, i32 1
  %2965 = getelementptr inbounds %struct.Reg, %struct.Reg* %2964, i32 0, i32 0
  %EAX.i41 = bitcast %union.anon* %2965 to i32*
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2967 = getelementptr inbounds %struct.GPR, %struct.GPR* %2966, i32 0, i32 1
  %2968 = getelementptr inbounds %struct.Reg, %struct.Reg* %2967, i32 0, i32 0
  %RAX.i42 = bitcast %union.anon* %2968 to i64*
  %2969 = load i32, i32* %EAX.i41
  %2970 = zext i32 %2969 to i64
  %2971 = load i64, i64* %PC.i40
  %2972 = add i64 %2971, 3
  store i64 %2972, i64* %PC.i40
  %2973 = shl i64 %2970, 32
  %2974 = ashr exact i64 %2973, 32
  %2975 = mul i64 20, %2974
  %2976 = trunc i64 %2975 to i32
  %2977 = and i64 %2975, 4294967295
  store i64 %2977, i64* %RAX.i42, align 8
  %2978 = shl i64 %2975, 32
  %2979 = ashr exact i64 %2978, 32
  %2980 = icmp ne i64 %2979, %2975
  %2981 = zext i1 %2980 to i8
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2981, i8* %2982, align 1
  %2983 = and i32 %2976, 255
  %2984 = call i32 @llvm.ctpop.i32(i32 %2983)
  %2985 = trunc i32 %2984 to i8
  %2986 = and i8 %2985, 1
  %2987 = xor i8 %2986, 1
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2987, i8* %2988, align 1
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2989, align 1
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2990, align 1
  %2991 = lshr i32 %2976, 31
  %2992 = trunc i32 %2991 to i8
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2992, i8* %2993, align 1
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2981, i8* %2994, align 1
  store %struct.Memory* %loadMem_4258b6, %struct.Memory** %MEMORY
  %loadMem_4258b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 33
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %2997 to i64*
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2999 = getelementptr inbounds %struct.GPR, %struct.GPR* %2998, i32 0, i32 1
  %3000 = getelementptr inbounds %struct.Reg, %struct.Reg* %2999, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %3000 to i64*
  %3001 = load i64, i64* %RAX.i39
  %3002 = load i64, i64* %PC.i38
  %3003 = add i64 %3002, 3
  store i64 %3003, i64* %PC.i38
  %3004 = trunc i64 %3001 to i32
  %3005 = add i32 21, %3004
  %3006 = zext i32 %3005 to i64
  store i64 %3006, i64* %RAX.i39, align 8
  %3007 = icmp ult i32 %3005, %3004
  %3008 = icmp ult i32 %3005, 21
  %3009 = or i1 %3007, %3008
  %3010 = zext i1 %3009 to i8
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3010, i8* %3011, align 1
  %3012 = and i32 %3005, 255
  %3013 = call i32 @llvm.ctpop.i32(i32 %3012)
  %3014 = trunc i32 %3013 to i8
  %3015 = and i8 %3014, 1
  %3016 = xor i8 %3015, 1
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3016, i8* %3017, align 1
  %3018 = xor i64 21, %3001
  %3019 = trunc i64 %3018 to i32
  %3020 = xor i32 %3019, %3005
  %3021 = lshr i32 %3020, 4
  %3022 = trunc i32 %3021 to i8
  %3023 = and i8 %3022, 1
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3023, i8* %3024, align 1
  %3025 = icmp eq i32 %3005, 0
  %3026 = zext i1 %3025 to i8
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3026, i8* %3027, align 1
  %3028 = lshr i32 %3005, 31
  %3029 = trunc i32 %3028 to i8
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3029, i8* %3030, align 1
  %3031 = lshr i32 %3004, 31
  %3032 = xor i32 %3028, %3031
  %3033 = add i32 %3032, %3028
  %3034 = icmp eq i32 %3033, 2
  %3035 = zext i1 %3034 to i8
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3035, i8* %3036, align 1
  store %struct.Memory* %loadMem_4258b9, %struct.Memory** %MEMORY
  %loadMem_4258bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 33
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %3039 to i64*
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3041 = getelementptr inbounds %struct.GPR, %struct.GPR* %3040, i32 0, i32 5
  %3042 = getelementptr inbounds %struct.Reg, %struct.Reg* %3041, i32 0, i32 0
  %RCX.i37 = bitcast %union.anon* %3042 to i64*
  %3043 = load i64, i64* %PC.i36
  %3044 = add i64 %3043, 7
  store i64 %3044, i64* %PC.i36
  %3045 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %3046 = zext i32 %3045 to i64
  store i64 %3046, i64* %RCX.i37, align 8
  store %struct.Memory* %loadMem_4258bc, %struct.Memory** %MEMORY
  %loadMem_4258c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 33
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %3049 to i64*
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3051 = getelementptr inbounds %struct.GPR, %struct.GPR* %3050, i32 0, i32 5
  %3052 = getelementptr inbounds %struct.Reg, %struct.Reg* %3051, i32 0, i32 0
  %RCX.i35 = bitcast %union.anon* %3052 to i64*
  %3053 = load i64, i64* %RCX.i35
  %3054 = load i64, i64* %PC.i34
  %3055 = add i64 %3054, 3
  store i64 %3055, i64* %PC.i34
  %3056 = trunc i64 %3053 to i32
  %3057 = sub i32 %3056, 1
  %3058 = zext i32 %3057 to i64
  store i64 %3058, i64* %RCX.i35, align 8
  %3059 = icmp ult i32 %3056, 1
  %3060 = zext i1 %3059 to i8
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3060, i8* %3061, align 1
  %3062 = and i32 %3057, 255
  %3063 = call i32 @llvm.ctpop.i32(i32 %3062)
  %3064 = trunc i32 %3063 to i8
  %3065 = and i8 %3064, 1
  %3066 = xor i8 %3065, 1
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3066, i8* %3067, align 1
  %3068 = xor i64 1, %3053
  %3069 = trunc i64 %3068 to i32
  %3070 = xor i32 %3069, %3057
  %3071 = lshr i32 %3070, 4
  %3072 = trunc i32 %3071 to i8
  %3073 = and i8 %3072, 1
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3073, i8* %3074, align 1
  %3075 = icmp eq i32 %3057, 0
  %3076 = zext i1 %3075 to i8
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3076, i8* %3077, align 1
  %3078 = lshr i32 %3057, 31
  %3079 = trunc i32 %3078 to i8
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3079, i8* %3080, align 1
  %3081 = lshr i32 %3056, 31
  %3082 = xor i32 %3078, %3081
  %3083 = add i32 %3082, %3081
  %3084 = icmp eq i32 %3083, 2
  %3085 = zext i1 %3084 to i8
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3085, i8* %3086, align 1
  store %struct.Memory* %loadMem_4258c3, %struct.Memory** %MEMORY
  %loadMem_4258c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3088 = getelementptr inbounds %struct.GPR, %struct.GPR* %3087, i32 0, i32 33
  %3089 = getelementptr inbounds %struct.Reg, %struct.Reg* %3088, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %3089 to i64*
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 5
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3092 to i64*
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 15
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %3095 to i64*
  %3096 = load i64, i64* %RCX.i
  %3097 = load i64, i64* %RBP.i33
  %3098 = sub i64 %3097, 16
  %3099 = load i64, i64* %PC.i32
  %3100 = add i64 %3099, 3
  store i64 %3100, i64* %PC.i32
  %3101 = trunc i64 %3096 to i32
  %3102 = inttoptr i64 %3098 to i32*
  %3103 = load i32, i32* %3102
  %3104 = sub i32 %3101, %3103
  %3105 = zext i32 %3104 to i64
  store i64 %3105, i64* %RCX.i, align 8
  %3106 = icmp ult i32 %3101, %3103
  %3107 = zext i1 %3106 to i8
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3107, i8* %3108, align 1
  %3109 = and i32 %3104, 255
  %3110 = call i32 @llvm.ctpop.i32(i32 %3109)
  %3111 = trunc i32 %3110 to i8
  %3112 = and i8 %3111, 1
  %3113 = xor i8 %3112, 1
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3113, i8* %3114, align 1
  %3115 = xor i32 %3103, %3101
  %3116 = xor i32 %3115, %3104
  %3117 = lshr i32 %3116, 4
  %3118 = trunc i32 %3117 to i8
  %3119 = and i8 %3118, 1
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3119, i8* %3120, align 1
  %3121 = icmp eq i32 %3104, 0
  %3122 = zext i1 %3121 to i8
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3122, i8* %3123, align 1
  %3124 = lshr i32 %3104, 31
  %3125 = trunc i32 %3124 to i8
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3125, i8* %3126, align 1
  %3127 = lshr i32 %3101, 31
  %3128 = lshr i32 %3103, 31
  %3129 = xor i32 %3128, %3127
  %3130 = xor i32 %3124, %3127
  %3131 = add i32 %3130, %3129
  %3132 = icmp eq i32 %3131, 2
  %3133 = zext i1 %3132 to i8
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3133, i8* %3134, align 1
  store %struct.Memory* %loadMem_4258c6, %struct.Memory** %MEMORY
  %loadMem_4258c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3136 = getelementptr inbounds %struct.GPR, %struct.GPR* %3135, i32 0, i32 33
  %3137 = getelementptr inbounds %struct.Reg, %struct.Reg* %3136, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %3137 to i64*
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3139 = getelementptr inbounds %struct.GPR, %struct.GPR* %3138, i32 0, i32 5
  %3140 = getelementptr inbounds %struct.Reg, %struct.Reg* %3139, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3140 to i32*
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3142 = getelementptr inbounds %struct.GPR, %struct.GPR* %3141, i32 0, i32 1
  %3143 = getelementptr inbounds %struct.Reg, %struct.Reg* %3142, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3143 to i64*
  %3144 = load i64, i64* %RAX.i
  %3145 = load i32, i32* %ECX.i
  %3146 = zext i32 %3145 to i64
  %3147 = load i64, i64* %PC.i31
  %3148 = add i64 %3147, 2
  store i64 %3148, i64* %PC.i31
  %3149 = trunc i64 %3144 to i32
  %3150 = add i32 %3145, %3149
  %3151 = zext i32 %3150 to i64
  store i64 %3151, i64* %RAX.i, align 8
  %3152 = icmp ult i32 %3150, %3149
  %3153 = icmp ult i32 %3150, %3145
  %3154 = or i1 %3152, %3153
  %3155 = zext i1 %3154 to i8
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3155, i8* %3156, align 1
  %3157 = and i32 %3150, 255
  %3158 = call i32 @llvm.ctpop.i32(i32 %3157)
  %3159 = trunc i32 %3158 to i8
  %3160 = and i8 %3159, 1
  %3161 = xor i8 %3160, 1
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3161, i8* %3162, align 1
  %3163 = xor i64 %3146, %3144
  %3164 = trunc i64 %3163 to i32
  %3165 = xor i32 %3164, %3150
  %3166 = lshr i32 %3165, 4
  %3167 = trunc i32 %3166 to i8
  %3168 = and i8 %3167, 1
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3168, i8* %3169, align 1
  %3170 = icmp eq i32 %3150, 0
  %3171 = zext i1 %3170 to i8
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3171, i8* %3172, align 1
  %3173 = lshr i32 %3150, 31
  %3174 = trunc i32 %3173 to i8
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3174, i8* %3175, align 1
  %3176 = lshr i32 %3149, 31
  %3177 = lshr i32 %3145, 31
  %3178 = xor i32 %3173, %3176
  %3179 = xor i32 %3173, %3177
  %3180 = add i32 %3178, %3179
  %3181 = icmp eq i32 %3180, 2
  %3182 = zext i1 %3181 to i8
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3182, i8* %3183, align 1
  store %struct.Memory* %loadMem_4258c9, %struct.Memory** %MEMORY
  %loadMem_4258cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3185 = getelementptr inbounds %struct.GPR, %struct.GPR* %3184, i32 0, i32 33
  %3186 = getelementptr inbounds %struct.Reg, %struct.Reg* %3185, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %3186 to i64*
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3188 = getelementptr inbounds %struct.GPR, %struct.GPR* %3187, i32 0, i32 1
  %3189 = getelementptr inbounds %struct.Reg, %struct.Reg* %3188, i32 0, i32 0
  %EAX.i29 = bitcast %union.anon* %3189 to i32*
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 15
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %3192 to i64*
  %3193 = load i64, i64* %RBP.i30
  %3194 = sub i64 %3193, 4
  %3195 = load i32, i32* %EAX.i29
  %3196 = zext i32 %3195 to i64
  %3197 = load i64, i64* %PC.i28
  %3198 = add i64 %3197, 3
  store i64 %3198, i64* %PC.i28
  %3199 = inttoptr i64 %3194 to i32*
  store i32 %3195, i32* %3199
  store %struct.Memory* %loadMem_4258cb, %struct.Memory** %MEMORY
  br label %block_.L_4258ce

block_.L_4258ce:                                  ; preds = %block_4258a9, %routine_idivl__ecx.exit
  %loadMem_4258ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 33
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %3202 to i64*
  %3203 = load i64, i64* %PC.i27
  %3204 = add i64 %3203, 5
  %3205 = load i64, i64* %PC.i27
  %3206 = add i64 %3205, 5
  store i64 %3206, i64* %PC.i27
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3204, i64* %3207, align 8
  store %struct.Memory* %loadMem_4258ce, %struct.Memory** %MEMORY
  br label %block_.L_4258d3

block_.L_4258d3:                                  ; preds = %block_.L_4258ce, %block_.L_42583f
  %loadMem_4258d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 33
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %3210 to i64*
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 11
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %RDI.i25 = bitcast %union.anon* %3213 to i64*
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 15
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %3216 to i64*
  %3217 = load i64, i64* %RBP.i26
  %3218 = sub i64 %3217, 4
  %3219 = load i64, i64* %PC.i24
  %3220 = add i64 %3219, 3
  store i64 %3220, i64* %PC.i24
  %3221 = inttoptr i64 %3218 to i32*
  %3222 = load i32, i32* %3221
  %3223 = zext i32 %3222 to i64
  store i64 %3223, i64* %RDI.i25, align 8
  store %struct.Memory* %loadMem_4258d3, %struct.Memory** %MEMORY
  %loadMem_4258d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3225 = getelementptr inbounds %struct.GPR, %struct.GPR* %3224, i32 0, i32 33
  %3226 = getelementptr inbounds %struct.Reg, %struct.Reg* %3225, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3226 to i64*
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3228 = getelementptr inbounds %struct.GPR, %struct.GPR* %3227, i32 0, i32 15
  %3229 = getelementptr inbounds %struct.Reg, %struct.Reg* %3228, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %3229 to i64*
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3231 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3230, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3231 to %"class.std::bitset"*
  %3232 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3233 = load i64, i64* %RBP.i23
  %3234 = sub i64 %3233, 8
  %3235 = load i64, i64* %PC.i22
  %3236 = add i64 %3235, 5
  store i64 %3236, i64* %PC.i22
  %3237 = bitcast i8* %3232 to <2 x i32>*
  %3238 = load <2 x i32>, <2 x i32>* %3237, align 1
  %3239 = getelementptr inbounds i8, i8* %3232, i64 8
  %3240 = bitcast i8* %3239 to <2 x i32>*
  %3241 = load <2 x i32>, <2 x i32>* %3240, align 1
  %3242 = inttoptr i64 %3234 to i32*
  %3243 = load i32, i32* %3242
  %3244 = sitofp i32 %3243 to float
  %3245 = bitcast i8* %3232 to float*
  store float %3244, float* %3245, align 1
  %3246 = extractelement <2 x i32> %3238, i32 1
  %3247 = getelementptr inbounds i8, i8* %3232, i64 4
  %3248 = bitcast i8* %3247 to i32*
  store i32 %3246, i32* %3248, align 1
  %3249 = extractelement <2 x i32> %3241, i32 0
  %3250 = bitcast i8* %3239 to i32*
  store i32 %3249, i32* %3250, align 1
  %3251 = extractelement <2 x i32> %3241, i32 1
  %3252 = getelementptr inbounds i8, i8* %3232, i64 12
  %3253 = bitcast i8* %3252 to i32*
  store i32 %3251, i32* %3253, align 1
  store %struct.Memory* %loadMem_4258d6, %struct.Memory** %MEMORY
  %loadMem1_4258db = load %struct.Memory*, %struct.Memory** %MEMORY
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3255 = getelementptr inbounds %struct.GPR, %struct.GPR* %3254, i32 0, i32 33
  %3256 = getelementptr inbounds %struct.Reg, %struct.Reg* %3255, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %3256 to i64*
  %3257 = load i64, i64* %PC.i21
  %3258 = add i64 %3257, 63045
  %3259 = load i64, i64* %PC.i21
  %3260 = add i64 %3259, 5
  %3261 = load i64, i64* %PC.i21
  %3262 = add i64 %3261, 5
  store i64 %3262, i64* %PC.i21
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3264 = load i64, i64* %3263, align 8
  %3265 = add i64 %3264, -8
  %3266 = inttoptr i64 %3265 to i64*
  store i64 %3260, i64* %3266
  store i64 %3265, i64* %3263, align 8
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3258, i64* %3267, align 8
  store %struct.Memory* %loadMem1_4258db, %struct.Memory** %MEMORY
  %loadMem2_4258db = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4258db = load i64, i64* %3
  %call2_4258db = call %struct.Memory* @sub_434f20.set_minimum_move_value(%struct.State* %0, i64 %loadPC_4258db, %struct.Memory* %loadMem2_4258db)
  store %struct.Memory* %call2_4258db, %struct.Memory** %MEMORY
  %loadMem_4258e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3269 = getelementptr inbounds %struct.GPR, %struct.GPR* %3268, i32 0, i32 33
  %3270 = getelementptr inbounds %struct.Reg, %struct.Reg* %3269, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %3270 to i64*
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3272 = getelementptr inbounds %struct.GPR, %struct.GPR* %3271, i32 0, i32 1
  %3273 = getelementptr inbounds %struct.Reg, %struct.Reg* %3272, i32 0, i32 0
  %EAX.i20 = bitcast %union.anon* %3273 to i32*
  %3274 = load i32, i32* %EAX.i20
  %3275 = zext i32 %3274 to i64
  %3276 = load i64, i64* %PC.i19
  %3277 = add i64 %3276, 3
  store i64 %3277, i64* %PC.i19
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3278, align 1
  %3279 = and i32 %3274, 255
  %3280 = call i32 @llvm.ctpop.i32(i32 %3279)
  %3281 = trunc i32 %3280 to i8
  %3282 = and i8 %3281, 1
  %3283 = xor i8 %3282, 1
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3283, i8* %3284, align 1
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3285, align 1
  %3286 = icmp eq i32 %3274, 0
  %3287 = zext i1 %3286 to i8
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3287, i8* %3288, align 1
  %3289 = lshr i32 %3274, 31
  %3290 = trunc i32 %3289 to i8
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3290, i8* %3291, align 1
  %3292 = lshr i32 %3274, 31
  %3293 = xor i32 %3289, %3292
  %3294 = add i32 %3293, %3292
  %3295 = icmp eq i32 %3294, 2
  %3296 = zext i1 %3295 to i8
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3296, i8* %3297, align 1
  store %struct.Memory* %loadMem_4258e0, %struct.Memory** %MEMORY
  %loadMem_4258e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3299 = getelementptr inbounds %struct.GPR, %struct.GPR* %3298, i32 0, i32 33
  %3300 = getelementptr inbounds %struct.Reg, %struct.Reg* %3299, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3300 to i64*
  %3301 = load i64, i64* %PC.i18
  %3302 = add i64 %3301, 56
  %3303 = load i64, i64* %PC.i18
  %3304 = add i64 %3303, 6
  %3305 = load i64, i64* %PC.i18
  %3306 = add i64 %3305, 6
  store i64 %3306, i64* %PC.i18
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3308 = load i8, i8* %3307, align 1
  store i8 %3308, i8* %BRANCH_TAKEN, align 1
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3310 = icmp ne i8 %3308, 0
  %3311 = select i1 %3310, i64 %3302, i64 %3304
  store i64 %3311, i64* %3309, align 8
  store %struct.Memory* %loadMem_4258e3, %struct.Memory** %MEMORY
  %loadBr_4258e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4258e3 = icmp eq i8 %loadBr_4258e3, 1
  br i1 %cmpBr_4258e3, label %block_.L_42591b, label %block_4258e9

block_4258e9:                                     ; preds = %block_.L_4258d3
  %loadMem_4258e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 33
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3314 to i64*
  %3315 = load i64, i64* %PC.i17
  %3316 = add i64 %3315, 8
  store i64 %3316, i64* %PC.i17
  %3317 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3318, align 1
  %3319 = and i32 %3317, 255
  %3320 = call i32 @llvm.ctpop.i32(i32 %3319)
  %3321 = trunc i32 %3320 to i8
  %3322 = and i8 %3321, 1
  %3323 = xor i8 %3322, 1
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3323, i8* %3324, align 1
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3325, align 1
  %3326 = icmp eq i32 %3317, 0
  %3327 = zext i1 %3326 to i8
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3327, i8* %3328, align 1
  %3329 = lshr i32 %3317, 31
  %3330 = trunc i32 %3329 to i8
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3330, i8* %3331, align 1
  %3332 = lshr i32 %3317, 31
  %3333 = xor i32 %3329, %3332
  %3334 = add i32 %3333, %3332
  %3335 = icmp eq i32 %3334, 2
  %3336 = zext i1 %3335 to i8
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3336, i8* %3337, align 1
  store %struct.Memory* %loadMem_4258e9, %struct.Memory** %MEMORY
  %loadMem_4258f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3339 = getelementptr inbounds %struct.GPR, %struct.GPR* %3338, i32 0, i32 33
  %3340 = getelementptr inbounds %struct.Reg, %struct.Reg* %3339, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %3340 to i64*
  %3341 = load i64, i64* %PC.i16
  %3342 = add i64 %3341, 11
  %3343 = load i64, i64* %PC.i16
  %3344 = add i64 %3343, 6
  %3345 = load i64, i64* %PC.i16
  %3346 = add i64 %3345, 6
  store i64 %3346, i64* %PC.i16
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3348 = load i8, i8* %3347, align 1
  %3349 = icmp eq i8 %3348, 0
  %3350 = zext i1 %3349 to i8
  store i8 %3350, i8* %BRANCH_TAKEN, align 1
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3352 = select i1 %3349, i64 %3342, i64 %3344
  store i64 %3352, i64* %3351, align 8
  store %struct.Memory* %loadMem_4258f1, %struct.Memory** %MEMORY
  %loadBr_4258f1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4258f1 = icmp eq i8 %loadBr_4258f1, 1
  br i1 %cmpBr_4258f1, label %block_.L_4258fc, label %block_4258f7

block_4258f7:                                     ; preds = %block_4258e9
  %loadMem_4258f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3354 = getelementptr inbounds %struct.GPR, %struct.GPR* %3353, i32 0, i32 33
  %3355 = getelementptr inbounds %struct.Reg, %struct.Reg* %3354, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3355 to i64*
  %3356 = load i64, i64* %PC.i15
  %3357 = add i64 %3356, 31
  %3358 = load i64, i64* %PC.i15
  %3359 = add i64 %3358, 5
  store i64 %3359, i64* %PC.i15
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3357, i64* %3360, align 8
  store %struct.Memory* %loadMem_4258f7, %struct.Memory** %MEMORY
  br label %block_.L_425916

block_.L_4258fc:                                  ; preds = %block_4258e9
  %loadMem_4258fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3362 = getelementptr inbounds %struct.GPR, %struct.GPR* %3361, i32 0, i32 33
  %3363 = getelementptr inbounds %struct.Reg, %struct.Reg* %3362, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3363 to i64*
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3365 = getelementptr inbounds %struct.GPR, %struct.GPR* %3364, i32 0, i32 11
  %3366 = getelementptr inbounds %struct.Reg, %struct.Reg* %3365, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3366 to i64*
  %3367 = load i64, i64* %PC.i14
  %3368 = add i64 %3367, 10
  store i64 %3368, i64* %PC.i14
  store i64 ptrtoint (%G__0x57bdf4_type* @G__0x57bdf4 to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4258fc, %struct.Memory** %MEMORY
  %loadMem_425906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 33
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %3371 to i64*
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3373 = getelementptr inbounds %struct.GPR, %struct.GPR* %3372, i32 0, i32 9
  %3374 = getelementptr inbounds %struct.Reg, %struct.Reg* %3373, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3374 to i64*
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3376 = getelementptr inbounds %struct.GPR, %struct.GPR* %3375, i32 0, i32 15
  %3377 = getelementptr inbounds %struct.Reg, %struct.Reg* %3376, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %3377 to i64*
  %3378 = load i64, i64* %RBP.i13
  %3379 = sub i64 %3378, 4
  %3380 = load i64, i64* %PC.i12
  %3381 = add i64 %3380, 3
  store i64 %3381, i64* %PC.i12
  %3382 = inttoptr i64 %3379 to i32*
  %3383 = load i32, i32* %3382
  %3384 = zext i32 %3383 to i64
  store i64 %3384, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_425906, %struct.Memory** %MEMORY
  %loadMem_425909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3386 = getelementptr inbounds %struct.GPR, %struct.GPR* %3385, i32 0, i32 33
  %3387 = getelementptr inbounds %struct.Reg, %struct.Reg* %3386, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %3387 to i64*
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3389 = getelementptr inbounds %struct.GPR, %struct.GPR* %3388, i32 0, i32 7
  %3390 = getelementptr inbounds %struct.Reg, %struct.Reg* %3389, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3390 to i64*
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3392 = getelementptr inbounds %struct.GPR, %struct.GPR* %3391, i32 0, i32 15
  %3393 = getelementptr inbounds %struct.Reg, %struct.Reg* %3392, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %3393 to i64*
  %3394 = load i64, i64* %RBP.i11
  %3395 = sub i64 %3394, 8
  %3396 = load i64, i64* %PC.i10
  %3397 = add i64 %3396, 3
  store i64 %3397, i64* %PC.i10
  %3398 = inttoptr i64 %3395 to i32*
  %3399 = load i32, i32* %3398
  %3400 = zext i32 %3399 to i64
  store i64 %3400, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_425909, %struct.Memory** %MEMORY
  %loadMem_42590c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3402 = getelementptr inbounds %struct.GPR, %struct.GPR* %3401, i32 0, i32 33
  %3403 = getelementptr inbounds %struct.Reg, %struct.Reg* %3402, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3403 to i64*
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 1
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %3407 = bitcast %union.anon* %3406 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3407, i32 0, i32 0
  %3408 = load i64, i64* %PC.i9
  %3409 = add i64 %3408, 2
  store i64 %3409, i64* %PC.i9
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_42590c, %struct.Memory** %MEMORY
  %loadMem1_42590e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3411 = getelementptr inbounds %struct.GPR, %struct.GPR* %3410, i32 0, i32 33
  %3412 = getelementptr inbounds %struct.Reg, %struct.Reg* %3411, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3412 to i64*
  %3413 = load i64, i64* %PC.i8
  %3414 = add i64 %3413, 181410
  %3415 = load i64, i64* %PC.i8
  %3416 = add i64 %3415, 5
  %3417 = load i64, i64* %PC.i8
  %3418 = add i64 %3417, 5
  store i64 %3418, i64* %PC.i8
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3420 = load i64, i64* %3419, align 8
  %3421 = add i64 %3420, -8
  %3422 = inttoptr i64 %3421 to i64*
  store i64 %3416, i64* %3422
  store i64 %3421, i64* %3419, align 8
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3414, i64* %3423, align 8
  store %struct.Memory* %loadMem1_42590e, %struct.Memory** %MEMORY
  %loadMem2_42590e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42590e = load i64, i64* %3
  %call2_42590e = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_42590e, %struct.Memory* %loadMem2_42590e)
  store %struct.Memory* %call2_42590e, %struct.Memory** %MEMORY
  %loadMem_425913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3425 = getelementptr inbounds %struct.GPR, %struct.GPR* %3424, i32 0, i32 33
  %3426 = getelementptr inbounds %struct.Reg, %struct.Reg* %3425, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3426 to i64*
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3428 = getelementptr inbounds %struct.GPR, %struct.GPR* %3427, i32 0, i32 1
  %3429 = getelementptr inbounds %struct.Reg, %struct.Reg* %3428, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3429 to i32*
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3431 = getelementptr inbounds %struct.GPR, %struct.GPR* %3430, i32 0, i32 15
  %3432 = getelementptr inbounds %struct.Reg, %struct.Reg* %3431, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %3432 to i64*
  %3433 = load i64, i64* %RBP.i7
  %3434 = sub i64 %3433, 36
  %3435 = load i32, i32* %EAX.i
  %3436 = zext i32 %3435 to i64
  %3437 = load i64, i64* %PC.i6
  %3438 = add i64 %3437, 3
  store i64 %3438, i64* %PC.i6
  %3439 = inttoptr i64 %3434 to i32*
  store i32 %3435, i32* %3439
  store %struct.Memory* %loadMem_425913, %struct.Memory** %MEMORY
  br label %block_.L_425916

block_.L_425916:                                  ; preds = %block_.L_4258fc, %block_4258f7
  %loadMem_425916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 33
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3442 to i64*
  %3443 = load i64, i64* %PC.i5
  %3444 = add i64 %3443, 5
  %3445 = load i64, i64* %PC.i5
  %3446 = add i64 %3445, 5
  store i64 %3446, i64* %PC.i5
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3444, i64* %3447, align 8
  store %struct.Memory* %loadMem_425916, %struct.Memory** %MEMORY
  br label %block_.L_42591b

block_.L_42591b:                                  ; preds = %block_.L_425916, %block_.L_4258d3, %block_425726
  %loadMem_42591b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 33
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3450 to i64*
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 13
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3453 to i64*
  %3454 = load i64, i64* %RSP.i
  %3455 = load i64, i64* %PC.i4
  %3456 = add i64 %3455, 4
  store i64 %3456, i64* %PC.i4
  %3457 = add i64 48, %3454
  store i64 %3457, i64* %RSP.i, align 8
  %3458 = icmp ult i64 %3457, %3454
  %3459 = icmp ult i64 %3457, 48
  %3460 = or i1 %3458, %3459
  %3461 = zext i1 %3460 to i8
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3461, i8* %3462, align 1
  %3463 = trunc i64 %3457 to i32
  %3464 = and i32 %3463, 255
  %3465 = call i32 @llvm.ctpop.i32(i32 %3464)
  %3466 = trunc i32 %3465 to i8
  %3467 = and i8 %3466, 1
  %3468 = xor i8 %3467, 1
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3468, i8* %3469, align 1
  %3470 = xor i64 48, %3454
  %3471 = xor i64 %3470, %3457
  %3472 = lshr i64 %3471, 4
  %3473 = trunc i64 %3472 to i8
  %3474 = and i8 %3473, 1
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3474, i8* %3475, align 1
  %3476 = icmp eq i64 %3457, 0
  %3477 = zext i1 %3476 to i8
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3477, i8* %3478, align 1
  %3479 = lshr i64 %3457, 63
  %3480 = trunc i64 %3479 to i8
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3480, i8* %3481, align 1
  %3482 = lshr i64 %3454, 63
  %3483 = xor i64 %3479, %3482
  %3484 = add i64 %3483, %3479
  %3485 = icmp eq i64 %3484, 2
  %3486 = zext i1 %3485 to i8
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3486, i8* %3487, align 1
  store %struct.Memory* %loadMem_42591b, %struct.Memory** %MEMORY
  %loadMem_42591f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3489 = getelementptr inbounds %struct.GPR, %struct.GPR* %3488, i32 0, i32 33
  %3490 = getelementptr inbounds %struct.Reg, %struct.Reg* %3489, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3490 to i64*
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 15
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3493 to i64*
  %3494 = load i64, i64* %PC.i2
  %3495 = add i64 %3494, 1
  store i64 %3495, i64* %PC.i2
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3497 = load i64, i64* %3496, align 8
  %3498 = add i64 %3497, 8
  %3499 = inttoptr i64 %3497 to i64*
  %3500 = load i64, i64* %3499
  store i64 %3500, i64* %RBP.i3, align 8
  store i64 %3498, i64* %3496, align 8
  store %struct.Memory* %loadMem_42591f, %struct.Memory** %MEMORY
  %loadMem_425920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3502 = getelementptr inbounds %struct.GPR, %struct.GPR* %3501, i32 0, i32 33
  %3503 = getelementptr inbounds %struct.Reg, %struct.Reg* %3502, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3503 to i64*
  %3504 = load i64, i64* %PC.i1
  %3505 = add i64 %3504, 1
  store i64 %3505, i64* %PC.i1
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3508 = load i64, i64* %3507, align 8
  %3509 = inttoptr i64 %3508 to i64*
  %3510 = load i64, i64* %3509
  store i64 %3510, i64* %3506, align 8
  %3511 = add i64 %3508, 8
  store i64 %3511, i64* %3507, align 8
  store %struct.Memory* %loadMem_425920, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_425920
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

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EDX
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

define %struct.Memory* @routine_je_.L_42572b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_42591b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0xab0340(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xab0340_type* @G_0xab0340 to i32*)
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %8, 31
  %24 = xor i32 %20, %23
  %25 = add i32 %24, %23
  %26 = icmp eq i32 %25, 2
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4257b5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x14___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 20, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_shll__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = shl i32 %12, 1
  %14 = icmp slt i32 %12, 0
  %15 = icmp slt i32 %13, 0
  %16 = xor i1 %14, %15
  %17 = zext i32 %13 to i64
  store i64 %17, i64* %RDX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %14 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %21 = and i32 %13, 254
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  store i8 %25, i8* %20, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %28 = icmp eq i32 %13, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %27, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %31 = lshr i32 %13, 31
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %30, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %34 = zext i1 %16 to i8
  store i8 %34, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x7ae438___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_cmpl__esi___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EDX
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

define %struct.Memory* @routine_setl__dil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = xor i1 %14, %17
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %DIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andb__0x1___dil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i8, i8* %DIL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = and i64 1, %11
  %15 = trunc i64 %14 to i8
  store i8 %15, i8* %DIL, align 1
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

define %struct.Memory* @routine_movzbl__dil___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i8, i8* %DIL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = and i64 %14, 255
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_sete__dil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %DIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl__dil___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RSI = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %DIL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = and i64 %14, 255
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__esi___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %ESI
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

define %struct.Memory* @routine_je_.L_4257b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_imull__0x14__MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_0x7ae438___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_subl_MINUS0x14__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
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

define %struct.Memory* @routine_addl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = add i32 %13, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
  %20 = icmp ult i32 %18, %17
  %21 = icmp ult i32 %18, %13
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %18, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i64 %14, %12
  %32 = trunc i64 %31 to i32
  %33 = xor i32 %32, %18
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %18, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %18, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %17, 31
  %45 = lshr i32 %13, 31
  %46 = xor i32 %41, %44
  %47 = xor i32 %41, %45
  %48 = add i32 %46, %47
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
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

define %struct.Memory* @routine_jmpq_.L_4257b5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0xab0344(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xab0344_type* @G_0xab0344 to i32*)
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %8, 31
  %24 = xor i32 %20, %23
  %25 = add i32 %24, %23
  %26 = icmp eq i32 %25, 2
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_42583f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_setg__dil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
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
  store i8 %24, i8* %DIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_42583a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x7ae438___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
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

define %struct.Memory* @routine_imull__0x14___eax___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = mul i64 20, %17
  %19 = trunc i64 %18 to i32
  %20 = and i64 %18, 4294967295
  store i64 %20, i64* %RAX, align 8
  %21 = shl i64 %18, 32
  %22 = ashr exact i64 %21, 32
  %23 = icmp ne i64 %22, %18
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %25, align 1
  %26 = and i32 %19, 255
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
  %34 = lshr i32 %19, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %24, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 20
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

define %struct.Memory* @routine_jmpq_.L_42583f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0xab0348(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xab0348_type* @G_0xab0348 to i32*)
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %8, 31
  %24 = xor i32 %20, %23
  %25 = add i32 %24, %23
  %26 = icmp eq i32 %25, 2
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4258d3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x7ae438___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x14__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 16
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

define %struct.Memory* @routine_setg__sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
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
  store i8 %24, i8* %SIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andb__0x1___sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i8, i8* %SIL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = and i64 1, %11
  %15 = trunc i64 %14 to i8
  store i8 %15, i8* %SIL, align 1
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

define %struct.Memory* @routine_movzbl__sil___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %SIL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = and i64 %14, 255
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_sete__sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %SIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl__sil___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %RDI = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %SIL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = and i64 %14, 255
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__edi___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EDI
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

define %struct.Memory* @routine_je_.L_4258ce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
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

define %struct.Memory* @routine_subl_MINUS0x10__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
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

define %struct.Memory* @routine_jmpq_.L_4258d3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssl_MINUS0x8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
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

define %struct.Memory* @routine_callq_.set_minimum_move_value(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_42591b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %8, 31
  %24 = xor i32 %20, %23
  %25 = add i32 %24, %23
  %26 = icmp eq i32 %25, 2
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4258fc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_425916(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57bdf4___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57bdf4_type* @G__0x57bdf4 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.gprintf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
