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
%G_0xab0eec_type = type <{ [4 x i8] }>
%G_0xab0ef8_type = type <{ [8 x i8] }>
%G_0xab0f28_type = type <{ [1 x i8] }>
%G__0x57c8be_type = type <{ [8 x i8] }>
%G__0x57dd2e_type = type <{ [8 x i8] }>
%G__0x57e0a3_type = type <{ [8 x i8] }>
%G__0x57e106_type = type <{ [8 x i8] }>
%G__0x57e10c_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0xab0eec = global %G_0xab0eec_type zeroinitializer
@G_0xab0ef8 = global %G_0xab0ef8_type zeroinitializer
@G_0xab0f28 = global %G_0xab0f28_type zeroinitializer
@G__0x57c8be = global %G__0x57c8be_type zeroinitializer
@G__0x57dd2e = global %G__0x57dd2e_type zeroinitializer
@G__0x57e0a3 = global %G__0x57e0a3_type zeroinitializer
@G__0x57e106 = global %G__0x57e106_type zeroinitializer
@G__0x57e10c = global %G__0x57e10c_type zeroinitializer

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

declare %struct.Memory* @sub_444ee0.check_pattern_hard(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @get_next_move_from_list(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_443730 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_443730, %struct.Memory** %MEMORY
  %loadMem_443731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i563 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i564 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i563
  %27 = load i64, i64* %PC.i562
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i562
  store i64 %26, i64* %RBP.i564, align 8
  store %struct.Memory* %loadMem_443731, %struct.Memory** %MEMORY
  %loadMem_443734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i581 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i581
  %36 = load i64, i64* %PC.i580
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i580
  %38 = sub i64 %35, 160
  store i64 %38, i64* %RSP.i581, align 8
  %39 = icmp ult i64 %35, 160
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
  %49 = xor i64 160, %35
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
  store %struct.Memory* %loadMem_443734, %struct.Memory** %MEMORY
  %loadMem_44373b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i661 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i662 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i662
  %77 = sub i64 %76, 16
  %78 = load i64, i64* %RDI.i661
  %79 = load i64, i64* %PC.i660
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i660
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_44373b, %struct.Memory** %MEMORY
  %loadMem_44373f = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i834 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %ESI.i835 = bitcast %union.anon* %87 to i32*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i836 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i836
  %92 = sub i64 %91, 20
  %93 = load i32, i32* %ESI.i835
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %PC.i834
  %96 = add i64 %95, 3
  store i64 %96, i64* %PC.i834
  %97 = inttoptr i64 %92 to i32*
  store i32 %93, i32* %97
  store %struct.Memory* %loadMem_44373f, %struct.Memory** %MEMORY
  %loadMem_443742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %RDX.i854 = bitcast %union.anon* %103 to i64*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 15
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RBP.i855 = bitcast %union.anon* %106 to i64*
  %107 = load i64, i64* %RBP.i855
  %108 = sub i64 %107, 32
  %109 = load i64, i64* %RDX.i854
  %110 = load i64, i64* %PC.i853
  %111 = add i64 %110, 4
  store i64 %111, i64* %PC.i853
  %112 = inttoptr i64 %108 to i64*
  store i64 %109, i64* %112
  store %struct.Memory* %loadMem_443742, %struct.Memory** %MEMORY
  %loadMem_443746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 33
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %PC.i864 = bitcast %union.anon* %115 to i64*
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %ECX.i865 = bitcast %union.anon* %118 to i32*
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 15
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %RBP.i866 = bitcast %union.anon* %121 to i64*
  %122 = load i64, i64* %RBP.i866
  %123 = sub i64 %122, 36
  %124 = load i32, i32* %ECX.i865
  %125 = zext i32 %124 to i64
  %126 = load i64, i64* %PC.i864
  %127 = add i64 %126, 3
  store i64 %127, i64* %PC.i864
  %128 = inttoptr i64 %123 to i32*
  store i32 %124, i32* %128
  store %struct.Memory* %loadMem_443746, %struct.Memory** %MEMORY
  %loadMem_443749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 33
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %PC.i912 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 15
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RBP.i913 = bitcast %union.anon* %134 to i64*
  %135 = load i64, i64* %RBP.i913
  %136 = sub i64 %135, 76
  %137 = load i64, i64* %PC.i912
  %138 = add i64 %137, 7
  store i64 %138, i64* %PC.i912
  %139 = inttoptr i64 %136 to i32*
  store i32 0, i32* %139
  store %struct.Memory* %loadMem_443749, %struct.Memory** %MEMORY
  %loadMem_443750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 33
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %PC.i1057 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 7
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %RDX.i1058 = bitcast %union.anon* %145 to i64*
  %146 = load i64, i64* %PC.i1057
  %147 = add i64 %146, 8
  store i64 %147, i64* %PC.i1057
  %148 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  store i64 %148, i64* %RDX.i1058, align 8
  store %struct.Memory* %loadMem_443750, %struct.Memory** %MEMORY
  %loadMem_443758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 33
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %PC.i1054 = bitcast %union.anon* %151 to i64*
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 7
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %RDX.i1055 = bitcast %union.anon* %154 to i64*
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 15
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %RBP.i1056 = bitcast %union.anon* %157 to i64*
  %158 = load i64, i64* %RBP.i1056
  %159 = sub i64 %158, 88
  %160 = load i64, i64* %RDX.i1055
  %161 = load i64, i64* %PC.i1054
  %162 = add i64 %161, 4
  store i64 %162, i64* %PC.i1054
  %163 = inttoptr i64 %159 to i64*
  store i64 %160, i64* %163
  store %struct.Memory* %loadMem_443758, %struct.Memory** %MEMORY
  %loadMem_44375c = load %struct.Memory*, %struct.Memory** %MEMORY
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 33
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %PC.i1052 = bitcast %union.anon* %166 to i64*
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %RCX.i1053 = bitcast %union.anon* %169 to i64*
  %170 = load i64, i64* %PC.i1052
  %171 = add i64 %170, 7
  store i64 %171, i64* %PC.i1052
  %172 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*)
  %173 = zext i32 %172 to i64
  store i64 %173, i64* %RCX.i1053, align 8
  store %struct.Memory* %loadMem_44375c, %struct.Memory** %MEMORY
  %loadMem_443763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 33
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %PC.i1049 = bitcast %union.anon* %176 to i64*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %ECX.i1050 = bitcast %union.anon* %179 to i32*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 15
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %RBP.i1051 = bitcast %union.anon* %182 to i64*
  %183 = load i64, i64* %RBP.i1051
  %184 = sub i64 %183, 92
  %185 = load i32, i32* %ECX.i1050
  %186 = zext i32 %185 to i64
  %187 = load i64, i64* %PC.i1049
  %188 = add i64 %187, 3
  store i64 %188, i64* %PC.i1049
  %189 = inttoptr i64 %184 to i32*
  store i32 %185, i32* %189
  store %struct.Memory* %loadMem_443763, %struct.Memory** %MEMORY
  %loadMem_443766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 33
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %PC.i1048 = bitcast %union.anon* %192 to i64*
  %193 = load i64, i64* %PC.i1048
  %194 = add i64 %193, 12
  store i64 %194, i64* %PC.i1048
  store i64 0, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  store %struct.Memory* %loadMem_443766, %struct.Memory** %MEMORY
  %loadMem_443772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 33
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0
  %PC.i1047 = bitcast %union.anon* %197 to i64*
  %198 = load i64, i64* %PC.i1047
  %199 = add i64 %198, 11
  store i64 %199, i64* %PC.i1047
  store i32 0, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*)
  store %struct.Memory* %loadMem_443772, %struct.Memory** %MEMORY
  %loadMem_44377d = load %struct.Memory*, %struct.Memory** %MEMORY
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 33
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %PC.i1044 = bitcast %union.anon* %202 to i64*
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 7
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %RDX.i1045 = bitcast %union.anon* %205 to i64*
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 15
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %RBP.i1046 = bitcast %union.anon* %208 to i64*
  %209 = load i64, i64* %RBP.i1046
  %210 = sub i64 %209, 16
  %211 = load i64, i64* %PC.i1044
  %212 = add i64 %211, 4
  store i64 %212, i64* %PC.i1044
  %213 = inttoptr i64 %210 to i64*
  %214 = load i64, i64* %213
  store i64 %214, i64* %RDX.i1045, align 8
  store %struct.Memory* %loadMem_44377d, %struct.Memory** %MEMORY
  %loadMem_443781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 33
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %PC.i1041 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RCX.i1042 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 7
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %RDX.i1043 = bitcast %union.anon* %223 to i64*
  %224 = load i64, i64* %RDX.i1043
  %225 = add i64 %224, 8
  %226 = load i64, i64* %PC.i1041
  %227 = add i64 %226, 3
  store i64 %227, i64* %PC.i1041
  %228 = inttoptr i64 %225 to i32*
  %229 = load i32, i32* %228
  %230 = zext i32 %229 to i64
  store i64 %230, i64* %RCX.i1042, align 8
  store %struct.Memory* %loadMem_443781, %struct.Memory** %MEMORY
  %loadMem_443784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 33
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %PC.i1038 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 5
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %ECX.i1039 = bitcast %union.anon* %236 to i32*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 15
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RBP.i1040 = bitcast %union.anon* %239 to i64*
  %240 = load i64, i64* %RBP.i1040
  %241 = sub i64 %240, 40
  %242 = load i32, i32* %ECX.i1039
  %243 = zext i32 %242 to i64
  %244 = load i64, i64* %PC.i1038
  %245 = add i64 %244, 3
  store i64 %245, i64* %PC.i1038
  %246 = inttoptr i64 %241 to i32*
  store i32 %242, i32* %246
  store %struct.Memory* %loadMem_443784, %struct.Memory** %MEMORY
  br label %block_.L_443787

block_.L_443787:                                  ; preds = %block_.L_443e3e, %entry
  %loadMem_443787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 33
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %PC.i1035 = bitcast %union.anon* %249 to i64*
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %RAX.i1036 = bitcast %union.anon* %252 to i64*
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 15
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %RBP.i1037 = bitcast %union.anon* %255 to i64*
  %256 = load i64, i64* %RBP.i1037
  %257 = sub i64 %256, 40
  %258 = load i64, i64* %PC.i1035
  %259 = add i64 %258, 3
  store i64 %259, i64* %PC.i1035
  %260 = inttoptr i64 %257 to i32*
  %261 = load i32, i32* %260
  %262 = zext i32 %261 to i64
  store i64 %262, i64* %RAX.i1036, align 8
  store %struct.Memory* %loadMem_443787, %struct.Memory** %MEMORY
  %loadMem_44378a = load %struct.Memory*, %struct.Memory** %MEMORY
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 33
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %PC.i1032 = bitcast %union.anon* %265 to i64*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %RCX.i1033 = bitcast %union.anon* %268 to i64*
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 15
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %RBP.i1034 = bitcast %union.anon* %271 to i64*
  %272 = load i64, i64* %RBP.i1034
  %273 = sub i64 %272, 16
  %274 = load i64, i64* %PC.i1032
  %275 = add i64 %274, 4
  store i64 %275, i64* %PC.i1032
  %276 = inttoptr i64 %273 to i64*
  %277 = load i64, i64* %276
  store i64 %277, i64* %RCX.i1033, align 8
  store %struct.Memory* %loadMem_44378a, %struct.Memory** %MEMORY
  %loadMem_44378e = load %struct.Memory*, %struct.Memory** %MEMORY
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 33
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %PC.i1029 = bitcast %union.anon* %280 to i64*
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %EAX.i1030 = bitcast %union.anon* %283 to i32*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 5
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %RCX.i1031 = bitcast %union.anon* %286 to i64*
  %287 = load i32, i32* %EAX.i1030
  %288 = zext i32 %287 to i64
  %289 = load i64, i64* %RCX.i1031
  %290 = add i64 %289, 4
  %291 = load i64, i64* %PC.i1029
  %292 = add i64 %291, 3
  store i64 %292, i64* %PC.i1029
  %293 = inttoptr i64 %290 to i32*
  %294 = load i32, i32* %293
  %295 = sub i32 %287, %294
  %296 = icmp ult i32 %287, %294
  %297 = zext i1 %296 to i8
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %297, i8* %298, align 1
  %299 = and i32 %295, 255
  %300 = call i32 @llvm.ctpop.i32(i32 %299)
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  %303 = xor i8 %302, 1
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %303, i8* %304, align 1
  %305 = xor i32 %294, %287
  %306 = xor i32 %305, %295
  %307 = lshr i32 %306, 4
  %308 = trunc i32 %307 to i8
  %309 = and i8 %308, 1
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %309, i8* %310, align 1
  %311 = icmp eq i32 %295, 0
  %312 = zext i1 %311 to i8
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %312, i8* %313, align 1
  %314 = lshr i32 %295, 31
  %315 = trunc i32 %314 to i8
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %315, i8* %316, align 1
  %317 = lshr i32 %287, 31
  %318 = lshr i32 %294, 31
  %319 = xor i32 %318, %317
  %320 = xor i32 %314, %317
  %321 = add i32 %320, %319
  %322 = icmp eq i32 %321, 2
  %323 = zext i1 %322 to i8
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %323, i8* %324, align 1
  store %struct.Memory* %loadMem_44378e, %struct.Memory** %MEMORY
  %loadMem_443791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 33
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %PC.i1028 = bitcast %union.anon* %327 to i64*
  %328 = load i64, i64* %PC.i1028
  %329 = add i64 %328, 1723
  %330 = load i64, i64* %PC.i1028
  %331 = add i64 %330, 6
  %332 = load i64, i64* %PC.i1028
  %333 = add i64 %332, 6
  store i64 %333, i64* %PC.i1028
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %335 = load i8, i8* %334, align 1
  %336 = icmp ne i8 %335, 0
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %338 = load i8, i8* %337, align 1
  %339 = icmp ne i8 %338, 0
  %340 = xor i1 %336, %339
  %341 = xor i1 %340, true
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %BRANCH_TAKEN, align 1
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %344 = select i1 %340, i64 %331, i64 %329
  store i64 %344, i64* %343, align 8
  store %struct.Memory* %loadMem_443791, %struct.Memory** %MEMORY
  %loadBr_443791 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443791 = icmp eq i8 %loadBr_443791, 1
  br i1 %cmpBr_443791, label %block_.L_443e4c, label %block_443797

block_443797:                                     ; preds = %block_.L_443787
  %loadMem_443797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 33
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %PC.i1025 = bitcast %union.anon* %347 to i64*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %RAX.i1026 = bitcast %union.anon* %350 to i64*
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 15
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %RBP.i1027 = bitcast %union.anon* %353 to i64*
  %354 = load i64, i64* %RBP.i1027
  %355 = sub i64 %354, 16
  %356 = load i64, i64* %PC.i1025
  %357 = add i64 %356, 4
  store i64 %357, i64* %PC.i1025
  %358 = inttoptr i64 %355 to i64*
  %359 = load i64, i64* %358
  store i64 %359, i64* %RAX.i1026, align 8
  store %struct.Memory* %loadMem_443797, %struct.Memory** %MEMORY
  %loadMem_44379b = load %struct.Memory*, %struct.Memory** %MEMORY
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 33
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %PC.i1023 = bitcast %union.anon* %362 to i64*
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %RAX.i1024 = bitcast %union.anon* %365 to i64*
  %366 = load i64, i64* %RAX.i1024
  %367 = add i64 %366, 24
  %368 = load i64, i64* %PC.i1023
  %369 = add i64 %368, 4
  store i64 %369, i64* %PC.i1023
  %370 = inttoptr i64 %367 to i64*
  %371 = load i64, i64* %370
  store i64 %371, i64* %RAX.i1024, align 8
  store %struct.Memory* %loadMem_44379b, %struct.Memory** %MEMORY
  %loadMem_44379f = load %struct.Memory*, %struct.Memory** %MEMORY
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 33
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %PC.i1020 = bitcast %union.anon* %374 to i64*
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 5
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %RCX.i1021 = bitcast %union.anon* %377 to i64*
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 15
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %RBP.i1022 = bitcast %union.anon* %380 to i64*
  %381 = load i64, i64* %RBP.i1022
  %382 = sub i64 %381, 40
  %383 = load i64, i64* %PC.i1020
  %384 = add i64 %383, 4
  store i64 %384, i64* %PC.i1020
  %385 = inttoptr i64 %382 to i32*
  %386 = load i32, i32* %385
  %387 = sext i32 %386 to i64
  store i64 %387, i64* %RCX.i1021, align 8
  store %struct.Memory* %loadMem_44379f, %struct.Memory** %MEMORY
  %loadMem_4437a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 33
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %PC.i1018 = bitcast %union.anon* %390 to i64*
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 5
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %RCX.i1019 = bitcast %union.anon* %393 to i64*
  %394 = load i64, i64* %RCX.i1019
  %395 = load i64, i64* %PC.i1018
  %396 = add i64 %395, 4
  store i64 %396, i64* %PC.i1018
  %397 = shl i64 %394, 3
  %398 = icmp slt i64 %397, 0
  %399 = shl i64 %397, 1
  store i64 %399, i64* %RCX.i1019, align 8
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %401 = zext i1 %398 to i8
  store i8 %401, i8* %400, align 1
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %403 = trunc i64 %399 to i32
  %404 = and i32 %403, 254
  %405 = call i32 @llvm.ctpop.i32(i32 %404)
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  %408 = xor i8 %407, 1
  store i8 %408, i8* %402, align 1
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %409, align 1
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %411 = icmp eq i64 %399, 0
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %410, align 1
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %414 = lshr i64 %399, 63
  %415 = trunc i64 %414 to i8
  store i8 %415, i8* %413, align 1
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %416, align 1
  store %struct.Memory* %loadMem_4437a3, %struct.Memory** %MEMORY
  %loadMem_4437a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 33
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %PC.i1015 = bitcast %union.anon* %419 to i64*
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %RAX.i1016 = bitcast %union.anon* %422 to i64*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 5
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %RCX.i1017 = bitcast %union.anon* %425 to i64*
  %426 = load i64, i64* %RAX.i1016
  %427 = load i64, i64* %RCX.i1017
  %428 = load i64, i64* %PC.i1015
  %429 = add i64 %428, 3
  store i64 %429, i64* %PC.i1015
  %430 = add i64 %427, %426
  store i64 %430, i64* %RAX.i1016, align 8
  %431 = icmp ult i64 %430, %426
  %432 = icmp ult i64 %430, %427
  %433 = or i1 %431, %432
  %434 = zext i1 %433 to i8
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %434, i8* %435, align 1
  %436 = trunc i64 %430 to i32
  %437 = and i32 %436, 255
  %438 = call i32 @llvm.ctpop.i32(i32 %437)
  %439 = trunc i32 %438 to i8
  %440 = and i8 %439, 1
  %441 = xor i8 %440, 1
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %441, i8* %442, align 1
  %443 = xor i64 %427, %426
  %444 = xor i64 %443, %430
  %445 = lshr i64 %444, 4
  %446 = trunc i64 %445 to i8
  %447 = and i8 %446, 1
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %447, i8* %448, align 1
  %449 = icmp eq i64 %430, 0
  %450 = zext i1 %449 to i8
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %450, i8* %451, align 1
  %452 = lshr i64 %430, 63
  %453 = trunc i64 %452 to i8
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %453, i8* %454, align 1
  %455 = lshr i64 %426, 63
  %456 = lshr i64 %427, 63
  %457 = xor i64 %452, %455
  %458 = xor i64 %452, %456
  %459 = add i64 %457, %458
  %460 = icmp eq i64 %459, 2
  %461 = zext i1 %460 to i8
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %461, i8* %462, align 1
  store %struct.Memory* %loadMem_4437a7, %struct.Memory** %MEMORY
  %loadMem_4437aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 33
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %PC.i1013 = bitcast %union.anon* %465 to i64*
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 1
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %RAX.i1014 = bitcast %union.anon* %468 to i64*
  %469 = load i64, i64* %RAX.i1014
  %470 = add i64 %469, 8
  %471 = load i64, i64* %PC.i1013
  %472 = add i64 %471, 4
  store i64 %472, i64* %PC.i1013
  %473 = inttoptr i64 %470 to i64*
  %474 = load i64, i64* %473
  store i64 %474, i64* %RAX.i1014, align 8
  store %struct.Memory* %loadMem_4437aa, %struct.Memory** %MEMORY
  %loadMem_4437ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 33
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %PC.i1010 = bitcast %union.anon* %477 to i64*
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 1
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %RAX.i1011 = bitcast %union.anon* %480 to i64*
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %482 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %481, i64 0, i64 0
  %YMM0.i1012 = bitcast %union.VectorReg* %482 to %"class.std::bitset"*
  %483 = bitcast %"class.std::bitset"* %YMM0.i1012 to i8*
  %484 = load i64, i64* %RAX.i1011
  %485 = add i64 %484, 124
  %486 = load i64, i64* %PC.i1010
  %487 = add i64 %486, 5
  store i64 %487, i64* %PC.i1010
  %488 = inttoptr i64 %485 to float*
  %489 = load float, float* %488
  %490 = bitcast i8* %483 to float*
  store float %489, float* %490, align 1
  %491 = getelementptr inbounds i8, i8* %483, i64 4
  %492 = bitcast i8* %491 to float*
  store float 0.000000e+00, float* %492, align 1
  %493 = getelementptr inbounds i8, i8* %483, i64 8
  %494 = bitcast i8* %493 to float*
  store float 0.000000e+00, float* %494, align 1
  %495 = getelementptr inbounds i8, i8* %483, i64 12
  %496 = bitcast i8* %495 to float*
  store float 0.000000e+00, float* %496, align 1
  store %struct.Memory* %loadMem_4437ae, %struct.Memory** %MEMORY
  %loadMem_4437b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 33
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %PC.i1007 = bitcast %union.anon* %499 to i64*
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %501 = getelementptr inbounds %struct.GPR, %struct.GPR* %500, i32 0, i32 15
  %502 = getelementptr inbounds %struct.Reg, %struct.Reg* %501, i32 0, i32 0
  %RBP.i1008 = bitcast %union.anon* %502 to i64*
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %504 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %503, i64 0, i64 0
  %XMM0.i1009 = bitcast %union.VectorReg* %504 to %union.vec128_t*
  %505 = load i64, i64* %RBP.i1008
  %506 = sub i64 %505, 96
  %507 = bitcast %union.vec128_t* %XMM0.i1009 to i8*
  %508 = load i64, i64* %PC.i1007
  %509 = add i64 %508, 5
  store i64 %509, i64* %PC.i1007
  %510 = bitcast i8* %507 to <2 x float>*
  %511 = load <2 x float>, <2 x float>* %510, align 1
  %512 = extractelement <2 x float> %511, i32 0
  %513 = inttoptr i64 %506 to float*
  store float %512, float* %513
  store %struct.Memory* %loadMem_4437b3, %struct.Memory** %MEMORY
  %loadMem_4437b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 33
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %PC.i1004 = bitcast %union.anon* %516 to i64*
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %518 = getelementptr inbounds %struct.GPR, %struct.GPR* %517, i32 0, i32 1
  %519 = getelementptr inbounds %struct.Reg, %struct.Reg* %518, i32 0, i32 0
  %RAX.i1005 = bitcast %union.anon* %519 to i64*
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 15
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %RBP.i1006 = bitcast %union.anon* %522 to i64*
  %523 = load i64, i64* %RBP.i1006
  %524 = sub i64 %523, 16
  %525 = load i64, i64* %PC.i1004
  %526 = add i64 %525, 4
  store i64 %526, i64* %PC.i1004
  %527 = inttoptr i64 %524 to i64*
  %528 = load i64, i64* %527
  store i64 %528, i64* %RAX.i1005, align 8
  store %struct.Memory* %loadMem_4437b8, %struct.Memory** %MEMORY
  %loadMem_4437bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 33
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %PC.i1002 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 1
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %RAX.i1003 = bitcast %union.anon* %534 to i64*
  %535 = load i64, i64* %RAX.i1003
  %536 = add i64 %535, 24
  %537 = load i64, i64* %PC.i1002
  %538 = add i64 %537, 4
  store i64 %538, i64* %PC.i1002
  %539 = inttoptr i64 %536 to i64*
  %540 = load i64, i64* %539
  store i64 %540, i64* %RAX.i1003, align 8
  store %struct.Memory* %loadMem_4437bc, %struct.Memory** %MEMORY
  %loadMem_4437c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 33
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %PC.i999 = bitcast %union.anon* %543 to i64*
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 5
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %RCX.i1000 = bitcast %union.anon* %546 to i64*
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 15
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %RBP.i1001 = bitcast %union.anon* %549 to i64*
  %550 = load i64, i64* %RBP.i1001
  %551 = sub i64 %550, 40
  %552 = load i64, i64* %PC.i999
  %553 = add i64 %552, 4
  store i64 %553, i64* %PC.i999
  %554 = inttoptr i64 %551 to i32*
  %555 = load i32, i32* %554
  %556 = sext i32 %555 to i64
  store i64 %556, i64* %RCX.i1000, align 8
  store %struct.Memory* %loadMem_4437c0, %struct.Memory** %MEMORY
  %loadMem_4437c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 33
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %PC.i997 = bitcast %union.anon* %559 to i64*
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 5
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %RCX.i998 = bitcast %union.anon* %562 to i64*
  %563 = load i64, i64* %RCX.i998
  %564 = load i64, i64* %PC.i997
  %565 = add i64 %564, 4
  store i64 %565, i64* %PC.i997
  %566 = shl i64 %563, 3
  %567 = icmp slt i64 %566, 0
  %568 = shl i64 %566, 1
  store i64 %568, i64* %RCX.i998, align 8
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %570 = zext i1 %567 to i8
  store i8 %570, i8* %569, align 1
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %572 = trunc i64 %568 to i32
  %573 = and i32 %572, 254
  %574 = call i32 @llvm.ctpop.i32(i32 %573)
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  %577 = xor i8 %576, 1
  store i8 %577, i8* %571, align 1
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %578, align 1
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %580 = icmp eq i64 %568, 0
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %579, align 1
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %583 = lshr i64 %568, 63
  %584 = trunc i64 %583 to i8
  store i8 %584, i8* %582, align 1
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %585, align 1
  store %struct.Memory* %loadMem_4437c4, %struct.Memory** %MEMORY
  %loadMem_4437c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 33
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %PC.i994 = bitcast %union.anon* %588 to i64*
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 1
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %RAX.i995 = bitcast %union.anon* %591 to i64*
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 5
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %RCX.i996 = bitcast %union.anon* %594 to i64*
  %595 = load i64, i64* %RAX.i995
  %596 = load i64, i64* %RCX.i996
  %597 = load i64, i64* %PC.i994
  %598 = add i64 %597, 3
  store i64 %598, i64* %PC.i994
  %599 = add i64 %596, %595
  store i64 %599, i64* %RAX.i995, align 8
  %600 = icmp ult i64 %599, %595
  %601 = icmp ult i64 %599, %596
  %602 = or i1 %600, %601
  %603 = zext i1 %602 to i8
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %603, i8* %604, align 1
  %605 = trunc i64 %599 to i32
  %606 = and i32 %605, 255
  %607 = call i32 @llvm.ctpop.i32(i32 %606)
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  %610 = xor i8 %609, 1
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %610, i8* %611, align 1
  %612 = xor i64 %596, %595
  %613 = xor i64 %612, %599
  %614 = lshr i64 %613, 4
  %615 = trunc i64 %614 to i8
  %616 = and i8 %615, 1
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %616, i8* %617, align 1
  %618 = icmp eq i64 %599, 0
  %619 = zext i1 %618 to i8
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %619, i8* %620, align 1
  %621 = lshr i64 %599, 63
  %622 = trunc i64 %621 to i8
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %622, i8* %623, align 1
  %624 = lshr i64 %595, 63
  %625 = lshr i64 %596, 63
  %626 = xor i64 %621, %624
  %627 = xor i64 %621, %625
  %628 = add i64 %626, %627
  %629 = icmp eq i64 %628, 2
  %630 = zext i1 %629 to i8
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %630, i8* %631, align 1
  store %struct.Memory* %loadMem_4437c8, %struct.Memory** %MEMORY
  %loadMem_4437cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 33
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %PC.i992 = bitcast %union.anon* %634 to i64*
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 1
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %RAX.i993 = bitcast %union.anon* %637 to i64*
  %638 = load i64, i64* %RAX.i993
  %639 = add i64 %638, 8
  %640 = load i64, i64* %PC.i992
  %641 = add i64 %640, 4
  store i64 %641, i64* %PC.i992
  %642 = inttoptr i64 %639 to i64*
  %643 = load i64, i64* %642
  store i64 %643, i64* %RAX.i993, align 8
  store %struct.Memory* %loadMem_4437cb, %struct.Memory** %MEMORY
  %loadMem_4437cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 33
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %PC.i989 = bitcast %union.anon* %646 to i64*
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 1
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %RAX.i990 = bitcast %union.anon* %649 to i64*
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 15
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %RBP.i991 = bitcast %union.anon* %652 to i64*
  %653 = load i64, i64* %RBP.i991
  %654 = sub i64 %653, 104
  %655 = load i64, i64* %RAX.i990
  %656 = load i64, i64* %PC.i989
  %657 = add i64 %656, 4
  store i64 %657, i64* %PC.i989
  %658 = inttoptr i64 %654 to i64*
  store i64 %655, i64* %658
  store %struct.Memory* %loadMem_4437cf, %struct.Memory** %MEMORY
  %loadMem_4437d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 33
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %PC.i986 = bitcast %union.anon* %661 to i64*
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 1
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %RAX.i987 = bitcast %union.anon* %664 to i64*
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %666 = getelementptr inbounds %struct.GPR, %struct.GPR* %665, i32 0, i32 15
  %667 = getelementptr inbounds %struct.Reg, %struct.Reg* %666, i32 0, i32 0
  %RBP.i988 = bitcast %union.anon* %667 to i64*
  %668 = load i64, i64* %RBP.i988
  %669 = sub i64 %668, 16
  %670 = load i64, i64* %PC.i986
  %671 = add i64 %670, 4
  store i64 %671, i64* %PC.i986
  %672 = inttoptr i64 %669 to i64*
  %673 = load i64, i64* %672
  store i64 %673, i64* %RAX.i987, align 8
  store %struct.Memory* %loadMem_4437d3, %struct.Memory** %MEMORY
  %loadMem_4437d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 33
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %PC.i984 = bitcast %union.anon* %676 to i64*
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 1
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %RAX.i985 = bitcast %union.anon* %679 to i64*
  %680 = load i64, i64* %RAX.i985
  %681 = add i64 %680, 24
  %682 = load i64, i64* %PC.i984
  %683 = add i64 %682, 4
  store i64 %683, i64* %PC.i984
  %684 = inttoptr i64 %681 to i64*
  %685 = load i64, i64* %684
  store i64 %685, i64* %RAX.i985, align 8
  store %struct.Memory* %loadMem_4437d7, %struct.Memory** %MEMORY
  %loadMem_4437db = load %struct.Memory*, %struct.Memory** %MEMORY
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 33
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %PC.i981 = bitcast %union.anon* %688 to i64*
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 5
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %RCX.i982 = bitcast %union.anon* %691 to i64*
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %693 = getelementptr inbounds %struct.GPR, %struct.GPR* %692, i32 0, i32 15
  %694 = getelementptr inbounds %struct.Reg, %struct.Reg* %693, i32 0, i32 0
  %RBP.i983 = bitcast %union.anon* %694 to i64*
  %695 = load i64, i64* %RBP.i983
  %696 = sub i64 %695, 40
  %697 = load i64, i64* %PC.i981
  %698 = add i64 %697, 4
  store i64 %698, i64* %PC.i981
  %699 = inttoptr i64 %696 to i32*
  %700 = load i32, i32* %699
  %701 = sext i32 %700 to i64
  store i64 %701, i64* %RCX.i982, align 8
  store %struct.Memory* %loadMem_4437db, %struct.Memory** %MEMORY
  %loadMem_4437df = load %struct.Memory*, %struct.Memory** %MEMORY
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 33
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %PC.i979 = bitcast %union.anon* %704 to i64*
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %706 = getelementptr inbounds %struct.GPR, %struct.GPR* %705, i32 0, i32 5
  %707 = getelementptr inbounds %struct.Reg, %struct.Reg* %706, i32 0, i32 0
  %RCX.i980 = bitcast %union.anon* %707 to i64*
  %708 = load i64, i64* %RCX.i980
  %709 = load i64, i64* %PC.i979
  %710 = add i64 %709, 4
  store i64 %710, i64* %PC.i979
  %711 = shl i64 %708, 3
  %712 = icmp slt i64 %711, 0
  %713 = shl i64 %711, 1
  store i64 %713, i64* %RCX.i980, align 8
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %715 = zext i1 %712 to i8
  store i8 %715, i8* %714, align 1
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %717 = trunc i64 %713 to i32
  %718 = and i32 %717, 254
  %719 = call i32 @llvm.ctpop.i32(i32 %718)
  %720 = trunc i32 %719 to i8
  %721 = and i8 %720, 1
  %722 = xor i8 %721, 1
  store i8 %722, i8* %716, align 1
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %723, align 1
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %725 = icmp eq i64 %713, 0
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %724, align 1
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %728 = lshr i64 %713, 63
  %729 = trunc i64 %728 to i8
  store i8 %729, i8* %727, align 1
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %730, align 1
  store %struct.Memory* %loadMem_4437df, %struct.Memory** %MEMORY
  %loadMem_4437e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 33
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %PC.i976 = bitcast %union.anon* %733 to i64*
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 1
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %RAX.i977 = bitcast %union.anon* %736 to i64*
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 5
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %RCX.i978 = bitcast %union.anon* %739 to i64*
  %740 = load i64, i64* %RAX.i977
  %741 = load i64, i64* %RCX.i978
  %742 = load i64, i64* %PC.i976
  %743 = add i64 %742, 3
  store i64 %743, i64* %PC.i976
  %744 = add i64 %741, %740
  store i64 %744, i64* %RAX.i977, align 8
  %745 = icmp ult i64 %744, %740
  %746 = icmp ult i64 %744, %741
  %747 = or i1 %745, %746
  %748 = zext i1 %747 to i8
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %748, i8* %749, align 1
  %750 = trunc i64 %744 to i32
  %751 = and i32 %750, 255
  %752 = call i32 @llvm.ctpop.i32(i32 %751)
  %753 = trunc i32 %752 to i8
  %754 = and i8 %753, 1
  %755 = xor i8 %754, 1
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %755, i8* %756, align 1
  %757 = xor i64 %741, %740
  %758 = xor i64 %757, %744
  %759 = lshr i64 %758, 4
  %760 = trunc i64 %759 to i8
  %761 = and i8 %760, 1
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %761, i8* %762, align 1
  %763 = icmp eq i64 %744, 0
  %764 = zext i1 %763 to i8
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %764, i8* %765, align 1
  %766 = lshr i64 %744, 63
  %767 = trunc i64 %766 to i8
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %767, i8* %768, align 1
  %769 = lshr i64 %740, 63
  %770 = lshr i64 %741, 63
  %771 = xor i64 %766, %769
  %772 = xor i64 %766, %770
  %773 = add i64 %771, %772
  %774 = icmp eq i64 %773, 2
  %775 = zext i1 %774 to i8
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %775, i8* %776, align 1
  store %struct.Memory* %loadMem_4437e3, %struct.Memory** %MEMORY
  %loadMem_4437e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 33
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %PC.i973 = bitcast %union.anon* %779 to i64*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 1
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %RAX.i974 = bitcast %union.anon* %782 to i64*
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %784 = getelementptr inbounds %struct.GPR, %struct.GPR* %783, i32 0, i32 7
  %785 = getelementptr inbounds %struct.Reg, %struct.Reg* %784, i32 0, i32 0
  %RDX.i975 = bitcast %union.anon* %785 to i64*
  %786 = load i64, i64* %RAX.i974
  %787 = load i64, i64* %PC.i973
  %788 = add i64 %787, 2
  store i64 %788, i64* %PC.i973
  %789 = inttoptr i64 %786 to i32*
  %790 = load i32, i32* %789
  %791 = zext i32 %790 to i64
  store i64 %791, i64* %RDX.i975, align 8
  store %struct.Memory* %loadMem_4437e6, %struct.Memory** %MEMORY
  %loadMem_4437e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 33
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %PC.i970 = bitcast %union.anon* %794 to i64*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 7
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %EDX.i971 = bitcast %union.anon* %797 to i32*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 15
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %RBP.i972 = bitcast %union.anon* %800 to i64*
  %801 = load i64, i64* %RBP.i972
  %802 = sub i64 %801, 108
  %803 = load i32, i32* %EDX.i971
  %804 = zext i32 %803 to i64
  %805 = load i64, i64* %PC.i970
  %806 = add i64 %805, 3
  store i64 %806, i64* %PC.i970
  %807 = inttoptr i64 %802 to i32*
  store i32 %803, i32* %807
  store %struct.Memory* %loadMem_4437e8, %struct.Memory** %MEMORY
  %loadMem_4437eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 33
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %PC.i967 = bitcast %union.anon* %810 to i64*
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 7
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %RDX.i968 = bitcast %union.anon* %813 to i64*
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 15
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %RBP.i969 = bitcast %union.anon* %816 to i64*
  %817 = load i64, i64* %RBP.i969
  %818 = sub i64 %817, 40
  %819 = load i64, i64* %PC.i967
  %820 = add i64 %819, 3
  store i64 %820, i64* %PC.i967
  %821 = inttoptr i64 %818 to i32*
  %822 = load i32, i32* %821
  %823 = zext i32 %822 to i64
  store i64 %823, i64* %RDX.i968, align 8
  store %struct.Memory* %loadMem_4437eb, %struct.Memory** %MEMORY
  %loadMem_4437ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 33
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %PC.i964 = bitcast %union.anon* %826 to i64*
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %828 = getelementptr inbounds %struct.GPR, %struct.GPR* %827, i32 0, i32 1
  %829 = getelementptr inbounds %struct.Reg, %struct.Reg* %828, i32 0, i32 0
  %RAX.i965 = bitcast %union.anon* %829 to i64*
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 15
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %RBP.i966 = bitcast %union.anon* %832 to i64*
  %833 = load i64, i64* %RBP.i966
  %834 = sub i64 %833, 16
  %835 = load i64, i64* %PC.i964
  %836 = add i64 %835, 4
  store i64 %836, i64* %PC.i964
  %837 = inttoptr i64 %834 to i64*
  %838 = load i64, i64* %837
  store i64 %838, i64* %RAX.i965, align 8
  store %struct.Memory* %loadMem_4437ee, %struct.Memory** %MEMORY
  %loadMem_4437f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 33
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %PC.i961 = bitcast %union.anon* %841 to i64*
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 7
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %EDX.i962 = bitcast %union.anon* %844 to i32*
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 1
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %RAX.i963 = bitcast %union.anon* %847 to i64*
  %848 = load i32, i32* %EDX.i962
  %849 = zext i32 %848 to i64
  %850 = load i64, i64* %RAX.i963
  %851 = add i64 %850, 12
  %852 = load i64, i64* %PC.i961
  %853 = add i64 %852, 3
  store i64 %853, i64* %PC.i961
  %854 = inttoptr i64 %851 to i32*
  %855 = load i32, i32* %854
  %856 = sub i32 %848, %855
  %857 = icmp ult i32 %848, %855
  %858 = zext i1 %857 to i8
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %858, i8* %859, align 1
  %860 = and i32 %856, 255
  %861 = call i32 @llvm.ctpop.i32(i32 %860)
  %862 = trunc i32 %861 to i8
  %863 = and i8 %862, 1
  %864 = xor i8 %863, 1
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %864, i8* %865, align 1
  %866 = xor i32 %855, %848
  %867 = xor i32 %866, %856
  %868 = lshr i32 %867, 4
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %870, i8* %871, align 1
  %872 = icmp eq i32 %856, 0
  %873 = zext i1 %872 to i8
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %873, i8* %874, align 1
  %875 = lshr i32 %856, 31
  %876 = trunc i32 %875 to i8
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %876, i8* %877, align 1
  %878 = lshr i32 %848, 31
  %879 = lshr i32 %855, 31
  %880 = xor i32 %879, %878
  %881 = xor i32 %875, %878
  %882 = add i32 %881, %880
  %883 = icmp eq i32 %882, 2
  %884 = zext i1 %883 to i8
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %884, i8* %885, align 1
  store %struct.Memory* %loadMem_4437f2, %struct.Memory** %MEMORY
  %loadMem_4437f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 33
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %PC.i960 = bitcast %union.anon* %888 to i64*
  %889 = load i64, i64* %PC.i960
  %890 = add i64 %889, 418
  %891 = load i64, i64* %PC.i960
  %892 = add i64 %891, 6
  %893 = load i64, i64* %PC.i960
  %894 = add i64 %893, 6
  store i64 %894, i64* %PC.i960
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %896 = load i8, i8* %895, align 1
  %897 = icmp ne i8 %896, 0
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %899 = load i8, i8* %898, align 1
  %900 = icmp ne i8 %899, 0
  %901 = xor i1 %897, %900
  %902 = zext i1 %901 to i8
  store i8 %902, i8* %BRANCH_TAKEN, align 1
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %904 = select i1 %901, i64 %890, i64 %892
  store i64 %904, i64* %903, align 8
  store %struct.Memory* %loadMem_4437f5, %struct.Memory** %MEMORY
  %loadBr_4437f5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4437f5 = icmp eq i8 %loadBr_4437f5, 1
  br i1 %cmpBr_4437f5, label %block_.L_443997, label %block_4437fb

block_4437fb:                                     ; preds = %block_443797
  %loadMem_4437fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 33
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %PC.i957 = bitcast %union.anon* %907 to i64*
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %909 = getelementptr inbounds %struct.GPR, %struct.GPR* %908, i32 0, i32 1
  %910 = getelementptr inbounds %struct.Reg, %struct.Reg* %909, i32 0, i32 0
  %RAX.i958 = bitcast %union.anon* %910 to i64*
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %912 = getelementptr inbounds %struct.GPR, %struct.GPR* %911, i32 0, i32 15
  %913 = getelementptr inbounds %struct.Reg, %struct.Reg* %912, i32 0, i32 0
  %RBP.i959 = bitcast %union.anon* %913 to i64*
  %914 = load i64, i64* %RBP.i959
  %915 = sub i64 %914, 16
  %916 = load i64, i64* %PC.i957
  %917 = add i64 %916, 4
  store i64 %917, i64* %PC.i957
  %918 = inttoptr i64 %915 to i64*
  %919 = load i64, i64* %918
  store i64 %919, i64* %RAX.i958, align 8
  store %struct.Memory* %loadMem_4437fb, %struct.Memory** %MEMORY
  %loadMem_4437ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 33
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %PC.i954 = bitcast %union.anon* %922 to i64*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 1
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %RAX.i955 = bitcast %union.anon* %925 to i64*
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 5
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %RCX.i956 = bitcast %union.anon* %928 to i64*
  %929 = load i64, i64* %RAX.i955
  %930 = add i64 %929, 4
  %931 = load i64, i64* %PC.i954
  %932 = add i64 %931, 3
  store i64 %932, i64* %PC.i954
  %933 = inttoptr i64 %930 to i32*
  %934 = load i32, i32* %933
  %935 = zext i32 %934 to i64
  store i64 %935, i64* %RCX.i956, align 8
  store %struct.Memory* %loadMem_4437ff, %struct.Memory** %MEMORY
  %loadMem_443802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %937 = getelementptr inbounds %struct.GPR, %struct.GPR* %936, i32 0, i32 33
  %938 = getelementptr inbounds %struct.Reg, %struct.Reg* %937, i32 0, i32 0
  %PC.i952 = bitcast %union.anon* %938 to i64*
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %940 = getelementptr inbounds %struct.GPR, %struct.GPR* %939, i32 0, i32 5
  %941 = getelementptr inbounds %struct.Reg, %struct.Reg* %940, i32 0, i32 0
  %RCX.i953 = bitcast %union.anon* %941 to i64*
  %942 = load i64, i64* %RCX.i953
  %943 = load i64, i64* %PC.i952
  %944 = add i64 %943, 3
  store i64 %944, i64* %PC.i952
  %945 = trunc i64 %942 to i32
  %946 = sub i32 %945, 1
  %947 = zext i32 %946 to i64
  store i64 %947, i64* %RCX.i953, align 8
  %948 = icmp ult i32 %945, 1
  %949 = zext i1 %948 to i8
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %949, i8* %950, align 1
  %951 = and i32 %946, 255
  %952 = call i32 @llvm.ctpop.i32(i32 %951)
  %953 = trunc i32 %952 to i8
  %954 = and i8 %953, 1
  %955 = xor i8 %954, 1
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %955, i8* %956, align 1
  %957 = xor i64 1, %942
  %958 = trunc i64 %957 to i32
  %959 = xor i32 %958, %946
  %960 = lshr i32 %959, 4
  %961 = trunc i32 %960 to i8
  %962 = and i8 %961, 1
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %962, i8* %963, align 1
  %964 = icmp eq i32 %946, 0
  %965 = zext i1 %964 to i8
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %965, i8* %966, align 1
  %967 = lshr i32 %946, 31
  %968 = trunc i32 %967 to i8
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %968, i8* %969, align 1
  %970 = lshr i32 %945, 31
  %971 = xor i32 %967, %970
  %972 = add i32 %971, %970
  %973 = icmp eq i32 %972, 2
  %974 = zext i1 %973 to i8
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %974, i8* %975, align 1
  store %struct.Memory* %loadMem_443802, %struct.Memory** %MEMORY
  %loadMem_443805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 33
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %PC.i949 = bitcast %union.anon* %978 to i64*
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 5
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %ECX.i950 = bitcast %union.anon* %981 to i32*
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %983 = getelementptr inbounds %struct.GPR, %struct.GPR* %982, i32 0, i32 15
  %984 = getelementptr inbounds %struct.Reg, %struct.Reg* %983, i32 0, i32 0
  %RBP.i951 = bitcast %union.anon* %984 to i64*
  %985 = load i64, i64* %RBP.i951
  %986 = sub i64 %985, 44
  %987 = load i32, i32* %ECX.i950
  %988 = zext i32 %987 to i64
  %989 = load i64, i64* %PC.i949
  %990 = add i64 %989, 3
  store i64 %990, i64* %PC.i949
  %991 = inttoptr i64 %986 to i32*
  store i32 %987, i32* %991
  store %struct.Memory* %loadMem_443805, %struct.Memory** %MEMORY
  br label %block_.L_443808

block_.L_443808:                                  ; preds = %block_.L_44397c, %block_4437fb
  %loadMem_443808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 33
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %PC.i946 = bitcast %union.anon* %994 to i64*
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 1
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %RAX.i947 = bitcast %union.anon* %997 to i64*
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 15
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %RBP.i948 = bitcast %union.anon* %1000 to i64*
  %1001 = load i64, i64* %RBP.i948
  %1002 = sub i64 %1001, 44
  %1003 = load i64, i64* %PC.i946
  %1004 = add i64 %1003, 3
  store i64 %1004, i64* %PC.i946
  %1005 = inttoptr i64 %1002 to i32*
  %1006 = load i32, i32* %1005
  %1007 = zext i32 %1006 to i64
  store i64 %1007, i64* %RAX.i947, align 8
  store %struct.Memory* %loadMem_443808, %struct.Memory** %MEMORY
  %loadMem_44380b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 33
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %PC.i943 = bitcast %union.anon* %1010 to i64*
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 1
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %EAX.i944 = bitcast %union.anon* %1013 to i32*
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1015 = getelementptr inbounds %struct.GPR, %struct.GPR* %1014, i32 0, i32 15
  %1016 = getelementptr inbounds %struct.Reg, %struct.Reg* %1015, i32 0, i32 0
  %RBP.i945 = bitcast %union.anon* %1016 to i64*
  %1017 = load i32, i32* %EAX.i944
  %1018 = zext i32 %1017 to i64
  %1019 = load i64, i64* %RBP.i945
  %1020 = sub i64 %1019, 40
  %1021 = load i64, i64* %PC.i943
  %1022 = add i64 %1021, 3
  store i64 %1022, i64* %PC.i943
  %1023 = inttoptr i64 %1020 to i32*
  %1024 = load i32, i32* %1023
  %1025 = sub i32 %1017, %1024
  %1026 = icmp ult i32 %1017, %1024
  %1027 = zext i1 %1026 to i8
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1027, i8* %1028, align 1
  %1029 = and i32 %1025, 255
  %1030 = call i32 @llvm.ctpop.i32(i32 %1029)
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  %1033 = xor i8 %1032, 1
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1033, i8* %1034, align 1
  %1035 = xor i32 %1024, %1017
  %1036 = xor i32 %1035, %1025
  %1037 = lshr i32 %1036, 4
  %1038 = trunc i32 %1037 to i8
  %1039 = and i8 %1038, 1
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1039, i8* %1040, align 1
  %1041 = icmp eq i32 %1025, 0
  %1042 = zext i1 %1041 to i8
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1042, i8* %1043, align 1
  %1044 = lshr i32 %1025, 31
  %1045 = trunc i32 %1044 to i8
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1045, i8* %1046, align 1
  %1047 = lshr i32 %1017, 31
  %1048 = lshr i32 %1024, 31
  %1049 = xor i32 %1048, %1047
  %1050 = xor i32 %1044, %1047
  %1051 = add i32 %1050, %1049
  %1052 = icmp eq i32 %1051, 2
  %1053 = zext i1 %1052 to i8
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1053, i8* %1054, align 1
  store %struct.Memory* %loadMem_44380b, %struct.Memory** %MEMORY
  %loadMem_44380e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1056 = getelementptr inbounds %struct.GPR, %struct.GPR* %1055, i32 0, i32 33
  %1057 = getelementptr inbounds %struct.Reg, %struct.Reg* %1056, i32 0, i32 0
  %PC.i942 = bitcast %union.anon* %1057 to i64*
  %1058 = load i64, i64* %PC.i942
  %1059 = add i64 %1058, 380
  %1060 = load i64, i64* %PC.i942
  %1061 = add i64 %1060, 6
  %1062 = load i64, i64* %PC.i942
  %1063 = add i64 %1062, 6
  store i64 %1063, i64* %PC.i942
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1065 = load i8, i8* %1064, align 1
  %1066 = icmp ne i8 %1065, 0
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1068 = load i8, i8* %1067, align 1
  %1069 = icmp ne i8 %1068, 0
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1071 = load i8, i8* %1070, align 1
  %1072 = icmp ne i8 %1071, 0
  %1073 = xor i1 %1069, %1072
  %1074 = or i1 %1066, %1073
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %BRANCH_TAKEN, align 1
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1077 = select i1 %1074, i64 %1059, i64 %1061
  store i64 %1077, i64* %1076, align 8
  store %struct.Memory* %loadMem_44380e, %struct.Memory** %MEMORY
  %loadBr_44380e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44380e = icmp eq i8 %loadBr_44380e, 1
  br i1 %cmpBr_44380e, label %block_.L_44398a, label %block_443814

block_443814:                                     ; preds = %block_.L_443808
  %loadMem_443814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1079 = getelementptr inbounds %struct.GPR, %struct.GPR* %1078, i32 0, i32 33
  %1080 = getelementptr inbounds %struct.Reg, %struct.Reg* %1079, i32 0, i32 0
  %PC.i939 = bitcast %union.anon* %1080 to i64*
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 1
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %RAX.i940 = bitcast %union.anon* %1083 to i64*
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 15
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %RBP.i941 = bitcast %union.anon* %1086 to i64*
  %1087 = load i64, i64* %RBP.i941
  %1088 = sub i64 %1087, 16
  %1089 = load i64, i64* %PC.i939
  %1090 = add i64 %1089, 4
  store i64 %1090, i64* %PC.i939
  %1091 = inttoptr i64 %1088 to i64*
  %1092 = load i64, i64* %1091
  store i64 %1092, i64* %RAX.i940, align 8
  store %struct.Memory* %loadMem_443814, %struct.Memory** %MEMORY
  %loadMem_443818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 33
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %PC.i937 = bitcast %union.anon* %1095 to i64*
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 1
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %RAX.i938 = bitcast %union.anon* %1098 to i64*
  %1099 = load i64, i64* %RAX.i938
  %1100 = add i64 %1099, 24
  %1101 = load i64, i64* %PC.i937
  %1102 = add i64 %1101, 4
  store i64 %1102, i64* %PC.i937
  %1103 = inttoptr i64 %1100 to i64*
  %1104 = load i64, i64* %1103
  store i64 %1104, i64* %RAX.i938, align 8
  store %struct.Memory* %loadMem_443818, %struct.Memory** %MEMORY
  %loadMem_44381c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 33
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %PC.i934 = bitcast %union.anon* %1107 to i64*
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 5
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %RCX.i935 = bitcast %union.anon* %1110 to i64*
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 15
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %RBP.i936 = bitcast %union.anon* %1113 to i64*
  %1114 = load i64, i64* %RBP.i936
  %1115 = sub i64 %1114, 44
  %1116 = load i64, i64* %PC.i934
  %1117 = add i64 %1116, 4
  store i64 %1117, i64* %PC.i934
  %1118 = inttoptr i64 %1115 to i32*
  %1119 = load i32, i32* %1118
  %1120 = sext i32 %1119 to i64
  store i64 %1120, i64* %RCX.i935, align 8
  store %struct.Memory* %loadMem_44381c, %struct.Memory** %MEMORY
  %loadMem_443820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 33
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %PC.i932 = bitcast %union.anon* %1123 to i64*
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 5
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %RCX.i933 = bitcast %union.anon* %1126 to i64*
  %1127 = load i64, i64* %RCX.i933
  %1128 = load i64, i64* %PC.i932
  %1129 = add i64 %1128, 4
  store i64 %1129, i64* %PC.i932
  %1130 = shl i64 %1127, 3
  %1131 = icmp slt i64 %1130, 0
  %1132 = shl i64 %1130, 1
  store i64 %1132, i64* %RCX.i933, align 8
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1134 = zext i1 %1131 to i8
  store i8 %1134, i8* %1133, align 1
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1136 = trunc i64 %1132 to i32
  %1137 = and i32 %1136, 254
  %1138 = call i32 @llvm.ctpop.i32(i32 %1137)
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  %1141 = xor i8 %1140, 1
  store i8 %1141, i8* %1135, align 1
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1142, align 1
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1144 = icmp eq i64 %1132, 0
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %1143, align 1
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1147 = lshr i64 %1132, 63
  %1148 = trunc i64 %1147 to i8
  store i8 %1148, i8* %1146, align 1
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1149, align 1
  store %struct.Memory* %loadMem_443820, %struct.Memory** %MEMORY
  %loadMem_443824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1151 = getelementptr inbounds %struct.GPR, %struct.GPR* %1150, i32 0, i32 33
  %1152 = getelementptr inbounds %struct.Reg, %struct.Reg* %1151, i32 0, i32 0
  %PC.i929 = bitcast %union.anon* %1152 to i64*
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 1
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %RAX.i930 = bitcast %union.anon* %1155 to i64*
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 5
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %RCX.i931 = bitcast %union.anon* %1158 to i64*
  %1159 = load i64, i64* %RAX.i930
  %1160 = load i64, i64* %RCX.i931
  %1161 = load i64, i64* %PC.i929
  %1162 = add i64 %1161, 3
  store i64 %1162, i64* %PC.i929
  %1163 = add i64 %1160, %1159
  store i64 %1163, i64* %RAX.i930, align 8
  %1164 = icmp ult i64 %1163, %1159
  %1165 = icmp ult i64 %1163, %1160
  %1166 = or i1 %1164, %1165
  %1167 = zext i1 %1166 to i8
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1167, i8* %1168, align 1
  %1169 = trunc i64 %1163 to i32
  %1170 = and i32 %1169, 255
  %1171 = call i32 @llvm.ctpop.i32(i32 %1170)
  %1172 = trunc i32 %1171 to i8
  %1173 = and i8 %1172, 1
  %1174 = xor i8 %1173, 1
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1174, i8* %1175, align 1
  %1176 = xor i64 %1160, %1159
  %1177 = xor i64 %1176, %1163
  %1178 = lshr i64 %1177, 4
  %1179 = trunc i64 %1178 to i8
  %1180 = and i8 %1179, 1
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1180, i8* %1181, align 1
  %1182 = icmp eq i64 %1163, 0
  %1183 = zext i1 %1182 to i8
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1183, i8* %1184, align 1
  %1185 = lshr i64 %1163, 63
  %1186 = trunc i64 %1185 to i8
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1186, i8* %1187, align 1
  %1188 = lshr i64 %1159, 63
  %1189 = lshr i64 %1160, 63
  %1190 = xor i64 %1185, %1188
  %1191 = xor i64 %1185, %1189
  %1192 = add i64 %1190, %1191
  %1193 = icmp eq i64 %1192, 2
  %1194 = zext i1 %1193 to i8
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1194, i8* %1195, align 1
  store %struct.Memory* %loadMem_443824, %struct.Memory** %MEMORY
  %loadMem_443827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1197 = getelementptr inbounds %struct.GPR, %struct.GPR* %1196, i32 0, i32 33
  %1198 = getelementptr inbounds %struct.Reg, %struct.Reg* %1197, i32 0, i32 0
  %PC.i927 = bitcast %union.anon* %1198 to i64*
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 1
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %RAX.i928 = bitcast %union.anon* %1201 to i64*
  %1202 = load i64, i64* %RAX.i928
  %1203 = add i64 %1202, 8
  %1204 = load i64, i64* %PC.i927
  %1205 = add i64 %1204, 4
  store i64 %1205, i64* %PC.i927
  %1206 = inttoptr i64 %1203 to i64*
  %1207 = load i64, i64* %1206
  store i64 %1207, i64* %RAX.i928, align 8
  store %struct.Memory* %loadMem_443827, %struct.Memory** %MEMORY
  %loadMem_44382b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 33
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %PC.i924 = bitcast %union.anon* %1210 to i64*
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 1
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %RAX.i925 = bitcast %union.anon* %1213 to i64*
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1215 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1214, i64 0, i64 0
  %YMM0.i926 = bitcast %union.VectorReg* %1215 to %"class.std::bitset"*
  %1216 = bitcast %"class.std::bitset"* %YMM0.i926 to i8*
  %1217 = load i64, i64* %RAX.i925
  %1218 = add i64 %1217, 124
  %1219 = load i64, i64* %PC.i924
  %1220 = add i64 %1219, 5
  store i64 %1220, i64* %PC.i924
  %1221 = inttoptr i64 %1218 to float*
  %1222 = load float, float* %1221
  %1223 = bitcast i8* %1216 to float*
  store float %1222, float* %1223, align 1
  %1224 = getelementptr inbounds i8, i8* %1216, i64 4
  %1225 = bitcast i8* %1224 to float*
  store float 0.000000e+00, float* %1225, align 1
  %1226 = getelementptr inbounds i8, i8* %1216, i64 8
  %1227 = bitcast i8* %1226 to float*
  store float 0.000000e+00, float* %1227, align 1
  %1228 = getelementptr inbounds i8, i8* %1216, i64 12
  %1229 = bitcast i8* %1228 to float*
  store float 0.000000e+00, float* %1229, align 1
  store %struct.Memory* %loadMem_44382b, %struct.Memory** %MEMORY
  %loadMem_443830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 33
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %PC.i921 = bitcast %union.anon* %1232 to i64*
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 15
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %RBP.i922 = bitcast %union.anon* %1235 to i64*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1237 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1236, i64 0, i64 0
  %XMM0.i923 = bitcast %union.VectorReg* %1237 to %union.vec128_t*
  %1238 = load i64, i64* %RBP.i922
  %1239 = sub i64 %1238, 112
  %1240 = bitcast %union.vec128_t* %XMM0.i923 to i8*
  %1241 = load i64, i64* %PC.i921
  %1242 = add i64 %1241, 5
  store i64 %1242, i64* %PC.i921
  %1243 = bitcast i8* %1240 to <2 x float>*
  %1244 = load <2 x float>, <2 x float>* %1243, align 1
  %1245 = extractelement <2 x float> %1244, i32 0
  %1246 = inttoptr i64 %1239 to float*
  store float %1245, float* %1246
  store %struct.Memory* %loadMem_443830, %struct.Memory** %MEMORY
  %loadMem_443835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 33
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %PC.i919 = bitcast %union.anon* %1249 to i64*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 15
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %RBP.i920 = bitcast %union.anon* %1252 to i64*
  %1253 = load i64, i64* %RBP.i920
  %1254 = sub i64 %1253, 120
  %1255 = load i64, i64* %PC.i919
  %1256 = add i64 %1255, 8
  store i64 %1256, i64* %PC.i919
  %1257 = inttoptr i64 %1254 to i64*
  store i64 0, i64* %1257
  store %struct.Memory* %loadMem_443835, %struct.Memory** %MEMORY
  %loadMem_44383d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 33
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %PC.i917 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 15
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %RBP.i918 = bitcast %union.anon* %1263 to i64*
  %1264 = load i64, i64* %RBP.i918
  %1265 = sub i64 %1264, 124
  %1266 = load i64, i64* %PC.i917
  %1267 = add i64 %1266, 7
  store i64 %1267, i64* %PC.i917
  %1268 = inttoptr i64 %1265 to i32*
  store i32 0, i32* %1268
  store %struct.Memory* %loadMem_44383d, %struct.Memory** %MEMORY
  %loadMem_443844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 33
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %PC.i914 = bitcast %union.anon* %1271 to i64*
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 15
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %RBP.i915 = bitcast %union.anon* %1274 to i64*
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1276 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1275, i64 0, i64 0
  %YMM0.i916 = bitcast %union.VectorReg* %1276 to %"class.std::bitset"*
  %1277 = bitcast %"class.std::bitset"* %YMM0.i916 to i8*
  %1278 = load i64, i64* %RBP.i915
  %1279 = sub i64 %1278, 112
  %1280 = load i64, i64* %PC.i914
  %1281 = add i64 %1280, 5
  store i64 %1281, i64* %PC.i914
  %1282 = inttoptr i64 %1279 to float*
  %1283 = load float, float* %1282
  %1284 = bitcast i8* %1277 to float*
  store float %1283, float* %1284, align 1
  %1285 = getelementptr inbounds i8, i8* %1277, i64 4
  %1286 = bitcast i8* %1285 to float*
  store float 0.000000e+00, float* %1286, align 1
  %1287 = getelementptr inbounds i8, i8* %1277, i64 8
  %1288 = bitcast i8* %1287 to float*
  store float 0.000000e+00, float* %1288, align 1
  %1289 = getelementptr inbounds i8, i8* %1277, i64 12
  %1290 = bitcast i8* %1289 to float*
  store float 0.000000e+00, float* %1290, align 1
  store %struct.Memory* %loadMem_443844, %struct.Memory** %MEMORY
  %loadMem_443849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 33
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %PC.i908 = bitcast %union.anon* %1293 to i64*
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 15
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %RBP.i909 = bitcast %union.anon* %1296 to i64*
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1298 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1297, i64 0, i64 0
  %XMM0.i910 = bitcast %union.VectorReg* %1298 to %union.vec128_t*
  %1299 = bitcast %union.vec128_t* %XMM0.i910 to i8*
  %1300 = load i64, i64* %RBP.i909
  %1301 = sub i64 %1300, 96
  %1302 = load i64, i64* %PC.i908
  %1303 = add i64 %1302, 4
  store i64 %1303, i64* %PC.i908
  %1304 = bitcast i8* %1299 to <2 x float>*
  %1305 = load <2 x float>, <2 x float>* %1304, align 1
  %1306 = extractelement <2 x float> %1305, i32 0
  %1307 = inttoptr i64 %1301 to float*
  %1308 = load float, float* %1307
  %1309 = fcmp uno float %1306, %1308
  br i1 %1309, label %1310, label %1322

; <label>:1310:                                   ; preds = %block_443814
  %1311 = fadd float %1306, %1308
  %1312 = bitcast float %1311 to i32
  %1313 = and i32 %1312, 2143289344
  %1314 = icmp eq i32 %1313, 2139095040
  %1315 = and i32 %1312, 4194303
  %1316 = icmp ne i32 %1315, 0
  %1317 = and i1 %1314, %1316
  br i1 %1317, label %1318, label %1328

; <label>:1318:                                   ; preds = %1310
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1320 = load i64, i64* %1319, align 8
  %1321 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1320, %struct.Memory* %loadMem_443849)
  br label %routine_ucomiss_MINUS0x60__rbp____xmm0.exit911

; <label>:1322:                                   ; preds = %block_443814
  %1323 = fcmp ogt float %1306, %1308
  br i1 %1323, label %1328, label %1324

; <label>:1324:                                   ; preds = %1322
  %1325 = fcmp olt float %1306, %1308
  br i1 %1325, label %1328, label %1326

; <label>:1326:                                   ; preds = %1324
  %1327 = fcmp oeq float %1306, %1308
  br i1 %1327, label %1328, label %1335

; <label>:1328:                                   ; preds = %1326, %1324, %1322, %1310
  %1329 = phi i8 [ 0, %1322 ], [ 0, %1324 ], [ 1, %1326 ], [ 1, %1310 ]
  %1330 = phi i8 [ 0, %1322 ], [ 0, %1324 ], [ 0, %1326 ], [ 1, %1310 ]
  %1331 = phi i8 [ 0, %1322 ], [ 1, %1324 ], [ 0, %1326 ], [ 1, %1310 ]
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1329, i8* %1332, align 1
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1330, i8* %1333, align 1
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1331, i8* %1334, align 1
  br label %1335

; <label>:1335:                                   ; preds = %1328, %1326
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1336, align 1
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1337, align 1
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1338, align 1
  br label %routine_ucomiss_MINUS0x60__rbp____xmm0.exit911

routine_ucomiss_MINUS0x60__rbp____xmm0.exit911:   ; preds = %1318, %1335
  %1339 = phi %struct.Memory* [ %1321, %1318 ], [ %loadMem_443849, %1335 ]
  store %struct.Memory* %1339, %struct.Memory** %MEMORY
  %loadMem_44384d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1341 = getelementptr inbounds %struct.GPR, %struct.GPR* %1340, i32 0, i32 33
  %1342 = getelementptr inbounds %struct.Reg, %struct.Reg* %1341, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %1342 to i64*
  %1343 = load i64, i64* %PC.i907
  %1344 = add i64 %1343, 57
  %1345 = load i64, i64* %PC.i907
  %1346 = add i64 %1345, 6
  %1347 = load i64, i64* %PC.i907
  %1348 = add i64 %1347, 6
  store i64 %1348, i64* %PC.i907
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1350 = load i8, i8* %1349, align 1
  store i8 %1350, i8* %BRANCH_TAKEN, align 1
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1352 = icmp ne i8 %1350, 0
  %1353 = select i1 %1352, i64 %1344, i64 %1346
  store i64 %1353, i64* %1351, align 8
  store %struct.Memory* %loadMem_44384d, %struct.Memory** %MEMORY
  %loadBr_44384d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44384d = icmp eq i8 %loadBr_44384d, 1
  br i1 %cmpBr_44384d, label %block_.L_443886, label %block_443853

block_443853:                                     ; preds = %routine_ucomiss_MINUS0x60__rbp____xmm0.exit911
  %loadMem_443853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1355 = getelementptr inbounds %struct.GPR, %struct.GPR* %1354, i32 0, i32 33
  %1356 = getelementptr inbounds %struct.Reg, %struct.Reg* %1355, i32 0, i32 0
  %PC.i904 = bitcast %union.anon* %1356 to i64*
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 1
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %RAX.i905 = bitcast %union.anon* %1359 to i64*
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 15
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %RBP.i906 = bitcast %union.anon* %1362 to i64*
  %1363 = load i64, i64* %RBP.i906
  %1364 = sub i64 %1363, 16
  %1365 = load i64, i64* %PC.i904
  %1366 = add i64 %1365, 4
  store i64 %1366, i64* %PC.i904
  %1367 = inttoptr i64 %1364 to i64*
  %1368 = load i64, i64* %1367
  store i64 %1368, i64* %RAX.i905, align 8
  store %struct.Memory* %loadMem_443853, %struct.Memory** %MEMORY
  %loadMem_443857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1370 = getelementptr inbounds %struct.GPR, %struct.GPR* %1369, i32 0, i32 33
  %1371 = getelementptr inbounds %struct.Reg, %struct.Reg* %1370, i32 0, i32 0
  %PC.i902 = bitcast %union.anon* %1371 to i64*
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1373 = getelementptr inbounds %struct.GPR, %struct.GPR* %1372, i32 0, i32 1
  %1374 = getelementptr inbounds %struct.Reg, %struct.Reg* %1373, i32 0, i32 0
  %RAX.i903 = bitcast %union.anon* %1374 to i64*
  %1375 = load i64, i64* %RAX.i903
  %1376 = add i64 %1375, 24
  %1377 = load i64, i64* %PC.i902
  %1378 = add i64 %1377, 4
  store i64 %1378, i64* %PC.i902
  %1379 = inttoptr i64 %1376 to i64*
  %1380 = load i64, i64* %1379
  store i64 %1380, i64* %RAX.i903, align 8
  store %struct.Memory* %loadMem_443857, %struct.Memory** %MEMORY
  %loadMem_44385b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1382 = getelementptr inbounds %struct.GPR, %struct.GPR* %1381, i32 0, i32 33
  %1383 = getelementptr inbounds %struct.Reg, %struct.Reg* %1382, i32 0, i32 0
  %PC.i899 = bitcast %union.anon* %1383 to i64*
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 5
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %RCX.i900 = bitcast %union.anon* %1386 to i64*
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1388 = getelementptr inbounds %struct.GPR, %struct.GPR* %1387, i32 0, i32 15
  %1389 = getelementptr inbounds %struct.Reg, %struct.Reg* %1388, i32 0, i32 0
  %RBP.i901 = bitcast %union.anon* %1389 to i64*
  %1390 = load i64, i64* %RBP.i901
  %1391 = sub i64 %1390, 44
  %1392 = load i64, i64* %PC.i899
  %1393 = add i64 %1392, 4
  store i64 %1393, i64* %PC.i899
  %1394 = inttoptr i64 %1391 to i32*
  %1395 = load i32, i32* %1394
  %1396 = sext i32 %1395 to i64
  store i64 %1396, i64* %RCX.i900, align 8
  store %struct.Memory* %loadMem_44385b, %struct.Memory** %MEMORY
  %loadMem_44385f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 33
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %PC.i897 = bitcast %union.anon* %1399 to i64*
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1401 = getelementptr inbounds %struct.GPR, %struct.GPR* %1400, i32 0, i32 5
  %1402 = getelementptr inbounds %struct.Reg, %struct.Reg* %1401, i32 0, i32 0
  %RCX.i898 = bitcast %union.anon* %1402 to i64*
  %1403 = load i64, i64* %RCX.i898
  %1404 = load i64, i64* %PC.i897
  %1405 = add i64 %1404, 4
  store i64 %1405, i64* %PC.i897
  %1406 = shl i64 %1403, 3
  %1407 = icmp slt i64 %1406, 0
  %1408 = shl i64 %1406, 1
  store i64 %1408, i64* %RCX.i898, align 8
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1410 = zext i1 %1407 to i8
  store i8 %1410, i8* %1409, align 1
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1412 = trunc i64 %1408 to i32
  %1413 = and i32 %1412, 254
  %1414 = call i32 @llvm.ctpop.i32(i32 %1413)
  %1415 = trunc i32 %1414 to i8
  %1416 = and i8 %1415, 1
  %1417 = xor i8 %1416, 1
  store i8 %1417, i8* %1411, align 1
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1418, align 1
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1420 = icmp eq i64 %1408, 0
  %1421 = zext i1 %1420 to i8
  store i8 %1421, i8* %1419, align 1
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1423 = lshr i64 %1408, 63
  %1424 = trunc i64 %1423 to i8
  store i8 %1424, i8* %1422, align 1
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1425, align 1
  store %struct.Memory* %loadMem_44385f, %struct.Memory** %MEMORY
  %loadMem_443863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 33
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %1428 to i64*
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 1
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %RAX.i895 = bitcast %union.anon* %1431 to i64*
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 5
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %RCX.i896 = bitcast %union.anon* %1434 to i64*
  %1435 = load i64, i64* %RAX.i895
  %1436 = load i64, i64* %RCX.i896
  %1437 = load i64, i64* %PC.i894
  %1438 = add i64 %1437, 3
  store i64 %1438, i64* %PC.i894
  %1439 = add i64 %1436, %1435
  store i64 %1439, i64* %RAX.i895, align 8
  %1440 = icmp ult i64 %1439, %1435
  %1441 = icmp ult i64 %1439, %1436
  %1442 = or i1 %1440, %1441
  %1443 = zext i1 %1442 to i8
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1443, i8* %1444, align 1
  %1445 = trunc i64 %1439 to i32
  %1446 = and i32 %1445, 255
  %1447 = call i32 @llvm.ctpop.i32(i32 %1446)
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  %1450 = xor i8 %1449, 1
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1450, i8* %1451, align 1
  %1452 = xor i64 %1436, %1435
  %1453 = xor i64 %1452, %1439
  %1454 = lshr i64 %1453, 4
  %1455 = trunc i64 %1454 to i8
  %1456 = and i8 %1455, 1
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1456, i8* %1457, align 1
  %1458 = icmp eq i64 %1439, 0
  %1459 = zext i1 %1458 to i8
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1459, i8* %1460, align 1
  %1461 = lshr i64 %1439, 63
  %1462 = trunc i64 %1461 to i8
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1462, i8* %1463, align 1
  %1464 = lshr i64 %1435, 63
  %1465 = lshr i64 %1436, 63
  %1466 = xor i64 %1461, %1464
  %1467 = xor i64 %1461, %1465
  %1468 = add i64 %1466, %1467
  %1469 = icmp eq i64 %1468, 2
  %1470 = zext i1 %1469 to i8
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1470, i8* %1471, align 1
  store %struct.Memory* %loadMem_443863, %struct.Memory** %MEMORY
  %loadMem_443866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1473 = getelementptr inbounds %struct.GPR, %struct.GPR* %1472, i32 0, i32 33
  %1474 = getelementptr inbounds %struct.Reg, %struct.Reg* %1473, i32 0, i32 0
  %PC.i892 = bitcast %union.anon* %1474 to i64*
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1476 = getelementptr inbounds %struct.GPR, %struct.GPR* %1475, i32 0, i32 1
  %1477 = getelementptr inbounds %struct.Reg, %struct.Reg* %1476, i32 0, i32 0
  %RAX.i893 = bitcast %union.anon* %1477 to i64*
  %1478 = load i64, i64* %RAX.i893
  %1479 = add i64 %1478, 8
  %1480 = load i64, i64* %PC.i892
  %1481 = add i64 %1480, 4
  store i64 %1481, i64* %PC.i892
  %1482 = inttoptr i64 %1479 to i64*
  %1483 = load i64, i64* %1482
  store i64 %1483, i64* %RAX.i893, align 8
  store %struct.Memory* %loadMem_443866, %struct.Memory** %MEMORY
  %loadMem_44386a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 33
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %PC.i889 = bitcast %union.anon* %1486 to i64*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 1
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %RAX.i890 = bitcast %union.anon* %1489 to i64*
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 15
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %RBP.i891 = bitcast %union.anon* %1492 to i64*
  %1493 = load i64, i64* %RBP.i891
  %1494 = sub i64 %1493, 120
  %1495 = load i64, i64* %RAX.i890
  %1496 = load i64, i64* %PC.i889
  %1497 = add i64 %1496, 4
  store i64 %1497, i64* %PC.i889
  %1498 = inttoptr i64 %1494 to i64*
  store i64 %1495, i64* %1498
  store %struct.Memory* %loadMem_44386a, %struct.Memory** %MEMORY
  %loadMem_44386e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 33
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %PC.i886 = bitcast %union.anon* %1501 to i64*
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1503 = getelementptr inbounds %struct.GPR, %struct.GPR* %1502, i32 0, i32 1
  %1504 = getelementptr inbounds %struct.Reg, %struct.Reg* %1503, i32 0, i32 0
  %RAX.i887 = bitcast %union.anon* %1504 to i64*
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1506 = getelementptr inbounds %struct.GPR, %struct.GPR* %1505, i32 0, i32 15
  %1507 = getelementptr inbounds %struct.Reg, %struct.Reg* %1506, i32 0, i32 0
  %RBP.i888 = bitcast %union.anon* %1507 to i64*
  %1508 = load i64, i64* %RBP.i888
  %1509 = sub i64 %1508, 16
  %1510 = load i64, i64* %PC.i886
  %1511 = add i64 %1510, 4
  store i64 %1511, i64* %PC.i886
  %1512 = inttoptr i64 %1509 to i64*
  %1513 = load i64, i64* %1512
  store i64 %1513, i64* %RAX.i887, align 8
  store %struct.Memory* %loadMem_44386e, %struct.Memory** %MEMORY
  %loadMem_443872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 33
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %PC.i884 = bitcast %union.anon* %1516 to i64*
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 1
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %RAX.i885 = bitcast %union.anon* %1519 to i64*
  %1520 = load i64, i64* %RAX.i885
  %1521 = add i64 %1520, 24
  %1522 = load i64, i64* %PC.i884
  %1523 = add i64 %1522, 4
  store i64 %1523, i64* %PC.i884
  %1524 = inttoptr i64 %1521 to i64*
  %1525 = load i64, i64* %1524
  store i64 %1525, i64* %RAX.i885, align 8
  store %struct.Memory* %loadMem_443872, %struct.Memory** %MEMORY
  %loadMem_443876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 33
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %PC.i881 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 5
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %RCX.i882 = bitcast %union.anon* %1531 to i64*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 15
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %RBP.i883 = bitcast %union.anon* %1534 to i64*
  %1535 = load i64, i64* %RBP.i883
  %1536 = sub i64 %1535, 44
  %1537 = load i64, i64* %PC.i881
  %1538 = add i64 %1537, 4
  store i64 %1538, i64* %PC.i881
  %1539 = inttoptr i64 %1536 to i32*
  %1540 = load i32, i32* %1539
  %1541 = sext i32 %1540 to i64
  store i64 %1541, i64* %RCX.i882, align 8
  store %struct.Memory* %loadMem_443876, %struct.Memory** %MEMORY
  %loadMem_44387a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 33
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %PC.i879 = bitcast %union.anon* %1544 to i64*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 5
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %RCX.i880 = bitcast %union.anon* %1547 to i64*
  %1548 = load i64, i64* %RCX.i880
  %1549 = load i64, i64* %PC.i879
  %1550 = add i64 %1549, 4
  store i64 %1550, i64* %PC.i879
  %1551 = shl i64 %1548, 3
  %1552 = icmp slt i64 %1551, 0
  %1553 = shl i64 %1551, 1
  store i64 %1553, i64* %RCX.i880, align 8
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1555 = zext i1 %1552 to i8
  store i8 %1555, i8* %1554, align 1
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1557 = trunc i64 %1553 to i32
  %1558 = and i32 %1557, 254
  %1559 = call i32 @llvm.ctpop.i32(i32 %1558)
  %1560 = trunc i32 %1559 to i8
  %1561 = and i8 %1560, 1
  %1562 = xor i8 %1561, 1
  store i8 %1562, i8* %1556, align 1
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1563, align 1
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1565 = icmp eq i64 %1553, 0
  %1566 = zext i1 %1565 to i8
  store i8 %1566, i8* %1564, align 1
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1568 = lshr i64 %1553, 63
  %1569 = trunc i64 %1568 to i8
  store i8 %1569, i8* %1567, align 1
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1570, align 1
  store %struct.Memory* %loadMem_44387a, %struct.Memory** %MEMORY
  %loadMem_44387e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 33
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %1573 to i64*
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 1
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %RAX.i877 = bitcast %union.anon* %1576 to i64*
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 5
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %RCX.i878 = bitcast %union.anon* %1579 to i64*
  %1580 = load i64, i64* %RAX.i877
  %1581 = load i64, i64* %RCX.i878
  %1582 = load i64, i64* %PC.i876
  %1583 = add i64 %1582, 3
  store i64 %1583, i64* %PC.i876
  %1584 = add i64 %1581, %1580
  store i64 %1584, i64* %RAX.i877, align 8
  %1585 = icmp ult i64 %1584, %1580
  %1586 = icmp ult i64 %1584, %1581
  %1587 = or i1 %1585, %1586
  %1588 = zext i1 %1587 to i8
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1588, i8* %1589, align 1
  %1590 = trunc i64 %1584 to i32
  %1591 = and i32 %1590, 255
  %1592 = call i32 @llvm.ctpop.i32(i32 %1591)
  %1593 = trunc i32 %1592 to i8
  %1594 = and i8 %1593, 1
  %1595 = xor i8 %1594, 1
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1595, i8* %1596, align 1
  %1597 = xor i64 %1581, %1580
  %1598 = xor i64 %1597, %1584
  %1599 = lshr i64 %1598, 4
  %1600 = trunc i64 %1599 to i8
  %1601 = and i8 %1600, 1
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1601, i8* %1602, align 1
  %1603 = icmp eq i64 %1584, 0
  %1604 = zext i1 %1603 to i8
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1604, i8* %1605, align 1
  %1606 = lshr i64 %1584, 63
  %1607 = trunc i64 %1606 to i8
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1607, i8* %1608, align 1
  %1609 = lshr i64 %1580, 63
  %1610 = lshr i64 %1581, 63
  %1611 = xor i64 %1606, %1609
  %1612 = xor i64 %1606, %1610
  %1613 = add i64 %1611, %1612
  %1614 = icmp eq i64 %1613, 2
  %1615 = zext i1 %1614 to i8
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1615, i8* %1616, align 1
  store %struct.Memory* %loadMem_44387e, %struct.Memory** %MEMORY
  %loadMem_443881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 33
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %PC.i873 = bitcast %union.anon* %1619 to i64*
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1621 = getelementptr inbounds %struct.GPR, %struct.GPR* %1620, i32 0, i32 1
  %1622 = getelementptr inbounds %struct.Reg, %struct.Reg* %1621, i32 0, i32 0
  %RAX.i874 = bitcast %union.anon* %1622 to i64*
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1624 = getelementptr inbounds %struct.GPR, %struct.GPR* %1623, i32 0, i32 7
  %1625 = getelementptr inbounds %struct.Reg, %struct.Reg* %1624, i32 0, i32 0
  %RDX.i875 = bitcast %union.anon* %1625 to i64*
  %1626 = load i64, i64* %RAX.i874
  %1627 = load i64, i64* %PC.i873
  %1628 = add i64 %1627, 2
  store i64 %1628, i64* %PC.i873
  %1629 = inttoptr i64 %1626 to i32*
  %1630 = load i32, i32* %1629
  %1631 = zext i32 %1630 to i64
  store i64 %1631, i64* %RDX.i875, align 8
  store %struct.Memory* %loadMem_443881, %struct.Memory** %MEMORY
  %loadMem_443883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 33
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %PC.i870 = bitcast %union.anon* %1634 to i64*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1636 = getelementptr inbounds %struct.GPR, %struct.GPR* %1635, i32 0, i32 7
  %1637 = getelementptr inbounds %struct.Reg, %struct.Reg* %1636, i32 0, i32 0
  %EDX.i871 = bitcast %union.anon* %1637 to i32*
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 15
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %RBP.i872 = bitcast %union.anon* %1640 to i64*
  %1641 = load i64, i64* %RBP.i872
  %1642 = sub i64 %1641, 124
  %1643 = load i32, i32* %EDX.i871
  %1644 = zext i32 %1643 to i64
  %1645 = load i64, i64* %PC.i870
  %1646 = add i64 %1645, 3
  store i64 %1646, i64* %PC.i870
  %1647 = inttoptr i64 %1642 to i32*
  store i32 %1643, i32* %1647
  store %struct.Memory* %loadMem_443883, %struct.Memory** %MEMORY
  br label %block_.L_443886

block_.L_443886:                                  ; preds = %block_443853, %routine_ucomiss_MINUS0x60__rbp____xmm0.exit911
  %loadMem_443886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 33
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %1650 to i64*
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1652 = getelementptr inbounds %struct.GPR, %struct.GPR* %1651, i32 0, i32 15
  %1653 = getelementptr inbounds %struct.Reg, %struct.Reg* %1652, i32 0, i32 0
  %RBP.i868 = bitcast %union.anon* %1653 to i64*
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1655 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1654, i64 0, i64 0
  %YMM0.i869 = bitcast %union.VectorReg* %1655 to %"class.std::bitset"*
  %1656 = bitcast %"class.std::bitset"* %YMM0.i869 to i8*
  %1657 = load i64, i64* %RBP.i868
  %1658 = sub i64 %1657, 112
  %1659 = load i64, i64* %PC.i867
  %1660 = add i64 %1659, 5
  store i64 %1660, i64* %PC.i867
  %1661 = inttoptr i64 %1658 to float*
  %1662 = load float, float* %1661
  %1663 = bitcast i8* %1656 to float*
  store float %1662, float* %1663, align 1
  %1664 = getelementptr inbounds i8, i8* %1656, i64 4
  %1665 = bitcast i8* %1664 to float*
  store float 0.000000e+00, float* %1665, align 1
  %1666 = getelementptr inbounds i8, i8* %1656, i64 8
  %1667 = bitcast i8* %1666 to float*
  store float 0.000000e+00, float* %1667, align 1
  %1668 = getelementptr inbounds i8, i8* %1656, i64 12
  %1669 = bitcast i8* %1668 to float*
  store float 0.000000e+00, float* %1669, align 1
  store %struct.Memory* %loadMem_443886, %struct.Memory** %MEMORY
  %loadMem_44388b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1671 = getelementptr inbounds %struct.GPR, %struct.GPR* %1670, i32 0, i32 33
  %1672 = getelementptr inbounds %struct.Reg, %struct.Reg* %1671, i32 0, i32 0
  %PC.i860 = bitcast %union.anon* %1672 to i64*
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1674 = getelementptr inbounds %struct.GPR, %struct.GPR* %1673, i32 0, i32 15
  %1675 = getelementptr inbounds %struct.Reg, %struct.Reg* %1674, i32 0, i32 0
  %RBP.i861 = bitcast %union.anon* %1675 to i64*
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1677 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1676, i64 0, i64 0
  %XMM0.i862 = bitcast %union.VectorReg* %1677 to %union.vec128_t*
  %1678 = bitcast %union.vec128_t* %XMM0.i862 to i8*
  %1679 = load i64, i64* %RBP.i861
  %1680 = sub i64 %1679, 96
  %1681 = load i64, i64* %PC.i860
  %1682 = add i64 %1681, 4
  store i64 %1682, i64* %PC.i860
  %1683 = bitcast i8* %1678 to <2 x float>*
  %1684 = load <2 x float>, <2 x float>* %1683, align 1
  %1685 = extractelement <2 x float> %1684, i32 0
  %1686 = inttoptr i64 %1680 to float*
  %1687 = load float, float* %1686
  %1688 = fcmp uno float %1685, %1687
  br i1 %1688, label %1689, label %1701

; <label>:1689:                                   ; preds = %block_.L_443886
  %1690 = fadd float %1685, %1687
  %1691 = bitcast float %1690 to i32
  %1692 = and i32 %1691, 2143289344
  %1693 = icmp eq i32 %1692, 2139095040
  %1694 = and i32 %1691, 4194303
  %1695 = icmp ne i32 %1694, 0
  %1696 = and i1 %1693, %1695
  br i1 %1696, label %1697, label %1707

; <label>:1697:                                   ; preds = %1689
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1699 = load i64, i64* %1698, align 8
  %1700 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1699, %struct.Memory* %loadMem_44388b)
  br label %routine_ucomiss_MINUS0x60__rbp____xmm0.exit863

; <label>:1701:                                   ; preds = %block_.L_443886
  %1702 = fcmp ogt float %1685, %1687
  br i1 %1702, label %1707, label %1703

; <label>:1703:                                   ; preds = %1701
  %1704 = fcmp olt float %1685, %1687
  br i1 %1704, label %1707, label %1705

; <label>:1705:                                   ; preds = %1703
  %1706 = fcmp oeq float %1685, %1687
  br i1 %1706, label %1707, label %1714

; <label>:1707:                                   ; preds = %1705, %1703, %1701, %1689
  %1708 = phi i8 [ 0, %1701 ], [ 0, %1703 ], [ 1, %1705 ], [ 1, %1689 ]
  %1709 = phi i8 [ 0, %1701 ], [ 0, %1703 ], [ 0, %1705 ], [ 1, %1689 ]
  %1710 = phi i8 [ 0, %1701 ], [ 1, %1703 ], [ 0, %1705 ], [ 1, %1689 ]
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1708, i8* %1711, align 1
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1709, i8* %1712, align 1
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1710, i8* %1713, align 1
  br label %1714

; <label>:1714:                                   ; preds = %1707, %1705
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1715, align 1
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1716, align 1
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1717, align 1
  br label %routine_ucomiss_MINUS0x60__rbp____xmm0.exit863

routine_ucomiss_MINUS0x60__rbp____xmm0.exit863:   ; preds = %1697, %1714
  %1718 = phi %struct.Memory* [ %1700, %1697 ], [ %loadMem_44388b, %1714 ]
  store %struct.Memory* %1718, %struct.Memory** %MEMORY
  %loadMem_44388f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 33
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %1721 to i64*
  %1722 = load i64, i64* %PC.i859
  %1723 = add i64 %1722, 88
  %1724 = load i64, i64* %PC.i859
  %1725 = add i64 %1724, 6
  %1726 = load i64, i64* %PC.i859
  %1727 = add i64 %1726, 6
  store i64 %1727, i64* %PC.i859
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1729 = load i8, i8* %1728, align 1
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1731 = load i8, i8* %1730, align 1
  %1732 = or i8 %1731, %1729
  %1733 = icmp eq i8 %1732, 0
  %1734 = zext i1 %1733 to i8
  store i8 %1734, i8* %BRANCH_TAKEN, align 1
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1736 = select i1 %1733, i64 %1723, i64 %1725
  store i64 %1736, i64* %1735, align 8
  store %struct.Memory* %loadMem_44388f, %struct.Memory** %MEMORY
  %loadBr_44388f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44388f = icmp eq i8 %loadBr_44388f, 1
  br i1 %cmpBr_44388f, label %block_.L_4438e7, label %block_443895

block_443895:                                     ; preds = %routine_ucomiss_MINUS0x60__rbp____xmm0.exit863
  %loadMem_443895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1738 = getelementptr inbounds %struct.GPR, %struct.GPR* %1737, i32 0, i32 33
  %1739 = getelementptr inbounds %struct.Reg, %struct.Reg* %1738, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %1739 to i64*
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 15
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %RBP.i857 = bitcast %union.anon* %1742 to i64*
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1744 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1743, i64 0, i64 0
  %YMM0.i858 = bitcast %union.VectorReg* %1744 to %"class.std::bitset"*
  %1745 = bitcast %"class.std::bitset"* %YMM0.i858 to i8*
  %1746 = load i64, i64* %RBP.i857
  %1747 = sub i64 %1746, 112
  %1748 = load i64, i64* %PC.i856
  %1749 = add i64 %1748, 5
  store i64 %1749, i64* %PC.i856
  %1750 = inttoptr i64 %1747 to float*
  %1751 = load float, float* %1750
  %1752 = bitcast i8* %1745 to float*
  store float %1751, float* %1752, align 1
  %1753 = getelementptr inbounds i8, i8* %1745, i64 4
  %1754 = bitcast i8* %1753 to float*
  store float 0.000000e+00, float* %1754, align 1
  %1755 = getelementptr inbounds i8, i8* %1745, i64 8
  %1756 = bitcast i8* %1755 to float*
  store float 0.000000e+00, float* %1756, align 1
  %1757 = getelementptr inbounds i8, i8* %1745, i64 12
  %1758 = bitcast i8* %1757 to float*
  store float 0.000000e+00, float* %1758, align 1
  store %struct.Memory* %loadMem_443895, %struct.Memory** %MEMORY
  %loadMem_44389a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 33
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %PC.i849 = bitcast %union.anon* %1761 to i64*
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 15
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %RBP.i850 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1766 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1765, i64 0, i64 0
  %XMM0.i851 = bitcast %union.VectorReg* %1766 to %union.vec128_t*
  %1767 = bitcast %union.vec128_t* %XMM0.i851 to i8*
  %1768 = load i64, i64* %RBP.i850
  %1769 = sub i64 %1768, 96
  %1770 = load i64, i64* %PC.i849
  %1771 = add i64 %1770, 4
  store i64 %1771, i64* %PC.i849
  %1772 = bitcast i8* %1767 to <2 x float>*
  %1773 = load <2 x float>, <2 x float>* %1772, align 1
  %1774 = extractelement <2 x float> %1773, i32 0
  %1775 = inttoptr i64 %1769 to float*
  %1776 = load float, float* %1775
  %1777 = fcmp uno float %1774, %1776
  br i1 %1777, label %1778, label %1790

; <label>:1778:                                   ; preds = %block_443895
  %1779 = fadd float %1774, %1776
  %1780 = bitcast float %1779 to i32
  %1781 = and i32 %1780, 2143289344
  %1782 = icmp eq i32 %1781, 2139095040
  %1783 = and i32 %1780, 4194303
  %1784 = icmp ne i32 %1783, 0
  %1785 = and i1 %1782, %1784
  br i1 %1785, label %1786, label %1796

; <label>:1786:                                   ; preds = %1778
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1788 = load i64, i64* %1787, align 8
  %1789 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1788, %struct.Memory* %loadMem_44389a)
  br label %routine_ucomiss_MINUS0x60__rbp____xmm0.exit852

; <label>:1790:                                   ; preds = %block_443895
  %1791 = fcmp ogt float %1774, %1776
  br i1 %1791, label %1796, label %1792

; <label>:1792:                                   ; preds = %1790
  %1793 = fcmp olt float %1774, %1776
  br i1 %1793, label %1796, label %1794

; <label>:1794:                                   ; preds = %1792
  %1795 = fcmp oeq float %1774, %1776
  br i1 %1795, label %1796, label %1803

; <label>:1796:                                   ; preds = %1794, %1792, %1790, %1778
  %1797 = phi i8 [ 0, %1790 ], [ 0, %1792 ], [ 1, %1794 ], [ 1, %1778 ]
  %1798 = phi i8 [ 0, %1790 ], [ 0, %1792 ], [ 0, %1794 ], [ 1, %1778 ]
  %1799 = phi i8 [ 0, %1790 ], [ 1, %1792 ], [ 0, %1794 ], [ 1, %1778 ]
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1797, i8* %1800, align 1
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1798, i8* %1801, align 1
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1799, i8* %1802, align 1
  br label %1803

; <label>:1803:                                   ; preds = %1796, %1794
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1804, align 1
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1805, align 1
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1806, align 1
  br label %routine_ucomiss_MINUS0x60__rbp____xmm0.exit852

routine_ucomiss_MINUS0x60__rbp____xmm0.exit852:   ; preds = %1786, %1803
  %1807 = phi %struct.Memory* [ %1789, %1786 ], [ %loadMem_44389a, %1803 ]
  store %struct.Memory* %1807, %struct.Memory** %MEMORY
  %loadMem_44389e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 33
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %1810 to i64*
  %1811 = load i64, i64* %PC.i848
  %1812 = add i64 %1811, 26
  %1813 = load i64, i64* %PC.i848
  %1814 = add i64 %1813, 6
  %1815 = load i64, i64* %PC.i848
  %1816 = add i64 %1815, 6
  store i64 %1816, i64* %PC.i848
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1818 = load i8, i8* %1817, align 1
  %1819 = icmp eq i8 %1818, 0
  %1820 = zext i1 %1819 to i8
  store i8 %1820, i8* %BRANCH_TAKEN, align 1
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1822 = select i1 %1819, i64 %1812, i64 %1814
  store i64 %1822, i64* %1821, align 8
  store %struct.Memory* %loadMem_44389e, %struct.Memory** %MEMORY
  %loadBr_44389e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44389e = icmp eq i8 %loadBr_44389e, 1
  br i1 %cmpBr_44389e, label %block_.L_4438b8, label %block_4438a4

block_4438a4:                                     ; preds = %routine_ucomiss_MINUS0x60__rbp____xmm0.exit852
  %loadMem_4438a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 33
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %PC.i847 = bitcast %union.anon* %1825 to i64*
  %1826 = load i64, i64* %PC.i847
  %1827 = add i64 %1826, 20
  %1828 = load i64, i64* %PC.i847
  %1829 = add i64 %1828, 6
  %1830 = load i64, i64* %PC.i847
  %1831 = add i64 %1830, 6
  store i64 %1831, i64* %PC.i847
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1833 = load i8, i8* %1832, align 1
  store i8 %1833, i8* %BRANCH_TAKEN, align 1
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1835 = icmp ne i8 %1833, 0
  %1836 = select i1 %1835, i64 %1827, i64 %1829
  store i64 %1836, i64* %1834, align 8
  store %struct.Memory* %loadMem_4438a4, %struct.Memory** %MEMORY
  %loadBr_4438a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4438a4 = icmp eq i8 %loadBr_4438a4, 1
  br i1 %cmpBr_4438a4, label %block_.L_4438b8, label %block_4438aa

block_4438aa:                                     ; preds = %block_4438a4
  %loadMem_4438aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 33
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %1839 to i64*
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 1
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %RAX.i845 = bitcast %union.anon* %1842 to i64*
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 15
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %RBP.i846 = bitcast %union.anon* %1845 to i64*
  %1846 = load i64, i64* %RBP.i846
  %1847 = sub i64 %1846, 120
  %1848 = load i64, i64* %PC.i844
  %1849 = add i64 %1848, 4
  store i64 %1849, i64* %PC.i844
  %1850 = inttoptr i64 %1847 to i64*
  %1851 = load i64, i64* %1850
  store i64 %1851, i64* %RAX.i845, align 8
  store %struct.Memory* %loadMem_4438aa, %struct.Memory** %MEMORY
  %loadMem_4438ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 33
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %PC.i841 = bitcast %union.anon* %1854 to i64*
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 1
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %RAX.i842 = bitcast %union.anon* %1857 to i64*
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1859 = getelementptr inbounds %struct.GPR, %struct.GPR* %1858, i32 0, i32 15
  %1860 = getelementptr inbounds %struct.Reg, %struct.Reg* %1859, i32 0, i32 0
  %RBP.i843 = bitcast %union.anon* %1860 to i64*
  %1861 = load i64, i64* %RAX.i842
  %1862 = load i64, i64* %RBP.i843
  %1863 = sub i64 %1862, 104
  %1864 = load i64, i64* %PC.i841
  %1865 = add i64 %1864, 4
  store i64 %1865, i64* %PC.i841
  %1866 = inttoptr i64 %1863 to i64*
  %1867 = load i64, i64* %1866
  %1868 = sub i64 %1861, %1867
  %1869 = icmp ugt i64 %1867, %1861
  %1870 = zext i1 %1869 to i8
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1870, i8* %1871, align 1
  %1872 = trunc i64 %1868 to i32
  %1873 = and i32 %1872, 255
  %1874 = call i32 @llvm.ctpop.i32(i32 %1873)
  %1875 = trunc i32 %1874 to i8
  %1876 = and i8 %1875, 1
  %1877 = xor i8 %1876, 1
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1877, i8* %1878, align 1
  %1879 = xor i64 %1867, %1861
  %1880 = xor i64 %1879, %1868
  %1881 = lshr i64 %1880, 4
  %1882 = trunc i64 %1881 to i8
  %1883 = and i8 %1882, 1
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1883, i8* %1884, align 1
  %1885 = icmp eq i64 %1868, 0
  %1886 = zext i1 %1885 to i8
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1886, i8* %1887, align 1
  %1888 = lshr i64 %1868, 63
  %1889 = trunc i64 %1888 to i8
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1889, i8* %1890, align 1
  %1891 = lshr i64 %1861, 63
  %1892 = lshr i64 %1867, 63
  %1893 = xor i64 %1892, %1891
  %1894 = xor i64 %1888, %1891
  %1895 = add i64 %1894, %1893
  %1896 = icmp eq i64 %1895, 2
  %1897 = zext i1 %1896 to i8
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1897, i8* %1898, align 1
  store %struct.Memory* %loadMem_4438ae, %struct.Memory** %MEMORY
  %loadMem_4438b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 33
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %PC.i840 = bitcast %union.anon* %1901 to i64*
  %1902 = load i64, i64* %PC.i840
  %1903 = add i64 %1902, 53
  %1904 = load i64, i64* %PC.i840
  %1905 = add i64 %1904, 6
  %1906 = load i64, i64* %PC.i840
  %1907 = add i64 %1906, 6
  store i64 %1907, i64* %PC.i840
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1909 = load i8, i8* %1908, align 1
  store i8 %1909, i8* %BRANCH_TAKEN, align 1
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1911 = icmp ne i8 %1909, 0
  %1912 = select i1 %1911, i64 %1903, i64 %1905
  store i64 %1912, i64* %1910, align 8
  store %struct.Memory* %loadMem_4438b2, %struct.Memory** %MEMORY
  %loadBr_4438b2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4438b2 = icmp eq i8 %loadBr_4438b2, 1
  br i1 %cmpBr_4438b2, label %block_.L_4438e7, label %block_.L_4438b8

block_.L_4438b8:                                  ; preds = %block_4438aa, %block_4438a4, %routine_ucomiss_MINUS0x60__rbp____xmm0.exit852
  %loadMem_4438b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 33
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %PC.i837 = bitcast %union.anon* %1915 to i64*
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 15
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %RBP.i838 = bitcast %union.anon* %1918 to i64*
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1920 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1919, i64 0, i64 0
  %YMM0.i839 = bitcast %union.VectorReg* %1920 to %"class.std::bitset"*
  %1921 = bitcast %"class.std::bitset"* %YMM0.i839 to i8*
  %1922 = load i64, i64* %RBP.i838
  %1923 = sub i64 %1922, 112
  %1924 = load i64, i64* %PC.i837
  %1925 = add i64 %1924, 5
  store i64 %1925, i64* %PC.i837
  %1926 = inttoptr i64 %1923 to float*
  %1927 = load float, float* %1926
  %1928 = bitcast i8* %1921 to float*
  store float %1927, float* %1928, align 1
  %1929 = getelementptr inbounds i8, i8* %1921, i64 4
  %1930 = bitcast i8* %1929 to float*
  store float 0.000000e+00, float* %1930, align 1
  %1931 = getelementptr inbounds i8, i8* %1921, i64 8
  %1932 = bitcast i8* %1931 to float*
  store float 0.000000e+00, float* %1932, align 1
  %1933 = getelementptr inbounds i8, i8* %1921, i64 12
  %1934 = bitcast i8* %1933 to float*
  store float 0.000000e+00, float* %1934, align 1
  store %struct.Memory* %loadMem_4438b8, %struct.Memory** %MEMORY
  %loadMem_4438bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 33
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %PC.i831 = bitcast %union.anon* %1937 to i64*
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 15
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %RBP.i832 = bitcast %union.anon* %1940 to i64*
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1942 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1941, i64 0, i64 0
  %XMM0.i833 = bitcast %union.VectorReg* %1942 to %union.vec128_t*
  %1943 = bitcast %union.vec128_t* %XMM0.i833 to i8*
  %1944 = load i64, i64* %RBP.i832
  %1945 = sub i64 %1944, 96
  %1946 = load i64, i64* %PC.i831
  %1947 = add i64 %1946, 4
  store i64 %1947, i64* %PC.i831
  %1948 = bitcast i8* %1943 to <2 x float>*
  %1949 = load <2 x float>, <2 x float>* %1948, align 1
  %1950 = extractelement <2 x float> %1949, i32 0
  %1951 = inttoptr i64 %1945 to float*
  %1952 = load float, float* %1951
  %1953 = fcmp uno float %1950, %1952
  br i1 %1953, label %1954, label %1966

; <label>:1954:                                   ; preds = %block_.L_4438b8
  %1955 = fadd float %1950, %1952
  %1956 = bitcast float %1955 to i32
  %1957 = and i32 %1956, 2143289344
  %1958 = icmp eq i32 %1957, 2139095040
  %1959 = and i32 %1956, 4194303
  %1960 = icmp ne i32 %1959, 0
  %1961 = and i1 %1958, %1960
  br i1 %1961, label %1962, label %1972

; <label>:1962:                                   ; preds = %1954
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1964 = load i64, i64* %1963, align 8
  %1965 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1964, %struct.Memory* %loadMem_4438bd)
  br label %routine_ucomiss_MINUS0x60__rbp____xmm0.exit

; <label>:1966:                                   ; preds = %block_.L_4438b8
  %1967 = fcmp ogt float %1950, %1952
  br i1 %1967, label %1972, label %1968

; <label>:1968:                                   ; preds = %1966
  %1969 = fcmp olt float %1950, %1952
  br i1 %1969, label %1972, label %1970

; <label>:1970:                                   ; preds = %1968
  %1971 = fcmp oeq float %1950, %1952
  br i1 %1971, label %1972, label %1979

; <label>:1972:                                   ; preds = %1970, %1968, %1966, %1954
  %1973 = phi i8 [ 0, %1966 ], [ 0, %1968 ], [ 1, %1970 ], [ 1, %1954 ]
  %1974 = phi i8 [ 0, %1966 ], [ 0, %1968 ], [ 0, %1970 ], [ 1, %1954 ]
  %1975 = phi i8 [ 0, %1966 ], [ 1, %1968 ], [ 0, %1970 ], [ 1, %1954 ]
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1973, i8* %1976, align 1
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1974, i8* %1977, align 1
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1975, i8* %1978, align 1
  br label %1979

; <label>:1979:                                   ; preds = %1972, %1970
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1980, align 1
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1981, align 1
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1982, align 1
  br label %routine_ucomiss_MINUS0x60__rbp____xmm0.exit

routine_ucomiss_MINUS0x60__rbp____xmm0.exit:      ; preds = %1962, %1979
  %1983 = phi %struct.Memory* [ %1965, %1962 ], [ %loadMem_4438bd, %1979 ]
  store %struct.Memory* %1983, %struct.Memory** %MEMORY
  %loadMem_4438c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1985 = getelementptr inbounds %struct.GPR, %struct.GPR* %1984, i32 0, i32 33
  %1986 = getelementptr inbounds %struct.Reg, %struct.Reg* %1985, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %1986 to i64*
  %1987 = load i64, i64* %PC.i830
  %1988 = add i64 %1987, 182
  %1989 = load i64, i64* %PC.i830
  %1990 = add i64 %1989, 6
  %1991 = load i64, i64* %PC.i830
  %1992 = add i64 %1991, 6
  store i64 %1992, i64* %PC.i830
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1994 = load i8, i8* %1993, align 1
  %1995 = icmp eq i8 %1994, 0
  %1996 = zext i1 %1995 to i8
  store i8 %1996, i8* %BRANCH_TAKEN, align 1
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1998 = select i1 %1995, i64 %1988, i64 %1990
  store i64 %1998, i64* %1997, align 8
  store %struct.Memory* %loadMem_4438c1, %struct.Memory** %MEMORY
  %loadBr_4438c1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4438c1 = icmp eq i8 %loadBr_4438c1, 1
  br i1 %cmpBr_4438c1, label %block_.L_443977, label %block_4438c7

block_4438c7:                                     ; preds = %routine_ucomiss_MINUS0x60__rbp____xmm0.exit
  %loadMem_4438c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2000 = getelementptr inbounds %struct.GPR, %struct.GPR* %1999, i32 0, i32 33
  %2001 = getelementptr inbounds %struct.Reg, %struct.Reg* %2000, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %2001 to i64*
  %2002 = load i64, i64* %PC.i829
  %2003 = add i64 %2002, 176
  %2004 = load i64, i64* %PC.i829
  %2005 = add i64 %2004, 6
  %2006 = load i64, i64* %PC.i829
  %2007 = add i64 %2006, 6
  store i64 %2007, i64* %PC.i829
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2009 = load i8, i8* %2008, align 1
  store i8 %2009, i8* %BRANCH_TAKEN, align 1
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2011 = icmp ne i8 %2009, 0
  %2012 = select i1 %2011, i64 %2003, i64 %2005
  store i64 %2012, i64* %2010, align 8
  store %struct.Memory* %loadMem_4438c7, %struct.Memory** %MEMORY
  %loadBr_4438c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4438c7 = icmp eq i8 %loadBr_4438c7, 1
  br i1 %cmpBr_4438c7, label %block_.L_443977, label %block_4438cd

block_4438cd:                                     ; preds = %block_4438c7
  %loadMem_4438cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2014 = getelementptr inbounds %struct.GPR, %struct.GPR* %2013, i32 0, i32 33
  %2015 = getelementptr inbounds %struct.Reg, %struct.Reg* %2014, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %2015 to i64*
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2017 = getelementptr inbounds %struct.GPR, %struct.GPR* %2016, i32 0, i32 1
  %2018 = getelementptr inbounds %struct.Reg, %struct.Reg* %2017, i32 0, i32 0
  %RAX.i827 = bitcast %union.anon* %2018 to i64*
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2020 = getelementptr inbounds %struct.GPR, %struct.GPR* %2019, i32 0, i32 15
  %2021 = getelementptr inbounds %struct.Reg, %struct.Reg* %2020, i32 0, i32 0
  %RBP.i828 = bitcast %union.anon* %2021 to i64*
  %2022 = load i64, i64* %RBP.i828
  %2023 = sub i64 %2022, 120
  %2024 = load i64, i64* %PC.i826
  %2025 = add i64 %2024, 4
  store i64 %2025, i64* %PC.i826
  %2026 = inttoptr i64 %2023 to i64*
  %2027 = load i64, i64* %2026
  store i64 %2027, i64* %RAX.i827, align 8
  store %struct.Memory* %loadMem_4438cd, %struct.Memory** %MEMORY
  %loadMem_4438d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 33
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %2030 to i64*
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2032 = getelementptr inbounds %struct.GPR, %struct.GPR* %2031, i32 0, i32 1
  %2033 = getelementptr inbounds %struct.Reg, %struct.Reg* %2032, i32 0, i32 0
  %RAX.i824 = bitcast %union.anon* %2033 to i64*
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 15
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %RBP.i825 = bitcast %union.anon* %2036 to i64*
  %2037 = load i64, i64* %RAX.i824
  %2038 = load i64, i64* %RBP.i825
  %2039 = sub i64 %2038, 104
  %2040 = load i64, i64* %PC.i823
  %2041 = add i64 %2040, 4
  store i64 %2041, i64* %PC.i823
  %2042 = inttoptr i64 %2039 to i64*
  %2043 = load i64, i64* %2042
  %2044 = sub i64 %2037, %2043
  %2045 = icmp ugt i64 %2043, %2037
  %2046 = zext i1 %2045 to i8
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2046, i8* %2047, align 1
  %2048 = trunc i64 %2044 to i32
  %2049 = and i32 %2048, 255
  %2050 = call i32 @llvm.ctpop.i32(i32 %2049)
  %2051 = trunc i32 %2050 to i8
  %2052 = and i8 %2051, 1
  %2053 = xor i8 %2052, 1
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2053, i8* %2054, align 1
  %2055 = xor i64 %2043, %2037
  %2056 = xor i64 %2055, %2044
  %2057 = lshr i64 %2056, 4
  %2058 = trunc i64 %2057 to i8
  %2059 = and i8 %2058, 1
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2059, i8* %2060, align 1
  %2061 = icmp eq i64 %2044, 0
  %2062 = zext i1 %2061 to i8
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2062, i8* %2063, align 1
  %2064 = lshr i64 %2044, 63
  %2065 = trunc i64 %2064 to i8
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2065, i8* %2066, align 1
  %2067 = lshr i64 %2037, 63
  %2068 = lshr i64 %2043, 63
  %2069 = xor i64 %2068, %2067
  %2070 = xor i64 %2064, %2067
  %2071 = add i64 %2070, %2069
  %2072 = icmp eq i64 %2071, 2
  %2073 = zext i1 %2072 to i8
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2073, i8* %2074, align 1
  store %struct.Memory* %loadMem_4438d1, %struct.Memory** %MEMORY
  %loadMem_4438d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 33
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %2077 to i64*
  %2078 = load i64, i64* %PC.i822
  %2079 = add i64 %2078, 162
  %2080 = load i64, i64* %PC.i822
  %2081 = add i64 %2080, 6
  %2082 = load i64, i64* %PC.i822
  %2083 = add i64 %2082, 6
  store i64 %2083, i64* %PC.i822
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2085 = load i8, i8* %2084, align 1
  %2086 = icmp eq i8 %2085, 0
  %2087 = zext i1 %2086 to i8
  store i8 %2087, i8* %BRANCH_TAKEN, align 1
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2089 = select i1 %2086, i64 %2079, i64 %2081
  store i64 %2089, i64* %2088, align 8
  store %struct.Memory* %loadMem_4438d5, %struct.Memory** %MEMORY
  %loadBr_4438d5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4438d5 = icmp eq i8 %loadBr_4438d5, 1
  br i1 %cmpBr_4438d5, label %block_.L_443977, label %block_4438db

block_4438db:                                     ; preds = %block_4438cd
  %loadMem_4438db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 33
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %2092 to i64*
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 1
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %RAX.i820 = bitcast %union.anon* %2095 to i64*
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 15
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %RBP.i821 = bitcast %union.anon* %2098 to i64*
  %2099 = load i64, i64* %RBP.i821
  %2100 = sub i64 %2099, 124
  %2101 = load i64, i64* %PC.i819
  %2102 = add i64 %2101, 3
  store i64 %2102, i64* %PC.i819
  %2103 = inttoptr i64 %2100 to i32*
  %2104 = load i32, i32* %2103
  %2105 = zext i32 %2104 to i64
  store i64 %2105, i64* %RAX.i820, align 8
  store %struct.Memory* %loadMem_4438db, %struct.Memory** %MEMORY
  %loadMem_4438de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2107 = getelementptr inbounds %struct.GPR, %struct.GPR* %2106, i32 0, i32 33
  %2108 = getelementptr inbounds %struct.Reg, %struct.Reg* %2107, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %2108 to i64*
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 1
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %EAX.i817 = bitcast %union.anon* %2111 to i32*
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 15
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %RBP.i818 = bitcast %union.anon* %2114 to i64*
  %2115 = load i32, i32* %EAX.i817
  %2116 = zext i32 %2115 to i64
  %2117 = load i64, i64* %RBP.i818
  %2118 = sub i64 %2117, 108
  %2119 = load i64, i64* %PC.i816
  %2120 = add i64 %2119, 3
  store i64 %2120, i64* %PC.i816
  %2121 = inttoptr i64 %2118 to i32*
  %2122 = load i32, i32* %2121
  %2123 = sub i32 %2115, %2122
  %2124 = icmp ult i32 %2115, %2122
  %2125 = zext i1 %2124 to i8
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2125, i8* %2126, align 1
  %2127 = and i32 %2123, 255
  %2128 = call i32 @llvm.ctpop.i32(i32 %2127)
  %2129 = trunc i32 %2128 to i8
  %2130 = and i8 %2129, 1
  %2131 = xor i8 %2130, 1
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2131, i8* %2132, align 1
  %2133 = xor i32 %2122, %2115
  %2134 = xor i32 %2133, %2123
  %2135 = lshr i32 %2134, 4
  %2136 = trunc i32 %2135 to i8
  %2137 = and i8 %2136, 1
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2137, i8* %2138, align 1
  %2139 = icmp eq i32 %2123, 0
  %2140 = zext i1 %2139 to i8
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2140, i8* %2141, align 1
  %2142 = lshr i32 %2123, 31
  %2143 = trunc i32 %2142 to i8
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2143, i8* %2144, align 1
  %2145 = lshr i32 %2115, 31
  %2146 = lshr i32 %2122, 31
  %2147 = xor i32 %2146, %2145
  %2148 = xor i32 %2142, %2145
  %2149 = add i32 %2148, %2147
  %2150 = icmp eq i32 %2149, 2
  %2151 = zext i1 %2150 to i8
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2151, i8* %2152, align 1
  store %struct.Memory* %loadMem_4438de, %struct.Memory** %MEMORY
  %loadMem_4438e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2154 = getelementptr inbounds %struct.GPR, %struct.GPR* %2153, i32 0, i32 33
  %2155 = getelementptr inbounds %struct.Reg, %struct.Reg* %2154, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %2155 to i64*
  %2156 = load i64, i64* %PC.i815
  %2157 = add i64 %2156, 150
  %2158 = load i64, i64* %PC.i815
  %2159 = add i64 %2158, 6
  %2160 = load i64, i64* %PC.i815
  %2161 = add i64 %2160, 6
  store i64 %2161, i64* %PC.i815
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2163 = load i8, i8* %2162, align 1
  %2164 = icmp ne i8 %2163, 0
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2166 = load i8, i8* %2165, align 1
  %2167 = icmp ne i8 %2166, 0
  %2168 = xor i1 %2164, %2167
  %2169 = xor i1 %2168, true
  %2170 = zext i1 %2169 to i8
  store i8 %2170, i8* %BRANCH_TAKEN, align 1
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2172 = select i1 %2168, i64 %2159, i64 %2157
  store i64 %2172, i64* %2171, align 8
  store %struct.Memory* %loadMem_4438e1, %struct.Memory** %MEMORY
  %loadBr_4438e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4438e1 = icmp eq i8 %loadBr_4438e1, 1
  br i1 %cmpBr_4438e1, label %block_.L_443977, label %block_.L_4438e7

block_.L_4438e7:                                  ; preds = %block_4438db, %block_4438aa, %routine_ucomiss_MINUS0x60__rbp____xmm0.exit863
  %loadMem_4438e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 33
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %2175 to i64*
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2177 = getelementptr inbounds %struct.GPR, %struct.GPR* %2176, i32 0, i32 1
  %2178 = getelementptr inbounds %struct.Reg, %struct.Reg* %2177, i32 0, i32 0
  %RAX.i813 = bitcast %union.anon* %2178 to i64*
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2180 = getelementptr inbounds %struct.GPR, %struct.GPR* %2179, i32 0, i32 15
  %2181 = getelementptr inbounds %struct.Reg, %struct.Reg* %2180, i32 0, i32 0
  %RBP.i814 = bitcast %union.anon* %2181 to i64*
  %2182 = load i64, i64* %RBP.i814
  %2183 = sub i64 %2182, 16
  %2184 = load i64, i64* %PC.i812
  %2185 = add i64 %2184, 4
  store i64 %2185, i64* %PC.i812
  %2186 = inttoptr i64 %2183 to i64*
  %2187 = load i64, i64* %2186
  store i64 %2187, i64* %RAX.i813, align 8
  store %struct.Memory* %loadMem_4438e7, %struct.Memory** %MEMORY
  %loadMem_4438eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2189 = getelementptr inbounds %struct.GPR, %struct.GPR* %2188, i32 0, i32 33
  %2190 = getelementptr inbounds %struct.Reg, %struct.Reg* %2189, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %2190 to i64*
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2192 = getelementptr inbounds %struct.GPR, %struct.GPR* %2191, i32 0, i32 1
  %2193 = getelementptr inbounds %struct.Reg, %struct.Reg* %2192, i32 0, i32 0
  %RAX.i811 = bitcast %union.anon* %2193 to i64*
  %2194 = load i64, i64* %RAX.i811
  %2195 = add i64 %2194, 24
  %2196 = load i64, i64* %PC.i810
  %2197 = add i64 %2196, 4
  store i64 %2197, i64* %PC.i810
  %2198 = inttoptr i64 %2195 to i64*
  %2199 = load i64, i64* %2198
  store i64 %2199, i64* %RAX.i811, align 8
  store %struct.Memory* %loadMem_4438eb, %struct.Memory** %MEMORY
  %loadMem_4438ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2201 = getelementptr inbounds %struct.GPR, %struct.GPR* %2200, i32 0, i32 33
  %2202 = getelementptr inbounds %struct.Reg, %struct.Reg* %2201, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %2202 to i64*
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2204 = getelementptr inbounds %struct.GPR, %struct.GPR* %2203, i32 0, i32 5
  %2205 = getelementptr inbounds %struct.Reg, %struct.Reg* %2204, i32 0, i32 0
  %RCX.i808 = bitcast %union.anon* %2205 to i64*
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2207 = getelementptr inbounds %struct.GPR, %struct.GPR* %2206, i32 0, i32 15
  %2208 = getelementptr inbounds %struct.Reg, %struct.Reg* %2207, i32 0, i32 0
  %RBP.i809 = bitcast %union.anon* %2208 to i64*
  %2209 = load i64, i64* %RBP.i809
  %2210 = sub i64 %2209, 44
  %2211 = load i64, i64* %PC.i807
  %2212 = add i64 %2211, 4
  store i64 %2212, i64* %PC.i807
  %2213 = inttoptr i64 %2210 to i32*
  %2214 = load i32, i32* %2213
  %2215 = sext i32 %2214 to i64
  store i64 %2215, i64* %RCX.i808, align 8
  store %struct.Memory* %loadMem_4438ef, %struct.Memory** %MEMORY
  %loadMem_4438f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 33
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %2218 to i64*
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 5
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %RCX.i806 = bitcast %union.anon* %2221 to i64*
  %2222 = load i64, i64* %RCX.i806
  %2223 = load i64, i64* %PC.i805
  %2224 = add i64 %2223, 4
  store i64 %2224, i64* %PC.i805
  %2225 = shl i64 %2222, 3
  %2226 = icmp slt i64 %2225, 0
  %2227 = shl i64 %2225, 1
  store i64 %2227, i64* %RCX.i806, align 8
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2229 = zext i1 %2226 to i8
  store i8 %2229, i8* %2228, align 1
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2231 = trunc i64 %2227 to i32
  %2232 = and i32 %2231, 254
  %2233 = call i32 @llvm.ctpop.i32(i32 %2232)
  %2234 = trunc i32 %2233 to i8
  %2235 = and i8 %2234, 1
  %2236 = xor i8 %2235, 1
  store i8 %2236, i8* %2230, align 1
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2237, align 1
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2239 = icmp eq i64 %2227, 0
  %2240 = zext i1 %2239 to i8
  store i8 %2240, i8* %2238, align 1
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2242 = lshr i64 %2227, 63
  %2243 = trunc i64 %2242 to i8
  store i8 %2243, i8* %2241, align 1
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2244, align 1
  store %struct.Memory* %loadMem_4438f3, %struct.Memory** %MEMORY
  %loadMem_4438f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2246 = getelementptr inbounds %struct.GPR, %struct.GPR* %2245, i32 0, i32 33
  %2247 = getelementptr inbounds %struct.Reg, %struct.Reg* %2246, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %2247 to i64*
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2249 = getelementptr inbounds %struct.GPR, %struct.GPR* %2248, i32 0, i32 1
  %2250 = getelementptr inbounds %struct.Reg, %struct.Reg* %2249, i32 0, i32 0
  %RAX.i803 = bitcast %union.anon* %2250 to i64*
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2252 = getelementptr inbounds %struct.GPR, %struct.GPR* %2251, i32 0, i32 5
  %2253 = getelementptr inbounds %struct.Reg, %struct.Reg* %2252, i32 0, i32 0
  %RCX.i804 = bitcast %union.anon* %2253 to i64*
  %2254 = load i64, i64* %RAX.i803
  %2255 = load i64, i64* %RCX.i804
  %2256 = load i64, i64* %PC.i802
  %2257 = add i64 %2256, 3
  store i64 %2257, i64* %PC.i802
  %2258 = add i64 %2255, %2254
  store i64 %2258, i64* %RAX.i803, align 8
  %2259 = icmp ult i64 %2258, %2254
  %2260 = icmp ult i64 %2258, %2255
  %2261 = or i1 %2259, %2260
  %2262 = zext i1 %2261 to i8
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2262, i8* %2263, align 1
  %2264 = trunc i64 %2258 to i32
  %2265 = and i32 %2264, 255
  %2266 = call i32 @llvm.ctpop.i32(i32 %2265)
  %2267 = trunc i32 %2266 to i8
  %2268 = and i8 %2267, 1
  %2269 = xor i8 %2268, 1
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2269, i8* %2270, align 1
  %2271 = xor i64 %2255, %2254
  %2272 = xor i64 %2271, %2258
  %2273 = lshr i64 %2272, 4
  %2274 = trunc i64 %2273 to i8
  %2275 = and i8 %2274, 1
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2275, i8* %2276, align 1
  %2277 = icmp eq i64 %2258, 0
  %2278 = zext i1 %2277 to i8
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2278, i8* %2279, align 1
  %2280 = lshr i64 %2258, 63
  %2281 = trunc i64 %2280 to i8
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2281, i8* %2282, align 1
  %2283 = lshr i64 %2254, 63
  %2284 = lshr i64 %2255, 63
  %2285 = xor i64 %2280, %2283
  %2286 = xor i64 %2280, %2284
  %2287 = add i64 %2285, %2286
  %2288 = icmp eq i64 %2287, 2
  %2289 = zext i1 %2288 to i8
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2289, i8* %2290, align 1
  store %struct.Memory* %loadMem_4438f7, %struct.Memory** %MEMORY
  %loadMem_4438fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2292 = getelementptr inbounds %struct.GPR, %struct.GPR* %2291, i32 0, i32 33
  %2293 = getelementptr inbounds %struct.Reg, %struct.Reg* %2292, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %2293 to i64*
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2295 = getelementptr inbounds %struct.GPR, %struct.GPR* %2294, i32 0, i32 1
  %2296 = getelementptr inbounds %struct.Reg, %struct.Reg* %2295, i32 0, i32 0
  %RAX.i800 = bitcast %union.anon* %2296 to i64*
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2298 = getelementptr inbounds %struct.GPR, %struct.GPR* %2297, i32 0, i32 5
  %2299 = getelementptr inbounds %struct.Reg, %struct.Reg* %2298, i32 0, i32 0
  %RCX.i801 = bitcast %union.anon* %2299 to i64*
  %2300 = load i64, i64* %RAX.i800
  %2301 = load i64, i64* %PC.i799
  %2302 = add i64 %2301, 3
  store i64 %2302, i64* %PC.i799
  %2303 = inttoptr i64 %2300 to i64*
  %2304 = load i64, i64* %2303
  store i64 %2304, i64* %RCX.i801, align 8
  store %struct.Memory* %loadMem_4438fa, %struct.Memory** %MEMORY
  %loadMem_4438fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 33
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %2307 to i64*
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 5
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %RCX.i797 = bitcast %union.anon* %2310 to i64*
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 15
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %RBP.i798 = bitcast %union.anon* %2313 to i64*
  %2314 = load i64, i64* %RBP.i798
  %2315 = sub i64 %2314, 72
  %2316 = load i64, i64* %RCX.i797
  %2317 = load i64, i64* %PC.i796
  %2318 = add i64 %2317, 4
  store i64 %2318, i64* %PC.i796
  %2319 = inttoptr i64 %2315 to i64*
  store i64 %2316, i64* %2319
  store %struct.Memory* %loadMem_4438fd, %struct.Memory** %MEMORY
  %loadMem_443901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 33
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %2322 to i64*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 1
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %RAX.i795 = bitcast %union.anon* %2325 to i64*
  %2326 = load i64, i64* %RAX.i795
  %2327 = add i64 %2326, 8
  %2328 = load i64, i64* %PC.i794
  %2329 = add i64 %2328, 4
  store i64 %2329, i64* %PC.i794
  %2330 = inttoptr i64 %2327 to i64*
  %2331 = load i64, i64* %2330
  store i64 %2331, i64* %RAX.i795, align 8
  store %struct.Memory* %loadMem_443901, %struct.Memory** %MEMORY
  %loadMem_443905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 33
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %2334 to i64*
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 1
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %RAX.i792 = bitcast %union.anon* %2337 to i64*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 15
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %RBP.i793 = bitcast %union.anon* %2340 to i64*
  %2341 = load i64, i64* %RBP.i793
  %2342 = sub i64 %2341, 64
  %2343 = load i64, i64* %RAX.i792
  %2344 = load i64, i64* %PC.i791
  %2345 = add i64 %2344, 4
  store i64 %2345, i64* %PC.i791
  %2346 = inttoptr i64 %2342 to i64*
  store i64 %2343, i64* %2346
  store %struct.Memory* %loadMem_443905, %struct.Memory** %MEMORY
  %loadMem_443909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 33
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %2349 to i64*
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 1
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %RAX.i789 = bitcast %union.anon* %2352 to i64*
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 15
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %RBP.i790 = bitcast %union.anon* %2355 to i64*
  %2356 = load i64, i64* %RBP.i790
  %2357 = sub i64 %2356, 16
  %2358 = load i64, i64* %PC.i788
  %2359 = add i64 %2358, 4
  store i64 %2359, i64* %PC.i788
  %2360 = inttoptr i64 %2357 to i64*
  %2361 = load i64, i64* %2360
  store i64 %2361, i64* %RAX.i789, align 8
  store %struct.Memory* %loadMem_443909, %struct.Memory** %MEMORY
  %loadMem_44390d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 33
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %2364 to i64*
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 1
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %RAX.i787 = bitcast %union.anon* %2367 to i64*
  %2368 = load i64, i64* %RAX.i787
  %2369 = add i64 %2368, 24
  %2370 = load i64, i64* %PC.i786
  %2371 = add i64 %2370, 4
  store i64 %2371, i64* %PC.i786
  %2372 = inttoptr i64 %2369 to i64*
  %2373 = load i64, i64* %2372
  store i64 %2373, i64* %RAX.i787, align 8
  store %struct.Memory* %loadMem_44390d, %struct.Memory** %MEMORY
  %loadMem_443911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 33
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %2376 to i64*
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 5
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %RCX.i784 = bitcast %union.anon* %2379 to i64*
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 15
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %RBP.i785 = bitcast %union.anon* %2382 to i64*
  %2383 = load i64, i64* %RBP.i785
  %2384 = sub i64 %2383, 44
  %2385 = load i64, i64* %PC.i783
  %2386 = add i64 %2385, 4
  store i64 %2386, i64* %PC.i783
  %2387 = inttoptr i64 %2384 to i32*
  %2388 = load i32, i32* %2387
  %2389 = sext i32 %2388 to i64
  store i64 %2389, i64* %RCX.i784, align 8
  store %struct.Memory* %loadMem_443911, %struct.Memory** %MEMORY
  %loadMem_443915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 33
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %2392 to i64*
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 5
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %RCX.i782 = bitcast %union.anon* %2395 to i64*
  %2396 = load i64, i64* %RCX.i782
  %2397 = load i64, i64* %PC.i781
  %2398 = add i64 %2397, 4
  store i64 %2398, i64* %PC.i781
  %2399 = shl i64 %2396, 3
  %2400 = icmp slt i64 %2399, 0
  %2401 = shl i64 %2399, 1
  store i64 %2401, i64* %RCX.i782, align 8
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2403 = zext i1 %2400 to i8
  store i8 %2403, i8* %2402, align 1
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2405 = trunc i64 %2401 to i32
  %2406 = and i32 %2405, 254
  %2407 = call i32 @llvm.ctpop.i32(i32 %2406)
  %2408 = trunc i32 %2407 to i8
  %2409 = and i8 %2408, 1
  %2410 = xor i8 %2409, 1
  store i8 %2410, i8* %2404, align 1
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2411, align 1
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2413 = icmp eq i64 %2401, 0
  %2414 = zext i1 %2413 to i8
  store i8 %2414, i8* %2412, align 1
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2416 = lshr i64 %2401, 63
  %2417 = trunc i64 %2416 to i8
  store i8 %2417, i8* %2415, align 1
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2418, align 1
  store %struct.Memory* %loadMem_443915, %struct.Memory** %MEMORY
  %loadMem_443919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 33
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %2421 to i64*
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 1
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %RAX.i779 = bitcast %union.anon* %2424 to i64*
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2426 = getelementptr inbounds %struct.GPR, %struct.GPR* %2425, i32 0, i32 5
  %2427 = getelementptr inbounds %struct.Reg, %struct.Reg* %2426, i32 0, i32 0
  %RCX.i780 = bitcast %union.anon* %2427 to i64*
  %2428 = load i64, i64* %RAX.i779
  %2429 = load i64, i64* %RCX.i780
  %2430 = load i64, i64* %PC.i778
  %2431 = add i64 %2430, 3
  store i64 %2431, i64* %PC.i778
  %2432 = add i64 %2429, %2428
  store i64 %2432, i64* %RAX.i779, align 8
  %2433 = icmp ult i64 %2432, %2428
  %2434 = icmp ult i64 %2432, %2429
  %2435 = or i1 %2433, %2434
  %2436 = zext i1 %2435 to i8
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2436, i8* %2437, align 1
  %2438 = trunc i64 %2432 to i32
  %2439 = and i32 %2438, 255
  %2440 = call i32 @llvm.ctpop.i32(i32 %2439)
  %2441 = trunc i32 %2440 to i8
  %2442 = and i8 %2441, 1
  %2443 = xor i8 %2442, 1
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2443, i8* %2444, align 1
  %2445 = xor i64 %2429, %2428
  %2446 = xor i64 %2445, %2432
  %2447 = lshr i64 %2446, 4
  %2448 = trunc i64 %2447 to i8
  %2449 = and i8 %2448, 1
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2449, i8* %2450, align 1
  %2451 = icmp eq i64 %2432, 0
  %2452 = zext i1 %2451 to i8
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2452, i8* %2453, align 1
  %2454 = lshr i64 %2432, 63
  %2455 = trunc i64 %2454 to i8
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2455, i8* %2456, align 1
  %2457 = lshr i64 %2428, 63
  %2458 = lshr i64 %2429, 63
  %2459 = xor i64 %2454, %2457
  %2460 = xor i64 %2454, %2458
  %2461 = add i64 %2459, %2460
  %2462 = icmp eq i64 %2461, 2
  %2463 = zext i1 %2462 to i8
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2463, i8* %2464, align 1
  store %struct.Memory* %loadMem_443919, %struct.Memory** %MEMORY
  %loadMem_44391c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2466 = getelementptr inbounds %struct.GPR, %struct.GPR* %2465, i32 0, i32 33
  %2467 = getelementptr inbounds %struct.Reg, %struct.Reg* %2466, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %2467 to i64*
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2469 = getelementptr inbounds %struct.GPR, %struct.GPR* %2468, i32 0, i32 5
  %2470 = getelementptr inbounds %struct.Reg, %struct.Reg* %2469, i32 0, i32 0
  %RCX.i776 = bitcast %union.anon* %2470 to i64*
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 15
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %RBP.i777 = bitcast %union.anon* %2473 to i64*
  %2474 = load i64, i64* %RBP.i777
  %2475 = sub i64 %2474, 16
  %2476 = load i64, i64* %PC.i775
  %2477 = add i64 %2476, 4
  store i64 %2477, i64* %PC.i775
  %2478 = inttoptr i64 %2475 to i64*
  %2479 = load i64, i64* %2478
  store i64 %2479, i64* %RCX.i776, align 8
  store %struct.Memory* %loadMem_44391c, %struct.Memory** %MEMORY
  %loadMem_443920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 33
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %2482 to i64*
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 5
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %RCX.i774 = bitcast %union.anon* %2485 to i64*
  %2486 = load i64, i64* %RCX.i774
  %2487 = add i64 %2486, 24
  %2488 = load i64, i64* %PC.i773
  %2489 = add i64 %2488, 4
  store i64 %2489, i64* %PC.i773
  %2490 = inttoptr i64 %2487 to i64*
  %2491 = load i64, i64* %2490
  store i64 %2491, i64* %RCX.i774, align 8
  store %struct.Memory* %loadMem_443920, %struct.Memory** %MEMORY
  %loadMem_443924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2493 = getelementptr inbounds %struct.GPR, %struct.GPR* %2492, i32 0, i32 33
  %2494 = getelementptr inbounds %struct.Reg, %struct.Reg* %2493, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %2494 to i64*
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 7
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %RDX.i771 = bitcast %union.anon* %2497 to i64*
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 15
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %RBP.i772 = bitcast %union.anon* %2500 to i64*
  %2501 = load i64, i64* %RBP.i772
  %2502 = sub i64 %2501, 40
  %2503 = load i64, i64* %PC.i770
  %2504 = add i64 %2503, 4
  store i64 %2504, i64* %PC.i770
  %2505 = inttoptr i64 %2502 to i32*
  %2506 = load i32, i32* %2505
  %2507 = sext i32 %2506 to i64
  store i64 %2507, i64* %RDX.i771, align 8
  store %struct.Memory* %loadMem_443924, %struct.Memory** %MEMORY
  %loadMem_443928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2509 = getelementptr inbounds %struct.GPR, %struct.GPR* %2508, i32 0, i32 33
  %2510 = getelementptr inbounds %struct.Reg, %struct.Reg* %2509, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %2510 to i64*
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2512 = getelementptr inbounds %struct.GPR, %struct.GPR* %2511, i32 0, i32 7
  %2513 = getelementptr inbounds %struct.Reg, %struct.Reg* %2512, i32 0, i32 0
  %RDX.i769 = bitcast %union.anon* %2513 to i64*
  %2514 = load i64, i64* %RDX.i769
  %2515 = load i64, i64* %PC.i768
  %2516 = add i64 %2515, 4
  store i64 %2516, i64* %PC.i768
  %2517 = shl i64 %2514, 3
  %2518 = icmp slt i64 %2517, 0
  %2519 = shl i64 %2517, 1
  store i64 %2519, i64* %RDX.i769, align 8
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2521 = zext i1 %2518 to i8
  store i8 %2521, i8* %2520, align 1
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2523 = trunc i64 %2519 to i32
  %2524 = and i32 %2523, 254
  %2525 = call i32 @llvm.ctpop.i32(i32 %2524)
  %2526 = trunc i32 %2525 to i8
  %2527 = and i8 %2526, 1
  %2528 = xor i8 %2527, 1
  store i8 %2528, i8* %2522, align 1
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2529, align 1
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2531 = icmp eq i64 %2519, 0
  %2532 = zext i1 %2531 to i8
  store i8 %2532, i8* %2530, align 1
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2534 = lshr i64 %2519, 63
  %2535 = trunc i64 %2534 to i8
  store i8 %2535, i8* %2533, align 1
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2536, align 1
  store %struct.Memory* %loadMem_443928, %struct.Memory** %MEMORY
  %loadMem_44392c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2538 = getelementptr inbounds %struct.GPR, %struct.GPR* %2537, i32 0, i32 33
  %2539 = getelementptr inbounds %struct.Reg, %struct.Reg* %2538, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %2539 to i64*
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 5
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %RCX.i766 = bitcast %union.anon* %2542 to i64*
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 7
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %RDX.i767 = bitcast %union.anon* %2545 to i64*
  %2546 = load i64, i64* %RCX.i766
  %2547 = load i64, i64* %RDX.i767
  %2548 = load i64, i64* %PC.i765
  %2549 = add i64 %2548, 3
  store i64 %2549, i64* %PC.i765
  %2550 = add i64 %2547, %2546
  store i64 %2550, i64* %RCX.i766, align 8
  %2551 = icmp ult i64 %2550, %2546
  %2552 = icmp ult i64 %2550, %2547
  %2553 = or i1 %2551, %2552
  %2554 = zext i1 %2553 to i8
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2554, i8* %2555, align 1
  %2556 = trunc i64 %2550 to i32
  %2557 = and i32 %2556, 255
  %2558 = call i32 @llvm.ctpop.i32(i32 %2557)
  %2559 = trunc i32 %2558 to i8
  %2560 = and i8 %2559, 1
  %2561 = xor i8 %2560, 1
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2561, i8* %2562, align 1
  %2563 = xor i64 %2547, %2546
  %2564 = xor i64 %2563, %2550
  %2565 = lshr i64 %2564, 4
  %2566 = trunc i64 %2565 to i8
  %2567 = and i8 %2566, 1
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2567, i8* %2568, align 1
  %2569 = icmp eq i64 %2550, 0
  %2570 = zext i1 %2569 to i8
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2570, i8* %2571, align 1
  %2572 = lshr i64 %2550, 63
  %2573 = trunc i64 %2572 to i8
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2573, i8* %2574, align 1
  %2575 = lshr i64 %2546, 63
  %2576 = lshr i64 %2547, 63
  %2577 = xor i64 %2572, %2575
  %2578 = xor i64 %2572, %2576
  %2579 = add i64 %2577, %2578
  %2580 = icmp eq i64 %2579, 2
  %2581 = zext i1 %2580 to i8
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2581, i8* %2582, align 1
  store %struct.Memory* %loadMem_44392c, %struct.Memory** %MEMORY
  %loadMem_44392f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 33
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %2585 to i64*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 5
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %RCX.i763 = bitcast %union.anon* %2588 to i64*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 7
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %RDX.i764 = bitcast %union.anon* %2591 to i64*
  %2592 = load i64, i64* %RCX.i763
  %2593 = load i64, i64* %PC.i762
  %2594 = add i64 %2593, 3
  store i64 %2594, i64* %PC.i762
  %2595 = inttoptr i64 %2592 to i64*
  %2596 = load i64, i64* %2595
  store i64 %2596, i64* %RDX.i764, align 8
  store %struct.Memory* %loadMem_44392f, %struct.Memory** %MEMORY
  %loadMem_443932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2598 = getelementptr inbounds %struct.GPR, %struct.GPR* %2597, i32 0, i32 33
  %2599 = getelementptr inbounds %struct.Reg, %struct.Reg* %2598, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %2599 to i64*
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2601 = getelementptr inbounds %struct.GPR, %struct.GPR* %2600, i32 0, i32 1
  %2602 = getelementptr inbounds %struct.Reg, %struct.Reg* %2601, i32 0, i32 0
  %RAX.i760 = bitcast %union.anon* %2602 to i64*
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2604 = getelementptr inbounds %struct.GPR, %struct.GPR* %2603, i32 0, i32 7
  %2605 = getelementptr inbounds %struct.Reg, %struct.Reg* %2604, i32 0, i32 0
  %RDX.i761 = bitcast %union.anon* %2605 to i64*
  %2606 = load i64, i64* %RAX.i760
  %2607 = load i64, i64* %RDX.i761
  %2608 = load i64, i64* %PC.i759
  %2609 = add i64 %2608, 3
  store i64 %2609, i64* %PC.i759
  %2610 = inttoptr i64 %2606 to i64*
  store i64 %2607, i64* %2610
  store %struct.Memory* %loadMem_443932, %struct.Memory** %MEMORY
  %loadMem_443935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 33
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %2613 to i64*
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2615 = getelementptr inbounds %struct.GPR, %struct.GPR* %2614, i32 0, i32 5
  %2616 = getelementptr inbounds %struct.Reg, %struct.Reg* %2615, i32 0, i32 0
  %RCX.i758 = bitcast %union.anon* %2616 to i64*
  %2617 = load i64, i64* %RCX.i758
  %2618 = add i64 %2617, 8
  %2619 = load i64, i64* %PC.i757
  %2620 = add i64 %2619, 4
  store i64 %2620, i64* %PC.i757
  %2621 = inttoptr i64 %2618 to i64*
  %2622 = load i64, i64* %2621
  store i64 %2622, i64* %RCX.i758, align 8
  store %struct.Memory* %loadMem_443935, %struct.Memory** %MEMORY
  %loadMem_443939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 33
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %2625 to i64*
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 1
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %RAX.i755 = bitcast %union.anon* %2628 to i64*
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2630 = getelementptr inbounds %struct.GPR, %struct.GPR* %2629, i32 0, i32 5
  %2631 = getelementptr inbounds %struct.Reg, %struct.Reg* %2630, i32 0, i32 0
  %RCX.i756 = bitcast %union.anon* %2631 to i64*
  %2632 = load i64, i64* %RAX.i755
  %2633 = add i64 %2632, 8
  %2634 = load i64, i64* %RCX.i756
  %2635 = load i64, i64* %PC.i754
  %2636 = add i64 %2635, 4
  store i64 %2636, i64* %PC.i754
  %2637 = inttoptr i64 %2633 to i64*
  store i64 %2634, i64* %2637
  store %struct.Memory* %loadMem_443939, %struct.Memory** %MEMORY
  %loadMem_44393d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2639 = getelementptr inbounds %struct.GPR, %struct.GPR* %2638, i32 0, i32 33
  %2640 = getelementptr inbounds %struct.Reg, %struct.Reg* %2639, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %2640 to i64*
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2642 = getelementptr inbounds %struct.GPR, %struct.GPR* %2641, i32 0, i32 1
  %2643 = getelementptr inbounds %struct.Reg, %struct.Reg* %2642, i32 0, i32 0
  %RAX.i752 = bitcast %union.anon* %2643 to i64*
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2645 = getelementptr inbounds %struct.GPR, %struct.GPR* %2644, i32 0, i32 15
  %2646 = getelementptr inbounds %struct.Reg, %struct.Reg* %2645, i32 0, i32 0
  %RBP.i753 = bitcast %union.anon* %2646 to i64*
  %2647 = load i64, i64* %RBP.i753
  %2648 = sub i64 %2647, 16
  %2649 = load i64, i64* %PC.i751
  %2650 = add i64 %2649, 4
  store i64 %2650, i64* %PC.i751
  %2651 = inttoptr i64 %2648 to i64*
  %2652 = load i64, i64* %2651
  store i64 %2652, i64* %RAX.i752, align 8
  store %struct.Memory* %loadMem_44393d, %struct.Memory** %MEMORY
  %loadMem_443941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 33
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %2655 to i64*
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2657 = getelementptr inbounds %struct.GPR, %struct.GPR* %2656, i32 0, i32 1
  %2658 = getelementptr inbounds %struct.Reg, %struct.Reg* %2657, i32 0, i32 0
  %RAX.i750 = bitcast %union.anon* %2658 to i64*
  %2659 = load i64, i64* %RAX.i750
  %2660 = add i64 %2659, 24
  %2661 = load i64, i64* %PC.i749
  %2662 = add i64 %2661, 4
  store i64 %2662, i64* %PC.i749
  %2663 = inttoptr i64 %2660 to i64*
  %2664 = load i64, i64* %2663
  store i64 %2664, i64* %RAX.i750, align 8
  store %struct.Memory* %loadMem_443941, %struct.Memory** %MEMORY
  %loadMem_443945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2666 = getelementptr inbounds %struct.GPR, %struct.GPR* %2665, i32 0, i32 33
  %2667 = getelementptr inbounds %struct.Reg, %struct.Reg* %2666, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %2667 to i64*
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2669 = getelementptr inbounds %struct.GPR, %struct.GPR* %2668, i32 0, i32 5
  %2670 = getelementptr inbounds %struct.Reg, %struct.Reg* %2669, i32 0, i32 0
  %RCX.i747 = bitcast %union.anon* %2670 to i64*
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 15
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %RBP.i748 = bitcast %union.anon* %2673 to i64*
  %2674 = load i64, i64* %RBP.i748
  %2675 = sub i64 %2674, 40
  %2676 = load i64, i64* %PC.i746
  %2677 = add i64 %2676, 4
  store i64 %2677, i64* %PC.i746
  %2678 = inttoptr i64 %2675 to i32*
  %2679 = load i32, i32* %2678
  %2680 = sext i32 %2679 to i64
  store i64 %2680, i64* %RCX.i747, align 8
  store %struct.Memory* %loadMem_443945, %struct.Memory** %MEMORY
  %loadMem_443949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 33
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %2683 to i64*
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2685 = getelementptr inbounds %struct.GPR, %struct.GPR* %2684, i32 0, i32 5
  %2686 = getelementptr inbounds %struct.Reg, %struct.Reg* %2685, i32 0, i32 0
  %RCX.i745 = bitcast %union.anon* %2686 to i64*
  %2687 = load i64, i64* %RCX.i745
  %2688 = load i64, i64* %PC.i744
  %2689 = add i64 %2688, 4
  store i64 %2689, i64* %PC.i744
  %2690 = shl i64 %2687, 3
  %2691 = icmp slt i64 %2690, 0
  %2692 = shl i64 %2690, 1
  store i64 %2692, i64* %RCX.i745, align 8
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2694 = zext i1 %2691 to i8
  store i8 %2694, i8* %2693, align 1
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2696 = trunc i64 %2692 to i32
  %2697 = and i32 %2696, 254
  %2698 = call i32 @llvm.ctpop.i32(i32 %2697)
  %2699 = trunc i32 %2698 to i8
  %2700 = and i8 %2699, 1
  %2701 = xor i8 %2700, 1
  store i8 %2701, i8* %2695, align 1
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2702, align 1
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2704 = icmp eq i64 %2692, 0
  %2705 = zext i1 %2704 to i8
  store i8 %2705, i8* %2703, align 1
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2707 = lshr i64 %2692, 63
  %2708 = trunc i64 %2707 to i8
  store i8 %2708, i8* %2706, align 1
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2709, align 1
  store %struct.Memory* %loadMem_443949, %struct.Memory** %MEMORY
  %loadMem_44394d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2711 = getelementptr inbounds %struct.GPR, %struct.GPR* %2710, i32 0, i32 33
  %2712 = getelementptr inbounds %struct.Reg, %struct.Reg* %2711, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %2712 to i64*
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2714 = getelementptr inbounds %struct.GPR, %struct.GPR* %2713, i32 0, i32 1
  %2715 = getelementptr inbounds %struct.Reg, %struct.Reg* %2714, i32 0, i32 0
  %RAX.i742 = bitcast %union.anon* %2715 to i64*
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2717 = getelementptr inbounds %struct.GPR, %struct.GPR* %2716, i32 0, i32 5
  %2718 = getelementptr inbounds %struct.Reg, %struct.Reg* %2717, i32 0, i32 0
  %RCX.i743 = bitcast %union.anon* %2718 to i64*
  %2719 = load i64, i64* %RAX.i742
  %2720 = load i64, i64* %RCX.i743
  %2721 = load i64, i64* %PC.i741
  %2722 = add i64 %2721, 3
  store i64 %2722, i64* %PC.i741
  %2723 = add i64 %2720, %2719
  store i64 %2723, i64* %RAX.i742, align 8
  %2724 = icmp ult i64 %2723, %2719
  %2725 = icmp ult i64 %2723, %2720
  %2726 = or i1 %2724, %2725
  %2727 = zext i1 %2726 to i8
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2727, i8* %2728, align 1
  %2729 = trunc i64 %2723 to i32
  %2730 = and i32 %2729, 255
  %2731 = call i32 @llvm.ctpop.i32(i32 %2730)
  %2732 = trunc i32 %2731 to i8
  %2733 = and i8 %2732, 1
  %2734 = xor i8 %2733, 1
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2734, i8* %2735, align 1
  %2736 = xor i64 %2720, %2719
  %2737 = xor i64 %2736, %2723
  %2738 = lshr i64 %2737, 4
  %2739 = trunc i64 %2738 to i8
  %2740 = and i8 %2739, 1
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2740, i8* %2741, align 1
  %2742 = icmp eq i64 %2723, 0
  %2743 = zext i1 %2742 to i8
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2743, i8* %2744, align 1
  %2745 = lshr i64 %2723, 63
  %2746 = trunc i64 %2745 to i8
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2746, i8* %2747, align 1
  %2748 = lshr i64 %2719, 63
  %2749 = lshr i64 %2720, 63
  %2750 = xor i64 %2745, %2748
  %2751 = xor i64 %2745, %2749
  %2752 = add i64 %2750, %2751
  %2753 = icmp eq i64 %2752, 2
  %2754 = zext i1 %2753 to i8
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2754, i8* %2755, align 1
  store %struct.Memory* %loadMem_44394d, %struct.Memory** %MEMORY
  %loadMem_443950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 33
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %2758 to i64*
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 5
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %RCX.i739 = bitcast %union.anon* %2761 to i64*
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2763 = getelementptr inbounds %struct.GPR, %struct.GPR* %2762, i32 0, i32 15
  %2764 = getelementptr inbounds %struct.Reg, %struct.Reg* %2763, i32 0, i32 0
  %RBP.i740 = bitcast %union.anon* %2764 to i64*
  %2765 = load i64, i64* %RBP.i740
  %2766 = sub i64 %2765, 72
  %2767 = load i64, i64* %PC.i738
  %2768 = add i64 %2767, 4
  store i64 %2768, i64* %PC.i738
  %2769 = inttoptr i64 %2766 to i64*
  %2770 = load i64, i64* %2769
  store i64 %2770, i64* %RCX.i739, align 8
  store %struct.Memory* %loadMem_443950, %struct.Memory** %MEMORY
  %loadMem_443954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 33
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %2773 to i64*
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2775 = getelementptr inbounds %struct.GPR, %struct.GPR* %2774, i32 0, i32 1
  %2776 = getelementptr inbounds %struct.Reg, %struct.Reg* %2775, i32 0, i32 0
  %RAX.i736 = bitcast %union.anon* %2776 to i64*
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2778 = getelementptr inbounds %struct.GPR, %struct.GPR* %2777, i32 0, i32 5
  %2779 = getelementptr inbounds %struct.Reg, %struct.Reg* %2778, i32 0, i32 0
  %RCX.i737 = bitcast %union.anon* %2779 to i64*
  %2780 = load i64, i64* %RAX.i736
  %2781 = load i64, i64* %RCX.i737
  %2782 = load i64, i64* %PC.i735
  %2783 = add i64 %2782, 3
  store i64 %2783, i64* %PC.i735
  %2784 = inttoptr i64 %2780 to i64*
  store i64 %2781, i64* %2784
  store %struct.Memory* %loadMem_443954, %struct.Memory** %MEMORY
  %loadMem_443957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 33
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %2787 to i64*
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2789 = getelementptr inbounds %struct.GPR, %struct.GPR* %2788, i32 0, i32 5
  %2790 = getelementptr inbounds %struct.Reg, %struct.Reg* %2789, i32 0, i32 0
  %RCX.i733 = bitcast %union.anon* %2790 to i64*
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2792 = getelementptr inbounds %struct.GPR, %struct.GPR* %2791, i32 0, i32 15
  %2793 = getelementptr inbounds %struct.Reg, %struct.Reg* %2792, i32 0, i32 0
  %RBP.i734 = bitcast %union.anon* %2793 to i64*
  %2794 = load i64, i64* %RBP.i734
  %2795 = sub i64 %2794, 64
  %2796 = load i64, i64* %PC.i732
  %2797 = add i64 %2796, 4
  store i64 %2797, i64* %PC.i732
  %2798 = inttoptr i64 %2795 to i64*
  %2799 = load i64, i64* %2798
  store i64 %2799, i64* %RCX.i733, align 8
  store %struct.Memory* %loadMem_443957, %struct.Memory** %MEMORY
  %loadMem_44395b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 33
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %2802 to i64*
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2804 = getelementptr inbounds %struct.GPR, %struct.GPR* %2803, i32 0, i32 1
  %2805 = getelementptr inbounds %struct.Reg, %struct.Reg* %2804, i32 0, i32 0
  %RAX.i730 = bitcast %union.anon* %2805 to i64*
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2807 = getelementptr inbounds %struct.GPR, %struct.GPR* %2806, i32 0, i32 5
  %2808 = getelementptr inbounds %struct.Reg, %struct.Reg* %2807, i32 0, i32 0
  %RCX.i731 = bitcast %union.anon* %2808 to i64*
  %2809 = load i64, i64* %RAX.i730
  %2810 = add i64 %2809, 8
  %2811 = load i64, i64* %RCX.i731
  %2812 = load i64, i64* %PC.i729
  %2813 = add i64 %2812, 4
  store i64 %2813, i64* %PC.i729
  %2814 = inttoptr i64 %2810 to i64*
  store i64 %2811, i64* %2814
  store %struct.Memory* %loadMem_44395b, %struct.Memory** %MEMORY
  %loadMem_44395f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 33
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %2817 to i64*
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 15
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %RBP.i727 = bitcast %union.anon* %2820 to i64*
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2822 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2821, i64 0, i64 0
  %YMM0.i728 = bitcast %union.VectorReg* %2822 to %"class.std::bitset"*
  %2823 = bitcast %"class.std::bitset"* %YMM0.i728 to i8*
  %2824 = load i64, i64* %RBP.i727
  %2825 = sub i64 %2824, 112
  %2826 = load i64, i64* %PC.i726
  %2827 = add i64 %2826, 5
  store i64 %2827, i64* %PC.i726
  %2828 = inttoptr i64 %2825 to float*
  %2829 = load float, float* %2828
  %2830 = bitcast i8* %2823 to float*
  store float %2829, float* %2830, align 1
  %2831 = getelementptr inbounds i8, i8* %2823, i64 4
  %2832 = bitcast i8* %2831 to float*
  store float 0.000000e+00, float* %2832, align 1
  %2833 = getelementptr inbounds i8, i8* %2823, i64 8
  %2834 = bitcast i8* %2833 to float*
  store float 0.000000e+00, float* %2834, align 1
  %2835 = getelementptr inbounds i8, i8* %2823, i64 12
  %2836 = bitcast i8* %2835 to float*
  store float 0.000000e+00, float* %2836, align 1
  store %struct.Memory* %loadMem_44395f, %struct.Memory** %MEMORY
  %loadMem_443964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2838 = getelementptr inbounds %struct.GPR, %struct.GPR* %2837, i32 0, i32 33
  %2839 = getelementptr inbounds %struct.Reg, %struct.Reg* %2838, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %2839 to i64*
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2841 = getelementptr inbounds %struct.GPR, %struct.GPR* %2840, i32 0, i32 15
  %2842 = getelementptr inbounds %struct.Reg, %struct.Reg* %2841, i32 0, i32 0
  %RBP.i724 = bitcast %union.anon* %2842 to i64*
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2844 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2843, i64 0, i64 0
  %XMM0.i725 = bitcast %union.VectorReg* %2844 to %union.vec128_t*
  %2845 = load i64, i64* %RBP.i724
  %2846 = sub i64 %2845, 96
  %2847 = bitcast %union.vec128_t* %XMM0.i725 to i8*
  %2848 = load i64, i64* %PC.i723
  %2849 = add i64 %2848, 5
  store i64 %2849, i64* %PC.i723
  %2850 = bitcast i8* %2847 to <2 x float>*
  %2851 = load <2 x float>, <2 x float>* %2850, align 1
  %2852 = extractelement <2 x float> %2851, i32 0
  %2853 = inttoptr i64 %2846 to float*
  store float %2852, float* %2853
  store %struct.Memory* %loadMem_443964, %struct.Memory** %MEMORY
  %loadMem_443969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2855 = getelementptr inbounds %struct.GPR, %struct.GPR* %2854, i32 0, i32 33
  %2856 = getelementptr inbounds %struct.Reg, %struct.Reg* %2855, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %2856 to i64*
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2858 = getelementptr inbounds %struct.GPR, %struct.GPR* %2857, i32 0, i32 1
  %2859 = getelementptr inbounds %struct.Reg, %struct.Reg* %2858, i32 0, i32 0
  %RAX.i721 = bitcast %union.anon* %2859 to i64*
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2861 = getelementptr inbounds %struct.GPR, %struct.GPR* %2860, i32 0, i32 15
  %2862 = getelementptr inbounds %struct.Reg, %struct.Reg* %2861, i32 0, i32 0
  %RBP.i722 = bitcast %union.anon* %2862 to i64*
  %2863 = load i64, i64* %RBP.i722
  %2864 = sub i64 %2863, 120
  %2865 = load i64, i64* %PC.i720
  %2866 = add i64 %2865, 4
  store i64 %2866, i64* %PC.i720
  %2867 = inttoptr i64 %2864 to i64*
  %2868 = load i64, i64* %2867
  store i64 %2868, i64* %RAX.i721, align 8
  store %struct.Memory* %loadMem_443969, %struct.Memory** %MEMORY
  %loadMem_44396d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 33
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %2871 to i64*
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2873 = getelementptr inbounds %struct.GPR, %struct.GPR* %2872, i32 0, i32 1
  %2874 = getelementptr inbounds %struct.Reg, %struct.Reg* %2873, i32 0, i32 0
  %RAX.i718 = bitcast %union.anon* %2874 to i64*
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2876 = getelementptr inbounds %struct.GPR, %struct.GPR* %2875, i32 0, i32 15
  %2877 = getelementptr inbounds %struct.Reg, %struct.Reg* %2876, i32 0, i32 0
  %RBP.i719 = bitcast %union.anon* %2877 to i64*
  %2878 = load i64, i64* %RBP.i719
  %2879 = sub i64 %2878, 104
  %2880 = load i64, i64* %RAX.i718
  %2881 = load i64, i64* %PC.i717
  %2882 = add i64 %2881, 4
  store i64 %2882, i64* %PC.i717
  %2883 = inttoptr i64 %2879 to i64*
  store i64 %2880, i64* %2883
  store %struct.Memory* %loadMem_44396d, %struct.Memory** %MEMORY
  %loadMem_443971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2885 = getelementptr inbounds %struct.GPR, %struct.GPR* %2884, i32 0, i32 33
  %2886 = getelementptr inbounds %struct.Reg, %struct.Reg* %2885, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %2886 to i64*
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2888 = getelementptr inbounds %struct.GPR, %struct.GPR* %2887, i32 0, i32 9
  %2889 = getelementptr inbounds %struct.Reg, %struct.Reg* %2888, i32 0, i32 0
  %RSI.i715 = bitcast %union.anon* %2889 to i64*
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 15
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %RBP.i716 = bitcast %union.anon* %2892 to i64*
  %2893 = load i64, i64* %RBP.i716
  %2894 = sub i64 %2893, 124
  %2895 = load i64, i64* %PC.i714
  %2896 = add i64 %2895, 3
  store i64 %2896, i64* %PC.i714
  %2897 = inttoptr i64 %2894 to i32*
  %2898 = load i32, i32* %2897
  %2899 = zext i32 %2898 to i64
  store i64 %2899, i64* %RSI.i715, align 8
  store %struct.Memory* %loadMem_443971, %struct.Memory** %MEMORY
  %loadMem_443974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 33
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %2902 to i64*
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 9
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %2905 to i32*
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2907 = getelementptr inbounds %struct.GPR, %struct.GPR* %2906, i32 0, i32 15
  %2908 = getelementptr inbounds %struct.Reg, %struct.Reg* %2907, i32 0, i32 0
  %RBP.i713 = bitcast %union.anon* %2908 to i64*
  %2909 = load i64, i64* %RBP.i713
  %2910 = sub i64 %2909, 108
  %2911 = load i32, i32* %ESI.i
  %2912 = zext i32 %2911 to i64
  %2913 = load i64, i64* %PC.i712
  %2914 = add i64 %2913, 3
  store i64 %2914, i64* %PC.i712
  %2915 = inttoptr i64 %2910 to i32*
  store i32 %2911, i32* %2915
  store %struct.Memory* %loadMem_443974, %struct.Memory** %MEMORY
  br label %block_.L_443977

block_.L_443977:                                  ; preds = %block_.L_4438e7, %block_4438db, %block_4438cd, %block_4438c7, %routine_ucomiss_MINUS0x60__rbp____xmm0.exit
  %loadMem_443977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 33
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %2918 to i64*
  %2919 = load i64, i64* %PC.i711
  %2920 = add i64 %2919, 5
  %2921 = load i64, i64* %PC.i711
  %2922 = add i64 %2921, 5
  store i64 %2922, i64* %PC.i711
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2920, i64* %2923, align 8
  store %struct.Memory* %loadMem_443977, %struct.Memory** %MEMORY
  br label %block_.L_44397c

block_.L_44397c:                                  ; preds = %block_.L_443977
  %loadMem_44397c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2925 = getelementptr inbounds %struct.GPR, %struct.GPR* %2924, i32 0, i32 33
  %2926 = getelementptr inbounds %struct.Reg, %struct.Reg* %2925, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %2926 to i64*
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2928 = getelementptr inbounds %struct.GPR, %struct.GPR* %2927, i32 0, i32 1
  %2929 = getelementptr inbounds %struct.Reg, %struct.Reg* %2928, i32 0, i32 0
  %RAX.i709 = bitcast %union.anon* %2929 to i64*
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 15
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %RBP.i710 = bitcast %union.anon* %2932 to i64*
  %2933 = load i64, i64* %RBP.i710
  %2934 = sub i64 %2933, 44
  %2935 = load i64, i64* %PC.i708
  %2936 = add i64 %2935, 3
  store i64 %2936, i64* %PC.i708
  %2937 = inttoptr i64 %2934 to i32*
  %2938 = load i32, i32* %2937
  %2939 = zext i32 %2938 to i64
  store i64 %2939, i64* %RAX.i709, align 8
  store %struct.Memory* %loadMem_44397c, %struct.Memory** %MEMORY
  %loadMem_44397f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2941 = getelementptr inbounds %struct.GPR, %struct.GPR* %2940, i32 0, i32 33
  %2942 = getelementptr inbounds %struct.Reg, %struct.Reg* %2941, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %2942 to i64*
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2944 = getelementptr inbounds %struct.GPR, %struct.GPR* %2943, i32 0, i32 1
  %2945 = getelementptr inbounds %struct.Reg, %struct.Reg* %2944, i32 0, i32 0
  %RAX.i707 = bitcast %union.anon* %2945 to i64*
  %2946 = load i64, i64* %RAX.i707
  %2947 = load i64, i64* %PC.i706
  %2948 = add i64 %2947, 3
  store i64 %2948, i64* %PC.i706
  %2949 = trunc i64 %2946 to i32
  %2950 = add i32 -1, %2949
  %2951 = zext i32 %2950 to i64
  store i64 %2951, i64* %RAX.i707, align 8
  %2952 = icmp ult i32 %2950, %2949
  %2953 = icmp ult i32 %2950, -1
  %2954 = or i1 %2952, %2953
  %2955 = zext i1 %2954 to i8
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2955, i8* %2956, align 1
  %2957 = and i32 %2950, 255
  %2958 = call i32 @llvm.ctpop.i32(i32 %2957)
  %2959 = trunc i32 %2958 to i8
  %2960 = and i8 %2959, 1
  %2961 = xor i8 %2960, 1
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2961, i8* %2962, align 1
  %2963 = xor i64 -1, %2946
  %2964 = trunc i64 %2963 to i32
  %2965 = xor i32 %2964, %2950
  %2966 = lshr i32 %2965, 4
  %2967 = trunc i32 %2966 to i8
  %2968 = and i8 %2967, 1
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2968, i8* %2969, align 1
  %2970 = icmp eq i32 %2950, 0
  %2971 = zext i1 %2970 to i8
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2971, i8* %2972, align 1
  %2973 = lshr i32 %2950, 31
  %2974 = trunc i32 %2973 to i8
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2974, i8* %2975, align 1
  %2976 = lshr i32 %2949, 31
  %2977 = xor i32 %2973, %2976
  %2978 = xor i32 %2973, 1
  %2979 = add i32 %2977, %2978
  %2980 = icmp eq i32 %2979, 2
  %2981 = zext i1 %2980 to i8
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2981, i8* %2982, align 1
  store %struct.Memory* %loadMem_44397f, %struct.Memory** %MEMORY
  %loadMem_443982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 33
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %2985 to i64*
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 1
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %EAX.i704 = bitcast %union.anon* %2988 to i32*
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 15
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %2991 to i64*
  %2992 = load i64, i64* %RBP.i705
  %2993 = sub i64 %2992, 44
  %2994 = load i32, i32* %EAX.i704
  %2995 = zext i32 %2994 to i64
  %2996 = load i64, i64* %PC.i703
  %2997 = add i64 %2996, 3
  store i64 %2997, i64* %PC.i703
  %2998 = inttoptr i64 %2993 to i32*
  store i32 %2994, i32* %2998
  store %struct.Memory* %loadMem_443982, %struct.Memory** %MEMORY
  %loadMem_443985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 33
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %3001 to i64*
  %3002 = load i64, i64* %PC.i702
  %3003 = add i64 %3002, -381
  %3004 = load i64, i64* %PC.i702
  %3005 = add i64 %3004, 5
  store i64 %3005, i64* %PC.i702
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3003, i64* %3006, align 8
  store %struct.Memory* %loadMem_443985, %struct.Memory** %MEMORY
  br label %block_.L_443808

block_.L_44398a:                                  ; preds = %block_.L_443808
  %loadMem_44398a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 33
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %3009 to i64*
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 1
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %RAX.i700 = bitcast %union.anon* %3012 to i64*
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3014 = getelementptr inbounds %struct.GPR, %struct.GPR* %3013, i32 0, i32 15
  %3015 = getelementptr inbounds %struct.Reg, %struct.Reg* %3014, i32 0, i32 0
  %RBP.i701 = bitcast %union.anon* %3015 to i64*
  %3016 = load i64, i64* %RBP.i701
  %3017 = sub i64 %3016, 16
  %3018 = load i64, i64* %PC.i699
  %3019 = add i64 %3018, 4
  store i64 %3019, i64* %PC.i699
  %3020 = inttoptr i64 %3017 to i64*
  %3021 = load i64, i64* %3020
  store i64 %3021, i64* %RAX.i700, align 8
  store %struct.Memory* %loadMem_44398a, %struct.Memory** %MEMORY
  %loadMem_44398e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 33
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %3024 to i64*
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 1
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %RAX.i697 = bitcast %union.anon* %3027 to i64*
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 5
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %RCX.i698 = bitcast %union.anon* %3030 to i64*
  %3031 = load i64, i64* %RAX.i697
  %3032 = add i64 %3031, 12
  %3033 = load i64, i64* %PC.i696
  %3034 = add i64 %3033, 3
  store i64 %3034, i64* %PC.i696
  %3035 = inttoptr i64 %3032 to i32*
  %3036 = load i32, i32* %3035
  %3037 = zext i32 %3036 to i64
  store i64 %3037, i64* %RCX.i698, align 8
  store %struct.Memory* %loadMem_44398e, %struct.Memory** %MEMORY
  %loadMem_443991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3039 = getelementptr inbounds %struct.GPR, %struct.GPR* %3038, i32 0, i32 33
  %3040 = getelementptr inbounds %struct.Reg, %struct.Reg* %3039, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %3040 to i64*
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 5
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %RCX.i695 = bitcast %union.anon* %3043 to i64*
  %3044 = load i64, i64* %RCX.i695
  %3045 = load i64, i64* %PC.i694
  %3046 = add i64 %3045, 3
  store i64 %3046, i64* %PC.i694
  %3047 = trunc i64 %3044 to i32
  %3048 = add i32 1, %3047
  %3049 = zext i32 %3048 to i64
  store i64 %3049, i64* %RCX.i695, align 8
  %3050 = icmp ult i32 %3048, %3047
  %3051 = icmp ult i32 %3048, 1
  %3052 = or i1 %3050, %3051
  %3053 = zext i1 %3052 to i8
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3053, i8* %3054, align 1
  %3055 = and i32 %3048, 255
  %3056 = call i32 @llvm.ctpop.i32(i32 %3055)
  %3057 = trunc i32 %3056 to i8
  %3058 = and i8 %3057, 1
  %3059 = xor i8 %3058, 1
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3059, i8* %3060, align 1
  %3061 = xor i64 1, %3044
  %3062 = trunc i64 %3061 to i32
  %3063 = xor i32 %3062, %3048
  %3064 = lshr i32 %3063, 4
  %3065 = trunc i32 %3064 to i8
  %3066 = and i8 %3065, 1
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3066, i8* %3067, align 1
  %3068 = icmp eq i32 %3048, 0
  %3069 = zext i1 %3068 to i8
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3069, i8* %3070, align 1
  %3071 = lshr i32 %3048, 31
  %3072 = trunc i32 %3071 to i8
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3072, i8* %3073, align 1
  %3074 = lshr i32 %3047, 31
  %3075 = xor i32 %3071, %3074
  %3076 = add i32 %3075, %3071
  %3077 = icmp eq i32 %3076, 2
  %3078 = zext i1 %3077 to i8
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3078, i8* %3079, align 1
  store %struct.Memory* %loadMem_443991, %struct.Memory** %MEMORY
  %loadMem_443994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 33
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %3082 to i64*
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3084 = getelementptr inbounds %struct.GPR, %struct.GPR* %3083, i32 0, i32 5
  %3085 = getelementptr inbounds %struct.Reg, %struct.Reg* %3084, i32 0, i32 0
  %ECX.i692 = bitcast %union.anon* %3085 to i32*
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3087 = getelementptr inbounds %struct.GPR, %struct.GPR* %3086, i32 0, i32 1
  %3088 = getelementptr inbounds %struct.Reg, %struct.Reg* %3087, i32 0, i32 0
  %RAX.i693 = bitcast %union.anon* %3088 to i64*
  %3089 = load i64, i64* %RAX.i693
  %3090 = add i64 %3089, 12
  %3091 = load i32, i32* %ECX.i692
  %3092 = zext i32 %3091 to i64
  %3093 = load i64, i64* %PC.i691
  %3094 = add i64 %3093, 3
  store i64 %3094, i64* %PC.i691
  %3095 = inttoptr i64 %3090 to i32*
  store i32 %3091, i32* %3095
  store %struct.Memory* %loadMem_443994, %struct.Memory** %MEMORY
  br label %block_.L_443997

block_.L_443997:                                  ; preds = %block_.L_44398a, %block_443797
  %loadMem_443997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 33
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %3098 to i64*
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 1
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %RAX.i689 = bitcast %union.anon* %3101 to i64*
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3103 = getelementptr inbounds %struct.GPR, %struct.GPR* %3102, i32 0, i32 15
  %3104 = getelementptr inbounds %struct.Reg, %struct.Reg* %3103, i32 0, i32 0
  %RBP.i690 = bitcast %union.anon* %3104 to i64*
  %3105 = load i64, i64* %RBP.i690
  %3106 = sub i64 %3105, 16
  %3107 = load i64, i64* %PC.i688
  %3108 = add i64 %3107, 4
  store i64 %3108, i64* %PC.i688
  %3109 = inttoptr i64 %3106 to i64*
  %3110 = load i64, i64* %3109
  store i64 %3110, i64* %RAX.i689, align 8
  store %struct.Memory* %loadMem_443997, %struct.Memory** %MEMORY
  %loadMem_44399b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3112 = getelementptr inbounds %struct.GPR, %struct.GPR* %3111, i32 0, i32 33
  %3113 = getelementptr inbounds %struct.Reg, %struct.Reg* %3112, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %3113 to i64*
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3115 = getelementptr inbounds %struct.GPR, %struct.GPR* %3114, i32 0, i32 1
  %3116 = getelementptr inbounds %struct.Reg, %struct.Reg* %3115, i32 0, i32 0
  %RAX.i687 = bitcast %union.anon* %3116 to i64*
  %3117 = load i64, i64* %RAX.i687
  %3118 = add i64 %3117, 24
  %3119 = load i64, i64* %PC.i686
  %3120 = add i64 %3119, 4
  store i64 %3120, i64* %PC.i686
  %3121 = inttoptr i64 %3118 to i64*
  %3122 = load i64, i64* %3121
  store i64 %3122, i64* %RAX.i687, align 8
  store %struct.Memory* %loadMem_44399b, %struct.Memory** %MEMORY
  %loadMem_44399f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 33
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %3125 to i64*
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3127 = getelementptr inbounds %struct.GPR, %struct.GPR* %3126, i32 0, i32 5
  %3128 = getelementptr inbounds %struct.Reg, %struct.Reg* %3127, i32 0, i32 0
  %RCX.i684 = bitcast %union.anon* %3128 to i64*
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 15
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %RBP.i685 = bitcast %union.anon* %3131 to i64*
  %3132 = load i64, i64* %RBP.i685
  %3133 = sub i64 %3132, 40
  %3134 = load i64, i64* %PC.i683
  %3135 = add i64 %3134, 4
  store i64 %3135, i64* %PC.i683
  %3136 = inttoptr i64 %3133 to i32*
  %3137 = load i32, i32* %3136
  %3138 = sext i32 %3137 to i64
  store i64 %3138, i64* %RCX.i684, align 8
  store %struct.Memory* %loadMem_44399f, %struct.Memory** %MEMORY
  %loadMem_4439a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3140 = getelementptr inbounds %struct.GPR, %struct.GPR* %3139, i32 0, i32 33
  %3141 = getelementptr inbounds %struct.Reg, %struct.Reg* %3140, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %3141 to i64*
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3143 = getelementptr inbounds %struct.GPR, %struct.GPR* %3142, i32 0, i32 5
  %3144 = getelementptr inbounds %struct.Reg, %struct.Reg* %3143, i32 0, i32 0
  %RCX.i682 = bitcast %union.anon* %3144 to i64*
  %3145 = load i64, i64* %RCX.i682
  %3146 = load i64, i64* %PC.i681
  %3147 = add i64 %3146, 4
  store i64 %3147, i64* %PC.i681
  %3148 = shl i64 %3145, 3
  %3149 = icmp slt i64 %3148, 0
  %3150 = shl i64 %3148, 1
  store i64 %3150, i64* %RCX.i682, align 8
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3152 = zext i1 %3149 to i8
  store i8 %3152, i8* %3151, align 1
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3154 = trunc i64 %3150 to i32
  %3155 = and i32 %3154, 254
  %3156 = call i32 @llvm.ctpop.i32(i32 %3155)
  %3157 = trunc i32 %3156 to i8
  %3158 = and i8 %3157, 1
  %3159 = xor i8 %3158, 1
  store i8 %3159, i8* %3153, align 1
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3160, align 1
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3162 = icmp eq i64 %3150, 0
  %3163 = zext i1 %3162 to i8
  store i8 %3163, i8* %3161, align 1
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3165 = lshr i64 %3150, 63
  %3166 = trunc i64 %3165 to i8
  store i8 %3166, i8* %3164, align 1
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3167, align 1
  store %struct.Memory* %loadMem_4439a3, %struct.Memory** %MEMORY
  %loadMem_4439a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3169 = getelementptr inbounds %struct.GPR, %struct.GPR* %3168, i32 0, i32 33
  %3170 = getelementptr inbounds %struct.Reg, %struct.Reg* %3169, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %3170 to i64*
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3172 = getelementptr inbounds %struct.GPR, %struct.GPR* %3171, i32 0, i32 1
  %3173 = getelementptr inbounds %struct.Reg, %struct.Reg* %3172, i32 0, i32 0
  %RAX.i679 = bitcast %union.anon* %3173 to i64*
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 5
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %RCX.i680 = bitcast %union.anon* %3176 to i64*
  %3177 = load i64, i64* %RAX.i679
  %3178 = load i64, i64* %RCX.i680
  %3179 = load i64, i64* %PC.i678
  %3180 = add i64 %3179, 3
  store i64 %3180, i64* %PC.i678
  %3181 = add i64 %3178, %3177
  store i64 %3181, i64* %RAX.i679, align 8
  %3182 = icmp ult i64 %3181, %3177
  %3183 = icmp ult i64 %3181, %3178
  %3184 = or i1 %3182, %3183
  %3185 = zext i1 %3184 to i8
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3185, i8* %3186, align 1
  %3187 = trunc i64 %3181 to i32
  %3188 = and i32 %3187, 255
  %3189 = call i32 @llvm.ctpop.i32(i32 %3188)
  %3190 = trunc i32 %3189 to i8
  %3191 = and i8 %3190, 1
  %3192 = xor i8 %3191, 1
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3192, i8* %3193, align 1
  %3194 = xor i64 %3178, %3177
  %3195 = xor i64 %3194, %3181
  %3196 = lshr i64 %3195, 4
  %3197 = trunc i64 %3196 to i8
  %3198 = and i8 %3197, 1
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3198, i8* %3199, align 1
  %3200 = icmp eq i64 %3181, 0
  %3201 = zext i1 %3200 to i8
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3201, i8* %3202, align 1
  %3203 = lshr i64 %3181, 63
  %3204 = trunc i64 %3203 to i8
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3204, i8* %3205, align 1
  %3206 = lshr i64 %3177, 63
  %3207 = lshr i64 %3178, 63
  %3208 = xor i64 %3203, %3206
  %3209 = xor i64 %3203, %3207
  %3210 = add i64 %3208, %3209
  %3211 = icmp eq i64 %3210, 2
  %3212 = zext i1 %3211 to i8
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3212, i8* %3213, align 1
  store %struct.Memory* %loadMem_4439a7, %struct.Memory** %MEMORY
  %loadMem_4439aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 33
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %3216 to i64*
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3218 = getelementptr inbounds %struct.GPR, %struct.GPR* %3217, i32 0, i32 1
  %3219 = getelementptr inbounds %struct.Reg, %struct.Reg* %3218, i32 0, i32 0
  %RAX.i676 = bitcast %union.anon* %3219 to i64*
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3221 = getelementptr inbounds %struct.GPR, %struct.GPR* %3220, i32 0, i32 5
  %3222 = getelementptr inbounds %struct.Reg, %struct.Reg* %3221, i32 0, i32 0
  %RCX.i677 = bitcast %union.anon* %3222 to i64*
  %3223 = load i64, i64* %RAX.i676
  %3224 = load i64, i64* %PC.i675
  %3225 = add i64 %3224, 3
  store i64 %3225, i64* %PC.i675
  %3226 = inttoptr i64 %3223 to i64*
  %3227 = load i64, i64* %3226
  store i64 %3227, i64* %RCX.i677, align 8
  store %struct.Memory* %loadMem_4439aa, %struct.Memory** %MEMORY
  %loadMem_4439ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3229 = getelementptr inbounds %struct.GPR, %struct.GPR* %3228, i32 0, i32 33
  %3230 = getelementptr inbounds %struct.Reg, %struct.Reg* %3229, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %3230 to i64*
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 5
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %RCX.i673 = bitcast %union.anon* %3233 to i64*
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3235 = getelementptr inbounds %struct.GPR, %struct.GPR* %3234, i32 0, i32 15
  %3236 = getelementptr inbounds %struct.Reg, %struct.Reg* %3235, i32 0, i32 0
  %RBP.i674 = bitcast %union.anon* %3236 to i64*
  %3237 = load i64, i64* %RBP.i674
  %3238 = sub i64 %3237, 72
  %3239 = load i64, i64* %RCX.i673
  %3240 = load i64, i64* %PC.i672
  %3241 = add i64 %3240, 4
  store i64 %3241, i64* %PC.i672
  %3242 = inttoptr i64 %3238 to i64*
  store i64 %3239, i64* %3242
  store %struct.Memory* %loadMem_4439ad, %struct.Memory** %MEMORY
  %loadMem_4439b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 33
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %3245 to i64*
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 1
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %RAX.i671 = bitcast %union.anon* %3248 to i64*
  %3249 = load i64, i64* %RAX.i671
  %3250 = add i64 %3249, 8
  %3251 = load i64, i64* %PC.i670
  %3252 = add i64 %3251, 4
  store i64 %3252, i64* %PC.i670
  %3253 = inttoptr i64 %3250 to i64*
  %3254 = load i64, i64* %3253
  store i64 %3254, i64* %RAX.i671, align 8
  store %struct.Memory* %loadMem_4439b1, %struct.Memory** %MEMORY
  %loadMem_4439b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 33
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %3257 to i64*
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3259 = getelementptr inbounds %struct.GPR, %struct.GPR* %3258, i32 0, i32 1
  %3260 = getelementptr inbounds %struct.Reg, %struct.Reg* %3259, i32 0, i32 0
  %RAX.i668 = bitcast %union.anon* %3260 to i64*
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3262 = getelementptr inbounds %struct.GPR, %struct.GPR* %3261, i32 0, i32 15
  %3263 = getelementptr inbounds %struct.Reg, %struct.Reg* %3262, i32 0, i32 0
  %RBP.i669 = bitcast %union.anon* %3263 to i64*
  %3264 = load i64, i64* %RBP.i669
  %3265 = sub i64 %3264, 64
  %3266 = load i64, i64* %RAX.i668
  %3267 = load i64, i64* %PC.i667
  %3268 = add i64 %3267, 4
  store i64 %3268, i64* %PC.i667
  %3269 = inttoptr i64 %3265 to i64*
  store i64 %3266, i64* %3269
  store %struct.Memory* %loadMem_4439b5, %struct.Memory** %MEMORY
  %loadMem_4439b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 33
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %3272 to i64*
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3274 = getelementptr inbounds %struct.GPR, %struct.GPR* %3273, i32 0, i32 15
  %3275 = getelementptr inbounds %struct.Reg, %struct.Reg* %3274, i32 0, i32 0
  %RBP.i666 = bitcast %union.anon* %3275 to i64*
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3277 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3276, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3277 to %"class.std::bitset"*
  %3278 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3279 = load i64, i64* %RBP.i666
  %3280 = sub i64 %3279, 96
  %3281 = load i64, i64* %PC.i665
  %3282 = add i64 %3281, 5
  store i64 %3282, i64* %PC.i665
  %3283 = inttoptr i64 %3280 to float*
  %3284 = load float, float* %3283
  %3285 = bitcast i8* %3278 to float*
  store float %3284, float* %3285, align 1
  %3286 = getelementptr inbounds i8, i8* %3278, i64 4
  %3287 = bitcast i8* %3286 to float*
  store float 0.000000e+00, float* %3287, align 1
  %3288 = getelementptr inbounds i8, i8* %3278, i64 8
  %3289 = bitcast i8* %3288 to float*
  store float 0.000000e+00, float* %3289, align 1
  %3290 = getelementptr inbounds i8, i8* %3278, i64 12
  %3291 = bitcast i8* %3290 to float*
  store float 0.000000e+00, float* %3291, align 1
  store %struct.Memory* %loadMem_4439b9, %struct.Memory** %MEMORY
  %loadMem_4439be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3293 = getelementptr inbounds %struct.GPR, %struct.GPR* %3292, i32 0, i32 33
  %3294 = getelementptr inbounds %struct.Reg, %struct.Reg* %3293, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %3294 to i64*
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3296 = getelementptr inbounds %struct.GPR, %struct.GPR* %3295, i32 0, i32 15
  %3297 = getelementptr inbounds %struct.Reg, %struct.Reg* %3296, i32 0, i32 0
  %RBP.i664 = bitcast %union.anon* %3297 to i64*
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3299 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3298, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3299 to %"class.std::bitset"*
  %3300 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3301 = load i64, i64* %RBP.i664
  %3302 = sub i64 %3301, 36
  %3303 = load i64, i64* %PC.i663
  %3304 = add i64 %3303, 5
  store i64 %3304, i64* %PC.i663
  %3305 = bitcast i8* %3300 to <2 x i32>*
  %3306 = load <2 x i32>, <2 x i32>* %3305, align 1
  %3307 = getelementptr inbounds i8, i8* %3300, i64 8
  %3308 = bitcast i8* %3307 to <2 x i32>*
  %3309 = load <2 x i32>, <2 x i32>* %3308, align 1
  %3310 = inttoptr i64 %3302 to i32*
  %3311 = load i32, i32* %3310
  %3312 = sitofp i32 %3311 to float
  %3313 = bitcast i8* %3300 to float*
  store float %3312, float* %3313, align 1
  %3314 = extractelement <2 x i32> %3306, i32 1
  %3315 = getelementptr inbounds i8, i8* %3300, i64 4
  %3316 = bitcast i8* %3315 to i32*
  store i32 %3314, i32* %3316, align 1
  %3317 = extractelement <2 x i32> %3309, i32 0
  %3318 = bitcast i8* %3307 to i32*
  store i32 %3317, i32* %3318, align 1
  %3319 = extractelement <2 x i32> %3309, i32 1
  %3320 = getelementptr inbounds i8, i8* %3300, i64 12
  %3321 = bitcast i8* %3320 to i32*
  store i32 %3319, i32* %3321, align 1
  store %struct.Memory* %loadMem_4439be, %struct.Memory** %MEMORY
  %loadMem_4439c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3323 = getelementptr inbounds %struct.GPR, %struct.GPR* %3322, i32 0, i32 33
  %3324 = getelementptr inbounds %struct.Reg, %struct.Reg* %3323, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %3324 to i64*
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3326 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3325, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3326 to %union.vec128_t*
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3328 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3327, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %3328 to %union.vec128_t*
  %3329 = bitcast %union.vec128_t* %XMM1.i to i8*
  %3330 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3331 = load i64, i64* %PC.i659
  %3332 = add i64 %3331, 3
  store i64 %3332, i64* %PC.i659
  %3333 = bitcast i8* %3329 to <2 x float>*
  %3334 = load <2 x float>, <2 x float>* %3333, align 1
  %3335 = extractelement <2 x float> %3334, i32 0
  %3336 = bitcast i8* %3330 to <2 x float>*
  %3337 = load <2 x float>, <2 x float>* %3336, align 1
  %3338 = extractelement <2 x float> %3337, i32 0
  %3339 = fcmp uno float %3335, %3338
  br i1 %3339, label %3340, label %3352

; <label>:3340:                                   ; preds = %block_.L_443997
  %3341 = fadd float %3335, %3338
  %3342 = bitcast float %3341 to i32
  %3343 = and i32 %3342, 2143289344
  %3344 = icmp eq i32 %3343, 2139095040
  %3345 = and i32 %3342, 4194303
  %3346 = icmp ne i32 %3345, 0
  %3347 = and i1 %3344, %3346
  br i1 %3347, label %3348, label %3358

; <label>:3348:                                   ; preds = %3340
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3350 = load i64, i64* %3349, align 8
  %3351 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3350, %struct.Memory* %loadMem_4439c3)
  br label %routine_ucomiss__xmm0___xmm1.exit

; <label>:3352:                                   ; preds = %block_.L_443997
  %3353 = fcmp ogt float %3335, %3338
  br i1 %3353, label %3358, label %3354

; <label>:3354:                                   ; preds = %3352
  %3355 = fcmp olt float %3335, %3338
  br i1 %3355, label %3358, label %3356

; <label>:3356:                                   ; preds = %3354
  %3357 = fcmp oeq float %3335, %3338
  br i1 %3357, label %3358, label %3365

; <label>:3358:                                   ; preds = %3356, %3354, %3352, %3340
  %3359 = phi i8 [ 0, %3352 ], [ 0, %3354 ], [ 1, %3356 ], [ 1, %3340 ]
  %3360 = phi i8 [ 0, %3352 ], [ 0, %3354 ], [ 0, %3356 ], [ 1, %3340 ]
  %3361 = phi i8 [ 0, %3352 ], [ 1, %3354 ], [ 0, %3356 ], [ 1, %3340 ]
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3359, i8* %3362, align 1
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3360, i8* %3363, align 1
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3361, i8* %3364, align 1
  br label %3365

; <label>:3365:                                   ; preds = %3358, %3356
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3366, align 1
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3367, align 1
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3368, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit

routine_ucomiss__xmm0___xmm1.exit:                ; preds = %3348, %3365
  %3369 = phi %struct.Memory* [ %3351, %3348 ], [ %loadMem_4439c3, %3365 ]
  store %struct.Memory* %3369, %struct.Memory** %MEMORY
  %loadMem_4439c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 33
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %3372 to i64*
  %3373 = load i64, i64* %PC.i658
  %3374 = add i64 %3373, 63
  %3375 = load i64, i64* %PC.i658
  %3376 = add i64 %3375, 6
  %3377 = load i64, i64* %PC.i658
  %3378 = add i64 %3377, 6
  store i64 %3378, i64* %PC.i658
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3380 = load i8, i8* %3379, align 1
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3382 = load i8, i8* %3381, align 1
  %3383 = or i8 %3382, %3380
  %3384 = icmp ne i8 %3383, 0
  %3385 = zext i1 %3384 to i8
  store i8 %3385, i8* %BRANCH_TAKEN, align 1
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3387 = select i1 %3384, i64 %3374, i64 %3376
  store i64 %3387, i64* %3386, align 8
  store %struct.Memory* %loadMem_4439c6, %struct.Memory** %MEMORY
  %loadBr_4439c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4439c6 = icmp eq i8 %loadBr_4439c6, 1
  br i1 %cmpBr_4439c6, label %block_.L_443a05, label %block_4439cc

block_4439cc:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %loadMem_4439cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3389 = getelementptr inbounds %struct.GPR, %struct.GPR* %3388, i32 0, i32 33
  %3390 = getelementptr inbounds %struct.Reg, %struct.Reg* %3389, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %3390 to i64*
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3392 = getelementptr inbounds %struct.GPR, %struct.GPR* %3391, i32 0, i32 1
  %3393 = getelementptr inbounds %struct.Reg, %struct.Reg* %3392, i32 0, i32 0
  %RAX.i656 = bitcast %union.anon* %3393 to i64*
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3395 = getelementptr inbounds %struct.GPR, %struct.GPR* %3394, i32 0, i32 15
  %3396 = getelementptr inbounds %struct.Reg, %struct.Reg* %3395, i32 0, i32 0
  %RBP.i657 = bitcast %union.anon* %3396 to i64*
  %3397 = load i64, i64* %RBP.i657
  %3398 = sub i64 %3397, 40
  %3399 = load i64, i64* %PC.i655
  %3400 = add i64 %3399, 3
  store i64 %3400, i64* %PC.i655
  %3401 = inttoptr i64 %3398 to i32*
  %3402 = load i32, i32* %3401
  %3403 = zext i32 %3402 to i64
  store i64 %3403, i64* %RAX.i656, align 8
  store %struct.Memory* %loadMem_4439cc, %struct.Memory** %MEMORY
  %loadMem_4439cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 33
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %3406 to i64*
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3408 = getelementptr inbounds %struct.GPR, %struct.GPR* %3407, i32 0, i32 1
  %3409 = getelementptr inbounds %struct.Reg, %struct.Reg* %3408, i32 0, i32 0
  %RAX.i654 = bitcast %union.anon* %3409 to i64*
  %3410 = load i64, i64* %RAX.i654
  %3411 = load i64, i64* %PC.i653
  %3412 = add i64 %3411, 3
  store i64 %3412, i64* %PC.i653
  %3413 = trunc i64 %3410 to i32
  %3414 = add i32 1, %3413
  %3415 = zext i32 %3414 to i64
  store i64 %3415, i64* %RAX.i654, align 8
  %3416 = icmp ult i32 %3414, %3413
  %3417 = icmp ult i32 %3414, 1
  %3418 = or i1 %3416, %3417
  %3419 = zext i1 %3418 to i8
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3419, i8* %3420, align 1
  %3421 = and i32 %3414, 255
  %3422 = call i32 @llvm.ctpop.i32(i32 %3421)
  %3423 = trunc i32 %3422 to i8
  %3424 = and i8 %3423, 1
  %3425 = xor i8 %3424, 1
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3425, i8* %3426, align 1
  %3427 = xor i64 1, %3410
  %3428 = trunc i64 %3427 to i32
  %3429 = xor i32 %3428, %3414
  %3430 = lshr i32 %3429, 4
  %3431 = trunc i32 %3430 to i8
  %3432 = and i8 %3431, 1
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3432, i8* %3433, align 1
  %3434 = icmp eq i32 %3414, 0
  %3435 = zext i1 %3434 to i8
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3435, i8* %3436, align 1
  %3437 = lshr i32 %3414, 31
  %3438 = trunc i32 %3437 to i8
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3438, i8* %3439, align 1
  %3440 = lshr i32 %3413, 31
  %3441 = xor i32 %3437, %3440
  %3442 = add i32 %3441, %3437
  %3443 = icmp eq i32 %3442, 2
  %3444 = zext i1 %3443 to i8
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3444, i8* %3445, align 1
  store %struct.Memory* %loadMem_4439cf, %struct.Memory** %MEMORY
  %loadMem_4439d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 33
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %3448 to i64*
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 5
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %RCX.i651 = bitcast %union.anon* %3451 to i64*
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3453 = getelementptr inbounds %struct.GPR, %struct.GPR* %3452, i32 0, i32 15
  %3454 = getelementptr inbounds %struct.Reg, %struct.Reg* %3453, i32 0, i32 0
  %RBP.i652 = bitcast %union.anon* %3454 to i64*
  %3455 = load i64, i64* %RBP.i652
  %3456 = sub i64 %3455, 16
  %3457 = load i64, i64* %PC.i650
  %3458 = add i64 %3457, 4
  store i64 %3458, i64* %PC.i650
  %3459 = inttoptr i64 %3456 to i64*
  %3460 = load i64, i64* %3459
  store i64 %3460, i64* %RCX.i651, align 8
  store %struct.Memory* %loadMem_4439d2, %struct.Memory** %MEMORY
  %loadMem_4439d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3462 = getelementptr inbounds %struct.GPR, %struct.GPR* %3461, i32 0, i32 33
  %3463 = getelementptr inbounds %struct.Reg, %struct.Reg* %3462, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %3463 to i64*
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3465 = getelementptr inbounds %struct.GPR, %struct.GPR* %3464, i32 0, i32 1
  %3466 = getelementptr inbounds %struct.Reg, %struct.Reg* %3465, i32 0, i32 0
  %EAX.i648 = bitcast %union.anon* %3466 to i32*
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3468 = getelementptr inbounds %struct.GPR, %struct.GPR* %3467, i32 0, i32 5
  %3469 = getelementptr inbounds %struct.Reg, %struct.Reg* %3468, i32 0, i32 0
  %RCX.i649 = bitcast %union.anon* %3469 to i64*
  %3470 = load i64, i64* %RCX.i649
  %3471 = add i64 %3470, 12
  %3472 = load i32, i32* %EAX.i648
  %3473 = zext i32 %3472 to i64
  %3474 = load i64, i64* %PC.i647
  %3475 = add i64 %3474, 3
  store i64 %3475, i64* %PC.i647
  %3476 = inttoptr i64 %3471 to i32*
  store i32 %3472, i32* %3476
  store %struct.Memory* %loadMem_4439d6, %struct.Memory** %MEMORY
  %loadMem_4439d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3478 = getelementptr inbounds %struct.GPR, %struct.GPR* %3477, i32 0, i32 33
  %3479 = getelementptr inbounds %struct.Reg, %struct.Reg* %3478, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %3479 to i64*
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3481 = getelementptr inbounds %struct.GPR, %struct.GPR* %3480, i32 0, i32 1
  %3482 = getelementptr inbounds %struct.Reg, %struct.Reg* %3481, i32 0, i32 0
  %RAX.i645 = bitcast %union.anon* %3482 to i64*
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3484 = getelementptr inbounds %struct.GPR, %struct.GPR* %3483, i32 0, i32 15
  %3485 = getelementptr inbounds %struct.Reg, %struct.Reg* %3484, i32 0, i32 0
  %RBP.i646 = bitcast %union.anon* %3485 to i64*
  %3486 = load i64, i64* %RBP.i646
  %3487 = sub i64 %3486, 40
  %3488 = load i64, i64* %PC.i644
  %3489 = add i64 %3488, 3
  store i64 %3489, i64* %PC.i644
  %3490 = inttoptr i64 %3487 to i32*
  %3491 = load i32, i32* %3490
  %3492 = zext i32 %3491 to i64
  store i64 %3492, i64* %RAX.i645, align 8
  store %struct.Memory* %loadMem_4439d9, %struct.Memory** %MEMORY
  %loadMem_4439dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 33
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %3495 to i64*
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 5
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %RCX.i642 = bitcast %union.anon* %3498 to i64*
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3500 = getelementptr inbounds %struct.GPR, %struct.GPR* %3499, i32 0, i32 15
  %3501 = getelementptr inbounds %struct.Reg, %struct.Reg* %3500, i32 0, i32 0
  %RBP.i643 = bitcast %union.anon* %3501 to i64*
  %3502 = load i64, i64* %RBP.i643
  %3503 = sub i64 %3502, 16
  %3504 = load i64, i64* %PC.i641
  %3505 = add i64 %3504, 4
  store i64 %3505, i64* %PC.i641
  %3506 = inttoptr i64 %3503 to i64*
  %3507 = load i64, i64* %3506
  store i64 %3507, i64* %RCX.i642, align 8
  store %struct.Memory* %loadMem_4439dc, %struct.Memory** %MEMORY
  %loadMem_4439e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3509 = getelementptr inbounds %struct.GPR, %struct.GPR* %3508, i32 0, i32 33
  %3510 = getelementptr inbounds %struct.Reg, %struct.Reg* %3509, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %3510 to i64*
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3512 = getelementptr inbounds %struct.GPR, %struct.GPR* %3511, i32 0, i32 1
  %3513 = getelementptr inbounds %struct.Reg, %struct.Reg* %3512, i32 0, i32 0
  %EAX.i639 = bitcast %union.anon* %3513 to i32*
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 5
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %RCX.i640 = bitcast %union.anon* %3516 to i64*
  %3517 = load i64, i64* %RCX.i640
  %3518 = add i64 %3517, 8
  %3519 = load i32, i32* %EAX.i639
  %3520 = zext i32 %3519 to i64
  %3521 = load i64, i64* %PC.i638
  %3522 = add i64 %3521, 3
  store i64 %3522, i64* %PC.i638
  %3523 = inttoptr i64 %3518 to i32*
  store i32 %3519, i32* %3523
  store %struct.Memory* %loadMem_4439e0, %struct.Memory** %MEMORY
  %loadMem_4439e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3525 = getelementptr inbounds %struct.GPR, %struct.GPR* %3524, i32 0, i32 33
  %3526 = getelementptr inbounds %struct.Reg, %struct.Reg* %3525, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %3526 to i64*
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3528 = getelementptr inbounds %struct.GPR, %struct.GPR* %3527, i32 0, i32 5
  %3529 = getelementptr inbounds %struct.Reg, %struct.Reg* %3528, i32 0, i32 0
  %RCX.i636 = bitcast %union.anon* %3529 to i64*
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3531 = getelementptr inbounds %struct.GPR, %struct.GPR* %3530, i32 0, i32 15
  %3532 = getelementptr inbounds %struct.Reg, %struct.Reg* %3531, i32 0, i32 0
  %RBP.i637 = bitcast %union.anon* %3532 to i64*
  %3533 = load i64, i64* %RBP.i637
  %3534 = sub i64 %3533, 88
  %3535 = load i64, i64* %PC.i635
  %3536 = add i64 %3535, 4
  store i64 %3536, i64* %PC.i635
  %3537 = inttoptr i64 %3534 to i64*
  %3538 = load i64, i64* %3537
  store i64 %3538, i64* %RCX.i636, align 8
  store %struct.Memory* %loadMem_4439e3, %struct.Memory** %MEMORY
  %loadMem_4439e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3540 = getelementptr inbounds %struct.GPR, %struct.GPR* %3539, i32 0, i32 33
  %3541 = getelementptr inbounds %struct.Reg, %struct.Reg* %3540, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %3541 to i64*
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3543 = getelementptr inbounds %struct.GPR, %struct.GPR* %3542, i32 0, i32 5
  %3544 = getelementptr inbounds %struct.Reg, %struct.Reg* %3543, i32 0, i32 0
  %RCX.i634 = bitcast %union.anon* %3544 to i64*
  %3545 = load i64, i64* %RCX.i634
  %3546 = load i64, i64* %PC.i633
  %3547 = add i64 %3546, 8
  store i64 %3547, i64* %PC.i633
  store i64 %3545, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  store %struct.Memory* %loadMem_4439e7, %struct.Memory** %MEMORY
  %loadMem_4439ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3549 = getelementptr inbounds %struct.GPR, %struct.GPR* %3548, i32 0, i32 33
  %3550 = getelementptr inbounds %struct.Reg, %struct.Reg* %3549, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %3550 to i64*
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3552 = getelementptr inbounds %struct.GPR, %struct.GPR* %3551, i32 0, i32 1
  %3553 = getelementptr inbounds %struct.Reg, %struct.Reg* %3552, i32 0, i32 0
  %RAX.i631 = bitcast %union.anon* %3553 to i64*
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3555 = getelementptr inbounds %struct.GPR, %struct.GPR* %3554, i32 0, i32 15
  %3556 = getelementptr inbounds %struct.Reg, %struct.Reg* %3555, i32 0, i32 0
  %RBP.i632 = bitcast %union.anon* %3556 to i64*
  %3557 = load i64, i64* %RBP.i632
  %3558 = sub i64 %3557, 92
  %3559 = load i64, i64* %PC.i630
  %3560 = add i64 %3559, 3
  store i64 %3560, i64* %PC.i630
  %3561 = inttoptr i64 %3558 to i32*
  %3562 = load i32, i32* %3561
  %3563 = zext i32 %3562 to i64
  store i64 %3563, i64* %RAX.i631, align 8
  store %struct.Memory* %loadMem_4439ef, %struct.Memory** %MEMORY
  %loadMem_4439f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3565 = getelementptr inbounds %struct.GPR, %struct.GPR* %3564, i32 0, i32 33
  %3566 = getelementptr inbounds %struct.Reg, %struct.Reg* %3565, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %3566 to i64*
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 1
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %EAX.i629 = bitcast %union.anon* %3569 to i32*
  %3570 = load i32, i32* %EAX.i629
  %3571 = zext i32 %3570 to i64
  %3572 = load i64, i64* %PC.i628
  %3573 = add i64 %3572, 7
  store i64 %3573, i64* %PC.i628
  store i32 %3570, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*)
  store %struct.Memory* %loadMem_4439f2, %struct.Memory** %MEMORY
  %loadMem_4439f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3575 = getelementptr inbounds %struct.GPR, %struct.GPR* %3574, i32 0, i32 33
  %3576 = getelementptr inbounds %struct.Reg, %struct.Reg* %3575, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %3576 to i64*
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3578 = getelementptr inbounds %struct.GPR, %struct.GPR* %3577, i32 0, i32 15
  %3579 = getelementptr inbounds %struct.Reg, %struct.Reg* %3578, i32 0, i32 0
  %RBP.i627 = bitcast %union.anon* %3579 to i64*
  %3580 = load i64, i64* %RBP.i627
  %3581 = sub i64 %3580, 4
  %3582 = load i64, i64* %PC.i626
  %3583 = add i64 %3582, 7
  store i64 %3583, i64* %PC.i626
  %3584 = inttoptr i64 %3581 to i32*
  store i32 0, i32* %3584
  store %struct.Memory* %loadMem_4439f9, %struct.Memory** %MEMORY
  %loadMem_443a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3586 = getelementptr inbounds %struct.GPR, %struct.GPR* %3585, i32 0, i32 33
  %3587 = getelementptr inbounds %struct.Reg, %struct.Reg* %3586, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %3587 to i64*
  %3588 = load i64, i64* %PC.i625
  %3589 = add i64 %3588, 1154
  %3590 = load i64, i64* %PC.i625
  %3591 = add i64 %3590, 5
  store i64 %3591, i64* %PC.i625
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3589, i64* %3592, align 8
  store %struct.Memory* %loadMem_443a00, %struct.Memory** %MEMORY
  br label %block_.L_443e82

block_.L_443a05:                                  ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %loadMem_443a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 33
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %3595 to i64*
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 1
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %RAX.i623 = bitcast %union.anon* %3598 to i64*
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3600 = getelementptr inbounds %struct.GPR, %struct.GPR* %3599, i32 0, i32 15
  %3601 = getelementptr inbounds %struct.Reg, %struct.Reg* %3600, i32 0, i32 0
  %RBP.i624 = bitcast %union.anon* %3601 to i64*
  %3602 = load i64, i64* %RBP.i624
  %3603 = sub i64 %3602, 72
  %3604 = load i64, i64* %PC.i622
  %3605 = add i64 %3604, 3
  store i64 %3605, i64* %PC.i622
  %3606 = inttoptr i64 %3603 to i32*
  %3607 = load i32, i32* %3606
  %3608 = zext i32 %3607 to i64
  store i64 %3608, i64* %RAX.i623, align 8
  store %struct.Memory* %loadMem_443a05, %struct.Memory** %MEMORY
  %loadMem_443a08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3610 = getelementptr inbounds %struct.GPR, %struct.GPR* %3609, i32 0, i32 33
  %3611 = getelementptr inbounds %struct.Reg, %struct.Reg* %3610, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %3611 to i64*
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3613 = getelementptr inbounds %struct.GPR, %struct.GPR* %3612, i32 0, i32 1
  %3614 = getelementptr inbounds %struct.Reg, %struct.Reg* %3613, i32 0, i32 0
  %EAX.i620 = bitcast %union.anon* %3614 to i32*
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3616 = getelementptr inbounds %struct.GPR, %struct.GPR* %3615, i32 0, i32 15
  %3617 = getelementptr inbounds %struct.Reg, %struct.Reg* %3616, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %3617 to i64*
  %3618 = load i64, i64* %RBP.i621
  %3619 = sub i64 %3618, 56
  %3620 = load i32, i32* %EAX.i620
  %3621 = zext i32 %3620 to i64
  %3622 = load i64, i64* %PC.i619
  %3623 = add i64 %3622, 3
  store i64 %3623, i64* %PC.i619
  %3624 = inttoptr i64 %3619 to i32*
  store i32 %3620, i32* %3624
  store %struct.Memory* %loadMem_443a08, %struct.Memory** %MEMORY
  %loadMem_443a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3626 = getelementptr inbounds %struct.GPR, %struct.GPR* %3625, i32 0, i32 33
  %3627 = getelementptr inbounds %struct.Reg, %struct.Reg* %3626, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %3627 to i64*
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3629 = getelementptr inbounds %struct.GPR, %struct.GPR* %3628, i32 0, i32 15
  %3630 = getelementptr inbounds %struct.Reg, %struct.Reg* %3629, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %3630 to i64*
  %3631 = load i64, i64* %RBP.i618
  %3632 = sub i64 %3631, 56
  %3633 = load i64, i64* %PC.i617
  %3634 = add i64 %3633, 7
  store i64 %3634, i64* %PC.i617
  %3635 = inttoptr i64 %3632 to i32*
  %3636 = load i32, i32* %3635
  %3637 = sub i32 %3636, 421
  %3638 = icmp ult i32 %3636, 421
  %3639 = zext i1 %3638 to i8
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3639, i8* %3640, align 1
  %3641 = and i32 %3637, 255
  %3642 = call i32 @llvm.ctpop.i32(i32 %3641)
  %3643 = trunc i32 %3642 to i8
  %3644 = and i8 %3643, 1
  %3645 = xor i8 %3644, 1
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3645, i8* %3646, align 1
  %3647 = xor i32 %3636, 421
  %3648 = xor i32 %3647, %3637
  %3649 = lshr i32 %3648, 4
  %3650 = trunc i32 %3649 to i8
  %3651 = and i8 %3650, 1
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3651, i8* %3652, align 1
  %3653 = icmp eq i32 %3637, 0
  %3654 = zext i1 %3653 to i8
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3654, i8* %3655, align 1
  %3656 = lshr i32 %3637, 31
  %3657 = trunc i32 %3656 to i8
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3657, i8* %3658, align 1
  %3659 = lshr i32 %3636, 31
  %3660 = xor i32 %3656, %3659
  %3661 = add i32 %3660, %3659
  %3662 = icmp eq i32 %3661, 2
  %3663 = zext i1 %3662 to i8
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3663, i8* %3664, align 1
  store %struct.Memory* %loadMem_443a0b, %struct.Memory** %MEMORY
  %loadMem_443a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3666 = getelementptr inbounds %struct.GPR, %struct.GPR* %3665, i32 0, i32 33
  %3667 = getelementptr inbounds %struct.Reg, %struct.Reg* %3666, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %3667 to i64*
  %3668 = load i64, i64* %PC.i616
  %3669 = add i64 %3668, 32
  %3670 = load i64, i64* %PC.i616
  %3671 = add i64 %3670, 6
  %3672 = load i64, i64* %PC.i616
  %3673 = add i64 %3672, 6
  store i64 %3673, i64* %PC.i616
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3675 = load i8, i8* %3674, align 1
  %3676 = icmp eq i8 %3675, 0
  %3677 = zext i1 %3676 to i8
  store i8 %3677, i8* %BRANCH_TAKEN, align 1
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3679 = select i1 %3676, i64 %3669, i64 %3671
  store i64 %3679, i64* %3678, align 8
  store %struct.Memory* %loadMem_443a12, %struct.Memory** %MEMORY
  %loadBr_443a12 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443a12 = icmp eq i8 %loadBr_443a12, 1
  br i1 %cmpBr_443a12, label %block_.L_443a32, label %block_443a18

block_443a18:                                     ; preds = %block_.L_443a05
  %loadMem_443a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3681 = getelementptr inbounds %struct.GPR, %struct.GPR* %3680, i32 0, i32 33
  %3682 = getelementptr inbounds %struct.Reg, %struct.Reg* %3681, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %3682 to i64*
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3684 = getelementptr inbounds %struct.GPR, %struct.GPR* %3683, i32 0, i32 1
  %3685 = getelementptr inbounds %struct.Reg, %struct.Reg* %3684, i32 0, i32 0
  %RAX.i614 = bitcast %union.anon* %3685 to i64*
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3687 = getelementptr inbounds %struct.GPR, %struct.GPR* %3686, i32 0, i32 15
  %3688 = getelementptr inbounds %struct.Reg, %struct.Reg* %3687, i32 0, i32 0
  %RBP.i615 = bitcast %union.anon* %3688 to i64*
  %3689 = load i64, i64* %RBP.i615
  %3690 = sub i64 %3689, 56
  %3691 = load i64, i64* %PC.i613
  %3692 = add i64 %3691, 4
  store i64 %3692, i64* %PC.i613
  %3693 = inttoptr i64 %3690 to i32*
  %3694 = load i32, i32* %3693
  %3695 = sext i32 %3694 to i64
  store i64 %3695, i64* %RAX.i614, align 8
  store %struct.Memory* %loadMem_443a18, %struct.Memory** %MEMORY
  %loadMem_443a1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3697 = getelementptr inbounds %struct.GPR, %struct.GPR* %3696, i32 0, i32 33
  %3698 = getelementptr inbounds %struct.Reg, %struct.Reg* %3697, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %3698 to i64*
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3700 = getelementptr inbounds %struct.GPR, %struct.GPR* %3699, i32 0, i32 1
  %3701 = getelementptr inbounds %struct.Reg, %struct.Reg* %3700, i32 0, i32 0
  %RAX.i611 = bitcast %union.anon* %3701 to i64*
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3703 = getelementptr inbounds %struct.GPR, %struct.GPR* %3702, i32 0, i32 5
  %3704 = getelementptr inbounds %struct.Reg, %struct.Reg* %3703, i32 0, i32 0
  %RCX.i612 = bitcast %union.anon* %3704 to i64*
  %3705 = load i64, i64* %RAX.i611
  %3706 = add i64 %3705, 12099168
  %3707 = load i64, i64* %PC.i610
  %3708 = add i64 %3707, 8
  store i64 %3708, i64* %PC.i610
  %3709 = inttoptr i64 %3706 to i8*
  %3710 = load i8, i8* %3709
  %3711 = zext i8 %3710 to i64
  store i64 %3711, i64* %RCX.i612, align 8
  store %struct.Memory* %loadMem_443a1c, %struct.Memory** %MEMORY
  %loadMem_443a24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3713 = getelementptr inbounds %struct.GPR, %struct.GPR* %3712, i32 0, i32 33
  %3714 = getelementptr inbounds %struct.Reg, %struct.Reg* %3713, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %3714 to i64*
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3716 = getelementptr inbounds %struct.GPR, %struct.GPR* %3715, i32 0, i32 5
  %3717 = getelementptr inbounds %struct.Reg, %struct.Reg* %3716, i32 0, i32 0
  %ECX.i609 = bitcast %union.anon* %3717 to i32*
  %3718 = load i32, i32* %ECX.i609
  %3719 = zext i32 %3718 to i64
  %3720 = load i64, i64* %PC.i608
  %3721 = add i64 %3720, 3
  store i64 %3721, i64* %PC.i608
  %3722 = sub i32 %3718, 3
  %3723 = icmp ult i32 %3718, 3
  %3724 = zext i1 %3723 to i8
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3724, i8* %3725, align 1
  %3726 = and i32 %3722, 255
  %3727 = call i32 @llvm.ctpop.i32(i32 %3726)
  %3728 = trunc i32 %3727 to i8
  %3729 = and i8 %3728, 1
  %3730 = xor i8 %3729, 1
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3730, i8* %3731, align 1
  %3732 = xor i64 3, %3719
  %3733 = trunc i64 %3732 to i32
  %3734 = xor i32 %3733, %3722
  %3735 = lshr i32 %3734, 4
  %3736 = trunc i32 %3735 to i8
  %3737 = and i8 %3736, 1
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3737, i8* %3738, align 1
  %3739 = icmp eq i32 %3722, 0
  %3740 = zext i1 %3739 to i8
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3740, i8* %3741, align 1
  %3742 = lshr i32 %3722, 31
  %3743 = trunc i32 %3742 to i8
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3743, i8* %3744, align 1
  %3745 = lshr i32 %3718, 31
  %3746 = xor i32 %3742, %3745
  %3747 = add i32 %3746, %3745
  %3748 = icmp eq i32 %3747, 2
  %3749 = zext i1 %3748 to i8
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3749, i8* %3750, align 1
  store %struct.Memory* %loadMem_443a24, %struct.Memory** %MEMORY
  %loadMem_443a27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3752 = getelementptr inbounds %struct.GPR, %struct.GPR* %3751, i32 0, i32 33
  %3753 = getelementptr inbounds %struct.Reg, %struct.Reg* %3752, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %3753 to i64*
  %3754 = load i64, i64* %PC.i607
  %3755 = add i64 %3754, 11
  %3756 = load i64, i64* %PC.i607
  %3757 = add i64 %3756, 6
  %3758 = load i64, i64* %PC.i607
  %3759 = add i64 %3758, 6
  store i64 %3759, i64* %PC.i607
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3761 = load i8, i8* %3760, align 1
  store i8 %3761, i8* %BRANCH_TAKEN, align 1
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3763 = icmp ne i8 %3761, 0
  %3764 = select i1 %3763, i64 %3755, i64 %3757
  store i64 %3764, i64* %3762, align 8
  store %struct.Memory* %loadMem_443a27, %struct.Memory** %MEMORY
  %loadBr_443a27 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443a27 = icmp eq i8 %loadBr_443a27, 1
  br i1 %cmpBr_443a27, label %block_.L_443a32, label %block_443a2d

block_443a2d:                                     ; preds = %block_443a18
  %loadMem_443a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3766 = getelementptr inbounds %struct.GPR, %struct.GPR* %3765, i32 0, i32 33
  %3767 = getelementptr inbounds %struct.Reg, %struct.Reg* %3766, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %3767 to i64*
  %3768 = load i64, i64* %PC.i606
  %3769 = add i64 %3768, 118
  %3770 = load i64, i64* %PC.i606
  %3771 = add i64 %3770, 5
  store i64 %3771, i64* %PC.i606
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3769, i64* %3772, align 8
  store %struct.Memory* %loadMem_443a2d, %struct.Memory** %MEMORY
  br label %block_.L_443aa3

block_.L_443a32:                                  ; preds = %block_443a18, %block_.L_443a05
  %loadMem_443a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3774 = getelementptr inbounds %struct.GPR, %struct.GPR* %3773, i32 0, i32 33
  %3775 = getelementptr inbounds %struct.Reg, %struct.Reg* %3774, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %3775 to i64*
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3777 = getelementptr inbounds %struct.GPR, %struct.GPR* %3776, i32 0, i32 11
  %3778 = getelementptr inbounds %struct.Reg, %struct.Reg* %3777, i32 0, i32 0
  %RDI.i605 = bitcast %union.anon* %3778 to i64*
  %3779 = load i64, i64* %PC.i604
  %3780 = add i64 %3779, 10
  store i64 %3780, i64* %PC.i604
  store i64 ptrtoint (%G__0x57dd2e_type* @G__0x57dd2e to i64), i64* %RDI.i605, align 8
  store %struct.Memory* %loadMem_443a32, %struct.Memory** %MEMORY
  %loadMem_443a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3782 = getelementptr inbounds %struct.GPR, %struct.GPR* %3781, i32 0, i32 33
  %3783 = getelementptr inbounds %struct.Reg, %struct.Reg* %3782, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %3783 to i64*
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 9
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %RSI.i603 = bitcast %union.anon* %3786 to i64*
  %3787 = load i64, i64* %PC.i602
  %3788 = add i64 %3787, 5
  store i64 %3788, i64* %PC.i602
  store i64 3098, i64* %RSI.i603, align 8
  store %struct.Memory* %loadMem_443a3c, %struct.Memory** %MEMORY
  %loadMem_443a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3790 = getelementptr inbounds %struct.GPR, %struct.GPR* %3789, i32 0, i32 33
  %3791 = getelementptr inbounds %struct.Reg, %struct.Reg* %3790, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %3791 to i64*
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3793 = getelementptr inbounds %struct.GPR, %struct.GPR* %3792, i32 0, i32 7
  %3794 = getelementptr inbounds %struct.Reg, %struct.Reg* %3793, i32 0, i32 0
  %RDX.i601 = bitcast %union.anon* %3794 to i64*
  %3795 = load i64, i64* %PC.i600
  %3796 = add i64 %3795, 10
  store i64 %3796, i64* %PC.i600
  store i64 ptrtoint (%G__0x57c8be_type* @G__0x57c8be to i64), i64* %RDX.i601, align 8
  store %struct.Memory* %loadMem_443a41, %struct.Memory** %MEMORY
  %loadMem_443a4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3798 = getelementptr inbounds %struct.GPR, %struct.GPR* %3797, i32 0, i32 33
  %3799 = getelementptr inbounds %struct.Reg, %struct.Reg* %3798, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %3799 to i64*
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3801 = getelementptr inbounds %struct.GPR, %struct.GPR* %3800, i32 0, i32 1
  %3802 = getelementptr inbounds %struct.Reg, %struct.Reg* %3801, i32 0, i32 0
  %RAX.i599 = bitcast %union.anon* %3802 to i64*
  %3803 = load i64, i64* %PC.i598
  %3804 = add i64 %3803, 5
  store i64 %3804, i64* %PC.i598
  store i64 20, i64* %RAX.i599, align 8
  store %struct.Memory* %loadMem_443a4b, %struct.Memory** %MEMORY
  %loadMem_443a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3806 = getelementptr inbounds %struct.GPR, %struct.GPR* %3805, i32 0, i32 33
  %3807 = getelementptr inbounds %struct.Reg, %struct.Reg* %3806, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %3807 to i64*
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3809 = getelementptr inbounds %struct.GPR, %struct.GPR* %3808, i32 0, i32 5
  %3810 = getelementptr inbounds %struct.Reg, %struct.Reg* %3809, i32 0, i32 0
  %RCX.i596 = bitcast %union.anon* %3810 to i64*
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3812 = getelementptr inbounds %struct.GPR, %struct.GPR* %3811, i32 0, i32 15
  %3813 = getelementptr inbounds %struct.Reg, %struct.Reg* %3812, i32 0, i32 0
  %RBP.i597 = bitcast %union.anon* %3813 to i64*
  %3814 = load i64, i64* %RBP.i597
  %3815 = sub i64 %3814, 56
  %3816 = load i64, i64* %PC.i595
  %3817 = add i64 %3816, 3
  store i64 %3817, i64* %PC.i595
  %3818 = inttoptr i64 %3815 to i32*
  %3819 = load i32, i32* %3818
  %3820 = zext i32 %3819 to i64
  store i64 %3820, i64* %RCX.i596, align 8
  store %struct.Memory* %loadMem_443a50, %struct.Memory** %MEMORY
  %loadMem_443a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3822 = getelementptr inbounds %struct.GPR, %struct.GPR* %3821, i32 0, i32 33
  %3823 = getelementptr inbounds %struct.Reg, %struct.Reg* %3822, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %3823 to i64*
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3825 = getelementptr inbounds %struct.GPR, %struct.GPR* %3824, i32 0, i32 1
  %3826 = getelementptr inbounds %struct.Reg, %struct.Reg* %3825, i32 0, i32 0
  %EAX.i593 = bitcast %union.anon* %3826 to i32*
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3828 = getelementptr inbounds %struct.GPR, %struct.GPR* %3827, i32 0, i32 15
  %3829 = getelementptr inbounds %struct.Reg, %struct.Reg* %3828, i32 0, i32 0
  %RBP.i594 = bitcast %union.anon* %3829 to i64*
  %3830 = load i64, i64* %RBP.i594
  %3831 = sub i64 %3830, 132
  %3832 = load i32, i32* %EAX.i593
  %3833 = zext i32 %3832 to i64
  %3834 = load i64, i64* %PC.i592
  %3835 = add i64 %3834, 6
  store i64 %3835, i64* %PC.i592
  %3836 = inttoptr i64 %3831 to i32*
  store i32 %3832, i32* %3836
  store %struct.Memory* %loadMem_443a53, %struct.Memory** %MEMORY
  %loadMem_443a59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3838 = getelementptr inbounds %struct.GPR, %struct.GPR* %3837, i32 0, i32 33
  %3839 = getelementptr inbounds %struct.Reg, %struct.Reg* %3838, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %3839 to i64*
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3841 = getelementptr inbounds %struct.GPR, %struct.GPR* %3840, i32 0, i32 5
  %3842 = getelementptr inbounds %struct.Reg, %struct.Reg* %3841, i32 0, i32 0
  %ECX.i590 = bitcast %union.anon* %3842 to i32*
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3844 = getelementptr inbounds %struct.GPR, %struct.GPR* %3843, i32 0, i32 1
  %3845 = getelementptr inbounds %struct.Reg, %struct.Reg* %3844, i32 0, i32 0
  %RAX.i591 = bitcast %union.anon* %3845 to i64*
  %3846 = load i32, i32* %ECX.i590
  %3847 = zext i32 %3846 to i64
  %3848 = load i64, i64* %PC.i589
  %3849 = add i64 %3848, 2
  store i64 %3849, i64* %PC.i589
  %3850 = and i64 %3847, 4294967295
  store i64 %3850, i64* %RAX.i591, align 8
  store %struct.Memory* %loadMem_443a59, %struct.Memory** %MEMORY
  %loadMem_443a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 33
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %3853 to i64*
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 7
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %RDX.i587 = bitcast %union.anon* %3856 to i64*
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3858 = getelementptr inbounds %struct.GPR, %struct.GPR* %3857, i32 0, i32 15
  %3859 = getelementptr inbounds %struct.Reg, %struct.Reg* %3858, i32 0, i32 0
  %RBP.i588 = bitcast %union.anon* %3859 to i64*
  %3860 = load i64, i64* %RBP.i588
  %3861 = sub i64 %3860, 144
  %3862 = load i64, i64* %RDX.i587
  %3863 = load i64, i64* %PC.i586
  %3864 = add i64 %3863, 7
  store i64 %3864, i64* %PC.i586
  %3865 = inttoptr i64 %3861 to i64*
  store i64 %3862, i64* %3865
  store %struct.Memory* %loadMem_443a5b, %struct.Memory** %MEMORY
  %loadMem_443a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 33
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %3868 to i64*
  %3869 = load i64, i64* %PC.i585
  %3870 = add i64 %3869, 1
  store i64 %3870, i64* %PC.i585
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3873 = bitcast %union.anon* %3872 to i32*
  %3874 = load i32, i32* %3873, align 8
  %3875 = sext i32 %3874 to i64
  %3876 = lshr i64 %3875, 32
  store i64 %3876, i64* %3871, align 8
  store %struct.Memory* %loadMem_443a62, %struct.Memory** %MEMORY
  %loadMem_443a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3878 = getelementptr inbounds %struct.GPR, %struct.GPR* %3877, i32 0, i32 33
  %3879 = getelementptr inbounds %struct.Reg, %struct.Reg* %3878, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %3879 to i64*
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3881 = getelementptr inbounds %struct.GPR, %struct.GPR* %3880, i32 0, i32 5
  %3882 = getelementptr inbounds %struct.Reg, %struct.Reg* %3881, i32 0, i32 0
  %RCX.i583 = bitcast %union.anon* %3882 to i64*
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 15
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %RBP.i584 = bitcast %union.anon* %3885 to i64*
  %3886 = load i64, i64* %RBP.i584
  %3887 = sub i64 %3886, 132
  %3888 = load i64, i64* %PC.i582
  %3889 = add i64 %3888, 6
  store i64 %3889, i64* %PC.i582
  %3890 = inttoptr i64 %3887 to i32*
  %3891 = load i32, i32* %3890
  %3892 = zext i32 %3891 to i64
  store i64 %3892, i64* %RCX.i583, align 8
  store %struct.Memory* %loadMem_443a63, %struct.Memory** %MEMORY
  %loadMem_443a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3894 = getelementptr inbounds %struct.GPR, %struct.GPR* %3893, i32 0, i32 33
  %3895 = getelementptr inbounds %struct.Reg, %struct.Reg* %3894, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %3895 to i64*
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 5
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %ECX.i578 = bitcast %union.anon* %3898 to i32*
  %3899 = load i32, i32* %ECX.i578
  %3900 = zext i32 %3899 to i64
  %3901 = load i64, i64* %PC.i577
  %3902 = add i64 %3901, 2
  store i64 %3902, i64* %PC.i577
  %3903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3904 = bitcast %union.anon* %3903 to i32*
  %3905 = load i32, i32* %3904, align 8
  %3906 = zext i32 %3905 to i64
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3908 = bitcast %union.anon* %3907 to i32*
  %3909 = load i32, i32* %3908, align 8
  %3910 = zext i32 %3909 to i64
  %3911 = shl i64 %3900, 32
  %3912 = ashr exact i64 %3911, 32
  %3913 = shl i64 %3910, 32
  %3914 = or i64 %3913, %3906
  %3915 = sdiv i64 %3914, %3912
  %3916 = shl i64 %3915, 32
  %3917 = ashr exact i64 %3916, 32
  %3918 = icmp eq i64 %3915, %3917
  br i1 %3918, label %3923, label %3919

; <label>:3919:                                   ; preds = %block_.L_443a32
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3921 = load i64, i64* %3920, align 8
  %3922 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3921, %struct.Memory* %loadMem_443a69)
  br label %routine_idivl__ecx.exit579

; <label>:3923:                                   ; preds = %block_.L_443a32
  %3924 = srem i64 %3914, %3912
  %3925 = getelementptr inbounds %union.anon, %union.anon* %3903, i64 0, i32 0
  %3926 = and i64 %3915, 4294967295
  store i64 %3926, i64* %3925, align 8
  %3927 = getelementptr inbounds %union.anon, %union.anon* %3907, i64 0, i32 0
  %3928 = and i64 %3924, 4294967295
  store i64 %3928, i64* %3927, align 8
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3929, align 1
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3930, align 1
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3931, align 1
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3932, align 1
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3933, align 1
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3934, align 1
  br label %routine_idivl__ecx.exit579

routine_idivl__ecx.exit579:                       ; preds = %3919, %3923
  %3935 = phi %struct.Memory* [ %3922, %3919 ], [ %loadMem_443a69, %3923 ]
  store %struct.Memory* %3935, %struct.Memory** %MEMORY
  %loadMem_443a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3937 = getelementptr inbounds %struct.GPR, %struct.GPR* %3936, i32 0, i32 33
  %3938 = getelementptr inbounds %struct.Reg, %struct.Reg* %3937, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %3938 to i64*
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 1
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %RAX.i576 = bitcast %union.anon* %3941 to i64*
  %3942 = load i64, i64* %RAX.i576
  %3943 = load i64, i64* %PC.i575
  %3944 = add i64 %3943, 3
  store i64 %3944, i64* %PC.i575
  %3945 = trunc i64 %3942 to i32
  %3946 = sub i32 %3945, 1
  %3947 = zext i32 %3946 to i64
  store i64 %3947, i64* %RAX.i576, align 8
  %3948 = icmp ult i32 %3945, 1
  %3949 = zext i1 %3948 to i8
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3949, i8* %3950, align 1
  %3951 = and i32 %3946, 255
  %3952 = call i32 @llvm.ctpop.i32(i32 %3951)
  %3953 = trunc i32 %3952 to i8
  %3954 = and i8 %3953, 1
  %3955 = xor i8 %3954, 1
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3955, i8* %3956, align 1
  %3957 = xor i64 1, %3942
  %3958 = trunc i64 %3957 to i32
  %3959 = xor i32 %3958, %3946
  %3960 = lshr i32 %3959, 4
  %3961 = trunc i32 %3960 to i8
  %3962 = and i8 %3961, 1
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3962, i8* %3963, align 1
  %3964 = icmp eq i32 %3946, 0
  %3965 = zext i1 %3964 to i8
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3965, i8* %3966, align 1
  %3967 = lshr i32 %3946, 31
  %3968 = trunc i32 %3967 to i8
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3968, i8* %3969, align 1
  %3970 = lshr i32 %3945, 31
  %3971 = xor i32 %3967, %3970
  %3972 = add i32 %3971, %3970
  %3973 = icmp eq i32 %3972, 2
  %3974 = zext i1 %3973 to i8
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3974, i8* %3975, align 1
  store %struct.Memory* %loadMem_443a6b, %struct.Memory** %MEMORY
  %loadMem_443a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3977 = getelementptr inbounds %struct.GPR, %struct.GPR* %3976, i32 0, i32 33
  %3978 = getelementptr inbounds %struct.Reg, %struct.Reg* %3977, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %3978 to i64*
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3980 = getelementptr inbounds %struct.GPR, %struct.GPR* %3979, i32 0, i32 17
  %3981 = getelementptr inbounds %struct.Reg, %struct.Reg* %3980, i32 0, i32 0
  %R8D.i573 = bitcast %union.anon* %3981 to i32*
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3983 = getelementptr inbounds %struct.GPR, %struct.GPR* %3982, i32 0, i32 15
  %3984 = getelementptr inbounds %struct.Reg, %struct.Reg* %3983, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %3984 to i64*
  %3985 = bitcast i32* %R8D.i573 to i64*
  %3986 = load i64, i64* %RBP.i574
  %3987 = sub i64 %3986, 56
  %3988 = load i64, i64* %PC.i572
  %3989 = add i64 %3988, 4
  store i64 %3989, i64* %PC.i572
  %3990 = inttoptr i64 %3987 to i32*
  %3991 = load i32, i32* %3990
  %3992 = zext i32 %3991 to i64
  store i64 %3992, i64* %3985, align 8
  store %struct.Memory* %loadMem_443a6e, %struct.Memory** %MEMORY
  %loadMem_443a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3994 = getelementptr inbounds %struct.GPR, %struct.GPR* %3993, i32 0, i32 33
  %3995 = getelementptr inbounds %struct.Reg, %struct.Reg* %3994, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %3995 to i64*
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3997 = getelementptr inbounds %struct.GPR, %struct.GPR* %3996, i32 0, i32 1
  %3998 = getelementptr inbounds %struct.Reg, %struct.Reg* %3997, i32 0, i32 0
  %EAX.i570 = bitcast %union.anon* %3998 to i32*
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 15
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %4001 to i64*
  %4002 = load i64, i64* %RBP.i571
  %4003 = sub i64 %4002, 148
  %4004 = load i32, i32* %EAX.i570
  %4005 = zext i32 %4004 to i64
  %4006 = load i64, i64* %PC.i569
  %4007 = add i64 %4006, 6
  store i64 %4007, i64* %PC.i569
  %4008 = inttoptr i64 %4003 to i32*
  store i32 %4004, i32* %4008
  store %struct.Memory* %loadMem_443a72, %struct.Memory** %MEMORY
  %loadMem_443a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4010 = getelementptr inbounds %struct.GPR, %struct.GPR* %4009, i32 0, i32 33
  %4011 = getelementptr inbounds %struct.Reg, %struct.Reg* %4010, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %4011 to i64*
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4013 = getelementptr inbounds %struct.GPR, %struct.GPR* %4012, i32 0, i32 17
  %4014 = getelementptr inbounds %struct.Reg, %struct.Reg* %4013, i32 0, i32 0
  %R8D.i567 = bitcast %union.anon* %4014 to i32*
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4016 = getelementptr inbounds %struct.GPR, %struct.GPR* %4015, i32 0, i32 1
  %4017 = getelementptr inbounds %struct.Reg, %struct.Reg* %4016, i32 0, i32 0
  %RAX.i568 = bitcast %union.anon* %4017 to i64*
  %4018 = load i32, i32* %R8D.i567
  %4019 = zext i32 %4018 to i64
  %4020 = load i64, i64* %PC.i566
  %4021 = add i64 %4020, 3
  store i64 %4021, i64* %PC.i566
  %4022 = and i64 %4019, 4294967295
  store i64 %4022, i64* %RAX.i568, align 8
  store %struct.Memory* %loadMem_443a78, %struct.Memory** %MEMORY
  %loadMem_443a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4024 = getelementptr inbounds %struct.GPR, %struct.GPR* %4023, i32 0, i32 33
  %4025 = getelementptr inbounds %struct.Reg, %struct.Reg* %4024, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %4025 to i64*
  %4026 = load i64, i64* %PC.i565
  %4027 = add i64 %4026, 1
  store i64 %4027, i64* %PC.i565
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4030 = bitcast %union.anon* %4029 to i32*
  %4031 = load i32, i32* %4030, align 8
  %4032 = sext i32 %4031 to i64
  %4033 = lshr i64 %4032, 32
  store i64 %4033, i64* %4028, align 8
  store %struct.Memory* %loadMem_443a7b, %struct.Memory** %MEMORY
  %loadMem_443a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4035 = getelementptr inbounds %struct.GPR, %struct.GPR* %4034, i32 0, i32 33
  %4036 = getelementptr inbounds %struct.Reg, %struct.Reg* %4035, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %4036 to i64*
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4038 = getelementptr inbounds %struct.GPR, %struct.GPR* %4037, i32 0, i32 5
  %4039 = getelementptr inbounds %struct.Reg, %struct.Reg* %4038, i32 0, i32 0
  %ECX.i561 = bitcast %union.anon* %4039 to i32*
  %4040 = load i32, i32* %ECX.i561
  %4041 = zext i32 %4040 to i64
  %4042 = load i64, i64* %PC.i560
  %4043 = add i64 %4042, 2
  store i64 %4043, i64* %PC.i560
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4045 = bitcast %union.anon* %4044 to i32*
  %4046 = load i32, i32* %4045, align 8
  %4047 = zext i32 %4046 to i64
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4049 = bitcast %union.anon* %4048 to i32*
  %4050 = load i32, i32* %4049, align 8
  %4051 = zext i32 %4050 to i64
  %4052 = shl i64 %4041, 32
  %4053 = ashr exact i64 %4052, 32
  %4054 = shl i64 %4051, 32
  %4055 = or i64 %4054, %4047
  %4056 = sdiv i64 %4055, %4053
  %4057 = shl i64 %4056, 32
  %4058 = ashr exact i64 %4057, 32
  %4059 = icmp eq i64 %4056, %4058
  br i1 %4059, label %4064, label %4060

; <label>:4060:                                   ; preds = %routine_idivl__ecx.exit579
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4062 = load i64, i64* %4061, align 8
  %4063 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4062, %struct.Memory* %loadMem_443a7c)
  br label %routine_idivl__ecx.exit

; <label>:4064:                                   ; preds = %routine_idivl__ecx.exit579
  %4065 = srem i64 %4055, %4053
  %4066 = getelementptr inbounds %union.anon, %union.anon* %4044, i64 0, i32 0
  %4067 = and i64 %4056, 4294967295
  store i64 %4067, i64* %4066, align 8
  %4068 = getelementptr inbounds %union.anon, %union.anon* %4048, i64 0, i32 0
  %4069 = and i64 %4065, 4294967295
  store i64 %4069, i64* %4068, align 8
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4070, align 1
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4071, align 1
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4072, align 1
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4073, align 1
  %4074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4074, align 1
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4075, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %4060, %4064
  %4076 = phi %struct.Memory* [ %4063, %4060 ], [ %loadMem_443a7c, %4064 ]
  store %struct.Memory* %4076, %struct.Memory** %MEMORY
  %loadMem_443a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4078 = getelementptr inbounds %struct.GPR, %struct.GPR* %4077, i32 0, i32 33
  %4079 = getelementptr inbounds %struct.Reg, %struct.Reg* %4078, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %4079 to i64*
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4081 = getelementptr inbounds %struct.GPR, %struct.GPR* %4080, i32 0, i32 7
  %4082 = getelementptr inbounds %struct.Reg, %struct.Reg* %4081, i32 0, i32 0
  %RDX.i559 = bitcast %union.anon* %4082 to i64*
  %4083 = load i64, i64* %RDX.i559
  %4084 = load i64, i64* %PC.i558
  %4085 = add i64 %4084, 3
  store i64 %4085, i64* %PC.i558
  %4086 = trunc i64 %4083 to i32
  %4087 = sub i32 %4086, 1
  %4088 = zext i32 %4087 to i64
  store i64 %4088, i64* %RDX.i559, align 8
  %4089 = icmp ult i32 %4086, 1
  %4090 = zext i1 %4089 to i8
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4090, i8* %4091, align 1
  %4092 = and i32 %4087, 255
  %4093 = call i32 @llvm.ctpop.i32(i32 %4092)
  %4094 = trunc i32 %4093 to i8
  %4095 = and i8 %4094, 1
  %4096 = xor i8 %4095, 1
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4096, i8* %4097, align 1
  %4098 = xor i64 1, %4083
  %4099 = trunc i64 %4098 to i32
  %4100 = xor i32 %4099, %4087
  %4101 = lshr i32 %4100, 4
  %4102 = trunc i32 %4101 to i8
  %4103 = and i8 %4102, 1
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4103, i8* %4104, align 1
  %4105 = icmp eq i32 %4087, 0
  %4106 = zext i1 %4105 to i8
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4106, i8* %4107, align 1
  %4108 = lshr i32 %4087, 31
  %4109 = trunc i32 %4108 to i8
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4109, i8* %4110, align 1
  %4111 = lshr i32 %4086, 31
  %4112 = xor i32 %4108, %4111
  %4113 = add i32 %4112, %4111
  %4114 = icmp eq i32 %4113, 2
  %4115 = zext i1 %4114 to i8
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4115, i8* %4116, align 1
  store %struct.Memory* %loadMem_443a7e, %struct.Memory** %MEMORY
  %loadMem_443a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4118 = getelementptr inbounds %struct.GPR, %struct.GPR* %4117, i32 0, i32 33
  %4119 = getelementptr inbounds %struct.Reg, %struct.Reg* %4118, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %4119 to i64*
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4121 = getelementptr inbounds %struct.GPR, %struct.GPR* %4120, i32 0, i32 15
  %4122 = getelementptr inbounds %struct.Reg, %struct.Reg* %4121, i32 0, i32 0
  %RBP.i556 = bitcast %union.anon* %4122 to i64*
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4124 = getelementptr inbounds %struct.GPR, %struct.GPR* %4123, i32 0, i32 19
  %4125 = getelementptr inbounds %struct.Reg, %struct.Reg* %4124, i32 0, i32 0
  %R9.i557 = bitcast %union.anon* %4125 to i64*
  %4126 = load i64, i64* %RBP.i556
  %4127 = sub i64 %4126, 144
  %4128 = load i64, i64* %PC.i555
  %4129 = add i64 %4128, 7
  store i64 %4129, i64* %PC.i555
  %4130 = inttoptr i64 %4127 to i64*
  %4131 = load i64, i64* %4130
  store i64 %4131, i64* %R9.i557, align 8
  store %struct.Memory* %loadMem_443a81, %struct.Memory** %MEMORY
  %loadMem_443a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4133 = getelementptr inbounds %struct.GPR, %struct.GPR* %4132, i32 0, i32 33
  %4134 = getelementptr inbounds %struct.Reg, %struct.Reg* %4133, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %4134 to i64*
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4136 = getelementptr inbounds %struct.GPR, %struct.GPR* %4135, i32 0, i32 7
  %4137 = getelementptr inbounds %struct.Reg, %struct.Reg* %4136, i32 0, i32 0
  %EDX.i553 = bitcast %union.anon* %4137 to i32*
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4139 = getelementptr inbounds %struct.GPR, %struct.GPR* %4138, i32 0, i32 15
  %4140 = getelementptr inbounds %struct.Reg, %struct.Reg* %4139, i32 0, i32 0
  %RBP.i554 = bitcast %union.anon* %4140 to i64*
  %4141 = load i64, i64* %RBP.i554
  %4142 = sub i64 %4141, 152
  %4143 = load i32, i32* %EDX.i553
  %4144 = zext i32 %4143 to i64
  %4145 = load i64, i64* %PC.i552
  %4146 = add i64 %4145, 6
  store i64 %4146, i64* %PC.i552
  %4147 = inttoptr i64 %4142 to i32*
  store i32 %4143, i32* %4147
  store %struct.Memory* %loadMem_443a88, %struct.Memory** %MEMORY
  %loadMem_443a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4149 = getelementptr inbounds %struct.GPR, %struct.GPR* %4148, i32 0, i32 33
  %4150 = getelementptr inbounds %struct.Reg, %struct.Reg* %4149, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %4150 to i64*
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4152 = getelementptr inbounds %struct.GPR, %struct.GPR* %4151, i32 0, i32 7
  %4153 = getelementptr inbounds %struct.Reg, %struct.Reg* %4152, i32 0, i32 0
  %RDX.i551 = bitcast %union.anon* %4153 to i64*
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4155 = getelementptr inbounds %struct.GPR, %struct.GPR* %4154, i32 0, i32 19
  %4156 = getelementptr inbounds %struct.Reg, %struct.Reg* %4155, i32 0, i32 0
  %R9.i = bitcast %union.anon* %4156 to i64*
  %4157 = load i64, i64* %R9.i
  %4158 = load i64, i64* %PC.i550
  %4159 = add i64 %4158, 3
  store i64 %4159, i64* %PC.i550
  store i64 %4157, i64* %RDX.i551, align 8
  store %struct.Memory* %loadMem_443a8e, %struct.Memory** %MEMORY
  %loadMem_443a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4161 = getelementptr inbounds %struct.GPR, %struct.GPR* %4160, i32 0, i32 33
  %4162 = getelementptr inbounds %struct.Reg, %struct.Reg* %4161, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %4162 to i64*
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 5
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %RCX.i548 = bitcast %union.anon* %4165 to i64*
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4167 = getelementptr inbounds %struct.GPR, %struct.GPR* %4166, i32 0, i32 15
  %4168 = getelementptr inbounds %struct.Reg, %struct.Reg* %4167, i32 0, i32 0
  %RBP.i549 = bitcast %union.anon* %4168 to i64*
  %4169 = load i64, i64* %RBP.i549
  %4170 = sub i64 %4169, 148
  %4171 = load i64, i64* %PC.i547
  %4172 = add i64 %4171, 6
  store i64 %4172, i64* %PC.i547
  %4173 = inttoptr i64 %4170 to i32*
  %4174 = load i32, i32* %4173
  %4175 = zext i32 %4174 to i64
  store i64 %4175, i64* %RCX.i548, align 8
  store %struct.Memory* %loadMem_443a91, %struct.Memory** %MEMORY
  %loadMem_443a97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4177 = getelementptr inbounds %struct.GPR, %struct.GPR* %4176, i32 0, i32 33
  %4178 = getelementptr inbounds %struct.Reg, %struct.Reg* %4177, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %4178 to i64*
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4180 = getelementptr inbounds %struct.GPR, %struct.GPR* %4179, i32 0, i32 17
  %4181 = getelementptr inbounds %struct.Reg, %struct.Reg* %4180, i32 0, i32 0
  %R8D.i545 = bitcast %union.anon* %4181 to i32*
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4183 = getelementptr inbounds %struct.GPR, %struct.GPR* %4182, i32 0, i32 15
  %4184 = getelementptr inbounds %struct.Reg, %struct.Reg* %4183, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %4184 to i64*
  %4185 = bitcast i32* %R8D.i545 to i64*
  %4186 = load i64, i64* %RBP.i546
  %4187 = sub i64 %4186, 152
  %4188 = load i64, i64* %PC.i544
  %4189 = add i64 %4188, 7
  store i64 %4189, i64* %PC.i544
  %4190 = inttoptr i64 %4187 to i32*
  %4191 = load i32, i32* %4190
  %4192 = zext i32 %4191 to i64
  store i64 %4192, i64* %4185, align 8
  store %struct.Memory* %loadMem_443a97, %struct.Memory** %MEMORY
  %loadMem1_443a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4194 = getelementptr inbounds %struct.GPR, %struct.GPR* %4193, i32 0, i32 33
  %4195 = getelementptr inbounds %struct.Reg, %struct.Reg* %4194, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %4195 to i64*
  %4196 = load i64, i64* %PC.i543
  %4197 = add i64 %4196, 58866
  %4198 = load i64, i64* %PC.i543
  %4199 = add i64 %4198, 5
  %4200 = load i64, i64* %PC.i543
  %4201 = add i64 %4200, 5
  store i64 %4201, i64* %PC.i543
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4203 = load i64, i64* %4202, align 8
  %4204 = add i64 %4203, -8
  %4205 = inttoptr i64 %4204 to i64*
  store i64 %4199, i64* %4205
  store i64 %4204, i64* %4202, align 8
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4197, i64* %4206, align 8
  store %struct.Memory* %loadMem1_443a9e, %struct.Memory** %MEMORY
  %loadMem2_443a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_443a9e = load i64, i64* %3
  %call2_443a9e = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_443a9e, %struct.Memory* %loadMem2_443a9e)
  store %struct.Memory* %call2_443a9e, %struct.Memory** %MEMORY
  br label %block_.L_443aa3

block_.L_443aa3:                                  ; preds = %routine_idivl__ecx.exit, %block_443a2d
  %loadMem_443aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4208 = getelementptr inbounds %struct.GPR, %struct.GPR* %4207, i32 0, i32 33
  %4209 = getelementptr inbounds %struct.Reg, %struct.Reg* %4208, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %4209 to i64*
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4211 = getelementptr inbounds %struct.GPR, %struct.GPR* %4210, i32 0, i32 15
  %4212 = getelementptr inbounds %struct.Reg, %struct.Reg* %4211, i32 0, i32 0
  %RBP.i542 = bitcast %union.anon* %4212 to i64*
  %4213 = load i64, i64* %RBP.i542
  %4214 = sub i64 %4213, 48
  %4215 = load i64, i64* %PC.i541
  %4216 = add i64 %4215, 7
  store i64 %4216, i64* %PC.i541
  %4217 = inttoptr i64 %4214 to i32*
  store i32 0, i32* %4217
  store %struct.Memory* %loadMem_443aa3, %struct.Memory** %MEMORY
  br label %block_.L_443aaa

block_.L_443aaa:                                  ; preds = %block_.L_443af1, %block_.L_443aa3
  %loadMem_443aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4219 = getelementptr inbounds %struct.GPR, %struct.GPR* %4218, i32 0, i32 33
  %4220 = getelementptr inbounds %struct.Reg, %struct.Reg* %4219, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %4220 to i64*
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4222 = getelementptr inbounds %struct.GPR, %struct.GPR* %4221, i32 0, i32 15
  %4223 = getelementptr inbounds %struct.Reg, %struct.Reg* %4222, i32 0, i32 0
  %RBP.i540 = bitcast %union.anon* %4223 to i64*
  %4224 = load i64, i64* %RBP.i540
  %4225 = sub i64 %4224, 48
  %4226 = load i64, i64* %PC.i539
  %4227 = add i64 %4226, 4
  store i64 %4227, i64* %PC.i539
  %4228 = inttoptr i64 %4225 to i32*
  %4229 = load i32, i32* %4228
  %4230 = sub i32 %4229, 3
  %4231 = icmp ult i32 %4229, 3
  %4232 = zext i1 %4231 to i8
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4232, i8* %4233, align 1
  %4234 = and i32 %4230, 255
  %4235 = call i32 @llvm.ctpop.i32(i32 %4234)
  %4236 = trunc i32 %4235 to i8
  %4237 = and i8 %4236, 1
  %4238 = xor i8 %4237, 1
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4238, i8* %4239, align 1
  %4240 = xor i32 %4229, 3
  %4241 = xor i32 %4240, %4230
  %4242 = lshr i32 %4241, 4
  %4243 = trunc i32 %4242 to i8
  %4244 = and i8 %4243, 1
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4244, i8* %4245, align 1
  %4246 = icmp eq i32 %4230, 0
  %4247 = zext i1 %4246 to i8
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4247, i8* %4248, align 1
  %4249 = lshr i32 %4230, 31
  %4250 = trunc i32 %4249 to i8
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4250, i8* %4251, align 1
  %4252 = lshr i32 %4229, 31
  %4253 = xor i32 %4249, %4252
  %4254 = add i32 %4253, %4252
  %4255 = icmp eq i32 %4254, 2
  %4256 = zext i1 %4255 to i8
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4256, i8* %4257, align 1
  store %struct.Memory* %loadMem_443aaa, %struct.Memory** %MEMORY
  %loadMem_443aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4259 = getelementptr inbounds %struct.GPR, %struct.GPR* %4258, i32 0, i32 33
  %4260 = getelementptr inbounds %struct.Reg, %struct.Reg* %4259, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %4260 to i64*
  %4261 = load i64, i64* %PC.i538
  %4262 = add i64 %4261, 81
  %4263 = load i64, i64* %PC.i538
  %4264 = add i64 %4263, 6
  %4265 = load i64, i64* %PC.i538
  %4266 = add i64 %4265, 6
  store i64 %4266, i64* %PC.i538
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4268 = load i8, i8* %4267, align 1
  %4269 = icmp ne i8 %4268, 0
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4271 = load i8, i8* %4270, align 1
  %4272 = icmp ne i8 %4271, 0
  %4273 = xor i1 %4269, %4272
  %4274 = xor i1 %4273, true
  %4275 = zext i1 %4274 to i8
  store i8 %4275, i8* %BRANCH_TAKEN, align 1
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4277 = select i1 %4273, i64 %4264, i64 %4262
  store i64 %4277, i64* %4276, align 8
  store %struct.Memory* %loadMem_443aae, %struct.Memory** %MEMORY
  %loadBr_443aae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443aae = icmp eq i8 %loadBr_443aae, 1
  br i1 %cmpBr_443aae, label %block_.L_443aff, label %block_443ab4

block_443ab4:                                     ; preds = %block_.L_443aaa
  %loadMem_443ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4279 = getelementptr inbounds %struct.GPR, %struct.GPR* %4278, i32 0, i32 33
  %4280 = getelementptr inbounds %struct.Reg, %struct.Reg* %4279, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %4280 to i64*
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4282 = getelementptr inbounds %struct.GPR, %struct.GPR* %4281, i32 0, i32 1
  %4283 = getelementptr inbounds %struct.Reg, %struct.Reg* %4282, i32 0, i32 0
  %RAX.i536 = bitcast %union.anon* %4283 to i64*
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4285 = getelementptr inbounds %struct.GPR, %struct.GPR* %4284, i32 0, i32 15
  %4286 = getelementptr inbounds %struct.Reg, %struct.Reg* %4285, i32 0, i32 0
  %RBP.i537 = bitcast %union.anon* %4286 to i64*
  %4287 = load i64, i64* %RBP.i537
  %4288 = sub i64 %4287, 32
  %4289 = load i64, i64* %PC.i535
  %4290 = add i64 %4289, 4
  store i64 %4290, i64* %PC.i535
  %4291 = inttoptr i64 %4288 to i64*
  %4292 = load i64, i64* %4291
  store i64 %4292, i64* %RAX.i536, align 8
  store %struct.Memory* %loadMem_443ab4, %struct.Memory** %MEMORY
  %loadMem_443ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4294 = getelementptr inbounds %struct.GPR, %struct.GPR* %4293, i32 0, i32 33
  %4295 = getelementptr inbounds %struct.Reg, %struct.Reg* %4294, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %4295 to i64*
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4297 = getelementptr inbounds %struct.GPR, %struct.GPR* %4296, i32 0, i32 5
  %4298 = getelementptr inbounds %struct.Reg, %struct.Reg* %4297, i32 0, i32 0
  %RCX.i533 = bitcast %union.anon* %4298 to i64*
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4300 = getelementptr inbounds %struct.GPR, %struct.GPR* %4299, i32 0, i32 15
  %4301 = getelementptr inbounds %struct.Reg, %struct.Reg* %4300, i32 0, i32 0
  %RBP.i534 = bitcast %union.anon* %4301 to i64*
  %4302 = load i64, i64* %RBP.i534
  %4303 = sub i64 %4302, 48
  %4304 = load i64, i64* %PC.i532
  %4305 = add i64 %4304, 4
  store i64 %4305, i64* %PC.i532
  %4306 = inttoptr i64 %4303 to i32*
  %4307 = load i32, i32* %4306
  %4308 = sext i32 %4307 to i64
  store i64 %4308, i64* %RCX.i533, align 8
  store %struct.Memory* %loadMem_443ab8, %struct.Memory** %MEMORY
  %loadMem_443abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4310 = getelementptr inbounds %struct.GPR, %struct.GPR* %4309, i32 0, i32 33
  %4311 = getelementptr inbounds %struct.Reg, %struct.Reg* %4310, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %4311 to i64*
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4313 = getelementptr inbounds %struct.GPR, %struct.GPR* %4312, i32 0, i32 5
  %4314 = getelementptr inbounds %struct.Reg, %struct.Reg* %4313, i32 0, i32 0
  %RCX.i531 = bitcast %union.anon* %4314 to i64*
  %4315 = load i64, i64* %RCX.i531
  %4316 = load i64, i64* %PC.i530
  %4317 = add i64 %4316, 4
  store i64 %4317, i64* %PC.i530
  %4318 = shl i64 %4315, 4
  %4319 = icmp slt i64 %4318, 0
  %4320 = shl i64 %4318, 1
  store i64 %4320, i64* %RCX.i531, align 8
  %4321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4322 = zext i1 %4319 to i8
  store i8 %4322, i8* %4321, align 1
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4324 = trunc i64 %4320 to i32
  %4325 = and i32 %4324, 254
  %4326 = call i32 @llvm.ctpop.i32(i32 %4325)
  %4327 = trunc i32 %4326 to i8
  %4328 = and i8 %4327, 1
  %4329 = xor i8 %4328, 1
  store i8 %4329, i8* %4323, align 1
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4330, align 1
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4332 = icmp eq i64 %4320, 0
  %4333 = zext i1 %4332 to i8
  store i8 %4333, i8* %4331, align 1
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4335 = lshr i64 %4320, 63
  %4336 = trunc i64 %4335 to i8
  store i8 %4336, i8* %4334, align 1
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4337, align 1
  store %struct.Memory* %loadMem_443abc, %struct.Memory** %MEMORY
  %loadMem_443ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4339 = getelementptr inbounds %struct.GPR, %struct.GPR* %4338, i32 0, i32 33
  %4340 = getelementptr inbounds %struct.Reg, %struct.Reg* %4339, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %4340 to i64*
  %4341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4342 = getelementptr inbounds %struct.GPR, %struct.GPR* %4341, i32 0, i32 1
  %4343 = getelementptr inbounds %struct.Reg, %struct.Reg* %4342, i32 0, i32 0
  %RAX.i528 = bitcast %union.anon* %4343 to i64*
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4345 = getelementptr inbounds %struct.GPR, %struct.GPR* %4344, i32 0, i32 5
  %4346 = getelementptr inbounds %struct.Reg, %struct.Reg* %4345, i32 0, i32 0
  %RCX.i529 = bitcast %union.anon* %4346 to i64*
  %4347 = load i64, i64* %RAX.i528
  %4348 = load i64, i64* %RCX.i529
  %4349 = load i64, i64* %PC.i527
  %4350 = add i64 %4349, 3
  store i64 %4350, i64* %PC.i527
  %4351 = add i64 %4348, %4347
  store i64 %4351, i64* %RAX.i528, align 8
  %4352 = icmp ult i64 %4351, %4347
  %4353 = icmp ult i64 %4351, %4348
  %4354 = or i1 %4352, %4353
  %4355 = zext i1 %4354 to i8
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4355, i8* %4356, align 1
  %4357 = trunc i64 %4351 to i32
  %4358 = and i32 %4357, 255
  %4359 = call i32 @llvm.ctpop.i32(i32 %4358)
  %4360 = trunc i32 %4359 to i8
  %4361 = and i8 %4360, 1
  %4362 = xor i8 %4361, 1
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4362, i8* %4363, align 1
  %4364 = xor i64 %4348, %4347
  %4365 = xor i64 %4364, %4351
  %4366 = lshr i64 %4365, 4
  %4367 = trunc i64 %4366 to i8
  %4368 = and i8 %4367, 1
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4368, i8* %4369, align 1
  %4370 = icmp eq i64 %4351, 0
  %4371 = zext i1 %4370 to i8
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4371, i8* %4372, align 1
  %4373 = lshr i64 %4351, 63
  %4374 = trunc i64 %4373 to i8
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4374, i8* %4375, align 1
  %4376 = lshr i64 %4347, 63
  %4377 = lshr i64 %4348, 63
  %4378 = xor i64 %4373, %4376
  %4379 = xor i64 %4373, %4377
  %4380 = add i64 %4378, %4379
  %4381 = icmp eq i64 %4380, 2
  %4382 = zext i1 %4381 to i8
  %4383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4382, i8* %4383, align 1
  store %struct.Memory* %loadMem_443ac0, %struct.Memory** %MEMORY
  %loadMem_443ac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4385 = getelementptr inbounds %struct.GPR, %struct.GPR* %4384, i32 0, i32 33
  %4386 = getelementptr inbounds %struct.Reg, %struct.Reg* %4385, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %4386 to i64*
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4388 = getelementptr inbounds %struct.GPR, %struct.GPR* %4387, i32 0, i32 1
  %4389 = getelementptr inbounds %struct.Reg, %struct.Reg* %4388, i32 0, i32 0
  %RAX.i525 = bitcast %union.anon* %4389 to i64*
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4391 = getelementptr inbounds %struct.GPR, %struct.GPR* %4390, i32 0, i32 7
  %4392 = getelementptr inbounds %struct.Reg, %struct.Reg* %4391, i32 0, i32 0
  %RDX.i526 = bitcast %union.anon* %4392 to i64*
  %4393 = load i64, i64* %RAX.i525
  %4394 = load i64, i64* %PC.i524
  %4395 = add i64 %4394, 2
  store i64 %4395, i64* %PC.i524
  %4396 = inttoptr i64 %4393 to i32*
  %4397 = load i32, i32* %4396
  %4398 = zext i32 %4397 to i64
  store i64 %4398, i64* %RDX.i526, align 8
  store %struct.Memory* %loadMem_443ac3, %struct.Memory** %MEMORY
  %loadMem_443ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4400 = getelementptr inbounds %struct.GPR, %struct.GPR* %4399, i32 0, i32 33
  %4401 = getelementptr inbounds %struct.Reg, %struct.Reg* %4400, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %4401 to i64*
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4403 = getelementptr inbounds %struct.GPR, %struct.GPR* %4402, i32 0, i32 7
  %4404 = getelementptr inbounds %struct.Reg, %struct.Reg* %4403, i32 0, i32 0
  %EDX.i522 = bitcast %union.anon* %4404 to i32*
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4406 = getelementptr inbounds %struct.GPR, %struct.GPR* %4405, i32 0, i32 15
  %4407 = getelementptr inbounds %struct.Reg, %struct.Reg* %4406, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %4407 to i64*
  %4408 = load i32, i32* %EDX.i522
  %4409 = zext i32 %4408 to i64
  %4410 = load i64, i64* %RBP.i523
  %4411 = sub i64 %4410, 56
  %4412 = load i64, i64* %PC.i521
  %4413 = add i64 %4412, 3
  store i64 %4413, i64* %PC.i521
  %4414 = inttoptr i64 %4411 to i32*
  %4415 = load i32, i32* %4414
  %4416 = sub i32 %4408, %4415
  %4417 = icmp ult i32 %4408, %4415
  %4418 = zext i1 %4417 to i8
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4418, i8* %4419, align 1
  %4420 = and i32 %4416, 255
  %4421 = call i32 @llvm.ctpop.i32(i32 %4420)
  %4422 = trunc i32 %4421 to i8
  %4423 = and i8 %4422, 1
  %4424 = xor i8 %4423, 1
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4424, i8* %4425, align 1
  %4426 = xor i32 %4415, %4408
  %4427 = xor i32 %4426, %4416
  %4428 = lshr i32 %4427, 4
  %4429 = trunc i32 %4428 to i8
  %4430 = and i8 %4429, 1
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4430, i8* %4431, align 1
  %4432 = icmp eq i32 %4416, 0
  %4433 = zext i1 %4432 to i8
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4433, i8* %4434, align 1
  %4435 = lshr i32 %4416, 31
  %4436 = trunc i32 %4435 to i8
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4436, i8* %4437, align 1
  %4438 = lshr i32 %4408, 31
  %4439 = lshr i32 %4415, 31
  %4440 = xor i32 %4439, %4438
  %4441 = xor i32 %4435, %4438
  %4442 = add i32 %4441, %4440
  %4443 = icmp eq i32 %4442, 2
  %4444 = zext i1 %4443 to i8
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4444, i8* %4445, align 1
  store %struct.Memory* %loadMem_443ac5, %struct.Memory** %MEMORY
  %loadMem_443ac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4447 = getelementptr inbounds %struct.GPR, %struct.GPR* %4446, i32 0, i32 33
  %4448 = getelementptr inbounds %struct.Reg, %struct.Reg* %4447, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %4448 to i64*
  %4449 = load i64, i64* %PC.i520
  %4450 = add i64 %4449, 31
  %4451 = load i64, i64* %PC.i520
  %4452 = add i64 %4451, 6
  %4453 = load i64, i64* %PC.i520
  %4454 = add i64 %4453, 6
  store i64 %4454, i64* %PC.i520
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4456 = load i8, i8* %4455, align 1
  store i8 %4456, i8* %BRANCH_TAKEN, align 1
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4458 = icmp ne i8 %4456, 0
  %4459 = select i1 %4458, i64 %4450, i64 %4452
  store i64 %4459, i64* %4457, align 8
  store %struct.Memory* %loadMem_443ac8, %struct.Memory** %MEMORY
  %loadBr_443ac8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443ac8 = icmp eq i8 %loadBr_443ac8, 1
  br i1 %cmpBr_443ac8, label %block_.L_443ae7, label %block_443ace

block_443ace:                                     ; preds = %block_443ab4
  %loadMem_443ace = load %struct.Memory*, %struct.Memory** %MEMORY
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4461 = getelementptr inbounds %struct.GPR, %struct.GPR* %4460, i32 0, i32 33
  %4462 = getelementptr inbounds %struct.Reg, %struct.Reg* %4461, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %4462 to i64*
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4464 = getelementptr inbounds %struct.GPR, %struct.GPR* %4463, i32 0, i32 1
  %4465 = getelementptr inbounds %struct.Reg, %struct.Reg* %4464, i32 0, i32 0
  %RAX.i518 = bitcast %union.anon* %4465 to i64*
  %4466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4467 = getelementptr inbounds %struct.GPR, %struct.GPR* %4466, i32 0, i32 15
  %4468 = getelementptr inbounds %struct.Reg, %struct.Reg* %4467, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %4468 to i64*
  %4469 = load i64, i64* %RBP.i519
  %4470 = sub i64 %4469, 32
  %4471 = load i64, i64* %PC.i517
  %4472 = add i64 %4471, 4
  store i64 %4472, i64* %PC.i517
  %4473 = inttoptr i64 %4470 to i64*
  %4474 = load i64, i64* %4473
  store i64 %4474, i64* %RAX.i518, align 8
  store %struct.Memory* %loadMem_443ace, %struct.Memory** %MEMORY
  %loadMem_443ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4476 = getelementptr inbounds %struct.GPR, %struct.GPR* %4475, i32 0, i32 33
  %4477 = getelementptr inbounds %struct.Reg, %struct.Reg* %4476, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %4477 to i64*
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4479 = getelementptr inbounds %struct.GPR, %struct.GPR* %4478, i32 0, i32 5
  %4480 = getelementptr inbounds %struct.Reg, %struct.Reg* %4479, i32 0, i32 0
  %RCX.i515 = bitcast %union.anon* %4480 to i64*
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4482 = getelementptr inbounds %struct.GPR, %struct.GPR* %4481, i32 0, i32 15
  %4483 = getelementptr inbounds %struct.Reg, %struct.Reg* %4482, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %4483 to i64*
  %4484 = load i64, i64* %RBP.i516
  %4485 = sub i64 %4484, 48
  %4486 = load i64, i64* %PC.i514
  %4487 = add i64 %4486, 4
  store i64 %4487, i64* %PC.i514
  %4488 = inttoptr i64 %4485 to i32*
  %4489 = load i32, i32* %4488
  %4490 = sext i32 %4489 to i64
  store i64 %4490, i64* %RCX.i515, align 8
  store %struct.Memory* %loadMem_443ad2, %struct.Memory** %MEMORY
  %loadMem_443ad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4492 = getelementptr inbounds %struct.GPR, %struct.GPR* %4491, i32 0, i32 33
  %4493 = getelementptr inbounds %struct.Reg, %struct.Reg* %4492, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %4493 to i64*
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4495 = getelementptr inbounds %struct.GPR, %struct.GPR* %4494, i32 0, i32 5
  %4496 = getelementptr inbounds %struct.Reg, %struct.Reg* %4495, i32 0, i32 0
  %RCX.i513 = bitcast %union.anon* %4496 to i64*
  %4497 = load i64, i64* %RCX.i513
  %4498 = load i64, i64* %PC.i512
  %4499 = add i64 %4498, 4
  store i64 %4499, i64* %PC.i512
  %4500 = shl i64 %4497, 4
  %4501 = icmp slt i64 %4500, 0
  %4502 = shl i64 %4500, 1
  store i64 %4502, i64* %RCX.i513, align 8
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4504 = zext i1 %4501 to i8
  store i8 %4504, i8* %4503, align 1
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4506 = trunc i64 %4502 to i32
  %4507 = and i32 %4506, 254
  %4508 = call i32 @llvm.ctpop.i32(i32 %4507)
  %4509 = trunc i32 %4508 to i8
  %4510 = and i8 %4509, 1
  %4511 = xor i8 %4510, 1
  store i8 %4511, i8* %4505, align 1
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4512, align 1
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4514 = icmp eq i64 %4502, 0
  %4515 = zext i1 %4514 to i8
  store i8 %4515, i8* %4513, align 1
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4517 = lshr i64 %4502, 63
  %4518 = trunc i64 %4517 to i8
  store i8 %4518, i8* %4516, align 1
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4519, align 1
  store %struct.Memory* %loadMem_443ad6, %struct.Memory** %MEMORY
  %loadMem_443ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4521 = getelementptr inbounds %struct.GPR, %struct.GPR* %4520, i32 0, i32 33
  %4522 = getelementptr inbounds %struct.Reg, %struct.Reg* %4521, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %4522 to i64*
  %4523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4524 = getelementptr inbounds %struct.GPR, %struct.GPR* %4523, i32 0, i32 1
  %4525 = getelementptr inbounds %struct.Reg, %struct.Reg* %4524, i32 0, i32 0
  %RAX.i510 = bitcast %union.anon* %4525 to i64*
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4527 = getelementptr inbounds %struct.GPR, %struct.GPR* %4526, i32 0, i32 5
  %4528 = getelementptr inbounds %struct.Reg, %struct.Reg* %4527, i32 0, i32 0
  %RCX.i511 = bitcast %union.anon* %4528 to i64*
  %4529 = load i64, i64* %RAX.i510
  %4530 = load i64, i64* %RCX.i511
  %4531 = load i64, i64* %PC.i509
  %4532 = add i64 %4531, 3
  store i64 %4532, i64* %PC.i509
  %4533 = add i64 %4530, %4529
  store i64 %4533, i64* %RAX.i510, align 8
  %4534 = icmp ult i64 %4533, %4529
  %4535 = icmp ult i64 %4533, %4530
  %4536 = or i1 %4534, %4535
  %4537 = zext i1 %4536 to i8
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4537, i8* %4538, align 1
  %4539 = trunc i64 %4533 to i32
  %4540 = and i32 %4539, 255
  %4541 = call i32 @llvm.ctpop.i32(i32 %4540)
  %4542 = trunc i32 %4541 to i8
  %4543 = and i8 %4542, 1
  %4544 = xor i8 %4543, 1
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4544, i8* %4545, align 1
  %4546 = xor i64 %4530, %4529
  %4547 = xor i64 %4546, %4533
  %4548 = lshr i64 %4547, 4
  %4549 = trunc i64 %4548 to i8
  %4550 = and i8 %4549, 1
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4550, i8* %4551, align 1
  %4552 = icmp eq i64 %4533, 0
  %4553 = zext i1 %4552 to i8
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4553, i8* %4554, align 1
  %4555 = lshr i64 %4533, 63
  %4556 = trunc i64 %4555 to i8
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4556, i8* %4557, align 1
  %4558 = lshr i64 %4529, 63
  %4559 = lshr i64 %4530, 63
  %4560 = xor i64 %4555, %4558
  %4561 = xor i64 %4555, %4559
  %4562 = add i64 %4560, %4561
  %4563 = icmp eq i64 %4562, 2
  %4564 = zext i1 %4563 to i8
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4564, i8* %4565, align 1
  store %struct.Memory* %loadMem_443ada, %struct.Memory** %MEMORY
  %loadMem_443add = load %struct.Memory*, %struct.Memory** %MEMORY
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4567 = getelementptr inbounds %struct.GPR, %struct.GPR* %4566, i32 0, i32 33
  %4568 = getelementptr inbounds %struct.Reg, %struct.Reg* %4567, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %4568 to i64*
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4570 = getelementptr inbounds %struct.GPR, %struct.GPR* %4569, i32 0, i32 1
  %4571 = getelementptr inbounds %struct.Reg, %struct.Reg* %4570, i32 0, i32 0
  %RAX.i508 = bitcast %union.anon* %4571 to i64*
  %4572 = load i64, i64* %RAX.i508
  %4573 = add i64 %4572, 4
  %4574 = load i64, i64* %PC.i507
  %4575 = add i64 %4574, 4
  store i64 %4575, i64* %PC.i507
  %4576 = inttoptr i64 %4573 to i32*
  %4577 = load i32, i32* %4576
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4578, align 1
  %4579 = and i32 %4577, 255
  %4580 = call i32 @llvm.ctpop.i32(i32 %4579)
  %4581 = trunc i32 %4580 to i8
  %4582 = and i8 %4581, 1
  %4583 = xor i8 %4582, 1
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4583, i8* %4584, align 1
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4585, align 1
  %4586 = icmp eq i32 %4577, 0
  %4587 = zext i1 %4586 to i8
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4587, i8* %4588, align 1
  %4589 = lshr i32 %4577, 31
  %4590 = trunc i32 %4589 to i8
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4590, i8* %4591, align 1
  %4592 = lshr i32 %4577, 31
  %4593 = xor i32 %4589, %4592
  %4594 = add i32 %4593, %4592
  %4595 = icmp eq i32 %4594, 2
  %4596 = zext i1 %4595 to i8
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4596, i8* %4597, align 1
  store %struct.Memory* %loadMem_443add, %struct.Memory** %MEMORY
  %loadMem_443ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4599 = getelementptr inbounds %struct.GPR, %struct.GPR* %4598, i32 0, i32 33
  %4600 = getelementptr inbounds %struct.Reg, %struct.Reg* %4599, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %4600 to i64*
  %4601 = load i64, i64* %PC.i506
  %4602 = add i64 %4601, 11
  %4603 = load i64, i64* %PC.i506
  %4604 = add i64 %4603, 6
  %4605 = load i64, i64* %PC.i506
  %4606 = add i64 %4605, 6
  store i64 %4606, i64* %PC.i506
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4608 = load i8, i8* %4607, align 1
  %4609 = icmp eq i8 %4608, 0
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4611 = load i8, i8* %4610, align 1
  %4612 = icmp ne i8 %4611, 0
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4614 = load i8, i8* %4613, align 1
  %4615 = icmp ne i8 %4614, 0
  %4616 = xor i1 %4612, %4615
  %4617 = xor i1 %4616, true
  %4618 = and i1 %4609, %4617
  %4619 = zext i1 %4618 to i8
  store i8 %4619, i8* %BRANCH_TAKEN, align 1
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4621 = select i1 %4618, i64 %4602, i64 %4604
  store i64 %4621, i64* %4620, align 8
  store %struct.Memory* %loadMem_443ae1, %struct.Memory** %MEMORY
  %loadBr_443ae1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443ae1 = icmp eq i8 %loadBr_443ae1, 1
  br i1 %cmpBr_443ae1, label %block_.L_443aec, label %block_.L_443ae7

block_.L_443ae7:                                  ; preds = %block_443ace, %block_443ab4
  %loadMem_443ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4623 = getelementptr inbounds %struct.GPR, %struct.GPR* %4622, i32 0, i32 33
  %4624 = getelementptr inbounds %struct.Reg, %struct.Reg* %4623, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %4624 to i64*
  %4625 = load i64, i64* %PC.i505
  %4626 = add i64 %4625, 24
  %4627 = load i64, i64* %PC.i505
  %4628 = add i64 %4627, 5
  store i64 %4628, i64* %PC.i505
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4626, i64* %4629, align 8
  store %struct.Memory* %loadMem_443ae7, %struct.Memory** %MEMORY
  br label %block_.L_443aff

block_.L_443aec:                                  ; preds = %block_443ace
  %loadMem_443aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4631 = getelementptr inbounds %struct.GPR, %struct.GPR* %4630, i32 0, i32 33
  %4632 = getelementptr inbounds %struct.Reg, %struct.Reg* %4631, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %4632 to i64*
  %4633 = load i64, i64* %PC.i504
  %4634 = add i64 %4633, 5
  %4635 = load i64, i64* %PC.i504
  %4636 = add i64 %4635, 5
  store i64 %4636, i64* %PC.i504
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4634, i64* %4637, align 8
  store %struct.Memory* %loadMem_443aec, %struct.Memory** %MEMORY
  br label %block_.L_443af1

block_.L_443af1:                                  ; preds = %block_.L_443aec
  %loadMem_443af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4639 = getelementptr inbounds %struct.GPR, %struct.GPR* %4638, i32 0, i32 33
  %4640 = getelementptr inbounds %struct.Reg, %struct.Reg* %4639, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %4640 to i64*
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4642 = getelementptr inbounds %struct.GPR, %struct.GPR* %4641, i32 0, i32 1
  %4643 = getelementptr inbounds %struct.Reg, %struct.Reg* %4642, i32 0, i32 0
  %RAX.i502 = bitcast %union.anon* %4643 to i64*
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4645 = getelementptr inbounds %struct.GPR, %struct.GPR* %4644, i32 0, i32 15
  %4646 = getelementptr inbounds %struct.Reg, %struct.Reg* %4645, i32 0, i32 0
  %RBP.i503 = bitcast %union.anon* %4646 to i64*
  %4647 = load i64, i64* %RBP.i503
  %4648 = sub i64 %4647, 48
  %4649 = load i64, i64* %PC.i501
  %4650 = add i64 %4649, 3
  store i64 %4650, i64* %PC.i501
  %4651 = inttoptr i64 %4648 to i32*
  %4652 = load i32, i32* %4651
  %4653 = zext i32 %4652 to i64
  store i64 %4653, i64* %RAX.i502, align 8
  store %struct.Memory* %loadMem_443af1, %struct.Memory** %MEMORY
  %loadMem_443af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4655 = getelementptr inbounds %struct.GPR, %struct.GPR* %4654, i32 0, i32 33
  %4656 = getelementptr inbounds %struct.Reg, %struct.Reg* %4655, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %4656 to i64*
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4658 = getelementptr inbounds %struct.GPR, %struct.GPR* %4657, i32 0, i32 1
  %4659 = getelementptr inbounds %struct.Reg, %struct.Reg* %4658, i32 0, i32 0
  %RAX.i500 = bitcast %union.anon* %4659 to i64*
  %4660 = load i64, i64* %RAX.i500
  %4661 = load i64, i64* %PC.i499
  %4662 = add i64 %4661, 3
  store i64 %4662, i64* %PC.i499
  %4663 = trunc i64 %4660 to i32
  %4664 = add i32 1, %4663
  %4665 = zext i32 %4664 to i64
  store i64 %4665, i64* %RAX.i500, align 8
  %4666 = icmp ult i32 %4664, %4663
  %4667 = icmp ult i32 %4664, 1
  %4668 = or i1 %4666, %4667
  %4669 = zext i1 %4668 to i8
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4669, i8* %4670, align 1
  %4671 = and i32 %4664, 255
  %4672 = call i32 @llvm.ctpop.i32(i32 %4671)
  %4673 = trunc i32 %4672 to i8
  %4674 = and i8 %4673, 1
  %4675 = xor i8 %4674, 1
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4675, i8* %4676, align 1
  %4677 = xor i64 1, %4660
  %4678 = trunc i64 %4677 to i32
  %4679 = xor i32 %4678, %4664
  %4680 = lshr i32 %4679, 4
  %4681 = trunc i32 %4680 to i8
  %4682 = and i8 %4681, 1
  %4683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4682, i8* %4683, align 1
  %4684 = icmp eq i32 %4664, 0
  %4685 = zext i1 %4684 to i8
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4685, i8* %4686, align 1
  %4687 = lshr i32 %4664, 31
  %4688 = trunc i32 %4687 to i8
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4688, i8* %4689, align 1
  %4690 = lshr i32 %4663, 31
  %4691 = xor i32 %4687, %4690
  %4692 = add i32 %4691, %4687
  %4693 = icmp eq i32 %4692, 2
  %4694 = zext i1 %4693 to i8
  %4695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4694, i8* %4695, align 1
  store %struct.Memory* %loadMem_443af4, %struct.Memory** %MEMORY
  %loadMem_443af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4697 = getelementptr inbounds %struct.GPR, %struct.GPR* %4696, i32 0, i32 33
  %4698 = getelementptr inbounds %struct.Reg, %struct.Reg* %4697, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %4698 to i64*
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4700 = getelementptr inbounds %struct.GPR, %struct.GPR* %4699, i32 0, i32 1
  %4701 = getelementptr inbounds %struct.Reg, %struct.Reg* %4700, i32 0, i32 0
  %EAX.i497 = bitcast %union.anon* %4701 to i32*
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4703 = getelementptr inbounds %struct.GPR, %struct.GPR* %4702, i32 0, i32 15
  %4704 = getelementptr inbounds %struct.Reg, %struct.Reg* %4703, i32 0, i32 0
  %RBP.i498 = bitcast %union.anon* %4704 to i64*
  %4705 = load i64, i64* %RBP.i498
  %4706 = sub i64 %4705, 48
  %4707 = load i32, i32* %EAX.i497
  %4708 = zext i32 %4707 to i64
  %4709 = load i64, i64* %PC.i496
  %4710 = add i64 %4709, 3
  store i64 %4710, i64* %PC.i496
  %4711 = inttoptr i64 %4706 to i32*
  store i32 %4707, i32* %4711
  store %struct.Memory* %loadMem_443af7, %struct.Memory** %MEMORY
  %loadMem_443afa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4713 = getelementptr inbounds %struct.GPR, %struct.GPR* %4712, i32 0, i32 33
  %4714 = getelementptr inbounds %struct.Reg, %struct.Reg* %4713, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %4714 to i64*
  %4715 = load i64, i64* %PC.i495
  %4716 = add i64 %4715, -80
  %4717 = load i64, i64* %PC.i495
  %4718 = add i64 %4717, 5
  store i64 %4718, i64* %PC.i495
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4716, i64* %4719, align 8
  store %struct.Memory* %loadMem_443afa, %struct.Memory** %MEMORY
  br label %block_.L_443aaa

block_.L_443aff:                                  ; preds = %block_.L_443ae7, %block_.L_443aaa
  %loadMem_443aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4721 = getelementptr inbounds %struct.GPR, %struct.GPR* %4720, i32 0, i32 33
  %4722 = getelementptr inbounds %struct.Reg, %struct.Reg* %4721, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %4722 to i64*
  %4723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4724 = getelementptr inbounds %struct.GPR, %struct.GPR* %4723, i32 0, i32 1
  %4725 = getelementptr inbounds %struct.Reg, %struct.Reg* %4724, i32 0, i32 0
  %RAX.i493 = bitcast %union.anon* %4725 to i64*
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4727 = getelementptr inbounds %struct.GPR, %struct.GPR* %4726, i32 0, i32 15
  %4728 = getelementptr inbounds %struct.Reg, %struct.Reg* %4727, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %4728 to i64*
  %4729 = load i64, i64* %RBP.i494
  %4730 = sub i64 %4729, 32
  %4731 = load i64, i64* %PC.i492
  %4732 = add i64 %4731, 4
  store i64 %4732, i64* %PC.i492
  %4733 = inttoptr i64 %4730 to i64*
  %4734 = load i64, i64* %4733
  store i64 %4734, i64* %RAX.i493, align 8
  store %struct.Memory* %loadMem_443aff, %struct.Memory** %MEMORY
  %loadMem_443b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4736 = getelementptr inbounds %struct.GPR, %struct.GPR* %4735, i32 0, i32 33
  %4737 = getelementptr inbounds %struct.Reg, %struct.Reg* %4736, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %4737 to i64*
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4739 = getelementptr inbounds %struct.GPR, %struct.GPR* %4738, i32 0, i32 5
  %4740 = getelementptr inbounds %struct.Reg, %struct.Reg* %4739, i32 0, i32 0
  %RCX.i490 = bitcast %union.anon* %4740 to i64*
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4742 = getelementptr inbounds %struct.GPR, %struct.GPR* %4741, i32 0, i32 15
  %4743 = getelementptr inbounds %struct.Reg, %struct.Reg* %4742, i32 0, i32 0
  %RBP.i491 = bitcast %union.anon* %4743 to i64*
  %4744 = load i64, i64* %RBP.i491
  %4745 = sub i64 %4744, 48
  %4746 = load i64, i64* %PC.i489
  %4747 = add i64 %4746, 4
  store i64 %4747, i64* %PC.i489
  %4748 = inttoptr i64 %4745 to i32*
  %4749 = load i32, i32* %4748
  %4750 = sext i32 %4749 to i64
  store i64 %4750, i64* %RCX.i490, align 8
  store %struct.Memory* %loadMem_443b03, %struct.Memory** %MEMORY
  %loadMem_443b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4752 = getelementptr inbounds %struct.GPR, %struct.GPR* %4751, i32 0, i32 33
  %4753 = getelementptr inbounds %struct.Reg, %struct.Reg* %4752, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %4753 to i64*
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4755 = getelementptr inbounds %struct.GPR, %struct.GPR* %4754, i32 0, i32 5
  %4756 = getelementptr inbounds %struct.Reg, %struct.Reg* %4755, i32 0, i32 0
  %RCX.i488 = bitcast %union.anon* %4756 to i64*
  %4757 = load i64, i64* %RCX.i488
  %4758 = load i64, i64* %PC.i487
  %4759 = add i64 %4758, 4
  store i64 %4759, i64* %PC.i487
  %4760 = shl i64 %4757, 4
  %4761 = icmp slt i64 %4760, 0
  %4762 = shl i64 %4760, 1
  store i64 %4762, i64* %RCX.i488, align 8
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4764 = zext i1 %4761 to i8
  store i8 %4764, i8* %4763, align 1
  %4765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4766 = trunc i64 %4762 to i32
  %4767 = and i32 %4766, 254
  %4768 = call i32 @llvm.ctpop.i32(i32 %4767)
  %4769 = trunc i32 %4768 to i8
  %4770 = and i8 %4769, 1
  %4771 = xor i8 %4770, 1
  store i8 %4771, i8* %4765, align 1
  %4772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4772, align 1
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4774 = icmp eq i64 %4762, 0
  %4775 = zext i1 %4774 to i8
  store i8 %4775, i8* %4773, align 1
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4777 = lshr i64 %4762, 63
  %4778 = trunc i64 %4777 to i8
  store i8 %4778, i8* %4776, align 1
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4779, align 1
  store %struct.Memory* %loadMem_443b07, %struct.Memory** %MEMORY
  %loadMem_443b0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4781 = getelementptr inbounds %struct.GPR, %struct.GPR* %4780, i32 0, i32 33
  %4782 = getelementptr inbounds %struct.Reg, %struct.Reg* %4781, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %4782 to i64*
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4784 = getelementptr inbounds %struct.GPR, %struct.GPR* %4783, i32 0, i32 1
  %4785 = getelementptr inbounds %struct.Reg, %struct.Reg* %4784, i32 0, i32 0
  %RAX.i485 = bitcast %union.anon* %4785 to i64*
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4787 = getelementptr inbounds %struct.GPR, %struct.GPR* %4786, i32 0, i32 5
  %4788 = getelementptr inbounds %struct.Reg, %struct.Reg* %4787, i32 0, i32 0
  %RCX.i486 = bitcast %union.anon* %4788 to i64*
  %4789 = load i64, i64* %RAX.i485
  %4790 = load i64, i64* %RCX.i486
  %4791 = load i64, i64* %PC.i484
  %4792 = add i64 %4791, 3
  store i64 %4792, i64* %PC.i484
  %4793 = add i64 %4790, %4789
  store i64 %4793, i64* %RAX.i485, align 8
  %4794 = icmp ult i64 %4793, %4789
  %4795 = icmp ult i64 %4793, %4790
  %4796 = or i1 %4794, %4795
  %4797 = zext i1 %4796 to i8
  %4798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4797, i8* %4798, align 1
  %4799 = trunc i64 %4793 to i32
  %4800 = and i32 %4799, 255
  %4801 = call i32 @llvm.ctpop.i32(i32 %4800)
  %4802 = trunc i32 %4801 to i8
  %4803 = and i8 %4802, 1
  %4804 = xor i8 %4803, 1
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4804, i8* %4805, align 1
  %4806 = xor i64 %4790, %4789
  %4807 = xor i64 %4806, %4793
  %4808 = lshr i64 %4807, 4
  %4809 = trunc i64 %4808 to i8
  %4810 = and i8 %4809, 1
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4810, i8* %4811, align 1
  %4812 = icmp eq i64 %4793, 0
  %4813 = zext i1 %4812 to i8
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4813, i8* %4814, align 1
  %4815 = lshr i64 %4793, 63
  %4816 = trunc i64 %4815 to i8
  %4817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4816, i8* %4817, align 1
  %4818 = lshr i64 %4789, 63
  %4819 = lshr i64 %4790, 63
  %4820 = xor i64 %4815, %4818
  %4821 = xor i64 %4815, %4819
  %4822 = add i64 %4820, %4821
  %4823 = icmp eq i64 %4822, 2
  %4824 = zext i1 %4823 to i8
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4824, i8* %4825, align 1
  store %struct.Memory* %loadMem_443b0b, %struct.Memory** %MEMORY
  %loadMem_443b0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4827 = getelementptr inbounds %struct.GPR, %struct.GPR* %4826, i32 0, i32 33
  %4828 = getelementptr inbounds %struct.Reg, %struct.Reg* %4827, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %4828 to i64*
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 1
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %RAX.i482 = bitcast %union.anon* %4831 to i64*
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4833 = getelementptr inbounds %struct.GPR, %struct.GPR* %4832, i32 0, i32 7
  %4834 = getelementptr inbounds %struct.Reg, %struct.Reg* %4833, i32 0, i32 0
  %RDX.i483 = bitcast %union.anon* %4834 to i64*
  %4835 = load i64, i64* %RAX.i482
  %4836 = load i64, i64* %PC.i481
  %4837 = add i64 %4836, 2
  store i64 %4837, i64* %PC.i481
  %4838 = inttoptr i64 %4835 to i32*
  %4839 = load i32, i32* %4838
  %4840 = zext i32 %4839 to i64
  store i64 %4840, i64* %RDX.i483, align 8
  store %struct.Memory* %loadMem_443b0e, %struct.Memory** %MEMORY
  %loadMem_443b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4842 = getelementptr inbounds %struct.GPR, %struct.GPR* %4841, i32 0, i32 33
  %4843 = getelementptr inbounds %struct.Reg, %struct.Reg* %4842, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %4843 to i64*
  %4844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4845 = getelementptr inbounds %struct.GPR, %struct.GPR* %4844, i32 0, i32 7
  %4846 = getelementptr inbounds %struct.Reg, %struct.Reg* %4845, i32 0, i32 0
  %EDX.i479 = bitcast %union.anon* %4846 to i32*
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4848 = getelementptr inbounds %struct.GPR, %struct.GPR* %4847, i32 0, i32 15
  %4849 = getelementptr inbounds %struct.Reg, %struct.Reg* %4848, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %4849 to i64*
  %4850 = load i32, i32* %EDX.i479
  %4851 = zext i32 %4850 to i64
  %4852 = load i64, i64* %RBP.i480
  %4853 = sub i64 %4852, 56
  %4854 = load i64, i64* %PC.i478
  %4855 = add i64 %4854, 3
  store i64 %4855, i64* %PC.i478
  %4856 = inttoptr i64 %4853 to i32*
  %4857 = load i32, i32* %4856
  %4858 = sub i32 %4850, %4857
  %4859 = icmp ult i32 %4850, %4857
  %4860 = zext i1 %4859 to i8
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4860, i8* %4861, align 1
  %4862 = and i32 %4858, 255
  %4863 = call i32 @llvm.ctpop.i32(i32 %4862)
  %4864 = trunc i32 %4863 to i8
  %4865 = and i8 %4864, 1
  %4866 = xor i8 %4865, 1
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4866, i8* %4867, align 1
  %4868 = xor i32 %4857, %4850
  %4869 = xor i32 %4868, %4858
  %4870 = lshr i32 %4869, 4
  %4871 = trunc i32 %4870 to i8
  %4872 = and i8 %4871, 1
  %4873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4872, i8* %4873, align 1
  %4874 = icmp eq i32 %4858, 0
  %4875 = zext i1 %4874 to i8
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4875, i8* %4876, align 1
  %4877 = lshr i32 %4858, 31
  %4878 = trunc i32 %4877 to i8
  %4879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4878, i8* %4879, align 1
  %4880 = lshr i32 %4850, 31
  %4881 = lshr i32 %4857, 31
  %4882 = xor i32 %4881, %4880
  %4883 = xor i32 %4877, %4880
  %4884 = add i32 %4883, %4882
  %4885 = icmp eq i32 %4884, 2
  %4886 = zext i1 %4885 to i8
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4886, i8* %4887, align 1
  store %struct.Memory* %loadMem_443b10, %struct.Memory** %MEMORY
  %loadMem_443b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4889 = getelementptr inbounds %struct.GPR, %struct.GPR* %4888, i32 0, i32 33
  %4890 = getelementptr inbounds %struct.Reg, %struct.Reg* %4889, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %4890 to i64*
  %4891 = load i64, i64* %PC.i477
  %4892 = add i64 %4891, 11
  %4893 = load i64, i64* %PC.i477
  %4894 = add i64 %4893, 6
  %4895 = load i64, i64* %PC.i477
  %4896 = add i64 %4895, 6
  store i64 %4896, i64* %PC.i477
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4898 = load i8, i8* %4897, align 1
  %4899 = icmp eq i8 %4898, 0
  %4900 = zext i1 %4899 to i8
  store i8 %4900, i8* %BRANCH_TAKEN, align 1
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4902 = select i1 %4899, i64 %4892, i64 %4894
  store i64 %4902, i64* %4901, align 8
  store %struct.Memory* %loadMem_443b13, %struct.Memory** %MEMORY
  %loadBr_443b13 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443b13 = icmp eq i8 %loadBr_443b13, 1
  br i1 %cmpBr_443b13, label %block_.L_443b1e, label %block_443b19

block_443b19:                                     ; preds = %block_.L_443aff
  %loadMem_443b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4904 = getelementptr inbounds %struct.GPR, %struct.GPR* %4903, i32 0, i32 33
  %4905 = getelementptr inbounds %struct.Reg, %struct.Reg* %4904, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %4905 to i64*
  %4906 = load i64, i64* %PC.i476
  %4907 = add i64 %4906, 805
  %4908 = load i64, i64* %PC.i476
  %4909 = add i64 %4908, 5
  store i64 %4909, i64* %PC.i476
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4907, i64* %4910, align 8
  store %struct.Memory* %loadMem_443b19, %struct.Memory** %MEMORY
  br label %block_.L_443e3e

block_.L_443b1e:                                  ; preds = %block_.L_443aff
  %loadMem_443b1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4912 = getelementptr inbounds %struct.GPR, %struct.GPR* %4911, i32 0, i32 33
  %4913 = getelementptr inbounds %struct.Reg, %struct.Reg* %4912, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %4913 to i64*
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4915 = getelementptr inbounds %struct.GPR, %struct.GPR* %4914, i32 0, i32 15
  %4916 = getelementptr inbounds %struct.Reg, %struct.Reg* %4915, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %4916 to i64*
  %4917 = load i64, i64* %RBP.i475
  %4918 = sub i64 %4917, 48
  %4919 = load i64, i64* %PC.i474
  %4920 = add i64 %4919, 4
  store i64 %4920, i64* %PC.i474
  %4921 = inttoptr i64 %4918 to i32*
  %4922 = load i32, i32* %4921
  %4923 = sub i32 %4922, 3
  %4924 = icmp ult i32 %4922, 3
  %4925 = zext i1 %4924 to i8
  %4926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4925, i8* %4926, align 1
  %4927 = and i32 %4923, 255
  %4928 = call i32 @llvm.ctpop.i32(i32 %4927)
  %4929 = trunc i32 %4928 to i8
  %4930 = and i8 %4929, 1
  %4931 = xor i8 %4930, 1
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4931, i8* %4932, align 1
  %4933 = xor i32 %4922, 3
  %4934 = xor i32 %4933, %4923
  %4935 = lshr i32 %4934, 4
  %4936 = trunc i32 %4935 to i8
  %4937 = and i8 %4936, 1
  %4938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4937, i8* %4938, align 1
  %4939 = icmp eq i32 %4923, 0
  %4940 = zext i1 %4939 to i8
  %4941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4940, i8* %4941, align 1
  %4942 = lshr i32 %4923, 31
  %4943 = trunc i32 %4942 to i8
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4943, i8* %4944, align 1
  %4945 = lshr i32 %4922, 31
  %4946 = xor i32 %4942, %4945
  %4947 = add i32 %4946, %4945
  %4948 = icmp eq i32 %4947, 2
  %4949 = zext i1 %4948 to i8
  %4950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4949, i8* %4950, align 1
  store %struct.Memory* %loadMem_443b1e, %struct.Memory** %MEMORY
  %loadMem_443b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4952 = getelementptr inbounds %struct.GPR, %struct.GPR* %4951, i32 0, i32 33
  %4953 = getelementptr inbounds %struct.Reg, %struct.Reg* %4952, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %4953 to i64*
  %4954 = load i64, i64* %PC.i473
  %4955 = add i64 %4954, 11
  %4956 = load i64, i64* %PC.i473
  %4957 = add i64 %4956, 6
  %4958 = load i64, i64* %PC.i473
  %4959 = add i64 %4958, 6
  store i64 %4959, i64* %PC.i473
  %4960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4961 = load i8, i8* %4960, align 1
  %4962 = icmp ne i8 %4961, 0
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4964 = load i8, i8* %4963, align 1
  %4965 = icmp ne i8 %4964, 0
  %4966 = xor i1 %4962, %4965
  %4967 = xor i1 %4966, true
  %4968 = zext i1 %4967 to i8
  store i8 %4968, i8* %BRANCH_TAKEN, align 1
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4970 = select i1 %4966, i64 %4957, i64 %4955
  store i64 %4970, i64* %4969, align 8
  store %struct.Memory* %loadMem_443b22, %struct.Memory** %MEMORY
  %loadBr_443b22 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443b22 = icmp eq i8 %loadBr_443b22, 1
  br i1 %cmpBr_443b22, label %block_.L_443b2d, label %block_443b28

block_443b28:                                     ; preds = %block_.L_443b1e
  %loadMem_443b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4972 = getelementptr inbounds %struct.GPR, %struct.GPR* %4971, i32 0, i32 33
  %4973 = getelementptr inbounds %struct.Reg, %struct.Reg* %4972, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %4973 to i64*
  %4974 = load i64, i64* %PC.i472
  %4975 = add i64 %4974, 45
  %4976 = load i64, i64* %PC.i472
  %4977 = add i64 %4976, 5
  store i64 %4977, i64* %PC.i472
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4975, i64* %4978, align 8
  store %struct.Memory* %loadMem_443b28, %struct.Memory** %MEMORY
  br label %block_.L_443b55

block_.L_443b2d:                                  ; preds = %block_.L_443b1e
  %loadMem_443b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4980 = getelementptr inbounds %struct.GPR, %struct.GPR* %4979, i32 0, i32 33
  %4981 = getelementptr inbounds %struct.Reg, %struct.Reg* %4980, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %4981 to i64*
  %4982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4983 = getelementptr inbounds %struct.GPR, %struct.GPR* %4982, i32 0, i32 11
  %4984 = getelementptr inbounds %struct.Reg, %struct.Reg* %4983, i32 0, i32 0
  %RDI.i471 = bitcast %union.anon* %4984 to i64*
  %4985 = load i64, i64* %PC.i470
  %4986 = add i64 %4985, 10
  store i64 %4986, i64* %PC.i470
  store i64 ptrtoint (%G__0x57dd2e_type* @G__0x57dd2e to i64), i64* %RDI.i471, align 8
  store %struct.Memory* %loadMem_443b2d, %struct.Memory** %MEMORY
  %loadMem_443b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4988 = getelementptr inbounds %struct.GPR, %struct.GPR* %4987, i32 0, i32 33
  %4989 = getelementptr inbounds %struct.Reg, %struct.Reg* %4988, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %4989 to i64*
  %4990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4991 = getelementptr inbounds %struct.GPR, %struct.GPR* %4990, i32 0, i32 9
  %4992 = getelementptr inbounds %struct.Reg, %struct.Reg* %4991, i32 0, i32 0
  %RSI.i469 = bitcast %union.anon* %4992 to i64*
  %4993 = load i64, i64* %PC.i468
  %4994 = add i64 %4993, 5
  store i64 %4994, i64* %PC.i468
  store i64 3105, i64* %RSI.i469, align 8
  store %struct.Memory* %loadMem_443b37, %struct.Memory** %MEMORY
  %loadMem_443b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4996 = getelementptr inbounds %struct.GPR, %struct.GPR* %4995, i32 0, i32 33
  %4997 = getelementptr inbounds %struct.Reg, %struct.Reg* %4996, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %4997 to i64*
  %4998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4999 = getelementptr inbounds %struct.GPR, %struct.GPR* %4998, i32 0, i32 7
  %5000 = getelementptr inbounds %struct.Reg, %struct.Reg* %4999, i32 0, i32 0
  %RDX.i467 = bitcast %union.anon* %5000 to i64*
  %5001 = load i64, i64* %PC.i466
  %5002 = add i64 %5001, 10
  store i64 %5002, i64* %PC.i466
  store i64 ptrtoint (%G__0x57e106_type* @G__0x57e106 to i64), i64* %RDX.i467, align 8
  store %struct.Memory* %loadMem_443b3c, %struct.Memory** %MEMORY
  %loadMem_443b46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5004 = getelementptr inbounds %struct.GPR, %struct.GPR* %5003, i32 0, i32 33
  %5005 = getelementptr inbounds %struct.Reg, %struct.Reg* %5004, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %5005 to i64*
  %5006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5007 = getelementptr inbounds %struct.GPR, %struct.GPR* %5006, i32 0, i32 1
  %5008 = getelementptr inbounds %struct.Reg, %struct.Reg* %5007, i32 0, i32 0
  %RAX.i465 = bitcast %union.anon* %5008 to i64*
  %5009 = load i64, i64* %PC.i464
  %5010 = add i64 %5009, 5
  store i64 %5010, i64* %PC.i464
  store i64 4294967295, i64* %RAX.i465, align 8
  store %struct.Memory* %loadMem_443b46, %struct.Memory** %MEMORY
  %loadMem_443b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5012 = getelementptr inbounds %struct.GPR, %struct.GPR* %5011, i32 0, i32 33
  %5013 = getelementptr inbounds %struct.Reg, %struct.Reg* %5012, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %5013 to i64*
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5015 = getelementptr inbounds %struct.GPR, %struct.GPR* %5014, i32 0, i32 1
  %5016 = getelementptr inbounds %struct.Reg, %struct.Reg* %5015, i32 0, i32 0
  %EAX.i462 = bitcast %union.anon* %5016 to i32*
  %5017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5018 = getelementptr inbounds %struct.GPR, %struct.GPR* %5017, i32 0, i32 5
  %5019 = getelementptr inbounds %struct.Reg, %struct.Reg* %5018, i32 0, i32 0
  %RCX.i463 = bitcast %union.anon* %5019 to i64*
  %5020 = load i32, i32* %EAX.i462
  %5021 = zext i32 %5020 to i64
  %5022 = load i64, i64* %PC.i461
  %5023 = add i64 %5022, 2
  store i64 %5023, i64* %PC.i461
  %5024 = and i64 %5021, 4294967295
  store i64 %5024, i64* %RCX.i463, align 8
  store %struct.Memory* %loadMem_443b4b, %struct.Memory** %MEMORY
  %loadMem_443b4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5026 = getelementptr inbounds %struct.GPR, %struct.GPR* %5025, i32 0, i32 33
  %5027 = getelementptr inbounds %struct.Reg, %struct.Reg* %5026, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %5027 to i64*
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5029 = getelementptr inbounds %struct.GPR, %struct.GPR* %5028, i32 0, i32 1
  %5030 = getelementptr inbounds %struct.Reg, %struct.Reg* %5029, i32 0, i32 0
  %EAX.i460 = bitcast %union.anon* %5030 to i32*
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5032 = getelementptr inbounds %struct.GPR, %struct.GPR* %5031, i32 0, i32 17
  %5033 = getelementptr inbounds %struct.Reg, %struct.Reg* %5032, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %5033 to i32*
  %5034 = bitcast i32* %R8D.i to i64*
  %5035 = load i32, i32* %EAX.i460
  %5036 = zext i32 %5035 to i64
  %5037 = load i64, i64* %PC.i459
  %5038 = add i64 %5037, 3
  store i64 %5038, i64* %PC.i459
  %5039 = and i64 %5036, 4294967295
  store i64 %5039, i64* %5034, align 8
  store %struct.Memory* %loadMem_443b4d, %struct.Memory** %MEMORY
  %loadMem1_443b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5041 = getelementptr inbounds %struct.GPR, %struct.GPR* %5040, i32 0, i32 33
  %5042 = getelementptr inbounds %struct.Reg, %struct.Reg* %5041, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %5042 to i64*
  %5043 = load i64, i64* %PC.i458
  %5044 = add i64 %5043, 58688
  %5045 = load i64, i64* %PC.i458
  %5046 = add i64 %5045, 5
  %5047 = load i64, i64* %PC.i458
  %5048 = add i64 %5047, 5
  store i64 %5048, i64* %PC.i458
  %5049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5050 = load i64, i64* %5049, align 8
  %5051 = add i64 %5050, -8
  %5052 = inttoptr i64 %5051 to i64*
  store i64 %5046, i64* %5052
  store i64 %5051, i64* %5049, align 8
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5044, i64* %5053, align 8
  store %struct.Memory* %loadMem1_443b50, %struct.Memory** %MEMORY
  %loadMem2_443b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_443b50 = load i64, i64* %3
  %call2_443b50 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_443b50, %struct.Memory* %loadMem2_443b50)
  store %struct.Memory* %call2_443b50, %struct.Memory** %MEMORY
  br label %block_.L_443b55

block_.L_443b55:                                  ; preds = %block_.L_443b2d, %block_443b28
  %loadMem_443b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5055 = getelementptr inbounds %struct.GPR, %struct.GPR* %5054, i32 0, i32 33
  %5056 = getelementptr inbounds %struct.Reg, %struct.Reg* %5055, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %5056 to i64*
  %5057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5058 = getelementptr inbounds %struct.GPR, %struct.GPR* %5057, i32 0, i32 11
  %5059 = getelementptr inbounds %struct.Reg, %struct.Reg* %5058, i32 0, i32 0
  %RDI.i456 = bitcast %union.anon* %5059 to i64*
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5061 = getelementptr inbounds %struct.GPR, %struct.GPR* %5060, i32 0, i32 15
  %5062 = getelementptr inbounds %struct.Reg, %struct.Reg* %5061, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %5062 to i64*
  %5063 = load i64, i64* %RBP.i457
  %5064 = sub i64 %5063, 56
  %5065 = load i64, i64* %PC.i455
  %5066 = add i64 %5065, 3
  store i64 %5066, i64* %PC.i455
  %5067 = inttoptr i64 %5064 to i32*
  %5068 = load i32, i32* %5067
  %5069 = zext i32 %5068 to i64
  store i64 %5069, i64* %RDI.i456, align 8
  store %struct.Memory* %loadMem_443b55, %struct.Memory** %MEMORY
  %loadMem_443b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5071 = getelementptr inbounds %struct.GPR, %struct.GPR* %5070, i32 0, i32 33
  %5072 = getelementptr inbounds %struct.Reg, %struct.Reg* %5071, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %5072 to i64*
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5074 = getelementptr inbounds %struct.GPR, %struct.GPR* %5073, i32 0, i32 9
  %5075 = getelementptr inbounds %struct.Reg, %struct.Reg* %5074, i32 0, i32 0
  %RSI.i453 = bitcast %union.anon* %5075 to i64*
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5077 = getelementptr inbounds %struct.GPR, %struct.GPR* %5076, i32 0, i32 15
  %5078 = getelementptr inbounds %struct.Reg, %struct.Reg* %5077, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %5078 to i64*
  %5079 = load i64, i64* %RBP.i454
  %5080 = sub i64 %5079, 20
  %5081 = load i64, i64* %PC.i452
  %5082 = add i64 %5081, 3
  store i64 %5082, i64* %PC.i452
  %5083 = inttoptr i64 %5080 to i32*
  %5084 = load i32, i32* %5083
  %5085 = zext i32 %5084 to i64
  store i64 %5085, i64* %RSI.i453, align 8
  store %struct.Memory* %loadMem_443b58, %struct.Memory** %MEMORY
  %loadMem_443b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5087 = getelementptr inbounds %struct.GPR, %struct.GPR* %5086, i32 0, i32 33
  %5088 = getelementptr inbounds %struct.Reg, %struct.Reg* %5087, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %5088 to i64*
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5090 = getelementptr inbounds %struct.GPR, %struct.GPR* %5089, i32 0, i32 7
  %5091 = getelementptr inbounds %struct.Reg, %struct.Reg* %5090, i32 0, i32 0
  %RDX.i450 = bitcast %union.anon* %5091 to i64*
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5093 = getelementptr inbounds %struct.GPR, %struct.GPR* %5092, i32 0, i32 15
  %5094 = getelementptr inbounds %struct.Reg, %struct.Reg* %5093, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %5094 to i64*
  %5095 = load i64, i64* %RBP.i451
  %5096 = sub i64 %5095, 64
  %5097 = load i64, i64* %PC.i449
  %5098 = add i64 %5097, 4
  store i64 %5098, i64* %PC.i449
  %5099 = inttoptr i64 %5096 to i64*
  %5100 = load i64, i64* %5099
  store i64 %5100, i64* %RDX.i450, align 8
  store %struct.Memory* %loadMem_443b5b, %struct.Memory** %MEMORY
  %loadMem_443b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5102 = getelementptr inbounds %struct.GPR, %struct.GPR* %5101, i32 0, i32 33
  %5103 = getelementptr inbounds %struct.Reg, %struct.Reg* %5102, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %5103 to i64*
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5105 = getelementptr inbounds %struct.GPR, %struct.GPR* %5104, i32 0, i32 5
  %5106 = getelementptr inbounds %struct.Reg, %struct.Reg* %5105, i32 0, i32 0
  %RCX.i447 = bitcast %union.anon* %5106 to i64*
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5108 = getelementptr inbounds %struct.GPR, %struct.GPR* %5107, i32 0, i32 15
  %5109 = getelementptr inbounds %struct.Reg, %struct.Reg* %5108, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %5109 to i64*
  %5110 = load i64, i64* %RBP.i448
  %5111 = sub i64 %5110, 68
  %5112 = load i64, i64* %PC.i446
  %5113 = add i64 %5112, 3
  store i64 %5113, i64* %PC.i446
  %5114 = inttoptr i64 %5111 to i32*
  %5115 = load i32, i32* %5114
  %5116 = zext i32 %5115 to i64
  store i64 %5116, i64* %RCX.i447, align 8
  store %struct.Memory* %loadMem_443b5f, %struct.Memory** %MEMORY
  %loadMem1_443b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5118 = getelementptr inbounds %struct.GPR, %struct.GPR* %5117, i32 0, i32 33
  %5119 = getelementptr inbounds %struct.Reg, %struct.Reg* %5118, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %5119 to i64*
  %5120 = load i64, i64* %PC.i445
  %5121 = add i64 %5120, 4990
  %5122 = load i64, i64* %PC.i445
  %5123 = add i64 %5122, 5
  %5124 = load i64, i64* %PC.i445
  %5125 = add i64 %5124, 5
  store i64 %5125, i64* %PC.i445
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5127 = load i64, i64* %5126, align 8
  %5128 = add i64 %5127, -8
  %5129 = inttoptr i64 %5128 to i64*
  store i64 %5123, i64* %5129
  store i64 %5128, i64* %5126, align 8
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5121, i64* %5130, align 8
  store %struct.Memory* %loadMem1_443b62, %struct.Memory** %MEMORY
  %loadMem2_443b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_443b62 = load i64, i64* %3
  %call2_443b62 = call %struct.Memory* @sub_444ee0.check_pattern_hard(%struct.State* %0, i64 %loadPC_443b62, %struct.Memory* %loadMem2_443b62)
  store %struct.Memory* %call2_443b62, %struct.Memory** %MEMORY
  %loadMem_443b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5132 = getelementptr inbounds %struct.GPR, %struct.GPR* %5131, i32 0, i32 33
  %5133 = getelementptr inbounds %struct.Reg, %struct.Reg* %5132, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %5133 to i64*
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5135 = getelementptr inbounds %struct.GPR, %struct.GPR* %5134, i32 0, i32 1
  %5136 = getelementptr inbounds %struct.Reg, %struct.Reg* %5135, i32 0, i32 0
  %EAX.i444 = bitcast %union.anon* %5136 to i32*
  %5137 = load i32, i32* %EAX.i444
  %5138 = zext i32 %5137 to i64
  %5139 = load i64, i64* %PC.i443
  %5140 = add i64 %5139, 3
  store i64 %5140, i64* %PC.i443
  %5141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5141, align 1
  %5142 = and i32 %5137, 255
  %5143 = call i32 @llvm.ctpop.i32(i32 %5142)
  %5144 = trunc i32 %5143 to i8
  %5145 = and i8 %5144, 1
  %5146 = xor i8 %5145, 1
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5146, i8* %5147, align 1
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5148, align 1
  %5149 = icmp eq i32 %5137, 0
  %5150 = zext i1 %5149 to i8
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5150, i8* %5151, align 1
  %5152 = lshr i32 %5137, 31
  %5153 = trunc i32 %5152 to i8
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5153, i8* %5154, align 1
  %5155 = lshr i32 %5137, 31
  %5156 = xor i32 %5152, %5155
  %5157 = add i32 %5156, %5155
  %5158 = icmp eq i32 %5157, 2
  %5159 = zext i1 %5158 to i8
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5159, i8* %5160, align 1
  store %struct.Memory* %loadMem_443b67, %struct.Memory** %MEMORY
  %loadMem_443b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5162 = getelementptr inbounds %struct.GPR, %struct.GPR* %5161, i32 0, i32 33
  %5163 = getelementptr inbounds %struct.Reg, %struct.Reg* %5162, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %5163 to i64*
  %5164 = load i64, i64* %PC.i442
  %5165 = add i64 %5164, 719
  %5166 = load i64, i64* %PC.i442
  %5167 = add i64 %5166, 6
  %5168 = load i64, i64* %PC.i442
  %5169 = add i64 %5168, 6
  store i64 %5169, i64* %PC.i442
  %5170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5171 = load i8, i8* %5170, align 1
  store i8 %5171, i8* %BRANCH_TAKEN, align 1
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5173 = icmp ne i8 %5171, 0
  %5174 = select i1 %5173, i64 %5165, i64 %5167
  store i64 %5174, i64* %5172, align 8
  store %struct.Memory* %loadMem_443b6a, %struct.Memory** %MEMORY
  %loadBr_443b6a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443b6a = icmp eq i8 %loadBr_443b6a, 1
  br i1 %cmpBr_443b6a, label %block_.L_443e39, label %block_443b70

block_443b70:                                     ; preds = %block_.L_443b55
  %loadMem_443b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5176 = getelementptr inbounds %struct.GPR, %struct.GPR* %5175, i32 0, i32 33
  %5177 = getelementptr inbounds %struct.Reg, %struct.Reg* %5176, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %5177 to i64*
  %5178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5179 = getelementptr inbounds %struct.GPR, %struct.GPR* %5178, i32 0, i32 1
  %5180 = getelementptr inbounds %struct.Reg, %struct.Reg* %5179, i32 0, i32 0
  %RAX.i440 = bitcast %union.anon* %5180 to i64*
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5182 = getelementptr inbounds %struct.GPR, %struct.GPR* %5181, i32 0, i32 15
  %5183 = getelementptr inbounds %struct.Reg, %struct.Reg* %5182, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %5183 to i64*
  %5184 = load i64, i64* %RBP.i441
  %5185 = sub i64 %5184, 56
  %5186 = load i64, i64* %PC.i439
  %5187 = add i64 %5186, 3
  store i64 %5187, i64* %PC.i439
  %5188 = inttoptr i64 %5185 to i32*
  %5189 = load i32, i32* %5188
  %5190 = zext i32 %5189 to i64
  store i64 %5190, i64* %RAX.i440, align 8
  store %struct.Memory* %loadMem_443b70, %struct.Memory** %MEMORY
  %loadMem_443b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5192 = getelementptr inbounds %struct.GPR, %struct.GPR* %5191, i32 0, i32 33
  %5193 = getelementptr inbounds %struct.Reg, %struct.Reg* %5192, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %5193 to i64*
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5195 = getelementptr inbounds %struct.GPR, %struct.GPR* %5194, i32 0, i32 5
  %5196 = getelementptr inbounds %struct.Reg, %struct.Reg* %5195, i32 0, i32 0
  %RCX.i437 = bitcast %union.anon* %5196 to i64*
  %5197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5198 = getelementptr inbounds %struct.GPR, %struct.GPR* %5197, i32 0, i32 15
  %5199 = getelementptr inbounds %struct.Reg, %struct.Reg* %5198, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %5199 to i64*
  %5200 = load i64, i64* %RBP.i438
  %5201 = sub i64 %5200, 32
  %5202 = load i64, i64* %PC.i436
  %5203 = add i64 %5202, 4
  store i64 %5203, i64* %PC.i436
  %5204 = inttoptr i64 %5201 to i64*
  %5205 = load i64, i64* %5204
  store i64 %5205, i64* %RCX.i437, align 8
  store %struct.Memory* %loadMem_443b73, %struct.Memory** %MEMORY
  %loadMem_443b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5207 = getelementptr inbounds %struct.GPR, %struct.GPR* %5206, i32 0, i32 33
  %5208 = getelementptr inbounds %struct.Reg, %struct.Reg* %5207, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %5208 to i64*
  %5209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5210 = getelementptr inbounds %struct.GPR, %struct.GPR* %5209, i32 0, i32 7
  %5211 = getelementptr inbounds %struct.Reg, %struct.Reg* %5210, i32 0, i32 0
  %RDX.i434 = bitcast %union.anon* %5211 to i64*
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5213 = getelementptr inbounds %struct.GPR, %struct.GPR* %5212, i32 0, i32 15
  %5214 = getelementptr inbounds %struct.Reg, %struct.Reg* %5213, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %5214 to i64*
  %5215 = load i64, i64* %RBP.i435
  %5216 = sub i64 %5215, 48
  %5217 = load i64, i64* %PC.i433
  %5218 = add i64 %5217, 4
  store i64 %5218, i64* %PC.i433
  %5219 = inttoptr i64 %5216 to i32*
  %5220 = load i32, i32* %5219
  %5221 = sext i32 %5220 to i64
  store i64 %5221, i64* %RDX.i434, align 8
  store %struct.Memory* %loadMem_443b77, %struct.Memory** %MEMORY
  %loadMem_443b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5223 = getelementptr inbounds %struct.GPR, %struct.GPR* %5222, i32 0, i32 33
  %5224 = getelementptr inbounds %struct.Reg, %struct.Reg* %5223, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %5224 to i64*
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5226 = getelementptr inbounds %struct.GPR, %struct.GPR* %5225, i32 0, i32 7
  %5227 = getelementptr inbounds %struct.Reg, %struct.Reg* %5226, i32 0, i32 0
  %RDX.i432 = bitcast %union.anon* %5227 to i64*
  %5228 = load i64, i64* %RDX.i432
  %5229 = load i64, i64* %PC.i431
  %5230 = add i64 %5229, 4
  store i64 %5230, i64* %PC.i431
  %5231 = shl i64 %5228, 4
  %5232 = icmp slt i64 %5231, 0
  %5233 = shl i64 %5231, 1
  store i64 %5233, i64* %RDX.i432, align 8
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5235 = zext i1 %5232 to i8
  store i8 %5235, i8* %5234, align 1
  %5236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5237 = trunc i64 %5233 to i32
  %5238 = and i32 %5237, 254
  %5239 = call i32 @llvm.ctpop.i32(i32 %5238)
  %5240 = trunc i32 %5239 to i8
  %5241 = and i8 %5240, 1
  %5242 = xor i8 %5241, 1
  store i8 %5242, i8* %5236, align 1
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5243, align 1
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5245 = icmp eq i64 %5233, 0
  %5246 = zext i1 %5245 to i8
  store i8 %5246, i8* %5244, align 1
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5248 = lshr i64 %5233, 63
  %5249 = trunc i64 %5248 to i8
  store i8 %5249, i8* %5247, align 1
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5250, align 1
  store %struct.Memory* %loadMem_443b7b, %struct.Memory** %MEMORY
  %loadMem_443b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5252 = getelementptr inbounds %struct.GPR, %struct.GPR* %5251, i32 0, i32 33
  %5253 = getelementptr inbounds %struct.Reg, %struct.Reg* %5252, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %5253 to i64*
  %5254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5255 = getelementptr inbounds %struct.GPR, %struct.GPR* %5254, i32 0, i32 5
  %5256 = getelementptr inbounds %struct.Reg, %struct.Reg* %5255, i32 0, i32 0
  %RCX.i429 = bitcast %union.anon* %5256 to i64*
  %5257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5258 = getelementptr inbounds %struct.GPR, %struct.GPR* %5257, i32 0, i32 7
  %5259 = getelementptr inbounds %struct.Reg, %struct.Reg* %5258, i32 0, i32 0
  %RDX.i430 = bitcast %union.anon* %5259 to i64*
  %5260 = load i64, i64* %RCX.i429
  %5261 = load i64, i64* %RDX.i430
  %5262 = load i64, i64* %PC.i428
  %5263 = add i64 %5262, 3
  store i64 %5263, i64* %PC.i428
  %5264 = add i64 %5261, %5260
  store i64 %5264, i64* %RCX.i429, align 8
  %5265 = icmp ult i64 %5264, %5260
  %5266 = icmp ult i64 %5264, %5261
  %5267 = or i1 %5265, %5266
  %5268 = zext i1 %5267 to i8
  %5269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5268, i8* %5269, align 1
  %5270 = trunc i64 %5264 to i32
  %5271 = and i32 %5270, 255
  %5272 = call i32 @llvm.ctpop.i32(i32 %5271)
  %5273 = trunc i32 %5272 to i8
  %5274 = and i8 %5273, 1
  %5275 = xor i8 %5274, 1
  %5276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5275, i8* %5276, align 1
  %5277 = xor i64 %5261, %5260
  %5278 = xor i64 %5277, %5264
  %5279 = lshr i64 %5278, 4
  %5280 = trunc i64 %5279 to i8
  %5281 = and i8 %5280, 1
  %5282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5281, i8* %5282, align 1
  %5283 = icmp eq i64 %5264, 0
  %5284 = zext i1 %5283 to i8
  %5285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5284, i8* %5285, align 1
  %5286 = lshr i64 %5264, 63
  %5287 = trunc i64 %5286 to i8
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5287, i8* %5288, align 1
  %5289 = lshr i64 %5260, 63
  %5290 = lshr i64 %5261, 63
  %5291 = xor i64 %5286, %5289
  %5292 = xor i64 %5286, %5290
  %5293 = add i64 %5291, %5292
  %5294 = icmp eq i64 %5293, 2
  %5295 = zext i1 %5294 to i8
  %5296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5295, i8* %5296, align 1
  store %struct.Memory* %loadMem_443b7f, %struct.Memory** %MEMORY
  %loadMem_443b82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5298 = getelementptr inbounds %struct.GPR, %struct.GPR* %5297, i32 0, i32 33
  %5299 = getelementptr inbounds %struct.Reg, %struct.Reg* %5298, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %5299 to i64*
  %5300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5301 = getelementptr inbounds %struct.GPR, %struct.GPR* %5300, i32 0, i32 1
  %5302 = getelementptr inbounds %struct.Reg, %struct.Reg* %5301, i32 0, i32 0
  %EAX.i426 = bitcast %union.anon* %5302 to i32*
  %5303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5304 = getelementptr inbounds %struct.GPR, %struct.GPR* %5303, i32 0, i32 5
  %5305 = getelementptr inbounds %struct.Reg, %struct.Reg* %5304, i32 0, i32 0
  %RCX.i427 = bitcast %union.anon* %5305 to i64*
  %5306 = load i64, i64* %RCX.i427
  %5307 = load i32, i32* %EAX.i426
  %5308 = zext i32 %5307 to i64
  %5309 = load i64, i64* %PC.i425
  %5310 = add i64 %5309, 2
  store i64 %5310, i64* %PC.i425
  %5311 = inttoptr i64 %5306 to i32*
  store i32 %5307, i32* %5311
  store %struct.Memory* %loadMem_443b82, %struct.Memory** %MEMORY
  %loadMem_443b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5313 = getelementptr inbounds %struct.GPR, %struct.GPR* %5312, i32 0, i32 33
  %5314 = getelementptr inbounds %struct.Reg, %struct.Reg* %5313, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %5314 to i64*
  %5315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5316 = getelementptr inbounds %struct.GPR, %struct.GPR* %5315, i32 0, i32 1
  %5317 = getelementptr inbounds %struct.Reg, %struct.Reg* %5316, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %5317 to i64*
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5319 = getelementptr inbounds %struct.GPR, %struct.GPR* %5318, i32 0, i32 15
  %5320 = getelementptr inbounds %struct.Reg, %struct.Reg* %5319, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %5320 to i64*
  %5321 = load i64, i64* %RBP.i424
  %5322 = sub i64 %5321, 96
  %5323 = load i64, i64* %PC.i422
  %5324 = add i64 %5323, 5
  store i64 %5324, i64* %PC.i422
  %5325 = inttoptr i64 %5322 to float*
  %5326 = load float, float* %5325
  %5327 = call float @llvm.trunc.f32(float %5326)
  %5328 = call float @llvm.fabs.f32(float %5327)
  %5329 = fcmp ogt float %5328, 0x41E0000000000000
  %5330 = fptosi float %5327 to i32
  %5331 = zext i32 %5330 to i64
  %5332 = select i1 %5329, i64 2147483648, i64 %5331
  store i64 %5332, i64* %RAX.i423, align 8
  store %struct.Memory* %loadMem_443b84, %struct.Memory** %MEMORY
  %loadMem_443b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5334 = getelementptr inbounds %struct.GPR, %struct.GPR* %5333, i32 0, i32 33
  %5335 = getelementptr inbounds %struct.Reg, %struct.Reg* %5334, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %5335 to i64*
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5337 = getelementptr inbounds %struct.GPR, %struct.GPR* %5336, i32 0, i32 5
  %5338 = getelementptr inbounds %struct.Reg, %struct.Reg* %5337, i32 0, i32 0
  %RCX.i420 = bitcast %union.anon* %5338 to i64*
  %5339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5340 = getelementptr inbounds %struct.GPR, %struct.GPR* %5339, i32 0, i32 15
  %5341 = getelementptr inbounds %struct.Reg, %struct.Reg* %5340, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %5341 to i64*
  %5342 = load i64, i64* %RBP.i421
  %5343 = sub i64 %5342, 32
  %5344 = load i64, i64* %PC.i419
  %5345 = add i64 %5344, 4
  store i64 %5345, i64* %PC.i419
  %5346 = inttoptr i64 %5343 to i64*
  %5347 = load i64, i64* %5346
  store i64 %5347, i64* %RCX.i420, align 8
  store %struct.Memory* %loadMem_443b89, %struct.Memory** %MEMORY
  %loadMem_443b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5349 = getelementptr inbounds %struct.GPR, %struct.GPR* %5348, i32 0, i32 33
  %5350 = getelementptr inbounds %struct.Reg, %struct.Reg* %5349, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %5350 to i64*
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5352 = getelementptr inbounds %struct.GPR, %struct.GPR* %5351, i32 0, i32 7
  %5353 = getelementptr inbounds %struct.Reg, %struct.Reg* %5352, i32 0, i32 0
  %RDX.i417 = bitcast %union.anon* %5353 to i64*
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5355 = getelementptr inbounds %struct.GPR, %struct.GPR* %5354, i32 0, i32 15
  %5356 = getelementptr inbounds %struct.Reg, %struct.Reg* %5355, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %5356 to i64*
  %5357 = load i64, i64* %RBP.i418
  %5358 = sub i64 %5357, 48
  %5359 = load i64, i64* %PC.i416
  %5360 = add i64 %5359, 4
  store i64 %5360, i64* %PC.i416
  %5361 = inttoptr i64 %5358 to i32*
  %5362 = load i32, i32* %5361
  %5363 = sext i32 %5362 to i64
  store i64 %5363, i64* %RDX.i417, align 8
  store %struct.Memory* %loadMem_443b8d, %struct.Memory** %MEMORY
  %loadMem_443b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5365 = getelementptr inbounds %struct.GPR, %struct.GPR* %5364, i32 0, i32 33
  %5366 = getelementptr inbounds %struct.Reg, %struct.Reg* %5365, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %5366 to i64*
  %5367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5368 = getelementptr inbounds %struct.GPR, %struct.GPR* %5367, i32 0, i32 7
  %5369 = getelementptr inbounds %struct.Reg, %struct.Reg* %5368, i32 0, i32 0
  %RDX.i415 = bitcast %union.anon* %5369 to i64*
  %5370 = load i64, i64* %RDX.i415
  %5371 = load i64, i64* %PC.i414
  %5372 = add i64 %5371, 4
  store i64 %5372, i64* %PC.i414
  %5373 = shl i64 %5370, 4
  %5374 = icmp slt i64 %5373, 0
  %5375 = shl i64 %5373, 1
  store i64 %5375, i64* %RDX.i415, align 8
  %5376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5377 = zext i1 %5374 to i8
  store i8 %5377, i8* %5376, align 1
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5379 = trunc i64 %5375 to i32
  %5380 = and i32 %5379, 254
  %5381 = call i32 @llvm.ctpop.i32(i32 %5380)
  %5382 = trunc i32 %5381 to i8
  %5383 = and i8 %5382, 1
  %5384 = xor i8 %5383, 1
  store i8 %5384, i8* %5378, align 1
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5385, align 1
  %5386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5387 = icmp eq i64 %5375, 0
  %5388 = zext i1 %5387 to i8
  store i8 %5388, i8* %5386, align 1
  %5389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5390 = lshr i64 %5375, 63
  %5391 = trunc i64 %5390 to i8
  store i8 %5391, i8* %5389, align 1
  %5392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5392, align 1
  store %struct.Memory* %loadMem_443b91, %struct.Memory** %MEMORY
  %loadMem_443b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5394 = getelementptr inbounds %struct.GPR, %struct.GPR* %5393, i32 0, i32 33
  %5395 = getelementptr inbounds %struct.Reg, %struct.Reg* %5394, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %5395 to i64*
  %5396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5397 = getelementptr inbounds %struct.GPR, %struct.GPR* %5396, i32 0, i32 5
  %5398 = getelementptr inbounds %struct.Reg, %struct.Reg* %5397, i32 0, i32 0
  %RCX.i412 = bitcast %union.anon* %5398 to i64*
  %5399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5400 = getelementptr inbounds %struct.GPR, %struct.GPR* %5399, i32 0, i32 7
  %5401 = getelementptr inbounds %struct.Reg, %struct.Reg* %5400, i32 0, i32 0
  %RDX.i413 = bitcast %union.anon* %5401 to i64*
  %5402 = load i64, i64* %RCX.i412
  %5403 = load i64, i64* %RDX.i413
  %5404 = load i64, i64* %PC.i411
  %5405 = add i64 %5404, 3
  store i64 %5405, i64* %PC.i411
  %5406 = add i64 %5403, %5402
  store i64 %5406, i64* %RCX.i412, align 8
  %5407 = icmp ult i64 %5406, %5402
  %5408 = icmp ult i64 %5406, %5403
  %5409 = or i1 %5407, %5408
  %5410 = zext i1 %5409 to i8
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5410, i8* %5411, align 1
  %5412 = trunc i64 %5406 to i32
  %5413 = and i32 %5412, 255
  %5414 = call i32 @llvm.ctpop.i32(i32 %5413)
  %5415 = trunc i32 %5414 to i8
  %5416 = and i8 %5415, 1
  %5417 = xor i8 %5416, 1
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5417, i8* %5418, align 1
  %5419 = xor i64 %5403, %5402
  %5420 = xor i64 %5419, %5406
  %5421 = lshr i64 %5420, 4
  %5422 = trunc i64 %5421 to i8
  %5423 = and i8 %5422, 1
  %5424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5423, i8* %5424, align 1
  %5425 = icmp eq i64 %5406, 0
  %5426 = zext i1 %5425 to i8
  %5427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5426, i8* %5427, align 1
  %5428 = lshr i64 %5406, 63
  %5429 = trunc i64 %5428 to i8
  %5430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5429, i8* %5430, align 1
  %5431 = lshr i64 %5402, 63
  %5432 = lshr i64 %5403, 63
  %5433 = xor i64 %5428, %5431
  %5434 = xor i64 %5428, %5432
  %5435 = add i64 %5433, %5434
  %5436 = icmp eq i64 %5435, 2
  %5437 = zext i1 %5436 to i8
  %5438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5437, i8* %5438, align 1
  store %struct.Memory* %loadMem_443b95, %struct.Memory** %MEMORY
  %loadMem_443b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5440 = getelementptr inbounds %struct.GPR, %struct.GPR* %5439, i32 0, i32 33
  %5441 = getelementptr inbounds %struct.Reg, %struct.Reg* %5440, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %5441 to i64*
  %5442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5443 = getelementptr inbounds %struct.GPR, %struct.GPR* %5442, i32 0, i32 1
  %5444 = getelementptr inbounds %struct.Reg, %struct.Reg* %5443, i32 0, i32 0
  %EAX.i409 = bitcast %union.anon* %5444 to i32*
  %5445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5446 = getelementptr inbounds %struct.GPR, %struct.GPR* %5445, i32 0, i32 5
  %5447 = getelementptr inbounds %struct.Reg, %struct.Reg* %5446, i32 0, i32 0
  %RCX.i410 = bitcast %union.anon* %5447 to i64*
  %5448 = load i64, i64* %RCX.i410
  %5449 = add i64 %5448, 4
  %5450 = load i32, i32* %EAX.i409
  %5451 = zext i32 %5450 to i64
  %5452 = load i64, i64* %PC.i408
  %5453 = add i64 %5452, 3
  store i64 %5453, i64* %PC.i408
  %5454 = inttoptr i64 %5449 to i32*
  store i32 %5450, i32* %5454
  store %struct.Memory* %loadMem_443b98, %struct.Memory** %MEMORY
  %loadMem_443b9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5456 = getelementptr inbounds %struct.GPR, %struct.GPR* %5455, i32 0, i32 33
  %5457 = getelementptr inbounds %struct.Reg, %struct.Reg* %5456, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %5457 to i64*
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5459 = getelementptr inbounds %struct.GPR, %struct.GPR* %5458, i32 0, i32 5
  %5460 = getelementptr inbounds %struct.Reg, %struct.Reg* %5459, i32 0, i32 0
  %RCX.i406 = bitcast %union.anon* %5460 to i64*
  %5461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5462 = getelementptr inbounds %struct.GPR, %struct.GPR* %5461, i32 0, i32 15
  %5463 = getelementptr inbounds %struct.Reg, %struct.Reg* %5462, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %5463 to i64*
  %5464 = load i64, i64* %RBP.i407
  %5465 = sub i64 %5464, 64
  %5466 = load i64, i64* %PC.i405
  %5467 = add i64 %5466, 4
  store i64 %5467, i64* %PC.i405
  %5468 = inttoptr i64 %5465 to i64*
  %5469 = load i64, i64* %5468
  store i64 %5469, i64* %RCX.i406, align 8
  store %struct.Memory* %loadMem_443b9b, %struct.Memory** %MEMORY
  %loadMem_443b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5471 = getelementptr inbounds %struct.GPR, %struct.GPR* %5470, i32 0, i32 33
  %5472 = getelementptr inbounds %struct.Reg, %struct.Reg* %5471, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %5472 to i64*
  %5473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5474 = getelementptr inbounds %struct.GPR, %struct.GPR* %5473, i32 0, i32 5
  %5475 = getelementptr inbounds %struct.Reg, %struct.Reg* %5474, i32 0, i32 0
  %RCX.i404 = bitcast %union.anon* %5475 to i64*
  %5476 = load i64, i64* %RCX.i404
  %5477 = add i64 %5476, 16
  %5478 = load i64, i64* %PC.i403
  %5479 = add i64 %5478, 4
  store i64 %5479, i64* %PC.i403
  %5480 = inttoptr i64 %5477 to i64*
  %5481 = load i64, i64* %5480
  store i64 %5481, i64* %RCX.i404, align 8
  store %struct.Memory* %loadMem_443b9f, %struct.Memory** %MEMORY
  %loadMem_443ba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5483 = getelementptr inbounds %struct.GPR, %struct.GPR* %5482, i32 0, i32 33
  %5484 = getelementptr inbounds %struct.Reg, %struct.Reg* %5483, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %5484 to i64*
  %5485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5486 = getelementptr inbounds %struct.GPR, %struct.GPR* %5485, i32 0, i32 7
  %5487 = getelementptr inbounds %struct.Reg, %struct.Reg* %5486, i32 0, i32 0
  %RDX.i401 = bitcast %union.anon* %5487 to i64*
  %5488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5489 = getelementptr inbounds %struct.GPR, %struct.GPR* %5488, i32 0, i32 15
  %5490 = getelementptr inbounds %struct.Reg, %struct.Reg* %5489, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %5490 to i64*
  %5491 = load i64, i64* %RBP.i402
  %5492 = sub i64 %5491, 32
  %5493 = load i64, i64* %PC.i400
  %5494 = add i64 %5493, 4
  store i64 %5494, i64* %PC.i400
  %5495 = inttoptr i64 %5492 to i64*
  %5496 = load i64, i64* %5495
  store i64 %5496, i64* %RDX.i401, align 8
  store %struct.Memory* %loadMem_443ba3, %struct.Memory** %MEMORY
  %loadMem_443ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5498 = getelementptr inbounds %struct.GPR, %struct.GPR* %5497, i32 0, i32 33
  %5499 = getelementptr inbounds %struct.Reg, %struct.Reg* %5498, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %5499 to i64*
  %5500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5501 = getelementptr inbounds %struct.GPR, %struct.GPR* %5500, i32 0, i32 9
  %5502 = getelementptr inbounds %struct.Reg, %struct.Reg* %5501, i32 0, i32 0
  %RSI.i398 = bitcast %union.anon* %5502 to i64*
  %5503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5504 = getelementptr inbounds %struct.GPR, %struct.GPR* %5503, i32 0, i32 15
  %5505 = getelementptr inbounds %struct.Reg, %struct.Reg* %5504, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %5505 to i64*
  %5506 = load i64, i64* %RBP.i399
  %5507 = sub i64 %5506, 48
  %5508 = load i64, i64* %PC.i397
  %5509 = add i64 %5508, 4
  store i64 %5509, i64* %PC.i397
  %5510 = inttoptr i64 %5507 to i32*
  %5511 = load i32, i32* %5510
  %5512 = sext i32 %5511 to i64
  store i64 %5512, i64* %RSI.i398, align 8
  store %struct.Memory* %loadMem_443ba7, %struct.Memory** %MEMORY
  %loadMem_443bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %5513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5514 = getelementptr inbounds %struct.GPR, %struct.GPR* %5513, i32 0, i32 33
  %5515 = getelementptr inbounds %struct.Reg, %struct.Reg* %5514, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %5515 to i64*
  %5516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5517 = getelementptr inbounds %struct.GPR, %struct.GPR* %5516, i32 0, i32 9
  %5518 = getelementptr inbounds %struct.Reg, %struct.Reg* %5517, i32 0, i32 0
  %RSI.i396 = bitcast %union.anon* %5518 to i64*
  %5519 = load i64, i64* %RSI.i396
  %5520 = load i64, i64* %PC.i395
  %5521 = add i64 %5520, 4
  store i64 %5521, i64* %PC.i395
  %5522 = shl i64 %5519, 4
  %5523 = icmp slt i64 %5522, 0
  %5524 = shl i64 %5522, 1
  store i64 %5524, i64* %RSI.i396, align 8
  %5525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5526 = zext i1 %5523 to i8
  store i8 %5526, i8* %5525, align 1
  %5527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5528 = trunc i64 %5524 to i32
  %5529 = and i32 %5528, 254
  %5530 = call i32 @llvm.ctpop.i32(i32 %5529)
  %5531 = trunc i32 %5530 to i8
  %5532 = and i8 %5531, 1
  %5533 = xor i8 %5532, 1
  store i8 %5533, i8* %5527, align 1
  %5534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5534, align 1
  %5535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5536 = icmp eq i64 %5524, 0
  %5537 = zext i1 %5536 to i8
  store i8 %5537, i8* %5535, align 1
  %5538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5539 = lshr i64 %5524, 63
  %5540 = trunc i64 %5539 to i8
  store i8 %5540, i8* %5538, align 1
  %5541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5541, align 1
  store %struct.Memory* %loadMem_443bab, %struct.Memory** %MEMORY
  %loadMem_443baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5543 = getelementptr inbounds %struct.GPR, %struct.GPR* %5542, i32 0, i32 33
  %5544 = getelementptr inbounds %struct.Reg, %struct.Reg* %5543, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %5544 to i64*
  %5545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5546 = getelementptr inbounds %struct.GPR, %struct.GPR* %5545, i32 0, i32 7
  %5547 = getelementptr inbounds %struct.Reg, %struct.Reg* %5546, i32 0, i32 0
  %RDX.i393 = bitcast %union.anon* %5547 to i64*
  %5548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5549 = getelementptr inbounds %struct.GPR, %struct.GPR* %5548, i32 0, i32 9
  %5550 = getelementptr inbounds %struct.Reg, %struct.Reg* %5549, i32 0, i32 0
  %RSI.i394 = bitcast %union.anon* %5550 to i64*
  %5551 = load i64, i64* %RDX.i393
  %5552 = load i64, i64* %RSI.i394
  %5553 = load i64, i64* %PC.i392
  %5554 = add i64 %5553, 3
  store i64 %5554, i64* %PC.i392
  %5555 = add i64 %5552, %5551
  store i64 %5555, i64* %RDX.i393, align 8
  %5556 = icmp ult i64 %5555, %5551
  %5557 = icmp ult i64 %5555, %5552
  %5558 = or i1 %5556, %5557
  %5559 = zext i1 %5558 to i8
  %5560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5559, i8* %5560, align 1
  %5561 = trunc i64 %5555 to i32
  %5562 = and i32 %5561, 255
  %5563 = call i32 @llvm.ctpop.i32(i32 %5562)
  %5564 = trunc i32 %5563 to i8
  %5565 = and i8 %5564, 1
  %5566 = xor i8 %5565, 1
  %5567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5566, i8* %5567, align 1
  %5568 = xor i64 %5552, %5551
  %5569 = xor i64 %5568, %5555
  %5570 = lshr i64 %5569, 4
  %5571 = trunc i64 %5570 to i8
  %5572 = and i8 %5571, 1
  %5573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5572, i8* %5573, align 1
  %5574 = icmp eq i64 %5555, 0
  %5575 = zext i1 %5574 to i8
  %5576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5575, i8* %5576, align 1
  %5577 = lshr i64 %5555, 63
  %5578 = trunc i64 %5577 to i8
  %5579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5578, i8* %5579, align 1
  %5580 = lshr i64 %5551, 63
  %5581 = lshr i64 %5552, 63
  %5582 = xor i64 %5577, %5580
  %5583 = xor i64 %5577, %5581
  %5584 = add i64 %5582, %5583
  %5585 = icmp eq i64 %5584, 2
  %5586 = zext i1 %5585 to i8
  %5587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5586, i8* %5587, align 1
  store %struct.Memory* %loadMem_443baf, %struct.Memory** %MEMORY
  %loadMem_443bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5589 = getelementptr inbounds %struct.GPR, %struct.GPR* %5588, i32 0, i32 33
  %5590 = getelementptr inbounds %struct.Reg, %struct.Reg* %5589, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %5590 to i64*
  %5591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5592 = getelementptr inbounds %struct.GPR, %struct.GPR* %5591, i32 0, i32 5
  %5593 = getelementptr inbounds %struct.Reg, %struct.Reg* %5592, i32 0, i32 0
  %RCX.i390 = bitcast %union.anon* %5593 to i64*
  %5594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5595 = getelementptr inbounds %struct.GPR, %struct.GPR* %5594, i32 0, i32 7
  %5596 = getelementptr inbounds %struct.Reg, %struct.Reg* %5595, i32 0, i32 0
  %RDX.i391 = bitcast %union.anon* %5596 to i64*
  %5597 = load i64, i64* %RDX.i391
  %5598 = add i64 %5597, 8
  %5599 = load i64, i64* %RCX.i390
  %5600 = load i64, i64* %PC.i389
  %5601 = add i64 %5600, 4
  store i64 %5601, i64* %PC.i389
  %5602 = inttoptr i64 %5598 to i64*
  store i64 %5599, i64* %5602
  store %struct.Memory* %loadMem_443bb2, %struct.Memory** %MEMORY
  %loadMem_443bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5604 = getelementptr inbounds %struct.GPR, %struct.GPR* %5603, i32 0, i32 33
  %5605 = getelementptr inbounds %struct.Reg, %struct.Reg* %5604, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %5605 to i64*
  %5606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5607 = getelementptr inbounds %struct.GPR, %struct.GPR* %5606, i32 0, i32 15
  %5608 = getelementptr inbounds %struct.Reg, %struct.Reg* %5607, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %5608 to i64*
  %5609 = load i64, i64* %RBP.i388
  %5610 = sub i64 %5609, 76
  %5611 = load i64, i64* %PC.i387
  %5612 = add i64 %5611, 7
  store i64 %5612, i64* %PC.i387
  %5613 = inttoptr i64 %5610 to i32*
  store i32 1, i32* %5613
  store %struct.Memory* %loadMem_443bb6, %struct.Memory** %MEMORY
  %loadMem_443bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5615 = getelementptr inbounds %struct.GPR, %struct.GPR* %5614, i32 0, i32 33
  %5616 = getelementptr inbounds %struct.Reg, %struct.Reg* %5615, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %5616 to i64*
  %5617 = load i64, i64* %PC.i386
  %5618 = add i64 %5617, 8
  store i64 %5618, i64* %PC.i386
  %5619 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %5620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5620, align 1
  %5621 = and i32 %5619, 255
  %5622 = call i32 @llvm.ctpop.i32(i32 %5621)
  %5623 = trunc i32 %5622 to i8
  %5624 = and i8 %5623, 1
  %5625 = xor i8 %5624, 1
  %5626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5625, i8* %5626, align 1
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5627, align 1
  %5628 = icmp eq i32 %5619, 0
  %5629 = zext i1 %5628 to i8
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5629, i8* %5630, align 1
  %5631 = lshr i32 %5619, 31
  %5632 = trunc i32 %5631 to i8
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5632, i8* %5633, align 1
  %5634 = lshr i32 %5619, 31
  %5635 = xor i32 %5631, %5634
  %5636 = add i32 %5635, %5634
  %5637 = icmp eq i32 %5636, 2
  %5638 = zext i1 %5637 to i8
  %5639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5638, i8* %5639, align 1
  store %struct.Memory* %loadMem_443bbd, %struct.Memory** %MEMORY
  %loadMem_443bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5641 = getelementptr inbounds %struct.GPR, %struct.GPR* %5640, i32 0, i32 33
  %5642 = getelementptr inbounds %struct.Reg, %struct.Reg* %5641, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %5642 to i64*
  %5643 = load i64, i64* %PC.i385
  %5644 = add i64 %5643, 11
  %5645 = load i64, i64* %PC.i385
  %5646 = add i64 %5645, 6
  %5647 = load i64, i64* %PC.i385
  %5648 = add i64 %5647, 6
  store i64 %5648, i64* %PC.i385
  %5649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5650 = load i8, i8* %5649, align 1
  %5651 = icmp eq i8 %5650, 0
  %5652 = zext i1 %5651 to i8
  store i8 %5652, i8* %BRANCH_TAKEN, align 1
  %5653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5654 = select i1 %5651, i64 %5644, i64 %5646
  store i64 %5654, i64* %5653, align 8
  store %struct.Memory* %loadMem_443bc5, %struct.Memory** %MEMORY
  %loadBr_443bc5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443bc5 = icmp eq i8 %loadBr_443bc5, 1
  br i1 %cmpBr_443bc5, label %block_.L_443bd0, label %block_443bcb

block_443bcb:                                     ; preds = %block_443b70
  %loadMem_443bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5656 = getelementptr inbounds %struct.GPR, %struct.GPR* %5655, i32 0, i32 33
  %5657 = getelementptr inbounds %struct.Reg, %struct.Reg* %5656, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %5657 to i64*
  %5658 = load i64, i64* %PC.i384
  %5659 = add i64 %5658, 57
  %5660 = load i64, i64* %PC.i384
  %5661 = add i64 %5660, 5
  store i64 %5661, i64* %PC.i384
  %5662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5659, i64* %5662, align 8
  store %struct.Memory* %loadMem_443bcb, %struct.Memory** %MEMORY
  br label %block_.L_443c04

block_.L_443bd0:                                  ; preds = %block_443b70
  %loadMem_443bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5664 = getelementptr inbounds %struct.GPR, %struct.GPR* %5663, i32 0, i32 33
  %5665 = getelementptr inbounds %struct.Reg, %struct.Reg* %5664, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %5665 to i64*
  %5666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5667 = getelementptr inbounds %struct.GPR, %struct.GPR* %5666, i32 0, i32 11
  %5668 = getelementptr inbounds %struct.Reg, %struct.Reg* %5667, i32 0, i32 0
  %RDI.i383 = bitcast %union.anon* %5668 to i64*
  %5669 = load i64, i64* %PC.i382
  %5670 = add i64 %5669, 10
  store i64 %5670, i64* %PC.i382
  store i64 ptrtoint (%G__0x57e0a3_type* @G__0x57e0a3 to i64), i64* %RDI.i383, align 8
  store %struct.Memory* %loadMem_443bd0, %struct.Memory** %MEMORY
  %loadMem_443bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %5671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5672 = getelementptr inbounds %struct.GPR, %struct.GPR* %5671, i32 0, i32 33
  %5673 = getelementptr inbounds %struct.Reg, %struct.Reg* %5672, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %5673 to i64*
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5675 = getelementptr inbounds %struct.GPR, %struct.GPR* %5674, i32 0, i32 1
  %5676 = getelementptr inbounds %struct.Reg, %struct.Reg* %5675, i32 0, i32 0
  %RAX.i380 = bitcast %union.anon* %5676 to i64*
  %5677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5678 = getelementptr inbounds %struct.GPR, %struct.GPR* %5677, i32 0, i32 15
  %5679 = getelementptr inbounds %struct.Reg, %struct.Reg* %5678, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %5679 to i64*
  %5680 = load i64, i64* %RBP.i381
  %5681 = sub i64 %5680, 64
  %5682 = load i64, i64* %PC.i379
  %5683 = add i64 %5682, 4
  store i64 %5683, i64* %PC.i379
  %5684 = inttoptr i64 %5681 to i64*
  %5685 = load i64, i64* %5684
  store i64 %5685, i64* %RAX.i380, align 8
  store %struct.Memory* %loadMem_443bda, %struct.Memory** %MEMORY
  %loadMem_443bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %5686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5687 = getelementptr inbounds %struct.GPR, %struct.GPR* %5686, i32 0, i32 33
  %5688 = getelementptr inbounds %struct.Reg, %struct.Reg* %5687, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %5688 to i64*
  %5689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5690 = getelementptr inbounds %struct.GPR, %struct.GPR* %5689, i32 0, i32 1
  %5691 = getelementptr inbounds %struct.Reg, %struct.Reg* %5690, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %5691 to i64*
  %5692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5693 = getelementptr inbounds %struct.GPR, %struct.GPR* %5692, i32 0, i32 9
  %5694 = getelementptr inbounds %struct.Reg, %struct.Reg* %5693, i32 0, i32 0
  %RSI.i378 = bitcast %union.anon* %5694 to i64*
  %5695 = load i64, i64* %RAX.i377
  %5696 = add i64 %5695, 16
  %5697 = load i64, i64* %PC.i376
  %5698 = add i64 %5697, 4
  store i64 %5698, i64* %PC.i376
  %5699 = inttoptr i64 %5696 to i64*
  %5700 = load i64, i64* %5699
  store i64 %5700, i64* %RSI.i378, align 8
  store %struct.Memory* %loadMem_443bde, %struct.Memory** %MEMORY
  %loadMem_443be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5702 = getelementptr inbounds %struct.GPR, %struct.GPR* %5701, i32 0, i32 33
  %5703 = getelementptr inbounds %struct.Reg, %struct.Reg* %5702, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %5703 to i64*
  %5704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5705 = getelementptr inbounds %struct.GPR, %struct.GPR* %5704, i32 0, i32 7
  %5706 = getelementptr inbounds %struct.Reg, %struct.Reg* %5705, i32 0, i32 0
  %RDX.i374 = bitcast %union.anon* %5706 to i64*
  %5707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5708 = getelementptr inbounds %struct.GPR, %struct.GPR* %5707, i32 0, i32 15
  %5709 = getelementptr inbounds %struct.Reg, %struct.Reg* %5708, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %5709 to i64*
  %5710 = load i64, i64* %RBP.i375
  %5711 = sub i64 %5710, 56
  %5712 = load i64, i64* %PC.i373
  %5713 = add i64 %5712, 3
  store i64 %5713, i64* %PC.i373
  %5714 = inttoptr i64 %5711 to i32*
  %5715 = load i32, i32* %5714
  %5716 = zext i32 %5715 to i64
  store i64 %5716, i64* %RDX.i374, align 8
  store %struct.Memory* %loadMem_443be2, %struct.Memory** %MEMORY
  %loadMem_443be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5718 = getelementptr inbounds %struct.GPR, %struct.GPR* %5717, i32 0, i32 33
  %5719 = getelementptr inbounds %struct.Reg, %struct.Reg* %5718, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %5719 to i64*
  %5720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5721 = getelementptr inbounds %struct.GPR, %struct.GPR* %5720, i32 0, i32 1
  %5722 = getelementptr inbounds %struct.Reg, %struct.Reg* %5721, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %5722 to i64*
  %5723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5724 = getelementptr inbounds %struct.GPR, %struct.GPR* %5723, i32 0, i32 15
  %5725 = getelementptr inbounds %struct.Reg, %struct.Reg* %5724, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %5725 to i64*
  %5726 = load i64, i64* %RBP.i372
  %5727 = sub i64 %5726, 32
  %5728 = load i64, i64* %PC.i370
  %5729 = add i64 %5728, 4
  store i64 %5729, i64* %PC.i370
  %5730 = inttoptr i64 %5727 to i64*
  %5731 = load i64, i64* %5730
  store i64 %5731, i64* %RAX.i371, align 8
  store %struct.Memory* %loadMem_443be5, %struct.Memory** %MEMORY
  %loadMem_443be9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5733 = getelementptr inbounds %struct.GPR, %struct.GPR* %5732, i32 0, i32 33
  %5734 = getelementptr inbounds %struct.Reg, %struct.Reg* %5733, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %5734 to i64*
  %5735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5736 = getelementptr inbounds %struct.GPR, %struct.GPR* %5735, i32 0, i32 5
  %5737 = getelementptr inbounds %struct.Reg, %struct.Reg* %5736, i32 0, i32 0
  %RCX.i368 = bitcast %union.anon* %5737 to i64*
  %5738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5739 = getelementptr inbounds %struct.GPR, %struct.GPR* %5738, i32 0, i32 15
  %5740 = getelementptr inbounds %struct.Reg, %struct.Reg* %5739, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %5740 to i64*
  %5741 = load i64, i64* %RBP.i369
  %5742 = sub i64 %5741, 48
  %5743 = load i64, i64* %PC.i367
  %5744 = add i64 %5743, 4
  store i64 %5744, i64* %PC.i367
  %5745 = inttoptr i64 %5742 to i32*
  %5746 = load i32, i32* %5745
  %5747 = sext i32 %5746 to i64
  store i64 %5747, i64* %RCX.i368, align 8
  store %struct.Memory* %loadMem_443be9, %struct.Memory** %MEMORY
  %loadMem_443bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %5748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5749 = getelementptr inbounds %struct.GPR, %struct.GPR* %5748, i32 0, i32 33
  %5750 = getelementptr inbounds %struct.Reg, %struct.Reg* %5749, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %5750 to i64*
  %5751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5752 = getelementptr inbounds %struct.GPR, %struct.GPR* %5751, i32 0, i32 5
  %5753 = getelementptr inbounds %struct.Reg, %struct.Reg* %5752, i32 0, i32 0
  %RCX.i366 = bitcast %union.anon* %5753 to i64*
  %5754 = load i64, i64* %RCX.i366
  %5755 = load i64, i64* %PC.i365
  %5756 = add i64 %5755, 4
  store i64 %5756, i64* %PC.i365
  %5757 = shl i64 %5754, 4
  %5758 = icmp slt i64 %5757, 0
  %5759 = shl i64 %5757, 1
  store i64 %5759, i64* %RCX.i366, align 8
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5761 = zext i1 %5758 to i8
  store i8 %5761, i8* %5760, align 1
  %5762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5763 = trunc i64 %5759 to i32
  %5764 = and i32 %5763, 254
  %5765 = call i32 @llvm.ctpop.i32(i32 %5764)
  %5766 = trunc i32 %5765 to i8
  %5767 = and i8 %5766, 1
  %5768 = xor i8 %5767, 1
  store i8 %5768, i8* %5762, align 1
  %5769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5769, align 1
  %5770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5771 = icmp eq i64 %5759, 0
  %5772 = zext i1 %5771 to i8
  store i8 %5772, i8* %5770, align 1
  %5773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5774 = lshr i64 %5759, 63
  %5775 = trunc i64 %5774 to i8
  store i8 %5775, i8* %5773, align 1
  %5776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5776, align 1
  store %struct.Memory* %loadMem_443bed, %struct.Memory** %MEMORY
  %loadMem_443bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5778 = getelementptr inbounds %struct.GPR, %struct.GPR* %5777, i32 0, i32 33
  %5779 = getelementptr inbounds %struct.Reg, %struct.Reg* %5778, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %5779 to i64*
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5781 = getelementptr inbounds %struct.GPR, %struct.GPR* %5780, i32 0, i32 1
  %5782 = getelementptr inbounds %struct.Reg, %struct.Reg* %5781, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %5782 to i64*
  %5783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5784 = getelementptr inbounds %struct.GPR, %struct.GPR* %5783, i32 0, i32 5
  %5785 = getelementptr inbounds %struct.Reg, %struct.Reg* %5784, i32 0, i32 0
  %RCX.i364 = bitcast %union.anon* %5785 to i64*
  %5786 = load i64, i64* %RAX.i363
  %5787 = load i64, i64* %RCX.i364
  %5788 = load i64, i64* %PC.i362
  %5789 = add i64 %5788, 3
  store i64 %5789, i64* %PC.i362
  %5790 = add i64 %5787, %5786
  store i64 %5790, i64* %RAX.i363, align 8
  %5791 = icmp ult i64 %5790, %5786
  %5792 = icmp ult i64 %5790, %5787
  %5793 = or i1 %5791, %5792
  %5794 = zext i1 %5793 to i8
  %5795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5794, i8* %5795, align 1
  %5796 = trunc i64 %5790 to i32
  %5797 = and i32 %5796, 255
  %5798 = call i32 @llvm.ctpop.i32(i32 %5797)
  %5799 = trunc i32 %5798 to i8
  %5800 = and i8 %5799, 1
  %5801 = xor i8 %5800, 1
  %5802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5801, i8* %5802, align 1
  %5803 = xor i64 %5787, %5786
  %5804 = xor i64 %5803, %5790
  %5805 = lshr i64 %5804, 4
  %5806 = trunc i64 %5805 to i8
  %5807 = and i8 %5806, 1
  %5808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5807, i8* %5808, align 1
  %5809 = icmp eq i64 %5790, 0
  %5810 = zext i1 %5809 to i8
  %5811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5810, i8* %5811, align 1
  %5812 = lshr i64 %5790, 63
  %5813 = trunc i64 %5812 to i8
  %5814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5813, i8* %5814, align 1
  %5815 = lshr i64 %5786, 63
  %5816 = lshr i64 %5787, 63
  %5817 = xor i64 %5812, %5815
  %5818 = xor i64 %5812, %5816
  %5819 = add i64 %5817, %5818
  %5820 = icmp eq i64 %5819, 2
  %5821 = zext i1 %5820 to i8
  %5822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5821, i8* %5822, align 1
  store %struct.Memory* %loadMem_443bf1, %struct.Memory** %MEMORY
  %loadMem_443bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5824 = getelementptr inbounds %struct.GPR, %struct.GPR* %5823, i32 0, i32 33
  %5825 = getelementptr inbounds %struct.Reg, %struct.Reg* %5824, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %5825 to i64*
  %5826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5827 = getelementptr inbounds %struct.GPR, %struct.GPR* %5826, i32 0, i32 1
  %5828 = getelementptr inbounds %struct.Reg, %struct.Reg* %5827, i32 0, i32 0
  %RAX.i360 = bitcast %union.anon* %5828 to i64*
  %5829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5830 = getelementptr inbounds %struct.GPR, %struct.GPR* %5829, i32 0, i32 5
  %5831 = getelementptr inbounds %struct.Reg, %struct.Reg* %5830, i32 0, i32 0
  %RCX.i361 = bitcast %union.anon* %5831 to i64*
  %5832 = load i64, i64* %RAX.i360
  %5833 = add i64 %5832, 4
  %5834 = load i64, i64* %PC.i359
  %5835 = add i64 %5834, 3
  store i64 %5835, i64* %PC.i359
  %5836 = inttoptr i64 %5833 to i32*
  %5837 = load i32, i32* %5836
  %5838 = zext i32 %5837 to i64
  store i64 %5838, i64* %RCX.i361, align 8
  store %struct.Memory* %loadMem_443bf4, %struct.Memory** %MEMORY
  %loadMem_443bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5840 = getelementptr inbounds %struct.GPR, %struct.GPR* %5839, i32 0, i32 33
  %5841 = getelementptr inbounds %struct.Reg, %struct.Reg* %5840, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %5841 to i64*
  %5842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5843 = getelementptr inbounds %struct.GPR, %struct.GPR* %5842, i32 0, i32 1
  %5844 = getelementptr inbounds %struct.Reg, %struct.Reg* %5843, i32 0, i32 0
  %5845 = bitcast %union.anon* %5844 to %struct.anon.2*
  %AL.i358 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5845, i32 0, i32 0
  %5846 = load i64, i64* %PC.i357
  %5847 = add i64 %5846, 2
  store i64 %5847, i64* %PC.i357
  store i8 0, i8* %AL.i358, align 1
  store %struct.Memory* %loadMem_443bf7, %struct.Memory** %MEMORY
  %loadMem1_443bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5849 = getelementptr inbounds %struct.GPR, %struct.GPR* %5848, i32 0, i32 33
  %5850 = getelementptr inbounds %struct.Reg, %struct.Reg* %5849, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %5850 to i64*
  %5851 = load i64, i64* %PC.i356
  %5852 = add i64 %5851, 57783
  %5853 = load i64, i64* %PC.i356
  %5854 = add i64 %5853, 5
  %5855 = load i64, i64* %PC.i356
  %5856 = add i64 %5855, 5
  store i64 %5856, i64* %PC.i356
  %5857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5858 = load i64, i64* %5857, align 8
  %5859 = add i64 %5858, -8
  %5860 = inttoptr i64 %5859 to i64*
  store i64 %5854, i64* %5860
  store i64 %5859, i64* %5857, align 8
  %5861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5852, i64* %5861, align 8
  store %struct.Memory* %loadMem1_443bf9, %struct.Memory** %MEMORY
  %loadMem2_443bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_443bf9 = load i64, i64* %3
  %call2_443bf9 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_443bf9, %struct.Memory* %loadMem2_443bf9)
  store %struct.Memory* %call2_443bf9, %struct.Memory** %MEMORY
  %loadMem_443bfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5863 = getelementptr inbounds %struct.GPR, %struct.GPR* %5862, i32 0, i32 33
  %5864 = getelementptr inbounds %struct.Reg, %struct.Reg* %5863, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %5864 to i64*
  %5865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5866 = getelementptr inbounds %struct.GPR, %struct.GPR* %5865, i32 0, i32 1
  %5867 = getelementptr inbounds %struct.Reg, %struct.Reg* %5866, i32 0, i32 0
  %EAX.i354 = bitcast %union.anon* %5867 to i32*
  %5868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5869 = getelementptr inbounds %struct.GPR, %struct.GPR* %5868, i32 0, i32 15
  %5870 = getelementptr inbounds %struct.Reg, %struct.Reg* %5869, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %5870 to i64*
  %5871 = load i64, i64* %RBP.i355
  %5872 = sub i64 %5871, 156
  %5873 = load i32, i32* %EAX.i354
  %5874 = zext i32 %5873 to i64
  %5875 = load i64, i64* %PC.i353
  %5876 = add i64 %5875, 6
  store i64 %5876, i64* %PC.i353
  %5877 = inttoptr i64 %5872 to i32*
  store i32 %5873, i32* %5877
  store %struct.Memory* %loadMem_443bfe, %struct.Memory** %MEMORY
  br label %block_.L_443c04

block_.L_443c04:                                  ; preds = %block_.L_443bd0, %block_443bcb
  %loadMem_443c04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5879 = getelementptr inbounds %struct.GPR, %struct.GPR* %5878, i32 0, i32 33
  %5880 = getelementptr inbounds %struct.Reg, %struct.Reg* %5879, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %5880 to i64*
  %5881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5882 = getelementptr inbounds %struct.GPR, %struct.GPR* %5881, i32 0, i32 1
  %5883 = getelementptr inbounds %struct.Reg, %struct.Reg* %5882, i32 0, i32 0
  %RAX.i351 = bitcast %union.anon* %5883 to i64*
  %5884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5885 = getelementptr inbounds %struct.GPR, %struct.GPR* %5884, i32 0, i32 15
  %5886 = getelementptr inbounds %struct.Reg, %struct.Reg* %5885, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %5886 to i64*
  %5887 = load i64, i64* %RBP.i352
  %5888 = sub i64 %5887, 64
  %5889 = load i64, i64* %PC.i350
  %5890 = add i64 %5889, 4
  store i64 %5890, i64* %PC.i350
  %5891 = inttoptr i64 %5888 to i64*
  %5892 = load i64, i64* %5891
  store i64 %5892, i64* %RAX.i351, align 8
  store %struct.Memory* %loadMem_443c04, %struct.Memory** %MEMORY
  %loadMem_443c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5894 = getelementptr inbounds %struct.GPR, %struct.GPR* %5893, i32 0, i32 33
  %5895 = getelementptr inbounds %struct.Reg, %struct.Reg* %5894, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %5895 to i64*
  %5896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5897 = getelementptr inbounds %struct.GPR, %struct.GPR* %5896, i32 0, i32 1
  %5898 = getelementptr inbounds %struct.Reg, %struct.Reg* %5897, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %5898 to i64*
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5900 = getelementptr inbounds %struct.GPR, %struct.GPR* %5899, i32 0, i32 5
  %5901 = getelementptr inbounds %struct.Reg, %struct.Reg* %5900, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %5901 to i64*
  %5902 = load i64, i64* %RAX.i348
  %5903 = add i64 %5902, 120
  %5904 = load i64, i64* %PC.i347
  %5905 = add i64 %5904, 3
  store i64 %5905, i64* %PC.i347
  %5906 = inttoptr i64 %5903 to i32*
  %5907 = load i32, i32* %5906
  %5908 = zext i32 %5907 to i64
  store i64 %5908, i64* %RCX.i349, align 8
  store %struct.Memory* %loadMem_443c08, %struct.Memory** %MEMORY
  %loadMem_443c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5910 = getelementptr inbounds %struct.GPR, %struct.GPR* %5909, i32 0, i32 33
  %5911 = getelementptr inbounds %struct.Reg, %struct.Reg* %5910, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %5911 to i64*
  %5912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5913 = getelementptr inbounds %struct.GPR, %struct.GPR* %5912, i32 0, i32 5
  %5914 = getelementptr inbounds %struct.Reg, %struct.Reg* %5913, i32 0, i32 0
  %RCX.i346 = bitcast %union.anon* %5914 to i64*
  %5915 = load i64, i64* %RCX.i346
  %5916 = load i64, i64* %PC.i345
  %5917 = add i64 %5916, 6
  store i64 %5917, i64* %PC.i345
  %5918 = and i64 512, %5915
  %5919 = trunc i64 %5918 to i32
  store i64 %5918, i64* %RCX.i346, align 8
  %5920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5920, align 1
  %5921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %5921, align 1
  %5922 = icmp eq i32 %5919, 0
  %5923 = zext i1 %5922 to i8
  %5924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5923, i8* %5924, align 1
  %5925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5925, align 1
  %5926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5926, align 1
  %5927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5927, align 1
  store %struct.Memory* %loadMem_443c0b, %struct.Memory** %MEMORY
  %loadMem_443c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5929 = getelementptr inbounds %struct.GPR, %struct.GPR* %5928, i32 0, i32 33
  %5930 = getelementptr inbounds %struct.Reg, %struct.Reg* %5929, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %5930 to i64*
  %5931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5932 = getelementptr inbounds %struct.GPR, %struct.GPR* %5931, i32 0, i32 5
  %5933 = getelementptr inbounds %struct.Reg, %struct.Reg* %5932, i32 0, i32 0
  %ECX.i344 = bitcast %union.anon* %5933 to i32*
  %5934 = load i32, i32* %ECX.i344
  %5935 = zext i32 %5934 to i64
  %5936 = load i64, i64* %PC.i343
  %5937 = add i64 %5936, 3
  store i64 %5937, i64* %PC.i343
  %5938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5938, align 1
  %5939 = and i32 %5934, 255
  %5940 = call i32 @llvm.ctpop.i32(i32 %5939)
  %5941 = trunc i32 %5940 to i8
  %5942 = and i8 %5941, 1
  %5943 = xor i8 %5942, 1
  %5944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5943, i8* %5944, align 1
  %5945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5945, align 1
  %5946 = icmp eq i32 %5934, 0
  %5947 = zext i1 %5946 to i8
  %5948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5947, i8* %5948, align 1
  %5949 = lshr i32 %5934, 31
  %5950 = trunc i32 %5949 to i8
  %5951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5950, i8* %5951, align 1
  %5952 = lshr i32 %5934, 31
  %5953 = xor i32 %5949, %5952
  %5954 = add i32 %5953, %5952
  %5955 = icmp eq i32 %5954, 2
  %5956 = zext i1 %5955 to i8
  %5957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5956, i8* %5957, align 1
  store %struct.Memory* %loadMem_443c11, %struct.Memory** %MEMORY
  %loadMem_443c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5959 = getelementptr inbounds %struct.GPR, %struct.GPR* %5958, i32 0, i32 33
  %5960 = getelementptr inbounds %struct.Reg, %struct.Reg* %5959, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %5960 to i64*
  %5961 = load i64, i64* %PC.i342
  %5962 = add i64 %5961, 33
  %5963 = load i64, i64* %PC.i342
  %5964 = add i64 %5963, 6
  %5965 = load i64, i64* %PC.i342
  %5966 = add i64 %5965, 6
  store i64 %5966, i64* %PC.i342
  %5967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5968 = load i8, i8* %5967, align 1
  store i8 %5968, i8* %BRANCH_TAKEN, align 1
  %5969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5970 = icmp ne i8 %5968, 0
  %5971 = select i1 %5970, i64 %5962, i64 %5964
  store i64 %5971, i64* %5969, align 8
  store %struct.Memory* %loadMem_443c14, %struct.Memory** %MEMORY
  %loadBr_443c14 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443c14 = icmp eq i8 %loadBr_443c14, 1
  br i1 %cmpBr_443c14, label %block_.L_443c35, label %block_443c1a

block_443c1a:                                     ; preds = %block_.L_443c04
  %loadMem_443c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5973 = getelementptr inbounds %struct.GPR, %struct.GPR* %5972, i32 0, i32 33
  %5974 = getelementptr inbounds %struct.Reg, %struct.Reg* %5973, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %5974 to i64*
  %5975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5976 = getelementptr inbounds %struct.GPR, %struct.GPR* %5975, i32 0, i32 1
  %5977 = getelementptr inbounds %struct.Reg, %struct.Reg* %5976, i32 0, i32 0
  %RAX.i340 = bitcast %union.anon* %5977 to i64*
  %5978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5979 = getelementptr inbounds %struct.GPR, %struct.GPR* %5978, i32 0, i32 15
  %5980 = getelementptr inbounds %struct.Reg, %struct.Reg* %5979, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %5980 to i64*
  %5981 = load i64, i64* %RBP.i341
  %5982 = sub i64 %5981, 32
  %5983 = load i64, i64* %PC.i339
  %5984 = add i64 %5983, 4
  store i64 %5984, i64* %PC.i339
  %5985 = inttoptr i64 %5982 to i64*
  %5986 = load i64, i64* %5985
  store i64 %5986, i64* %RAX.i340, align 8
  store %struct.Memory* %loadMem_443c1a, %struct.Memory** %MEMORY
  %loadMem_443c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5988 = getelementptr inbounds %struct.GPR, %struct.GPR* %5987, i32 0, i32 33
  %5989 = getelementptr inbounds %struct.Reg, %struct.Reg* %5988, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %5989 to i64*
  %5990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5991 = getelementptr inbounds %struct.GPR, %struct.GPR* %5990, i32 0, i32 5
  %5992 = getelementptr inbounds %struct.Reg, %struct.Reg* %5991, i32 0, i32 0
  %RCX.i337 = bitcast %union.anon* %5992 to i64*
  %5993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5994 = getelementptr inbounds %struct.GPR, %struct.GPR* %5993, i32 0, i32 15
  %5995 = getelementptr inbounds %struct.Reg, %struct.Reg* %5994, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %5995 to i64*
  %5996 = load i64, i64* %RBP.i338
  %5997 = sub i64 %5996, 48
  %5998 = load i64, i64* %PC.i336
  %5999 = add i64 %5998, 4
  store i64 %5999, i64* %PC.i336
  %6000 = inttoptr i64 %5997 to i32*
  %6001 = load i32, i32* %6000
  %6002 = sext i32 %6001 to i64
  store i64 %6002, i64* %RCX.i337, align 8
  store %struct.Memory* %loadMem_443c1e, %struct.Memory** %MEMORY
  %loadMem_443c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6004 = getelementptr inbounds %struct.GPR, %struct.GPR* %6003, i32 0, i32 33
  %6005 = getelementptr inbounds %struct.Reg, %struct.Reg* %6004, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %6005 to i64*
  %6006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6007 = getelementptr inbounds %struct.GPR, %struct.GPR* %6006, i32 0, i32 5
  %6008 = getelementptr inbounds %struct.Reg, %struct.Reg* %6007, i32 0, i32 0
  %RCX.i335 = bitcast %union.anon* %6008 to i64*
  %6009 = load i64, i64* %RCX.i335
  %6010 = load i64, i64* %PC.i334
  %6011 = add i64 %6010, 4
  store i64 %6011, i64* %PC.i334
  %6012 = shl i64 %6009, 4
  %6013 = icmp slt i64 %6012, 0
  %6014 = shl i64 %6012, 1
  store i64 %6014, i64* %RCX.i335, align 8
  %6015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6016 = zext i1 %6013 to i8
  store i8 %6016, i8* %6015, align 1
  %6017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6018 = trunc i64 %6014 to i32
  %6019 = and i32 %6018, 254
  %6020 = call i32 @llvm.ctpop.i32(i32 %6019)
  %6021 = trunc i32 %6020 to i8
  %6022 = and i8 %6021, 1
  %6023 = xor i8 %6022, 1
  store i8 %6023, i8* %6017, align 1
  %6024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6024, align 1
  %6025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6026 = icmp eq i64 %6014, 0
  %6027 = zext i1 %6026 to i8
  store i8 %6027, i8* %6025, align 1
  %6028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6029 = lshr i64 %6014, 63
  %6030 = trunc i64 %6029 to i8
  store i8 %6030, i8* %6028, align 1
  %6031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6031, align 1
  store %struct.Memory* %loadMem_443c22, %struct.Memory** %MEMORY
  %loadMem_443c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6033 = getelementptr inbounds %struct.GPR, %struct.GPR* %6032, i32 0, i32 33
  %6034 = getelementptr inbounds %struct.Reg, %struct.Reg* %6033, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %6034 to i64*
  %6035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6036 = getelementptr inbounds %struct.GPR, %struct.GPR* %6035, i32 0, i32 1
  %6037 = getelementptr inbounds %struct.Reg, %struct.Reg* %6036, i32 0, i32 0
  %RAX.i332 = bitcast %union.anon* %6037 to i64*
  %6038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6039 = getelementptr inbounds %struct.GPR, %struct.GPR* %6038, i32 0, i32 5
  %6040 = getelementptr inbounds %struct.Reg, %struct.Reg* %6039, i32 0, i32 0
  %RCX.i333 = bitcast %union.anon* %6040 to i64*
  %6041 = load i64, i64* %RAX.i332
  %6042 = load i64, i64* %RCX.i333
  %6043 = load i64, i64* %PC.i331
  %6044 = add i64 %6043, 3
  store i64 %6044, i64* %PC.i331
  %6045 = add i64 %6042, %6041
  store i64 %6045, i64* %RAX.i332, align 8
  %6046 = icmp ult i64 %6045, %6041
  %6047 = icmp ult i64 %6045, %6042
  %6048 = or i1 %6046, %6047
  %6049 = zext i1 %6048 to i8
  %6050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6049, i8* %6050, align 1
  %6051 = trunc i64 %6045 to i32
  %6052 = and i32 %6051, 255
  %6053 = call i32 @llvm.ctpop.i32(i32 %6052)
  %6054 = trunc i32 %6053 to i8
  %6055 = and i8 %6054, 1
  %6056 = xor i8 %6055, 1
  %6057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6056, i8* %6057, align 1
  %6058 = xor i64 %6042, %6041
  %6059 = xor i64 %6058, %6045
  %6060 = lshr i64 %6059, 4
  %6061 = trunc i64 %6060 to i8
  %6062 = and i8 %6061, 1
  %6063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6062, i8* %6063, align 1
  %6064 = icmp eq i64 %6045, 0
  %6065 = zext i1 %6064 to i8
  %6066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6065, i8* %6066, align 1
  %6067 = lshr i64 %6045, 63
  %6068 = trunc i64 %6067 to i8
  %6069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6068, i8* %6069, align 1
  %6070 = lshr i64 %6041, 63
  %6071 = lshr i64 %6042, 63
  %6072 = xor i64 %6067, %6070
  %6073 = xor i64 %6067, %6071
  %6074 = add i64 %6072, %6073
  %6075 = icmp eq i64 %6074, 2
  %6076 = zext i1 %6075 to i8
  %6077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6076, i8* %6077, align 1
  store %struct.Memory* %loadMem_443c26, %struct.Memory** %MEMORY
  %loadMem_443c29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6079 = getelementptr inbounds %struct.GPR, %struct.GPR* %6078, i32 0, i32 33
  %6080 = getelementptr inbounds %struct.Reg, %struct.Reg* %6079, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %6080 to i64*
  %6081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6082 = getelementptr inbounds %struct.GPR, %struct.GPR* %6081, i32 0, i32 1
  %6083 = getelementptr inbounds %struct.Reg, %struct.Reg* %6082, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %6083 to i64*
  %6084 = load i64, i64* %RAX.i330
  %6085 = add i64 %6084, 16
  %6086 = load i64, i64* %PC.i329
  %6087 = add i64 %6086, 7
  store i64 %6087, i64* %PC.i329
  %6088 = inttoptr i64 %6085 to i32*
  store i32 0, i32* %6088
  store %struct.Memory* %loadMem_443c29, %struct.Memory** %MEMORY
  %loadMem_443c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6090 = getelementptr inbounds %struct.GPR, %struct.GPR* %6089, i32 0, i32 33
  %6091 = getelementptr inbounds %struct.Reg, %struct.Reg* %6090, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %6091 to i64*
  %6092 = load i64, i64* %PC.i328
  %6093 = add i64 %6092, 445
  %6094 = load i64, i64* %PC.i328
  %6095 = add i64 %6094, 5
  store i64 %6095, i64* %PC.i328
  %6096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6093, i64* %6096, align 8
  store %struct.Memory* %loadMem_443c30, %struct.Memory** %MEMORY
  br label %block_.L_443ded

block_.L_443c35:                                  ; preds = %block_.L_443c04
  %loadMem_443c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6098 = getelementptr inbounds %struct.GPR, %struct.GPR* %6097, i32 0, i32 33
  %6099 = getelementptr inbounds %struct.Reg, %struct.Reg* %6098, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %6099 to i64*
  %6100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6101 = getelementptr inbounds %struct.GPR, %struct.GPR* %6100, i32 0, i32 1
  %6102 = getelementptr inbounds %struct.Reg, %struct.Reg* %6101, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %6102 to i64*
  %6103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6104 = getelementptr inbounds %struct.GPR, %struct.GPR* %6103, i32 0, i32 15
  %6105 = getelementptr inbounds %struct.Reg, %struct.Reg* %6104, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %6105 to i64*
  %6106 = load i64, i64* %RBP.i327
  %6107 = sub i64 %6106, 64
  %6108 = load i64, i64* %PC.i325
  %6109 = add i64 %6108, 4
  store i64 %6109, i64* %PC.i325
  %6110 = inttoptr i64 %6107 to i64*
  %6111 = load i64, i64* %6110
  store i64 %6111, i64* %RAX.i326, align 8
  store %struct.Memory* %loadMem_443c35, %struct.Memory** %MEMORY
  %loadMem_443c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6113 = getelementptr inbounds %struct.GPR, %struct.GPR* %6112, i32 0, i32 33
  %6114 = getelementptr inbounds %struct.Reg, %struct.Reg* %6113, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %6114 to i64*
  %6115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6116 = getelementptr inbounds %struct.GPR, %struct.GPR* %6115, i32 0, i32 1
  %6117 = getelementptr inbounds %struct.Reg, %struct.Reg* %6116, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %6117 to i64*
  %6118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6119 = getelementptr inbounds %struct.GPR, %struct.GPR* %6118, i32 0, i32 5
  %6120 = getelementptr inbounds %struct.Reg, %struct.Reg* %6119, i32 0, i32 0
  %RCX.i324 = bitcast %union.anon* %6120 to i64*
  %6121 = load i64, i64* %RAX.i323
  %6122 = add i64 %6121, 120
  %6123 = load i64, i64* %PC.i322
  %6124 = add i64 %6123, 3
  store i64 %6124, i64* %PC.i322
  %6125 = inttoptr i64 %6122 to i32*
  %6126 = load i32, i32* %6125
  %6127 = zext i32 %6126 to i64
  store i64 %6127, i64* %RCX.i324, align 8
  store %struct.Memory* %loadMem_443c39, %struct.Memory** %MEMORY
  %loadMem_443c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6129 = getelementptr inbounds %struct.GPR, %struct.GPR* %6128, i32 0, i32 33
  %6130 = getelementptr inbounds %struct.Reg, %struct.Reg* %6129, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %6130 to i64*
  %6131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6132 = getelementptr inbounds %struct.GPR, %struct.GPR* %6131, i32 0, i32 5
  %6133 = getelementptr inbounds %struct.Reg, %struct.Reg* %6132, i32 0, i32 0
  %RCX.i321 = bitcast %union.anon* %6133 to i64*
  %6134 = load i64, i64* %RCX.i321
  %6135 = load i64, i64* %PC.i320
  %6136 = add i64 %6135, 6
  store i64 %6136, i64* %PC.i320
  %6137 = and i64 2048, %6134
  %6138 = trunc i64 %6137 to i32
  store i64 %6137, i64* %RCX.i321, align 8
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6139, align 1
  %6140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6140, align 1
  %6141 = icmp eq i32 %6138, 0
  %6142 = zext i1 %6141 to i8
  %6143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6142, i8* %6143, align 1
  %6144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6144, align 1
  %6145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6145, align 1
  %6146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6146, align 1
  store %struct.Memory* %loadMem_443c3c, %struct.Memory** %MEMORY
  %loadMem_443c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6148 = getelementptr inbounds %struct.GPR, %struct.GPR* %6147, i32 0, i32 33
  %6149 = getelementptr inbounds %struct.Reg, %struct.Reg* %6148, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %6149 to i64*
  %6150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6151 = getelementptr inbounds %struct.GPR, %struct.GPR* %6150, i32 0, i32 5
  %6152 = getelementptr inbounds %struct.Reg, %struct.Reg* %6151, i32 0, i32 0
  %ECX.i319 = bitcast %union.anon* %6152 to i32*
  %6153 = load i32, i32* %ECX.i319
  %6154 = zext i32 %6153 to i64
  %6155 = load i64, i64* %PC.i318
  %6156 = add i64 %6155, 3
  store i64 %6156, i64* %PC.i318
  %6157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6157, align 1
  %6158 = and i32 %6153, 255
  %6159 = call i32 @llvm.ctpop.i32(i32 %6158)
  %6160 = trunc i32 %6159 to i8
  %6161 = and i8 %6160, 1
  %6162 = xor i8 %6161, 1
  %6163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6162, i8* %6163, align 1
  %6164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6164, align 1
  %6165 = icmp eq i32 %6153, 0
  %6166 = zext i1 %6165 to i8
  %6167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6166, i8* %6167, align 1
  %6168 = lshr i32 %6153, 31
  %6169 = trunc i32 %6168 to i8
  %6170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6169, i8* %6170, align 1
  %6171 = lshr i32 %6153, 31
  %6172 = xor i32 %6168, %6171
  %6173 = add i32 %6172, %6171
  %6174 = icmp eq i32 %6173, 2
  %6175 = zext i1 %6174 to i8
  %6176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6175, i8* %6176, align 1
  store %struct.Memory* %loadMem_443c42, %struct.Memory** %MEMORY
  %loadMem_443c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6178 = getelementptr inbounds %struct.GPR, %struct.GPR* %6177, i32 0, i32 33
  %6179 = getelementptr inbounds %struct.Reg, %struct.Reg* %6178, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %6179 to i64*
  %6180 = load i64, i64* %PC.i317
  %6181 = add i64 %6180, 397
  %6182 = load i64, i64* %PC.i317
  %6183 = add i64 %6182, 6
  %6184 = load i64, i64* %PC.i317
  %6185 = add i64 %6184, 6
  store i64 %6185, i64* %PC.i317
  %6186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6187 = load i8, i8* %6186, align 1
  store i8 %6187, i8* %BRANCH_TAKEN, align 1
  %6188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6189 = icmp ne i8 %6187, 0
  %6190 = select i1 %6189, i64 %6181, i64 %6183
  store i64 %6190, i64* %6188, align 8
  store %struct.Memory* %loadMem_443c45, %struct.Memory** %MEMORY
  %loadBr_443c45 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443c45 = icmp eq i8 %loadBr_443c45, 1
  br i1 %cmpBr_443c45, label %block_.L_443dd2, label %block_443c4b

block_443c4b:                                     ; preds = %block_.L_443c35
  %loadMem_443c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6192 = getelementptr inbounds %struct.GPR, %struct.GPR* %6191, i32 0, i32 33
  %6193 = getelementptr inbounds %struct.Reg, %struct.Reg* %6192, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %6193 to i64*
  %6194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6195 = getelementptr inbounds %struct.GPR, %struct.GPR* %6194, i32 0, i32 15
  %6196 = getelementptr inbounds %struct.Reg, %struct.Reg* %6195, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %6196 to i64*
  %6197 = load i64, i64* %RBP.i316
  %6198 = sub i64 %6197, 128
  %6199 = load i64, i64* %PC.i315
  %6200 = add i64 %6199, 7
  store i64 %6200, i64* %PC.i315
  %6201 = inttoptr i64 %6198 to i32*
  store i32 1, i32* %6201
  store %struct.Memory* %loadMem_443c4b, %struct.Memory** %MEMORY
  %loadMem_443c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6203 = getelementptr inbounds %struct.GPR, %struct.GPR* %6202, i32 0, i32 33
  %6204 = getelementptr inbounds %struct.Reg, %struct.Reg* %6203, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %6204 to i64*
  %6205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6206 = getelementptr inbounds %struct.GPR, %struct.GPR* %6205, i32 0, i32 1
  %6207 = getelementptr inbounds %struct.Reg, %struct.Reg* %6206, i32 0, i32 0
  %RAX.i313 = bitcast %union.anon* %6207 to i64*
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6209 = getelementptr inbounds %struct.GPR, %struct.GPR* %6208, i32 0, i32 15
  %6210 = getelementptr inbounds %struct.Reg, %struct.Reg* %6209, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %6210 to i64*
  %6211 = load i64, i64* %RBP.i314
  %6212 = sub i64 %6211, 40
  %6213 = load i64, i64* %PC.i312
  %6214 = add i64 %6213, 3
  store i64 %6214, i64* %PC.i312
  %6215 = inttoptr i64 %6212 to i32*
  %6216 = load i32, i32* %6215
  %6217 = zext i32 %6216 to i64
  store i64 %6217, i64* %RAX.i313, align 8
  store %struct.Memory* %loadMem_443c52, %struct.Memory** %MEMORY
  %loadMem_443c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6219 = getelementptr inbounds %struct.GPR, %struct.GPR* %6218, i32 0, i32 33
  %6220 = getelementptr inbounds %struct.Reg, %struct.Reg* %6219, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %6220 to i64*
  %6221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6222 = getelementptr inbounds %struct.GPR, %struct.GPR* %6221, i32 0, i32 1
  %6223 = getelementptr inbounds %struct.Reg, %struct.Reg* %6222, i32 0, i32 0
  %RAX.i311 = bitcast %union.anon* %6223 to i64*
  %6224 = load i64, i64* %RAX.i311
  %6225 = load i64, i64* %PC.i310
  %6226 = add i64 %6225, 3
  store i64 %6226, i64* %PC.i310
  %6227 = trunc i64 %6224 to i32
  %6228 = add i32 1, %6227
  %6229 = zext i32 %6228 to i64
  store i64 %6229, i64* %RAX.i311, align 8
  %6230 = icmp ult i32 %6228, %6227
  %6231 = icmp ult i32 %6228, 1
  %6232 = or i1 %6230, %6231
  %6233 = zext i1 %6232 to i8
  %6234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6233, i8* %6234, align 1
  %6235 = and i32 %6228, 255
  %6236 = call i32 @llvm.ctpop.i32(i32 %6235)
  %6237 = trunc i32 %6236 to i8
  %6238 = and i8 %6237, 1
  %6239 = xor i8 %6238, 1
  %6240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6239, i8* %6240, align 1
  %6241 = xor i64 1, %6224
  %6242 = trunc i64 %6241 to i32
  %6243 = xor i32 %6242, %6228
  %6244 = lshr i32 %6243, 4
  %6245 = trunc i32 %6244 to i8
  %6246 = and i8 %6245, 1
  %6247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6246, i8* %6247, align 1
  %6248 = icmp eq i32 %6228, 0
  %6249 = zext i1 %6248 to i8
  %6250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6249, i8* %6250, align 1
  %6251 = lshr i32 %6228, 31
  %6252 = trunc i32 %6251 to i8
  %6253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6252, i8* %6253, align 1
  %6254 = lshr i32 %6227, 31
  %6255 = xor i32 %6251, %6254
  %6256 = add i32 %6255, %6251
  %6257 = icmp eq i32 %6256, 2
  %6258 = zext i1 %6257 to i8
  %6259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6258, i8* %6259, align 1
  store %struct.Memory* %loadMem_443c55, %struct.Memory** %MEMORY
  %loadMem_443c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6261 = getelementptr inbounds %struct.GPR, %struct.GPR* %6260, i32 0, i32 33
  %6262 = getelementptr inbounds %struct.Reg, %struct.Reg* %6261, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %6262 to i64*
  %6263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6264 = getelementptr inbounds %struct.GPR, %struct.GPR* %6263, i32 0, i32 1
  %6265 = getelementptr inbounds %struct.Reg, %struct.Reg* %6264, i32 0, i32 0
  %EAX.i308 = bitcast %union.anon* %6265 to i32*
  %6266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6267 = getelementptr inbounds %struct.GPR, %struct.GPR* %6266, i32 0, i32 15
  %6268 = getelementptr inbounds %struct.Reg, %struct.Reg* %6267, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %6268 to i64*
  %6269 = load i64, i64* %RBP.i309
  %6270 = sub i64 %6269, 52
  %6271 = load i32, i32* %EAX.i308
  %6272 = zext i32 %6271 to i64
  %6273 = load i64, i64* %PC.i307
  %6274 = add i64 %6273, 3
  store i64 %6274, i64* %PC.i307
  %6275 = inttoptr i64 %6270 to i32*
  store i32 %6271, i32* %6275
  store %struct.Memory* %loadMem_443c58, %struct.Memory** %MEMORY
  br label %block_.L_443c5b

block_.L_443c5b:                                  ; preds = %block_.L_443daa, %block_443c4b
  %loadMem_443c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6277 = getelementptr inbounds %struct.GPR, %struct.GPR* %6276, i32 0, i32 33
  %6278 = getelementptr inbounds %struct.Reg, %struct.Reg* %6277, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %6278 to i64*
  %6279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6280 = getelementptr inbounds %struct.GPR, %struct.GPR* %6279, i32 0, i32 1
  %6281 = getelementptr inbounds %struct.Reg, %struct.Reg* %6280, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %6281 to i64*
  %6282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6283 = getelementptr inbounds %struct.GPR, %struct.GPR* %6282, i32 0, i32 15
  %6284 = getelementptr inbounds %struct.Reg, %struct.Reg* %6283, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %6284 to i64*
  %6285 = load i64, i64* %RBP.i306
  %6286 = sub i64 %6285, 52
  %6287 = load i64, i64* %PC.i304
  %6288 = add i64 %6287, 3
  store i64 %6288, i64* %PC.i304
  %6289 = inttoptr i64 %6286 to i32*
  %6290 = load i32, i32* %6289
  %6291 = zext i32 %6290 to i64
  store i64 %6291, i64* %RAX.i305, align 8
  store %struct.Memory* %loadMem_443c5b, %struct.Memory** %MEMORY
  %loadMem_443c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6293 = getelementptr inbounds %struct.GPR, %struct.GPR* %6292, i32 0, i32 33
  %6294 = getelementptr inbounds %struct.Reg, %struct.Reg* %6293, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %6294 to i64*
  %6295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6296 = getelementptr inbounds %struct.GPR, %struct.GPR* %6295, i32 0, i32 5
  %6297 = getelementptr inbounds %struct.Reg, %struct.Reg* %6296, i32 0, i32 0
  %RCX.i302 = bitcast %union.anon* %6297 to i64*
  %6298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6299 = getelementptr inbounds %struct.GPR, %struct.GPR* %6298, i32 0, i32 15
  %6300 = getelementptr inbounds %struct.Reg, %struct.Reg* %6299, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %6300 to i64*
  %6301 = load i64, i64* %RBP.i303
  %6302 = sub i64 %6301, 16
  %6303 = load i64, i64* %PC.i301
  %6304 = add i64 %6303, 4
  store i64 %6304, i64* %PC.i301
  %6305 = inttoptr i64 %6302 to i64*
  %6306 = load i64, i64* %6305
  store i64 %6306, i64* %RCX.i302, align 8
  store %struct.Memory* %loadMem_443c5e, %struct.Memory** %MEMORY
  %loadMem_443c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6308 = getelementptr inbounds %struct.GPR, %struct.GPR* %6307, i32 0, i32 33
  %6309 = getelementptr inbounds %struct.Reg, %struct.Reg* %6308, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %6309 to i64*
  %6310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6311 = getelementptr inbounds %struct.GPR, %struct.GPR* %6310, i32 0, i32 1
  %6312 = getelementptr inbounds %struct.Reg, %struct.Reg* %6311, i32 0, i32 0
  %EAX.i299 = bitcast %union.anon* %6312 to i32*
  %6313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6314 = getelementptr inbounds %struct.GPR, %struct.GPR* %6313, i32 0, i32 5
  %6315 = getelementptr inbounds %struct.Reg, %struct.Reg* %6314, i32 0, i32 0
  %RCX.i300 = bitcast %union.anon* %6315 to i64*
  %6316 = load i32, i32* %EAX.i299
  %6317 = zext i32 %6316 to i64
  %6318 = load i64, i64* %RCX.i300
  %6319 = add i64 %6318, 4
  %6320 = load i64, i64* %PC.i298
  %6321 = add i64 %6320, 3
  store i64 %6321, i64* %PC.i298
  %6322 = inttoptr i64 %6319 to i32*
  %6323 = load i32, i32* %6322
  %6324 = sub i32 %6316, %6323
  %6325 = icmp ult i32 %6316, %6323
  %6326 = zext i1 %6325 to i8
  %6327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6326, i8* %6327, align 1
  %6328 = and i32 %6324, 255
  %6329 = call i32 @llvm.ctpop.i32(i32 %6328)
  %6330 = trunc i32 %6329 to i8
  %6331 = and i8 %6330, 1
  %6332 = xor i8 %6331, 1
  %6333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6332, i8* %6333, align 1
  %6334 = xor i32 %6323, %6316
  %6335 = xor i32 %6334, %6324
  %6336 = lshr i32 %6335, 4
  %6337 = trunc i32 %6336 to i8
  %6338 = and i8 %6337, 1
  %6339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6338, i8* %6339, align 1
  %6340 = icmp eq i32 %6324, 0
  %6341 = zext i1 %6340 to i8
  %6342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6341, i8* %6342, align 1
  %6343 = lshr i32 %6324, 31
  %6344 = trunc i32 %6343 to i8
  %6345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6344, i8* %6345, align 1
  %6346 = lshr i32 %6316, 31
  %6347 = lshr i32 %6323, 31
  %6348 = xor i32 %6347, %6346
  %6349 = xor i32 %6343, %6346
  %6350 = add i32 %6349, %6348
  %6351 = icmp eq i32 %6350, 2
  %6352 = zext i1 %6351 to i8
  %6353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6352, i8* %6353, align 1
  store %struct.Memory* %loadMem_443c62, %struct.Memory** %MEMORY
  %loadMem_443c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6355 = getelementptr inbounds %struct.GPR, %struct.GPR* %6354, i32 0, i32 33
  %6356 = getelementptr inbounds %struct.Reg, %struct.Reg* %6355, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %6356 to i64*
  %6357 = load i64, i64* %PC.i297
  %6358 = add i64 %6357, 339
  %6359 = load i64, i64* %PC.i297
  %6360 = add i64 %6359, 6
  %6361 = load i64, i64* %PC.i297
  %6362 = add i64 %6361, 6
  store i64 %6362, i64* %PC.i297
  %6363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6364 = load i8, i8* %6363, align 1
  %6365 = icmp ne i8 %6364, 0
  %6366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6367 = load i8, i8* %6366, align 1
  %6368 = icmp ne i8 %6367, 0
  %6369 = xor i1 %6365, %6368
  %6370 = xor i1 %6369, true
  %6371 = zext i1 %6370 to i8
  store i8 %6371, i8* %BRANCH_TAKEN, align 1
  %6372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6373 = select i1 %6369, i64 %6360, i64 %6358
  store i64 %6373, i64* %6372, align 8
  store %struct.Memory* %loadMem_443c65, %struct.Memory** %MEMORY
  %loadBr_443c65 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443c65 = icmp eq i8 %loadBr_443c65, 1
  br i1 %cmpBr_443c65, label %block_.L_443db8, label %block_443c6b

block_443c6b:                                     ; preds = %block_.L_443c5b
  %loadMem_443c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6375 = getelementptr inbounds %struct.GPR, %struct.GPR* %6374, i32 0, i32 33
  %6376 = getelementptr inbounds %struct.Reg, %struct.Reg* %6375, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %6376 to i64*
  %6377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6378 = getelementptr inbounds %struct.GPR, %struct.GPR* %6377, i32 0, i32 1
  %6379 = getelementptr inbounds %struct.Reg, %struct.Reg* %6378, i32 0, i32 0
  %RAX.i295 = bitcast %union.anon* %6379 to i64*
  %6380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6381 = getelementptr inbounds %struct.GPR, %struct.GPR* %6380, i32 0, i32 15
  %6382 = getelementptr inbounds %struct.Reg, %struct.Reg* %6381, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %6382 to i64*
  %6383 = load i64, i64* %RBP.i296
  %6384 = sub i64 %6383, 16
  %6385 = load i64, i64* %PC.i294
  %6386 = add i64 %6385, 4
  store i64 %6386, i64* %PC.i294
  %6387 = inttoptr i64 %6384 to i64*
  %6388 = load i64, i64* %6387
  store i64 %6388, i64* %RAX.i295, align 8
  store %struct.Memory* %loadMem_443c6b, %struct.Memory** %MEMORY
  %loadMem_443c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6390 = getelementptr inbounds %struct.GPR, %struct.GPR* %6389, i32 0, i32 33
  %6391 = getelementptr inbounds %struct.Reg, %struct.Reg* %6390, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %6391 to i64*
  %6392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6393 = getelementptr inbounds %struct.GPR, %struct.GPR* %6392, i32 0, i32 1
  %6394 = getelementptr inbounds %struct.Reg, %struct.Reg* %6393, i32 0, i32 0
  %RAX.i293 = bitcast %union.anon* %6394 to i64*
  %6395 = load i64, i64* %RAX.i293
  %6396 = add i64 %6395, 24
  %6397 = load i64, i64* %PC.i292
  %6398 = add i64 %6397, 4
  store i64 %6398, i64* %PC.i292
  %6399 = inttoptr i64 %6396 to i64*
  %6400 = load i64, i64* %6399
  store i64 %6400, i64* %RAX.i293, align 8
  store %struct.Memory* %loadMem_443c6f, %struct.Memory** %MEMORY
  %loadMem_443c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6402 = getelementptr inbounds %struct.GPR, %struct.GPR* %6401, i32 0, i32 33
  %6403 = getelementptr inbounds %struct.Reg, %struct.Reg* %6402, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %6403 to i64*
  %6404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6405 = getelementptr inbounds %struct.GPR, %struct.GPR* %6404, i32 0, i32 5
  %6406 = getelementptr inbounds %struct.Reg, %struct.Reg* %6405, i32 0, i32 0
  %RCX.i290 = bitcast %union.anon* %6406 to i64*
  %6407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6408 = getelementptr inbounds %struct.GPR, %struct.GPR* %6407, i32 0, i32 15
  %6409 = getelementptr inbounds %struct.Reg, %struct.Reg* %6408, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %6409 to i64*
  %6410 = load i64, i64* %RBP.i291
  %6411 = sub i64 %6410, 52
  %6412 = load i64, i64* %PC.i289
  %6413 = add i64 %6412, 4
  store i64 %6413, i64* %PC.i289
  %6414 = inttoptr i64 %6411 to i32*
  %6415 = load i32, i32* %6414
  %6416 = sext i32 %6415 to i64
  store i64 %6416, i64* %RCX.i290, align 8
  store %struct.Memory* %loadMem_443c73, %struct.Memory** %MEMORY
  %loadMem_443c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6418 = getelementptr inbounds %struct.GPR, %struct.GPR* %6417, i32 0, i32 33
  %6419 = getelementptr inbounds %struct.Reg, %struct.Reg* %6418, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %6419 to i64*
  %6420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6421 = getelementptr inbounds %struct.GPR, %struct.GPR* %6420, i32 0, i32 5
  %6422 = getelementptr inbounds %struct.Reg, %struct.Reg* %6421, i32 0, i32 0
  %RCX.i288 = bitcast %union.anon* %6422 to i64*
  %6423 = load i64, i64* %RCX.i288
  %6424 = load i64, i64* %PC.i287
  %6425 = add i64 %6424, 4
  store i64 %6425, i64* %PC.i287
  %6426 = shl i64 %6423, 3
  %6427 = icmp slt i64 %6426, 0
  %6428 = shl i64 %6426, 1
  store i64 %6428, i64* %RCX.i288, align 8
  %6429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6430 = zext i1 %6427 to i8
  store i8 %6430, i8* %6429, align 1
  %6431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6432 = trunc i64 %6428 to i32
  %6433 = and i32 %6432, 254
  %6434 = call i32 @llvm.ctpop.i32(i32 %6433)
  %6435 = trunc i32 %6434 to i8
  %6436 = and i8 %6435, 1
  %6437 = xor i8 %6436, 1
  store i8 %6437, i8* %6431, align 1
  %6438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6438, align 1
  %6439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6440 = icmp eq i64 %6428, 0
  %6441 = zext i1 %6440 to i8
  store i8 %6441, i8* %6439, align 1
  %6442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6443 = lshr i64 %6428, 63
  %6444 = trunc i64 %6443 to i8
  store i8 %6444, i8* %6442, align 1
  %6445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6445, align 1
  store %struct.Memory* %loadMem_443c77, %struct.Memory** %MEMORY
  %loadMem_443c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6447 = getelementptr inbounds %struct.GPR, %struct.GPR* %6446, i32 0, i32 33
  %6448 = getelementptr inbounds %struct.Reg, %struct.Reg* %6447, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %6448 to i64*
  %6449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6450 = getelementptr inbounds %struct.GPR, %struct.GPR* %6449, i32 0, i32 1
  %6451 = getelementptr inbounds %struct.Reg, %struct.Reg* %6450, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %6451 to i64*
  %6452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6453 = getelementptr inbounds %struct.GPR, %struct.GPR* %6452, i32 0, i32 5
  %6454 = getelementptr inbounds %struct.Reg, %struct.Reg* %6453, i32 0, i32 0
  %RCX.i286 = bitcast %union.anon* %6454 to i64*
  %6455 = load i64, i64* %RAX.i285
  %6456 = load i64, i64* %RCX.i286
  %6457 = load i64, i64* %PC.i284
  %6458 = add i64 %6457, 3
  store i64 %6458, i64* %PC.i284
  %6459 = add i64 %6456, %6455
  store i64 %6459, i64* %RAX.i285, align 8
  %6460 = icmp ult i64 %6459, %6455
  %6461 = icmp ult i64 %6459, %6456
  %6462 = or i1 %6460, %6461
  %6463 = zext i1 %6462 to i8
  %6464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6463, i8* %6464, align 1
  %6465 = trunc i64 %6459 to i32
  %6466 = and i32 %6465, 255
  %6467 = call i32 @llvm.ctpop.i32(i32 %6466)
  %6468 = trunc i32 %6467 to i8
  %6469 = and i8 %6468, 1
  %6470 = xor i8 %6469, 1
  %6471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6470, i8* %6471, align 1
  %6472 = xor i64 %6456, %6455
  %6473 = xor i64 %6472, %6459
  %6474 = lshr i64 %6473, 4
  %6475 = trunc i64 %6474 to i8
  %6476 = and i8 %6475, 1
  %6477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6476, i8* %6477, align 1
  %6478 = icmp eq i64 %6459, 0
  %6479 = zext i1 %6478 to i8
  %6480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6479, i8* %6480, align 1
  %6481 = lshr i64 %6459, 63
  %6482 = trunc i64 %6481 to i8
  %6483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6482, i8* %6483, align 1
  %6484 = lshr i64 %6455, 63
  %6485 = lshr i64 %6456, 63
  %6486 = xor i64 %6481, %6484
  %6487 = xor i64 %6481, %6485
  %6488 = add i64 %6486, %6487
  %6489 = icmp eq i64 %6488, 2
  %6490 = zext i1 %6489 to i8
  %6491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6490, i8* %6491, align 1
  store %struct.Memory* %loadMem_443c7b, %struct.Memory** %MEMORY
  %loadMem_443c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6493 = getelementptr inbounds %struct.GPR, %struct.GPR* %6492, i32 0, i32 33
  %6494 = getelementptr inbounds %struct.Reg, %struct.Reg* %6493, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %6494 to i64*
  %6495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6496 = getelementptr inbounds %struct.GPR, %struct.GPR* %6495, i32 0, i32 1
  %6497 = getelementptr inbounds %struct.Reg, %struct.Reg* %6496, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %6497 to i64*
  %6498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6499 = getelementptr inbounds %struct.GPR, %struct.GPR* %6498, i32 0, i32 7
  %6500 = getelementptr inbounds %struct.Reg, %struct.Reg* %6499, i32 0, i32 0
  %RDX.i283 = bitcast %union.anon* %6500 to i64*
  %6501 = load i64, i64* %RAX.i282
  %6502 = load i64, i64* %PC.i281
  %6503 = add i64 %6502, 2
  store i64 %6503, i64* %PC.i281
  %6504 = inttoptr i64 %6501 to i32*
  %6505 = load i32, i32* %6504
  %6506 = zext i32 %6505 to i64
  store i64 %6506, i64* %RDX.i283, align 8
  store %struct.Memory* %loadMem_443c7e, %struct.Memory** %MEMORY
  %loadMem_443c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6508 = getelementptr inbounds %struct.GPR, %struct.GPR* %6507, i32 0, i32 33
  %6509 = getelementptr inbounds %struct.Reg, %struct.Reg* %6508, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %6509 to i64*
  %6510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6511 = getelementptr inbounds %struct.GPR, %struct.GPR* %6510, i32 0, i32 7
  %6512 = getelementptr inbounds %struct.Reg, %struct.Reg* %6511, i32 0, i32 0
  %EDX.i279 = bitcast %union.anon* %6512 to i32*
  %6513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6514 = getelementptr inbounds %struct.GPR, %struct.GPR* %6513, i32 0, i32 15
  %6515 = getelementptr inbounds %struct.Reg, %struct.Reg* %6514, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %6515 to i64*
  %6516 = load i32, i32* %EDX.i279
  %6517 = zext i32 %6516 to i64
  %6518 = load i64, i64* %RBP.i280
  %6519 = sub i64 %6518, 56
  %6520 = load i64, i64* %PC.i278
  %6521 = add i64 %6520, 3
  store i64 %6521, i64* %PC.i278
  %6522 = inttoptr i64 %6519 to i32*
  %6523 = load i32, i32* %6522
  %6524 = sub i32 %6516, %6523
  %6525 = icmp ult i32 %6516, %6523
  %6526 = zext i1 %6525 to i8
  %6527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6526, i8* %6527, align 1
  %6528 = and i32 %6524, 255
  %6529 = call i32 @llvm.ctpop.i32(i32 %6528)
  %6530 = trunc i32 %6529 to i8
  %6531 = and i8 %6530, 1
  %6532 = xor i8 %6531, 1
  %6533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6532, i8* %6533, align 1
  %6534 = xor i32 %6523, %6516
  %6535 = xor i32 %6534, %6524
  %6536 = lshr i32 %6535, 4
  %6537 = trunc i32 %6536 to i8
  %6538 = and i8 %6537, 1
  %6539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6538, i8* %6539, align 1
  %6540 = icmp eq i32 %6524, 0
  %6541 = zext i1 %6540 to i8
  %6542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6541, i8* %6542, align 1
  %6543 = lshr i32 %6524, 31
  %6544 = trunc i32 %6543 to i8
  %6545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6544, i8* %6545, align 1
  %6546 = lshr i32 %6516, 31
  %6547 = lshr i32 %6523, 31
  %6548 = xor i32 %6547, %6546
  %6549 = xor i32 %6543, %6546
  %6550 = add i32 %6549, %6548
  %6551 = icmp eq i32 %6550, 2
  %6552 = zext i1 %6551 to i8
  %6553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6552, i8* %6553, align 1
  store %struct.Memory* %loadMem_443c80, %struct.Memory** %MEMORY
  %loadMem_443c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6555 = getelementptr inbounds %struct.GPR, %struct.GPR* %6554, i32 0, i32 33
  %6556 = getelementptr inbounds %struct.Reg, %struct.Reg* %6555, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %6556 to i64*
  %6557 = load i64, i64* %PC.i277
  %6558 = add i64 %6557, 290
  %6559 = load i64, i64* %PC.i277
  %6560 = add i64 %6559, 6
  %6561 = load i64, i64* %PC.i277
  %6562 = add i64 %6561, 6
  store i64 %6562, i64* %PC.i277
  %6563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6564 = load i8, i8* %6563, align 1
  %6565 = icmp eq i8 %6564, 0
  %6566 = zext i1 %6565 to i8
  store i8 %6566, i8* %BRANCH_TAKEN, align 1
  %6567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6568 = select i1 %6565, i64 %6558, i64 %6560
  store i64 %6568, i64* %6567, align 8
  store %struct.Memory* %loadMem_443c83, %struct.Memory** %MEMORY
  %loadBr_443c83 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443c83 = icmp eq i8 %loadBr_443c83, 1
  br i1 %cmpBr_443c83, label %block_.L_443da5, label %block_443c89

block_443c89:                                     ; preds = %block_443c6b
  %loadMem_443c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6570 = getelementptr inbounds %struct.GPR, %struct.GPR* %6569, i32 0, i32 33
  %6571 = getelementptr inbounds %struct.Reg, %struct.Reg* %6570, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %6571 to i64*
  %6572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6573 = getelementptr inbounds %struct.GPR, %struct.GPR* %6572, i32 0, i32 1
  %6574 = getelementptr inbounds %struct.Reg, %struct.Reg* %6573, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %6574 to i64*
  %6575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6576 = getelementptr inbounds %struct.GPR, %struct.GPR* %6575, i32 0, i32 15
  %6577 = getelementptr inbounds %struct.Reg, %struct.Reg* %6576, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %6577 to i64*
  %6578 = load i64, i64* %RBP.i276
  %6579 = sub i64 %6578, 16
  %6580 = load i64, i64* %PC.i274
  %6581 = add i64 %6580, 4
  store i64 %6581, i64* %PC.i274
  %6582 = inttoptr i64 %6579 to i64*
  %6583 = load i64, i64* %6582
  store i64 %6583, i64* %RAX.i275, align 8
  store %struct.Memory* %loadMem_443c89, %struct.Memory** %MEMORY
  %loadMem_443c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6585 = getelementptr inbounds %struct.GPR, %struct.GPR* %6584, i32 0, i32 33
  %6586 = getelementptr inbounds %struct.Reg, %struct.Reg* %6585, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %6586 to i64*
  %6587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6588 = getelementptr inbounds %struct.GPR, %struct.GPR* %6587, i32 0, i32 1
  %6589 = getelementptr inbounds %struct.Reg, %struct.Reg* %6588, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %6589 to i64*
  %6590 = load i64, i64* %RAX.i273
  %6591 = add i64 %6590, 24
  %6592 = load i64, i64* %PC.i272
  %6593 = add i64 %6592, 4
  store i64 %6593, i64* %PC.i272
  %6594 = inttoptr i64 %6591 to i64*
  %6595 = load i64, i64* %6594
  store i64 %6595, i64* %RAX.i273, align 8
  store %struct.Memory* %loadMem_443c8d, %struct.Memory** %MEMORY
  %loadMem_443c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6597 = getelementptr inbounds %struct.GPR, %struct.GPR* %6596, i32 0, i32 33
  %6598 = getelementptr inbounds %struct.Reg, %struct.Reg* %6597, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %6598 to i64*
  %6599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6600 = getelementptr inbounds %struct.GPR, %struct.GPR* %6599, i32 0, i32 5
  %6601 = getelementptr inbounds %struct.Reg, %struct.Reg* %6600, i32 0, i32 0
  %RCX.i270 = bitcast %union.anon* %6601 to i64*
  %6602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6603 = getelementptr inbounds %struct.GPR, %struct.GPR* %6602, i32 0, i32 15
  %6604 = getelementptr inbounds %struct.Reg, %struct.Reg* %6603, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %6604 to i64*
  %6605 = load i64, i64* %RBP.i271
  %6606 = sub i64 %6605, 52
  %6607 = load i64, i64* %PC.i269
  %6608 = add i64 %6607, 4
  store i64 %6608, i64* %PC.i269
  %6609 = inttoptr i64 %6606 to i32*
  %6610 = load i32, i32* %6609
  %6611 = sext i32 %6610 to i64
  store i64 %6611, i64* %RCX.i270, align 8
  store %struct.Memory* %loadMem_443c91, %struct.Memory** %MEMORY
  %loadMem_443c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6613 = getelementptr inbounds %struct.GPR, %struct.GPR* %6612, i32 0, i32 33
  %6614 = getelementptr inbounds %struct.Reg, %struct.Reg* %6613, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %6614 to i64*
  %6615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6616 = getelementptr inbounds %struct.GPR, %struct.GPR* %6615, i32 0, i32 5
  %6617 = getelementptr inbounds %struct.Reg, %struct.Reg* %6616, i32 0, i32 0
  %RCX.i268 = bitcast %union.anon* %6617 to i64*
  %6618 = load i64, i64* %RCX.i268
  %6619 = load i64, i64* %PC.i267
  %6620 = add i64 %6619, 4
  store i64 %6620, i64* %PC.i267
  %6621 = shl i64 %6618, 3
  %6622 = icmp slt i64 %6621, 0
  %6623 = shl i64 %6621, 1
  store i64 %6623, i64* %RCX.i268, align 8
  %6624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6625 = zext i1 %6622 to i8
  store i8 %6625, i8* %6624, align 1
  %6626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6627 = trunc i64 %6623 to i32
  %6628 = and i32 %6627, 254
  %6629 = call i32 @llvm.ctpop.i32(i32 %6628)
  %6630 = trunc i32 %6629 to i8
  %6631 = and i8 %6630, 1
  %6632 = xor i8 %6631, 1
  store i8 %6632, i8* %6626, align 1
  %6633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6633, align 1
  %6634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6635 = icmp eq i64 %6623, 0
  %6636 = zext i1 %6635 to i8
  store i8 %6636, i8* %6634, align 1
  %6637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6638 = lshr i64 %6623, 63
  %6639 = trunc i64 %6638 to i8
  store i8 %6639, i8* %6637, align 1
  %6640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6640, align 1
  store %struct.Memory* %loadMem_443c95, %struct.Memory** %MEMORY
  %loadMem_443c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6642 = getelementptr inbounds %struct.GPR, %struct.GPR* %6641, i32 0, i32 33
  %6643 = getelementptr inbounds %struct.Reg, %struct.Reg* %6642, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %6643 to i64*
  %6644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6645 = getelementptr inbounds %struct.GPR, %struct.GPR* %6644, i32 0, i32 1
  %6646 = getelementptr inbounds %struct.Reg, %struct.Reg* %6645, i32 0, i32 0
  %RAX.i265 = bitcast %union.anon* %6646 to i64*
  %6647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6648 = getelementptr inbounds %struct.GPR, %struct.GPR* %6647, i32 0, i32 5
  %6649 = getelementptr inbounds %struct.Reg, %struct.Reg* %6648, i32 0, i32 0
  %RCX.i266 = bitcast %union.anon* %6649 to i64*
  %6650 = load i64, i64* %RAX.i265
  %6651 = load i64, i64* %RCX.i266
  %6652 = load i64, i64* %PC.i264
  %6653 = add i64 %6652, 3
  store i64 %6653, i64* %PC.i264
  %6654 = add i64 %6651, %6650
  store i64 %6654, i64* %RAX.i265, align 8
  %6655 = icmp ult i64 %6654, %6650
  %6656 = icmp ult i64 %6654, %6651
  %6657 = or i1 %6655, %6656
  %6658 = zext i1 %6657 to i8
  %6659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6658, i8* %6659, align 1
  %6660 = trunc i64 %6654 to i32
  %6661 = and i32 %6660, 255
  %6662 = call i32 @llvm.ctpop.i32(i32 %6661)
  %6663 = trunc i32 %6662 to i8
  %6664 = and i8 %6663, 1
  %6665 = xor i8 %6664, 1
  %6666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6665, i8* %6666, align 1
  %6667 = xor i64 %6651, %6650
  %6668 = xor i64 %6667, %6654
  %6669 = lshr i64 %6668, 4
  %6670 = trunc i64 %6669 to i8
  %6671 = and i8 %6670, 1
  %6672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6671, i8* %6672, align 1
  %6673 = icmp eq i64 %6654, 0
  %6674 = zext i1 %6673 to i8
  %6675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6674, i8* %6675, align 1
  %6676 = lshr i64 %6654, 63
  %6677 = trunc i64 %6676 to i8
  %6678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6677, i8* %6678, align 1
  %6679 = lshr i64 %6650, 63
  %6680 = lshr i64 %6651, 63
  %6681 = xor i64 %6676, %6679
  %6682 = xor i64 %6676, %6680
  %6683 = add i64 %6681, %6682
  %6684 = icmp eq i64 %6683, 2
  %6685 = zext i1 %6684 to i8
  %6686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6685, i8* %6686, align 1
  store %struct.Memory* %loadMem_443c99, %struct.Memory** %MEMORY
  %loadMem_443c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6688 = getelementptr inbounds %struct.GPR, %struct.GPR* %6687, i32 0, i32 33
  %6689 = getelementptr inbounds %struct.Reg, %struct.Reg* %6688, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %6689 to i64*
  %6690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6691 = getelementptr inbounds %struct.GPR, %struct.GPR* %6690, i32 0, i32 1
  %6692 = getelementptr inbounds %struct.Reg, %struct.Reg* %6691, i32 0, i32 0
  %RAX.i263 = bitcast %union.anon* %6692 to i64*
  %6693 = load i64, i64* %RAX.i263
  %6694 = add i64 %6693, 8
  %6695 = load i64, i64* %PC.i262
  %6696 = add i64 %6695, 4
  store i64 %6696, i64* %PC.i262
  %6697 = inttoptr i64 %6694 to i64*
  %6698 = load i64, i64* %6697
  store i64 %6698, i64* %RAX.i263, align 8
  store %struct.Memory* %loadMem_443c9c, %struct.Memory** %MEMORY
  %loadMem_443ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6700 = getelementptr inbounds %struct.GPR, %struct.GPR* %6699, i32 0, i32 33
  %6701 = getelementptr inbounds %struct.Reg, %struct.Reg* %6700, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %6701 to i64*
  %6702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6703 = getelementptr inbounds %struct.GPR, %struct.GPR* %6702, i32 0, i32 1
  %6704 = getelementptr inbounds %struct.Reg, %struct.Reg* %6703, i32 0, i32 0
  %RAX.i260 = bitcast %union.anon* %6704 to i64*
  %6705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6706 = getelementptr inbounds %struct.GPR, %struct.GPR* %6705, i32 0, i32 7
  %6707 = getelementptr inbounds %struct.Reg, %struct.Reg* %6706, i32 0, i32 0
  %RDX.i261 = bitcast %union.anon* %6707 to i64*
  %6708 = load i64, i64* %RAX.i260
  %6709 = add i64 %6708, 120
  %6710 = load i64, i64* %PC.i259
  %6711 = add i64 %6710, 3
  store i64 %6711, i64* %PC.i259
  %6712 = inttoptr i64 %6709 to i32*
  %6713 = load i32, i32* %6712
  %6714 = zext i32 %6713 to i64
  store i64 %6714, i64* %RDX.i261, align 8
  store %struct.Memory* %loadMem_443ca0, %struct.Memory** %MEMORY
  %loadMem_443ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6716 = getelementptr inbounds %struct.GPR, %struct.GPR* %6715, i32 0, i32 33
  %6717 = getelementptr inbounds %struct.Reg, %struct.Reg* %6716, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %6717 to i64*
  %6718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6719 = getelementptr inbounds %struct.GPR, %struct.GPR* %6718, i32 0, i32 7
  %6720 = getelementptr inbounds %struct.Reg, %struct.Reg* %6719, i32 0, i32 0
  %RDX.i258 = bitcast %union.anon* %6720 to i64*
  %6721 = load i64, i64* %RDX.i258
  %6722 = load i64, i64* %PC.i257
  %6723 = add i64 %6722, 6
  store i64 %6723, i64* %PC.i257
  %6724 = and i64 512, %6721
  %6725 = trunc i64 %6724 to i32
  store i64 %6724, i64* %RDX.i258, align 8
  %6726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6726, align 1
  %6727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6727, align 1
  %6728 = icmp eq i32 %6725, 0
  %6729 = zext i1 %6728 to i8
  %6730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6729, i8* %6730, align 1
  %6731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6731, align 1
  %6732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6732, align 1
  %6733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6733, align 1
  store %struct.Memory* %loadMem_443ca3, %struct.Memory** %MEMORY
  %loadMem_443ca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6735 = getelementptr inbounds %struct.GPR, %struct.GPR* %6734, i32 0, i32 33
  %6736 = getelementptr inbounds %struct.Reg, %struct.Reg* %6735, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %6736 to i64*
  %6737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6738 = getelementptr inbounds %struct.GPR, %struct.GPR* %6737, i32 0, i32 7
  %6739 = getelementptr inbounds %struct.Reg, %struct.Reg* %6738, i32 0, i32 0
  %EDX.i256 = bitcast %union.anon* %6739 to i32*
  %6740 = load i32, i32* %EDX.i256
  %6741 = zext i32 %6740 to i64
  %6742 = load i64, i64* %PC.i255
  %6743 = add i64 %6742, 3
  store i64 %6743, i64* %PC.i255
  %6744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6744, align 1
  %6745 = and i32 %6740, 255
  %6746 = call i32 @llvm.ctpop.i32(i32 %6745)
  %6747 = trunc i32 %6746 to i8
  %6748 = and i8 %6747, 1
  %6749 = xor i8 %6748, 1
  %6750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6749, i8* %6750, align 1
  %6751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6751, align 1
  %6752 = icmp eq i32 %6740, 0
  %6753 = zext i1 %6752 to i8
  %6754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6753, i8* %6754, align 1
  %6755 = lshr i32 %6740, 31
  %6756 = trunc i32 %6755 to i8
  %6757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6756, i8* %6757, align 1
  %6758 = lshr i32 %6740, 31
  %6759 = xor i32 %6755, %6758
  %6760 = add i32 %6759, %6758
  %6761 = icmp eq i32 %6760, 2
  %6762 = zext i1 %6761 to i8
  %6763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6762, i8* %6763, align 1
  store %struct.Memory* %loadMem_443ca9, %struct.Memory** %MEMORY
  %loadMem_443cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %6764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6765 = getelementptr inbounds %struct.GPR, %struct.GPR* %6764, i32 0, i32 33
  %6766 = getelementptr inbounds %struct.Reg, %struct.Reg* %6765, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %6766 to i64*
  %6767 = load i64, i64* %PC.i254
  %6768 = add i64 %6767, 47
  %6769 = load i64, i64* %PC.i254
  %6770 = add i64 %6769, 6
  %6771 = load i64, i64* %PC.i254
  %6772 = add i64 %6771, 6
  store i64 %6772, i64* %PC.i254
  %6773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6774 = load i8, i8* %6773, align 1
  %6775 = icmp eq i8 %6774, 0
  %6776 = zext i1 %6775 to i8
  store i8 %6776, i8* %BRANCH_TAKEN, align 1
  %6777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6778 = select i1 %6775, i64 %6768, i64 %6770
  store i64 %6778, i64* %6777, align 8
  store %struct.Memory* %loadMem_443cac, %struct.Memory** %MEMORY
  %loadBr_443cac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443cac = icmp eq i8 %loadBr_443cac, 1
  br i1 %cmpBr_443cac, label %block_.L_443cdb, label %block_443cb2

block_443cb2:                                     ; preds = %block_443c89
  %loadMem_443cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6780 = getelementptr inbounds %struct.GPR, %struct.GPR* %6779, i32 0, i32 33
  %6781 = getelementptr inbounds %struct.Reg, %struct.Reg* %6780, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %6781 to i64*
  %6782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6783 = getelementptr inbounds %struct.GPR, %struct.GPR* %6782, i32 0, i32 1
  %6784 = getelementptr inbounds %struct.Reg, %struct.Reg* %6783, i32 0, i32 0
  %RAX.i252 = bitcast %union.anon* %6784 to i64*
  %6785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6786 = getelementptr inbounds %struct.GPR, %struct.GPR* %6785, i32 0, i32 15
  %6787 = getelementptr inbounds %struct.Reg, %struct.Reg* %6786, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %6787 to i64*
  %6788 = load i64, i64* %RBP.i253
  %6789 = sub i64 %6788, 16
  %6790 = load i64, i64* %PC.i251
  %6791 = add i64 %6790, 4
  store i64 %6791, i64* %PC.i251
  %6792 = inttoptr i64 %6789 to i64*
  %6793 = load i64, i64* %6792
  store i64 %6793, i64* %RAX.i252, align 8
  store %struct.Memory* %loadMem_443cb2, %struct.Memory** %MEMORY
  %loadMem_443cb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6795 = getelementptr inbounds %struct.GPR, %struct.GPR* %6794, i32 0, i32 33
  %6796 = getelementptr inbounds %struct.Reg, %struct.Reg* %6795, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %6796 to i64*
  %6797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6798 = getelementptr inbounds %struct.GPR, %struct.GPR* %6797, i32 0, i32 1
  %6799 = getelementptr inbounds %struct.Reg, %struct.Reg* %6798, i32 0, i32 0
  %RAX.i250 = bitcast %union.anon* %6799 to i64*
  %6800 = load i64, i64* %RAX.i250
  %6801 = add i64 %6800, 24
  %6802 = load i64, i64* %PC.i249
  %6803 = add i64 %6802, 4
  store i64 %6803, i64* %PC.i249
  %6804 = inttoptr i64 %6801 to i64*
  %6805 = load i64, i64* %6804
  store i64 %6805, i64* %RAX.i250, align 8
  store %struct.Memory* %loadMem_443cb6, %struct.Memory** %MEMORY
  %loadMem_443cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %6806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6807 = getelementptr inbounds %struct.GPR, %struct.GPR* %6806, i32 0, i32 33
  %6808 = getelementptr inbounds %struct.Reg, %struct.Reg* %6807, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %6808 to i64*
  %6809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6810 = getelementptr inbounds %struct.GPR, %struct.GPR* %6809, i32 0, i32 5
  %6811 = getelementptr inbounds %struct.Reg, %struct.Reg* %6810, i32 0, i32 0
  %RCX.i247 = bitcast %union.anon* %6811 to i64*
  %6812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6813 = getelementptr inbounds %struct.GPR, %struct.GPR* %6812, i32 0, i32 15
  %6814 = getelementptr inbounds %struct.Reg, %struct.Reg* %6813, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %6814 to i64*
  %6815 = load i64, i64* %RBP.i248
  %6816 = sub i64 %6815, 52
  %6817 = load i64, i64* %PC.i246
  %6818 = add i64 %6817, 4
  store i64 %6818, i64* %PC.i246
  %6819 = inttoptr i64 %6816 to i32*
  %6820 = load i32, i32* %6819
  %6821 = sext i32 %6820 to i64
  store i64 %6821, i64* %RCX.i247, align 8
  store %struct.Memory* %loadMem_443cba, %struct.Memory** %MEMORY
  %loadMem_443cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %6822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6823 = getelementptr inbounds %struct.GPR, %struct.GPR* %6822, i32 0, i32 33
  %6824 = getelementptr inbounds %struct.Reg, %struct.Reg* %6823, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %6824 to i64*
  %6825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6826 = getelementptr inbounds %struct.GPR, %struct.GPR* %6825, i32 0, i32 5
  %6827 = getelementptr inbounds %struct.Reg, %struct.Reg* %6826, i32 0, i32 0
  %RCX.i245 = bitcast %union.anon* %6827 to i64*
  %6828 = load i64, i64* %RCX.i245
  %6829 = load i64, i64* %PC.i244
  %6830 = add i64 %6829, 4
  store i64 %6830, i64* %PC.i244
  %6831 = shl i64 %6828, 3
  %6832 = icmp slt i64 %6831, 0
  %6833 = shl i64 %6831, 1
  store i64 %6833, i64* %RCX.i245, align 8
  %6834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6835 = zext i1 %6832 to i8
  store i8 %6835, i8* %6834, align 1
  %6836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6837 = trunc i64 %6833 to i32
  %6838 = and i32 %6837, 254
  %6839 = call i32 @llvm.ctpop.i32(i32 %6838)
  %6840 = trunc i32 %6839 to i8
  %6841 = and i8 %6840, 1
  %6842 = xor i8 %6841, 1
  store i8 %6842, i8* %6836, align 1
  %6843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6843, align 1
  %6844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6845 = icmp eq i64 %6833, 0
  %6846 = zext i1 %6845 to i8
  store i8 %6846, i8* %6844, align 1
  %6847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6848 = lshr i64 %6833, 63
  %6849 = trunc i64 %6848 to i8
  store i8 %6849, i8* %6847, align 1
  %6850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6850, align 1
  store %struct.Memory* %loadMem_443cbe, %struct.Memory** %MEMORY
  %loadMem_443cc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6852 = getelementptr inbounds %struct.GPR, %struct.GPR* %6851, i32 0, i32 33
  %6853 = getelementptr inbounds %struct.Reg, %struct.Reg* %6852, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %6853 to i64*
  %6854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6855 = getelementptr inbounds %struct.GPR, %struct.GPR* %6854, i32 0, i32 1
  %6856 = getelementptr inbounds %struct.Reg, %struct.Reg* %6855, i32 0, i32 0
  %RAX.i242 = bitcast %union.anon* %6856 to i64*
  %6857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6858 = getelementptr inbounds %struct.GPR, %struct.GPR* %6857, i32 0, i32 5
  %6859 = getelementptr inbounds %struct.Reg, %struct.Reg* %6858, i32 0, i32 0
  %RCX.i243 = bitcast %union.anon* %6859 to i64*
  %6860 = load i64, i64* %RAX.i242
  %6861 = load i64, i64* %RCX.i243
  %6862 = load i64, i64* %PC.i241
  %6863 = add i64 %6862, 3
  store i64 %6863, i64* %PC.i241
  %6864 = add i64 %6861, %6860
  store i64 %6864, i64* %RAX.i242, align 8
  %6865 = icmp ult i64 %6864, %6860
  %6866 = icmp ult i64 %6864, %6861
  %6867 = or i1 %6865, %6866
  %6868 = zext i1 %6867 to i8
  %6869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6868, i8* %6869, align 1
  %6870 = trunc i64 %6864 to i32
  %6871 = and i32 %6870, 255
  %6872 = call i32 @llvm.ctpop.i32(i32 %6871)
  %6873 = trunc i32 %6872 to i8
  %6874 = and i8 %6873, 1
  %6875 = xor i8 %6874, 1
  %6876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6875, i8* %6876, align 1
  %6877 = xor i64 %6861, %6860
  %6878 = xor i64 %6877, %6864
  %6879 = lshr i64 %6878, 4
  %6880 = trunc i64 %6879 to i8
  %6881 = and i8 %6880, 1
  %6882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6881, i8* %6882, align 1
  %6883 = icmp eq i64 %6864, 0
  %6884 = zext i1 %6883 to i8
  %6885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6884, i8* %6885, align 1
  %6886 = lshr i64 %6864, 63
  %6887 = trunc i64 %6886 to i8
  %6888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6887, i8* %6888, align 1
  %6889 = lshr i64 %6860, 63
  %6890 = lshr i64 %6861, 63
  %6891 = xor i64 %6886, %6889
  %6892 = xor i64 %6886, %6890
  %6893 = add i64 %6891, %6892
  %6894 = icmp eq i64 %6893, 2
  %6895 = zext i1 %6894 to i8
  %6896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6895, i8* %6896, align 1
  store %struct.Memory* %loadMem_443cc2, %struct.Memory** %MEMORY
  %loadMem_443cc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6898 = getelementptr inbounds %struct.GPR, %struct.GPR* %6897, i32 0, i32 33
  %6899 = getelementptr inbounds %struct.Reg, %struct.Reg* %6898, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %6899 to i64*
  %6900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6901 = getelementptr inbounds %struct.GPR, %struct.GPR* %6900, i32 0, i32 1
  %6902 = getelementptr inbounds %struct.Reg, %struct.Reg* %6901, i32 0, i32 0
  %RAX.i240 = bitcast %union.anon* %6902 to i64*
  %6903 = load i64, i64* %RAX.i240
  %6904 = add i64 %6903, 8
  %6905 = load i64, i64* %PC.i239
  %6906 = add i64 %6905, 4
  store i64 %6906, i64* %PC.i239
  %6907 = inttoptr i64 %6904 to i64*
  %6908 = load i64, i64* %6907
  store i64 %6908, i64* %RAX.i240, align 8
  store %struct.Memory* %loadMem_443cc5, %struct.Memory** %MEMORY
  %loadMem_443cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6910 = getelementptr inbounds %struct.GPR, %struct.GPR* %6909, i32 0, i32 33
  %6911 = getelementptr inbounds %struct.Reg, %struct.Reg* %6910, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %6911 to i64*
  %6912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6913 = getelementptr inbounds %struct.GPR, %struct.GPR* %6912, i32 0, i32 1
  %6914 = getelementptr inbounds %struct.Reg, %struct.Reg* %6913, i32 0, i32 0
  %RAX.i237 = bitcast %union.anon* %6914 to i64*
  %6915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6916 = getelementptr inbounds %struct.GPR, %struct.GPR* %6915, i32 0, i32 7
  %6917 = getelementptr inbounds %struct.Reg, %struct.Reg* %6916, i32 0, i32 0
  %RDX.i238 = bitcast %union.anon* %6917 to i64*
  %6918 = load i64, i64* %RAX.i237
  %6919 = add i64 %6918, 120
  %6920 = load i64, i64* %PC.i236
  %6921 = add i64 %6920, 3
  store i64 %6921, i64* %PC.i236
  %6922 = inttoptr i64 %6919 to i32*
  %6923 = load i32, i32* %6922
  %6924 = zext i32 %6923 to i64
  store i64 %6924, i64* %RDX.i238, align 8
  store %struct.Memory* %loadMem_443cc9, %struct.Memory** %MEMORY
  %loadMem_443ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6926 = getelementptr inbounds %struct.GPR, %struct.GPR* %6925, i32 0, i32 33
  %6927 = getelementptr inbounds %struct.Reg, %struct.Reg* %6926, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %6927 to i64*
  %6928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6929 = getelementptr inbounds %struct.GPR, %struct.GPR* %6928, i32 0, i32 7
  %6930 = getelementptr inbounds %struct.Reg, %struct.Reg* %6929, i32 0, i32 0
  %RDX.i235 = bitcast %union.anon* %6930 to i64*
  %6931 = load i64, i64* %RDX.i235
  %6932 = load i64, i64* %PC.i234
  %6933 = add i64 %6932, 6
  store i64 %6933, i64* %PC.i234
  %6934 = and i64 2048, %6931
  %6935 = trunc i64 %6934 to i32
  store i64 %6934, i64* %RDX.i235, align 8
  %6936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6936, align 1
  %6937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6937, align 1
  %6938 = icmp eq i32 %6935, 0
  %6939 = zext i1 %6938 to i8
  %6940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6939, i8* %6940, align 1
  %6941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6941, align 1
  %6942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6942, align 1
  %6943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6943, align 1
  store %struct.Memory* %loadMem_443ccc, %struct.Memory** %MEMORY
  %loadMem_443cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6945 = getelementptr inbounds %struct.GPR, %struct.GPR* %6944, i32 0, i32 33
  %6946 = getelementptr inbounds %struct.Reg, %struct.Reg* %6945, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %6946 to i64*
  %6947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6948 = getelementptr inbounds %struct.GPR, %struct.GPR* %6947, i32 0, i32 7
  %6949 = getelementptr inbounds %struct.Reg, %struct.Reg* %6948, i32 0, i32 0
  %EDX.i233 = bitcast %union.anon* %6949 to i32*
  %6950 = load i32, i32* %EDX.i233
  %6951 = zext i32 %6950 to i64
  %6952 = load i64, i64* %PC.i232
  %6953 = add i64 %6952, 3
  store i64 %6953, i64* %PC.i232
  %6954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6954, align 1
  %6955 = and i32 %6950, 255
  %6956 = call i32 @llvm.ctpop.i32(i32 %6955)
  %6957 = trunc i32 %6956 to i8
  %6958 = and i8 %6957, 1
  %6959 = xor i8 %6958, 1
  %6960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6959, i8* %6960, align 1
  %6961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6961, align 1
  %6962 = icmp eq i32 %6950, 0
  %6963 = zext i1 %6962 to i8
  %6964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6963, i8* %6964, align 1
  %6965 = lshr i32 %6950, 31
  %6966 = trunc i32 %6965 to i8
  %6967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6966, i8* %6967, align 1
  %6968 = lshr i32 %6950, 31
  %6969 = xor i32 %6965, %6968
  %6970 = add i32 %6969, %6968
  %6971 = icmp eq i32 %6970, 2
  %6972 = zext i1 %6971 to i8
  %6973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6972, i8* %6973, align 1
  store %struct.Memory* %loadMem_443cd2, %struct.Memory** %MEMORY
  %loadMem_443cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6975 = getelementptr inbounds %struct.GPR, %struct.GPR* %6974, i32 0, i32 33
  %6976 = getelementptr inbounds %struct.Reg, %struct.Reg* %6975, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %6976 to i64*
  %6977 = load i64, i64* %PC.i231
  %6978 = add i64 %6977, 208
  %6979 = load i64, i64* %PC.i231
  %6980 = add i64 %6979, 6
  %6981 = load i64, i64* %PC.i231
  %6982 = add i64 %6981, 6
  store i64 %6982, i64* %PC.i231
  %6983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6984 = load i8, i8* %6983, align 1
  %6985 = icmp eq i8 %6984, 0
  %6986 = zext i1 %6985 to i8
  store i8 %6986, i8* %BRANCH_TAKEN, align 1
  %6987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6988 = select i1 %6985, i64 %6978, i64 %6980
  store i64 %6988, i64* %6987, align 8
  store %struct.Memory* %loadMem_443cd5, %struct.Memory** %MEMORY
  %loadBr_443cd5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443cd5 = icmp eq i8 %loadBr_443cd5, 1
  br i1 %cmpBr_443cd5, label %block_.L_443da5, label %block_.L_443cdb

block_.L_443cdb:                                  ; preds = %block_443cb2, %block_443c89
  %loadMem_443cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6990 = getelementptr inbounds %struct.GPR, %struct.GPR* %6989, i32 0, i32 33
  %6991 = getelementptr inbounds %struct.Reg, %struct.Reg* %6990, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %6991 to i64*
  %6992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6993 = getelementptr inbounds %struct.GPR, %struct.GPR* %6992, i32 0, i32 11
  %6994 = getelementptr inbounds %struct.Reg, %struct.Reg* %6993, i32 0, i32 0
  %RDI.i229 = bitcast %union.anon* %6994 to i64*
  %6995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6996 = getelementptr inbounds %struct.GPR, %struct.GPR* %6995, i32 0, i32 15
  %6997 = getelementptr inbounds %struct.Reg, %struct.Reg* %6996, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %6997 to i64*
  %6998 = load i64, i64* %RBP.i230
  %6999 = sub i64 %6998, 56
  %7000 = load i64, i64* %PC.i228
  %7001 = add i64 %7000, 3
  store i64 %7001, i64* %PC.i228
  %7002 = inttoptr i64 %6999 to i32*
  %7003 = load i32, i32* %7002
  %7004 = zext i32 %7003 to i64
  store i64 %7004, i64* %RDI.i229, align 8
  store %struct.Memory* %loadMem_443cdb, %struct.Memory** %MEMORY
  %loadMem_443cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %7005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7006 = getelementptr inbounds %struct.GPR, %struct.GPR* %7005, i32 0, i32 33
  %7007 = getelementptr inbounds %struct.Reg, %struct.Reg* %7006, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %7007 to i64*
  %7008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7009 = getelementptr inbounds %struct.GPR, %struct.GPR* %7008, i32 0, i32 9
  %7010 = getelementptr inbounds %struct.Reg, %struct.Reg* %7009, i32 0, i32 0
  %RSI.i226 = bitcast %union.anon* %7010 to i64*
  %7011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7012 = getelementptr inbounds %struct.GPR, %struct.GPR* %7011, i32 0, i32 15
  %7013 = getelementptr inbounds %struct.Reg, %struct.Reg* %7012, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %7013 to i64*
  %7014 = load i64, i64* %RBP.i227
  %7015 = sub i64 %7014, 20
  %7016 = load i64, i64* %PC.i225
  %7017 = add i64 %7016, 3
  store i64 %7017, i64* %PC.i225
  %7018 = inttoptr i64 %7015 to i32*
  %7019 = load i32, i32* %7018
  %7020 = zext i32 %7019 to i64
  store i64 %7020, i64* %RSI.i226, align 8
  store %struct.Memory* %loadMem_443cde, %struct.Memory** %MEMORY
  %loadMem_443ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7022 = getelementptr inbounds %struct.GPR, %struct.GPR* %7021, i32 0, i32 33
  %7023 = getelementptr inbounds %struct.Reg, %struct.Reg* %7022, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %7023 to i64*
  %7024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7025 = getelementptr inbounds %struct.GPR, %struct.GPR* %7024, i32 0, i32 1
  %7026 = getelementptr inbounds %struct.Reg, %struct.Reg* %7025, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %7026 to i64*
  %7027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7028 = getelementptr inbounds %struct.GPR, %struct.GPR* %7027, i32 0, i32 15
  %7029 = getelementptr inbounds %struct.Reg, %struct.Reg* %7028, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %7029 to i64*
  %7030 = load i64, i64* %RBP.i224
  %7031 = sub i64 %7030, 16
  %7032 = load i64, i64* %PC.i222
  %7033 = add i64 %7032, 4
  store i64 %7033, i64* %PC.i222
  %7034 = inttoptr i64 %7031 to i64*
  %7035 = load i64, i64* %7034
  store i64 %7035, i64* %RAX.i223, align 8
  store %struct.Memory* %loadMem_443ce1, %struct.Memory** %MEMORY
  %loadMem_443ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7037 = getelementptr inbounds %struct.GPR, %struct.GPR* %7036, i32 0, i32 33
  %7038 = getelementptr inbounds %struct.Reg, %struct.Reg* %7037, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %7038 to i64*
  %7039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7040 = getelementptr inbounds %struct.GPR, %struct.GPR* %7039, i32 0, i32 1
  %7041 = getelementptr inbounds %struct.Reg, %struct.Reg* %7040, i32 0, i32 0
  %RAX.i221 = bitcast %union.anon* %7041 to i64*
  %7042 = load i64, i64* %RAX.i221
  %7043 = add i64 %7042, 24
  %7044 = load i64, i64* %PC.i220
  %7045 = add i64 %7044, 4
  store i64 %7045, i64* %PC.i220
  %7046 = inttoptr i64 %7043 to i64*
  %7047 = load i64, i64* %7046
  store i64 %7047, i64* %RAX.i221, align 8
  store %struct.Memory* %loadMem_443ce5, %struct.Memory** %MEMORY
  %loadMem_443ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7049 = getelementptr inbounds %struct.GPR, %struct.GPR* %7048, i32 0, i32 33
  %7050 = getelementptr inbounds %struct.Reg, %struct.Reg* %7049, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %7050 to i64*
  %7051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7052 = getelementptr inbounds %struct.GPR, %struct.GPR* %7051, i32 0, i32 5
  %7053 = getelementptr inbounds %struct.Reg, %struct.Reg* %7052, i32 0, i32 0
  %RCX.i218 = bitcast %union.anon* %7053 to i64*
  %7054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7055 = getelementptr inbounds %struct.GPR, %struct.GPR* %7054, i32 0, i32 15
  %7056 = getelementptr inbounds %struct.Reg, %struct.Reg* %7055, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %7056 to i64*
  %7057 = load i64, i64* %RBP.i219
  %7058 = sub i64 %7057, 52
  %7059 = load i64, i64* %PC.i217
  %7060 = add i64 %7059, 4
  store i64 %7060, i64* %PC.i217
  %7061 = inttoptr i64 %7058 to i32*
  %7062 = load i32, i32* %7061
  %7063 = sext i32 %7062 to i64
  store i64 %7063, i64* %RCX.i218, align 8
  store %struct.Memory* %loadMem_443ce9, %struct.Memory** %MEMORY
  %loadMem_443ced = load %struct.Memory*, %struct.Memory** %MEMORY
  %7064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7065 = getelementptr inbounds %struct.GPR, %struct.GPR* %7064, i32 0, i32 33
  %7066 = getelementptr inbounds %struct.Reg, %struct.Reg* %7065, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %7066 to i64*
  %7067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7068 = getelementptr inbounds %struct.GPR, %struct.GPR* %7067, i32 0, i32 5
  %7069 = getelementptr inbounds %struct.Reg, %struct.Reg* %7068, i32 0, i32 0
  %RCX.i216 = bitcast %union.anon* %7069 to i64*
  %7070 = load i64, i64* %RCX.i216
  %7071 = load i64, i64* %PC.i215
  %7072 = add i64 %7071, 4
  store i64 %7072, i64* %PC.i215
  %7073 = shl i64 %7070, 3
  %7074 = icmp slt i64 %7073, 0
  %7075 = shl i64 %7073, 1
  store i64 %7075, i64* %RCX.i216, align 8
  %7076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7077 = zext i1 %7074 to i8
  store i8 %7077, i8* %7076, align 1
  %7078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7079 = trunc i64 %7075 to i32
  %7080 = and i32 %7079, 254
  %7081 = call i32 @llvm.ctpop.i32(i32 %7080)
  %7082 = trunc i32 %7081 to i8
  %7083 = and i8 %7082, 1
  %7084 = xor i8 %7083, 1
  store i8 %7084, i8* %7078, align 1
  %7085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7085, align 1
  %7086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7087 = icmp eq i64 %7075, 0
  %7088 = zext i1 %7087 to i8
  store i8 %7088, i8* %7086, align 1
  %7089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7090 = lshr i64 %7075, 63
  %7091 = trunc i64 %7090 to i8
  store i8 %7091, i8* %7089, align 1
  %7092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7092, align 1
  store %struct.Memory* %loadMem_443ced, %struct.Memory** %MEMORY
  %loadMem_443cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7094 = getelementptr inbounds %struct.GPR, %struct.GPR* %7093, i32 0, i32 33
  %7095 = getelementptr inbounds %struct.Reg, %struct.Reg* %7094, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %7095 to i64*
  %7096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7097 = getelementptr inbounds %struct.GPR, %struct.GPR* %7096, i32 0, i32 1
  %7098 = getelementptr inbounds %struct.Reg, %struct.Reg* %7097, i32 0, i32 0
  %RAX.i213 = bitcast %union.anon* %7098 to i64*
  %7099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7100 = getelementptr inbounds %struct.GPR, %struct.GPR* %7099, i32 0, i32 5
  %7101 = getelementptr inbounds %struct.Reg, %struct.Reg* %7100, i32 0, i32 0
  %RCX.i214 = bitcast %union.anon* %7101 to i64*
  %7102 = load i64, i64* %RAX.i213
  %7103 = load i64, i64* %RCX.i214
  %7104 = load i64, i64* %PC.i212
  %7105 = add i64 %7104, 3
  store i64 %7105, i64* %PC.i212
  %7106 = add i64 %7103, %7102
  store i64 %7106, i64* %RAX.i213, align 8
  %7107 = icmp ult i64 %7106, %7102
  %7108 = icmp ult i64 %7106, %7103
  %7109 = or i1 %7107, %7108
  %7110 = zext i1 %7109 to i8
  %7111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7110, i8* %7111, align 1
  %7112 = trunc i64 %7106 to i32
  %7113 = and i32 %7112, 255
  %7114 = call i32 @llvm.ctpop.i32(i32 %7113)
  %7115 = trunc i32 %7114 to i8
  %7116 = and i8 %7115, 1
  %7117 = xor i8 %7116, 1
  %7118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7117, i8* %7118, align 1
  %7119 = xor i64 %7103, %7102
  %7120 = xor i64 %7119, %7106
  %7121 = lshr i64 %7120, 4
  %7122 = trunc i64 %7121 to i8
  %7123 = and i8 %7122, 1
  %7124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7123, i8* %7124, align 1
  %7125 = icmp eq i64 %7106, 0
  %7126 = zext i1 %7125 to i8
  %7127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7126, i8* %7127, align 1
  %7128 = lshr i64 %7106, 63
  %7129 = trunc i64 %7128 to i8
  %7130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7129, i8* %7130, align 1
  %7131 = lshr i64 %7102, 63
  %7132 = lshr i64 %7103, 63
  %7133 = xor i64 %7128, %7131
  %7134 = xor i64 %7128, %7132
  %7135 = add i64 %7133, %7134
  %7136 = icmp eq i64 %7135, 2
  %7137 = zext i1 %7136 to i8
  %7138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7137, i8* %7138, align 1
  store %struct.Memory* %loadMem_443cf1, %struct.Memory** %MEMORY
  %loadMem_443cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7140 = getelementptr inbounds %struct.GPR, %struct.GPR* %7139, i32 0, i32 33
  %7141 = getelementptr inbounds %struct.Reg, %struct.Reg* %7140, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %7141 to i64*
  %7142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7143 = getelementptr inbounds %struct.GPR, %struct.GPR* %7142, i32 0, i32 1
  %7144 = getelementptr inbounds %struct.Reg, %struct.Reg* %7143, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %7144 to i64*
  %7145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7146 = getelementptr inbounds %struct.GPR, %struct.GPR* %7145, i32 0, i32 7
  %7147 = getelementptr inbounds %struct.Reg, %struct.Reg* %7146, i32 0, i32 0
  %RDX.i211 = bitcast %union.anon* %7147 to i64*
  %7148 = load i64, i64* %RAX.i210
  %7149 = add i64 %7148, 8
  %7150 = load i64, i64* %PC.i209
  %7151 = add i64 %7150, 4
  store i64 %7151, i64* %PC.i209
  %7152 = inttoptr i64 %7149 to i64*
  %7153 = load i64, i64* %7152
  store i64 %7153, i64* %RDX.i211, align 8
  store %struct.Memory* %loadMem_443cf4, %struct.Memory** %MEMORY
  %loadMem_443cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7155 = getelementptr inbounds %struct.GPR, %struct.GPR* %7154, i32 0, i32 33
  %7156 = getelementptr inbounds %struct.Reg, %struct.Reg* %7155, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %7156 to i64*
  %7157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7158 = getelementptr inbounds %struct.GPR, %struct.GPR* %7157, i32 0, i32 1
  %7159 = getelementptr inbounds %struct.Reg, %struct.Reg* %7158, i32 0, i32 0
  %RAX.i207 = bitcast %union.anon* %7159 to i64*
  %7160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7161 = getelementptr inbounds %struct.GPR, %struct.GPR* %7160, i32 0, i32 15
  %7162 = getelementptr inbounds %struct.Reg, %struct.Reg* %7161, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %7162 to i64*
  %7163 = load i64, i64* %RBP.i208
  %7164 = sub i64 %7163, 16
  %7165 = load i64, i64* %PC.i206
  %7166 = add i64 %7165, 4
  store i64 %7166, i64* %PC.i206
  %7167 = inttoptr i64 %7164 to i64*
  %7168 = load i64, i64* %7167
  store i64 %7168, i64* %RAX.i207, align 8
  store %struct.Memory* %loadMem_443cf8, %struct.Memory** %MEMORY
  %loadMem_443cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7170 = getelementptr inbounds %struct.GPR, %struct.GPR* %7169, i32 0, i32 33
  %7171 = getelementptr inbounds %struct.Reg, %struct.Reg* %7170, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %7171 to i64*
  %7172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7173 = getelementptr inbounds %struct.GPR, %struct.GPR* %7172, i32 0, i32 1
  %7174 = getelementptr inbounds %struct.Reg, %struct.Reg* %7173, i32 0, i32 0
  %RAX.i205 = bitcast %union.anon* %7174 to i64*
  %7175 = load i64, i64* %RAX.i205
  %7176 = add i64 %7175, 24
  %7177 = load i64, i64* %PC.i204
  %7178 = add i64 %7177, 4
  store i64 %7178, i64* %PC.i204
  %7179 = inttoptr i64 %7176 to i64*
  %7180 = load i64, i64* %7179
  store i64 %7180, i64* %RAX.i205, align 8
  store %struct.Memory* %loadMem_443cfc, %struct.Memory** %MEMORY
  %loadMem_443d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7182 = getelementptr inbounds %struct.GPR, %struct.GPR* %7181, i32 0, i32 33
  %7183 = getelementptr inbounds %struct.Reg, %struct.Reg* %7182, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %7183 to i64*
  %7184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7185 = getelementptr inbounds %struct.GPR, %struct.GPR* %7184, i32 0, i32 5
  %7186 = getelementptr inbounds %struct.Reg, %struct.Reg* %7185, i32 0, i32 0
  %RCX.i202 = bitcast %union.anon* %7186 to i64*
  %7187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7188 = getelementptr inbounds %struct.GPR, %struct.GPR* %7187, i32 0, i32 15
  %7189 = getelementptr inbounds %struct.Reg, %struct.Reg* %7188, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %7189 to i64*
  %7190 = load i64, i64* %RBP.i203
  %7191 = sub i64 %7190, 52
  %7192 = load i64, i64* %PC.i201
  %7193 = add i64 %7192, 4
  store i64 %7193, i64* %PC.i201
  %7194 = inttoptr i64 %7191 to i32*
  %7195 = load i32, i32* %7194
  %7196 = sext i32 %7195 to i64
  store i64 %7196, i64* %RCX.i202, align 8
  store %struct.Memory* %loadMem_443d00, %struct.Memory** %MEMORY
  %loadMem_443d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7198 = getelementptr inbounds %struct.GPR, %struct.GPR* %7197, i32 0, i32 33
  %7199 = getelementptr inbounds %struct.Reg, %struct.Reg* %7198, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %7199 to i64*
  %7200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7201 = getelementptr inbounds %struct.GPR, %struct.GPR* %7200, i32 0, i32 5
  %7202 = getelementptr inbounds %struct.Reg, %struct.Reg* %7201, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %7202 to i64*
  %7203 = load i64, i64* %RCX.i200
  %7204 = load i64, i64* %PC.i199
  %7205 = add i64 %7204, 4
  store i64 %7205, i64* %PC.i199
  %7206 = shl i64 %7203, 3
  %7207 = icmp slt i64 %7206, 0
  %7208 = shl i64 %7206, 1
  store i64 %7208, i64* %RCX.i200, align 8
  %7209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7210 = zext i1 %7207 to i8
  store i8 %7210, i8* %7209, align 1
  %7211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7212 = trunc i64 %7208 to i32
  %7213 = and i32 %7212, 254
  %7214 = call i32 @llvm.ctpop.i32(i32 %7213)
  %7215 = trunc i32 %7214 to i8
  %7216 = and i8 %7215, 1
  %7217 = xor i8 %7216, 1
  store i8 %7217, i8* %7211, align 1
  %7218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7218, align 1
  %7219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7220 = icmp eq i64 %7208, 0
  %7221 = zext i1 %7220 to i8
  store i8 %7221, i8* %7219, align 1
  %7222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7223 = lshr i64 %7208, 63
  %7224 = trunc i64 %7223 to i8
  store i8 %7224, i8* %7222, align 1
  %7225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7225, align 1
  store %struct.Memory* %loadMem_443d04, %struct.Memory** %MEMORY
  %loadMem_443d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7227 = getelementptr inbounds %struct.GPR, %struct.GPR* %7226, i32 0, i32 33
  %7228 = getelementptr inbounds %struct.Reg, %struct.Reg* %7227, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %7228 to i64*
  %7229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7230 = getelementptr inbounds %struct.GPR, %struct.GPR* %7229, i32 0, i32 1
  %7231 = getelementptr inbounds %struct.Reg, %struct.Reg* %7230, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %7231 to i64*
  %7232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7233 = getelementptr inbounds %struct.GPR, %struct.GPR* %7232, i32 0, i32 5
  %7234 = getelementptr inbounds %struct.Reg, %struct.Reg* %7233, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %7234 to i64*
  %7235 = load i64, i64* %RAX.i197
  %7236 = load i64, i64* %RCX.i198
  %7237 = load i64, i64* %PC.i196
  %7238 = add i64 %7237, 3
  store i64 %7238, i64* %PC.i196
  %7239 = add i64 %7236, %7235
  store i64 %7239, i64* %RAX.i197, align 8
  %7240 = icmp ult i64 %7239, %7235
  %7241 = icmp ult i64 %7239, %7236
  %7242 = or i1 %7240, %7241
  %7243 = zext i1 %7242 to i8
  %7244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7243, i8* %7244, align 1
  %7245 = trunc i64 %7239 to i32
  %7246 = and i32 %7245, 255
  %7247 = call i32 @llvm.ctpop.i32(i32 %7246)
  %7248 = trunc i32 %7247 to i8
  %7249 = and i8 %7248, 1
  %7250 = xor i8 %7249, 1
  %7251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7250, i8* %7251, align 1
  %7252 = xor i64 %7236, %7235
  %7253 = xor i64 %7252, %7239
  %7254 = lshr i64 %7253, 4
  %7255 = trunc i64 %7254 to i8
  %7256 = and i8 %7255, 1
  %7257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7256, i8* %7257, align 1
  %7258 = icmp eq i64 %7239, 0
  %7259 = zext i1 %7258 to i8
  %7260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7259, i8* %7260, align 1
  %7261 = lshr i64 %7239, 63
  %7262 = trunc i64 %7261 to i8
  %7263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7262, i8* %7263, align 1
  %7264 = lshr i64 %7235, 63
  %7265 = lshr i64 %7236, 63
  %7266 = xor i64 %7261, %7264
  %7267 = xor i64 %7261, %7265
  %7268 = add i64 %7266, %7267
  %7269 = icmp eq i64 %7268, 2
  %7270 = zext i1 %7269 to i8
  %7271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7270, i8* %7271, align 1
  store %struct.Memory* %loadMem_443d08, %struct.Memory** %MEMORY
  %loadMem_443d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7273 = getelementptr inbounds %struct.GPR, %struct.GPR* %7272, i32 0, i32 33
  %7274 = getelementptr inbounds %struct.Reg, %struct.Reg* %7273, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %7274 to i64*
  %7275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7276 = getelementptr inbounds %struct.GPR, %struct.GPR* %7275, i32 0, i32 1
  %7277 = getelementptr inbounds %struct.Reg, %struct.Reg* %7276, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %7277 to i64*
  %7278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7279 = getelementptr inbounds %struct.GPR, %struct.GPR* %7278, i32 0, i32 5
  %7280 = getelementptr inbounds %struct.Reg, %struct.Reg* %7279, i32 0, i32 0
  %RCX.i195 = bitcast %union.anon* %7280 to i64*
  %7281 = load i64, i64* %RAX.i194
  %7282 = add i64 %7281, 4
  %7283 = load i64, i64* %PC.i193
  %7284 = add i64 %7283, 3
  store i64 %7284, i64* %PC.i193
  %7285 = inttoptr i64 %7282 to i32*
  %7286 = load i32, i32* %7285
  %7287 = zext i32 %7286 to i64
  store i64 %7287, i64* %RCX.i195, align 8
  store %struct.Memory* %loadMem_443d0b, %struct.Memory** %MEMORY
  %loadMem1_443d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7289 = getelementptr inbounds %struct.GPR, %struct.GPR* %7288, i32 0, i32 33
  %7290 = getelementptr inbounds %struct.Reg, %struct.Reg* %7289, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %7290 to i64*
  %7291 = load i64, i64* %PC.i192
  %7292 = add i64 %7291, 4562
  %7293 = load i64, i64* %PC.i192
  %7294 = add i64 %7293, 5
  %7295 = load i64, i64* %PC.i192
  %7296 = add i64 %7295, 5
  store i64 %7296, i64* %PC.i192
  %7297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7298 = load i64, i64* %7297, align 8
  %7299 = add i64 %7298, -8
  %7300 = inttoptr i64 %7299 to i64*
  store i64 %7294, i64* %7300
  store i64 %7299, i64* %7297, align 8
  %7301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7292, i64* %7301, align 8
  store %struct.Memory* %loadMem1_443d0e, %struct.Memory** %MEMORY
  %loadMem2_443d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_443d0e = load i64, i64* %3
  %call2_443d0e = call %struct.Memory* @sub_444ee0.check_pattern_hard(%struct.State* %0, i64 %loadPC_443d0e, %struct.Memory* %loadMem2_443d0e)
  store %struct.Memory* %call2_443d0e, %struct.Memory** %MEMORY
  %loadMem_443d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7303 = getelementptr inbounds %struct.GPR, %struct.GPR* %7302, i32 0, i32 33
  %7304 = getelementptr inbounds %struct.Reg, %struct.Reg* %7303, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %7304 to i64*
  %7305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7306 = getelementptr inbounds %struct.GPR, %struct.GPR* %7305, i32 0, i32 1
  %7307 = getelementptr inbounds %struct.Reg, %struct.Reg* %7306, i32 0, i32 0
  %EAX.i191 = bitcast %union.anon* %7307 to i32*
  %7308 = load i32, i32* %EAX.i191
  %7309 = zext i32 %7308 to i64
  %7310 = load i64, i64* %PC.i190
  %7311 = add i64 %7310, 3
  store i64 %7311, i64* %PC.i190
  %7312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7312, align 1
  %7313 = and i32 %7308, 255
  %7314 = call i32 @llvm.ctpop.i32(i32 %7313)
  %7315 = trunc i32 %7314 to i8
  %7316 = and i8 %7315, 1
  %7317 = xor i8 %7316, 1
  %7318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7317, i8* %7318, align 1
  %7319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7319, align 1
  %7320 = icmp eq i32 %7308, 0
  %7321 = zext i1 %7320 to i8
  %7322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7321, i8* %7322, align 1
  %7323 = lshr i32 %7308, 31
  %7324 = trunc i32 %7323 to i8
  %7325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7324, i8* %7325, align 1
  %7326 = lshr i32 %7308, 31
  %7327 = xor i32 %7323, %7326
  %7328 = add i32 %7327, %7326
  %7329 = icmp eq i32 %7328, 2
  %7330 = zext i1 %7329 to i8
  %7331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7330, i8* %7331, align 1
  store %struct.Memory* %loadMem_443d13, %struct.Memory** %MEMORY
  %loadMem_443d16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7333 = getelementptr inbounds %struct.GPR, %struct.GPR* %7332, i32 0, i32 33
  %7334 = getelementptr inbounds %struct.Reg, %struct.Reg* %7333, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %7334 to i64*
  %7335 = load i64, i64* %PC.i189
  %7336 = add i64 %7335, 143
  %7337 = load i64, i64* %PC.i189
  %7338 = add i64 %7337, 6
  %7339 = load i64, i64* %PC.i189
  %7340 = add i64 %7339, 6
  store i64 %7340, i64* %PC.i189
  %7341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7342 = load i8, i8* %7341, align 1
  store i8 %7342, i8* %BRANCH_TAKEN, align 1
  %7343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7344 = icmp ne i8 %7342, 0
  %7345 = select i1 %7344, i64 %7336, i64 %7338
  store i64 %7345, i64* %7343, align 8
  store %struct.Memory* %loadMem_443d16, %struct.Memory** %MEMORY
  %loadBr_443d16 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443d16 = icmp eq i8 %loadBr_443d16, 1
  br i1 %cmpBr_443d16, label %block_.L_443da5, label %block_443d1c

block_443d1c:                                     ; preds = %block_.L_443cdb
  %loadMem_443d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7347 = getelementptr inbounds %struct.GPR, %struct.GPR* %7346, i32 0, i32 33
  %7348 = getelementptr inbounds %struct.Reg, %struct.Reg* %7347, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %7348 to i64*
  %7349 = load i64, i64* %PC.i188
  %7350 = add i64 %7349, 8
  store i64 %7350, i64* %PC.i188
  %7351 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %7352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7352, align 1
  %7353 = and i32 %7351, 255
  %7354 = call i32 @llvm.ctpop.i32(i32 %7353)
  %7355 = trunc i32 %7354 to i8
  %7356 = and i8 %7355, 1
  %7357 = xor i8 %7356, 1
  %7358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7357, i8* %7358, align 1
  %7359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7359, align 1
  %7360 = icmp eq i32 %7351, 0
  %7361 = zext i1 %7360 to i8
  %7362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7361, i8* %7362, align 1
  %7363 = lshr i32 %7351, 31
  %7364 = trunc i32 %7363 to i8
  %7365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7364, i8* %7365, align 1
  %7366 = lshr i32 %7351, 31
  %7367 = xor i32 %7363, %7366
  %7368 = add i32 %7367, %7366
  %7369 = icmp eq i32 %7368, 2
  %7370 = zext i1 %7369 to i8
  %7371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7370, i8* %7371, align 1
  store %struct.Memory* %loadMem_443d1c, %struct.Memory** %MEMORY
  %loadMem_443d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7373 = getelementptr inbounds %struct.GPR, %struct.GPR* %7372, i32 0, i32 33
  %7374 = getelementptr inbounds %struct.Reg, %struct.Reg* %7373, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %7374 to i64*
  %7375 = load i64, i64* %PC.i187
  %7376 = add i64 %7375, 11
  %7377 = load i64, i64* %PC.i187
  %7378 = add i64 %7377, 6
  %7379 = load i64, i64* %PC.i187
  %7380 = add i64 %7379, 6
  store i64 %7380, i64* %PC.i187
  %7381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7382 = load i8, i8* %7381, align 1
  %7383 = icmp eq i8 %7382, 0
  %7384 = zext i1 %7383 to i8
  store i8 %7384, i8* %BRANCH_TAKEN, align 1
  %7385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7386 = select i1 %7383, i64 %7376, i64 %7378
  store i64 %7386, i64* %7385, align 8
  store %struct.Memory* %loadMem_443d24, %struct.Memory** %MEMORY
  %loadBr_443d24 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443d24 = icmp eq i8 %loadBr_443d24, 1
  br i1 %cmpBr_443d24, label %block_.L_443d2f, label %block_443d2a

block_443d2a:                                     ; preds = %block_443d1c
  %loadMem_443d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7388 = getelementptr inbounds %struct.GPR, %struct.GPR* %7387, i32 0, i32 33
  %7389 = getelementptr inbounds %struct.Reg, %struct.Reg* %7388, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %7389 to i64*
  %7390 = load i64, i64* %PC.i186
  %7391 = add i64 %7390, 58
  %7392 = load i64, i64* %PC.i186
  %7393 = add i64 %7392, 5
  store i64 %7393, i64* %PC.i186
  %7394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7391, i64* %7394, align 8
  store %struct.Memory* %loadMem_443d2a, %struct.Memory** %MEMORY
  br label %block_.L_443d64

block_.L_443d2f:                                  ; preds = %block_443d1c
  %loadMem_443d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7396 = getelementptr inbounds %struct.GPR, %struct.GPR* %7395, i32 0, i32 33
  %7397 = getelementptr inbounds %struct.Reg, %struct.Reg* %7396, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %7397 to i64*
  %7398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7399 = getelementptr inbounds %struct.GPR, %struct.GPR* %7398, i32 0, i32 11
  %7400 = getelementptr inbounds %struct.Reg, %struct.Reg* %7399, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %7400 to i64*
  %7401 = load i64, i64* %PC.i185
  %7402 = add i64 %7401, 10
  store i64 %7402, i64* %PC.i185
  store i64 ptrtoint (%G__0x57e10c_type* @G__0x57e10c to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_443d2f, %struct.Memory** %MEMORY
  %loadMem_443d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7404 = getelementptr inbounds %struct.GPR, %struct.GPR* %7403, i32 0, i32 33
  %7405 = getelementptr inbounds %struct.Reg, %struct.Reg* %7404, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %7405 to i64*
  %7406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7407 = getelementptr inbounds %struct.GPR, %struct.GPR* %7406, i32 0, i32 1
  %7408 = getelementptr inbounds %struct.Reg, %struct.Reg* %7407, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %7408 to i64*
  %7409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7410 = getelementptr inbounds %struct.GPR, %struct.GPR* %7409, i32 0, i32 15
  %7411 = getelementptr inbounds %struct.Reg, %struct.Reg* %7410, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %7411 to i64*
  %7412 = load i64, i64* %RBP.i184
  %7413 = sub i64 %7412, 16
  %7414 = load i64, i64* %PC.i182
  %7415 = add i64 %7414, 4
  store i64 %7415, i64* %PC.i182
  %7416 = inttoptr i64 %7413 to i64*
  %7417 = load i64, i64* %7416
  store i64 %7417, i64* %RAX.i183, align 8
  store %struct.Memory* %loadMem_443d39, %struct.Memory** %MEMORY
  %loadMem_443d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7419 = getelementptr inbounds %struct.GPR, %struct.GPR* %7418, i32 0, i32 33
  %7420 = getelementptr inbounds %struct.Reg, %struct.Reg* %7419, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %7420 to i64*
  %7421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7422 = getelementptr inbounds %struct.GPR, %struct.GPR* %7421, i32 0, i32 1
  %7423 = getelementptr inbounds %struct.Reg, %struct.Reg* %7422, i32 0, i32 0
  %RAX.i181 = bitcast %union.anon* %7423 to i64*
  %7424 = load i64, i64* %RAX.i181
  %7425 = add i64 %7424, 24
  %7426 = load i64, i64* %PC.i180
  %7427 = add i64 %7426, 4
  store i64 %7427, i64* %PC.i180
  %7428 = inttoptr i64 %7425 to i64*
  %7429 = load i64, i64* %7428
  store i64 %7429, i64* %RAX.i181, align 8
  store %struct.Memory* %loadMem_443d3d, %struct.Memory** %MEMORY
  %loadMem_443d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7431 = getelementptr inbounds %struct.GPR, %struct.GPR* %7430, i32 0, i32 33
  %7432 = getelementptr inbounds %struct.Reg, %struct.Reg* %7431, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %7432 to i64*
  %7433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7434 = getelementptr inbounds %struct.GPR, %struct.GPR* %7433, i32 0, i32 5
  %7435 = getelementptr inbounds %struct.Reg, %struct.Reg* %7434, i32 0, i32 0
  %RCX.i178 = bitcast %union.anon* %7435 to i64*
  %7436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7437 = getelementptr inbounds %struct.GPR, %struct.GPR* %7436, i32 0, i32 15
  %7438 = getelementptr inbounds %struct.Reg, %struct.Reg* %7437, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %7438 to i64*
  %7439 = load i64, i64* %RBP.i179
  %7440 = sub i64 %7439, 52
  %7441 = load i64, i64* %PC.i177
  %7442 = add i64 %7441, 4
  store i64 %7442, i64* %PC.i177
  %7443 = inttoptr i64 %7440 to i32*
  %7444 = load i32, i32* %7443
  %7445 = sext i32 %7444 to i64
  store i64 %7445, i64* %RCX.i178, align 8
  store %struct.Memory* %loadMem_443d41, %struct.Memory** %MEMORY
  %loadMem_443d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7447 = getelementptr inbounds %struct.GPR, %struct.GPR* %7446, i32 0, i32 33
  %7448 = getelementptr inbounds %struct.Reg, %struct.Reg* %7447, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %7448 to i64*
  %7449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7450 = getelementptr inbounds %struct.GPR, %struct.GPR* %7449, i32 0, i32 5
  %7451 = getelementptr inbounds %struct.Reg, %struct.Reg* %7450, i32 0, i32 0
  %RCX.i176 = bitcast %union.anon* %7451 to i64*
  %7452 = load i64, i64* %RCX.i176
  %7453 = load i64, i64* %PC.i175
  %7454 = add i64 %7453, 4
  store i64 %7454, i64* %PC.i175
  %7455 = shl i64 %7452, 3
  %7456 = icmp slt i64 %7455, 0
  %7457 = shl i64 %7455, 1
  store i64 %7457, i64* %RCX.i176, align 8
  %7458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7459 = zext i1 %7456 to i8
  store i8 %7459, i8* %7458, align 1
  %7460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7461 = trunc i64 %7457 to i32
  %7462 = and i32 %7461, 254
  %7463 = call i32 @llvm.ctpop.i32(i32 %7462)
  %7464 = trunc i32 %7463 to i8
  %7465 = and i8 %7464, 1
  %7466 = xor i8 %7465, 1
  store i8 %7466, i8* %7460, align 1
  %7467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7467, align 1
  %7468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7469 = icmp eq i64 %7457, 0
  %7470 = zext i1 %7469 to i8
  store i8 %7470, i8* %7468, align 1
  %7471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7472 = lshr i64 %7457, 63
  %7473 = trunc i64 %7472 to i8
  store i8 %7473, i8* %7471, align 1
  %7474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7474, align 1
  store %struct.Memory* %loadMem_443d45, %struct.Memory** %MEMORY
  %loadMem_443d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7476 = getelementptr inbounds %struct.GPR, %struct.GPR* %7475, i32 0, i32 33
  %7477 = getelementptr inbounds %struct.Reg, %struct.Reg* %7476, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %7477 to i64*
  %7478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7479 = getelementptr inbounds %struct.GPR, %struct.GPR* %7478, i32 0, i32 1
  %7480 = getelementptr inbounds %struct.Reg, %struct.Reg* %7479, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %7480 to i64*
  %7481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7482 = getelementptr inbounds %struct.GPR, %struct.GPR* %7481, i32 0, i32 5
  %7483 = getelementptr inbounds %struct.Reg, %struct.Reg* %7482, i32 0, i32 0
  %RCX.i174 = bitcast %union.anon* %7483 to i64*
  %7484 = load i64, i64* %RAX.i173
  %7485 = load i64, i64* %RCX.i174
  %7486 = load i64, i64* %PC.i172
  %7487 = add i64 %7486, 3
  store i64 %7487, i64* %PC.i172
  %7488 = add i64 %7485, %7484
  store i64 %7488, i64* %RAX.i173, align 8
  %7489 = icmp ult i64 %7488, %7484
  %7490 = icmp ult i64 %7488, %7485
  %7491 = or i1 %7489, %7490
  %7492 = zext i1 %7491 to i8
  %7493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7492, i8* %7493, align 1
  %7494 = trunc i64 %7488 to i32
  %7495 = and i32 %7494, 255
  %7496 = call i32 @llvm.ctpop.i32(i32 %7495)
  %7497 = trunc i32 %7496 to i8
  %7498 = and i8 %7497, 1
  %7499 = xor i8 %7498, 1
  %7500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7499, i8* %7500, align 1
  %7501 = xor i64 %7485, %7484
  %7502 = xor i64 %7501, %7488
  %7503 = lshr i64 %7502, 4
  %7504 = trunc i64 %7503 to i8
  %7505 = and i8 %7504, 1
  %7506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7505, i8* %7506, align 1
  %7507 = icmp eq i64 %7488, 0
  %7508 = zext i1 %7507 to i8
  %7509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7508, i8* %7509, align 1
  %7510 = lshr i64 %7488, 63
  %7511 = trunc i64 %7510 to i8
  %7512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7511, i8* %7512, align 1
  %7513 = lshr i64 %7484, 63
  %7514 = lshr i64 %7485, 63
  %7515 = xor i64 %7510, %7513
  %7516 = xor i64 %7510, %7514
  %7517 = add i64 %7515, %7516
  %7518 = icmp eq i64 %7517, 2
  %7519 = zext i1 %7518 to i8
  %7520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7519, i8* %7520, align 1
  store %struct.Memory* %loadMem_443d49, %struct.Memory** %MEMORY
  %loadMem_443d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7522 = getelementptr inbounds %struct.GPR, %struct.GPR* %7521, i32 0, i32 33
  %7523 = getelementptr inbounds %struct.Reg, %struct.Reg* %7522, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %7523 to i64*
  %7524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7525 = getelementptr inbounds %struct.GPR, %struct.GPR* %7524, i32 0, i32 1
  %7526 = getelementptr inbounds %struct.Reg, %struct.Reg* %7525, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %7526 to i64*
  %7527 = load i64, i64* %RAX.i171
  %7528 = add i64 %7527, 8
  %7529 = load i64, i64* %PC.i170
  %7530 = add i64 %7529, 4
  store i64 %7530, i64* %PC.i170
  %7531 = inttoptr i64 %7528 to i64*
  %7532 = load i64, i64* %7531
  store i64 %7532, i64* %RAX.i171, align 8
  store %struct.Memory* %loadMem_443d4c, %struct.Memory** %MEMORY
  %loadMem_443d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7534 = getelementptr inbounds %struct.GPR, %struct.GPR* %7533, i32 0, i32 33
  %7535 = getelementptr inbounds %struct.Reg, %struct.Reg* %7534, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %7535 to i64*
  %7536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7537 = getelementptr inbounds %struct.GPR, %struct.GPR* %7536, i32 0, i32 1
  %7538 = getelementptr inbounds %struct.Reg, %struct.Reg* %7537, i32 0, i32 0
  %RAX.i169 = bitcast %union.anon* %7538 to i64*
  %7539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7540 = getelementptr inbounds %struct.GPR, %struct.GPR* %7539, i32 0, i32 9
  %7541 = getelementptr inbounds %struct.Reg, %struct.Reg* %7540, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %7541 to i64*
  %7542 = load i64, i64* %RAX.i169
  %7543 = add i64 %7542, 16
  %7544 = load i64, i64* %PC.i168
  %7545 = add i64 %7544, 4
  store i64 %7545, i64* %PC.i168
  %7546 = inttoptr i64 %7543 to i64*
  %7547 = load i64, i64* %7546
  store i64 %7547, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_443d50, %struct.Memory** %MEMORY
  %loadMem_443d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7549 = getelementptr inbounds %struct.GPR, %struct.GPR* %7548, i32 0, i32 33
  %7550 = getelementptr inbounds %struct.Reg, %struct.Reg* %7549, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %7550 to i64*
  %7551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7552 = getelementptr inbounds %struct.GPR, %struct.GPR* %7551, i32 0, i32 7
  %7553 = getelementptr inbounds %struct.Reg, %struct.Reg* %7552, i32 0, i32 0
  %RDX.i166 = bitcast %union.anon* %7553 to i64*
  %7554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7555 = getelementptr inbounds %struct.GPR, %struct.GPR* %7554, i32 0, i32 15
  %7556 = getelementptr inbounds %struct.Reg, %struct.Reg* %7555, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %7556 to i64*
  %7557 = load i64, i64* %RBP.i167
  %7558 = sub i64 %7557, 56
  %7559 = load i64, i64* %PC.i165
  %7560 = add i64 %7559, 3
  store i64 %7560, i64* %PC.i165
  %7561 = inttoptr i64 %7558 to i32*
  %7562 = load i32, i32* %7561
  %7563 = zext i32 %7562 to i64
  store i64 %7563, i64* %RDX.i166, align 8
  store %struct.Memory* %loadMem_443d54, %struct.Memory** %MEMORY
  %loadMem_443d57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7565 = getelementptr inbounds %struct.GPR, %struct.GPR* %7564, i32 0, i32 33
  %7566 = getelementptr inbounds %struct.Reg, %struct.Reg* %7565, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %7566 to i64*
  %7567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7568 = getelementptr inbounds %struct.GPR, %struct.GPR* %7567, i32 0, i32 1
  %7569 = getelementptr inbounds %struct.Reg, %struct.Reg* %7568, i32 0, i32 0
  %7570 = bitcast %union.anon* %7569 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7570, i32 0, i32 0
  %7571 = load i64, i64* %PC.i164
  %7572 = add i64 %7571, 2
  store i64 %7572, i64* %PC.i164
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_443d57, %struct.Memory** %MEMORY
  %loadMem1_443d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7574 = getelementptr inbounds %struct.GPR, %struct.GPR* %7573, i32 0, i32 33
  %7575 = getelementptr inbounds %struct.Reg, %struct.Reg* %7574, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %7575 to i64*
  %7576 = load i64, i64* %PC.i163
  %7577 = add i64 %7576, 57431
  %7578 = load i64, i64* %PC.i163
  %7579 = add i64 %7578, 5
  %7580 = load i64, i64* %PC.i163
  %7581 = add i64 %7580, 5
  store i64 %7581, i64* %PC.i163
  %7582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7583 = load i64, i64* %7582, align 8
  %7584 = add i64 %7583, -8
  %7585 = inttoptr i64 %7584 to i64*
  store i64 %7579, i64* %7585
  store i64 %7584, i64* %7582, align 8
  %7586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7577, i64* %7586, align 8
  store %struct.Memory* %loadMem1_443d59, %struct.Memory** %MEMORY
  %loadMem2_443d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_443d59 = load i64, i64* %3
  %call2_443d59 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_443d59, %struct.Memory* %loadMem2_443d59)
  store %struct.Memory* %call2_443d59, %struct.Memory** %MEMORY
  %loadMem_443d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7588 = getelementptr inbounds %struct.GPR, %struct.GPR* %7587, i32 0, i32 33
  %7589 = getelementptr inbounds %struct.Reg, %struct.Reg* %7588, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %7589 to i64*
  %7590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7591 = getelementptr inbounds %struct.GPR, %struct.GPR* %7590, i32 0, i32 1
  %7592 = getelementptr inbounds %struct.Reg, %struct.Reg* %7591, i32 0, i32 0
  %EAX.i161 = bitcast %union.anon* %7592 to i32*
  %7593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7594 = getelementptr inbounds %struct.GPR, %struct.GPR* %7593, i32 0, i32 15
  %7595 = getelementptr inbounds %struct.Reg, %struct.Reg* %7594, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %7595 to i64*
  %7596 = load i64, i64* %RBP.i162
  %7597 = sub i64 %7596, 160
  %7598 = load i32, i32* %EAX.i161
  %7599 = zext i32 %7598 to i64
  %7600 = load i64, i64* %PC.i160
  %7601 = add i64 %7600, 6
  store i64 %7601, i64* %PC.i160
  %7602 = inttoptr i64 %7597 to i32*
  store i32 %7598, i32* %7602
  store %struct.Memory* %loadMem_443d5e, %struct.Memory** %MEMORY
  br label %block_.L_443d64

block_.L_443d64:                                  ; preds = %block_.L_443d2f, %block_443d2a
  %loadMem_443d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7604 = getelementptr inbounds %struct.GPR, %struct.GPR* %7603, i32 0, i32 33
  %7605 = getelementptr inbounds %struct.Reg, %struct.Reg* %7604, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %7605 to i64*
  %7606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7607 = getelementptr inbounds %struct.GPR, %struct.GPR* %7606, i32 0, i32 1
  %7608 = getelementptr inbounds %struct.Reg, %struct.Reg* %7607, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %7608 to i64*
  %7609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7610 = getelementptr inbounds %struct.GPR, %struct.GPR* %7609, i32 0, i32 15
  %7611 = getelementptr inbounds %struct.Reg, %struct.Reg* %7610, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %7611 to i64*
  %7612 = load i64, i64* %RBP.i159
  %7613 = sub i64 %7612, 16
  %7614 = load i64, i64* %PC.i157
  %7615 = add i64 %7614, 4
  store i64 %7615, i64* %PC.i157
  %7616 = inttoptr i64 %7613 to i64*
  %7617 = load i64, i64* %7616
  store i64 %7617, i64* %RAX.i158, align 8
  store %struct.Memory* %loadMem_443d64, %struct.Memory** %MEMORY
  %loadMem_443d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7619 = getelementptr inbounds %struct.GPR, %struct.GPR* %7618, i32 0, i32 33
  %7620 = getelementptr inbounds %struct.Reg, %struct.Reg* %7619, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %7620 to i64*
  %7621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7622 = getelementptr inbounds %struct.GPR, %struct.GPR* %7621, i32 0, i32 1
  %7623 = getelementptr inbounds %struct.Reg, %struct.Reg* %7622, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %7623 to i64*
  %7624 = load i64, i64* %RAX.i156
  %7625 = add i64 %7624, 24
  %7626 = load i64, i64* %PC.i155
  %7627 = add i64 %7626, 4
  store i64 %7627, i64* %PC.i155
  %7628 = inttoptr i64 %7625 to i64*
  %7629 = load i64, i64* %7628
  store i64 %7629, i64* %RAX.i156, align 8
  store %struct.Memory* %loadMem_443d68, %struct.Memory** %MEMORY
  %loadMem_443d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7631 = getelementptr inbounds %struct.GPR, %struct.GPR* %7630, i32 0, i32 33
  %7632 = getelementptr inbounds %struct.Reg, %struct.Reg* %7631, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %7632 to i64*
  %7633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7634 = getelementptr inbounds %struct.GPR, %struct.GPR* %7633, i32 0, i32 5
  %7635 = getelementptr inbounds %struct.Reg, %struct.Reg* %7634, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %7635 to i64*
  %7636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7637 = getelementptr inbounds %struct.GPR, %struct.GPR* %7636, i32 0, i32 15
  %7638 = getelementptr inbounds %struct.Reg, %struct.Reg* %7637, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %7638 to i64*
  %7639 = load i64, i64* %RBP.i154
  %7640 = sub i64 %7639, 52
  %7641 = load i64, i64* %PC.i152
  %7642 = add i64 %7641, 4
  store i64 %7642, i64* %PC.i152
  %7643 = inttoptr i64 %7640 to i32*
  %7644 = load i32, i32* %7643
  %7645 = sext i32 %7644 to i64
  store i64 %7645, i64* %RCX.i153, align 8
  store %struct.Memory* %loadMem_443d6c, %struct.Memory** %MEMORY
  %loadMem_443d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7647 = getelementptr inbounds %struct.GPR, %struct.GPR* %7646, i32 0, i32 33
  %7648 = getelementptr inbounds %struct.Reg, %struct.Reg* %7647, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %7648 to i64*
  %7649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7650 = getelementptr inbounds %struct.GPR, %struct.GPR* %7649, i32 0, i32 5
  %7651 = getelementptr inbounds %struct.Reg, %struct.Reg* %7650, i32 0, i32 0
  %RCX.i151 = bitcast %union.anon* %7651 to i64*
  %7652 = load i64, i64* %RCX.i151
  %7653 = load i64, i64* %PC.i150
  %7654 = add i64 %7653, 4
  store i64 %7654, i64* %PC.i150
  %7655 = shl i64 %7652, 3
  %7656 = icmp slt i64 %7655, 0
  %7657 = shl i64 %7655, 1
  store i64 %7657, i64* %RCX.i151, align 8
  %7658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7659 = zext i1 %7656 to i8
  store i8 %7659, i8* %7658, align 1
  %7660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7661 = trunc i64 %7657 to i32
  %7662 = and i32 %7661, 254
  %7663 = call i32 @llvm.ctpop.i32(i32 %7662)
  %7664 = trunc i32 %7663 to i8
  %7665 = and i8 %7664, 1
  %7666 = xor i8 %7665, 1
  store i8 %7666, i8* %7660, align 1
  %7667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7667, align 1
  %7668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7669 = icmp eq i64 %7657, 0
  %7670 = zext i1 %7669 to i8
  store i8 %7670, i8* %7668, align 1
  %7671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7672 = lshr i64 %7657, 63
  %7673 = trunc i64 %7672 to i8
  store i8 %7673, i8* %7671, align 1
  %7674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7674, align 1
  store %struct.Memory* %loadMem_443d70, %struct.Memory** %MEMORY
  %loadMem_443d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7676 = getelementptr inbounds %struct.GPR, %struct.GPR* %7675, i32 0, i32 33
  %7677 = getelementptr inbounds %struct.Reg, %struct.Reg* %7676, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %7677 to i64*
  %7678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7679 = getelementptr inbounds %struct.GPR, %struct.GPR* %7678, i32 0, i32 1
  %7680 = getelementptr inbounds %struct.Reg, %struct.Reg* %7679, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %7680 to i64*
  %7681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7682 = getelementptr inbounds %struct.GPR, %struct.GPR* %7681, i32 0, i32 5
  %7683 = getelementptr inbounds %struct.Reg, %struct.Reg* %7682, i32 0, i32 0
  %RCX.i149 = bitcast %union.anon* %7683 to i64*
  %7684 = load i64, i64* %RAX.i148
  %7685 = load i64, i64* %RCX.i149
  %7686 = load i64, i64* %PC.i147
  %7687 = add i64 %7686, 3
  store i64 %7687, i64* %PC.i147
  %7688 = add i64 %7685, %7684
  store i64 %7688, i64* %RAX.i148, align 8
  %7689 = icmp ult i64 %7688, %7684
  %7690 = icmp ult i64 %7688, %7685
  %7691 = or i1 %7689, %7690
  %7692 = zext i1 %7691 to i8
  %7693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7692, i8* %7693, align 1
  %7694 = trunc i64 %7688 to i32
  %7695 = and i32 %7694, 255
  %7696 = call i32 @llvm.ctpop.i32(i32 %7695)
  %7697 = trunc i32 %7696 to i8
  %7698 = and i8 %7697, 1
  %7699 = xor i8 %7698, 1
  %7700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7699, i8* %7700, align 1
  %7701 = xor i64 %7685, %7684
  %7702 = xor i64 %7701, %7688
  %7703 = lshr i64 %7702, 4
  %7704 = trunc i64 %7703 to i8
  %7705 = and i8 %7704, 1
  %7706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7705, i8* %7706, align 1
  %7707 = icmp eq i64 %7688, 0
  %7708 = zext i1 %7707 to i8
  %7709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7708, i8* %7709, align 1
  %7710 = lshr i64 %7688, 63
  %7711 = trunc i64 %7710 to i8
  %7712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7711, i8* %7712, align 1
  %7713 = lshr i64 %7684, 63
  %7714 = lshr i64 %7685, 63
  %7715 = xor i64 %7710, %7713
  %7716 = xor i64 %7710, %7714
  %7717 = add i64 %7715, %7716
  %7718 = icmp eq i64 %7717, 2
  %7719 = zext i1 %7718 to i8
  %7720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7719, i8* %7720, align 1
  store %struct.Memory* %loadMem_443d74, %struct.Memory** %MEMORY
  %loadMem_443d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7722 = getelementptr inbounds %struct.GPR, %struct.GPR* %7721, i32 0, i32 33
  %7723 = getelementptr inbounds %struct.Reg, %struct.Reg* %7722, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %7723 to i64*
  %7724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7725 = getelementptr inbounds %struct.GPR, %struct.GPR* %7724, i32 0, i32 1
  %7726 = getelementptr inbounds %struct.Reg, %struct.Reg* %7725, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %7726 to i64*
  %7727 = load i64, i64* %RAX.i146
  %7728 = add i64 %7727, 8
  %7729 = load i64, i64* %PC.i145
  %7730 = add i64 %7729, 4
  store i64 %7730, i64* %PC.i145
  %7731 = inttoptr i64 %7728 to i64*
  %7732 = load i64, i64* %7731
  store i64 %7732, i64* %RAX.i146, align 8
  store %struct.Memory* %loadMem_443d77, %struct.Memory** %MEMORY
  %loadMem_443d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7734 = getelementptr inbounds %struct.GPR, %struct.GPR* %7733, i32 0, i32 33
  %7735 = getelementptr inbounds %struct.Reg, %struct.Reg* %7734, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %7735 to i64*
  %7736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7737 = getelementptr inbounds %struct.GPR, %struct.GPR* %7736, i32 0, i32 1
  %7738 = getelementptr inbounds %struct.Reg, %struct.Reg* %7737, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %7738 to i64*
  %7739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7740 = getelementptr inbounds %struct.GPR, %struct.GPR* %7739, i32 0, i32 7
  %7741 = getelementptr inbounds %struct.Reg, %struct.Reg* %7740, i32 0, i32 0
  %RDX.i144 = bitcast %union.anon* %7741 to i64*
  %7742 = load i64, i64* %RAX.i143
  %7743 = add i64 %7742, 120
  %7744 = load i64, i64* %PC.i142
  %7745 = add i64 %7744, 3
  store i64 %7745, i64* %PC.i142
  %7746 = inttoptr i64 %7743 to i32*
  %7747 = load i32, i32* %7746
  %7748 = zext i32 %7747 to i64
  store i64 %7748, i64* %RDX.i144, align 8
  store %struct.Memory* %loadMem_443d7b, %struct.Memory** %MEMORY
  %loadMem_443d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7750 = getelementptr inbounds %struct.GPR, %struct.GPR* %7749, i32 0, i32 33
  %7751 = getelementptr inbounds %struct.Reg, %struct.Reg* %7750, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %7751 to i64*
  %7752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7753 = getelementptr inbounds %struct.GPR, %struct.GPR* %7752, i32 0, i32 7
  %7754 = getelementptr inbounds %struct.Reg, %struct.Reg* %7753, i32 0, i32 0
  %RDX.i141 = bitcast %union.anon* %7754 to i64*
  %7755 = load i64, i64* %RDX.i141
  %7756 = load i64, i64* %PC.i140
  %7757 = add i64 %7756, 6
  store i64 %7757, i64* %PC.i140
  %7758 = and i64 512, %7755
  %7759 = trunc i64 %7758 to i32
  store i64 %7758, i64* %RDX.i141, align 8
  %7760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7760, align 1
  %7761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7761, align 1
  %7762 = icmp eq i32 %7759, 0
  %7763 = zext i1 %7762 to i8
  %7764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7763, i8* %7764, align 1
  %7765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %7765, align 1
  %7766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7766, align 1
  %7767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7767, align 1
  store %struct.Memory* %loadMem_443d7e, %struct.Memory** %MEMORY
  %loadMem_443d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7769 = getelementptr inbounds %struct.GPR, %struct.GPR* %7768, i32 0, i32 33
  %7770 = getelementptr inbounds %struct.Reg, %struct.Reg* %7769, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %7770 to i64*
  %7771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7772 = getelementptr inbounds %struct.GPR, %struct.GPR* %7771, i32 0, i32 7
  %7773 = getelementptr inbounds %struct.Reg, %struct.Reg* %7772, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %7773 to i32*
  %7774 = load i32, i32* %EDX.i
  %7775 = zext i32 %7774 to i64
  %7776 = load i64, i64* %PC.i139
  %7777 = add i64 %7776, 3
  store i64 %7777, i64* %PC.i139
  %7778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7778, align 1
  %7779 = and i32 %7774, 255
  %7780 = call i32 @llvm.ctpop.i32(i32 %7779)
  %7781 = trunc i32 %7780 to i8
  %7782 = and i8 %7781, 1
  %7783 = xor i8 %7782, 1
  %7784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7783, i8* %7784, align 1
  %7785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7785, align 1
  %7786 = icmp eq i32 %7774, 0
  %7787 = zext i1 %7786 to i8
  %7788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7787, i8* %7788, align 1
  %7789 = lshr i32 %7774, 31
  %7790 = trunc i32 %7789 to i8
  %7791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7790, i8* %7791, align 1
  %7792 = lshr i32 %7774, 31
  %7793 = xor i32 %7789, %7792
  %7794 = add i32 %7793, %7792
  %7795 = icmp eq i32 %7794, 2
  %7796 = zext i1 %7795 to i8
  %7797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7796, i8* %7797, align 1
  store %struct.Memory* %loadMem_443d84, %struct.Memory** %MEMORY
  %loadMem_443d87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7799 = getelementptr inbounds %struct.GPR, %struct.GPR* %7798, i32 0, i32 33
  %7800 = getelementptr inbounds %struct.Reg, %struct.Reg* %7799, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %7800 to i64*
  %7801 = load i64, i64* %PC.i138
  %7802 = add i64 %7801, 18
  %7803 = load i64, i64* %PC.i138
  %7804 = add i64 %7803, 6
  %7805 = load i64, i64* %PC.i138
  %7806 = add i64 %7805, 6
  store i64 %7806, i64* %PC.i138
  %7807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7808 = load i8, i8* %7807, align 1
  store i8 %7808, i8* %BRANCH_TAKEN, align 1
  %7809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7810 = icmp ne i8 %7808, 0
  %7811 = select i1 %7810, i64 %7802, i64 %7804
  store i64 %7811, i64* %7809, align 8
  store %struct.Memory* %loadMem_443d87, %struct.Memory** %MEMORY
  %loadBr_443d87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443d87 = icmp eq i8 %loadBr_443d87, 1
  br i1 %cmpBr_443d87, label %block_.L_443d99, label %block_443d8d

block_443d8d:                                     ; preds = %block_.L_443d64
  %loadMem_443d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7813 = getelementptr inbounds %struct.GPR, %struct.GPR* %7812, i32 0, i32 33
  %7814 = getelementptr inbounds %struct.Reg, %struct.Reg* %7813, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %7814 to i64*
  %7815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7816 = getelementptr inbounds %struct.GPR, %struct.GPR* %7815, i32 0, i32 15
  %7817 = getelementptr inbounds %struct.Reg, %struct.Reg* %7816, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %7817 to i64*
  %7818 = load i64, i64* %RBP.i137
  %7819 = sub i64 %7818, 128
  %7820 = load i64, i64* %PC.i136
  %7821 = add i64 %7820, 7
  store i64 %7821, i64* %PC.i136
  %7822 = inttoptr i64 %7819 to i32*
  store i32 0, i32* %7822
  store %struct.Memory* %loadMem_443d8d, %struct.Memory** %MEMORY
  %loadMem_443d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7824 = getelementptr inbounds %struct.GPR, %struct.GPR* %7823, i32 0, i32 33
  %7825 = getelementptr inbounds %struct.Reg, %struct.Reg* %7824, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %7825 to i64*
  %7826 = load i64, i64* %PC.i135
  %7827 = add i64 %7826, 12
  %7828 = load i64, i64* %PC.i135
  %7829 = add i64 %7828, 5
  store i64 %7829, i64* %PC.i135
  %7830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7827, i64* %7830, align 8
  store %struct.Memory* %loadMem_443d94, %struct.Memory** %MEMORY
  br label %block_.L_443da0

block_.L_443d99:                                  ; preds = %block_.L_443d64
  %loadMem_443d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7832 = getelementptr inbounds %struct.GPR, %struct.GPR* %7831, i32 0, i32 33
  %7833 = getelementptr inbounds %struct.Reg, %struct.Reg* %7832, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %7833 to i64*
  %7834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7835 = getelementptr inbounds %struct.GPR, %struct.GPR* %7834, i32 0, i32 15
  %7836 = getelementptr inbounds %struct.Reg, %struct.Reg* %7835, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %7836 to i64*
  %7837 = load i64, i64* %RBP.i134
  %7838 = sub i64 %7837, 128
  %7839 = load i64, i64* %PC.i133
  %7840 = add i64 %7839, 7
  store i64 %7840, i64* %PC.i133
  %7841 = inttoptr i64 %7838 to i32*
  store i32 2, i32* %7841
  store %struct.Memory* %loadMem_443d99, %struct.Memory** %MEMORY
  br label %block_.L_443da0

block_.L_443da0:                                  ; preds = %block_.L_443d99, %block_443d8d
  %loadMem_443da0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7843 = getelementptr inbounds %struct.GPR, %struct.GPR* %7842, i32 0, i32 33
  %7844 = getelementptr inbounds %struct.Reg, %struct.Reg* %7843, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %7844 to i64*
  %7845 = load i64, i64* %PC.i132
  %7846 = add i64 %7845, 24
  %7847 = load i64, i64* %PC.i132
  %7848 = add i64 %7847, 5
  store i64 %7848, i64* %PC.i132
  %7849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7846, i64* %7849, align 8
  store %struct.Memory* %loadMem_443da0, %struct.Memory** %MEMORY
  br label %block_.L_443db8

block_.L_443da5:                                  ; preds = %block_.L_443cdb, %block_443cb2, %block_443c6b
  %loadMem_443da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7851 = getelementptr inbounds %struct.GPR, %struct.GPR* %7850, i32 0, i32 33
  %7852 = getelementptr inbounds %struct.Reg, %struct.Reg* %7851, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %7852 to i64*
  %7853 = load i64, i64* %PC.i131
  %7854 = add i64 %7853, 5
  %7855 = load i64, i64* %PC.i131
  %7856 = add i64 %7855, 5
  store i64 %7856, i64* %PC.i131
  %7857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7854, i64* %7857, align 8
  store %struct.Memory* %loadMem_443da5, %struct.Memory** %MEMORY
  br label %block_.L_443daa

block_.L_443daa:                                  ; preds = %block_.L_443da5
  %loadMem_443daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %7858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7859 = getelementptr inbounds %struct.GPR, %struct.GPR* %7858, i32 0, i32 33
  %7860 = getelementptr inbounds %struct.Reg, %struct.Reg* %7859, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %7860 to i64*
  %7861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7862 = getelementptr inbounds %struct.GPR, %struct.GPR* %7861, i32 0, i32 1
  %7863 = getelementptr inbounds %struct.Reg, %struct.Reg* %7862, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %7863 to i64*
  %7864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7865 = getelementptr inbounds %struct.GPR, %struct.GPR* %7864, i32 0, i32 15
  %7866 = getelementptr inbounds %struct.Reg, %struct.Reg* %7865, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %7866 to i64*
  %7867 = load i64, i64* %RBP.i130
  %7868 = sub i64 %7867, 52
  %7869 = load i64, i64* %PC.i128
  %7870 = add i64 %7869, 3
  store i64 %7870, i64* %PC.i128
  %7871 = inttoptr i64 %7868 to i32*
  %7872 = load i32, i32* %7871
  %7873 = zext i32 %7872 to i64
  store i64 %7873, i64* %RAX.i129, align 8
  store %struct.Memory* %loadMem_443daa, %struct.Memory** %MEMORY
  %loadMem_443dad = load %struct.Memory*, %struct.Memory** %MEMORY
  %7874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7875 = getelementptr inbounds %struct.GPR, %struct.GPR* %7874, i32 0, i32 33
  %7876 = getelementptr inbounds %struct.Reg, %struct.Reg* %7875, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %7876 to i64*
  %7877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7878 = getelementptr inbounds %struct.GPR, %struct.GPR* %7877, i32 0, i32 1
  %7879 = getelementptr inbounds %struct.Reg, %struct.Reg* %7878, i32 0, i32 0
  %RAX.i127 = bitcast %union.anon* %7879 to i64*
  %7880 = load i64, i64* %RAX.i127
  %7881 = load i64, i64* %PC.i126
  %7882 = add i64 %7881, 3
  store i64 %7882, i64* %PC.i126
  %7883 = trunc i64 %7880 to i32
  %7884 = add i32 1, %7883
  %7885 = zext i32 %7884 to i64
  store i64 %7885, i64* %RAX.i127, align 8
  %7886 = icmp ult i32 %7884, %7883
  %7887 = icmp ult i32 %7884, 1
  %7888 = or i1 %7886, %7887
  %7889 = zext i1 %7888 to i8
  %7890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7889, i8* %7890, align 1
  %7891 = and i32 %7884, 255
  %7892 = call i32 @llvm.ctpop.i32(i32 %7891)
  %7893 = trunc i32 %7892 to i8
  %7894 = and i8 %7893, 1
  %7895 = xor i8 %7894, 1
  %7896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7895, i8* %7896, align 1
  %7897 = xor i64 1, %7880
  %7898 = trunc i64 %7897 to i32
  %7899 = xor i32 %7898, %7884
  %7900 = lshr i32 %7899, 4
  %7901 = trunc i32 %7900 to i8
  %7902 = and i8 %7901, 1
  %7903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7902, i8* %7903, align 1
  %7904 = icmp eq i32 %7884, 0
  %7905 = zext i1 %7904 to i8
  %7906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7905, i8* %7906, align 1
  %7907 = lshr i32 %7884, 31
  %7908 = trunc i32 %7907 to i8
  %7909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7908, i8* %7909, align 1
  %7910 = lshr i32 %7883, 31
  %7911 = xor i32 %7907, %7910
  %7912 = add i32 %7911, %7907
  %7913 = icmp eq i32 %7912, 2
  %7914 = zext i1 %7913 to i8
  %7915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7914, i8* %7915, align 1
  store %struct.Memory* %loadMem_443dad, %struct.Memory** %MEMORY
  %loadMem_443db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7917 = getelementptr inbounds %struct.GPR, %struct.GPR* %7916, i32 0, i32 33
  %7918 = getelementptr inbounds %struct.Reg, %struct.Reg* %7917, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %7918 to i64*
  %7919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7920 = getelementptr inbounds %struct.GPR, %struct.GPR* %7919, i32 0, i32 1
  %7921 = getelementptr inbounds %struct.Reg, %struct.Reg* %7920, i32 0, i32 0
  %EAX.i124 = bitcast %union.anon* %7921 to i32*
  %7922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7923 = getelementptr inbounds %struct.GPR, %struct.GPR* %7922, i32 0, i32 15
  %7924 = getelementptr inbounds %struct.Reg, %struct.Reg* %7923, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %7924 to i64*
  %7925 = load i64, i64* %RBP.i125
  %7926 = sub i64 %7925, 52
  %7927 = load i32, i32* %EAX.i124
  %7928 = zext i32 %7927 to i64
  %7929 = load i64, i64* %PC.i123
  %7930 = add i64 %7929, 3
  store i64 %7930, i64* %PC.i123
  %7931 = inttoptr i64 %7926 to i32*
  store i32 %7927, i32* %7931
  store %struct.Memory* %loadMem_443db0, %struct.Memory** %MEMORY
  %loadMem_443db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7933 = getelementptr inbounds %struct.GPR, %struct.GPR* %7932, i32 0, i32 33
  %7934 = getelementptr inbounds %struct.Reg, %struct.Reg* %7933, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %7934 to i64*
  %7935 = load i64, i64* %PC.i122
  %7936 = add i64 %7935, -344
  %7937 = load i64, i64* %PC.i122
  %7938 = add i64 %7937, 5
  store i64 %7938, i64* %PC.i122
  %7939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7936, i64* %7939, align 8
  store %struct.Memory* %loadMem_443db3, %struct.Memory** %MEMORY
  br label %block_.L_443c5b

block_.L_443db8:                                  ; preds = %block_.L_443da0, %block_.L_443c5b
  %loadMem_443db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7941 = getelementptr inbounds %struct.GPR, %struct.GPR* %7940, i32 0, i32 33
  %7942 = getelementptr inbounds %struct.Reg, %struct.Reg* %7941, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %7942 to i64*
  %7943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7944 = getelementptr inbounds %struct.GPR, %struct.GPR* %7943, i32 0, i32 1
  %7945 = getelementptr inbounds %struct.Reg, %struct.Reg* %7944, i32 0, i32 0
  %RAX.i120 = bitcast %union.anon* %7945 to i64*
  %7946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7947 = getelementptr inbounds %struct.GPR, %struct.GPR* %7946, i32 0, i32 15
  %7948 = getelementptr inbounds %struct.Reg, %struct.Reg* %7947, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %7948 to i64*
  %7949 = load i64, i64* %RBP.i121
  %7950 = sub i64 %7949, 128
  %7951 = load i64, i64* %PC.i119
  %7952 = add i64 %7951, 3
  store i64 %7952, i64* %PC.i119
  %7953 = inttoptr i64 %7950 to i32*
  %7954 = load i32, i32* %7953
  %7955 = zext i32 %7954 to i64
  store i64 %7955, i64* %RAX.i120, align 8
  store %struct.Memory* %loadMem_443db8, %struct.Memory** %MEMORY
  %loadMem_443dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7957 = getelementptr inbounds %struct.GPR, %struct.GPR* %7956, i32 0, i32 33
  %7958 = getelementptr inbounds %struct.Reg, %struct.Reg* %7957, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %7958 to i64*
  %7959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7960 = getelementptr inbounds %struct.GPR, %struct.GPR* %7959, i32 0, i32 5
  %7961 = getelementptr inbounds %struct.Reg, %struct.Reg* %7960, i32 0, i32 0
  %RCX.i117 = bitcast %union.anon* %7961 to i64*
  %7962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7963 = getelementptr inbounds %struct.GPR, %struct.GPR* %7962, i32 0, i32 15
  %7964 = getelementptr inbounds %struct.Reg, %struct.Reg* %7963, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %7964 to i64*
  %7965 = load i64, i64* %RBP.i118
  %7966 = sub i64 %7965, 32
  %7967 = load i64, i64* %PC.i116
  %7968 = add i64 %7967, 4
  store i64 %7968, i64* %PC.i116
  %7969 = inttoptr i64 %7966 to i64*
  %7970 = load i64, i64* %7969
  store i64 %7970, i64* %RCX.i117, align 8
  store %struct.Memory* %loadMem_443dbb, %struct.Memory** %MEMORY
  %loadMem_443dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %7971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7972 = getelementptr inbounds %struct.GPR, %struct.GPR* %7971, i32 0, i32 33
  %7973 = getelementptr inbounds %struct.Reg, %struct.Reg* %7972, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %7973 to i64*
  %7974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7975 = getelementptr inbounds %struct.GPR, %struct.GPR* %7974, i32 0, i32 7
  %7976 = getelementptr inbounds %struct.Reg, %struct.Reg* %7975, i32 0, i32 0
  %RDX.i114 = bitcast %union.anon* %7976 to i64*
  %7977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7978 = getelementptr inbounds %struct.GPR, %struct.GPR* %7977, i32 0, i32 15
  %7979 = getelementptr inbounds %struct.Reg, %struct.Reg* %7978, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %7979 to i64*
  %7980 = load i64, i64* %RBP.i115
  %7981 = sub i64 %7980, 48
  %7982 = load i64, i64* %PC.i113
  %7983 = add i64 %7982, 4
  store i64 %7983, i64* %PC.i113
  %7984 = inttoptr i64 %7981 to i32*
  %7985 = load i32, i32* %7984
  %7986 = sext i32 %7985 to i64
  store i64 %7986, i64* %RDX.i114, align 8
  store %struct.Memory* %loadMem_443dbf, %struct.Memory** %MEMORY
  %loadMem_443dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7988 = getelementptr inbounds %struct.GPR, %struct.GPR* %7987, i32 0, i32 33
  %7989 = getelementptr inbounds %struct.Reg, %struct.Reg* %7988, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %7989 to i64*
  %7990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7991 = getelementptr inbounds %struct.GPR, %struct.GPR* %7990, i32 0, i32 7
  %7992 = getelementptr inbounds %struct.Reg, %struct.Reg* %7991, i32 0, i32 0
  %RDX.i112 = bitcast %union.anon* %7992 to i64*
  %7993 = load i64, i64* %RDX.i112
  %7994 = load i64, i64* %PC.i111
  %7995 = add i64 %7994, 4
  store i64 %7995, i64* %PC.i111
  %7996 = shl i64 %7993, 4
  %7997 = icmp slt i64 %7996, 0
  %7998 = shl i64 %7996, 1
  store i64 %7998, i64* %RDX.i112, align 8
  %7999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8000 = zext i1 %7997 to i8
  store i8 %8000, i8* %7999, align 1
  %8001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8002 = trunc i64 %7998 to i32
  %8003 = and i32 %8002, 254
  %8004 = call i32 @llvm.ctpop.i32(i32 %8003)
  %8005 = trunc i32 %8004 to i8
  %8006 = and i8 %8005, 1
  %8007 = xor i8 %8006, 1
  store i8 %8007, i8* %8001, align 1
  %8008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8008, align 1
  %8009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8010 = icmp eq i64 %7998, 0
  %8011 = zext i1 %8010 to i8
  store i8 %8011, i8* %8009, align 1
  %8012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8013 = lshr i64 %7998, 63
  %8014 = trunc i64 %8013 to i8
  store i8 %8014, i8* %8012, align 1
  %8015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8015, align 1
  store %struct.Memory* %loadMem_443dc3, %struct.Memory** %MEMORY
  %loadMem_443dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8017 = getelementptr inbounds %struct.GPR, %struct.GPR* %8016, i32 0, i32 33
  %8018 = getelementptr inbounds %struct.Reg, %struct.Reg* %8017, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %8018 to i64*
  %8019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8020 = getelementptr inbounds %struct.GPR, %struct.GPR* %8019, i32 0, i32 5
  %8021 = getelementptr inbounds %struct.Reg, %struct.Reg* %8020, i32 0, i32 0
  %RCX.i110 = bitcast %union.anon* %8021 to i64*
  %8022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8023 = getelementptr inbounds %struct.GPR, %struct.GPR* %8022, i32 0, i32 7
  %8024 = getelementptr inbounds %struct.Reg, %struct.Reg* %8023, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %8024 to i64*
  %8025 = load i64, i64* %RCX.i110
  %8026 = load i64, i64* %RDX.i
  %8027 = load i64, i64* %PC.i109
  %8028 = add i64 %8027, 3
  store i64 %8028, i64* %PC.i109
  %8029 = add i64 %8026, %8025
  store i64 %8029, i64* %RCX.i110, align 8
  %8030 = icmp ult i64 %8029, %8025
  %8031 = icmp ult i64 %8029, %8026
  %8032 = or i1 %8030, %8031
  %8033 = zext i1 %8032 to i8
  %8034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8033, i8* %8034, align 1
  %8035 = trunc i64 %8029 to i32
  %8036 = and i32 %8035, 255
  %8037 = call i32 @llvm.ctpop.i32(i32 %8036)
  %8038 = trunc i32 %8037 to i8
  %8039 = and i8 %8038, 1
  %8040 = xor i8 %8039, 1
  %8041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8040, i8* %8041, align 1
  %8042 = xor i64 %8026, %8025
  %8043 = xor i64 %8042, %8029
  %8044 = lshr i64 %8043, 4
  %8045 = trunc i64 %8044 to i8
  %8046 = and i8 %8045, 1
  %8047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8046, i8* %8047, align 1
  %8048 = icmp eq i64 %8029, 0
  %8049 = zext i1 %8048 to i8
  %8050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8049, i8* %8050, align 1
  %8051 = lshr i64 %8029, 63
  %8052 = trunc i64 %8051 to i8
  %8053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8052, i8* %8053, align 1
  %8054 = lshr i64 %8025, 63
  %8055 = lshr i64 %8026, 63
  %8056 = xor i64 %8051, %8054
  %8057 = xor i64 %8051, %8055
  %8058 = add i64 %8056, %8057
  %8059 = icmp eq i64 %8058, 2
  %8060 = zext i1 %8059 to i8
  %8061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8060, i8* %8061, align 1
  store %struct.Memory* %loadMem_443dc7, %struct.Memory** %MEMORY
  %loadMem_443dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %8062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8063 = getelementptr inbounds %struct.GPR, %struct.GPR* %8062, i32 0, i32 33
  %8064 = getelementptr inbounds %struct.Reg, %struct.Reg* %8063, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %8064 to i64*
  %8065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8066 = getelementptr inbounds %struct.GPR, %struct.GPR* %8065, i32 0, i32 1
  %8067 = getelementptr inbounds %struct.Reg, %struct.Reg* %8066, i32 0, i32 0
  %EAX.i107 = bitcast %union.anon* %8067 to i32*
  %8068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8069 = getelementptr inbounds %struct.GPR, %struct.GPR* %8068, i32 0, i32 5
  %8070 = getelementptr inbounds %struct.Reg, %struct.Reg* %8069, i32 0, i32 0
  %RCX.i108 = bitcast %union.anon* %8070 to i64*
  %8071 = load i64, i64* %RCX.i108
  %8072 = add i64 %8071, 16
  %8073 = load i32, i32* %EAX.i107
  %8074 = zext i32 %8073 to i64
  %8075 = load i64, i64* %PC.i106
  %8076 = add i64 %8075, 3
  store i64 %8076, i64* %PC.i106
  %8077 = inttoptr i64 %8072 to i32*
  store i32 %8073, i32* %8077
  store %struct.Memory* %loadMem_443dca, %struct.Memory** %MEMORY
  %loadMem_443dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %8078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8079 = getelementptr inbounds %struct.GPR, %struct.GPR* %8078, i32 0, i32 33
  %8080 = getelementptr inbounds %struct.Reg, %struct.Reg* %8079, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %8080 to i64*
  %8081 = load i64, i64* %PC.i105
  %8082 = add i64 %8081, 27
  %8083 = load i64, i64* %PC.i105
  %8084 = add i64 %8083, 5
  store i64 %8084, i64* %PC.i105
  %8085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8082, i64* %8085, align 8
  store %struct.Memory* %loadMem_443dcd, %struct.Memory** %MEMORY
  br label %block_.L_443de8

block_.L_443dd2:                                  ; preds = %block_.L_443c35
  %loadMem_443dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8087 = getelementptr inbounds %struct.GPR, %struct.GPR* %8086, i32 0, i32 33
  %8088 = getelementptr inbounds %struct.Reg, %struct.Reg* %8087, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %8088 to i64*
  %8089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8090 = getelementptr inbounds %struct.GPR, %struct.GPR* %8089, i32 0, i32 1
  %8091 = getelementptr inbounds %struct.Reg, %struct.Reg* %8090, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %8091 to i64*
  %8092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8093 = getelementptr inbounds %struct.GPR, %struct.GPR* %8092, i32 0, i32 15
  %8094 = getelementptr inbounds %struct.Reg, %struct.Reg* %8093, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %8094 to i64*
  %8095 = load i64, i64* %RBP.i104
  %8096 = sub i64 %8095, 32
  %8097 = load i64, i64* %PC.i102
  %8098 = add i64 %8097, 4
  store i64 %8098, i64* %PC.i102
  %8099 = inttoptr i64 %8096 to i64*
  %8100 = load i64, i64* %8099
  store i64 %8100, i64* %RAX.i103, align 8
  store %struct.Memory* %loadMem_443dd2, %struct.Memory** %MEMORY
  %loadMem_443dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8102 = getelementptr inbounds %struct.GPR, %struct.GPR* %8101, i32 0, i32 33
  %8103 = getelementptr inbounds %struct.Reg, %struct.Reg* %8102, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %8103 to i64*
  %8104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8105 = getelementptr inbounds %struct.GPR, %struct.GPR* %8104, i32 0, i32 5
  %8106 = getelementptr inbounds %struct.Reg, %struct.Reg* %8105, i32 0, i32 0
  %RCX.i100 = bitcast %union.anon* %8106 to i64*
  %8107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8108 = getelementptr inbounds %struct.GPR, %struct.GPR* %8107, i32 0, i32 15
  %8109 = getelementptr inbounds %struct.Reg, %struct.Reg* %8108, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %8109 to i64*
  %8110 = load i64, i64* %RBP.i101
  %8111 = sub i64 %8110, 48
  %8112 = load i64, i64* %PC.i99
  %8113 = add i64 %8112, 4
  store i64 %8113, i64* %PC.i99
  %8114 = inttoptr i64 %8111 to i32*
  %8115 = load i32, i32* %8114
  %8116 = sext i32 %8115 to i64
  store i64 %8116, i64* %RCX.i100, align 8
  store %struct.Memory* %loadMem_443dd6, %struct.Memory** %MEMORY
  %loadMem_443dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %8117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8118 = getelementptr inbounds %struct.GPR, %struct.GPR* %8117, i32 0, i32 33
  %8119 = getelementptr inbounds %struct.Reg, %struct.Reg* %8118, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %8119 to i64*
  %8120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8121 = getelementptr inbounds %struct.GPR, %struct.GPR* %8120, i32 0, i32 5
  %8122 = getelementptr inbounds %struct.Reg, %struct.Reg* %8121, i32 0, i32 0
  %RCX.i98 = bitcast %union.anon* %8122 to i64*
  %8123 = load i64, i64* %RCX.i98
  %8124 = load i64, i64* %PC.i97
  %8125 = add i64 %8124, 4
  store i64 %8125, i64* %PC.i97
  %8126 = shl i64 %8123, 4
  %8127 = icmp slt i64 %8126, 0
  %8128 = shl i64 %8126, 1
  store i64 %8128, i64* %RCX.i98, align 8
  %8129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8130 = zext i1 %8127 to i8
  store i8 %8130, i8* %8129, align 1
  %8131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8132 = trunc i64 %8128 to i32
  %8133 = and i32 %8132, 254
  %8134 = call i32 @llvm.ctpop.i32(i32 %8133)
  %8135 = trunc i32 %8134 to i8
  %8136 = and i8 %8135, 1
  %8137 = xor i8 %8136, 1
  store i8 %8137, i8* %8131, align 1
  %8138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8138, align 1
  %8139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8140 = icmp eq i64 %8128, 0
  %8141 = zext i1 %8140 to i8
  store i8 %8141, i8* %8139, align 1
  %8142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8143 = lshr i64 %8128, 63
  %8144 = trunc i64 %8143 to i8
  store i8 %8144, i8* %8142, align 1
  %8145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8145, align 1
  store %struct.Memory* %loadMem_443dda, %struct.Memory** %MEMORY
  %loadMem_443dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %8146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8147 = getelementptr inbounds %struct.GPR, %struct.GPR* %8146, i32 0, i32 33
  %8148 = getelementptr inbounds %struct.Reg, %struct.Reg* %8147, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %8148 to i64*
  %8149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8150 = getelementptr inbounds %struct.GPR, %struct.GPR* %8149, i32 0, i32 1
  %8151 = getelementptr inbounds %struct.Reg, %struct.Reg* %8150, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %8151 to i64*
  %8152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8153 = getelementptr inbounds %struct.GPR, %struct.GPR* %8152, i32 0, i32 5
  %8154 = getelementptr inbounds %struct.Reg, %struct.Reg* %8153, i32 0, i32 0
  %RCX.i96 = bitcast %union.anon* %8154 to i64*
  %8155 = load i64, i64* %RAX.i95
  %8156 = load i64, i64* %RCX.i96
  %8157 = load i64, i64* %PC.i94
  %8158 = add i64 %8157, 3
  store i64 %8158, i64* %PC.i94
  %8159 = add i64 %8156, %8155
  store i64 %8159, i64* %RAX.i95, align 8
  %8160 = icmp ult i64 %8159, %8155
  %8161 = icmp ult i64 %8159, %8156
  %8162 = or i1 %8160, %8161
  %8163 = zext i1 %8162 to i8
  %8164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8163, i8* %8164, align 1
  %8165 = trunc i64 %8159 to i32
  %8166 = and i32 %8165, 255
  %8167 = call i32 @llvm.ctpop.i32(i32 %8166)
  %8168 = trunc i32 %8167 to i8
  %8169 = and i8 %8168, 1
  %8170 = xor i8 %8169, 1
  %8171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8170, i8* %8171, align 1
  %8172 = xor i64 %8156, %8155
  %8173 = xor i64 %8172, %8159
  %8174 = lshr i64 %8173, 4
  %8175 = trunc i64 %8174 to i8
  %8176 = and i8 %8175, 1
  %8177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8176, i8* %8177, align 1
  %8178 = icmp eq i64 %8159, 0
  %8179 = zext i1 %8178 to i8
  %8180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8179, i8* %8180, align 1
  %8181 = lshr i64 %8159, 63
  %8182 = trunc i64 %8181 to i8
  %8183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8182, i8* %8183, align 1
  %8184 = lshr i64 %8155, 63
  %8185 = lshr i64 %8156, 63
  %8186 = xor i64 %8181, %8184
  %8187 = xor i64 %8181, %8185
  %8188 = add i64 %8186, %8187
  %8189 = icmp eq i64 %8188, 2
  %8190 = zext i1 %8189 to i8
  %8191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8190, i8* %8191, align 1
  store %struct.Memory* %loadMem_443dde, %struct.Memory** %MEMORY
  %loadMem_443de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8193 = getelementptr inbounds %struct.GPR, %struct.GPR* %8192, i32 0, i32 33
  %8194 = getelementptr inbounds %struct.Reg, %struct.Reg* %8193, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %8194 to i64*
  %8195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8196 = getelementptr inbounds %struct.GPR, %struct.GPR* %8195, i32 0, i32 1
  %8197 = getelementptr inbounds %struct.Reg, %struct.Reg* %8196, i32 0, i32 0
  %RAX.i93 = bitcast %union.anon* %8197 to i64*
  %8198 = load i64, i64* %RAX.i93
  %8199 = add i64 %8198, 16
  %8200 = load i64, i64* %PC.i92
  %8201 = add i64 %8200, 7
  store i64 %8201, i64* %PC.i92
  %8202 = inttoptr i64 %8199 to i32*
  store i32 2, i32* %8202
  store %struct.Memory* %loadMem_443de1, %struct.Memory** %MEMORY
  br label %block_.L_443de8

block_.L_443de8:                                  ; preds = %block_.L_443dd2, %block_.L_443db8
  %loadMem_443de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8204 = getelementptr inbounds %struct.GPR, %struct.GPR* %8203, i32 0, i32 33
  %8205 = getelementptr inbounds %struct.Reg, %struct.Reg* %8204, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %8205 to i64*
  %8206 = load i64, i64* %PC.i91
  %8207 = add i64 %8206, 5
  %8208 = load i64, i64* %PC.i91
  %8209 = add i64 %8208, 5
  store i64 %8209, i64* %PC.i91
  %8210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8207, i64* %8210, align 8
  store %struct.Memory* %loadMem_443de8, %struct.Memory** %MEMORY
  br label %block_.L_443ded

block_.L_443ded:                                  ; preds = %block_.L_443de8, %block_443c1a
  %loadMem_443ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %8211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8212 = getelementptr inbounds %struct.GPR, %struct.GPR* %8211, i32 0, i32 33
  %8213 = getelementptr inbounds %struct.Reg, %struct.Reg* %8212, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %8213 to i64*
  %8214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8215 = getelementptr inbounds %struct.GPR, %struct.GPR* %8214, i32 0, i32 1
  %8216 = getelementptr inbounds %struct.Reg, %struct.Reg* %8215, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %8216 to i64*
  %8217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8218 = getelementptr inbounds %struct.GPR, %struct.GPR* %8217, i32 0, i32 15
  %8219 = getelementptr inbounds %struct.Reg, %struct.Reg* %8218, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %8219 to i64*
  %8220 = load i64, i64* %RBP.i90
  %8221 = sub i64 %8220, 64
  %8222 = load i64, i64* %PC.i88
  %8223 = add i64 %8222, 4
  store i64 %8223, i64* %PC.i88
  %8224 = inttoptr i64 %8221 to i64*
  %8225 = load i64, i64* %8224
  store i64 %8225, i64* %RAX.i89, align 8
  store %struct.Memory* %loadMem_443ded, %struct.Memory** %MEMORY
  %loadMem_443df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8227 = getelementptr inbounds %struct.GPR, %struct.GPR* %8226, i32 0, i32 33
  %8228 = getelementptr inbounds %struct.Reg, %struct.Reg* %8227, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %8228 to i64*
  %8229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8230 = getelementptr inbounds %struct.GPR, %struct.GPR* %8229, i32 0, i32 1
  %8231 = getelementptr inbounds %struct.Reg, %struct.Reg* %8230, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %8231 to i64*
  %8232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8233 = getelementptr inbounds %struct.GPR, %struct.GPR* %8232, i32 0, i32 5
  %8234 = getelementptr inbounds %struct.Reg, %struct.Reg* %8233, i32 0, i32 0
  %RCX.i87 = bitcast %union.anon* %8234 to i64*
  %8235 = load i64, i64* %RAX.i86
  %8236 = add i64 %8235, 120
  %8237 = load i64, i64* %PC.i85
  %8238 = add i64 %8237, 3
  store i64 %8238, i64* %PC.i85
  %8239 = inttoptr i64 %8236 to i32*
  %8240 = load i32, i32* %8239
  %8241 = zext i32 %8240 to i64
  store i64 %8241, i64* %RCX.i87, align 8
  store %struct.Memory* %loadMem_443df1, %struct.Memory** %MEMORY
  %loadMem_443df4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8243 = getelementptr inbounds %struct.GPR, %struct.GPR* %8242, i32 0, i32 33
  %8244 = getelementptr inbounds %struct.Reg, %struct.Reg* %8243, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %8244 to i64*
  %8245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8246 = getelementptr inbounds %struct.GPR, %struct.GPR* %8245, i32 0, i32 5
  %8247 = getelementptr inbounds %struct.Reg, %struct.Reg* %8246, i32 0, i32 0
  %RCX.i84 = bitcast %union.anon* %8247 to i64*
  %8248 = load i64, i64* %RCX.i84
  %8249 = load i64, i64* %PC.i83
  %8250 = add i64 %8249, 6
  store i64 %8250, i64* %PC.i83
  %8251 = and i64 8192, %8248
  %8252 = trunc i64 %8251 to i32
  store i64 %8251, i64* %RCX.i84, align 8
  %8253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8253, align 1
  %8254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8254, align 1
  %8255 = icmp eq i32 %8252, 0
  %8256 = zext i1 %8255 to i8
  %8257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8256, i8* %8257, align 1
  %8258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8258, align 1
  %8259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8259, align 1
  %8260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8260, align 1
  store %struct.Memory* %loadMem_443df4, %struct.Memory** %MEMORY
  %loadMem_443dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %8261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8262 = getelementptr inbounds %struct.GPR, %struct.GPR* %8261, i32 0, i32 33
  %8263 = getelementptr inbounds %struct.Reg, %struct.Reg* %8262, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %8263 to i64*
  %8264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8265 = getelementptr inbounds %struct.GPR, %struct.GPR* %8264, i32 0, i32 5
  %8266 = getelementptr inbounds %struct.Reg, %struct.Reg* %8265, i32 0, i32 0
  %ECX.i82 = bitcast %union.anon* %8266 to i32*
  %8267 = load i32, i32* %ECX.i82
  %8268 = zext i32 %8267 to i64
  %8269 = load i64, i64* %PC.i81
  %8270 = add i64 %8269, 3
  store i64 %8270, i64* %PC.i81
  %8271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8271, align 1
  %8272 = and i32 %8267, 255
  %8273 = call i32 @llvm.ctpop.i32(i32 %8272)
  %8274 = trunc i32 %8273 to i8
  %8275 = and i8 %8274, 1
  %8276 = xor i8 %8275, 1
  %8277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8276, i8* %8277, align 1
  %8278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8278, align 1
  %8279 = icmp eq i32 %8267, 0
  %8280 = zext i1 %8279 to i8
  %8281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8280, i8* %8281, align 1
  %8282 = lshr i32 %8267, 31
  %8283 = trunc i32 %8282 to i8
  %8284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8283, i8* %8284, align 1
  %8285 = lshr i32 %8267, 31
  %8286 = xor i32 %8282, %8285
  %8287 = add i32 %8286, %8285
  %8288 = icmp eq i32 %8287, 2
  %8289 = zext i1 %8288 to i8
  %8290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8289, i8* %8290, align 1
  store %struct.Memory* %loadMem_443dfa, %struct.Memory** %MEMORY
  %loadMem_443dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %8291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8292 = getelementptr inbounds %struct.GPR, %struct.GPR* %8291, i32 0, i32 33
  %8293 = getelementptr inbounds %struct.Reg, %struct.Reg* %8292, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %8293 to i64*
  %8294 = load i64, i64* %PC.i80
  %8295 = add i64 %8294, 33
  %8296 = load i64, i64* %PC.i80
  %8297 = add i64 %8296, 6
  %8298 = load i64, i64* %PC.i80
  %8299 = add i64 %8298, 6
  store i64 %8299, i64* %PC.i80
  %8300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8301 = load i8, i8* %8300, align 1
  store i8 %8301, i8* %BRANCH_TAKEN, align 1
  %8302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8303 = icmp ne i8 %8301, 0
  %8304 = select i1 %8303, i64 %8295, i64 %8297
  store i64 %8304, i64* %8302, align 8
  store %struct.Memory* %loadMem_443dfd, %struct.Memory** %MEMORY
  %loadBr_443dfd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443dfd = icmp eq i8 %loadBr_443dfd, 1
  br i1 %cmpBr_443dfd, label %block_.L_443e1e, label %block_443e03

block_443e03:                                     ; preds = %block_.L_443ded
  %loadMem_443e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8306 = getelementptr inbounds %struct.GPR, %struct.GPR* %8305, i32 0, i32 33
  %8307 = getelementptr inbounds %struct.Reg, %struct.Reg* %8306, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %8307 to i64*
  %8308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8309 = getelementptr inbounds %struct.GPR, %struct.GPR* %8308, i32 0, i32 1
  %8310 = getelementptr inbounds %struct.Reg, %struct.Reg* %8309, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %8310 to i64*
  %8311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8312 = getelementptr inbounds %struct.GPR, %struct.GPR* %8311, i32 0, i32 15
  %8313 = getelementptr inbounds %struct.Reg, %struct.Reg* %8312, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %8313 to i64*
  %8314 = load i64, i64* %RBP.i79
  %8315 = sub i64 %8314, 32
  %8316 = load i64, i64* %PC.i77
  %8317 = add i64 %8316, 4
  store i64 %8317, i64* %PC.i77
  %8318 = inttoptr i64 %8315 to i64*
  %8319 = load i64, i64* %8318
  store i64 %8319, i64* %RAX.i78, align 8
  store %struct.Memory* %loadMem_443e03, %struct.Memory** %MEMORY
  %loadMem_443e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8321 = getelementptr inbounds %struct.GPR, %struct.GPR* %8320, i32 0, i32 33
  %8322 = getelementptr inbounds %struct.Reg, %struct.Reg* %8321, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %8322 to i64*
  %8323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8324 = getelementptr inbounds %struct.GPR, %struct.GPR* %8323, i32 0, i32 5
  %8325 = getelementptr inbounds %struct.Reg, %struct.Reg* %8324, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %8325 to i64*
  %8326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8327 = getelementptr inbounds %struct.GPR, %struct.GPR* %8326, i32 0, i32 15
  %8328 = getelementptr inbounds %struct.Reg, %struct.Reg* %8327, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %8328 to i64*
  %8329 = load i64, i64* %RBP.i76
  %8330 = sub i64 %8329, 48
  %8331 = load i64, i64* %PC.i74
  %8332 = add i64 %8331, 4
  store i64 %8332, i64* %PC.i74
  %8333 = inttoptr i64 %8330 to i32*
  %8334 = load i32, i32* %8333
  %8335 = sext i32 %8334 to i64
  store i64 %8335, i64* %RCX.i75, align 8
  store %struct.Memory* %loadMem_443e07, %struct.Memory** %MEMORY
  %loadMem_443e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8337 = getelementptr inbounds %struct.GPR, %struct.GPR* %8336, i32 0, i32 33
  %8338 = getelementptr inbounds %struct.Reg, %struct.Reg* %8337, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %8338 to i64*
  %8339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8340 = getelementptr inbounds %struct.GPR, %struct.GPR* %8339, i32 0, i32 5
  %8341 = getelementptr inbounds %struct.Reg, %struct.Reg* %8340, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %8341 to i64*
  %8342 = load i64, i64* %RCX.i73
  %8343 = load i64, i64* %PC.i72
  %8344 = add i64 %8343, 4
  store i64 %8344, i64* %PC.i72
  %8345 = shl i64 %8342, 4
  %8346 = icmp slt i64 %8345, 0
  %8347 = shl i64 %8345, 1
  store i64 %8347, i64* %RCX.i73, align 8
  %8348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8349 = zext i1 %8346 to i8
  store i8 %8349, i8* %8348, align 1
  %8350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8351 = trunc i64 %8347 to i32
  %8352 = and i32 %8351, 254
  %8353 = call i32 @llvm.ctpop.i32(i32 %8352)
  %8354 = trunc i32 %8353 to i8
  %8355 = and i8 %8354, 1
  %8356 = xor i8 %8355, 1
  store i8 %8356, i8* %8350, align 1
  %8357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8357, align 1
  %8358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8359 = icmp eq i64 %8347, 0
  %8360 = zext i1 %8359 to i8
  store i8 %8360, i8* %8358, align 1
  %8361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8362 = lshr i64 %8347, 63
  %8363 = trunc i64 %8362 to i8
  store i8 %8363, i8* %8361, align 1
  %8364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8364, align 1
  store %struct.Memory* %loadMem_443e0b, %struct.Memory** %MEMORY
  %loadMem_443e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8366 = getelementptr inbounds %struct.GPR, %struct.GPR* %8365, i32 0, i32 33
  %8367 = getelementptr inbounds %struct.Reg, %struct.Reg* %8366, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %8367 to i64*
  %8368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8369 = getelementptr inbounds %struct.GPR, %struct.GPR* %8368, i32 0, i32 1
  %8370 = getelementptr inbounds %struct.Reg, %struct.Reg* %8369, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %8370 to i64*
  %8371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8372 = getelementptr inbounds %struct.GPR, %struct.GPR* %8371, i32 0, i32 5
  %8373 = getelementptr inbounds %struct.Reg, %struct.Reg* %8372, i32 0, i32 0
  %RCX.i71 = bitcast %union.anon* %8373 to i64*
  %8374 = load i64, i64* %RAX.i70
  %8375 = load i64, i64* %RCX.i71
  %8376 = load i64, i64* %PC.i69
  %8377 = add i64 %8376, 3
  store i64 %8377, i64* %PC.i69
  %8378 = add i64 %8375, %8374
  store i64 %8378, i64* %RAX.i70, align 8
  %8379 = icmp ult i64 %8378, %8374
  %8380 = icmp ult i64 %8378, %8375
  %8381 = or i1 %8379, %8380
  %8382 = zext i1 %8381 to i8
  %8383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8382, i8* %8383, align 1
  %8384 = trunc i64 %8378 to i32
  %8385 = and i32 %8384, 255
  %8386 = call i32 @llvm.ctpop.i32(i32 %8385)
  %8387 = trunc i32 %8386 to i8
  %8388 = and i8 %8387, 1
  %8389 = xor i8 %8388, 1
  %8390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8389, i8* %8390, align 1
  %8391 = xor i64 %8375, %8374
  %8392 = xor i64 %8391, %8378
  %8393 = lshr i64 %8392, 4
  %8394 = trunc i64 %8393 to i8
  %8395 = and i8 %8394, 1
  %8396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8395, i8* %8396, align 1
  %8397 = icmp eq i64 %8378, 0
  %8398 = zext i1 %8397 to i8
  %8399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8398, i8* %8399, align 1
  %8400 = lshr i64 %8378, 63
  %8401 = trunc i64 %8400 to i8
  %8402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8401, i8* %8402, align 1
  %8403 = lshr i64 %8374, 63
  %8404 = lshr i64 %8375, 63
  %8405 = xor i64 %8400, %8403
  %8406 = xor i64 %8400, %8404
  %8407 = add i64 %8405, %8406
  %8408 = icmp eq i64 %8407, 2
  %8409 = zext i1 %8408 to i8
  %8410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8409, i8* %8410, align 1
  store %struct.Memory* %loadMem_443e0f, %struct.Memory** %MEMORY
  %loadMem_443e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8412 = getelementptr inbounds %struct.GPR, %struct.GPR* %8411, i32 0, i32 33
  %8413 = getelementptr inbounds %struct.Reg, %struct.Reg* %8412, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %8413 to i64*
  %8414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8415 = getelementptr inbounds %struct.GPR, %struct.GPR* %8414, i32 0, i32 1
  %8416 = getelementptr inbounds %struct.Reg, %struct.Reg* %8415, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %8416 to i64*
  %8417 = load i64, i64* %RAX.i68
  %8418 = add i64 %8417, 20
  %8419 = load i64, i64* %PC.i67
  %8420 = add i64 %8419, 7
  store i64 %8420, i64* %PC.i67
  %8421 = inttoptr i64 %8418 to i32*
  store i32 1, i32* %8421
  store %struct.Memory* %loadMem_443e12, %struct.Memory** %MEMORY
  %loadMem_443e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8423 = getelementptr inbounds %struct.GPR, %struct.GPR* %8422, i32 0, i32 33
  %8424 = getelementptr inbounds %struct.Reg, %struct.Reg* %8423, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %8424 to i64*
  %8425 = load i64, i64* %PC.i66
  %8426 = add i64 %8425, 27
  %8427 = load i64, i64* %PC.i66
  %8428 = add i64 %8427, 5
  store i64 %8428, i64* %PC.i66
  %8429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8426, i64* %8429, align 8
  store %struct.Memory* %loadMem_443e19, %struct.Memory** %MEMORY
  br label %block_.L_443e34

block_.L_443e1e:                                  ; preds = %block_.L_443ded
  %loadMem_443e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8431 = getelementptr inbounds %struct.GPR, %struct.GPR* %8430, i32 0, i32 33
  %8432 = getelementptr inbounds %struct.Reg, %struct.Reg* %8431, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %8432 to i64*
  %8433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8434 = getelementptr inbounds %struct.GPR, %struct.GPR* %8433, i32 0, i32 1
  %8435 = getelementptr inbounds %struct.Reg, %struct.Reg* %8434, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %8435 to i64*
  %8436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8437 = getelementptr inbounds %struct.GPR, %struct.GPR* %8436, i32 0, i32 15
  %8438 = getelementptr inbounds %struct.Reg, %struct.Reg* %8437, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %8438 to i64*
  %8439 = load i64, i64* %RBP.i65
  %8440 = sub i64 %8439, 32
  %8441 = load i64, i64* %PC.i63
  %8442 = add i64 %8441, 4
  store i64 %8442, i64* %PC.i63
  %8443 = inttoptr i64 %8440 to i64*
  %8444 = load i64, i64* %8443
  store i64 %8444, i64* %RAX.i64, align 8
  store %struct.Memory* %loadMem_443e1e, %struct.Memory** %MEMORY
  %loadMem_443e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8446 = getelementptr inbounds %struct.GPR, %struct.GPR* %8445, i32 0, i32 33
  %8447 = getelementptr inbounds %struct.Reg, %struct.Reg* %8446, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %8447 to i64*
  %8448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8449 = getelementptr inbounds %struct.GPR, %struct.GPR* %8448, i32 0, i32 5
  %8450 = getelementptr inbounds %struct.Reg, %struct.Reg* %8449, i32 0, i32 0
  %RCX.i61 = bitcast %union.anon* %8450 to i64*
  %8451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8452 = getelementptr inbounds %struct.GPR, %struct.GPR* %8451, i32 0, i32 15
  %8453 = getelementptr inbounds %struct.Reg, %struct.Reg* %8452, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %8453 to i64*
  %8454 = load i64, i64* %RBP.i62
  %8455 = sub i64 %8454, 48
  %8456 = load i64, i64* %PC.i60
  %8457 = add i64 %8456, 4
  store i64 %8457, i64* %PC.i60
  %8458 = inttoptr i64 %8455 to i32*
  %8459 = load i32, i32* %8458
  %8460 = sext i32 %8459 to i64
  store i64 %8460, i64* %RCX.i61, align 8
  store %struct.Memory* %loadMem_443e22, %struct.Memory** %MEMORY
  %loadMem_443e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8462 = getelementptr inbounds %struct.GPR, %struct.GPR* %8461, i32 0, i32 33
  %8463 = getelementptr inbounds %struct.Reg, %struct.Reg* %8462, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %8463 to i64*
  %8464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8465 = getelementptr inbounds %struct.GPR, %struct.GPR* %8464, i32 0, i32 5
  %8466 = getelementptr inbounds %struct.Reg, %struct.Reg* %8465, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %8466 to i64*
  %8467 = load i64, i64* %RCX.i59
  %8468 = load i64, i64* %PC.i58
  %8469 = add i64 %8468, 4
  store i64 %8469, i64* %PC.i58
  %8470 = shl i64 %8467, 4
  %8471 = icmp slt i64 %8470, 0
  %8472 = shl i64 %8470, 1
  store i64 %8472, i64* %RCX.i59, align 8
  %8473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8474 = zext i1 %8471 to i8
  store i8 %8474, i8* %8473, align 1
  %8475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8476 = trunc i64 %8472 to i32
  %8477 = and i32 %8476, 254
  %8478 = call i32 @llvm.ctpop.i32(i32 %8477)
  %8479 = trunc i32 %8478 to i8
  %8480 = and i8 %8479, 1
  %8481 = xor i8 %8480, 1
  store i8 %8481, i8* %8475, align 1
  %8482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8482, align 1
  %8483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8484 = icmp eq i64 %8472, 0
  %8485 = zext i1 %8484 to i8
  store i8 %8485, i8* %8483, align 1
  %8486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8487 = lshr i64 %8472, 63
  %8488 = trunc i64 %8487 to i8
  store i8 %8488, i8* %8486, align 1
  %8489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8489, align 1
  store %struct.Memory* %loadMem_443e26, %struct.Memory** %MEMORY
  %loadMem_443e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8491 = getelementptr inbounds %struct.GPR, %struct.GPR* %8490, i32 0, i32 33
  %8492 = getelementptr inbounds %struct.Reg, %struct.Reg* %8491, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %8492 to i64*
  %8493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8494 = getelementptr inbounds %struct.GPR, %struct.GPR* %8493, i32 0, i32 1
  %8495 = getelementptr inbounds %struct.Reg, %struct.Reg* %8494, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %8495 to i64*
  %8496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8497 = getelementptr inbounds %struct.GPR, %struct.GPR* %8496, i32 0, i32 5
  %8498 = getelementptr inbounds %struct.Reg, %struct.Reg* %8497, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %8498 to i64*
  %8499 = load i64, i64* %RAX.i56
  %8500 = load i64, i64* %RCX.i57
  %8501 = load i64, i64* %PC.i55
  %8502 = add i64 %8501, 3
  store i64 %8502, i64* %PC.i55
  %8503 = add i64 %8500, %8499
  store i64 %8503, i64* %RAX.i56, align 8
  %8504 = icmp ult i64 %8503, %8499
  %8505 = icmp ult i64 %8503, %8500
  %8506 = or i1 %8504, %8505
  %8507 = zext i1 %8506 to i8
  %8508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8507, i8* %8508, align 1
  %8509 = trunc i64 %8503 to i32
  %8510 = and i32 %8509, 255
  %8511 = call i32 @llvm.ctpop.i32(i32 %8510)
  %8512 = trunc i32 %8511 to i8
  %8513 = and i8 %8512, 1
  %8514 = xor i8 %8513, 1
  %8515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8514, i8* %8515, align 1
  %8516 = xor i64 %8500, %8499
  %8517 = xor i64 %8516, %8503
  %8518 = lshr i64 %8517, 4
  %8519 = trunc i64 %8518 to i8
  %8520 = and i8 %8519, 1
  %8521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8520, i8* %8521, align 1
  %8522 = icmp eq i64 %8503, 0
  %8523 = zext i1 %8522 to i8
  %8524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8523, i8* %8524, align 1
  %8525 = lshr i64 %8503, 63
  %8526 = trunc i64 %8525 to i8
  %8527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8526, i8* %8527, align 1
  %8528 = lshr i64 %8499, 63
  %8529 = lshr i64 %8500, 63
  %8530 = xor i64 %8525, %8528
  %8531 = xor i64 %8525, %8529
  %8532 = add i64 %8530, %8531
  %8533 = icmp eq i64 %8532, 2
  %8534 = zext i1 %8533 to i8
  %8535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8534, i8* %8535, align 1
  store %struct.Memory* %loadMem_443e2a, %struct.Memory** %MEMORY
  %loadMem_443e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8537 = getelementptr inbounds %struct.GPR, %struct.GPR* %8536, i32 0, i32 33
  %8538 = getelementptr inbounds %struct.Reg, %struct.Reg* %8537, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %8538 to i64*
  %8539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8540 = getelementptr inbounds %struct.GPR, %struct.GPR* %8539, i32 0, i32 1
  %8541 = getelementptr inbounds %struct.Reg, %struct.Reg* %8540, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %8541 to i64*
  %8542 = load i64, i64* %RAX.i54
  %8543 = add i64 %8542, 20
  %8544 = load i64, i64* %PC.i53
  %8545 = add i64 %8544, 7
  store i64 %8545, i64* %PC.i53
  %8546 = inttoptr i64 %8543 to i32*
  store i32 0, i32* %8546
  store %struct.Memory* %loadMem_443e2d, %struct.Memory** %MEMORY
  br label %block_.L_443e34

block_.L_443e34:                                  ; preds = %block_.L_443e1e, %block_443e03
  %loadMem_443e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8548 = getelementptr inbounds %struct.GPR, %struct.GPR* %8547, i32 0, i32 33
  %8549 = getelementptr inbounds %struct.Reg, %struct.Reg* %8548, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %8549 to i64*
  %8550 = load i64, i64* %PC.i52
  %8551 = add i64 %8550, 24
  %8552 = load i64, i64* %PC.i52
  %8553 = add i64 %8552, 5
  store i64 %8553, i64* %PC.i52
  %8554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8551, i64* %8554, align 8
  store %struct.Memory* %loadMem_443e34, %struct.Memory** %MEMORY
  br label %block_.L_443e4c

block_.L_443e39:                                  ; preds = %block_.L_443b55
  %loadMem_443e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8556 = getelementptr inbounds %struct.GPR, %struct.GPR* %8555, i32 0, i32 33
  %8557 = getelementptr inbounds %struct.Reg, %struct.Reg* %8556, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %8557 to i64*
  %8558 = load i64, i64* %PC.i51
  %8559 = add i64 %8558, 5
  %8560 = load i64, i64* %PC.i51
  %8561 = add i64 %8560, 5
  store i64 %8561, i64* %PC.i51
  %8562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8559, i64* %8562, align 8
  store %struct.Memory* %loadMem_443e39, %struct.Memory** %MEMORY
  br label %block_.L_443e3e

block_.L_443e3e:                                  ; preds = %block_.L_443e39, %block_443b19
  %loadMem_443e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8564 = getelementptr inbounds %struct.GPR, %struct.GPR* %8563, i32 0, i32 33
  %8565 = getelementptr inbounds %struct.Reg, %struct.Reg* %8564, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %8565 to i64*
  %8566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8567 = getelementptr inbounds %struct.GPR, %struct.GPR* %8566, i32 0, i32 1
  %8568 = getelementptr inbounds %struct.Reg, %struct.Reg* %8567, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %8568 to i64*
  %8569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8570 = getelementptr inbounds %struct.GPR, %struct.GPR* %8569, i32 0, i32 15
  %8571 = getelementptr inbounds %struct.Reg, %struct.Reg* %8570, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %8571 to i64*
  %8572 = load i64, i64* %RBP.i50
  %8573 = sub i64 %8572, 40
  %8574 = load i64, i64* %PC.i48
  %8575 = add i64 %8574, 3
  store i64 %8575, i64* %PC.i48
  %8576 = inttoptr i64 %8573 to i32*
  %8577 = load i32, i32* %8576
  %8578 = zext i32 %8577 to i64
  store i64 %8578, i64* %RAX.i49, align 8
  store %struct.Memory* %loadMem_443e3e, %struct.Memory** %MEMORY
  %loadMem_443e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8580 = getelementptr inbounds %struct.GPR, %struct.GPR* %8579, i32 0, i32 33
  %8581 = getelementptr inbounds %struct.Reg, %struct.Reg* %8580, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %8581 to i64*
  %8582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8583 = getelementptr inbounds %struct.GPR, %struct.GPR* %8582, i32 0, i32 1
  %8584 = getelementptr inbounds %struct.Reg, %struct.Reg* %8583, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %8584 to i64*
  %8585 = load i64, i64* %RAX.i47
  %8586 = load i64, i64* %PC.i46
  %8587 = add i64 %8586, 3
  store i64 %8587, i64* %PC.i46
  %8588 = trunc i64 %8585 to i32
  %8589 = add i32 1, %8588
  %8590 = zext i32 %8589 to i64
  store i64 %8590, i64* %RAX.i47, align 8
  %8591 = icmp ult i32 %8589, %8588
  %8592 = icmp ult i32 %8589, 1
  %8593 = or i1 %8591, %8592
  %8594 = zext i1 %8593 to i8
  %8595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8594, i8* %8595, align 1
  %8596 = and i32 %8589, 255
  %8597 = call i32 @llvm.ctpop.i32(i32 %8596)
  %8598 = trunc i32 %8597 to i8
  %8599 = and i8 %8598, 1
  %8600 = xor i8 %8599, 1
  %8601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8600, i8* %8601, align 1
  %8602 = xor i64 1, %8585
  %8603 = trunc i64 %8602 to i32
  %8604 = xor i32 %8603, %8589
  %8605 = lshr i32 %8604, 4
  %8606 = trunc i32 %8605 to i8
  %8607 = and i8 %8606, 1
  %8608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8607, i8* %8608, align 1
  %8609 = icmp eq i32 %8589, 0
  %8610 = zext i1 %8609 to i8
  %8611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8610, i8* %8611, align 1
  %8612 = lshr i32 %8589, 31
  %8613 = trunc i32 %8612 to i8
  %8614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8613, i8* %8614, align 1
  %8615 = lshr i32 %8588, 31
  %8616 = xor i32 %8612, %8615
  %8617 = add i32 %8616, %8612
  %8618 = icmp eq i32 %8617, 2
  %8619 = zext i1 %8618 to i8
  %8620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8619, i8* %8620, align 1
  store %struct.Memory* %loadMem_443e41, %struct.Memory** %MEMORY
  %loadMem_443e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8622 = getelementptr inbounds %struct.GPR, %struct.GPR* %8621, i32 0, i32 33
  %8623 = getelementptr inbounds %struct.Reg, %struct.Reg* %8622, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %8623 to i64*
  %8624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8625 = getelementptr inbounds %struct.GPR, %struct.GPR* %8624, i32 0, i32 1
  %8626 = getelementptr inbounds %struct.Reg, %struct.Reg* %8625, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %8626 to i32*
  %8627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8628 = getelementptr inbounds %struct.GPR, %struct.GPR* %8627, i32 0, i32 15
  %8629 = getelementptr inbounds %struct.Reg, %struct.Reg* %8628, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %8629 to i64*
  %8630 = load i64, i64* %RBP.i45
  %8631 = sub i64 %8630, 40
  %8632 = load i32, i32* %EAX.i
  %8633 = zext i32 %8632 to i64
  %8634 = load i64, i64* %PC.i44
  %8635 = add i64 %8634, 3
  store i64 %8635, i64* %PC.i44
  %8636 = inttoptr i64 %8631 to i32*
  store i32 %8632, i32* %8636
  store %struct.Memory* %loadMem_443e44, %struct.Memory** %MEMORY
  %loadMem_443e47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8638 = getelementptr inbounds %struct.GPR, %struct.GPR* %8637, i32 0, i32 33
  %8639 = getelementptr inbounds %struct.Reg, %struct.Reg* %8638, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %8639 to i64*
  %8640 = load i64, i64* %PC.i43
  %8641 = add i64 %8640, -1728
  %8642 = load i64, i64* %PC.i43
  %8643 = add i64 %8642, 5
  store i64 %8643, i64* %PC.i43
  %8644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8641, i64* %8644, align 8
  store %struct.Memory* %loadMem_443e47, %struct.Memory** %MEMORY
  br label %block_.L_443787

block_.L_443e4c:                                  ; preds = %block_.L_443e34, %block_.L_443787
  %loadMem_443e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8646 = getelementptr inbounds %struct.GPR, %struct.GPR* %8645, i32 0, i32 33
  %8647 = getelementptr inbounds %struct.Reg, %struct.Reg* %8646, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %8647 to i64*
  %8648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8649 = getelementptr inbounds %struct.GPR, %struct.GPR* %8648, i32 0, i32 1
  %8650 = getelementptr inbounds %struct.Reg, %struct.Reg* %8649, i32 0, i32 0
  %RAX.i41 = bitcast %union.anon* %8650 to i64*
  %8651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8652 = getelementptr inbounds %struct.GPR, %struct.GPR* %8651, i32 0, i32 15
  %8653 = getelementptr inbounds %struct.Reg, %struct.Reg* %8652, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %8653 to i64*
  %8654 = load i64, i64* %RBP.i42
  %8655 = sub i64 %8654, 88
  %8656 = load i64, i64* %PC.i40
  %8657 = add i64 %8656, 4
  store i64 %8657, i64* %PC.i40
  %8658 = inttoptr i64 %8655 to i64*
  %8659 = load i64, i64* %8658
  store i64 %8659, i64* %RAX.i41, align 8
  store %struct.Memory* %loadMem_443e4c, %struct.Memory** %MEMORY
  %loadMem_443e50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8661 = getelementptr inbounds %struct.GPR, %struct.GPR* %8660, i32 0, i32 33
  %8662 = getelementptr inbounds %struct.Reg, %struct.Reg* %8661, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %8662 to i64*
  %8663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8664 = getelementptr inbounds %struct.GPR, %struct.GPR* %8663, i32 0, i32 1
  %8665 = getelementptr inbounds %struct.Reg, %struct.Reg* %8664, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %8665 to i64*
  %8666 = load i64, i64* %RAX.i39
  %8667 = load i64, i64* %PC.i38
  %8668 = add i64 %8667, 8
  store i64 %8668, i64* %PC.i38
  store i64 %8666, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  store %struct.Memory* %loadMem_443e50, %struct.Memory** %MEMORY
  %loadMem_443e58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8670 = getelementptr inbounds %struct.GPR, %struct.GPR* %8669, i32 0, i32 33
  %8671 = getelementptr inbounds %struct.Reg, %struct.Reg* %8670, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %8671 to i64*
  %8672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8673 = getelementptr inbounds %struct.GPR, %struct.GPR* %8672, i32 0, i32 5
  %8674 = getelementptr inbounds %struct.Reg, %struct.Reg* %8673, i32 0, i32 0
  %RCX.i36 = bitcast %union.anon* %8674 to i64*
  %8675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8676 = getelementptr inbounds %struct.GPR, %struct.GPR* %8675, i32 0, i32 15
  %8677 = getelementptr inbounds %struct.Reg, %struct.Reg* %8676, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %8677 to i64*
  %8678 = load i64, i64* %RBP.i37
  %8679 = sub i64 %8678, 92
  %8680 = load i64, i64* %PC.i35
  %8681 = add i64 %8680, 3
  store i64 %8681, i64* %PC.i35
  %8682 = inttoptr i64 %8679 to i32*
  %8683 = load i32, i32* %8682
  %8684 = zext i32 %8683 to i64
  store i64 %8684, i64* %RCX.i36, align 8
  store %struct.Memory* %loadMem_443e58, %struct.Memory** %MEMORY
  %loadMem_443e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8686 = getelementptr inbounds %struct.GPR, %struct.GPR* %8685, i32 0, i32 33
  %8687 = getelementptr inbounds %struct.Reg, %struct.Reg* %8686, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %8687 to i64*
  %8688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8689 = getelementptr inbounds %struct.GPR, %struct.GPR* %8688, i32 0, i32 5
  %8690 = getelementptr inbounds %struct.Reg, %struct.Reg* %8689, i32 0, i32 0
  %ECX.i34 = bitcast %union.anon* %8690 to i32*
  %8691 = load i32, i32* %ECX.i34
  %8692 = zext i32 %8691 to i64
  %8693 = load i64, i64* %PC.i33
  %8694 = add i64 %8693, 7
  store i64 %8694, i64* %PC.i33
  store i32 %8691, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*)
  store %struct.Memory* %loadMem_443e5b, %struct.Memory** %MEMORY
  %loadMem_443e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8696 = getelementptr inbounds %struct.GPR, %struct.GPR* %8695, i32 0, i32 33
  %8697 = getelementptr inbounds %struct.Reg, %struct.Reg* %8696, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %8697 to i64*
  %8698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8699 = getelementptr inbounds %struct.GPR, %struct.GPR* %8698, i32 0, i32 5
  %8700 = getelementptr inbounds %struct.Reg, %struct.Reg* %8699, i32 0, i32 0
  %RCX.i31 = bitcast %union.anon* %8700 to i64*
  %8701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8702 = getelementptr inbounds %struct.GPR, %struct.GPR* %8701, i32 0, i32 15
  %8703 = getelementptr inbounds %struct.Reg, %struct.Reg* %8702, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %8703 to i64*
  %8704 = load i64, i64* %RBP.i32
  %8705 = sub i64 %8704, 40
  %8706 = load i64, i64* %PC.i30
  %8707 = add i64 %8706, 3
  store i64 %8707, i64* %PC.i30
  %8708 = inttoptr i64 %8705 to i32*
  %8709 = load i32, i32* %8708
  %8710 = zext i32 %8709 to i64
  store i64 %8710, i64* %RCX.i31, align 8
  store %struct.Memory* %loadMem_443e62, %struct.Memory** %MEMORY
  %loadMem_443e65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8712 = getelementptr inbounds %struct.GPR, %struct.GPR* %8711, i32 0, i32 33
  %8713 = getelementptr inbounds %struct.Reg, %struct.Reg* %8712, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %8713 to i64*
  %8714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8715 = getelementptr inbounds %struct.GPR, %struct.GPR* %8714, i32 0, i32 5
  %8716 = getelementptr inbounds %struct.Reg, %struct.Reg* %8715, i32 0, i32 0
  %RCX.i29 = bitcast %union.anon* %8716 to i64*
  %8717 = load i64, i64* %RCX.i29
  %8718 = load i64, i64* %PC.i28
  %8719 = add i64 %8718, 3
  store i64 %8719, i64* %PC.i28
  %8720 = trunc i64 %8717 to i32
  %8721 = add i32 1, %8720
  %8722 = zext i32 %8721 to i64
  store i64 %8722, i64* %RCX.i29, align 8
  %8723 = icmp ult i32 %8721, %8720
  %8724 = icmp ult i32 %8721, 1
  %8725 = or i1 %8723, %8724
  %8726 = zext i1 %8725 to i8
  %8727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8726, i8* %8727, align 1
  %8728 = and i32 %8721, 255
  %8729 = call i32 @llvm.ctpop.i32(i32 %8728)
  %8730 = trunc i32 %8729 to i8
  %8731 = and i8 %8730, 1
  %8732 = xor i8 %8731, 1
  %8733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8732, i8* %8733, align 1
  %8734 = xor i64 1, %8717
  %8735 = trunc i64 %8734 to i32
  %8736 = xor i32 %8735, %8721
  %8737 = lshr i32 %8736, 4
  %8738 = trunc i32 %8737 to i8
  %8739 = and i8 %8738, 1
  %8740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8739, i8* %8740, align 1
  %8741 = icmp eq i32 %8721, 0
  %8742 = zext i1 %8741 to i8
  %8743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8742, i8* %8743, align 1
  %8744 = lshr i32 %8721, 31
  %8745 = trunc i32 %8744 to i8
  %8746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8745, i8* %8746, align 1
  %8747 = lshr i32 %8720, 31
  %8748 = xor i32 %8744, %8747
  %8749 = add i32 %8748, %8744
  %8750 = icmp eq i32 %8749, 2
  %8751 = zext i1 %8750 to i8
  %8752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8751, i8* %8752, align 1
  store %struct.Memory* %loadMem_443e65, %struct.Memory** %MEMORY
  %loadMem_443e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8754 = getelementptr inbounds %struct.GPR, %struct.GPR* %8753, i32 0, i32 33
  %8755 = getelementptr inbounds %struct.Reg, %struct.Reg* %8754, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %8755 to i64*
  %8756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8757 = getelementptr inbounds %struct.GPR, %struct.GPR* %8756, i32 0, i32 1
  %8758 = getelementptr inbounds %struct.Reg, %struct.Reg* %8757, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %8758 to i64*
  %8759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8760 = getelementptr inbounds %struct.GPR, %struct.GPR* %8759, i32 0, i32 15
  %8761 = getelementptr inbounds %struct.Reg, %struct.Reg* %8760, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %8761 to i64*
  %8762 = load i64, i64* %RBP.i27
  %8763 = sub i64 %8762, 16
  %8764 = load i64, i64* %PC.i25
  %8765 = add i64 %8764, 4
  store i64 %8765, i64* %PC.i25
  %8766 = inttoptr i64 %8763 to i64*
  %8767 = load i64, i64* %8766
  store i64 %8767, i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_443e68, %struct.Memory** %MEMORY
  %loadMem_443e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8769 = getelementptr inbounds %struct.GPR, %struct.GPR* %8768, i32 0, i32 33
  %8770 = getelementptr inbounds %struct.Reg, %struct.Reg* %8769, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %8770 to i64*
  %8771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8772 = getelementptr inbounds %struct.GPR, %struct.GPR* %8771, i32 0, i32 5
  %8773 = getelementptr inbounds %struct.Reg, %struct.Reg* %8772, i32 0, i32 0
  %ECX.i23 = bitcast %union.anon* %8773 to i32*
  %8774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8775 = getelementptr inbounds %struct.GPR, %struct.GPR* %8774, i32 0, i32 1
  %8776 = getelementptr inbounds %struct.Reg, %struct.Reg* %8775, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %8776 to i64*
  %8777 = load i64, i64* %RAX.i24
  %8778 = add i64 %8777, 12
  %8779 = load i32, i32* %ECX.i23
  %8780 = zext i32 %8779 to i64
  %8781 = load i64, i64* %PC.i22
  %8782 = add i64 %8781, 3
  store i64 %8782, i64* %PC.i22
  %8783 = inttoptr i64 %8778 to i32*
  store i32 %8779, i32* %8783
  store %struct.Memory* %loadMem_443e6c, %struct.Memory** %MEMORY
  %loadMem_443e6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8785 = getelementptr inbounds %struct.GPR, %struct.GPR* %8784, i32 0, i32 33
  %8786 = getelementptr inbounds %struct.Reg, %struct.Reg* %8785, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %8786 to i64*
  %8787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8788 = getelementptr inbounds %struct.GPR, %struct.GPR* %8787, i32 0, i32 5
  %8789 = getelementptr inbounds %struct.Reg, %struct.Reg* %8788, i32 0, i32 0
  %RCX.i20 = bitcast %union.anon* %8789 to i64*
  %8790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8791 = getelementptr inbounds %struct.GPR, %struct.GPR* %8790, i32 0, i32 15
  %8792 = getelementptr inbounds %struct.Reg, %struct.Reg* %8791, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %8792 to i64*
  %8793 = load i64, i64* %RBP.i21
  %8794 = sub i64 %8793, 40
  %8795 = load i64, i64* %PC.i19
  %8796 = add i64 %8795, 3
  store i64 %8796, i64* %PC.i19
  %8797 = inttoptr i64 %8794 to i32*
  %8798 = load i32, i32* %8797
  %8799 = zext i32 %8798 to i64
  store i64 %8799, i64* %RCX.i20, align 8
  store %struct.Memory* %loadMem_443e6f, %struct.Memory** %MEMORY
  %loadMem_443e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8801 = getelementptr inbounds %struct.GPR, %struct.GPR* %8800, i32 0, i32 33
  %8802 = getelementptr inbounds %struct.Reg, %struct.Reg* %8801, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %8802 to i64*
  %8803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8804 = getelementptr inbounds %struct.GPR, %struct.GPR* %8803, i32 0, i32 5
  %8805 = getelementptr inbounds %struct.Reg, %struct.Reg* %8804, i32 0, i32 0
  %RCX.i18 = bitcast %union.anon* %8805 to i64*
  %8806 = load i64, i64* %RCX.i18
  %8807 = load i64, i64* %PC.i17
  %8808 = add i64 %8807, 3
  store i64 %8808, i64* %PC.i17
  %8809 = trunc i64 %8806 to i32
  %8810 = add i32 1, %8809
  %8811 = zext i32 %8810 to i64
  store i64 %8811, i64* %RCX.i18, align 8
  %8812 = icmp ult i32 %8810, %8809
  %8813 = icmp ult i32 %8810, 1
  %8814 = or i1 %8812, %8813
  %8815 = zext i1 %8814 to i8
  %8816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8815, i8* %8816, align 1
  %8817 = and i32 %8810, 255
  %8818 = call i32 @llvm.ctpop.i32(i32 %8817)
  %8819 = trunc i32 %8818 to i8
  %8820 = and i8 %8819, 1
  %8821 = xor i8 %8820, 1
  %8822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8821, i8* %8822, align 1
  %8823 = xor i64 1, %8806
  %8824 = trunc i64 %8823 to i32
  %8825 = xor i32 %8824, %8810
  %8826 = lshr i32 %8825, 4
  %8827 = trunc i32 %8826 to i8
  %8828 = and i8 %8827, 1
  %8829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8828, i8* %8829, align 1
  %8830 = icmp eq i32 %8810, 0
  %8831 = zext i1 %8830 to i8
  %8832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8831, i8* %8832, align 1
  %8833 = lshr i32 %8810, 31
  %8834 = trunc i32 %8833 to i8
  %8835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8834, i8* %8835, align 1
  %8836 = lshr i32 %8809, 31
  %8837 = xor i32 %8833, %8836
  %8838 = add i32 %8837, %8833
  %8839 = icmp eq i32 %8838, 2
  %8840 = zext i1 %8839 to i8
  %8841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8840, i8* %8841, align 1
  store %struct.Memory* %loadMem_443e72, %struct.Memory** %MEMORY
  %loadMem_443e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8843 = getelementptr inbounds %struct.GPR, %struct.GPR* %8842, i32 0, i32 33
  %8844 = getelementptr inbounds %struct.Reg, %struct.Reg* %8843, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %8844 to i64*
  %8845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8846 = getelementptr inbounds %struct.GPR, %struct.GPR* %8845, i32 0, i32 1
  %8847 = getelementptr inbounds %struct.Reg, %struct.Reg* %8846, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %8847 to i64*
  %8848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8849 = getelementptr inbounds %struct.GPR, %struct.GPR* %8848, i32 0, i32 15
  %8850 = getelementptr inbounds %struct.Reg, %struct.Reg* %8849, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %8850 to i64*
  %8851 = load i64, i64* %RBP.i16
  %8852 = sub i64 %8851, 16
  %8853 = load i64, i64* %PC.i14
  %8854 = add i64 %8853, 4
  store i64 %8854, i64* %PC.i14
  %8855 = inttoptr i64 %8852 to i64*
  %8856 = load i64, i64* %8855
  store i64 %8856, i64* %RAX.i15, align 8
  store %struct.Memory* %loadMem_443e75, %struct.Memory** %MEMORY
  %loadMem_443e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8858 = getelementptr inbounds %struct.GPR, %struct.GPR* %8857, i32 0, i32 33
  %8859 = getelementptr inbounds %struct.Reg, %struct.Reg* %8858, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %8859 to i64*
  %8860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8861 = getelementptr inbounds %struct.GPR, %struct.GPR* %8860, i32 0, i32 5
  %8862 = getelementptr inbounds %struct.Reg, %struct.Reg* %8861, i32 0, i32 0
  %ECX.i12 = bitcast %union.anon* %8862 to i32*
  %8863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8864 = getelementptr inbounds %struct.GPR, %struct.GPR* %8863, i32 0, i32 1
  %8865 = getelementptr inbounds %struct.Reg, %struct.Reg* %8864, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %8865 to i64*
  %8866 = load i64, i64* %RAX.i13
  %8867 = add i64 %8866, 8
  %8868 = load i32, i32* %ECX.i12
  %8869 = zext i32 %8868 to i64
  %8870 = load i64, i64* %PC.i11
  %8871 = add i64 %8870, 3
  store i64 %8871, i64* %PC.i11
  %8872 = inttoptr i64 %8867 to i32*
  store i32 %8868, i32* %8872
  store %struct.Memory* %loadMem_443e79, %struct.Memory** %MEMORY
  %loadMem_443e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8874 = getelementptr inbounds %struct.GPR, %struct.GPR* %8873, i32 0, i32 33
  %8875 = getelementptr inbounds %struct.Reg, %struct.Reg* %8874, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %8875 to i64*
  %8876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8877 = getelementptr inbounds %struct.GPR, %struct.GPR* %8876, i32 0, i32 5
  %8878 = getelementptr inbounds %struct.Reg, %struct.Reg* %8877, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %8878 to i64*
  %8879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8880 = getelementptr inbounds %struct.GPR, %struct.GPR* %8879, i32 0, i32 15
  %8881 = getelementptr inbounds %struct.Reg, %struct.Reg* %8880, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %8881 to i64*
  %8882 = load i64, i64* %RBP.i10
  %8883 = sub i64 %8882, 76
  %8884 = load i64, i64* %PC.i9
  %8885 = add i64 %8884, 3
  store i64 %8885, i64* %PC.i9
  %8886 = inttoptr i64 %8883 to i32*
  %8887 = load i32, i32* %8886
  %8888 = zext i32 %8887 to i64
  store i64 %8888, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_443e7c, %struct.Memory** %MEMORY
  %loadMem_443e7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8890 = getelementptr inbounds %struct.GPR, %struct.GPR* %8889, i32 0, i32 33
  %8891 = getelementptr inbounds %struct.Reg, %struct.Reg* %8890, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %8891 to i64*
  %8892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8893 = getelementptr inbounds %struct.GPR, %struct.GPR* %8892, i32 0, i32 5
  %8894 = getelementptr inbounds %struct.Reg, %struct.Reg* %8893, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %8894 to i32*
  %8895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8896 = getelementptr inbounds %struct.GPR, %struct.GPR* %8895, i32 0, i32 15
  %8897 = getelementptr inbounds %struct.Reg, %struct.Reg* %8896, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %8897 to i64*
  %8898 = load i64, i64* %RBP.i8
  %8899 = sub i64 %8898, 4
  %8900 = load i32, i32* %ECX.i
  %8901 = zext i32 %8900 to i64
  %8902 = load i64, i64* %PC.i7
  %8903 = add i64 %8902, 3
  store i64 %8903, i64* %PC.i7
  %8904 = inttoptr i64 %8899 to i32*
  store i32 %8900, i32* %8904
  store %struct.Memory* %loadMem_443e7f, %struct.Memory** %MEMORY
  br label %block_.L_443e82

block_.L_443e82:                                  ; preds = %block_.L_443e4c, %block_4439cc
  %loadMem_443e82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8906 = getelementptr inbounds %struct.GPR, %struct.GPR* %8905, i32 0, i32 33
  %8907 = getelementptr inbounds %struct.Reg, %struct.Reg* %8906, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %8907 to i64*
  %8908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8909 = getelementptr inbounds %struct.GPR, %struct.GPR* %8908, i32 0, i32 1
  %8910 = getelementptr inbounds %struct.Reg, %struct.Reg* %8909, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %8910 to i64*
  %8911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8912 = getelementptr inbounds %struct.GPR, %struct.GPR* %8911, i32 0, i32 15
  %8913 = getelementptr inbounds %struct.Reg, %struct.Reg* %8912, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %8913 to i64*
  %8914 = load i64, i64* %RBP.i6
  %8915 = sub i64 %8914, 4
  %8916 = load i64, i64* %PC.i5
  %8917 = add i64 %8916, 3
  store i64 %8917, i64* %PC.i5
  %8918 = inttoptr i64 %8915 to i32*
  %8919 = load i32, i32* %8918
  %8920 = zext i32 %8919 to i64
  store i64 %8920, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_443e82, %struct.Memory** %MEMORY
  %loadMem_443e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8922 = getelementptr inbounds %struct.GPR, %struct.GPR* %8921, i32 0, i32 33
  %8923 = getelementptr inbounds %struct.Reg, %struct.Reg* %8922, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %8923 to i64*
  %8924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8925 = getelementptr inbounds %struct.GPR, %struct.GPR* %8924, i32 0, i32 13
  %8926 = getelementptr inbounds %struct.Reg, %struct.Reg* %8925, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %8926 to i64*
  %8927 = load i64, i64* %RSP.i
  %8928 = load i64, i64* %PC.i4
  %8929 = add i64 %8928, 7
  store i64 %8929, i64* %PC.i4
  %8930 = add i64 160, %8927
  store i64 %8930, i64* %RSP.i, align 8
  %8931 = icmp ult i64 %8930, %8927
  %8932 = icmp ult i64 %8930, 160
  %8933 = or i1 %8931, %8932
  %8934 = zext i1 %8933 to i8
  %8935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8934, i8* %8935, align 1
  %8936 = trunc i64 %8930 to i32
  %8937 = and i32 %8936, 255
  %8938 = call i32 @llvm.ctpop.i32(i32 %8937)
  %8939 = trunc i32 %8938 to i8
  %8940 = and i8 %8939, 1
  %8941 = xor i8 %8940, 1
  %8942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8941, i8* %8942, align 1
  %8943 = xor i64 160, %8927
  %8944 = xor i64 %8943, %8930
  %8945 = lshr i64 %8944, 4
  %8946 = trunc i64 %8945 to i8
  %8947 = and i8 %8946, 1
  %8948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8947, i8* %8948, align 1
  %8949 = icmp eq i64 %8930, 0
  %8950 = zext i1 %8949 to i8
  %8951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8950, i8* %8951, align 1
  %8952 = lshr i64 %8930, 63
  %8953 = trunc i64 %8952 to i8
  %8954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8953, i8* %8954, align 1
  %8955 = lshr i64 %8927, 63
  %8956 = xor i64 %8952, %8955
  %8957 = add i64 %8956, %8952
  %8958 = icmp eq i64 %8957, 2
  %8959 = zext i1 %8958 to i8
  %8960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8959, i8* %8960, align 1
  store %struct.Memory* %loadMem_443e85, %struct.Memory** %MEMORY
  %loadMem_443e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8962 = getelementptr inbounds %struct.GPR, %struct.GPR* %8961, i32 0, i32 33
  %8963 = getelementptr inbounds %struct.Reg, %struct.Reg* %8962, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %8963 to i64*
  %8964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8965 = getelementptr inbounds %struct.GPR, %struct.GPR* %8964, i32 0, i32 15
  %8966 = getelementptr inbounds %struct.Reg, %struct.Reg* %8965, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %8966 to i64*
  %8967 = load i64, i64* %PC.i2
  %8968 = add i64 %8967, 1
  store i64 %8968, i64* %PC.i2
  %8969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8970 = load i64, i64* %8969, align 8
  %8971 = add i64 %8970, 8
  %8972 = inttoptr i64 %8970 to i64*
  %8973 = load i64, i64* %8972
  store i64 %8973, i64* %RBP.i3, align 8
  store i64 %8971, i64* %8969, align 8
  store %struct.Memory* %loadMem_443e8c, %struct.Memory** %MEMORY
  %loadMem_443e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8975 = getelementptr inbounds %struct.GPR, %struct.GPR* %8974, i32 0, i32 33
  %8976 = getelementptr inbounds %struct.Reg, %struct.Reg* %8975, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %8976 to i64*
  %8977 = load i64, i64* %PC.i1
  %8978 = add i64 %8977, 1
  store i64 %8978, i64* %PC.i1
  %8979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8981 = load i64, i64* %8980, align 8
  %8982 = inttoptr i64 %8981 to i64*
  %8983 = load i64, i64* %8982
  store i64 %8983, i64* %8979, align 8
  %8984 = add i64 %8981, 8
  store i64 %8984, i64* %8980, align 8
  store %struct.Memory* %loadMem_443e8d, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_443e8d
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

define %struct.Memory* @routine_subq__0xa0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 160
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 160
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
  %23 = xor i64 160, %9
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

define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movq_0xab0ef8___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xab0eec___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__0xab0ef8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 12
  store i64 %7, i64* %PC
  store i64 0, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0xab0eec(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*)
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

define %struct.Memory* @routine_movl_0x8__rdx____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
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

define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
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

define %struct.Memory* @routine_cmpl_0x4__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_jge_.L_443e4c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 3
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

define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x7c__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 124
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl__edx__MINUS0x6c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0xc__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jl_.L_443997(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %BRANCH_TAKEN, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %21 = select i1 %18, i64 %7, i64 %9
  store i64 %21, i64* %20, align 8
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

define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 40
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

define %struct.Memory* @routine_jle_.L_44398a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 112
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

define %struct.Memory* @routine_movq__0x0__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x7c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 124
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
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

define %struct.Memory* @routine_ucomiss_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %13 to float*
  %20 = load float, float* %19
  %21 = fcmp uno float %18, %20
  br i1 %21, label %22, label %34

; <label>:22:                                     ; preds = %block_400488
  %23 = fadd float %18, %20
  %24 = bitcast float %23 to i32
  %25 = and i32 %24, 2143289344
  %26 = icmp eq i32 %25, 2139095040
  %27 = and i32 %24, 4194303
  %28 = icmp ne i32 %27, 0
  %29 = and i1 %26, %28
  br i1 %29, label %30, label %40

; <label>:30:                                     ; preds = %22
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %32, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:34:                                     ; preds = %block_400488
  %35 = fcmp ogt float %18, %20
  br i1 %35, label %40, label %36

; <label>:36:                                     ; preds = %34
  %37 = fcmp olt float %18, %20
  br i1 %37, label %40, label %38

; <label>:38:                                     ; preds = %36
  %39 = fcmp oeq float %18, %20
  br i1 %39, label %40, label %47

; <label>:40:                                     ; preds = %38, %36, %34, %22
  %41 = phi i8 [ 0, %34 ], [ 0, %36 ], [ 1, %38 ], [ 1, %22 ]
  %42 = phi i8 [ 0, %34 ], [ 0, %36 ], [ 0, %38 ], [ 1, %22 ]
  %43 = phi i8 [ 0, %34 ], [ 1, %36 ], [ 0, %38 ], [ 1, %22 ]
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %44, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %42, i8* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %43, i8* %46, align 1
  br label %47

; <label>:47:                                     ; preds = %40, %38
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %49, align 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %50, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %30, %47
  %51 = phi %struct.Memory* [ %33, %30 ], [ %2, %47 ]
  ret %struct.Memory* %51
}

define %struct.Memory* @routine_jb_.L_443886(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_ja_.L_4438e7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_4438b8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jp_.L_4438b8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq_MINUS0x68__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 104
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

define %struct.Memory* @routine_jb_.L_4438e7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_443977(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jp_.L_443977(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x6c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 108
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

define %struct.Memory* @routine_jge_.L_443977(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq___rax____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i64*
  %16 = load i64, i64* %15
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 3
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

define %struct.Memory* @routine_movq___rcx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = inttoptr i64 %12 to i64*
  %16 = load i64, i64* %15
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq__rcx____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x7c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x6c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_44397c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 -1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, -1
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
  %26 = xor i64 -1, %9
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
  %41 = xor i32 %36, 1
  %42 = add i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
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

define %struct.Memory* @routine_jmpq_.L_443808(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
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

define %struct.Memory* @routine_cvtsi2ssl_MINUS0x24__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
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

define %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = bitcast i8* %11 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = extractelement <2 x float> %18, i32 0
  %20 = fcmp uno float %16, %19
  br i1 %20, label %21, label %33

; <label>:21:                                     ; preds = %block_400488
  %22 = fadd float %16, %19
  %23 = bitcast float %22 to i32
  %24 = and i32 %23, 2143289344
  %25 = icmp eq i32 %24, 2139095040
  %26 = and i32 %23, 4194303
  %27 = icmp ne i32 %26, 0
  %28 = and i1 %25, %27
  br i1 %28, label %29, label %39

; <label>:29:                                     ; preds = %21
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %31, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:33:                                     ; preds = %block_400488
  %34 = fcmp ogt float %16, %19
  br i1 %34, label %39, label %35

; <label>:35:                                     ; preds = %33
  %36 = fcmp olt float %16, %19
  br i1 %36, label %39, label %37

; <label>:37:                                     ; preds = %35
  %38 = fcmp oeq float %16, %19
  br i1 %38, label %39, label %46

; <label>:39:                                     ; preds = %37, %35, %33, %21
  %40 = phi i8 [ 0, %33 ], [ 0, %35 ], [ 1, %37 ], [ 1, %21 ]
  %41 = phi i8 [ 0, %33 ], [ 0, %35 ], [ 0, %37 ], [ 1, %21 ]
  %42 = phi i8 [ 0, %33 ], [ 1, %35 ], [ 0, %37 ], [ 1, %21 ]
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %40, i8* %43, align 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %41, i8* %44, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %42, i8* %45, align 1
  br label %46

; <label>:46:                                     ; preds = %39, %37
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %47, align 1
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %49, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %29, %46
  %50 = phi %struct.Memory* [ %32, %29 ], [ %2, %46 ]
  ret %struct.Memory* %50
}

define %struct.Memory* @routine_jbe_.L_443a05(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
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

define %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movq__rcx__0xab0ef8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  store i64 %9, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xab0eec(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*)
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

define %struct.Memory* @routine_jmpq_.L_443e82(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_cmpl__0x1a5__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 421
  %16 = icmp ult i32 %14, 421
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
  %25 = xor i32 %14, 421
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

define %struct.Memory* @routine_jae_.L_443a32(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 3
  %14 = icmp ult i32 %9, 3
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
  %23 = xor i64 3, %10
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

define %struct.Memory* @routine_je_.L_443a32(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_443aa3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57dd2e___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57dd2e_type* @G__0x57dd2e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc1a___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3098, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57c8be___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57c8be_type* @G__0x57c8be to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movq__rdx__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
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

define %struct.Memory* @routine_movl_MINUS0x84__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 132
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_movq_MINUS0x90__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x94__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x98__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 152
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 3
  %16 = icmp ult i32 %14, 3
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
  %25 = xor i32 %14, 3
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

define %struct.Memory* @routine_jge_.L_443aff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x5___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 4
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

define %struct.Memory* @routine_cmpl_MINUS0x38__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 56
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

define %struct.Memory* @routine_je_.L_443ae7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 4
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

define %struct.Memory* @routine_jg_.L_443aec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_443aff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_443af1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_443aaa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_443b1e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_443e3e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_443b2d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_443b55(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0xc21___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3105, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57e106___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57e106_type* @G__0x57e106 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.check_pattern_hard(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_443e39(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 4
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

define %struct.Memory* @routine_cvttss2si_MINUS0x60__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = call float @llvm.trunc.f32(float %17)
  %19 = call float @llvm.fabs.f32(float %18)
  %20 = fcmp ogt float %19, 0x41E0000000000000
  %21 = fptosi float %18 to i32
  %22 = zext i32 %21 to i64
  %23 = select i1 %20, i64 2147483648, i64 %22
  store i64 %23, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x5___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 4
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq__rcx__0x8__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
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

define %struct.Memory* @routine_jne_.L_443bd0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_443c04(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57e0a3___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57e0a3_type* @G__0x57e0a3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rax____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
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

define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 156
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x78__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x200___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = and i64 512, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RCX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %15, align 1
  %16 = icmp eq i32 %13, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
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

define %struct.Memory* @routine_je_.L_443c35(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_443ded(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_andl__0x800___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = and i64 2048, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RCX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %15, align 1
  %16 = icmp eq i32 %13, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_443dd2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 128
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_443db8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_443da5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x78__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x200___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = and i64 512, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RDX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %15, align 1
  %16 = icmp eq i32 %13, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
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

define %struct.Memory* @routine_jne_.L_443cdb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_andl__0x800___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = and i64 2048, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RDX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %15, align 1
  %16 = icmp eq i32 %13, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x8__rax____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_443da5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_443d2f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_443d64(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57e10c___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57e10c_type* @G__0x57e10c to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_je_.L_443d99(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 128
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_443da0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x2__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 128
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 2, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_443db8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_443daa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_443c5b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x10__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_443de8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x2__0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 2, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x2000___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = and i64 8192, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RCX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %15, align 1
  %16 = icmp eq i32 %13, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_443e1e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__0x14__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 20
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_443e34(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__0x14__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 20
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_443e4c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_443787(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__rax__0xab0ef8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %9, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
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

define %struct.Memory* @routine_movl__ecx__0xab0eec(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  store i32 %9, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %ECX
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

define %struct.Memory* @routine_addq__0xa0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 160, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 160
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
  %25 = xor i64 160, %9
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
