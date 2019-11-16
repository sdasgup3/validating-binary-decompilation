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
%G_0xab0f24_type = type <{ [4 x i8] }>
%G_0xb667d__rip__type = type <{ [8 x i8] }>
%G_0xb672c__rip__type = type <{ [4 x i8] }>
%G__0x42cd40_type = type <{ [8 x i8] }>
%G__0x57c705_type = type <{ [8 x i8] }>
%G__0x57c72b_type = type <{ [8 x i8] }>
%G__0x586e29_type = type <{ [8 x i8] }>
%G__0x586e37_type = type <{ [8 x i8] }>
%G__0xb72714_type = type <{ [8 x i8] }>
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
@G_0xab0f24 = global %G_0xab0f24_type zeroinitializer
@G_0xb667d__rip_ = global %G_0xb667d__rip__type zeroinitializer
@G_0xb672c__rip_ = global %G_0xb672c__rip__type zeroinitializer
@G__0x42cd40 = global %G__0x42cd40_type zeroinitializer
@G__0x57c705 = global %G__0x57c705_type zeroinitializer
@G__0x57c72b = global %G__0x57c72b_type zeroinitializer
@G__0x586e29 = global %G__0x586e29_type zeroinitializer
@G__0x586e37 = global %G__0x586e37_type zeroinitializer
@G__0xb72714 = global %G__0xb72714_type zeroinitializer

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

declare %struct.Memory* @sub_4e2700.gg_sort(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_42cdf0.add_influence_source(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @add_marked_intrusions(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_42c700 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_42c700, %struct.Memory** %MEMORY
  %loadMem_42c701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i259 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i259
  %27 = load i64, i64* %PC.i258
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i258
  store i64 %26, i64* %RBP.i260, align 8
  store %struct.Memory* %loadMem_42c701, %struct.Memory** %MEMORY
  %loadMem_42c704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i645 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i645
  %36 = load i64, i64* %PC.i644
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i644
  %38 = sub i64 %35, 64
  store i64 %38, i64* %RSP.i645, align 8
  %39 = icmp ult i64 %35, 64
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
  %49 = xor i64 64, %35
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
  store %struct.Memory* %loadMem_42c704, %struct.Memory** %MEMORY
  %loadMem_42c708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i643 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i642
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i642
  store i64 16, i64* %RAX.i643, align 8
  store %struct.Memory* %loadMem_42c708, %struct.Memory** %MEMORY
  %loadMem_42c70d = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EAX.i640 = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 7
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RDX.i641 = bitcast %union.anon* %83 to i64*
  %84 = load i32, i32* %EAX.i640
  %85 = zext i32 %84 to i64
  %86 = load i64, i64* %PC.i639
  %87 = add i64 %86, 2
  store i64 %87, i64* %PC.i639
  %88 = and i64 %85, 4294967295
  store i64 %88, i64* %RDX.i641, align 8
  store %struct.Memory* %loadMem_42c70d, %struct.Memory** %MEMORY
  %loadMem_42c70f = load %struct.Memory*, %struct.Memory** %MEMORY
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 33
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %91 to i64*
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %93 = getelementptr inbounds %struct.GPR, %struct.GPR* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.Reg, %struct.Reg* %93, i32 0, i32 0
  %RCX.i638 = bitcast %union.anon* %94 to i64*
  %95 = load i64, i64* %PC.i637
  %96 = add i64 %95, 10
  store i64 %96, i64* %PC.i637
  store i64 ptrtoint (%G__0x42cd40_type* @G__0x42cd40 to i64), i64* %RCX.i638, align 8
  store %struct.Memory* %loadMem_42c70f, %struct.Memory** %MEMORY
  %loadMem_42c719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 11
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %RDI.i635 = bitcast %union.anon* %102 to i64*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 15
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %105 to i64*
  %106 = load i64, i64* %RBP.i636
  %107 = sub i64 %106, 8
  %108 = load i64, i64* %RDI.i635
  %109 = load i64, i64* %PC.i634
  %110 = add i64 %109, 4
  store i64 %110, i64* %PC.i634
  %111 = inttoptr i64 %107 to i64*
  store i64 %108, i64* %111
  store %struct.Memory* %loadMem_42c719, %struct.Memory** %MEMORY
  %loadMem_42c71d = load %struct.Memory*, %struct.Memory** %MEMORY
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 33
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %114 to i64*
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 9
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %ESI.i632 = bitcast %union.anon* %117 to i32*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 15
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %RBP.i633 = bitcast %union.anon* %120 to i64*
  %121 = load i64, i64* %RBP.i633
  %122 = sub i64 %121, 12
  %123 = load i32, i32* %ESI.i632
  %124 = zext i32 %123 to i64
  %125 = load i64, i64* %PC.i631
  %126 = add i64 %125, 3
  store i64 %126, i64* %PC.i631
  %127 = inttoptr i64 %122 to i32*
  store i32 %123, i32* %127
  store %struct.Memory* %loadMem_42c71d, %struct.Memory** %MEMORY
  %loadMem_42c720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 33
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %130 to i64*
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 15
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %RBP.i630 = bitcast %union.anon* %133 to i64*
  %134 = load i64, i64* %RBP.i630
  %135 = sub i64 %134, 20
  %136 = load i64, i64* %PC.i629
  %137 = add i64 %136, 7
  store i64 %137, i64* %PC.i629
  %138 = inttoptr i64 %135 to i32*
  store i32 0, i32* %138
  store %struct.Memory* %loadMem_42c720, %struct.Memory** %MEMORY
  %loadMem_42c727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 33
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %141 to i64*
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 11
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %RDI.i627 = bitcast %union.anon* %144 to i64*
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 15
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %RBP.i628 = bitcast %union.anon* %147 to i64*
  %148 = load i64, i64* %RBP.i628
  %149 = sub i64 %148, 8
  %150 = load i64, i64* %PC.i626
  %151 = add i64 %150, 4
  store i64 %151, i64* %PC.i626
  %152 = inttoptr i64 %149 to i64*
  %153 = load i64, i64* %152
  store i64 %153, i64* %RDI.i627, align 8
  store %struct.Memory* %loadMem_42c727, %struct.Memory** %MEMORY
  %loadMem_42c72b = load %struct.Memory*, %struct.Memory** %MEMORY
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 33
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %156 to i64*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 11
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %RDI.i625 = bitcast %union.anon* %159 to i64*
  %160 = load i64, i64* %RDI.i625
  %161 = load i64, i64* %PC.i624
  %162 = add i64 %161, 7
  store i64 %162, i64* %PC.i624
  %163 = add i64 35672, %160
  store i64 %163, i64* %RDI.i625, align 8
  %164 = icmp ult i64 %163, %160
  %165 = icmp ult i64 %163, 35672
  %166 = or i1 %164, %165
  %167 = zext i1 %166 to i8
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %167, i8* %168, align 1
  %169 = trunc i64 %163 to i32
  %170 = and i32 %169, 255
  %171 = call i32 @llvm.ctpop.i32(i32 %170)
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  %174 = xor i8 %173, 1
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %174, i8* %175, align 1
  %176 = xor i64 35672, %160
  %177 = xor i64 %176, %163
  %178 = lshr i64 %177, 4
  %179 = trunc i64 %178 to i8
  %180 = and i8 %179, 1
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %180, i8* %181, align 1
  %182 = icmp eq i64 %163, 0
  %183 = zext i1 %182 to i8
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %183, i8* %184, align 1
  %185 = lshr i64 %163, 63
  %186 = trunc i64 %185 to i8
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %186, i8* %187, align 1
  %188 = lshr i64 %160, 63
  %189 = xor i64 %185, %188
  %190 = add i64 %189, %185
  %191 = icmp eq i64 %190, 2
  %192 = zext i1 %191 to i8
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %192, i8* %193, align 1
  store %struct.Memory* %loadMem_42c72b, %struct.Memory** %MEMORY
  %loadMem_42c732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 33
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %196 to i64*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 15
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %RBP.i622 = bitcast %union.anon* %199 to i64*
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 17
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %R8.i623 = bitcast %union.anon* %202 to i64*
  %203 = load i64, i64* %RBP.i622
  %204 = sub i64 %203, 8
  %205 = load i64, i64* %PC.i621
  %206 = add i64 %205, 4
  store i64 %206, i64* %PC.i621
  %207 = inttoptr i64 %204 to i64*
  %208 = load i64, i64* %207
  store i64 %208, i64* %R8.i623, align 8
  store %struct.Memory* %loadMem_42c732, %struct.Memory** %MEMORY
  %loadMem_42c736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 33
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %211 to i64*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 9
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %RSI.i619 = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 17
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %R8.i620 = bitcast %union.anon* %217 to i64*
  %218 = load i64, i64* %R8.i620
  %219 = add i64 %218, 35668
  %220 = load i64, i64* %PC.i618
  %221 = add i64 %220, 7
  store i64 %221, i64* %PC.i618
  %222 = inttoptr i64 %219 to i32*
  %223 = load i32, i32* %222
  %224 = sext i32 %223 to i64
  store i64 %224, i64* %RSI.i619, align 8
  store %struct.Memory* %loadMem_42c736, %struct.Memory** %MEMORY
  %loadMem1_42c73d = load %struct.Memory*, %struct.Memory** %MEMORY
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 33
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %227 to i64*
  %228 = load i64, i64* %PC.i617
  %229 = add i64 %228, 745411
  %230 = load i64, i64* %PC.i617
  %231 = add i64 %230, 5
  %232 = load i64, i64* %PC.i617
  %233 = add i64 %232, 5
  store i64 %233, i64* %PC.i617
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = add i64 %235, -8
  %237 = inttoptr i64 %236 to i64*
  store i64 %231, i64* %237
  store i64 %236, i64* %234, align 8
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %229, i64* %238, align 8
  store %struct.Memory* %loadMem1_42c73d, %struct.Memory** %MEMORY
  %loadMem2_42c73d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42c73d = load i64, i64* %3
  %call2_42c73d = call %struct.Memory* @sub_4e2700.gg_sort(%struct.State* %0, i64 %loadPC_42c73d, %struct.Memory* %loadMem2_42c73d)
  store %struct.Memory* %call2_42c73d, %struct.Memory** %MEMORY
  %loadMem_42c742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 33
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %241 to i64*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 15
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %RBP.i616 = bitcast %union.anon* %244 to i64*
  %245 = load i64, i64* %RBP.i616
  %246 = sub i64 %245, 16
  %247 = load i64, i64* %PC.i615
  %248 = add i64 %247, 7
  store i64 %248, i64* %PC.i615
  %249 = inttoptr i64 %246 to i32*
  store i32 0, i32* %249
  store %struct.Memory* %loadMem_42c742, %struct.Memory** %MEMORY
  br label %block_.L_42c749

block_.L_42c749:                                  ; preds = %block_.L_42cb88, %entry
  %loadMem_42c749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 33
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %252 to i64*
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %RAX.i613 = bitcast %union.anon* %255 to i64*
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 15
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %RBP.i614 = bitcast %union.anon* %258 to i64*
  %259 = load i64, i64* %RBP.i614
  %260 = sub i64 %259, 16
  %261 = load i64, i64* %PC.i612
  %262 = add i64 %261, 3
  store i64 %262, i64* %PC.i612
  %263 = inttoptr i64 %260 to i32*
  %264 = load i32, i32* %263
  %265 = zext i32 %264 to i64
  store i64 %265, i64* %RAX.i613, align 8
  store %struct.Memory* %loadMem_42c749, %struct.Memory** %MEMORY
  %loadMem_42c74c = load %struct.Memory*, %struct.Memory** %MEMORY
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 33
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %268 to i64*
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 5
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %RCX.i610 = bitcast %union.anon* %271 to i64*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 15
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %RBP.i611 = bitcast %union.anon* %274 to i64*
  %275 = load i64, i64* %RBP.i611
  %276 = sub i64 %275, 8
  %277 = load i64, i64* %PC.i609
  %278 = add i64 %277, 4
  store i64 %278, i64* %PC.i609
  %279 = inttoptr i64 %276 to i64*
  %280 = load i64, i64* %279
  store i64 %280, i64* %RCX.i610, align 8
  store %struct.Memory* %loadMem_42c74c, %struct.Memory** %MEMORY
  %loadMem_42c750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 33
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %283 to i64*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %EAX.i607 = bitcast %union.anon* %286 to i32*
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 5
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %RCX.i608 = bitcast %union.anon* %289 to i64*
  %290 = load i32, i32* %EAX.i607
  %291 = zext i32 %290 to i64
  %292 = load i64, i64* %RCX.i608
  %293 = add i64 %292, 35668
  %294 = load i64, i64* %PC.i606
  %295 = add i64 %294, 6
  store i64 %295, i64* %PC.i606
  %296 = inttoptr i64 %293 to i32*
  %297 = load i32, i32* %296
  %298 = sub i32 %290, %297
  %299 = icmp ult i32 %290, %297
  %300 = zext i1 %299 to i8
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %300, i8* %301, align 1
  %302 = and i32 %298, 255
  %303 = call i32 @llvm.ctpop.i32(i32 %302)
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = xor i8 %305, 1
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %306, i8* %307, align 1
  %308 = xor i32 %297, %290
  %309 = xor i32 %308, %298
  %310 = lshr i32 %309, 4
  %311 = trunc i32 %310 to i8
  %312 = and i8 %311, 1
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %312, i8* %313, align 1
  %314 = icmp eq i32 %298, 0
  %315 = zext i1 %314 to i8
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %315, i8* %316, align 1
  %317 = lshr i32 %298, 31
  %318 = trunc i32 %317 to i8
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %318, i8* %319, align 1
  %320 = lshr i32 %290, 31
  %321 = lshr i32 %297, 31
  %322 = xor i32 %321, %320
  %323 = xor i32 %317, %320
  %324 = add i32 %323, %322
  %325 = icmp eq i32 %324, 2
  %326 = zext i1 %325 to i8
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %326, i8* %327, align 1
  store %struct.Memory* %loadMem_42c750, %struct.Memory** %MEMORY
  %loadMem_42c756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 33
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %330 to i64*
  %331 = load i64, i64* %PC.i605
  %332 = add i64 %331, 1085
  %333 = load i64, i64* %PC.i605
  %334 = add i64 %333, 6
  %335 = load i64, i64* %PC.i605
  %336 = add i64 %335, 6
  store i64 %336, i64* %PC.i605
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %338 = load i8, i8* %337, align 1
  %339 = icmp ne i8 %338, 0
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %341 = load i8, i8* %340, align 1
  %342 = icmp ne i8 %341, 0
  %343 = xor i1 %339, %342
  %344 = xor i1 %343, true
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %BRANCH_TAKEN, align 1
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %347 = select i1 %343, i64 %334, i64 %332
  store i64 %347, i64* %346, align 8
  store %struct.Memory* %loadMem_42c756, %struct.Memory** %MEMORY
  %loadBr_42c756 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c756 = icmp eq i8 %loadBr_42c756, 1
  br i1 %cmpBr_42c756, label %block_.L_42cb93, label %block_42c75c

block_42c75c:                                     ; preds = %block_.L_42c749
  %loadMem_42c75c = load %struct.Memory*, %struct.Memory** %MEMORY
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 33
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %350 to i64*
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %352 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %351, i64 0, i64 0
  %YMM0.i603 = bitcast %union.VectorReg* %352 to %"class.std::bitset"*
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %354 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %353, i64 0, i64 0
  %XMM0.i604 = bitcast %union.VectorReg* %354 to %union.vec128_t*
  %355 = bitcast %"class.std::bitset"* %YMM0.i603 to i8*
  %356 = bitcast %"class.std::bitset"* %YMM0.i603 to i8*
  %357 = bitcast %union.vec128_t* %XMM0.i604 to i8*
  %358 = load i64, i64* %PC.i602
  %359 = add i64 %358, 3
  store i64 %359, i64* %PC.i602
  %360 = bitcast i8* %356 to i64*
  %361 = load i64, i64* %360, align 1
  %362 = getelementptr inbounds i8, i8* %356, i64 8
  %363 = bitcast i8* %362 to i64*
  %364 = load i64, i64* %363, align 1
  %365 = bitcast i8* %357 to i64*
  %366 = load i64, i64* %365, align 1
  %367 = getelementptr inbounds i8, i8* %357, i64 8
  %368 = bitcast i8* %367 to i64*
  %369 = load i64, i64* %368, align 1
  %370 = xor i64 %366, %361
  %371 = xor i64 %369, %364
  %372 = trunc i64 %370 to i32
  %373 = lshr i64 %370, 32
  %374 = trunc i64 %373 to i32
  %375 = bitcast i8* %355 to i32*
  store i32 %372, i32* %375, align 1
  %376 = getelementptr inbounds i8, i8* %355, i64 4
  %377 = bitcast i8* %376 to i32*
  store i32 %374, i32* %377, align 1
  %378 = trunc i64 %371 to i32
  %379 = getelementptr inbounds i8, i8* %355, i64 8
  %380 = bitcast i8* %379 to i32*
  store i32 %378, i32* %380, align 1
  %381 = lshr i64 %371, 32
  %382 = trunc i64 %381 to i32
  %383 = getelementptr inbounds i8, i8* %355, i64 12
  %384 = bitcast i8* %383 to i32*
  store i32 %382, i32* %384, align 1
  store %struct.Memory* %loadMem_42c75c, %struct.Memory** %MEMORY
  %loadMem_42c75f = load %struct.Memory*, %struct.Memory** %MEMORY
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 33
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %387 to i64*
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 15
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %390 to i64*
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %392 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %391, i64 0, i64 0
  %XMM0.i601 = bitcast %union.VectorReg* %392 to %union.vec128_t*
  %393 = load i64, i64* %RBP.i600
  %394 = sub i64 %393, 28
  %395 = bitcast %union.vec128_t* %XMM0.i601 to i8*
  %396 = load i64, i64* %PC.i599
  %397 = add i64 %396, 5
  store i64 %397, i64* %PC.i599
  %398 = bitcast i8* %395 to <2 x float>*
  %399 = load <2 x float>, <2 x float>* %398, align 1
  %400 = extractelement <2 x float> %399, i32 0
  %401 = inttoptr i64 %394 to float*
  store float %400, float* %401
  store %struct.Memory* %loadMem_42c75f, %struct.Memory** %MEMORY
  %loadMem_42c764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 33
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %404 to i64*
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %406 = getelementptr inbounds %struct.GPR, %struct.GPR* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.Reg, %struct.Reg* %406, i32 0, i32 0
  %RAX.i597 = bitcast %union.anon* %407 to i64*
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %409 = getelementptr inbounds %struct.GPR, %struct.GPR* %408, i32 0, i32 15
  %410 = getelementptr inbounds %struct.Reg, %struct.Reg* %409, i32 0, i32 0
  %RBP.i598 = bitcast %union.anon* %410 to i64*
  %411 = load i64, i64* %RBP.i598
  %412 = sub i64 %411, 8
  %413 = load i64, i64* %PC.i596
  %414 = add i64 %413, 4
  store i64 %414, i64* %PC.i596
  %415 = inttoptr i64 %412 to i64*
  %416 = load i64, i64* %415
  store i64 %416, i64* %RAX.i597, align 8
  store %struct.Memory* %loadMem_42c764, %struct.Memory** %MEMORY
  %loadMem_42c768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 33
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %419 to i64*
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %RAX.i595 = bitcast %union.anon* %422 to i64*
  %423 = load i64, i64* %RAX.i595
  %424 = load i64, i64* %PC.i594
  %425 = add i64 %424, 6
  store i64 %425, i64* %PC.i594
  %426 = add i64 35672, %423
  store i64 %426, i64* %RAX.i595, align 8
  %427 = icmp ult i64 %426, %423
  %428 = icmp ult i64 %426, 35672
  %429 = or i1 %427, %428
  %430 = zext i1 %429 to i8
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %430, i8* %431, align 1
  %432 = trunc i64 %426 to i32
  %433 = and i32 %432, 255
  %434 = call i32 @llvm.ctpop.i32(i32 %433)
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = xor i8 %436, 1
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %437, i8* %438, align 1
  %439 = xor i64 35672, %423
  %440 = xor i64 %439, %426
  %441 = lshr i64 %440, 4
  %442 = trunc i64 %441 to i8
  %443 = and i8 %442, 1
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %443, i8* %444, align 1
  %445 = icmp eq i64 %426, 0
  %446 = zext i1 %445 to i8
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %446, i8* %447, align 1
  %448 = lshr i64 %426, 63
  %449 = trunc i64 %448 to i8
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %449, i8* %450, align 1
  %451 = lshr i64 %423, 63
  %452 = xor i64 %448, %451
  %453 = add i64 %452, %448
  %454 = icmp eq i64 %453, 2
  %455 = zext i1 %454 to i8
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %455, i8* %456, align 1
  store %struct.Memory* %loadMem_42c768, %struct.Memory** %MEMORY
  %loadMem_42c76e = load %struct.Memory*, %struct.Memory** %MEMORY
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 33
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %459 to i64*
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %461 = getelementptr inbounds %struct.GPR, %struct.GPR* %460, i32 0, i32 5
  %462 = getelementptr inbounds %struct.Reg, %struct.Reg* %461, i32 0, i32 0
  %RCX.i592 = bitcast %union.anon* %462 to i64*
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 15
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %RBP.i593 = bitcast %union.anon* %465 to i64*
  %466 = load i64, i64* %RBP.i593
  %467 = sub i64 %466, 16
  %468 = load i64, i64* %PC.i591
  %469 = add i64 %468, 4
  store i64 %469, i64* %PC.i591
  %470 = inttoptr i64 %467 to i32*
  %471 = load i32, i32* %470
  %472 = sext i32 %471 to i64
  store i64 %472, i64* %RCX.i592, align 8
  store %struct.Memory* %loadMem_42c76e, %struct.Memory** %MEMORY
  %loadMem_42c772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 33
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %475 to i64*
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %477 = getelementptr inbounds %struct.GPR, %struct.GPR* %476, i32 0, i32 5
  %478 = getelementptr inbounds %struct.Reg, %struct.Reg* %477, i32 0, i32 0
  %RCX.i590 = bitcast %union.anon* %478 to i64*
  %479 = load i64, i64* %RCX.i590
  %480 = load i64, i64* %PC.i589
  %481 = add i64 %480, 4
  store i64 %481, i64* %PC.i589
  %482 = shl i64 %479, 3
  %483 = icmp slt i64 %482, 0
  %484 = shl i64 %482, 1
  store i64 %484, i64* %RCX.i590, align 8
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %486 = zext i1 %483 to i8
  store i8 %486, i8* %485, align 1
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %488 = trunc i64 %484 to i32
  %489 = and i32 %488, 254
  %490 = call i32 @llvm.ctpop.i32(i32 %489)
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 1
  %493 = xor i8 %492, 1
  store i8 %493, i8* %487, align 1
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %494, align 1
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %496 = icmp eq i64 %484, 0
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %495, align 1
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %499 = lshr i64 %484, 63
  %500 = trunc i64 %499 to i8
  store i8 %500, i8* %498, align 1
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %501, align 1
  store %struct.Memory* %loadMem_42c772, %struct.Memory** %MEMORY
  %loadMem_42c776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 33
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %504 to i64*
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 1
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %RAX.i587 = bitcast %union.anon* %507 to i64*
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %509 = getelementptr inbounds %struct.GPR, %struct.GPR* %508, i32 0, i32 5
  %510 = getelementptr inbounds %struct.Reg, %struct.Reg* %509, i32 0, i32 0
  %RCX.i588 = bitcast %union.anon* %510 to i64*
  %511 = load i64, i64* %RAX.i587
  %512 = load i64, i64* %RCX.i588
  %513 = load i64, i64* %PC.i586
  %514 = add i64 %513, 3
  store i64 %514, i64* %PC.i586
  %515 = add i64 %512, %511
  store i64 %515, i64* %RAX.i587, align 8
  %516 = icmp ult i64 %515, %511
  %517 = icmp ult i64 %515, %512
  %518 = or i1 %516, %517
  %519 = zext i1 %518 to i8
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %519, i8* %520, align 1
  %521 = trunc i64 %515 to i32
  %522 = and i32 %521, 255
  %523 = call i32 @llvm.ctpop.i32(i32 %522)
  %524 = trunc i32 %523 to i8
  %525 = and i8 %524, 1
  %526 = xor i8 %525, 1
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %526, i8* %527, align 1
  %528 = xor i64 %512, %511
  %529 = xor i64 %528, %515
  %530 = lshr i64 %529, 4
  %531 = trunc i64 %530 to i8
  %532 = and i8 %531, 1
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %532, i8* %533, align 1
  %534 = icmp eq i64 %515, 0
  %535 = zext i1 %534 to i8
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %535, i8* %536, align 1
  %537 = lshr i64 %515, 63
  %538 = trunc i64 %537 to i8
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %538, i8* %539, align 1
  %540 = lshr i64 %511, 63
  %541 = lshr i64 %512, 63
  %542 = xor i64 %537, %540
  %543 = xor i64 %537, %541
  %544 = add i64 %542, %543
  %545 = icmp eq i64 %544, 2
  %546 = zext i1 %545 to i8
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %546, i8* %547, align 1
  store %struct.Memory* %loadMem_42c776, %struct.Memory** %MEMORY
  %loadMem_42c779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 33
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %550 to i64*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 1
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %RAX.i584 = bitcast %union.anon* %553 to i64*
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 7
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %RDX.i585 = bitcast %union.anon* %556 to i64*
  %557 = load i64, i64* %RAX.i584
  %558 = load i64, i64* %PC.i583
  %559 = add i64 %558, 2
  store i64 %559, i64* %PC.i583
  %560 = inttoptr i64 %557 to i32*
  %561 = load i32, i32* %560
  %562 = zext i32 %561 to i64
  store i64 %562, i64* %RDX.i585, align 8
  store %struct.Memory* %loadMem_42c779, %struct.Memory** %MEMORY
  %loadMem_42c77b = load %struct.Memory*, %struct.Memory** %MEMORY
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 33
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %565 to i64*
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %567 = getelementptr inbounds %struct.GPR, %struct.GPR* %566, i32 0, i32 7
  %568 = getelementptr inbounds %struct.Reg, %struct.Reg* %567, i32 0, i32 0
  %EDX.i581 = bitcast %union.anon* %568 to i32*
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 15
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %571 to i64*
  %572 = load i64, i64* %RBP.i582
  %573 = sub i64 %572, 24
  %574 = load i32, i32* %EDX.i581
  %575 = zext i32 %574 to i64
  %576 = load i64, i64* %PC.i580
  %577 = add i64 %576, 3
  store i64 %577, i64* %PC.i580
  %578 = inttoptr i64 %573 to i32*
  store i32 %574, i32* %578
  store %struct.Memory* %loadMem_42c77b, %struct.Memory** %MEMORY
  %loadMem_42c77e = load %struct.Memory*, %struct.Memory** %MEMORY
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %580 = getelementptr inbounds %struct.GPR, %struct.GPR* %579, i32 0, i32 33
  %581 = getelementptr inbounds %struct.Reg, %struct.Reg* %580, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %581 to i64*
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %583 = getelementptr inbounds %struct.GPR, %struct.GPR* %582, i32 0, i32 15
  %584 = getelementptr inbounds %struct.Reg, %struct.Reg* %583, i32 0, i32 0
  %RBP.i579 = bitcast %union.anon* %584 to i64*
  %585 = load i64, i64* %RBP.i579
  %586 = sub i64 %585, 24
  %587 = load i64, i64* %PC.i578
  %588 = add i64 %587, 4
  store i64 %588, i64* %PC.i578
  %589 = inttoptr i64 %586 to i32*
  %590 = load i32, i32* %589
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %591, align 1
  %592 = and i32 %590, 255
  %593 = call i32 @llvm.ctpop.i32(i32 %592)
  %594 = trunc i32 %593 to i8
  %595 = and i8 %594, 1
  %596 = xor i8 %595, 1
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %596, i8* %597, align 1
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %598, align 1
  %599 = icmp eq i32 %590, 0
  %600 = zext i1 %599 to i8
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %600, i8* %601, align 1
  %602 = lshr i32 %590, 31
  %603 = trunc i32 %602 to i8
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %603, i8* %604, align 1
  %605 = lshr i32 %590, 31
  %606 = xor i32 %602, %605
  %607 = add i32 %606, %605
  %608 = icmp eq i32 %607, 2
  %609 = zext i1 %608 to i8
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %609, i8* %610, align 1
  store %struct.Memory* %loadMem_42c77e, %struct.Memory** %MEMORY
  %loadMem_42c782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 33
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %613 to i64*
  %614 = load i64, i64* %PC.i577
  %615 = add i64 %614, 235
  %616 = load i64, i64* %PC.i577
  %617 = add i64 %616, 6
  %618 = load i64, i64* %PC.i577
  %619 = add i64 %618, 6
  store i64 %619, i64* %PC.i577
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %621 = load i8, i8* %620, align 1
  %622 = icmp eq i8 %621, 0
  %623 = zext i1 %622 to i8
  store i8 %623, i8* %BRANCH_TAKEN, align 1
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %625 = select i1 %622, i64 %615, i64 %617
  store i64 %625, i64* %624, align 8
  store %struct.Memory* %loadMem_42c782, %struct.Memory** %MEMORY
  %loadBr_42c782 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c782 = icmp eq i8 %loadBr_42c782, 1
  br i1 %cmpBr_42c782, label %block_.L_42c86d, label %block_42c788

block_42c788:                                     ; preds = %block_42c75c
  %loadMem_42c788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 33
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %628 to i64*
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 1
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %RAX.i575 = bitcast %union.anon* %631 to i64*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 15
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %RBP.i576 = bitcast %union.anon* %634 to i64*
  %635 = load i64, i64* %RBP.i576
  %636 = sub i64 %635, 8
  %637 = load i64, i64* %PC.i574
  %638 = add i64 %637, 4
  store i64 %638, i64* %PC.i574
  %639 = inttoptr i64 %636 to i64*
  %640 = load i64, i64* %639
  store i64 %640, i64* %RAX.i575, align 8
  store %struct.Memory* %loadMem_42c788, %struct.Memory** %MEMORY
  %loadMem_42c78c = load %struct.Memory*, %struct.Memory** %MEMORY
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %642 = getelementptr inbounds %struct.GPR, %struct.GPR* %641, i32 0, i32 33
  %643 = getelementptr inbounds %struct.Reg, %struct.Reg* %642, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %643 to i64*
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 1
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %RAX.i573 = bitcast %union.anon* %646 to i64*
  %647 = load i64, i64* %RAX.i573
  %648 = load i64, i64* %PC.i572
  %649 = add i64 %648, 6
  store i64 %649, i64* %PC.i572
  %650 = add i64 35672, %647
  store i64 %650, i64* %RAX.i573, align 8
  %651 = icmp ult i64 %650, %647
  %652 = icmp ult i64 %650, 35672
  %653 = or i1 %651, %652
  %654 = zext i1 %653 to i8
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %654, i8* %655, align 1
  %656 = trunc i64 %650 to i32
  %657 = and i32 %656, 255
  %658 = call i32 @llvm.ctpop.i32(i32 %657)
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  %661 = xor i8 %660, 1
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %661, i8* %662, align 1
  %663 = xor i64 35672, %647
  %664 = xor i64 %663, %650
  %665 = lshr i64 %664, 4
  %666 = trunc i64 %665 to i8
  %667 = and i8 %666, 1
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %667, i8* %668, align 1
  %669 = icmp eq i64 %650, 0
  %670 = zext i1 %669 to i8
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %670, i8* %671, align 1
  %672 = lshr i64 %650, 63
  %673 = trunc i64 %672 to i8
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %673, i8* %674, align 1
  %675 = lshr i64 %647, 63
  %676 = xor i64 %672, %675
  %677 = add i64 %676, %672
  %678 = icmp eq i64 %677, 2
  %679 = zext i1 %678 to i8
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %679, i8* %680, align 1
  store %struct.Memory* %loadMem_42c78c, %struct.Memory** %MEMORY
  %loadMem_42c792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %682 = getelementptr inbounds %struct.GPR, %struct.GPR* %681, i32 0, i32 33
  %683 = getelementptr inbounds %struct.Reg, %struct.Reg* %682, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %683 to i64*
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 5
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %RCX.i570 = bitcast %union.anon* %686 to i64*
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 15
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %689 to i64*
  %690 = load i64, i64* %RBP.i571
  %691 = sub i64 %690, 16
  %692 = load i64, i64* %PC.i569
  %693 = add i64 %692, 4
  store i64 %693, i64* %PC.i569
  %694 = inttoptr i64 %691 to i32*
  %695 = load i32, i32* %694
  %696 = sext i32 %695 to i64
  store i64 %696, i64* %RCX.i570, align 8
  store %struct.Memory* %loadMem_42c792, %struct.Memory** %MEMORY
  %loadMem_42c796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 33
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %699 to i64*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 5
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %RCX.i568 = bitcast %union.anon* %702 to i64*
  %703 = load i64, i64* %RCX.i568
  %704 = load i64, i64* %PC.i567
  %705 = add i64 %704, 4
  store i64 %705, i64* %PC.i567
  %706 = shl i64 %703, 3
  %707 = icmp slt i64 %706, 0
  %708 = shl i64 %706, 1
  store i64 %708, i64* %RCX.i568, align 8
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %710 = zext i1 %707 to i8
  store i8 %710, i8* %709, align 1
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %712 = trunc i64 %708 to i32
  %713 = and i32 %712, 254
  %714 = call i32 @llvm.ctpop.i32(i32 %713)
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  %717 = xor i8 %716, 1
  store i8 %717, i8* %711, align 1
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %718, align 1
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %720 = icmp eq i64 %708, 0
  %721 = zext i1 %720 to i8
  store i8 %721, i8* %719, align 1
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %723 = lshr i64 %708, 63
  %724 = trunc i64 %723 to i8
  store i8 %724, i8* %722, align 1
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %725, align 1
  store %struct.Memory* %loadMem_42c796, %struct.Memory** %MEMORY
  %loadMem_42c79a = load %struct.Memory*, %struct.Memory** %MEMORY
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 33
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %728 to i64*
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 1
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %RAX.i565 = bitcast %union.anon* %731 to i64*
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 5
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %RCX.i566 = bitcast %union.anon* %734 to i64*
  %735 = load i64, i64* %RAX.i565
  %736 = load i64, i64* %RCX.i566
  %737 = load i64, i64* %PC.i564
  %738 = add i64 %737, 3
  store i64 %738, i64* %PC.i564
  %739 = add i64 %736, %735
  store i64 %739, i64* %RAX.i565, align 8
  %740 = icmp ult i64 %739, %735
  %741 = icmp ult i64 %739, %736
  %742 = or i1 %740, %741
  %743 = zext i1 %742 to i8
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %743, i8* %744, align 1
  %745 = trunc i64 %739 to i32
  %746 = and i32 %745, 255
  %747 = call i32 @llvm.ctpop.i32(i32 %746)
  %748 = trunc i32 %747 to i8
  %749 = and i8 %748, 1
  %750 = xor i8 %749, 1
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %750, i8* %751, align 1
  %752 = xor i64 %736, %735
  %753 = xor i64 %752, %739
  %754 = lshr i64 %753, 4
  %755 = trunc i64 %754 to i8
  %756 = and i8 %755, 1
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %756, i8* %757, align 1
  %758 = icmp eq i64 %739, 0
  %759 = zext i1 %758 to i8
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %759, i8* %760, align 1
  %761 = lshr i64 %739, 63
  %762 = trunc i64 %761 to i8
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %762, i8* %763, align 1
  %764 = lshr i64 %735, 63
  %765 = lshr i64 %736, 63
  %766 = xor i64 %761, %764
  %767 = xor i64 %761, %765
  %768 = add i64 %766, %767
  %769 = icmp eq i64 %768, 2
  %770 = zext i1 %769 to i8
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %770, i8* %771, align 1
  store %struct.Memory* %loadMem_42c79a, %struct.Memory** %MEMORY
  %loadMem_42c79d = load %struct.Memory*, %struct.Memory** %MEMORY
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 33
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %774 to i64*
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 1
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %777 to i64*
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %779 = getelementptr inbounds %struct.GPR, %struct.GPR* %778, i32 0, i32 11
  %780 = getelementptr inbounds %struct.Reg, %struct.Reg* %779, i32 0, i32 0
  %RDI.i563 = bitcast %union.anon* %780 to i64*
  %781 = load i64, i64* %RAX.i562
  %782 = add i64 %781, 4
  %783 = load i64, i64* %PC.i561
  %784 = add i64 %783, 3
  store i64 %784, i64* %PC.i561
  %785 = inttoptr i64 %782 to i32*
  %786 = load i32, i32* %785
  %787 = zext i32 %786 to i64
  store i64 %787, i64* %RDI.i563, align 8
  store %struct.Memory* %loadMem_42c79d, %struct.Memory** %MEMORY
  %loadMem_42c7a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 33
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %790 to i64*
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 9
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %RSI.i559 = bitcast %union.anon* %793 to i64*
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 15
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %796 to i64*
  %797 = load i64, i64* %RBP.i560
  %798 = sub i64 %797, 12
  %799 = load i64, i64* %PC.i558
  %800 = add i64 %799, 3
  store i64 %800, i64* %PC.i558
  %801 = inttoptr i64 %798 to i32*
  %802 = load i32, i32* %801
  %803 = zext i32 %802 to i64
  store i64 %803, i64* %RSI.i559, align 8
  store %struct.Memory* %loadMem_42c7a0, %struct.Memory** %MEMORY
  %loadMem_42c7a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 33
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %806 to i64*
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 1
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %RAX.i556 = bitcast %union.anon* %809 to i64*
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 15
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %RBP.i557 = bitcast %union.anon* %812 to i64*
  %813 = load i64, i64* %RBP.i557
  %814 = sub i64 %813, 8
  %815 = load i64, i64* %PC.i555
  %816 = add i64 %815, 4
  store i64 %816, i64* %PC.i555
  %817 = inttoptr i64 %814 to i64*
  %818 = load i64, i64* %817
  store i64 %818, i64* %RAX.i556, align 8
  store %struct.Memory* %loadMem_42c7a3, %struct.Memory** %MEMORY
  %loadMem_42c7a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 33
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %821 to i64*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 1
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %RAX.i554 = bitcast %union.anon* %824 to i64*
  %825 = load i64, i64* %RAX.i554
  %826 = load i64, i64* %PC.i553
  %827 = add i64 %826, 6
  store i64 %827, i64* %PC.i553
  %828 = add i64 35672, %825
  store i64 %828, i64* %RAX.i554, align 8
  %829 = icmp ult i64 %828, %825
  %830 = icmp ult i64 %828, 35672
  %831 = or i1 %829, %830
  %832 = zext i1 %831 to i8
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %832, i8* %833, align 1
  %834 = trunc i64 %828 to i32
  %835 = and i32 %834, 255
  %836 = call i32 @llvm.ctpop.i32(i32 %835)
  %837 = trunc i32 %836 to i8
  %838 = and i8 %837, 1
  %839 = xor i8 %838, 1
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %839, i8* %840, align 1
  %841 = xor i64 35672, %825
  %842 = xor i64 %841, %828
  %843 = lshr i64 %842, 4
  %844 = trunc i64 %843 to i8
  %845 = and i8 %844, 1
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %845, i8* %846, align 1
  %847 = icmp eq i64 %828, 0
  %848 = zext i1 %847 to i8
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %848, i8* %849, align 1
  %850 = lshr i64 %828, 63
  %851 = trunc i64 %850 to i8
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %851, i8* %852, align 1
  %853 = lshr i64 %825, 63
  %854 = xor i64 %850, %853
  %855 = add i64 %854, %850
  %856 = icmp eq i64 %855, 2
  %857 = zext i1 %856 to i8
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %857, i8* %858, align 1
  store %struct.Memory* %loadMem_42c7a7, %struct.Memory** %MEMORY
  %loadMem_42c7ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 33
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %861 to i64*
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 5
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %RCX.i551 = bitcast %union.anon* %864 to i64*
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %866 = getelementptr inbounds %struct.GPR, %struct.GPR* %865, i32 0, i32 15
  %867 = getelementptr inbounds %struct.Reg, %struct.Reg* %866, i32 0, i32 0
  %RBP.i552 = bitcast %union.anon* %867 to i64*
  %868 = load i64, i64* %RBP.i552
  %869 = sub i64 %868, 20
  %870 = load i64, i64* %PC.i550
  %871 = add i64 %870, 4
  store i64 %871, i64* %PC.i550
  %872 = inttoptr i64 %869 to i32*
  %873 = load i32, i32* %872
  %874 = sext i32 %873 to i64
  store i64 %874, i64* %RCX.i551, align 8
  store %struct.Memory* %loadMem_42c7ad, %struct.Memory** %MEMORY
  %loadMem_42c7b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 33
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %877 to i64*
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 5
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %RCX.i549 = bitcast %union.anon* %880 to i64*
  %881 = load i64, i64* %RCX.i549
  %882 = load i64, i64* %PC.i548
  %883 = add i64 %882, 4
  store i64 %883, i64* %PC.i548
  %884 = shl i64 %881, 3
  %885 = icmp slt i64 %884, 0
  %886 = shl i64 %884, 1
  store i64 %886, i64* %RCX.i549, align 8
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %888 = zext i1 %885 to i8
  store i8 %888, i8* %887, align 1
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %890 = trunc i64 %886 to i32
  %891 = and i32 %890, 254
  %892 = call i32 @llvm.ctpop.i32(i32 %891)
  %893 = trunc i32 %892 to i8
  %894 = and i8 %893, 1
  %895 = xor i8 %894, 1
  store i8 %895, i8* %889, align 1
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %896, align 1
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %898 = icmp eq i64 %886, 0
  %899 = zext i1 %898 to i8
  store i8 %899, i8* %897, align 1
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %901 = lshr i64 %886, 63
  %902 = trunc i64 %901 to i8
  store i8 %902, i8* %900, align 1
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %903, align 1
  store %struct.Memory* %loadMem_42c7b1, %struct.Memory** %MEMORY
  %loadMem_42c7b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 33
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %906 to i64*
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 1
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %RAX.i546 = bitcast %union.anon* %909 to i64*
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 5
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %RCX.i547 = bitcast %union.anon* %912 to i64*
  %913 = load i64, i64* %RAX.i546
  %914 = load i64, i64* %RCX.i547
  %915 = load i64, i64* %PC.i545
  %916 = add i64 %915, 3
  store i64 %916, i64* %PC.i545
  %917 = add i64 %914, %913
  store i64 %917, i64* %RAX.i546, align 8
  %918 = icmp ult i64 %917, %913
  %919 = icmp ult i64 %917, %914
  %920 = or i1 %918, %919
  %921 = zext i1 %920 to i8
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %921, i8* %922, align 1
  %923 = trunc i64 %917 to i32
  %924 = and i32 %923, 255
  %925 = call i32 @llvm.ctpop.i32(i32 %924)
  %926 = trunc i32 %925 to i8
  %927 = and i8 %926, 1
  %928 = xor i8 %927, 1
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %928, i8* %929, align 1
  %930 = xor i64 %914, %913
  %931 = xor i64 %930, %917
  %932 = lshr i64 %931, 4
  %933 = trunc i64 %932 to i8
  %934 = and i8 %933, 1
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %934, i8* %935, align 1
  %936 = icmp eq i64 %917, 0
  %937 = zext i1 %936 to i8
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %937, i8* %938, align 1
  %939 = lshr i64 %917, 63
  %940 = trunc i64 %939 to i8
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %940, i8* %941, align 1
  %942 = lshr i64 %913, 63
  %943 = lshr i64 %914, 63
  %944 = xor i64 %939, %942
  %945 = xor i64 %939, %943
  %946 = add i64 %944, %945
  %947 = icmp eq i64 %946, 2
  %948 = zext i1 %947 to i8
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %948, i8* %949, align 1
  store %struct.Memory* %loadMem_42c7b5, %struct.Memory** %MEMORY
  %loadMem_42c7b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 33
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %952 to i64*
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 1
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %RAX.i543 = bitcast %union.anon* %955 to i64*
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %957 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %956, i64 0, i64 0
  %YMM0.i544 = bitcast %union.VectorReg* %957 to %"class.std::bitset"*
  %958 = bitcast %"class.std::bitset"* %YMM0.i544 to i8*
  %959 = load i64, i64* %RAX.i543
  %960 = add i64 %959, 8
  %961 = load i64, i64* %PC.i542
  %962 = add i64 %961, 5
  store i64 %962, i64* %PC.i542
  %963 = inttoptr i64 %960 to float*
  %964 = load float, float* %963
  %965 = bitcast i8* %958 to float*
  store float %964, float* %965, align 1
  %966 = getelementptr inbounds i8, i8* %958, i64 4
  %967 = bitcast i8* %966 to float*
  store float 0.000000e+00, float* %967, align 1
  %968 = getelementptr inbounds i8, i8* %958, i64 8
  %969 = bitcast i8* %968 to float*
  store float 0.000000e+00, float* %969, align 1
  %970 = getelementptr inbounds i8, i8* %958, i64 12
  %971 = bitcast i8* %970 to float*
  store float 0.000000e+00, float* %971, align 1
  store %struct.Memory* %loadMem_42c7b8, %struct.Memory** %MEMORY
  %loadMem_42c7bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %973 = getelementptr inbounds %struct.GPR, %struct.GPR* %972, i32 0, i32 33
  %974 = getelementptr inbounds %struct.Reg, %struct.Reg* %973, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %974 to i64*
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 1
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %RAX.i540 = bitcast %union.anon* %977 to i64*
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 15
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %980 to i64*
  %981 = load i64, i64* %RBP.i541
  %982 = sub i64 %981, 8
  %983 = load i64, i64* %PC.i539
  %984 = add i64 %983, 4
  store i64 %984, i64* %PC.i539
  %985 = inttoptr i64 %982 to i64*
  %986 = load i64, i64* %985
  store i64 %986, i64* %RAX.i540, align 8
  store %struct.Memory* %loadMem_42c7bd, %struct.Memory** %MEMORY
  %loadMem_42c7c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 33
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %989 to i64*
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 1
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %992 to i64*
  %993 = load i64, i64* %RAX.i538
  %994 = load i64, i64* %PC.i537
  %995 = add i64 %994, 6
  store i64 %995, i64* %PC.i537
  %996 = add i64 35672, %993
  store i64 %996, i64* %RAX.i538, align 8
  %997 = icmp ult i64 %996, %993
  %998 = icmp ult i64 %996, 35672
  %999 = or i1 %997, %998
  %1000 = zext i1 %999 to i8
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1000, i8* %1001, align 1
  %1002 = trunc i64 %996 to i32
  %1003 = and i32 %1002, 255
  %1004 = call i32 @llvm.ctpop.i32(i32 %1003)
  %1005 = trunc i32 %1004 to i8
  %1006 = and i8 %1005, 1
  %1007 = xor i8 %1006, 1
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1007, i8* %1008, align 1
  %1009 = xor i64 35672, %993
  %1010 = xor i64 %1009, %996
  %1011 = lshr i64 %1010, 4
  %1012 = trunc i64 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1013, i8* %1014, align 1
  %1015 = icmp eq i64 %996, 0
  %1016 = zext i1 %1015 to i8
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1016, i8* %1017, align 1
  %1018 = lshr i64 %996, 63
  %1019 = trunc i64 %1018 to i8
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1019, i8* %1020, align 1
  %1021 = lshr i64 %993, 63
  %1022 = xor i64 %1018, %1021
  %1023 = add i64 %1022, %1018
  %1024 = icmp eq i64 %1023, 2
  %1025 = zext i1 %1024 to i8
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1025, i8* %1026, align 1
  store %struct.Memory* %loadMem_42c7c1, %struct.Memory** %MEMORY
  %loadMem_42c7c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 33
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %1029 to i64*
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 5
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %RCX.i535 = bitcast %union.anon* %1032 to i64*
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 15
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %1035 to i64*
  %1036 = load i64, i64* %RBP.i536
  %1037 = sub i64 %1036, 20
  %1038 = load i64, i64* %PC.i534
  %1039 = add i64 %1038, 4
  store i64 %1039, i64* %PC.i534
  %1040 = inttoptr i64 %1037 to i32*
  %1041 = load i32, i32* %1040
  %1042 = sext i32 %1041 to i64
  store i64 %1042, i64* %RCX.i535, align 8
  store %struct.Memory* %loadMem_42c7c7, %struct.Memory** %MEMORY
  %loadMem_42c7cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 33
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %1045 to i64*
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 5
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %RCX.i533 = bitcast %union.anon* %1048 to i64*
  %1049 = load i64, i64* %RCX.i533
  %1050 = load i64, i64* %PC.i532
  %1051 = add i64 %1050, 4
  store i64 %1051, i64* %PC.i532
  %1052 = shl i64 %1049, 3
  %1053 = icmp slt i64 %1052, 0
  %1054 = shl i64 %1052, 1
  store i64 %1054, i64* %RCX.i533, align 8
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1056 = zext i1 %1053 to i8
  store i8 %1056, i8* %1055, align 1
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1058 = trunc i64 %1054 to i32
  %1059 = and i32 %1058, 254
  %1060 = call i32 @llvm.ctpop.i32(i32 %1059)
  %1061 = trunc i32 %1060 to i8
  %1062 = and i8 %1061, 1
  %1063 = xor i8 %1062, 1
  store i8 %1063, i8* %1057, align 1
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1064, align 1
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1066 = icmp eq i64 %1054, 0
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %1065, align 1
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1069 = lshr i64 %1054, 63
  %1070 = trunc i64 %1069 to i8
  store i8 %1070, i8* %1068, align 1
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1071, align 1
  store %struct.Memory* %loadMem_42c7cb, %struct.Memory** %MEMORY
  %loadMem_42c7cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 33
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %1074 to i64*
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 1
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %RAX.i530 = bitcast %union.anon* %1077 to i64*
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1079 = getelementptr inbounds %struct.GPR, %struct.GPR* %1078, i32 0, i32 5
  %1080 = getelementptr inbounds %struct.Reg, %struct.Reg* %1079, i32 0, i32 0
  %RCX.i531 = bitcast %union.anon* %1080 to i64*
  %1081 = load i64, i64* %RAX.i530
  %1082 = load i64, i64* %RCX.i531
  %1083 = load i64, i64* %PC.i529
  %1084 = add i64 %1083, 3
  store i64 %1084, i64* %PC.i529
  %1085 = add i64 %1082, %1081
  store i64 %1085, i64* %RAX.i530, align 8
  %1086 = icmp ult i64 %1085, %1081
  %1087 = icmp ult i64 %1085, %1082
  %1088 = or i1 %1086, %1087
  %1089 = zext i1 %1088 to i8
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1089, i8* %1090, align 1
  %1091 = trunc i64 %1085 to i32
  %1092 = and i32 %1091, 255
  %1093 = call i32 @llvm.ctpop.i32(i32 %1092)
  %1094 = trunc i32 %1093 to i8
  %1095 = and i8 %1094, 1
  %1096 = xor i8 %1095, 1
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1096, i8* %1097, align 1
  %1098 = xor i64 %1082, %1081
  %1099 = xor i64 %1098, %1085
  %1100 = lshr i64 %1099, 4
  %1101 = trunc i64 %1100 to i8
  %1102 = and i8 %1101, 1
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1102, i8* %1103, align 1
  %1104 = icmp eq i64 %1085, 0
  %1105 = zext i1 %1104 to i8
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1105, i8* %1106, align 1
  %1107 = lshr i64 %1085, 63
  %1108 = trunc i64 %1107 to i8
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1108, i8* %1109, align 1
  %1110 = lshr i64 %1081, 63
  %1111 = lshr i64 %1082, 63
  %1112 = xor i64 %1107, %1110
  %1113 = xor i64 %1107, %1111
  %1114 = add i64 %1112, %1113
  %1115 = icmp eq i64 %1114, 2
  %1116 = zext i1 %1115 to i8
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1116, i8* %1117, align 1
  store %struct.Memory* %loadMem_42c7cf, %struct.Memory** %MEMORY
  %loadMem_42c7d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1119 = getelementptr inbounds %struct.GPR, %struct.GPR* %1118, i32 0, i32 33
  %1120 = getelementptr inbounds %struct.Reg, %struct.Reg* %1119, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %1120 to i64*
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 1
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %RAX.i527 = bitcast %union.anon* %1123 to i64*
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1125 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1124, i64 0, i64 1
  %YMM1.i528 = bitcast %union.VectorReg* %1125 to %"class.std::bitset"*
  %1126 = bitcast %"class.std::bitset"* %YMM1.i528 to i8*
  %1127 = load i64, i64* %RAX.i527
  %1128 = add i64 %1127, 12
  %1129 = load i64, i64* %PC.i526
  %1130 = add i64 %1129, 5
  store i64 %1130, i64* %PC.i526
  %1131 = inttoptr i64 %1128 to float*
  %1132 = load float, float* %1131
  %1133 = bitcast i8* %1126 to float*
  store float %1132, float* %1133, align 1
  %1134 = getelementptr inbounds i8, i8* %1126, i64 4
  %1135 = bitcast i8* %1134 to float*
  store float 0.000000e+00, float* %1135, align 1
  %1136 = getelementptr inbounds i8, i8* %1126, i64 8
  %1137 = bitcast i8* %1136 to float*
  store float 0.000000e+00, float* %1137, align 1
  %1138 = getelementptr inbounds i8, i8* %1126, i64 12
  %1139 = bitcast i8* %1138 to float*
  store float 0.000000e+00, float* %1139, align 1
  store %struct.Memory* %loadMem_42c7d2, %struct.Memory** %MEMORY
  %loadMem_42c7d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 33
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %1142 to i64*
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1144 = getelementptr inbounds %struct.GPR, %struct.GPR* %1143, i32 0, i32 7
  %1145 = getelementptr inbounds %struct.Reg, %struct.Reg* %1144, i32 0, i32 0
  %RDX.i524 = bitcast %union.anon* %1145 to i64*
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1147 = getelementptr inbounds %struct.GPR, %struct.GPR* %1146, i32 0, i32 15
  %1148 = getelementptr inbounds %struct.Reg, %struct.Reg* %1147, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %1148 to i64*
  %1149 = load i64, i64* %RBP.i525
  %1150 = sub i64 %1149, 8
  %1151 = load i64, i64* %PC.i523
  %1152 = add i64 %1151, 4
  store i64 %1152, i64* %PC.i523
  %1153 = inttoptr i64 %1150 to i64*
  %1154 = load i64, i64* %1153
  store i64 %1154, i64* %RDX.i524, align 8
  store %struct.Memory* %loadMem_42c7d7, %struct.Memory** %MEMORY
  %loadMem1_42c7db = load %struct.Memory*, %struct.Memory** %MEMORY
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 33
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %1157 to i64*
  %1158 = load i64, i64* %PC.i522
  %1159 = add i64 %1158, 1557
  %1160 = load i64, i64* %PC.i522
  %1161 = add i64 %1160, 5
  %1162 = load i64, i64* %PC.i522
  %1163 = add i64 %1162, 5
  store i64 %1163, i64* %PC.i522
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1165 = load i64, i64* %1164, align 8
  %1166 = add i64 %1165, -8
  %1167 = inttoptr i64 %1166 to i64*
  store i64 %1161, i64* %1167
  store i64 %1166, i64* %1164, align 8
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1159, i64* %1168, align 8
  store %struct.Memory* %loadMem1_42c7db, %struct.Memory** %MEMORY
  %loadMem2_42c7db = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42c7db = load i64, i64* %3
  %call2_42c7db = call %struct.Memory* @sub_42cdf0.add_influence_source(%struct.State* %0, i64 %loadPC_42c7db, %struct.Memory* %loadMem2_42c7db)
  store %struct.Memory* %call2_42c7db, %struct.Memory** %MEMORY
  %loadMem_42c7e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 33
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %1171 to i64*
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 9
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %RSI.i521 = bitcast %union.anon* %1174 to i64*
  %1175 = load i64, i64* %PC.i520
  %1176 = add i64 %1175, 7
  store i64 %1176, i64* %PC.i520
  %1177 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %1178 = zext i32 %1177 to i64
  store i64 %1178, i64* %RSI.i521, align 8
  store %struct.Memory* %loadMem_42c7e0, %struct.Memory** %MEMORY
  %loadMem_42c7e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 33
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %1181 to i64*
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 9
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %RSI.i519 = bitcast %union.anon* %1184 to i64*
  %1185 = load i64, i64* %RSI.i519
  %1186 = load i64, i64* %PC.i518
  %1187 = add i64 %1186, 3
  store i64 %1187, i64* %PC.i518
  %1188 = and i64 1, %1185
  %1189 = trunc i64 %1188 to i32
  store i64 %1188, i64* %RSI.i519, align 8
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1190, align 1
  %1191 = and i32 %1189, 255
  %1192 = call i32 @llvm.ctpop.i32(i32 %1191)
  %1193 = trunc i32 %1192 to i8
  %1194 = and i8 %1193, 1
  %1195 = xor i8 %1194, 1
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1195, i8* %1196, align 1
  %1197 = icmp eq i32 %1189, 0
  %1198 = zext i1 %1197 to i8
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1198, i8* %1199, align 1
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1200, align 1
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1201, align 1
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1202, align 1
  store %struct.Memory* %loadMem_42c7e7, %struct.Memory** %MEMORY
  %loadMem_42c7ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 33
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %1205 to i64*
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 9
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %ESI.i517 = bitcast %union.anon* %1208 to i32*
  %1209 = load i32, i32* %ESI.i517
  %1210 = zext i32 %1209 to i64
  %1211 = load i64, i64* %PC.i516
  %1212 = add i64 %1211, 3
  store i64 %1212, i64* %PC.i516
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1213, align 1
  %1214 = and i32 %1209, 255
  %1215 = call i32 @llvm.ctpop.i32(i32 %1214)
  %1216 = trunc i32 %1215 to i8
  %1217 = and i8 %1216, 1
  %1218 = xor i8 %1217, 1
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1218, i8* %1219, align 1
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1220, align 1
  %1221 = icmp eq i32 %1209, 0
  %1222 = zext i1 %1221 to i8
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1222, i8* %1223, align 1
  %1224 = lshr i32 %1209, 31
  %1225 = trunc i32 %1224 to i8
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1225, i8* %1226, align 1
  %1227 = lshr i32 %1209, 31
  %1228 = xor i32 %1224, %1227
  %1229 = add i32 %1228, %1227
  %1230 = icmp eq i32 %1229, 2
  %1231 = zext i1 %1230 to i8
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1231, i8* %1232, align 1
  store %struct.Memory* %loadMem_42c7ea, %struct.Memory** %MEMORY
  %loadMem_42c7ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 33
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %1235 to i64*
  %1236 = load i64, i64* %PC.i515
  %1237 = add i64 %1236, 11
  %1238 = load i64, i64* %PC.i515
  %1239 = add i64 %1238, 6
  %1240 = load i64, i64* %PC.i515
  %1241 = add i64 %1240, 6
  store i64 %1241, i64* %PC.i515
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1243 = load i8, i8* %1242, align 1
  %1244 = icmp eq i8 %1243, 0
  %1245 = zext i1 %1244 to i8
  store i8 %1245, i8* %BRANCH_TAKEN, align 1
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1247 = select i1 %1244, i64 %1237, i64 %1239
  store i64 %1247, i64* %1246, align 8
  store %struct.Memory* %loadMem_42c7ed, %struct.Memory** %MEMORY
  %loadBr_42c7ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c7ed = icmp eq i8 %loadBr_42c7ed, 1
  br i1 %cmpBr_42c7ed, label %block_.L_42c7f8, label %block_42c7f3

block_42c7f3:                                     ; preds = %block_42c788
  %loadMem_42c7f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1249 = getelementptr inbounds %struct.GPR, %struct.GPR* %1248, i32 0, i32 33
  %1250 = getelementptr inbounds %struct.Reg, %struct.Reg* %1249, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %1250 to i64*
  %1251 = load i64, i64* %PC.i514
  %1252 = add i64 %1251, 108
  %1253 = load i64, i64* %PC.i514
  %1254 = add i64 %1253, 5
  store i64 %1254, i64* %PC.i514
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1252, i64* %1255, align 8
  store %struct.Memory* %loadMem_42c7f3, %struct.Memory** %MEMORY
  br label %block_.L_42c85f

block_.L_42c7f8:                                  ; preds = %block_42c788
  %loadMem_42c7f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1257 = getelementptr inbounds %struct.GPR, %struct.GPR* %1256, i32 0, i32 33
  %1258 = getelementptr inbounds %struct.Reg, %struct.Reg* %1257, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %1258 to i64*
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1260 = getelementptr inbounds %struct.GPR, %struct.GPR* %1259, i32 0, i32 11
  %1261 = getelementptr inbounds %struct.Reg, %struct.Reg* %1260, i32 0, i32 0
  %RDI.i513 = bitcast %union.anon* %1261 to i64*
  %1262 = load i64, i64* %PC.i512
  %1263 = add i64 %1262, 10
  store i64 %1263, i64* %PC.i512
  store i64 ptrtoint (%G__0x57c705_type* @G__0x57c705 to i64), i64* %RDI.i513, align 8
  store %struct.Memory* %loadMem_42c7f8, %struct.Memory** %MEMORY
  %loadMem_42c802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 33
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %1266 to i64*
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 1
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %1269 to i64*
  %1270 = load i64, i64* %PC.i510
  %1271 = add i64 %1270, 10
  store i64 %1271, i64* %PC.i510
  store i64 ptrtoint (%G__0x586e37_type* @G__0x586e37 to i64), i64* %RAX.i511, align 8
  store %struct.Memory* %loadMem_42c802, %struct.Memory** %MEMORY
  %loadMem_42c80c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 33
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %1274 to i64*
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 5
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %RCX.i509 = bitcast %union.anon* %1277 to i64*
  %1278 = load i64, i64* %PC.i508
  %1279 = add i64 %1278, 10
  store i64 %1279, i64* %PC.i508
  store i64 ptrtoint (%G__0x586e29_type* @G__0x586e29 to i64), i64* %RCX.i509, align 8
  store %struct.Memory* %loadMem_42c80c, %struct.Memory** %MEMORY
  %loadMem_42c816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 33
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %1282 to i64*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 15
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %1285 to i64*
  %1286 = load i64, i64* %RBP.i507
  %1287 = sub i64 %1286, 12
  %1288 = load i64, i64* %PC.i506
  %1289 = add i64 %1288, 4
  store i64 %1289, i64* %PC.i506
  %1290 = inttoptr i64 %1287 to i32*
  %1291 = load i32, i32* %1290
  %1292 = sub i32 %1291, 2
  %1293 = icmp ult i32 %1291, 2
  %1294 = zext i1 %1293 to i8
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1294, i8* %1295, align 1
  %1296 = and i32 %1292, 255
  %1297 = call i32 @llvm.ctpop.i32(i32 %1296)
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  %1300 = xor i8 %1299, 1
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1300, i8* %1301, align 1
  %1302 = xor i32 %1291, 2
  %1303 = xor i32 %1302, %1292
  %1304 = lshr i32 %1303, 4
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1306, i8* %1307, align 1
  %1308 = icmp eq i32 %1292, 0
  %1309 = zext i1 %1308 to i8
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1309, i8* %1310, align 1
  %1311 = lshr i32 %1292, 31
  %1312 = trunc i32 %1311 to i8
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1312, i8* %1313, align 1
  %1314 = lshr i32 %1291, 31
  %1315 = xor i32 %1311, %1314
  %1316 = add i32 %1315, %1314
  %1317 = icmp eq i32 %1316, 2
  %1318 = zext i1 %1317 to i8
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1318, i8* %1319, align 1
  store %struct.Memory* %loadMem_42c816, %struct.Memory** %MEMORY
  %loadMem_42c81a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 33
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %1322 to i64*
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1324 = getelementptr inbounds %struct.GPR, %struct.GPR* %1323, i32 0, i32 1
  %1325 = getelementptr inbounds %struct.Reg, %struct.Reg* %1324, i32 0, i32 0
  %RAX.i504 = bitcast %union.anon* %1325 to i64*
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 5
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %RCX.i505 = bitcast %union.anon* %1328 to i64*
  %1329 = load i64, i64* %RCX.i505
  %1330 = load i64, i64* %PC.i503
  %1331 = add i64 %1330, 4
  store i64 %1331, i64* %PC.i503
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1333 = load i8, i8* %1332, align 1
  %1334 = icmp ne i8 %1333, 0
  %1335 = load i64, i64* %RAX.i504, align 8
  %1336 = select i1 %1334, i64 %1329, i64 %1335
  store i64 %1336, i64* %RAX.i504, align 8
  store %struct.Memory* %loadMem_42c81a, %struct.Memory** %MEMORY
  %loadMem_42c81e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1338 = getelementptr inbounds %struct.GPR, %struct.GPR* %1337, i32 0, i32 33
  %1339 = getelementptr inbounds %struct.Reg, %struct.Reg* %1338, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %1339 to i64*
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1341 = getelementptr inbounds %struct.GPR, %struct.GPR* %1340, i32 0, i32 5
  %1342 = getelementptr inbounds %struct.Reg, %struct.Reg* %1341, i32 0, i32 0
  %RCX.i501 = bitcast %union.anon* %1342 to i64*
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1344 = getelementptr inbounds %struct.GPR, %struct.GPR* %1343, i32 0, i32 15
  %1345 = getelementptr inbounds %struct.Reg, %struct.Reg* %1344, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %1345 to i64*
  %1346 = load i64, i64* %RBP.i502
  %1347 = sub i64 %1346, 8
  %1348 = load i64, i64* %PC.i500
  %1349 = add i64 %1348, 4
  store i64 %1349, i64* %PC.i500
  %1350 = inttoptr i64 %1347 to i64*
  %1351 = load i64, i64* %1350
  store i64 %1351, i64* %RCX.i501, align 8
  store %struct.Memory* %loadMem_42c81e, %struct.Memory** %MEMORY
  %loadMem_42c822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 33
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 5
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %RCX.i499 = bitcast %union.anon* %1357 to i64*
  %1358 = load i64, i64* %RCX.i499
  %1359 = load i64, i64* %PC.i498
  %1360 = add i64 %1359, 7
  store i64 %1360, i64* %PC.i498
  %1361 = add i64 35672, %1358
  store i64 %1361, i64* %RCX.i499, align 8
  %1362 = icmp ult i64 %1361, %1358
  %1363 = icmp ult i64 %1361, 35672
  %1364 = or i1 %1362, %1363
  %1365 = zext i1 %1364 to i8
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1365, i8* %1366, align 1
  %1367 = trunc i64 %1361 to i32
  %1368 = and i32 %1367, 255
  %1369 = call i32 @llvm.ctpop.i32(i32 %1368)
  %1370 = trunc i32 %1369 to i8
  %1371 = and i8 %1370, 1
  %1372 = xor i8 %1371, 1
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1372, i8* %1373, align 1
  %1374 = xor i64 35672, %1358
  %1375 = xor i64 %1374, %1361
  %1376 = lshr i64 %1375, 4
  %1377 = trunc i64 %1376 to i8
  %1378 = and i8 %1377, 1
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1378, i8* %1379, align 1
  %1380 = icmp eq i64 %1361, 0
  %1381 = zext i1 %1380 to i8
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1381, i8* %1382, align 1
  %1383 = lshr i64 %1361, 63
  %1384 = trunc i64 %1383 to i8
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1384, i8* %1385, align 1
  %1386 = lshr i64 %1358, 63
  %1387 = xor i64 %1383, %1386
  %1388 = add i64 %1387, %1383
  %1389 = icmp eq i64 %1388, 2
  %1390 = zext i1 %1389 to i8
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1390, i8* %1391, align 1
  store %struct.Memory* %loadMem_42c822, %struct.Memory** %MEMORY
  %loadMem_42c829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 33
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %1394 to i64*
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 7
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %RDX.i496 = bitcast %union.anon* %1397 to i64*
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 15
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %RBP.i497 = bitcast %union.anon* %1400 to i64*
  %1401 = load i64, i64* %RBP.i497
  %1402 = sub i64 %1401, 20
  %1403 = load i64, i64* %PC.i495
  %1404 = add i64 %1403, 4
  store i64 %1404, i64* %PC.i495
  %1405 = inttoptr i64 %1402 to i32*
  %1406 = load i32, i32* %1405
  %1407 = sext i32 %1406 to i64
  store i64 %1407, i64* %RDX.i496, align 8
  store %struct.Memory* %loadMem_42c829, %struct.Memory** %MEMORY
  %loadMem_42c82d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 33
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %1410 to i64*
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 7
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %RDX.i494 = bitcast %union.anon* %1413 to i64*
  %1414 = load i64, i64* %RDX.i494
  %1415 = load i64, i64* %PC.i493
  %1416 = add i64 %1415, 4
  store i64 %1416, i64* %PC.i493
  %1417 = shl i64 %1414, 3
  %1418 = icmp slt i64 %1417, 0
  %1419 = shl i64 %1417, 1
  store i64 %1419, i64* %RDX.i494, align 8
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1421 = zext i1 %1418 to i8
  store i8 %1421, i8* %1420, align 1
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1423 = trunc i64 %1419 to i32
  %1424 = and i32 %1423, 254
  %1425 = call i32 @llvm.ctpop.i32(i32 %1424)
  %1426 = trunc i32 %1425 to i8
  %1427 = and i8 %1426, 1
  %1428 = xor i8 %1427, 1
  store i8 %1428, i8* %1422, align 1
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1429, align 1
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1431 = icmp eq i64 %1419, 0
  %1432 = zext i1 %1431 to i8
  store i8 %1432, i8* %1430, align 1
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1434 = lshr i64 %1419, 63
  %1435 = trunc i64 %1434 to i8
  store i8 %1435, i8* %1433, align 1
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1436, align 1
  store %struct.Memory* %loadMem_42c82d, %struct.Memory** %MEMORY
  %loadMem_42c831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 33
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %1439 to i64*
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1441 = getelementptr inbounds %struct.GPR, %struct.GPR* %1440, i32 0, i32 5
  %1442 = getelementptr inbounds %struct.Reg, %struct.Reg* %1441, i32 0, i32 0
  %RCX.i491 = bitcast %union.anon* %1442 to i64*
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 7
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %RDX.i492 = bitcast %union.anon* %1445 to i64*
  %1446 = load i64, i64* %RCX.i491
  %1447 = load i64, i64* %RDX.i492
  %1448 = load i64, i64* %PC.i490
  %1449 = add i64 %1448, 3
  store i64 %1449, i64* %PC.i490
  %1450 = add i64 %1447, %1446
  store i64 %1450, i64* %RCX.i491, align 8
  %1451 = icmp ult i64 %1450, %1446
  %1452 = icmp ult i64 %1450, %1447
  %1453 = or i1 %1451, %1452
  %1454 = zext i1 %1453 to i8
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1454, i8* %1455, align 1
  %1456 = trunc i64 %1450 to i32
  %1457 = and i32 %1456, 255
  %1458 = call i32 @llvm.ctpop.i32(i32 %1457)
  %1459 = trunc i32 %1458 to i8
  %1460 = and i8 %1459, 1
  %1461 = xor i8 %1460, 1
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1461, i8* %1462, align 1
  %1463 = xor i64 %1447, %1446
  %1464 = xor i64 %1463, %1450
  %1465 = lshr i64 %1464, 4
  %1466 = trunc i64 %1465 to i8
  %1467 = and i8 %1466, 1
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1467, i8* %1468, align 1
  %1469 = icmp eq i64 %1450, 0
  %1470 = zext i1 %1469 to i8
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1470, i8* %1471, align 1
  %1472 = lshr i64 %1450, 63
  %1473 = trunc i64 %1472 to i8
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1473, i8* %1474, align 1
  %1475 = lshr i64 %1446, 63
  %1476 = lshr i64 %1447, 63
  %1477 = xor i64 %1472, %1475
  %1478 = xor i64 %1472, %1476
  %1479 = add i64 %1477, %1478
  %1480 = icmp eq i64 %1479, 2
  %1481 = zext i1 %1480 to i8
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1481, i8* %1482, align 1
  store %struct.Memory* %loadMem_42c831, %struct.Memory** %MEMORY
  %loadMem_42c834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 33
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %1485 to i64*
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 5
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %RCX.i488 = bitcast %union.anon* %1488 to i64*
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 7
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %RDX.i489 = bitcast %union.anon* %1491 to i64*
  %1492 = load i64, i64* %RCX.i488
  %1493 = add i64 %1492, 4
  %1494 = load i64, i64* %PC.i487
  %1495 = add i64 %1494, 3
  store i64 %1495, i64* %PC.i487
  %1496 = inttoptr i64 %1493 to i32*
  %1497 = load i32, i32* %1496
  %1498 = zext i32 %1497 to i64
  store i64 %1498, i64* %RDX.i489, align 8
  store %struct.Memory* %loadMem_42c834, %struct.Memory** %MEMORY
  %loadMem_42c837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 33
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %1501 to i64*
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1503 = getelementptr inbounds %struct.GPR, %struct.GPR* %1502, i32 0, i32 5
  %1504 = getelementptr inbounds %struct.Reg, %struct.Reg* %1503, i32 0, i32 0
  %RCX.i485 = bitcast %union.anon* %1504 to i64*
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1506 = getelementptr inbounds %struct.GPR, %struct.GPR* %1505, i32 0, i32 15
  %1507 = getelementptr inbounds %struct.Reg, %struct.Reg* %1506, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %1507 to i64*
  %1508 = load i64, i64* %RBP.i486
  %1509 = sub i64 %1508, 8
  %1510 = load i64, i64* %PC.i484
  %1511 = add i64 %1510, 4
  store i64 %1511, i64* %PC.i484
  %1512 = inttoptr i64 %1509 to i64*
  %1513 = load i64, i64* %1512
  store i64 %1513, i64* %RCX.i485, align 8
  store %struct.Memory* %loadMem_42c837, %struct.Memory** %MEMORY
  %loadMem_42c83b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 33
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %1516 to i64*
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 5
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %RCX.i483 = bitcast %union.anon* %1519 to i64*
  %1520 = load i64, i64* %RCX.i483
  %1521 = load i64, i64* %PC.i482
  %1522 = add i64 %1521, 7
  store i64 %1522, i64* %PC.i482
  %1523 = add i64 35672, %1520
  store i64 %1523, i64* %RCX.i483, align 8
  %1524 = icmp ult i64 %1523, %1520
  %1525 = icmp ult i64 %1523, 35672
  %1526 = or i1 %1524, %1525
  %1527 = zext i1 %1526 to i8
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1527, i8* %1528, align 1
  %1529 = trunc i64 %1523 to i32
  %1530 = and i32 %1529, 255
  %1531 = call i32 @llvm.ctpop.i32(i32 %1530)
  %1532 = trunc i32 %1531 to i8
  %1533 = and i8 %1532, 1
  %1534 = xor i8 %1533, 1
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1534, i8* %1535, align 1
  %1536 = xor i64 35672, %1520
  %1537 = xor i64 %1536, %1523
  %1538 = lshr i64 %1537, 4
  %1539 = trunc i64 %1538 to i8
  %1540 = and i8 %1539, 1
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1540, i8* %1541, align 1
  %1542 = icmp eq i64 %1523, 0
  %1543 = zext i1 %1542 to i8
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1543, i8* %1544, align 1
  %1545 = lshr i64 %1523, 63
  %1546 = trunc i64 %1545 to i8
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1546, i8* %1547, align 1
  %1548 = lshr i64 %1520, 63
  %1549 = xor i64 %1545, %1548
  %1550 = add i64 %1549, %1545
  %1551 = icmp eq i64 %1550, 2
  %1552 = zext i1 %1551 to i8
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1552, i8* %1553, align 1
  store %struct.Memory* %loadMem_42c83b, %struct.Memory** %MEMORY
  %loadMem_42c842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 33
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %1556 to i64*
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1558 = getelementptr inbounds %struct.GPR, %struct.GPR* %1557, i32 0, i32 9
  %1559 = getelementptr inbounds %struct.Reg, %struct.Reg* %1558, i32 0, i32 0
  %RSI.i480 = bitcast %union.anon* %1559 to i64*
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1561 = getelementptr inbounds %struct.GPR, %struct.GPR* %1560, i32 0, i32 15
  %1562 = getelementptr inbounds %struct.Reg, %struct.Reg* %1561, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %1562 to i64*
  %1563 = load i64, i64* %RBP.i481
  %1564 = sub i64 %1563, 20
  %1565 = load i64, i64* %PC.i479
  %1566 = add i64 %1565, 4
  store i64 %1566, i64* %PC.i479
  %1567 = inttoptr i64 %1564 to i32*
  %1568 = load i32, i32* %1567
  %1569 = sext i32 %1568 to i64
  store i64 %1569, i64* %RSI.i480, align 8
  store %struct.Memory* %loadMem_42c842, %struct.Memory** %MEMORY
  %loadMem_42c846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 33
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %1572 to i64*
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1574 = getelementptr inbounds %struct.GPR, %struct.GPR* %1573, i32 0, i32 9
  %1575 = getelementptr inbounds %struct.Reg, %struct.Reg* %1574, i32 0, i32 0
  %RSI.i478 = bitcast %union.anon* %1575 to i64*
  %1576 = load i64, i64* %RSI.i478
  %1577 = load i64, i64* %PC.i477
  %1578 = add i64 %1577, 4
  store i64 %1578, i64* %PC.i477
  %1579 = shl i64 %1576, 3
  %1580 = icmp slt i64 %1579, 0
  %1581 = shl i64 %1579, 1
  store i64 %1581, i64* %RSI.i478, align 8
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1583 = zext i1 %1580 to i8
  store i8 %1583, i8* %1582, align 1
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1585 = trunc i64 %1581 to i32
  %1586 = and i32 %1585, 254
  %1587 = call i32 @llvm.ctpop.i32(i32 %1586)
  %1588 = trunc i32 %1587 to i8
  %1589 = and i8 %1588, 1
  %1590 = xor i8 %1589, 1
  store i8 %1590, i8* %1584, align 1
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1591, align 1
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1593 = icmp eq i64 %1581, 0
  %1594 = zext i1 %1593 to i8
  store i8 %1594, i8* %1592, align 1
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1596 = lshr i64 %1581, 63
  %1597 = trunc i64 %1596 to i8
  store i8 %1597, i8* %1595, align 1
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1598, align 1
  store %struct.Memory* %loadMem_42c846, %struct.Memory** %MEMORY
  %loadMem_42c84a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1600 = getelementptr inbounds %struct.GPR, %struct.GPR* %1599, i32 0, i32 33
  %1601 = getelementptr inbounds %struct.Reg, %struct.Reg* %1600, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %1601 to i64*
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 5
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %RCX.i475 = bitcast %union.anon* %1604 to i64*
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 9
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %RSI.i476 = bitcast %union.anon* %1607 to i64*
  %1608 = load i64, i64* %RCX.i475
  %1609 = load i64, i64* %RSI.i476
  %1610 = load i64, i64* %PC.i474
  %1611 = add i64 %1610, 3
  store i64 %1611, i64* %PC.i474
  %1612 = add i64 %1609, %1608
  store i64 %1612, i64* %RCX.i475, align 8
  %1613 = icmp ult i64 %1612, %1608
  %1614 = icmp ult i64 %1612, %1609
  %1615 = or i1 %1613, %1614
  %1616 = zext i1 %1615 to i8
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1616, i8* %1617, align 1
  %1618 = trunc i64 %1612 to i32
  %1619 = and i32 %1618, 255
  %1620 = call i32 @llvm.ctpop.i32(i32 %1619)
  %1621 = trunc i32 %1620 to i8
  %1622 = and i8 %1621, 1
  %1623 = xor i8 %1622, 1
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1623, i8* %1624, align 1
  %1625 = xor i64 %1609, %1608
  %1626 = xor i64 %1625, %1612
  %1627 = lshr i64 %1626, 4
  %1628 = trunc i64 %1627 to i8
  %1629 = and i8 %1628, 1
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1629, i8* %1630, align 1
  %1631 = icmp eq i64 %1612, 0
  %1632 = zext i1 %1631 to i8
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1632, i8* %1633, align 1
  %1634 = lshr i64 %1612, 63
  %1635 = trunc i64 %1634 to i8
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1635, i8* %1636, align 1
  %1637 = lshr i64 %1608, 63
  %1638 = lshr i64 %1609, 63
  %1639 = xor i64 %1634, %1637
  %1640 = xor i64 %1634, %1638
  %1641 = add i64 %1639, %1640
  %1642 = icmp eq i64 %1641, 2
  %1643 = zext i1 %1642 to i8
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1643, i8* %1644, align 1
  store %struct.Memory* %loadMem_42c84a, %struct.Memory** %MEMORY
  %loadMem_42c84d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 33
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %1647 to i64*
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 5
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %RCX.i472 = bitcast %union.anon* %1650 to i64*
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1652 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1651, i64 0, i64 0
  %YMM0.i473 = bitcast %union.VectorReg* %1652 to %"class.std::bitset"*
  %1653 = bitcast %"class.std::bitset"* %YMM0.i473 to i8*
  %1654 = load i64, i64* %RCX.i472
  %1655 = add i64 %1654, 8
  %1656 = load i64, i64* %PC.i471
  %1657 = add i64 %1656, 5
  store i64 %1657, i64* %PC.i471
  %1658 = inttoptr i64 %1655 to float*
  %1659 = load float, float* %1658
  %1660 = fpext float %1659 to double
  %1661 = bitcast i8* %1653 to double*
  store double %1660, double* %1661, align 1
  store %struct.Memory* %loadMem_42c84d, %struct.Memory** %MEMORY
  %loadMem_42c852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1663 = getelementptr inbounds %struct.GPR, %struct.GPR* %1662, i32 0, i32 33
  %1664 = getelementptr inbounds %struct.Reg, %struct.Reg* %1663, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %1664 to i64*
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 1
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %RAX.i469 = bitcast %union.anon* %1667 to i64*
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 9
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %RSI.i470 = bitcast %union.anon* %1670 to i64*
  %1671 = load i64, i64* %RAX.i469
  %1672 = load i64, i64* %PC.i468
  %1673 = add i64 %1672, 3
  store i64 %1673, i64* %PC.i468
  store i64 %1671, i64* %RSI.i470, align 8
  store %struct.Memory* %loadMem_42c852, %struct.Memory** %MEMORY
  %loadMem_42c855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 33
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %1676 to i64*
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1678 = getelementptr inbounds %struct.GPR, %struct.GPR* %1677, i32 0, i32 1
  %1679 = getelementptr inbounds %struct.Reg, %struct.Reg* %1678, i32 0, i32 0
  %1680 = bitcast %union.anon* %1679 to %struct.anon.2*
  %AL.i467 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1680, i32 0, i32 0
  %1681 = load i64, i64* %PC.i466
  %1682 = add i64 %1681, 2
  store i64 %1682, i64* %PC.i466
  store i8 1, i8* %AL.i467, align 1
  store %struct.Memory* %loadMem_42c855, %struct.Memory** %MEMORY
  %loadMem1_42c857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 33
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %1685 to i64*
  %1686 = load i64, i64* %PC.i465
  %1687 = add i64 %1686, 152921
  %1688 = load i64, i64* %PC.i465
  %1689 = add i64 %1688, 5
  %1690 = load i64, i64* %PC.i465
  %1691 = add i64 %1690, 5
  store i64 %1691, i64* %PC.i465
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1693 = load i64, i64* %1692, align 8
  %1694 = add i64 %1693, -8
  %1695 = inttoptr i64 %1694 to i64*
  store i64 %1689, i64* %1695
  store i64 %1694, i64* %1692, align 8
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1687, i64* %1696, align 8
  store %struct.Memory* %loadMem1_42c857, %struct.Memory** %MEMORY
  %loadMem2_42c857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42c857 = load i64, i64* %3
  %call2_42c857 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_42c857, %struct.Memory* %loadMem2_42c857)
  store %struct.Memory* %call2_42c857, %struct.Memory** %MEMORY
  %loadMem_42c85c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 33
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %1699 to i64*
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 1
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %EAX.i463 = bitcast %union.anon* %1702 to i32*
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1704 = getelementptr inbounds %struct.GPR, %struct.GPR* %1703, i32 0, i32 15
  %1705 = getelementptr inbounds %struct.Reg, %struct.Reg* %1704, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %1705 to i64*
  %1706 = load i64, i64* %RBP.i464
  %1707 = sub i64 %1706, 44
  %1708 = load i32, i32* %EAX.i463
  %1709 = zext i32 %1708 to i64
  %1710 = load i64, i64* %PC.i462
  %1711 = add i64 %1710, 3
  store i64 %1711, i64* %PC.i462
  %1712 = inttoptr i64 %1707 to i32*
  store i32 %1708, i32* %1712
  store %struct.Memory* %loadMem_42c85c, %struct.Memory** %MEMORY
  br label %block_.L_42c85f

block_.L_42c85f:                                  ; preds = %block_.L_42c7f8, %block_42c7f3
  %loadMem_42c85f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 33
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %1715 to i64*
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 1
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %RAX.i460 = bitcast %union.anon* %1718 to i64*
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 15
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %1721 to i64*
  %1722 = load i64, i64* %RBP.i461
  %1723 = sub i64 %1722, 16
  %1724 = load i64, i64* %PC.i459
  %1725 = add i64 %1724, 3
  store i64 %1725, i64* %PC.i459
  %1726 = inttoptr i64 %1723 to i32*
  %1727 = load i32, i32* %1726
  %1728 = zext i32 %1727 to i64
  store i64 %1728, i64* %RAX.i460, align 8
  store %struct.Memory* %loadMem_42c85f, %struct.Memory** %MEMORY
  %loadMem_42c862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 33
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %1731 to i64*
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 1
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %RAX.i458 = bitcast %union.anon* %1734 to i64*
  %1735 = load i64, i64* %RAX.i458
  %1736 = load i64, i64* %PC.i457
  %1737 = add i64 %1736, 3
  store i64 %1737, i64* %PC.i457
  %1738 = trunc i64 %1735 to i32
  %1739 = add i32 1, %1738
  %1740 = zext i32 %1739 to i64
  store i64 %1740, i64* %RAX.i458, align 8
  %1741 = icmp ult i32 %1739, %1738
  %1742 = icmp ult i32 %1739, 1
  %1743 = or i1 %1741, %1742
  %1744 = zext i1 %1743 to i8
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1744, i8* %1745, align 1
  %1746 = and i32 %1739, 255
  %1747 = call i32 @llvm.ctpop.i32(i32 %1746)
  %1748 = trunc i32 %1747 to i8
  %1749 = and i8 %1748, 1
  %1750 = xor i8 %1749, 1
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1750, i8* %1751, align 1
  %1752 = xor i64 1, %1735
  %1753 = trunc i64 %1752 to i32
  %1754 = xor i32 %1753, %1739
  %1755 = lshr i32 %1754, 4
  %1756 = trunc i32 %1755 to i8
  %1757 = and i8 %1756, 1
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1757, i8* %1758, align 1
  %1759 = icmp eq i32 %1739, 0
  %1760 = zext i1 %1759 to i8
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1760, i8* %1761, align 1
  %1762 = lshr i32 %1739, 31
  %1763 = trunc i32 %1762 to i8
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1763, i8* %1764, align 1
  %1765 = lshr i32 %1738, 31
  %1766 = xor i32 %1762, %1765
  %1767 = add i32 %1766, %1762
  %1768 = icmp eq i32 %1767, 2
  %1769 = zext i1 %1768 to i8
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1769, i8* %1770, align 1
  store %struct.Memory* %loadMem_42c862, %struct.Memory** %MEMORY
  %loadMem_42c865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1772 = getelementptr inbounds %struct.GPR, %struct.GPR* %1771, i32 0, i32 33
  %1773 = getelementptr inbounds %struct.Reg, %struct.Reg* %1772, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %1773 to i64*
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1775 = getelementptr inbounds %struct.GPR, %struct.GPR* %1774, i32 0, i32 1
  %1776 = getelementptr inbounds %struct.Reg, %struct.Reg* %1775, i32 0, i32 0
  %EAX.i455 = bitcast %union.anon* %1776 to i32*
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1778 = getelementptr inbounds %struct.GPR, %struct.GPR* %1777, i32 0, i32 15
  %1779 = getelementptr inbounds %struct.Reg, %struct.Reg* %1778, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %1779 to i64*
  %1780 = load i64, i64* %RBP.i456
  %1781 = sub i64 %1780, 20
  %1782 = load i32, i32* %EAX.i455
  %1783 = zext i32 %1782 to i64
  %1784 = load i64, i64* %PC.i454
  %1785 = add i64 %1784, 3
  store i64 %1785, i64* %PC.i454
  %1786 = inttoptr i64 %1781 to i32*
  store i32 %1782, i32* %1786
  store %struct.Memory* %loadMem_42c865, %struct.Memory** %MEMORY
  %loadMem_42c868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 33
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %1789 to i64*
  %1790 = load i64, i64* %PC.i453
  %1791 = add i64 %1790, 800
  %1792 = load i64, i64* %PC.i453
  %1793 = add i64 %1792, 5
  store i64 %1793, i64* %PC.i453
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1791, i64* %1794, align 8
  store %struct.Memory* %loadMem_42c868, %struct.Memory** %MEMORY
  br label %block_.L_42cb88

block_.L_42c86d:                                  ; preds = %block_42c75c
  %loadMem_42c86d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 33
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %1797 to i64*
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 15
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %1800 to i64*
  %1801 = load i64, i64* %RBP.i452
  %1802 = sub i64 %1801, 12
  %1803 = load i64, i64* %PC.i451
  %1804 = add i64 %1803, 4
  store i64 %1804, i64* %PC.i451
  %1805 = inttoptr i64 %1802 to i32*
  %1806 = load i32, i32* %1805
  %1807 = sub i32 %1806, 2
  %1808 = icmp ult i32 %1806, 2
  %1809 = zext i1 %1808 to i8
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1809, i8* %1810, align 1
  %1811 = and i32 %1807, 255
  %1812 = call i32 @llvm.ctpop.i32(i32 %1811)
  %1813 = trunc i32 %1812 to i8
  %1814 = and i8 %1813, 1
  %1815 = xor i8 %1814, 1
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1815, i8* %1816, align 1
  %1817 = xor i32 %1806, 2
  %1818 = xor i32 %1817, %1807
  %1819 = lshr i32 %1818, 4
  %1820 = trunc i32 %1819 to i8
  %1821 = and i8 %1820, 1
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1821, i8* %1822, align 1
  %1823 = icmp eq i32 %1807, 0
  %1824 = zext i1 %1823 to i8
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1824, i8* %1825, align 1
  %1826 = lshr i32 %1807, 31
  %1827 = trunc i32 %1826 to i8
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1827, i8* %1828, align 1
  %1829 = lshr i32 %1806, 31
  %1830 = xor i32 %1826, %1829
  %1831 = add i32 %1830, %1829
  %1832 = icmp eq i32 %1831, 2
  %1833 = zext i1 %1832 to i8
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1833, i8* %1834, align 1
  store %struct.Memory* %loadMem_42c86d, %struct.Memory** %MEMORY
  %loadMem_42c871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 33
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %1837 to i64*
  %1838 = load i64, i64* %PC.i450
  %1839 = add i64 %1838, 33
  %1840 = load i64, i64* %PC.i450
  %1841 = add i64 %1840, 6
  %1842 = load i64, i64* %PC.i450
  %1843 = add i64 %1842, 6
  store i64 %1843, i64* %PC.i450
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1845 = load i8, i8* %1844, align 1
  %1846 = icmp eq i8 %1845, 0
  %1847 = zext i1 %1846 to i8
  store i8 %1847, i8* %BRANCH_TAKEN, align 1
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1849 = select i1 %1846, i64 %1839, i64 %1841
  store i64 %1849, i64* %1848, align 8
  store %struct.Memory* %loadMem_42c871, %struct.Memory** %MEMORY
  %loadBr_42c871 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c871 = icmp eq i8 %loadBr_42c871, 1
  br i1 %cmpBr_42c871, label %block_.L_42c892, label %block_42c877

block_42c877:                                     ; preds = %block_.L_42c86d
  %loadMem_42c877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1851 = getelementptr inbounds %struct.GPR, %struct.GPR* %1850, i32 0, i32 33
  %1852 = getelementptr inbounds %struct.Reg, %struct.Reg* %1851, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %1852 to i64*
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1854 = getelementptr inbounds %struct.GPR, %struct.GPR* %1853, i32 0, i32 1
  %1855 = getelementptr inbounds %struct.Reg, %struct.Reg* %1854, i32 0, i32 0
  %RAX.i448 = bitcast %union.anon* %1855 to i64*
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 15
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %1858 to i64*
  %1859 = load i64, i64* %RBP.i449
  %1860 = sub i64 %1859, 8
  %1861 = load i64, i64* %PC.i447
  %1862 = add i64 %1861, 4
  store i64 %1862, i64* %PC.i447
  %1863 = inttoptr i64 %1860 to i64*
  %1864 = load i64, i64* %1863
  store i64 %1864, i64* %RAX.i448, align 8
  store %struct.Memory* %loadMem_42c877, %struct.Memory** %MEMORY
  %loadMem_42c87b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 33
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %1867 to i64*
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 5
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %RCX.i445 = bitcast %union.anon* %1870 to i64*
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 15
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %RBP.i446 = bitcast %union.anon* %1873 to i64*
  %1874 = load i64, i64* %RBP.i446
  %1875 = sub i64 %1874, 24
  %1876 = load i64, i64* %PC.i444
  %1877 = add i64 %1876, 4
  store i64 %1877, i64* %PC.i444
  %1878 = inttoptr i64 %1875 to i32*
  %1879 = load i32, i32* %1878
  %1880 = sext i32 %1879 to i64
  store i64 %1880, i64* %RCX.i445, align 8
  store %struct.Memory* %loadMem_42c87b, %struct.Memory** %MEMORY
  %loadMem_42c87f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1882 = getelementptr inbounds %struct.GPR, %struct.GPR* %1881, i32 0, i32 33
  %1883 = getelementptr inbounds %struct.Reg, %struct.Reg* %1882, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %1883 to i64*
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1885 = getelementptr inbounds %struct.GPR, %struct.GPR* %1884, i32 0, i32 1
  %1886 = getelementptr inbounds %struct.Reg, %struct.Reg* %1885, i32 0, i32 0
  %RAX.i441 = bitcast %union.anon* %1886 to i64*
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1888 = getelementptr inbounds %struct.GPR, %struct.GPR* %1887, i32 0, i32 5
  %1889 = getelementptr inbounds %struct.Reg, %struct.Reg* %1888, i32 0, i32 0
  %RCX.i442 = bitcast %union.anon* %1889 to i64*
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1891 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1890, i64 0, i64 0
  %YMM0.i443 = bitcast %union.VectorReg* %1891 to %"class.std::bitset"*
  %1892 = bitcast %"class.std::bitset"* %YMM0.i443 to i8*
  %1893 = load i64, i64* %RAX.i441
  %1894 = load i64, i64* %RCX.i442
  %1895 = mul i64 %1894, 4
  %1896 = add i64 %1893, 5200
  %1897 = add i64 %1896, %1895
  %1898 = load i64, i64* %PC.i440
  %1899 = add i64 %1898, 9
  store i64 %1899, i64* %PC.i440
  %1900 = inttoptr i64 %1897 to float*
  %1901 = load float, float* %1900
  %1902 = bitcast i8* %1892 to float*
  store float %1901, float* %1902, align 1
  %1903 = getelementptr inbounds i8, i8* %1892, i64 4
  %1904 = bitcast i8* %1903 to float*
  store float 0.000000e+00, float* %1904, align 1
  %1905 = getelementptr inbounds i8, i8* %1892, i64 8
  %1906 = bitcast i8* %1905 to float*
  store float 0.000000e+00, float* %1906, align 1
  %1907 = getelementptr inbounds i8, i8* %1892, i64 12
  %1908 = bitcast i8* %1907 to float*
  store float 0.000000e+00, float* %1908, align 1
  store %struct.Memory* %loadMem_42c87f, %struct.Memory** %MEMORY
  %loadMem_42c888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 33
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %1911 to i64*
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 15
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %1914 to i64*
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1916 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1915, i64 0, i64 0
  %XMM0.i439 = bitcast %union.VectorReg* %1916 to %union.vec128_t*
  %1917 = load i64, i64* %RBP.i438
  %1918 = sub i64 %1917, 36
  %1919 = bitcast %union.vec128_t* %XMM0.i439 to i8*
  %1920 = load i64, i64* %PC.i437
  %1921 = add i64 %1920, 5
  store i64 %1921, i64* %PC.i437
  %1922 = bitcast i8* %1919 to <2 x float>*
  %1923 = load <2 x float>, <2 x float>* %1922, align 1
  %1924 = extractelement <2 x float> %1923, i32 0
  %1925 = inttoptr i64 %1918 to float*
  store float %1924, float* %1925
  store %struct.Memory* %loadMem_42c888, %struct.Memory** %MEMORY
  %loadMem_42c88d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1927 = getelementptr inbounds %struct.GPR, %struct.GPR* %1926, i32 0, i32 33
  %1928 = getelementptr inbounds %struct.Reg, %struct.Reg* %1927, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %1928 to i64*
  %1929 = load i64, i64* %PC.i436
  %1930 = add i64 %1929, 27
  %1931 = load i64, i64* %PC.i436
  %1932 = add i64 %1931, 5
  store i64 %1932, i64* %PC.i436
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1930, i64* %1933, align 8
  store %struct.Memory* %loadMem_42c88d, %struct.Memory** %MEMORY
  br label %block_.L_42c8a8

block_.L_42c892:                                  ; preds = %block_.L_42c86d
  %loadMem_42c892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 33
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 1
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %RAX.i434 = bitcast %union.anon* %1939 to i64*
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 15
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %1942 to i64*
  %1943 = load i64, i64* %RBP.i435
  %1944 = sub i64 %1943, 8
  %1945 = load i64, i64* %PC.i433
  %1946 = add i64 %1945, 4
  store i64 %1946, i64* %PC.i433
  %1947 = inttoptr i64 %1944 to i64*
  %1948 = load i64, i64* %1947
  store i64 %1948, i64* %RAX.i434, align 8
  store %struct.Memory* %loadMem_42c892, %struct.Memory** %MEMORY
  %loadMem_42c896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1950 = getelementptr inbounds %struct.GPR, %struct.GPR* %1949, i32 0, i32 33
  %1951 = getelementptr inbounds %struct.Reg, %struct.Reg* %1950, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %1951 to i64*
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1953 = getelementptr inbounds %struct.GPR, %struct.GPR* %1952, i32 0, i32 5
  %1954 = getelementptr inbounds %struct.Reg, %struct.Reg* %1953, i32 0, i32 0
  %RCX.i431 = bitcast %union.anon* %1954 to i64*
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1956 = getelementptr inbounds %struct.GPR, %struct.GPR* %1955, i32 0, i32 15
  %1957 = getelementptr inbounds %struct.Reg, %struct.Reg* %1956, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %1957 to i64*
  %1958 = load i64, i64* %RBP.i432
  %1959 = sub i64 %1958, 24
  %1960 = load i64, i64* %PC.i430
  %1961 = add i64 %1960, 4
  store i64 %1961, i64* %PC.i430
  %1962 = inttoptr i64 %1959 to i32*
  %1963 = load i32, i32* %1962
  %1964 = sext i32 %1963 to i64
  store i64 %1964, i64* %RCX.i431, align 8
  store %struct.Memory* %loadMem_42c896, %struct.Memory** %MEMORY
  %loadMem_42c89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 33
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %1967 to i64*
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1969 = getelementptr inbounds %struct.GPR, %struct.GPR* %1968, i32 0, i32 1
  %1970 = getelementptr inbounds %struct.Reg, %struct.Reg* %1969, i32 0, i32 0
  %RAX.i427 = bitcast %union.anon* %1970 to i64*
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1972 = getelementptr inbounds %struct.GPR, %struct.GPR* %1971, i32 0, i32 5
  %1973 = getelementptr inbounds %struct.Reg, %struct.Reg* %1972, i32 0, i32 0
  %RCX.i428 = bitcast %union.anon* %1973 to i64*
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1975 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1974, i64 0, i64 0
  %YMM0.i429 = bitcast %union.VectorReg* %1975 to %"class.std::bitset"*
  %1976 = bitcast %"class.std::bitset"* %YMM0.i429 to i8*
  %1977 = load i64, i64* %RAX.i427
  %1978 = load i64, i64* %RCX.i428
  %1979 = mul i64 %1978, 4
  %1980 = add i64 %1977, 3600
  %1981 = add i64 %1980, %1979
  %1982 = load i64, i64* %PC.i426
  %1983 = add i64 %1982, 9
  store i64 %1983, i64* %PC.i426
  %1984 = inttoptr i64 %1981 to float*
  %1985 = load float, float* %1984
  %1986 = bitcast i8* %1976 to float*
  store float %1985, float* %1986, align 1
  %1987 = getelementptr inbounds i8, i8* %1976, i64 4
  %1988 = bitcast i8* %1987 to float*
  store float 0.000000e+00, float* %1988, align 1
  %1989 = getelementptr inbounds i8, i8* %1976, i64 8
  %1990 = bitcast i8* %1989 to float*
  store float 0.000000e+00, float* %1990, align 1
  %1991 = getelementptr inbounds i8, i8* %1976, i64 12
  %1992 = bitcast i8* %1991 to float*
  store float 0.000000e+00, float* %1992, align 1
  store %struct.Memory* %loadMem_42c89a, %struct.Memory** %MEMORY
  %loadMem_42c8a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 33
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %1995 to i64*
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1997 = getelementptr inbounds %struct.GPR, %struct.GPR* %1996, i32 0, i32 15
  %1998 = getelementptr inbounds %struct.Reg, %struct.Reg* %1997, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %1998 to i64*
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2000 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1999, i64 0, i64 0
  %XMM0.i425 = bitcast %union.VectorReg* %2000 to %union.vec128_t*
  %2001 = load i64, i64* %RBP.i424
  %2002 = sub i64 %2001, 36
  %2003 = bitcast %union.vec128_t* %XMM0.i425 to i8*
  %2004 = load i64, i64* %PC.i423
  %2005 = add i64 %2004, 5
  store i64 %2005, i64* %PC.i423
  %2006 = bitcast i8* %2003 to <2 x float>*
  %2007 = load <2 x float>, <2 x float>* %2006, align 1
  %2008 = extractelement <2 x float> %2007, i32 0
  %2009 = inttoptr i64 %2002 to float*
  store float %2008, float* %2009
  store %struct.Memory* %loadMem_42c8a3, %struct.Memory** %MEMORY
  br label %block_.L_42c8a8

block_.L_42c8a8:                                  ; preds = %block_.L_42c892, %block_42c877
  %loadMem_42c8a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 33
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %2012 to i64*
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2014 = getelementptr inbounds %struct.GPR, %struct.GPR* %2013, i32 0, i32 1
  %2015 = getelementptr inbounds %struct.Reg, %struct.Reg* %2014, i32 0, i32 0
  %RAX.i421 = bitcast %union.anon* %2015 to i64*
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2017 = getelementptr inbounds %struct.GPR, %struct.GPR* %2016, i32 0, i32 15
  %2018 = getelementptr inbounds %struct.Reg, %struct.Reg* %2017, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %2018 to i64*
  %2019 = load i64, i64* %RBP.i422
  %2020 = sub i64 %2019, 16
  %2021 = load i64, i64* %PC.i420
  %2022 = add i64 %2021, 3
  store i64 %2022, i64* %PC.i420
  %2023 = inttoptr i64 %2020 to i32*
  %2024 = load i32, i32* %2023
  %2025 = zext i32 %2024 to i64
  store i64 %2025, i64* %RAX.i421, align 8
  store %struct.Memory* %loadMem_42c8a8, %struct.Memory** %MEMORY
  %loadMem_42c8ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 33
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 1
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %EAX.i418 = bitcast %union.anon* %2031 to i32*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 15
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %2034 to i64*
  %2035 = load i64, i64* %RBP.i419
  %2036 = sub i64 %2035, 20
  %2037 = load i32, i32* %EAX.i418
  %2038 = zext i32 %2037 to i64
  %2039 = load i64, i64* %PC.i417
  %2040 = add i64 %2039, 3
  store i64 %2040, i64* %PC.i417
  %2041 = inttoptr i64 %2036 to i32*
  store i32 %2037, i32* %2041
  store %struct.Memory* %loadMem_42c8ab, %struct.Memory** %MEMORY
  br label %block_.L_42c8ae

block_.L_42c8ae:                                  ; preds = %block_.L_42c96a, %block_.L_42c8a8
  %loadMem_42c8ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2043 = getelementptr inbounds %struct.GPR, %struct.GPR* %2042, i32 0, i32 33
  %2044 = getelementptr inbounds %struct.Reg, %struct.Reg* %2043, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %2044 to i64*
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2046 = getelementptr inbounds %struct.GPR, %struct.GPR* %2045, i32 0, i32 1
  %2047 = getelementptr inbounds %struct.Reg, %struct.Reg* %2046, i32 0, i32 0
  %EAX.i415 = bitcast %union.anon* %2047 to i32*
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 1
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %RAX.i416 = bitcast %union.anon* %2050 to i64*
  %2051 = load i64, i64* %RAX.i416
  %2052 = load i32, i32* %EAX.i415
  %2053 = zext i32 %2052 to i64
  %2054 = load i64, i64* %PC.i414
  %2055 = add i64 %2054, 2
  store i64 %2055, i64* %PC.i414
  %2056 = xor i64 %2053, %2051
  %2057 = trunc i64 %2056 to i32
  %2058 = and i64 %2056, 4294967295
  store i64 %2058, i64* %RAX.i416, align 8
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2059, align 1
  %2060 = and i32 %2057, 255
  %2061 = call i32 @llvm.ctpop.i32(i32 %2060)
  %2062 = trunc i32 %2061 to i8
  %2063 = and i8 %2062, 1
  %2064 = xor i8 %2063, 1
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2064, i8* %2065, align 1
  %2066 = icmp eq i32 %2057, 0
  %2067 = zext i1 %2066 to i8
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2067, i8* %2068, align 1
  %2069 = lshr i32 %2057, 31
  %2070 = trunc i32 %2069 to i8
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2070, i8* %2071, align 1
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2072, align 1
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2073, align 1
  store %struct.Memory* %loadMem_42c8ae, %struct.Memory** %MEMORY
  %loadMem_42c8b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2075 = getelementptr inbounds %struct.GPR, %struct.GPR* %2074, i32 0, i32 33
  %2076 = getelementptr inbounds %struct.Reg, %struct.Reg* %2075, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %2076 to i64*
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 1
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %2080 = bitcast %union.anon* %2079 to %struct.anon.2*
  %AL.i412 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2080, i32 0, i32 0
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2082 = getelementptr inbounds %struct.GPR, %struct.GPR* %2081, i32 0, i32 5
  %2083 = getelementptr inbounds %struct.Reg, %struct.Reg* %2082, i32 0, i32 0
  %2084 = bitcast %union.anon* %2083 to %struct.anon.2*
  %CL.i413 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2084, i32 0, i32 0
  %2085 = load i8, i8* %AL.i412
  %2086 = zext i8 %2085 to i64
  %2087 = load i64, i64* %PC.i411
  %2088 = add i64 %2087, 2
  store i64 %2088, i64* %PC.i411
  store i8 %2085, i8* %CL.i413, align 1
  store %struct.Memory* %loadMem_42c8b0, %struct.Memory** %MEMORY
  %loadMem_42c8b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2090 = getelementptr inbounds %struct.GPR, %struct.GPR* %2089, i32 0, i32 33
  %2091 = getelementptr inbounds %struct.Reg, %struct.Reg* %2090, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %2091 to i64*
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2093 = getelementptr inbounds %struct.GPR, %struct.GPR* %2092, i32 0, i32 1
  %2094 = getelementptr inbounds %struct.Reg, %struct.Reg* %2093, i32 0, i32 0
  %RAX.i409 = bitcast %union.anon* %2094 to i64*
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 15
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %2097 to i64*
  %2098 = load i64, i64* %RBP.i410
  %2099 = sub i64 %2098, 20
  %2100 = load i64, i64* %PC.i408
  %2101 = add i64 %2100, 3
  store i64 %2101, i64* %PC.i408
  %2102 = inttoptr i64 %2099 to i32*
  %2103 = load i32, i32* %2102
  %2104 = zext i32 %2103 to i64
  store i64 %2104, i64* %RAX.i409, align 8
  store %struct.Memory* %loadMem_42c8b2, %struct.Memory** %MEMORY
  %loadMem_42c8b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 33
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %2107 to i64*
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 7
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %RDX.i406 = bitcast %union.anon* %2110 to i64*
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2112 = getelementptr inbounds %struct.GPR, %struct.GPR* %2111, i32 0, i32 15
  %2113 = getelementptr inbounds %struct.Reg, %struct.Reg* %2112, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %2113 to i64*
  %2114 = load i64, i64* %RBP.i407
  %2115 = sub i64 %2114, 8
  %2116 = load i64, i64* %PC.i405
  %2117 = add i64 %2116, 4
  store i64 %2117, i64* %PC.i405
  %2118 = inttoptr i64 %2115 to i64*
  %2119 = load i64, i64* %2118
  store i64 %2119, i64* %RDX.i406, align 8
  store %struct.Memory* %loadMem_42c8b5, %struct.Memory** %MEMORY
  %loadMem_42c8b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2121 = getelementptr inbounds %struct.GPR, %struct.GPR* %2120, i32 0, i32 33
  %2122 = getelementptr inbounds %struct.Reg, %struct.Reg* %2121, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %2122 to i64*
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2124 = getelementptr inbounds %struct.GPR, %struct.GPR* %2123, i32 0, i32 1
  %2125 = getelementptr inbounds %struct.Reg, %struct.Reg* %2124, i32 0, i32 0
  %EAX.i403 = bitcast %union.anon* %2125 to i32*
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 7
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %RDX.i404 = bitcast %union.anon* %2128 to i64*
  %2129 = load i32, i32* %EAX.i403
  %2130 = zext i32 %2129 to i64
  %2131 = load i64, i64* %RDX.i404
  %2132 = add i64 %2131, 35668
  %2133 = load i64, i64* %PC.i402
  %2134 = add i64 %2133, 6
  store i64 %2134, i64* %PC.i402
  %2135 = inttoptr i64 %2132 to i32*
  %2136 = load i32, i32* %2135
  %2137 = sub i32 %2129, %2136
  %2138 = icmp ult i32 %2129, %2136
  %2139 = zext i1 %2138 to i8
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2139, i8* %2140, align 1
  %2141 = and i32 %2137, 255
  %2142 = call i32 @llvm.ctpop.i32(i32 %2141)
  %2143 = trunc i32 %2142 to i8
  %2144 = and i8 %2143, 1
  %2145 = xor i8 %2144, 1
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2145, i8* %2146, align 1
  %2147 = xor i32 %2136, %2129
  %2148 = xor i32 %2147, %2137
  %2149 = lshr i32 %2148, 4
  %2150 = trunc i32 %2149 to i8
  %2151 = and i8 %2150, 1
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2151, i8* %2152, align 1
  %2153 = icmp eq i32 %2137, 0
  %2154 = zext i1 %2153 to i8
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2154, i8* %2155, align 1
  %2156 = lshr i32 %2137, 31
  %2157 = trunc i32 %2156 to i8
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2157, i8* %2158, align 1
  %2159 = lshr i32 %2129, 31
  %2160 = lshr i32 %2136, 31
  %2161 = xor i32 %2160, %2159
  %2162 = xor i32 %2156, %2159
  %2163 = add i32 %2162, %2161
  %2164 = icmp eq i32 %2163, 2
  %2165 = zext i1 %2164 to i8
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2165, i8* %2166, align 1
  store %struct.Memory* %loadMem_42c8b9, %struct.Memory** %MEMORY
  %loadMem_42c8bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 33
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %2169 to i64*
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 5
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %2173 = bitcast %union.anon* %2172 to %struct.anon.2*
  %CL.i400 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2173, i32 0, i32 0
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2175 = getelementptr inbounds %struct.GPR, %struct.GPR* %2174, i32 0, i32 15
  %2176 = getelementptr inbounds %struct.Reg, %struct.Reg* %2175, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %2176 to i64*
  %2177 = load i64, i64* %RBP.i401
  %2178 = sub i64 %2177, 45
  %2179 = load i8, i8* %CL.i400
  %2180 = zext i8 %2179 to i64
  %2181 = load i64, i64* %PC.i399
  %2182 = add i64 %2181, 3
  store i64 %2182, i64* %PC.i399
  %2183 = inttoptr i64 %2178 to i8*
  store i8 %2179, i8* %2183
  store %struct.Memory* %loadMem_42c8bf, %struct.Memory** %MEMORY
  %loadMem_42c8c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2185 = getelementptr inbounds %struct.GPR, %struct.GPR* %2184, i32 0, i32 33
  %2186 = getelementptr inbounds %struct.Reg, %struct.Reg* %2185, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %2186 to i64*
  %2187 = load i64, i64* %PC.i398
  %2188 = add i64 %2187, 40
  %2189 = load i64, i64* %PC.i398
  %2190 = add i64 %2189, 6
  %2191 = load i64, i64* %PC.i398
  %2192 = add i64 %2191, 6
  store i64 %2192, i64* %PC.i398
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2194 = load i8, i8* %2193, align 1
  %2195 = icmp ne i8 %2194, 0
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2197 = load i8, i8* %2196, align 1
  %2198 = icmp ne i8 %2197, 0
  %2199 = xor i1 %2195, %2198
  %2200 = xor i1 %2199, true
  %2201 = zext i1 %2200 to i8
  store i8 %2201, i8* %BRANCH_TAKEN, align 1
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2203 = select i1 %2199, i64 %2190, i64 %2188
  store i64 %2203, i64* %2202, align 8
  store %struct.Memory* %loadMem_42c8c2, %struct.Memory** %MEMORY
  %loadBr_42c8c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c8c2 = icmp eq i8 %loadBr_42c8c2, 1
  br i1 %cmpBr_42c8c2, label %block_.L_42c8ea, label %block_42c8c8

block_42c8c8:                                     ; preds = %block_.L_42c8ae
  %loadMem_42c8c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 33
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %2206 to i64*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 1
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %2209 to i64*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 15
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %2212 to i64*
  %2213 = load i64, i64* %RBP.i397
  %2214 = sub i64 %2213, 8
  %2215 = load i64, i64* %PC.i395
  %2216 = add i64 %2215, 4
  store i64 %2216, i64* %PC.i395
  %2217 = inttoptr i64 %2214 to i64*
  %2218 = load i64, i64* %2217
  store i64 %2218, i64* %RAX.i396, align 8
  store %struct.Memory* %loadMem_42c8c8, %struct.Memory** %MEMORY
  %loadMem_42c8cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 33
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %2221 to i64*
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 1
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %RAX.i394 = bitcast %union.anon* %2224 to i64*
  %2225 = load i64, i64* %RAX.i394
  %2226 = load i64, i64* %PC.i393
  %2227 = add i64 %2226, 6
  store i64 %2227, i64* %PC.i393
  %2228 = add i64 35672, %2225
  store i64 %2228, i64* %RAX.i394, align 8
  %2229 = icmp ult i64 %2228, %2225
  %2230 = icmp ult i64 %2228, 35672
  %2231 = or i1 %2229, %2230
  %2232 = zext i1 %2231 to i8
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2232, i8* %2233, align 1
  %2234 = trunc i64 %2228 to i32
  %2235 = and i32 %2234, 255
  %2236 = call i32 @llvm.ctpop.i32(i32 %2235)
  %2237 = trunc i32 %2236 to i8
  %2238 = and i8 %2237, 1
  %2239 = xor i8 %2238, 1
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2239, i8* %2240, align 1
  %2241 = xor i64 35672, %2225
  %2242 = xor i64 %2241, %2228
  %2243 = lshr i64 %2242, 4
  %2244 = trunc i64 %2243 to i8
  %2245 = and i8 %2244, 1
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2245, i8* %2246, align 1
  %2247 = icmp eq i64 %2228, 0
  %2248 = zext i1 %2247 to i8
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2248, i8* %2249, align 1
  %2250 = lshr i64 %2228, 63
  %2251 = trunc i64 %2250 to i8
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2251, i8* %2252, align 1
  %2253 = lshr i64 %2225, 63
  %2254 = xor i64 %2250, %2253
  %2255 = add i64 %2254, %2250
  %2256 = icmp eq i64 %2255, 2
  %2257 = zext i1 %2256 to i8
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2257, i8* %2258, align 1
  store %struct.Memory* %loadMem_42c8cc, %struct.Memory** %MEMORY
  %loadMem_42c8d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 33
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %2261 to i64*
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2263 = getelementptr inbounds %struct.GPR, %struct.GPR* %2262, i32 0, i32 5
  %2264 = getelementptr inbounds %struct.Reg, %struct.Reg* %2263, i32 0, i32 0
  %RCX.i391 = bitcast %union.anon* %2264 to i64*
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 15
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %2267 to i64*
  %2268 = load i64, i64* %RBP.i392
  %2269 = sub i64 %2268, 20
  %2270 = load i64, i64* %PC.i390
  %2271 = add i64 %2270, 4
  store i64 %2271, i64* %PC.i390
  %2272 = inttoptr i64 %2269 to i32*
  %2273 = load i32, i32* %2272
  %2274 = sext i32 %2273 to i64
  store i64 %2274, i64* %RCX.i391, align 8
  store %struct.Memory* %loadMem_42c8d2, %struct.Memory** %MEMORY
  %loadMem_42c8d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2276 = getelementptr inbounds %struct.GPR, %struct.GPR* %2275, i32 0, i32 33
  %2277 = getelementptr inbounds %struct.Reg, %struct.Reg* %2276, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %2277 to i64*
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2279 = getelementptr inbounds %struct.GPR, %struct.GPR* %2278, i32 0, i32 5
  %2280 = getelementptr inbounds %struct.Reg, %struct.Reg* %2279, i32 0, i32 0
  %RCX.i389 = bitcast %union.anon* %2280 to i64*
  %2281 = load i64, i64* %RCX.i389
  %2282 = load i64, i64* %PC.i388
  %2283 = add i64 %2282, 4
  store i64 %2283, i64* %PC.i388
  %2284 = shl i64 %2281, 3
  %2285 = icmp slt i64 %2284, 0
  %2286 = shl i64 %2284, 1
  store i64 %2286, i64* %RCX.i389, align 8
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2288 = zext i1 %2285 to i8
  store i8 %2288, i8* %2287, align 1
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2290 = trunc i64 %2286 to i32
  %2291 = and i32 %2290, 254
  %2292 = call i32 @llvm.ctpop.i32(i32 %2291)
  %2293 = trunc i32 %2292 to i8
  %2294 = and i8 %2293, 1
  %2295 = xor i8 %2294, 1
  store i8 %2295, i8* %2289, align 1
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2296, align 1
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2298 = icmp eq i64 %2286, 0
  %2299 = zext i1 %2298 to i8
  store i8 %2299, i8* %2297, align 1
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2301 = lshr i64 %2286, 63
  %2302 = trunc i64 %2301 to i8
  store i8 %2302, i8* %2300, align 1
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2303, align 1
  store %struct.Memory* %loadMem_42c8d6, %struct.Memory** %MEMORY
  %loadMem_42c8da = load %struct.Memory*, %struct.Memory** %MEMORY
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2305 = getelementptr inbounds %struct.GPR, %struct.GPR* %2304, i32 0, i32 33
  %2306 = getelementptr inbounds %struct.Reg, %struct.Reg* %2305, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %2306 to i64*
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2308 = getelementptr inbounds %struct.GPR, %struct.GPR* %2307, i32 0, i32 1
  %2309 = getelementptr inbounds %struct.Reg, %struct.Reg* %2308, i32 0, i32 0
  %RAX.i386 = bitcast %union.anon* %2309 to i64*
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 5
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %RCX.i387 = bitcast %union.anon* %2312 to i64*
  %2313 = load i64, i64* %RAX.i386
  %2314 = load i64, i64* %RCX.i387
  %2315 = load i64, i64* %PC.i385
  %2316 = add i64 %2315, 3
  store i64 %2316, i64* %PC.i385
  %2317 = add i64 %2314, %2313
  store i64 %2317, i64* %RAX.i386, align 8
  %2318 = icmp ult i64 %2317, %2313
  %2319 = icmp ult i64 %2317, %2314
  %2320 = or i1 %2318, %2319
  %2321 = zext i1 %2320 to i8
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2321, i8* %2322, align 1
  %2323 = trunc i64 %2317 to i32
  %2324 = and i32 %2323, 255
  %2325 = call i32 @llvm.ctpop.i32(i32 %2324)
  %2326 = trunc i32 %2325 to i8
  %2327 = and i8 %2326, 1
  %2328 = xor i8 %2327, 1
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2328, i8* %2329, align 1
  %2330 = xor i64 %2314, %2313
  %2331 = xor i64 %2330, %2317
  %2332 = lshr i64 %2331, 4
  %2333 = trunc i64 %2332 to i8
  %2334 = and i8 %2333, 1
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2334, i8* %2335, align 1
  %2336 = icmp eq i64 %2317, 0
  %2337 = zext i1 %2336 to i8
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2337, i8* %2338, align 1
  %2339 = lshr i64 %2317, 63
  %2340 = trunc i64 %2339 to i8
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2340, i8* %2341, align 1
  %2342 = lshr i64 %2313, 63
  %2343 = lshr i64 %2314, 63
  %2344 = xor i64 %2339, %2342
  %2345 = xor i64 %2339, %2343
  %2346 = add i64 %2344, %2345
  %2347 = icmp eq i64 %2346, 2
  %2348 = zext i1 %2347 to i8
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2348, i8* %2349, align 1
  store %struct.Memory* %loadMem_42c8da, %struct.Memory** %MEMORY
  %loadMem_42c8dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 33
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %2352 to i64*
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 1
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %RAX.i383 = bitcast %union.anon* %2355 to i64*
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 7
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %RDX.i384 = bitcast %union.anon* %2358 to i64*
  %2359 = load i64, i64* %RAX.i383
  %2360 = load i64, i64* %PC.i382
  %2361 = add i64 %2360, 2
  store i64 %2361, i64* %PC.i382
  %2362 = inttoptr i64 %2359 to i32*
  %2363 = load i32, i32* %2362
  %2364 = zext i32 %2363 to i64
  store i64 %2364, i64* %RDX.i384, align 8
  store %struct.Memory* %loadMem_42c8dd, %struct.Memory** %MEMORY
  %loadMem_42c8df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 33
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %2367 to i64*
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 7
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %EDX.i380 = bitcast %union.anon* %2370 to i32*
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 15
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %2373 to i64*
  %2374 = load i32, i32* %EDX.i380
  %2375 = zext i32 %2374 to i64
  %2376 = load i64, i64* %RBP.i381
  %2377 = sub i64 %2376, 24
  %2378 = load i64, i64* %PC.i379
  %2379 = add i64 %2378, 3
  store i64 %2379, i64* %PC.i379
  %2380 = inttoptr i64 %2377 to i32*
  %2381 = load i32, i32* %2380
  %2382 = sub i32 %2374, %2381
  %2383 = icmp ult i32 %2374, %2381
  %2384 = zext i1 %2383 to i8
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2384, i8* %2385, align 1
  %2386 = and i32 %2382, 255
  %2387 = call i32 @llvm.ctpop.i32(i32 %2386)
  %2388 = trunc i32 %2387 to i8
  %2389 = and i8 %2388, 1
  %2390 = xor i8 %2389, 1
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2390, i8* %2391, align 1
  %2392 = xor i32 %2381, %2374
  %2393 = xor i32 %2392, %2382
  %2394 = lshr i32 %2393, 4
  %2395 = trunc i32 %2394 to i8
  %2396 = and i8 %2395, 1
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2396, i8* %2397, align 1
  %2398 = icmp eq i32 %2382, 0
  %2399 = zext i1 %2398 to i8
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2399, i8* %2400, align 1
  %2401 = lshr i32 %2382, 31
  %2402 = trunc i32 %2401 to i8
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2402, i8* %2403, align 1
  %2404 = lshr i32 %2374, 31
  %2405 = lshr i32 %2381, 31
  %2406 = xor i32 %2405, %2404
  %2407 = xor i32 %2401, %2404
  %2408 = add i32 %2407, %2406
  %2409 = icmp eq i32 %2408, 2
  %2410 = zext i1 %2409 to i8
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2410, i8* %2411, align 1
  store %struct.Memory* %loadMem_42c8df, %struct.Memory** %MEMORY
  %loadMem_42c8e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 33
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %2414 to i64*
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 9
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %2418 = bitcast %union.anon* %2417 to %struct.anon.2*
  %SIL.i378 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2418, i32 0, i32 0
  %2419 = load i64, i64* %PC.i377
  %2420 = add i64 %2419, 4
  store i64 %2420, i64* %PC.i377
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2422 = load i8, i8* %2421, align 1
  store i8 %2422, i8* %SIL.i378, align 1
  store %struct.Memory* %loadMem_42c8e2, %struct.Memory** %MEMORY
  %loadMem_42c8e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2424 = getelementptr inbounds %struct.GPR, %struct.GPR* %2423, i32 0, i32 33
  %2425 = getelementptr inbounds %struct.Reg, %struct.Reg* %2424, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %2425 to i64*
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 9
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %2429 = bitcast %union.anon* %2428 to %struct.anon.2*
  %SIL.i375 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2429, i32 0, i32 0
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2431 = getelementptr inbounds %struct.GPR, %struct.GPR* %2430, i32 0, i32 15
  %2432 = getelementptr inbounds %struct.Reg, %struct.Reg* %2431, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %2432 to i64*
  %2433 = load i64, i64* %RBP.i376
  %2434 = sub i64 %2433, 45
  %2435 = load i8, i8* %SIL.i375
  %2436 = zext i8 %2435 to i64
  %2437 = load i64, i64* %PC.i374
  %2438 = add i64 %2437, 4
  store i64 %2438, i64* %PC.i374
  %2439 = inttoptr i64 %2434 to i8*
  store i8 %2435, i8* %2439
  store %struct.Memory* %loadMem_42c8e6, %struct.Memory** %MEMORY
  br label %block_.L_42c8ea

block_.L_42c8ea:                                  ; preds = %block_42c8c8, %block_.L_42c8ae
  %loadMem_42c8ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 33
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %2442 to i64*
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2444 = getelementptr inbounds %struct.GPR, %struct.GPR* %2443, i32 0, i32 1
  %2445 = getelementptr inbounds %struct.Reg, %struct.Reg* %2444, i32 0, i32 0
  %2446 = bitcast %union.anon* %2445 to %struct.anon.2*
  %AL.i372 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2446, i32 0, i32 0
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 15
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %2449 to i64*
  %2450 = load i64, i64* %RBP.i373
  %2451 = sub i64 %2450, 45
  %2452 = load i64, i64* %PC.i371
  %2453 = add i64 %2452, 3
  store i64 %2453, i64* %PC.i371
  %2454 = inttoptr i64 %2451 to i8*
  %2455 = load i8, i8* %2454
  store i8 %2455, i8* %AL.i372, align 1
  store %struct.Memory* %loadMem_42c8ea, %struct.Memory** %MEMORY
  %loadMem_42c8ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2457 = getelementptr inbounds %struct.GPR, %struct.GPR* %2456, i32 0, i32 33
  %2458 = getelementptr inbounds %struct.Reg, %struct.Reg* %2457, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %2458 to i64*
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 1
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %2462 = bitcast %union.anon* %2461 to %struct.anon.2*
  %AL.i370 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2462, i32 0, i32 0
  %2463 = load i8, i8* %AL.i370
  %2464 = zext i8 %2463 to i64
  %2465 = load i64, i64* %PC.i369
  %2466 = add i64 %2465, 2
  store i64 %2466, i64* %PC.i369
  %2467 = and i64 1, %2464
  %2468 = trunc i64 %2467 to i8
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2469, align 1
  %2470 = trunc i64 %2467 to i32
  %2471 = and i32 %2470, 255
  %2472 = call i32 @llvm.ctpop.i32(i32 %2471)
  %2473 = trunc i32 %2472 to i8
  %2474 = and i8 %2473, 1
  %2475 = xor i8 %2474, 1
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2475, i8* %2476, align 1
  %2477 = icmp eq i8 %2468, 0
  %2478 = zext i1 %2477 to i8
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2478, i8* %2479, align 1
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2480, align 1
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2481, align 1
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2482, align 1
  store %struct.Memory* %loadMem_42c8ed, %struct.Memory** %MEMORY
  %loadMem_42c8ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 33
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %2485 to i64*
  %2486 = load i64, i64* %PC.i368
  %2487 = add i64 %2486, 11
  %2488 = load i64, i64* %PC.i368
  %2489 = add i64 %2488, 6
  %2490 = load i64, i64* %PC.i368
  %2491 = add i64 %2490, 6
  store i64 %2491, i64* %PC.i368
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2493 = load i8, i8* %2492, align 1
  %2494 = icmp eq i8 %2493, 0
  %2495 = zext i1 %2494 to i8
  store i8 %2495, i8* %BRANCH_TAKEN, align 1
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2497 = select i1 %2494, i64 %2487, i64 %2489
  store i64 %2497, i64* %2496, align 8
  store %struct.Memory* %loadMem_42c8ef, %struct.Memory** %MEMORY
  %loadBr_42c8ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c8ef = icmp eq i8 %loadBr_42c8ef, 1
  br i1 %cmpBr_42c8ef, label %block_.L_42c8fa, label %block_42c8f5

block_42c8f5:                                     ; preds = %block_.L_42c8ea
  %loadMem_42c8f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 33
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %2500 to i64*
  %2501 = load i64, i64* %PC.i367
  %2502 = add i64 %2501, 131
  %2503 = load i64, i64* %PC.i367
  %2504 = add i64 %2503, 5
  store i64 %2504, i64* %PC.i367
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2502, i64* %2505, align 8
  store %struct.Memory* %loadMem_42c8f5, %struct.Memory** %MEMORY
  br label %block_.L_42c978

block_.L_42c8fa:                                  ; preds = %block_.L_42c8ea
  %loadMem_42c8fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 33
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %2508 to i64*
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 1
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %RAX.i365 = bitcast %union.anon* %2511 to i64*
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2513 = getelementptr inbounds %struct.GPR, %struct.GPR* %2512, i32 0, i32 15
  %2514 = getelementptr inbounds %struct.Reg, %struct.Reg* %2513, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %2514 to i64*
  %2515 = load i64, i64* %RBP.i366
  %2516 = sub i64 %2515, 20
  %2517 = load i64, i64* %PC.i364
  %2518 = add i64 %2517, 3
  store i64 %2518, i64* %PC.i364
  %2519 = inttoptr i64 %2516 to i32*
  %2520 = load i32, i32* %2519
  %2521 = zext i32 %2520 to i64
  store i64 %2521, i64* %RAX.i365, align 8
  store %struct.Memory* %loadMem_42c8fa, %struct.Memory** %MEMORY
  %loadMem_42c8fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 33
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %2524 to i64*
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 1
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %EAX.i362 = bitcast %union.anon* %2527 to i32*
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2529 = getelementptr inbounds %struct.GPR, %struct.GPR* %2528, i32 0, i32 15
  %2530 = getelementptr inbounds %struct.Reg, %struct.Reg* %2529, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %2530 to i64*
  %2531 = load i32, i32* %EAX.i362
  %2532 = zext i32 %2531 to i64
  %2533 = load i64, i64* %RBP.i363
  %2534 = sub i64 %2533, 16
  %2535 = load i64, i64* %PC.i361
  %2536 = add i64 %2535, 3
  store i64 %2536, i64* %PC.i361
  %2537 = inttoptr i64 %2534 to i32*
  %2538 = load i32, i32* %2537
  %2539 = sub i32 %2531, %2538
  %2540 = icmp ult i32 %2531, %2538
  %2541 = zext i1 %2540 to i8
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2541, i8* %2542, align 1
  %2543 = and i32 %2539, 255
  %2544 = call i32 @llvm.ctpop.i32(i32 %2543)
  %2545 = trunc i32 %2544 to i8
  %2546 = and i8 %2545, 1
  %2547 = xor i8 %2546, 1
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2547, i8* %2548, align 1
  %2549 = xor i32 %2538, %2531
  %2550 = xor i32 %2549, %2539
  %2551 = lshr i32 %2550, 4
  %2552 = trunc i32 %2551 to i8
  %2553 = and i8 %2552, 1
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2553, i8* %2554, align 1
  %2555 = icmp eq i32 %2539, 0
  %2556 = zext i1 %2555 to i8
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2556, i8* %2557, align 1
  %2558 = lshr i32 %2539, 31
  %2559 = trunc i32 %2558 to i8
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2559, i8* %2560, align 1
  %2561 = lshr i32 %2531, 31
  %2562 = lshr i32 %2538, 31
  %2563 = xor i32 %2562, %2561
  %2564 = xor i32 %2558, %2561
  %2565 = add i32 %2564, %2563
  %2566 = icmp eq i32 %2565, 2
  %2567 = zext i1 %2566 to i8
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2567, i8* %2568, align 1
  store %struct.Memory* %loadMem_42c8fd, %struct.Memory** %MEMORY
  %loadMem_42c900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2570 = getelementptr inbounds %struct.GPR, %struct.GPR* %2569, i32 0, i32 33
  %2571 = getelementptr inbounds %struct.Reg, %struct.Reg* %2570, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %2571 to i64*
  %2572 = load i64, i64* %PC.i360
  %2573 = add i64 %2572, 65
  %2574 = load i64, i64* %PC.i360
  %2575 = add i64 %2574, 6
  %2576 = load i64, i64* %PC.i360
  %2577 = add i64 %2576, 6
  store i64 %2577, i64* %PC.i360
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2579 = load i8, i8* %2578, align 1
  store i8 %2579, i8* %BRANCH_TAKEN, align 1
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2581 = icmp ne i8 %2579, 0
  %2582 = select i1 %2581, i64 %2573, i64 %2575
  store i64 %2582, i64* %2580, align 8
  store %struct.Memory* %loadMem_42c900, %struct.Memory** %MEMORY
  %loadBr_42c900 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c900 = icmp eq i8 %loadBr_42c900, 1
  br i1 %cmpBr_42c900, label %block_.L_42c941, label %block_42c906

block_42c906:                                     ; preds = %block_.L_42c8fa
  %loadMem_42c906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 33
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %2585 to i64*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 1
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %RAX.i358 = bitcast %union.anon* %2588 to i64*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 15
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %2591 to i64*
  %2592 = load i64, i64* %RBP.i359
  %2593 = sub i64 %2592, 8
  %2594 = load i64, i64* %PC.i357
  %2595 = add i64 %2594, 4
  store i64 %2595, i64* %PC.i357
  %2596 = inttoptr i64 %2593 to i64*
  %2597 = load i64, i64* %2596
  store i64 %2597, i64* %RAX.i358, align 8
  store %struct.Memory* %loadMem_42c906, %struct.Memory** %MEMORY
  %loadMem_42c90a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 33
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %2600 to i64*
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 1
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %RAX.i356 = bitcast %union.anon* %2603 to i64*
  %2604 = load i64, i64* %RAX.i356
  %2605 = load i64, i64* %PC.i355
  %2606 = add i64 %2605, 6
  store i64 %2606, i64* %PC.i355
  %2607 = add i64 35672, %2604
  store i64 %2607, i64* %RAX.i356, align 8
  %2608 = icmp ult i64 %2607, %2604
  %2609 = icmp ult i64 %2607, 35672
  %2610 = or i1 %2608, %2609
  %2611 = zext i1 %2610 to i8
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2611, i8* %2612, align 1
  %2613 = trunc i64 %2607 to i32
  %2614 = and i32 %2613, 255
  %2615 = call i32 @llvm.ctpop.i32(i32 %2614)
  %2616 = trunc i32 %2615 to i8
  %2617 = and i8 %2616, 1
  %2618 = xor i8 %2617, 1
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2618, i8* %2619, align 1
  %2620 = xor i64 35672, %2604
  %2621 = xor i64 %2620, %2607
  %2622 = lshr i64 %2621, 4
  %2623 = trunc i64 %2622 to i8
  %2624 = and i8 %2623, 1
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2624, i8* %2625, align 1
  %2626 = icmp eq i64 %2607, 0
  %2627 = zext i1 %2626 to i8
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2627, i8* %2628, align 1
  %2629 = lshr i64 %2607, 63
  %2630 = trunc i64 %2629 to i8
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2630, i8* %2631, align 1
  %2632 = lshr i64 %2604, 63
  %2633 = xor i64 %2629, %2632
  %2634 = add i64 %2633, %2629
  %2635 = icmp eq i64 %2634, 2
  %2636 = zext i1 %2635 to i8
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2636, i8* %2637, align 1
  store %struct.Memory* %loadMem_42c90a, %struct.Memory** %MEMORY
  %loadMem_42c910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2639 = getelementptr inbounds %struct.GPR, %struct.GPR* %2638, i32 0, i32 33
  %2640 = getelementptr inbounds %struct.Reg, %struct.Reg* %2639, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %2640 to i64*
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2642 = getelementptr inbounds %struct.GPR, %struct.GPR* %2641, i32 0, i32 5
  %2643 = getelementptr inbounds %struct.Reg, %struct.Reg* %2642, i32 0, i32 0
  %RCX.i353 = bitcast %union.anon* %2643 to i64*
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2645 = getelementptr inbounds %struct.GPR, %struct.GPR* %2644, i32 0, i32 15
  %2646 = getelementptr inbounds %struct.Reg, %struct.Reg* %2645, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %2646 to i64*
  %2647 = load i64, i64* %RBP.i354
  %2648 = sub i64 %2647, 20
  %2649 = load i64, i64* %PC.i352
  %2650 = add i64 %2649, 4
  store i64 %2650, i64* %PC.i352
  %2651 = inttoptr i64 %2648 to i32*
  %2652 = load i32, i32* %2651
  %2653 = sext i32 %2652 to i64
  store i64 %2653, i64* %RCX.i353, align 8
  store %struct.Memory* %loadMem_42c910, %struct.Memory** %MEMORY
  %loadMem_42c914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 33
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %2656 to i64*
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2658 = getelementptr inbounds %struct.GPR, %struct.GPR* %2657, i32 0, i32 5
  %2659 = getelementptr inbounds %struct.Reg, %struct.Reg* %2658, i32 0, i32 0
  %RCX.i351 = bitcast %union.anon* %2659 to i64*
  %2660 = load i64, i64* %RCX.i351
  %2661 = load i64, i64* %PC.i350
  %2662 = add i64 %2661, 4
  store i64 %2662, i64* %PC.i350
  %2663 = shl i64 %2660, 3
  %2664 = icmp slt i64 %2663, 0
  %2665 = shl i64 %2663, 1
  store i64 %2665, i64* %RCX.i351, align 8
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2667 = zext i1 %2664 to i8
  store i8 %2667, i8* %2666, align 1
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2669 = trunc i64 %2665 to i32
  %2670 = and i32 %2669, 254
  %2671 = call i32 @llvm.ctpop.i32(i32 %2670)
  %2672 = trunc i32 %2671 to i8
  %2673 = and i8 %2672, 1
  %2674 = xor i8 %2673, 1
  store i8 %2674, i8* %2668, align 1
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2675, align 1
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2677 = icmp eq i64 %2665, 0
  %2678 = zext i1 %2677 to i8
  store i8 %2678, i8* %2676, align 1
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2680 = lshr i64 %2665, 63
  %2681 = trunc i64 %2680 to i8
  store i8 %2681, i8* %2679, align 1
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2682, align 1
  store %struct.Memory* %loadMem_42c914, %struct.Memory** %MEMORY
  %loadMem_42c918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 33
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %2685 to i64*
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 1
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %2688 to i64*
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2690 = getelementptr inbounds %struct.GPR, %struct.GPR* %2689, i32 0, i32 5
  %2691 = getelementptr inbounds %struct.Reg, %struct.Reg* %2690, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %2691 to i64*
  %2692 = load i64, i64* %RAX.i348
  %2693 = load i64, i64* %RCX.i349
  %2694 = load i64, i64* %PC.i347
  %2695 = add i64 %2694, 3
  store i64 %2695, i64* %PC.i347
  %2696 = add i64 %2693, %2692
  store i64 %2696, i64* %RAX.i348, align 8
  %2697 = icmp ult i64 %2696, %2692
  %2698 = icmp ult i64 %2696, %2693
  %2699 = or i1 %2697, %2698
  %2700 = zext i1 %2699 to i8
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2700, i8* %2701, align 1
  %2702 = trunc i64 %2696 to i32
  %2703 = and i32 %2702, 255
  %2704 = call i32 @llvm.ctpop.i32(i32 %2703)
  %2705 = trunc i32 %2704 to i8
  %2706 = and i8 %2705, 1
  %2707 = xor i8 %2706, 1
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2707, i8* %2708, align 1
  %2709 = xor i64 %2693, %2692
  %2710 = xor i64 %2709, %2696
  %2711 = lshr i64 %2710, 4
  %2712 = trunc i64 %2711 to i8
  %2713 = and i8 %2712, 1
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2713, i8* %2714, align 1
  %2715 = icmp eq i64 %2696, 0
  %2716 = zext i1 %2715 to i8
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2716, i8* %2717, align 1
  %2718 = lshr i64 %2696, 63
  %2719 = trunc i64 %2718 to i8
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2719, i8* %2720, align 1
  %2721 = lshr i64 %2692, 63
  %2722 = lshr i64 %2693, 63
  %2723 = xor i64 %2718, %2721
  %2724 = xor i64 %2718, %2722
  %2725 = add i64 %2723, %2724
  %2726 = icmp eq i64 %2725, 2
  %2727 = zext i1 %2726 to i8
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2727, i8* %2728, align 1
  store %struct.Memory* %loadMem_42c918, %struct.Memory** %MEMORY
  %loadMem_42c91b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2730 = getelementptr inbounds %struct.GPR, %struct.GPR* %2729, i32 0, i32 33
  %2731 = getelementptr inbounds %struct.Reg, %struct.Reg* %2730, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %2731 to i64*
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 1
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %RAX.i345 = bitcast %union.anon* %2734 to i64*
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 7
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %RDX.i346 = bitcast %union.anon* %2737 to i64*
  %2738 = load i64, i64* %RAX.i345
  %2739 = add i64 %2738, 4
  %2740 = load i64, i64* %PC.i344
  %2741 = add i64 %2740, 3
  store i64 %2741, i64* %PC.i344
  %2742 = inttoptr i64 %2739 to i32*
  %2743 = load i32, i32* %2742
  %2744 = zext i32 %2743 to i64
  store i64 %2744, i64* %RDX.i346, align 8
  store %struct.Memory* %loadMem_42c91b, %struct.Memory** %MEMORY
  %loadMem_42c91e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 33
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %2747 to i64*
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 1
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %2750 to i64*
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2752 = getelementptr inbounds %struct.GPR, %struct.GPR* %2751, i32 0, i32 15
  %2753 = getelementptr inbounds %struct.Reg, %struct.Reg* %2752, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %2753 to i64*
  %2754 = load i64, i64* %RBP.i343
  %2755 = sub i64 %2754, 8
  %2756 = load i64, i64* %PC.i341
  %2757 = add i64 %2756, 4
  store i64 %2757, i64* %PC.i341
  %2758 = inttoptr i64 %2755 to i64*
  %2759 = load i64, i64* %2758
  store i64 %2759, i64* %RAX.i342, align 8
  store %struct.Memory* %loadMem_42c91e, %struct.Memory** %MEMORY
  %loadMem_42c922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2761 = getelementptr inbounds %struct.GPR, %struct.GPR* %2760, i32 0, i32 33
  %2762 = getelementptr inbounds %struct.Reg, %struct.Reg* %2761, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %2762 to i64*
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2764 = getelementptr inbounds %struct.GPR, %struct.GPR* %2763, i32 0, i32 1
  %2765 = getelementptr inbounds %struct.Reg, %struct.Reg* %2764, i32 0, i32 0
  %RAX.i340 = bitcast %union.anon* %2765 to i64*
  %2766 = load i64, i64* %RAX.i340
  %2767 = load i64, i64* %PC.i339
  %2768 = add i64 %2767, 6
  store i64 %2768, i64* %PC.i339
  %2769 = add i64 35672, %2766
  store i64 %2769, i64* %RAX.i340, align 8
  %2770 = icmp ult i64 %2769, %2766
  %2771 = icmp ult i64 %2769, 35672
  %2772 = or i1 %2770, %2771
  %2773 = zext i1 %2772 to i8
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2773, i8* %2774, align 1
  %2775 = trunc i64 %2769 to i32
  %2776 = and i32 %2775, 255
  %2777 = call i32 @llvm.ctpop.i32(i32 %2776)
  %2778 = trunc i32 %2777 to i8
  %2779 = and i8 %2778, 1
  %2780 = xor i8 %2779, 1
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2780, i8* %2781, align 1
  %2782 = xor i64 35672, %2766
  %2783 = xor i64 %2782, %2769
  %2784 = lshr i64 %2783, 4
  %2785 = trunc i64 %2784 to i8
  %2786 = and i8 %2785, 1
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2786, i8* %2787, align 1
  %2788 = icmp eq i64 %2769, 0
  %2789 = zext i1 %2788 to i8
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2789, i8* %2790, align 1
  %2791 = lshr i64 %2769, 63
  %2792 = trunc i64 %2791 to i8
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2792, i8* %2793, align 1
  %2794 = lshr i64 %2766, 63
  %2795 = xor i64 %2791, %2794
  %2796 = add i64 %2795, %2791
  %2797 = icmp eq i64 %2796, 2
  %2798 = zext i1 %2797 to i8
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2798, i8* %2799, align 1
  store %struct.Memory* %loadMem_42c922, %struct.Memory** %MEMORY
  %loadMem_42c928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 33
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %2802 to i64*
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2804 = getelementptr inbounds %struct.GPR, %struct.GPR* %2803, i32 0, i32 9
  %2805 = getelementptr inbounds %struct.Reg, %struct.Reg* %2804, i32 0, i32 0
  %RSI.i337 = bitcast %union.anon* %2805 to i64*
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2807 = getelementptr inbounds %struct.GPR, %struct.GPR* %2806, i32 0, i32 15
  %2808 = getelementptr inbounds %struct.Reg, %struct.Reg* %2807, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %2808 to i64*
  %2809 = load i64, i64* %RBP.i338
  %2810 = sub i64 %2809, 20
  %2811 = load i64, i64* %PC.i336
  %2812 = add i64 %2811, 3
  store i64 %2812, i64* %PC.i336
  %2813 = inttoptr i64 %2810 to i32*
  %2814 = load i32, i32* %2813
  %2815 = zext i32 %2814 to i64
  store i64 %2815, i64* %RSI.i337, align 8
  store %struct.Memory* %loadMem_42c928, %struct.Memory** %MEMORY
  %loadMem_42c92b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 33
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %2818 to i64*
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2820 = getelementptr inbounds %struct.GPR, %struct.GPR* %2819, i32 0, i32 9
  %2821 = getelementptr inbounds %struct.Reg, %struct.Reg* %2820, i32 0, i32 0
  %RSI.i335 = bitcast %union.anon* %2821 to i64*
  %2822 = load i64, i64* %RSI.i335
  %2823 = load i64, i64* %PC.i334
  %2824 = add i64 %2823, 3
  store i64 %2824, i64* %PC.i334
  %2825 = trunc i64 %2822 to i32
  %2826 = sub i32 %2825, 1
  %2827 = zext i32 %2826 to i64
  store i64 %2827, i64* %RSI.i335, align 8
  %2828 = icmp ult i32 %2825, 1
  %2829 = zext i1 %2828 to i8
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2829, i8* %2830, align 1
  %2831 = and i32 %2826, 255
  %2832 = call i32 @llvm.ctpop.i32(i32 %2831)
  %2833 = trunc i32 %2832 to i8
  %2834 = and i8 %2833, 1
  %2835 = xor i8 %2834, 1
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2835, i8* %2836, align 1
  %2837 = xor i64 1, %2822
  %2838 = trunc i64 %2837 to i32
  %2839 = xor i32 %2838, %2826
  %2840 = lshr i32 %2839, 4
  %2841 = trunc i32 %2840 to i8
  %2842 = and i8 %2841, 1
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2842, i8* %2843, align 1
  %2844 = icmp eq i32 %2826, 0
  %2845 = zext i1 %2844 to i8
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2845, i8* %2846, align 1
  %2847 = lshr i32 %2826, 31
  %2848 = trunc i32 %2847 to i8
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2848, i8* %2849, align 1
  %2850 = lshr i32 %2825, 31
  %2851 = xor i32 %2847, %2850
  %2852 = add i32 %2851, %2850
  %2853 = icmp eq i32 %2852, 2
  %2854 = zext i1 %2853 to i8
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2854, i8* %2855, align 1
  store %struct.Memory* %loadMem_42c92b, %struct.Memory** %MEMORY
  %loadMem_42c92e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 33
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %2858 to i64*
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 9
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %ESI.i332 = bitcast %union.anon* %2861 to i32*
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2863 = getelementptr inbounds %struct.GPR, %struct.GPR* %2862, i32 0, i32 5
  %2864 = getelementptr inbounds %struct.Reg, %struct.Reg* %2863, i32 0, i32 0
  %RCX.i333 = bitcast %union.anon* %2864 to i64*
  %2865 = load i32, i32* %ESI.i332
  %2866 = zext i32 %2865 to i64
  %2867 = load i64, i64* %PC.i331
  %2868 = add i64 %2867, 3
  store i64 %2868, i64* %PC.i331
  %2869 = shl i64 %2866, 32
  %2870 = ashr exact i64 %2869, 32
  store i64 %2870, i64* %RCX.i333, align 8
  store %struct.Memory* %loadMem_42c92e, %struct.Memory** %MEMORY
  %loadMem_42c931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 33
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %2873 to i64*
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2875 = getelementptr inbounds %struct.GPR, %struct.GPR* %2874, i32 0, i32 5
  %2876 = getelementptr inbounds %struct.Reg, %struct.Reg* %2875, i32 0, i32 0
  %RCX.i330 = bitcast %union.anon* %2876 to i64*
  %2877 = load i64, i64* %RCX.i330
  %2878 = load i64, i64* %PC.i329
  %2879 = add i64 %2878, 4
  store i64 %2879, i64* %PC.i329
  %2880 = shl i64 %2877, 3
  %2881 = icmp slt i64 %2880, 0
  %2882 = shl i64 %2880, 1
  store i64 %2882, i64* %RCX.i330, align 8
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2884 = zext i1 %2881 to i8
  store i8 %2884, i8* %2883, align 1
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2886 = trunc i64 %2882 to i32
  %2887 = and i32 %2886, 254
  %2888 = call i32 @llvm.ctpop.i32(i32 %2887)
  %2889 = trunc i32 %2888 to i8
  %2890 = and i8 %2889, 1
  %2891 = xor i8 %2890, 1
  store i8 %2891, i8* %2885, align 1
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2892, align 1
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2894 = icmp eq i64 %2882, 0
  %2895 = zext i1 %2894 to i8
  store i8 %2895, i8* %2893, align 1
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2897 = lshr i64 %2882, 63
  %2898 = trunc i64 %2897 to i8
  store i8 %2898, i8* %2896, align 1
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2899, align 1
  store %struct.Memory* %loadMem_42c931, %struct.Memory** %MEMORY
  %loadMem_42c935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 33
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %2902 to i64*
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 1
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %RAX.i327 = bitcast %union.anon* %2905 to i64*
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2907 = getelementptr inbounds %struct.GPR, %struct.GPR* %2906, i32 0, i32 5
  %2908 = getelementptr inbounds %struct.Reg, %struct.Reg* %2907, i32 0, i32 0
  %RCX.i328 = bitcast %union.anon* %2908 to i64*
  %2909 = load i64, i64* %RAX.i327
  %2910 = load i64, i64* %RCX.i328
  %2911 = load i64, i64* %PC.i326
  %2912 = add i64 %2911, 3
  store i64 %2912, i64* %PC.i326
  %2913 = add i64 %2910, %2909
  store i64 %2913, i64* %RAX.i327, align 8
  %2914 = icmp ult i64 %2913, %2909
  %2915 = icmp ult i64 %2913, %2910
  %2916 = or i1 %2914, %2915
  %2917 = zext i1 %2916 to i8
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2917, i8* %2918, align 1
  %2919 = trunc i64 %2913 to i32
  %2920 = and i32 %2919, 255
  %2921 = call i32 @llvm.ctpop.i32(i32 %2920)
  %2922 = trunc i32 %2921 to i8
  %2923 = and i8 %2922, 1
  %2924 = xor i8 %2923, 1
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2924, i8* %2925, align 1
  %2926 = xor i64 %2910, %2909
  %2927 = xor i64 %2926, %2913
  %2928 = lshr i64 %2927, 4
  %2929 = trunc i64 %2928 to i8
  %2930 = and i8 %2929, 1
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2930, i8* %2931, align 1
  %2932 = icmp eq i64 %2913, 0
  %2933 = zext i1 %2932 to i8
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2933, i8* %2934, align 1
  %2935 = lshr i64 %2913, 63
  %2936 = trunc i64 %2935 to i8
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2936, i8* %2937, align 1
  %2938 = lshr i64 %2909, 63
  %2939 = lshr i64 %2910, 63
  %2940 = xor i64 %2935, %2938
  %2941 = xor i64 %2935, %2939
  %2942 = add i64 %2940, %2941
  %2943 = icmp eq i64 %2942, 2
  %2944 = zext i1 %2943 to i8
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2944, i8* %2945, align 1
  store %struct.Memory* %loadMem_42c935, %struct.Memory** %MEMORY
  %loadMem_42c938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 33
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %2948 to i64*
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2950 = getelementptr inbounds %struct.GPR, %struct.GPR* %2949, i32 0, i32 7
  %2951 = getelementptr inbounds %struct.Reg, %struct.Reg* %2950, i32 0, i32 0
  %EDX.i324 = bitcast %union.anon* %2951 to i32*
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 1
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %2954 to i64*
  %2955 = load i32, i32* %EDX.i324
  %2956 = zext i32 %2955 to i64
  %2957 = load i64, i64* %RAX.i325
  %2958 = add i64 %2957, 4
  %2959 = load i64, i64* %PC.i323
  %2960 = add i64 %2959, 3
  store i64 %2960, i64* %PC.i323
  %2961 = inttoptr i64 %2958 to i32*
  %2962 = load i32, i32* %2961
  %2963 = sub i32 %2955, %2962
  %2964 = icmp ult i32 %2955, %2962
  %2965 = zext i1 %2964 to i8
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2965, i8* %2966, align 1
  %2967 = and i32 %2963, 255
  %2968 = call i32 @llvm.ctpop.i32(i32 %2967)
  %2969 = trunc i32 %2968 to i8
  %2970 = and i8 %2969, 1
  %2971 = xor i8 %2970, 1
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2971, i8* %2972, align 1
  %2973 = xor i32 %2962, %2955
  %2974 = xor i32 %2973, %2963
  %2975 = lshr i32 %2974, 4
  %2976 = trunc i32 %2975 to i8
  %2977 = and i8 %2976, 1
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2977, i8* %2978, align 1
  %2979 = icmp eq i32 %2963, 0
  %2980 = zext i1 %2979 to i8
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2980, i8* %2981, align 1
  %2982 = lshr i32 %2963, 31
  %2983 = trunc i32 %2982 to i8
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2983, i8* %2984, align 1
  %2985 = lshr i32 %2955, 31
  %2986 = lshr i32 %2962, 31
  %2987 = xor i32 %2986, %2985
  %2988 = xor i32 %2982, %2985
  %2989 = add i32 %2988, %2987
  %2990 = icmp eq i32 %2989, 2
  %2991 = zext i1 %2990 to i8
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2991, i8* %2992, align 1
  store %struct.Memory* %loadMem_42c938, %struct.Memory** %MEMORY
  %loadMem_42c93b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 33
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %2995 to i64*
  %2996 = load i64, i64* %PC.i322
  %2997 = add i64 %2996, 42
  %2998 = load i64, i64* %PC.i322
  %2999 = add i64 %2998, 6
  %3000 = load i64, i64* %PC.i322
  %3001 = add i64 %3000, 6
  store i64 %3001, i64* %PC.i322
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3003 = load i8, i8* %3002, align 1
  store i8 %3003, i8* %BRANCH_TAKEN, align 1
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3005 = icmp ne i8 %3003, 0
  %3006 = select i1 %3005, i64 %2997, i64 %2999
  store i64 %3006, i64* %3004, align 8
  store %struct.Memory* %loadMem_42c93b, %struct.Memory** %MEMORY
  %loadBr_42c93b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c93b = icmp eq i8 %loadBr_42c93b, 1
  br i1 %cmpBr_42c93b, label %block_.L_42c965, label %block_.L_42c941

block_.L_42c941:                                  ; preds = %block_42c906, %block_.L_42c8fa
  %loadMem_42c941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 33
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %3009 to i64*
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 1
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %3012 to i64*
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3014 = getelementptr inbounds %struct.GPR, %struct.GPR* %3013, i32 0, i32 15
  %3015 = getelementptr inbounds %struct.Reg, %struct.Reg* %3014, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %3015 to i64*
  %3016 = load i64, i64* %RBP.i321
  %3017 = sub i64 %3016, 8
  %3018 = load i64, i64* %PC.i319
  %3019 = add i64 %3018, 4
  store i64 %3019, i64* %PC.i319
  %3020 = inttoptr i64 %3017 to i64*
  %3021 = load i64, i64* %3020
  store i64 %3021, i64* %RAX.i320, align 8
  store %struct.Memory* %loadMem_42c941, %struct.Memory** %MEMORY
  %loadMem_42c945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 33
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %3024 to i64*
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 1
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %3027 to i64*
  %3028 = load i64, i64* %RAX.i318
  %3029 = load i64, i64* %PC.i317
  %3030 = add i64 %3029, 6
  store i64 %3030, i64* %PC.i317
  %3031 = add i64 35672, %3028
  store i64 %3031, i64* %RAX.i318, align 8
  %3032 = icmp ult i64 %3031, %3028
  %3033 = icmp ult i64 %3031, 35672
  %3034 = or i1 %3032, %3033
  %3035 = zext i1 %3034 to i8
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3035, i8* %3036, align 1
  %3037 = trunc i64 %3031 to i32
  %3038 = and i32 %3037, 255
  %3039 = call i32 @llvm.ctpop.i32(i32 %3038)
  %3040 = trunc i32 %3039 to i8
  %3041 = and i8 %3040, 1
  %3042 = xor i8 %3041, 1
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3042, i8* %3043, align 1
  %3044 = xor i64 35672, %3028
  %3045 = xor i64 %3044, %3031
  %3046 = lshr i64 %3045, 4
  %3047 = trunc i64 %3046 to i8
  %3048 = and i8 %3047, 1
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3048, i8* %3049, align 1
  %3050 = icmp eq i64 %3031, 0
  %3051 = zext i1 %3050 to i8
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3051, i8* %3052, align 1
  %3053 = lshr i64 %3031, 63
  %3054 = trunc i64 %3053 to i8
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3054, i8* %3055, align 1
  %3056 = lshr i64 %3028, 63
  %3057 = xor i64 %3053, %3056
  %3058 = add i64 %3057, %3053
  %3059 = icmp eq i64 %3058, 2
  %3060 = zext i1 %3059 to i8
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3060, i8* %3061, align 1
  store %struct.Memory* %loadMem_42c945, %struct.Memory** %MEMORY
  %loadMem_42c94b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3063 = getelementptr inbounds %struct.GPR, %struct.GPR* %3062, i32 0, i32 33
  %3064 = getelementptr inbounds %struct.Reg, %struct.Reg* %3063, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %3064 to i64*
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 5
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %RCX.i315 = bitcast %union.anon* %3067 to i64*
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 15
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %3070 to i64*
  %3071 = load i64, i64* %RBP.i316
  %3072 = sub i64 %3071, 20
  %3073 = load i64, i64* %PC.i314
  %3074 = add i64 %3073, 4
  store i64 %3074, i64* %PC.i314
  %3075 = inttoptr i64 %3072 to i32*
  %3076 = load i32, i32* %3075
  %3077 = sext i32 %3076 to i64
  store i64 %3077, i64* %RCX.i315, align 8
  store %struct.Memory* %loadMem_42c94b, %struct.Memory** %MEMORY
  %loadMem_42c94f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3079 = getelementptr inbounds %struct.GPR, %struct.GPR* %3078, i32 0, i32 33
  %3080 = getelementptr inbounds %struct.Reg, %struct.Reg* %3079, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %3080 to i64*
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3082 = getelementptr inbounds %struct.GPR, %struct.GPR* %3081, i32 0, i32 5
  %3083 = getelementptr inbounds %struct.Reg, %struct.Reg* %3082, i32 0, i32 0
  %RCX.i313 = bitcast %union.anon* %3083 to i64*
  %3084 = load i64, i64* %RCX.i313
  %3085 = load i64, i64* %PC.i312
  %3086 = add i64 %3085, 4
  store i64 %3086, i64* %PC.i312
  %3087 = shl i64 %3084, 3
  %3088 = icmp slt i64 %3087, 0
  %3089 = shl i64 %3087, 1
  store i64 %3089, i64* %RCX.i313, align 8
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3091 = zext i1 %3088 to i8
  store i8 %3091, i8* %3090, align 1
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3093 = trunc i64 %3089 to i32
  %3094 = and i32 %3093, 254
  %3095 = call i32 @llvm.ctpop.i32(i32 %3094)
  %3096 = trunc i32 %3095 to i8
  %3097 = and i8 %3096, 1
  %3098 = xor i8 %3097, 1
  store i8 %3098, i8* %3092, align 1
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3099, align 1
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3101 = icmp eq i64 %3089, 0
  %3102 = zext i1 %3101 to i8
  store i8 %3102, i8* %3100, align 1
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3104 = lshr i64 %3089, 63
  %3105 = trunc i64 %3104 to i8
  store i8 %3105, i8* %3103, align 1
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3106, align 1
  store %struct.Memory* %loadMem_42c94f, %struct.Memory** %MEMORY
  %loadMem_42c953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 33
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %3109 to i64*
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 1
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %3112 to i64*
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 5
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %RCX.i311 = bitcast %union.anon* %3115 to i64*
  %3116 = load i64, i64* %RAX.i310
  %3117 = load i64, i64* %RCX.i311
  %3118 = load i64, i64* %PC.i309
  %3119 = add i64 %3118, 3
  store i64 %3119, i64* %PC.i309
  %3120 = add i64 %3117, %3116
  store i64 %3120, i64* %RAX.i310, align 8
  %3121 = icmp ult i64 %3120, %3116
  %3122 = icmp ult i64 %3120, %3117
  %3123 = or i1 %3121, %3122
  %3124 = zext i1 %3123 to i8
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3124, i8* %3125, align 1
  %3126 = trunc i64 %3120 to i32
  %3127 = and i32 %3126, 255
  %3128 = call i32 @llvm.ctpop.i32(i32 %3127)
  %3129 = trunc i32 %3128 to i8
  %3130 = and i8 %3129, 1
  %3131 = xor i8 %3130, 1
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3131, i8* %3132, align 1
  %3133 = xor i64 %3117, %3116
  %3134 = xor i64 %3133, %3120
  %3135 = lshr i64 %3134, 4
  %3136 = trunc i64 %3135 to i8
  %3137 = and i8 %3136, 1
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3137, i8* %3138, align 1
  %3139 = icmp eq i64 %3120, 0
  %3140 = zext i1 %3139 to i8
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3140, i8* %3141, align 1
  %3142 = lshr i64 %3120, 63
  %3143 = trunc i64 %3142 to i8
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3143, i8* %3144, align 1
  %3145 = lshr i64 %3116, 63
  %3146 = lshr i64 %3117, 63
  %3147 = xor i64 %3142, %3145
  %3148 = xor i64 %3142, %3146
  %3149 = add i64 %3147, %3148
  %3150 = icmp eq i64 %3149, 2
  %3151 = zext i1 %3150 to i8
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3151, i8* %3152, align 1
  store %struct.Memory* %loadMem_42c953, %struct.Memory** %MEMORY
  %loadMem_42c956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3154 = getelementptr inbounds %struct.GPR, %struct.GPR* %3153, i32 0, i32 33
  %3155 = getelementptr inbounds %struct.Reg, %struct.Reg* %3154, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %3155 to i64*
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3157 = getelementptr inbounds %struct.GPR, %struct.GPR* %3156, i32 0, i32 1
  %3158 = getelementptr inbounds %struct.Reg, %struct.Reg* %3157, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %3158 to i64*
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3160 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3159, i64 0, i64 0
  %YMM0.i308 = bitcast %union.VectorReg* %3160 to %"class.std::bitset"*
  %3161 = bitcast %"class.std::bitset"* %YMM0.i308 to i8*
  %3162 = load i64, i64* %RAX.i307
  %3163 = add i64 %3162, 8
  %3164 = load i64, i64* %PC.i306
  %3165 = add i64 %3164, 5
  store i64 %3165, i64* %PC.i306
  %3166 = inttoptr i64 %3163 to float*
  %3167 = load float, float* %3166
  %3168 = bitcast i8* %3161 to float*
  store float %3167, float* %3168, align 1
  %3169 = getelementptr inbounds i8, i8* %3161, i64 4
  %3170 = bitcast i8* %3169 to float*
  store float 0.000000e+00, float* %3170, align 1
  %3171 = getelementptr inbounds i8, i8* %3161, i64 8
  %3172 = bitcast i8* %3171 to float*
  store float 0.000000e+00, float* %3172, align 1
  %3173 = getelementptr inbounds i8, i8* %3161, i64 12
  %3174 = bitcast i8* %3173 to float*
  store float 0.000000e+00, float* %3174, align 1
  store %struct.Memory* %loadMem_42c956, %struct.Memory** %MEMORY
  %loadMem_42c95b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3176 = getelementptr inbounds %struct.GPR, %struct.GPR* %3175, i32 0, i32 33
  %3177 = getelementptr inbounds %struct.Reg, %struct.Reg* %3176, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %3177 to i64*
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 15
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %3180 to i64*
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3182 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3181, i64 0, i64 0
  %YMM0.i305 = bitcast %union.VectorReg* %3182 to %"class.std::bitset"*
  %3183 = bitcast %"class.std::bitset"* %YMM0.i305 to i8*
  %3184 = bitcast %"class.std::bitset"* %YMM0.i305 to i8*
  %3185 = load i64, i64* %RBP.i304
  %3186 = sub i64 %3185, 28
  %3187 = load i64, i64* %PC.i303
  %3188 = add i64 %3187, 5
  store i64 %3188, i64* %PC.i303
  %3189 = bitcast i8* %3184 to <2 x float>*
  %3190 = load <2 x float>, <2 x float>* %3189, align 1
  %3191 = getelementptr inbounds i8, i8* %3184, i64 8
  %3192 = bitcast i8* %3191 to <2 x i32>*
  %3193 = load <2 x i32>, <2 x i32>* %3192, align 1
  %3194 = inttoptr i64 %3186 to float*
  %3195 = load float, float* %3194
  %3196 = extractelement <2 x float> %3190, i32 0
  %3197 = fadd float %3196, %3195
  %3198 = bitcast i8* %3183 to float*
  store float %3197, float* %3198, align 1
  %3199 = bitcast <2 x float> %3190 to <2 x i32>
  %3200 = extractelement <2 x i32> %3199, i32 1
  %3201 = getelementptr inbounds i8, i8* %3183, i64 4
  %3202 = bitcast i8* %3201 to i32*
  store i32 %3200, i32* %3202, align 1
  %3203 = extractelement <2 x i32> %3193, i32 0
  %3204 = getelementptr inbounds i8, i8* %3183, i64 8
  %3205 = bitcast i8* %3204 to i32*
  store i32 %3203, i32* %3205, align 1
  %3206 = extractelement <2 x i32> %3193, i32 1
  %3207 = getelementptr inbounds i8, i8* %3183, i64 12
  %3208 = bitcast i8* %3207 to i32*
  store i32 %3206, i32* %3208, align 1
  store %struct.Memory* %loadMem_42c95b, %struct.Memory** %MEMORY
  %loadMem_42c960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3210 = getelementptr inbounds %struct.GPR, %struct.GPR* %3209, i32 0, i32 33
  %3211 = getelementptr inbounds %struct.Reg, %struct.Reg* %3210, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %3211 to i64*
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3213 = getelementptr inbounds %struct.GPR, %struct.GPR* %3212, i32 0, i32 15
  %3214 = getelementptr inbounds %struct.Reg, %struct.Reg* %3213, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %3214 to i64*
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3216 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3215, i64 0, i64 0
  %XMM0.i302 = bitcast %union.VectorReg* %3216 to %union.vec128_t*
  %3217 = load i64, i64* %RBP.i301
  %3218 = sub i64 %3217, 28
  %3219 = bitcast %union.vec128_t* %XMM0.i302 to i8*
  %3220 = load i64, i64* %PC.i300
  %3221 = add i64 %3220, 5
  store i64 %3221, i64* %PC.i300
  %3222 = bitcast i8* %3219 to <2 x float>*
  %3223 = load <2 x float>, <2 x float>* %3222, align 1
  %3224 = extractelement <2 x float> %3223, i32 0
  %3225 = inttoptr i64 %3218 to float*
  store float %3224, float* %3225
  store %struct.Memory* %loadMem_42c960, %struct.Memory** %MEMORY
  br label %block_.L_42c965

block_.L_42c965:                                  ; preds = %block_.L_42c941, %block_42c906
  %loadMem_42c965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3227 = getelementptr inbounds %struct.GPR, %struct.GPR* %3226, i32 0, i32 33
  %3228 = getelementptr inbounds %struct.Reg, %struct.Reg* %3227, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %3228 to i64*
  %3229 = load i64, i64* %PC.i299
  %3230 = add i64 %3229, 5
  %3231 = load i64, i64* %PC.i299
  %3232 = add i64 %3231, 5
  store i64 %3232, i64* %PC.i299
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3230, i64* %3233, align 8
  store %struct.Memory* %loadMem_42c965, %struct.Memory** %MEMORY
  br label %block_.L_42c96a

block_.L_42c96a:                                  ; preds = %block_.L_42c965
  %loadMem_42c96a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3235 = getelementptr inbounds %struct.GPR, %struct.GPR* %3234, i32 0, i32 33
  %3236 = getelementptr inbounds %struct.Reg, %struct.Reg* %3235, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %3236 to i64*
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 1
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %3239 to i64*
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 15
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %3242 to i64*
  %3243 = load i64, i64* %RBP.i298
  %3244 = sub i64 %3243, 20
  %3245 = load i64, i64* %PC.i296
  %3246 = add i64 %3245, 3
  store i64 %3246, i64* %PC.i296
  %3247 = inttoptr i64 %3244 to i32*
  %3248 = load i32, i32* %3247
  %3249 = zext i32 %3248 to i64
  store i64 %3249, i64* %RAX.i297, align 8
  store %struct.Memory* %loadMem_42c96a, %struct.Memory** %MEMORY
  %loadMem_42c96d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3251 = getelementptr inbounds %struct.GPR, %struct.GPR* %3250, i32 0, i32 33
  %3252 = getelementptr inbounds %struct.Reg, %struct.Reg* %3251, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %3252 to i64*
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3254 = getelementptr inbounds %struct.GPR, %struct.GPR* %3253, i32 0, i32 1
  %3255 = getelementptr inbounds %struct.Reg, %struct.Reg* %3254, i32 0, i32 0
  %RAX.i295 = bitcast %union.anon* %3255 to i64*
  %3256 = load i64, i64* %RAX.i295
  %3257 = load i64, i64* %PC.i294
  %3258 = add i64 %3257, 3
  store i64 %3258, i64* %PC.i294
  %3259 = trunc i64 %3256 to i32
  %3260 = add i32 1, %3259
  %3261 = zext i32 %3260 to i64
  store i64 %3261, i64* %RAX.i295, align 8
  %3262 = icmp ult i32 %3260, %3259
  %3263 = icmp ult i32 %3260, 1
  %3264 = or i1 %3262, %3263
  %3265 = zext i1 %3264 to i8
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3265, i8* %3266, align 1
  %3267 = and i32 %3260, 255
  %3268 = call i32 @llvm.ctpop.i32(i32 %3267)
  %3269 = trunc i32 %3268 to i8
  %3270 = and i8 %3269, 1
  %3271 = xor i8 %3270, 1
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3271, i8* %3272, align 1
  %3273 = xor i64 1, %3256
  %3274 = trunc i64 %3273 to i32
  %3275 = xor i32 %3274, %3260
  %3276 = lshr i32 %3275, 4
  %3277 = trunc i32 %3276 to i8
  %3278 = and i8 %3277, 1
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3278, i8* %3279, align 1
  %3280 = icmp eq i32 %3260, 0
  %3281 = zext i1 %3280 to i8
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3281, i8* %3282, align 1
  %3283 = lshr i32 %3260, 31
  %3284 = trunc i32 %3283 to i8
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3284, i8* %3285, align 1
  %3286 = lshr i32 %3259, 31
  %3287 = xor i32 %3283, %3286
  %3288 = add i32 %3287, %3283
  %3289 = icmp eq i32 %3288, 2
  %3290 = zext i1 %3289 to i8
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3290, i8* %3291, align 1
  store %struct.Memory* %loadMem_42c96d, %struct.Memory** %MEMORY
  %loadMem_42c970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3293 = getelementptr inbounds %struct.GPR, %struct.GPR* %3292, i32 0, i32 33
  %3294 = getelementptr inbounds %struct.Reg, %struct.Reg* %3293, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %3294 to i64*
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3296 = getelementptr inbounds %struct.GPR, %struct.GPR* %3295, i32 0, i32 1
  %3297 = getelementptr inbounds %struct.Reg, %struct.Reg* %3296, i32 0, i32 0
  %EAX.i292 = bitcast %union.anon* %3297 to i32*
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3299 = getelementptr inbounds %struct.GPR, %struct.GPR* %3298, i32 0, i32 15
  %3300 = getelementptr inbounds %struct.Reg, %struct.Reg* %3299, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %3300 to i64*
  %3301 = load i64, i64* %RBP.i293
  %3302 = sub i64 %3301, 20
  %3303 = load i32, i32* %EAX.i292
  %3304 = zext i32 %3303 to i64
  %3305 = load i64, i64* %PC.i291
  %3306 = add i64 %3305, 3
  store i64 %3306, i64* %PC.i291
  %3307 = inttoptr i64 %3302 to i32*
  store i32 %3303, i32* %3307
  store %struct.Memory* %loadMem_42c970, %struct.Memory** %MEMORY
  %loadMem_42c973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 33
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %3310 to i64*
  %3311 = load i64, i64* %PC.i290
  %3312 = add i64 %3311, -197
  %3313 = load i64, i64* %PC.i290
  %3314 = add i64 %3313, 5
  store i64 %3314, i64* %PC.i290
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3312, i64* %3315, align 8
  store %struct.Memory* %loadMem_42c973, %struct.Memory** %MEMORY
  br label %block_.L_42c8ae

block_.L_42c978:                                  ; preds = %block_42c8f5
  %loadMem_42c978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3317 = getelementptr inbounds %struct.GPR, %struct.GPR* %3316, i32 0, i32 33
  %3318 = getelementptr inbounds %struct.Reg, %struct.Reg* %3317, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %3318 to i64*
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3320 = getelementptr inbounds %struct.GPR, %struct.GPR* %3319, i32 0, i32 1
  %3321 = getelementptr inbounds %struct.Reg, %struct.Reg* %3320, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %3321 to i64*
  %3322 = load i64, i64* %PC.i288
  %3323 = add i64 %3322, 10
  store i64 %3323, i64* %PC.i288
  store i64 ptrtoint (%G__0xb72714_type* @G__0xb72714 to i64), i64* %RAX.i289, align 8
  store %struct.Memory* %loadMem_42c978, %struct.Memory** %MEMORY
  %loadMem_42c982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 33
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %3326 to i64*
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 1
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %3329 to i64*
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 15
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %3332 to i64*
  %3333 = load i64, i64* %RBP.i287
  %3334 = sub i64 %3333, 8
  %3335 = load i64, i64* %RAX.i286
  %3336 = load i64, i64* %PC.i285
  %3337 = add i64 %3336, 4
  store i64 %3337, i64* %PC.i285
  %3338 = inttoptr i64 %3334 to i64*
  %3339 = load i64, i64* %3338
  %3340 = sub i64 %3339, %3335
  %3341 = icmp ult i64 %3339, %3335
  %3342 = zext i1 %3341 to i8
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3342, i8* %3343, align 1
  %3344 = trunc i64 %3340 to i32
  %3345 = and i32 %3344, 255
  %3346 = call i32 @llvm.ctpop.i32(i32 %3345)
  %3347 = trunc i32 %3346 to i8
  %3348 = and i8 %3347, 1
  %3349 = xor i8 %3348, 1
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3349, i8* %3350, align 1
  %3351 = xor i64 %3339, %3335
  %3352 = xor i64 %3351, %3340
  %3353 = lshr i64 %3352, 4
  %3354 = trunc i64 %3353 to i8
  %3355 = and i8 %3354, 1
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3355, i8* %3356, align 1
  %3357 = icmp eq i64 %3340, 0
  %3358 = zext i1 %3357 to i8
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3358, i8* %3359, align 1
  %3360 = lshr i64 %3340, 63
  %3361 = trunc i64 %3360 to i8
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3361, i8* %3362, align 1
  %3363 = lshr i64 %3339, 63
  %3364 = lshr i64 %3335, 63
  %3365 = xor i64 %3363, %3364
  %3366 = xor i64 %3360, %3363
  %3367 = add i64 %3366, %3365
  %3368 = icmp eq i64 %3367, 2
  %3369 = zext i1 %3368 to i8
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3369, i8* %3370, align 1
  store %struct.Memory* %loadMem_42c982, %struct.Memory** %MEMORY
  %loadMem_42c986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3372 = getelementptr inbounds %struct.GPR, %struct.GPR* %3371, i32 0, i32 33
  %3373 = getelementptr inbounds %struct.Reg, %struct.Reg* %3372, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %3373 to i64*
  %3374 = load i64, i64* %PC.i284
  %3375 = add i64 %3374, 21
  %3376 = load i64, i64* %PC.i284
  %3377 = add i64 %3376, 6
  %3378 = load i64, i64* %PC.i284
  %3379 = add i64 %3378, 6
  store i64 %3379, i64* %PC.i284
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3381 = load i8, i8* %3380, align 1
  %3382 = icmp eq i8 %3381, 0
  %3383 = zext i1 %3382 to i8
  store i8 %3383, i8* %BRANCH_TAKEN, align 1
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3385 = select i1 %3382, i64 %3375, i64 %3377
  store i64 %3385, i64* %3384, align 8
  store %struct.Memory* %loadMem_42c986, %struct.Memory** %MEMORY
  %loadBr_42c986 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c986 = icmp eq i8 %loadBr_42c986, 1
  br i1 %cmpBr_42c986, label %block_.L_42c99b, label %block_42c98c

block_42c98c:                                     ; preds = %block_.L_42c978
  %loadMem_42c98c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 33
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %3388 to i64*
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 15
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %3391 to i64*
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3393 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3392, i64 0, i64 0
  %YMM0.i283 = bitcast %union.VectorReg* %3393 to %"class.std::bitset"*
  %3394 = bitcast %"class.std::bitset"* %YMM0.i283 to i8*
  %3395 = load i64, i64* %RBP.i282
  %3396 = sub i64 %3395, 36
  %3397 = load i64, i64* %PC.i281
  %3398 = add i64 %3397, 5
  store i64 %3398, i64* %PC.i281
  %3399 = inttoptr i64 %3396 to float*
  %3400 = load float, float* %3399
  %3401 = bitcast i8* %3394 to float*
  store float %3400, float* %3401, align 1
  %3402 = getelementptr inbounds i8, i8* %3394, i64 4
  %3403 = bitcast i8* %3402 to float*
  store float 0.000000e+00, float* %3403, align 1
  %3404 = getelementptr inbounds i8, i8* %3394, i64 8
  %3405 = bitcast i8* %3404 to float*
  store float 0.000000e+00, float* %3405, align 1
  %3406 = getelementptr inbounds i8, i8* %3394, i64 12
  %3407 = bitcast i8* %3406 to float*
  store float 0.000000e+00, float* %3407, align 1
  store %struct.Memory* %loadMem_42c98c, %struct.Memory** %MEMORY
  %loadMem_42c991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 33
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %3410 to i64*
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 15
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %3413 to i64*
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3415 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3414, i64 0, i64 0
  %XMM0.i280 = bitcast %union.VectorReg* %3415 to %union.vec128_t*
  %3416 = load i64, i64* %RBP.i279
  %3417 = sub i64 %3416, 40
  %3418 = bitcast %union.vec128_t* %XMM0.i280 to i8*
  %3419 = load i64, i64* %PC.i278
  %3420 = add i64 %3419, 5
  store i64 %3420, i64* %PC.i278
  %3421 = bitcast i8* %3418 to <2 x float>*
  %3422 = load <2 x float>, <2 x float>* %3421, align 1
  %3423 = extractelement <2 x float> %3422, i32 0
  %3424 = inttoptr i64 %3417 to float*
  store float %3423, float* %3424
  store %struct.Memory* %loadMem_42c991, %struct.Memory** %MEMORY
  %loadMem_42c996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3426 = getelementptr inbounds %struct.GPR, %struct.GPR* %3425, i32 0, i32 33
  %3427 = getelementptr inbounds %struct.Reg, %struct.Reg* %3426, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %3427 to i64*
  %3428 = load i64, i64* %PC.i277
  %3429 = add i64 %3428, 31
  %3430 = load i64, i64* %PC.i277
  %3431 = add i64 %3430, 5
  store i64 %3431, i64* %PC.i277
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3429, i64* %3432, align 8
  store %struct.Memory* %loadMem_42c996, %struct.Memory** %MEMORY
  br label %block_.L_42c9b5

block_.L_42c99b:                                  ; preds = %block_.L_42c978
  %loadMem_42c99b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3434 = getelementptr inbounds %struct.GPR, %struct.GPR* %3433, i32 0, i32 33
  %3435 = getelementptr inbounds %struct.Reg, %struct.Reg* %3434, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %3435 to i64*
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3437 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3436, i64 0, i64 0
  %YMM0.i276 = bitcast %union.VectorReg* %3437 to %"class.std::bitset"*
  %3438 = bitcast %"class.std::bitset"* %YMM0.i276 to i8*
  %3439 = load i64, i64* %PC.i275
  %3440 = add i64 %3439, ptrtoint (%G_0xb667d__rip__type* @G_0xb667d__rip_ to i64)
  %3441 = load i64, i64* %PC.i275
  %3442 = add i64 %3441, 8
  store i64 %3442, i64* %PC.i275
  %3443 = inttoptr i64 %3440 to double*
  %3444 = load double, double* %3443
  %3445 = bitcast i8* %3438 to double*
  store double %3444, double* %3445, align 1
  %3446 = getelementptr inbounds i8, i8* %3438, i64 8
  %3447 = bitcast i8* %3446 to double*
  store double 0.000000e+00, double* %3447, align 1
  store %struct.Memory* %loadMem_42c99b, %struct.Memory** %MEMORY
  %loadMem_42c9a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 33
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %3450 to i64*
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 15
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %3453 to i64*
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3455 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3454, i64 0, i64 1
  %YMM1.i274 = bitcast %union.VectorReg* %3455 to %"class.std::bitset"*
  %3456 = bitcast %"class.std::bitset"* %YMM1.i274 to i8*
  %3457 = load i64, i64* %RBP.i273
  %3458 = sub i64 %3457, 36
  %3459 = load i64, i64* %PC.i272
  %3460 = add i64 %3459, 5
  store i64 %3460, i64* %PC.i272
  %3461 = inttoptr i64 %3458 to float*
  %3462 = load float, float* %3461
  %3463 = fpext float %3462 to double
  %3464 = bitcast i8* %3456 to double*
  store double %3463, double* %3464, align 1
  store %struct.Memory* %loadMem_42c9a3, %struct.Memory** %MEMORY
  %loadMem_42c9a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3466 = getelementptr inbounds %struct.GPR, %struct.GPR* %3465, i32 0, i32 33
  %3467 = getelementptr inbounds %struct.Reg, %struct.Reg* %3466, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %3467 to i64*
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3469 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3468, i64 0, i64 0
  %YMM0.i271 = bitcast %union.VectorReg* %3469 to %"class.std::bitset"*
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3471 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3470, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %3471 to %union.vec128_t*
  %3472 = bitcast %"class.std::bitset"* %YMM0.i271 to i8*
  %3473 = bitcast %"class.std::bitset"* %YMM0.i271 to i8*
  %3474 = bitcast %union.vec128_t* %XMM1.i to i8*
  %3475 = load i64, i64* %PC.i270
  %3476 = add i64 %3475, 4
  store i64 %3476, i64* %PC.i270
  %3477 = bitcast i8* %3473 to double*
  %3478 = load double, double* %3477, align 1
  %3479 = getelementptr inbounds i8, i8* %3473, i64 8
  %3480 = bitcast i8* %3479 to i64*
  %3481 = load i64, i64* %3480, align 1
  %3482 = bitcast i8* %3474 to double*
  %3483 = load double, double* %3482, align 1
  %3484 = fmul double %3478, %3483
  %3485 = bitcast i8* %3472 to double*
  store double %3484, double* %3485, align 1
  %3486 = getelementptr inbounds i8, i8* %3472, i64 8
  %3487 = bitcast i8* %3486 to i64*
  store i64 %3481, i64* %3487, align 1
  store %struct.Memory* %loadMem_42c9a8, %struct.Memory** %MEMORY
  %loadMem_42c9ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3489 = getelementptr inbounds %struct.GPR, %struct.GPR* %3488, i32 0, i32 33
  %3490 = getelementptr inbounds %struct.Reg, %struct.Reg* %3489, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %3490 to i64*
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3492 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3491, i64 0, i64 0
  %YMM0.i268 = bitcast %union.VectorReg* %3492 to %"class.std::bitset"*
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3494 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3493, i64 0, i64 0
  %XMM0.i269 = bitcast %union.VectorReg* %3494 to %union.vec128_t*
  %3495 = bitcast %"class.std::bitset"* %YMM0.i268 to i8*
  %3496 = bitcast %union.vec128_t* %XMM0.i269 to i8*
  %3497 = load i64, i64* %PC.i267
  %3498 = add i64 %3497, 4
  store i64 %3498, i64* %PC.i267
  %3499 = bitcast i8* %3495 to <2 x i32>*
  %3500 = load <2 x i32>, <2 x i32>* %3499, align 1
  %3501 = getelementptr inbounds i8, i8* %3495, i64 8
  %3502 = bitcast i8* %3501 to <2 x i32>*
  %3503 = load <2 x i32>, <2 x i32>* %3502, align 1
  %3504 = bitcast i8* %3496 to double*
  %3505 = load double, double* %3504, align 1
  %3506 = fptrunc double %3505 to float
  %3507 = bitcast i8* %3495 to float*
  store float %3506, float* %3507, align 1
  %3508 = extractelement <2 x i32> %3500, i32 1
  %3509 = getelementptr inbounds i8, i8* %3495, i64 4
  %3510 = bitcast i8* %3509 to i32*
  store i32 %3508, i32* %3510, align 1
  %3511 = extractelement <2 x i32> %3503, i32 0
  %3512 = bitcast i8* %3501 to i32*
  store i32 %3511, i32* %3512, align 1
  %3513 = extractelement <2 x i32> %3503, i32 1
  %3514 = getelementptr inbounds i8, i8* %3495, i64 12
  %3515 = bitcast i8* %3514 to i32*
  store i32 %3513, i32* %3515, align 1
  store %struct.Memory* %loadMem_42c9ac, %struct.Memory** %MEMORY
  %loadMem_42c9b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3517 = getelementptr inbounds %struct.GPR, %struct.GPR* %3516, i32 0, i32 33
  %3518 = getelementptr inbounds %struct.Reg, %struct.Reg* %3517, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %3518 to i64*
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 15
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %3521 to i64*
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3523 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3522, i64 0, i64 0
  %XMM0.i266 = bitcast %union.VectorReg* %3523 to %union.vec128_t*
  %3524 = load i64, i64* %RBP.i265
  %3525 = sub i64 %3524, 40
  %3526 = bitcast %union.vec128_t* %XMM0.i266 to i8*
  %3527 = load i64, i64* %PC.i264
  %3528 = add i64 %3527, 5
  store i64 %3528, i64* %PC.i264
  %3529 = bitcast i8* %3526 to <2 x float>*
  %3530 = load <2 x float>, <2 x float>* %3529, align 1
  %3531 = extractelement <2 x float> %3530, i32 0
  %3532 = inttoptr i64 %3525 to float*
  store float %3531, float* %3532
  store %struct.Memory* %loadMem_42c9b0, %struct.Memory** %MEMORY
  br label %block_.L_42c9b5

block_.L_42c9b5:                                  ; preds = %block_.L_42c99b, %block_42c98c
  %loadMem_42c9b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3534 = getelementptr inbounds %struct.GPR, %struct.GPR* %3533, i32 0, i32 33
  %3535 = getelementptr inbounds %struct.Reg, %struct.Reg* %3534, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %3535 to i64*
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3537 = getelementptr inbounds %struct.GPR, %struct.GPR* %3536, i32 0, i32 15
  %3538 = getelementptr inbounds %struct.Reg, %struct.Reg* %3537, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %3538 to i64*
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3540 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3539, i64 0, i64 0
  %YMM0.i263 = bitcast %union.VectorReg* %3540 to %"class.std::bitset"*
  %3541 = bitcast %"class.std::bitset"* %YMM0.i263 to i8*
  %3542 = load i64, i64* %RBP.i262
  %3543 = sub i64 %3542, 28
  %3544 = load i64, i64* %PC.i261
  %3545 = add i64 %3544, 5
  store i64 %3545, i64* %PC.i261
  %3546 = inttoptr i64 %3543 to float*
  %3547 = load float, float* %3546
  %3548 = bitcast i8* %3541 to float*
  store float %3547, float* %3548, align 1
  %3549 = getelementptr inbounds i8, i8* %3541, i64 4
  %3550 = bitcast i8* %3549 to float*
  store float 0.000000e+00, float* %3550, align 1
  %3551 = getelementptr inbounds i8, i8* %3541, i64 8
  %3552 = bitcast i8* %3551 to float*
  store float 0.000000e+00, float* %3552, align 1
  %3553 = getelementptr inbounds i8, i8* %3541, i64 12
  %3554 = bitcast i8* %3553 to float*
  store float 0.000000e+00, float* %3554, align 1
  store %struct.Memory* %loadMem_42c9b5, %struct.Memory** %MEMORY
  %loadMem_42c9ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3556 = getelementptr inbounds %struct.GPR, %struct.GPR* %3555, i32 0, i32 33
  %3557 = getelementptr inbounds %struct.Reg, %struct.Reg* %3556, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %3557 to i64*
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3559 = getelementptr inbounds %struct.GPR, %struct.GPR* %3558, i32 0, i32 15
  %3560 = getelementptr inbounds %struct.Reg, %struct.Reg* %3559, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %3560 to i64*
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3562 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3561, i64 0, i64 0
  %XMM0.i257 = bitcast %union.VectorReg* %3562 to %union.vec128_t*
  %3563 = bitcast %union.vec128_t* %XMM0.i257 to i8*
  %3564 = load i64, i64* %RBP.i256
  %3565 = sub i64 %3564, 40
  %3566 = load i64, i64* %PC.i255
  %3567 = add i64 %3566, 4
  store i64 %3567, i64* %PC.i255
  %3568 = bitcast i8* %3563 to <2 x float>*
  %3569 = load <2 x float>, <2 x float>* %3568, align 1
  %3570 = extractelement <2 x float> %3569, i32 0
  %3571 = inttoptr i64 %3565 to float*
  %3572 = load float, float* %3571
  %3573 = fcmp uno float %3570, %3572
  br i1 %3573, label %3574, label %3586

; <label>:3574:                                   ; preds = %block_.L_42c9b5
  %3575 = fadd float %3570, %3572
  %3576 = bitcast float %3575 to i32
  %3577 = and i32 %3576, 2143289344
  %3578 = icmp eq i32 %3577, 2139095040
  %3579 = and i32 %3576, 4194303
  %3580 = icmp ne i32 %3579, 0
  %3581 = and i1 %3578, %3580
  br i1 %3581, label %3582, label %3592

; <label>:3582:                                   ; preds = %3574
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3584 = load i64, i64* %3583, align 8
  %3585 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3584, %struct.Memory* %loadMem_42c9ba)
  br label %routine_ucomiss_MINUS0x28__rbp____xmm0.exit

; <label>:3586:                                   ; preds = %block_.L_42c9b5
  %3587 = fcmp ogt float %3570, %3572
  br i1 %3587, label %3592, label %3588

; <label>:3588:                                   ; preds = %3586
  %3589 = fcmp olt float %3570, %3572
  br i1 %3589, label %3592, label %3590

; <label>:3590:                                   ; preds = %3588
  %3591 = fcmp oeq float %3570, %3572
  br i1 %3591, label %3592, label %3599

; <label>:3592:                                   ; preds = %3590, %3588, %3586, %3574
  %3593 = phi i8 [ 0, %3586 ], [ 0, %3588 ], [ 1, %3590 ], [ 1, %3574 ]
  %3594 = phi i8 [ 0, %3586 ], [ 0, %3588 ], [ 0, %3590 ], [ 1, %3574 ]
  %3595 = phi i8 [ 0, %3586 ], [ 1, %3588 ], [ 0, %3590 ], [ 1, %3574 ]
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3593, i8* %3596, align 1
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3594, i8* %3597, align 1
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3595, i8* %3598, align 1
  br label %3599

; <label>:3599:                                   ; preds = %3592, %3590
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3600, align 1
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3601, align 1
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3602, align 1
  br label %routine_ucomiss_MINUS0x28__rbp____xmm0.exit

routine_ucomiss_MINUS0x28__rbp____xmm0.exit:      ; preds = %3582, %3599
  %3603 = phi %struct.Memory* [ %3585, %3582 ], [ %loadMem_42c9ba, %3599 ]
  store %struct.Memory* %3603, %struct.Memory** %MEMORY
  %loadMem_42c9be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3605 = getelementptr inbounds %struct.GPR, %struct.GPR* %3604, i32 0, i32 33
  %3606 = getelementptr inbounds %struct.Reg, %struct.Reg* %3605, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %3606 to i64*
  %3607 = load i64, i64* %PC.i254
  %3608 = add i64 %3607, 26
  %3609 = load i64, i64* %PC.i254
  %3610 = add i64 %3609, 6
  %3611 = load i64, i64* %PC.i254
  %3612 = add i64 %3611, 6
  store i64 %3612, i64* %PC.i254
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3614 = load i8, i8* %3613, align 1
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3616 = load i8, i8* %3615, align 1
  %3617 = or i8 %3616, %3614
  %3618 = icmp ne i8 %3617, 0
  %3619 = zext i1 %3618 to i8
  store i8 %3619, i8* %BRANCH_TAKEN, align 1
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3621 = select i1 %3618, i64 %3608, i64 %3610
  store i64 %3621, i64* %3620, align 8
  store %struct.Memory* %loadMem_42c9be, %struct.Memory** %MEMORY
  %loadBr_42c9be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c9be = icmp eq i8 %loadBr_42c9be, 1
  br i1 %cmpBr_42c9be, label %block_.L_42c9d8, label %block_42c9c4

block_42c9c4:                                     ; preds = %routine_ucomiss_MINUS0x28__rbp____xmm0.exit
  %loadMem_42c9c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3623 = getelementptr inbounds %struct.GPR, %struct.GPR* %3622, i32 0, i32 33
  %3624 = getelementptr inbounds %struct.Reg, %struct.Reg* %3623, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %3624 to i64*
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3626 = getelementptr inbounds %struct.GPR, %struct.GPR* %3625, i32 0, i32 15
  %3627 = getelementptr inbounds %struct.Reg, %struct.Reg* %3626, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %3627 to i64*
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3629 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3628, i64 0, i64 0
  %YMM0.i253 = bitcast %union.VectorReg* %3629 to %"class.std::bitset"*
  %3630 = bitcast %"class.std::bitset"* %YMM0.i253 to i8*
  %3631 = load i64, i64* %RBP.i252
  %3632 = sub i64 %3631, 40
  %3633 = load i64, i64* %PC.i251
  %3634 = add i64 %3633, 5
  store i64 %3634, i64* %PC.i251
  %3635 = inttoptr i64 %3632 to float*
  %3636 = load float, float* %3635
  %3637 = bitcast i8* %3630 to float*
  store float %3636, float* %3637, align 1
  %3638 = getelementptr inbounds i8, i8* %3630, i64 4
  %3639 = bitcast i8* %3638 to float*
  store float 0.000000e+00, float* %3639, align 1
  %3640 = getelementptr inbounds i8, i8* %3630, i64 8
  %3641 = bitcast i8* %3640 to float*
  store float 0.000000e+00, float* %3641, align 1
  %3642 = getelementptr inbounds i8, i8* %3630, i64 12
  %3643 = bitcast i8* %3642 to float*
  store float 0.000000e+00, float* %3643, align 1
  store %struct.Memory* %loadMem_42c9c4, %struct.Memory** %MEMORY
  %loadMem_42c9c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3645 = getelementptr inbounds %struct.GPR, %struct.GPR* %3644, i32 0, i32 33
  %3646 = getelementptr inbounds %struct.Reg, %struct.Reg* %3645, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %3646 to i64*
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 15
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %3649 to i64*
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3651 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3650, i64 0, i64 0
  %YMM0.i250 = bitcast %union.VectorReg* %3651 to %"class.std::bitset"*
  %3652 = bitcast %"class.std::bitset"* %YMM0.i250 to i8*
  %3653 = bitcast %"class.std::bitset"* %YMM0.i250 to i8*
  %3654 = load i64, i64* %RBP.i249
  %3655 = sub i64 %3654, 28
  %3656 = load i64, i64* %PC.i248
  %3657 = add i64 %3656, 5
  store i64 %3657, i64* %PC.i248
  %3658 = bitcast i8* %3653 to <2 x float>*
  %3659 = load <2 x float>, <2 x float>* %3658, align 1
  %3660 = getelementptr inbounds i8, i8* %3653, i64 8
  %3661 = bitcast i8* %3660 to <2 x i32>*
  %3662 = load <2 x i32>, <2 x i32>* %3661, align 1
  %3663 = inttoptr i64 %3655 to float*
  %3664 = load float, float* %3663
  %3665 = extractelement <2 x float> %3659, i32 0
  %3666 = fdiv float %3665, %3664
  %3667 = bitcast i8* %3652 to float*
  store float %3666, float* %3667, align 1
  %3668 = bitcast <2 x float> %3659 to <2 x i32>
  %3669 = extractelement <2 x i32> %3668, i32 1
  %3670 = getelementptr inbounds i8, i8* %3652, i64 4
  %3671 = bitcast i8* %3670 to i32*
  store i32 %3669, i32* %3671, align 1
  %3672 = extractelement <2 x i32> %3662, i32 0
  %3673 = getelementptr inbounds i8, i8* %3652, i64 8
  %3674 = bitcast i8* %3673 to i32*
  store i32 %3672, i32* %3674, align 1
  %3675 = extractelement <2 x i32> %3662, i32 1
  %3676 = getelementptr inbounds i8, i8* %3652, i64 12
  %3677 = bitcast i8* %3676 to i32*
  store i32 %3675, i32* %3677, align 1
  store %struct.Memory* %loadMem_42c9c9, %struct.Memory** %MEMORY
  %loadMem_42c9ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3679 = getelementptr inbounds %struct.GPR, %struct.GPR* %3678, i32 0, i32 33
  %3680 = getelementptr inbounds %struct.Reg, %struct.Reg* %3679, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %3680 to i64*
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3682 = getelementptr inbounds %struct.GPR, %struct.GPR* %3681, i32 0, i32 15
  %3683 = getelementptr inbounds %struct.Reg, %struct.Reg* %3682, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %3683 to i64*
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3685 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3684, i64 0, i64 0
  %XMM0.i247 = bitcast %union.VectorReg* %3685 to %union.vec128_t*
  %3686 = load i64, i64* %RBP.i246
  %3687 = sub i64 %3686, 32
  %3688 = bitcast %union.vec128_t* %XMM0.i247 to i8*
  %3689 = load i64, i64* %PC.i245
  %3690 = add i64 %3689, 5
  store i64 %3690, i64* %PC.i245
  %3691 = bitcast i8* %3688 to <2 x float>*
  %3692 = load <2 x float>, <2 x float>* %3691, align 1
  %3693 = extractelement <2 x float> %3692, i32 0
  %3694 = inttoptr i64 %3687 to float*
  store float %3693, float* %3694
  store %struct.Memory* %loadMem_42c9ce, %struct.Memory** %MEMORY
  %loadMem_42c9d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3696 = getelementptr inbounds %struct.GPR, %struct.GPR* %3695, i32 0, i32 33
  %3697 = getelementptr inbounds %struct.Reg, %struct.Reg* %3696, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %3697 to i64*
  %3698 = load i64, i64* %PC.i244
  %3699 = add i64 %3698, 18
  %3700 = load i64, i64* %PC.i244
  %3701 = add i64 %3700, 5
  store i64 %3701, i64* %PC.i244
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3699, i64* %3702, align 8
  store %struct.Memory* %loadMem_42c9d3, %struct.Memory** %MEMORY
  br label %block_.L_42c9e5

block_.L_42c9d8:                                  ; preds = %routine_ucomiss_MINUS0x28__rbp____xmm0.exit
  %loadMem_42c9d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 33
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %3705 to i64*
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3707 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3706, i64 0, i64 0
  %YMM0.i243 = bitcast %union.VectorReg* %3707 to %"class.std::bitset"*
  %3708 = bitcast %"class.std::bitset"* %YMM0.i243 to i8*
  %3709 = load i64, i64* %PC.i242
  %3710 = add i64 %3709, ptrtoint (%G_0xb672c__rip__type* @G_0xb672c__rip_ to i64)
  %3711 = load i64, i64* %PC.i242
  %3712 = add i64 %3711, 8
  store i64 %3712, i64* %PC.i242
  %3713 = inttoptr i64 %3710 to float*
  %3714 = load float, float* %3713
  %3715 = bitcast i8* %3708 to float*
  store float %3714, float* %3715, align 1
  %3716 = getelementptr inbounds i8, i8* %3708, i64 4
  %3717 = bitcast i8* %3716 to float*
  store float 0.000000e+00, float* %3717, align 1
  %3718 = getelementptr inbounds i8, i8* %3708, i64 8
  %3719 = bitcast i8* %3718 to float*
  store float 0.000000e+00, float* %3719, align 1
  %3720 = getelementptr inbounds i8, i8* %3708, i64 12
  %3721 = bitcast i8* %3720 to float*
  store float 0.000000e+00, float* %3721, align 1
  store %struct.Memory* %loadMem_42c9d8, %struct.Memory** %MEMORY
  %loadMem_42c9e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3723 = getelementptr inbounds %struct.GPR, %struct.GPR* %3722, i32 0, i32 33
  %3724 = getelementptr inbounds %struct.Reg, %struct.Reg* %3723, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %3724 to i64*
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3726 = getelementptr inbounds %struct.GPR, %struct.GPR* %3725, i32 0, i32 15
  %3727 = getelementptr inbounds %struct.Reg, %struct.Reg* %3726, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %3727 to i64*
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3729 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3728, i64 0, i64 0
  %XMM0.i241 = bitcast %union.VectorReg* %3729 to %union.vec128_t*
  %3730 = load i64, i64* %RBP.i240
  %3731 = sub i64 %3730, 32
  %3732 = bitcast %union.vec128_t* %XMM0.i241 to i8*
  %3733 = load i64, i64* %PC.i239
  %3734 = add i64 %3733, 5
  store i64 %3734, i64* %PC.i239
  %3735 = bitcast i8* %3732 to <2 x float>*
  %3736 = load <2 x float>, <2 x float>* %3735, align 1
  %3737 = extractelement <2 x float> %3736, i32 0
  %3738 = inttoptr i64 %3731 to float*
  store float %3737, float* %3738
  store %struct.Memory* %loadMem_42c9e0, %struct.Memory** %MEMORY
  br label %block_.L_42c9e5

block_.L_42c9e5:                                  ; preds = %block_.L_42c9d8, %block_42c9c4
  %loadMem_42c9e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3740 = getelementptr inbounds %struct.GPR, %struct.GPR* %3739, i32 0, i32 33
  %3741 = getelementptr inbounds %struct.Reg, %struct.Reg* %3740, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %3741 to i64*
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3743 = getelementptr inbounds %struct.GPR, %struct.GPR* %3742, i32 0, i32 1
  %3744 = getelementptr inbounds %struct.Reg, %struct.Reg* %3743, i32 0, i32 0
  %RAX.i237 = bitcast %union.anon* %3744 to i64*
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3746 = getelementptr inbounds %struct.GPR, %struct.GPR* %3745, i32 0, i32 15
  %3747 = getelementptr inbounds %struct.Reg, %struct.Reg* %3746, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %3747 to i64*
  %3748 = load i64, i64* %RBP.i238
  %3749 = sub i64 %3748, 16
  %3750 = load i64, i64* %PC.i236
  %3751 = add i64 %3750, 3
  store i64 %3751, i64* %PC.i236
  %3752 = inttoptr i64 %3749 to i32*
  %3753 = load i32, i32* %3752
  %3754 = zext i32 %3753 to i64
  store i64 %3754, i64* %RAX.i237, align 8
  store %struct.Memory* %loadMem_42c9e5, %struct.Memory** %MEMORY
  %loadMem_42c9e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3756 = getelementptr inbounds %struct.GPR, %struct.GPR* %3755, i32 0, i32 33
  %3757 = getelementptr inbounds %struct.Reg, %struct.Reg* %3756, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %3757 to i64*
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3759 = getelementptr inbounds %struct.GPR, %struct.GPR* %3758, i32 0, i32 1
  %3760 = getelementptr inbounds %struct.Reg, %struct.Reg* %3759, i32 0, i32 0
  %EAX.i234 = bitcast %union.anon* %3760 to i32*
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3762 = getelementptr inbounds %struct.GPR, %struct.GPR* %3761, i32 0, i32 15
  %3763 = getelementptr inbounds %struct.Reg, %struct.Reg* %3762, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %3763 to i64*
  %3764 = load i64, i64* %RBP.i235
  %3765 = sub i64 %3764, 20
  %3766 = load i32, i32* %EAX.i234
  %3767 = zext i32 %3766 to i64
  %3768 = load i64, i64* %PC.i233
  %3769 = add i64 %3768, 3
  store i64 %3769, i64* %PC.i233
  %3770 = inttoptr i64 %3765 to i32*
  store i32 %3766, i32* %3770
  store %struct.Memory* %loadMem_42c9e8, %struct.Memory** %MEMORY
  br label %block_.L_42c9eb

block_.L_42c9eb:                                  ; preds = %block_.L_42cb75, %block_.L_42c9e5
  %loadMem_42c9eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 33
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %3773 to i64*
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 1
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %EAX.i231 = bitcast %union.anon* %3776 to i32*
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3778 = getelementptr inbounds %struct.GPR, %struct.GPR* %3777, i32 0, i32 1
  %3779 = getelementptr inbounds %struct.Reg, %struct.Reg* %3778, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %3779 to i64*
  %3780 = load i64, i64* %RAX.i232
  %3781 = load i32, i32* %EAX.i231
  %3782 = zext i32 %3781 to i64
  %3783 = load i64, i64* %PC.i230
  %3784 = add i64 %3783, 2
  store i64 %3784, i64* %PC.i230
  %3785 = xor i64 %3782, %3780
  %3786 = trunc i64 %3785 to i32
  %3787 = and i64 %3785, 4294967295
  store i64 %3787, i64* %RAX.i232, align 8
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3788, align 1
  %3789 = and i32 %3786, 255
  %3790 = call i32 @llvm.ctpop.i32(i32 %3789)
  %3791 = trunc i32 %3790 to i8
  %3792 = and i8 %3791, 1
  %3793 = xor i8 %3792, 1
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3793, i8* %3794, align 1
  %3795 = icmp eq i32 %3786, 0
  %3796 = zext i1 %3795 to i8
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3796, i8* %3797, align 1
  %3798 = lshr i32 %3786, 31
  %3799 = trunc i32 %3798 to i8
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3799, i8* %3800, align 1
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3801, align 1
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3802, align 1
  store %struct.Memory* %loadMem_42c9eb, %struct.Memory** %MEMORY
  %loadMem_42c9ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 33
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %3805 to i64*
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3807 = getelementptr inbounds %struct.GPR, %struct.GPR* %3806, i32 0, i32 1
  %3808 = getelementptr inbounds %struct.Reg, %struct.Reg* %3807, i32 0, i32 0
  %3809 = bitcast %union.anon* %3808 to %struct.anon.2*
  %AL.i228 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3809, i32 0, i32 0
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3811 = getelementptr inbounds %struct.GPR, %struct.GPR* %3810, i32 0, i32 5
  %3812 = getelementptr inbounds %struct.Reg, %struct.Reg* %3811, i32 0, i32 0
  %3813 = bitcast %union.anon* %3812 to %struct.anon.2*
  %CL.i229 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3813, i32 0, i32 0
  %3814 = load i8, i8* %AL.i228
  %3815 = zext i8 %3814 to i64
  %3816 = load i64, i64* %PC.i227
  %3817 = add i64 %3816, 2
  store i64 %3817, i64* %PC.i227
  store i8 %3814, i8* %CL.i229, align 1
  store %struct.Memory* %loadMem_42c9ed, %struct.Memory** %MEMORY
  %loadMem_42c9ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3819 = getelementptr inbounds %struct.GPR, %struct.GPR* %3818, i32 0, i32 33
  %3820 = getelementptr inbounds %struct.Reg, %struct.Reg* %3819, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %3820 to i64*
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3822 = getelementptr inbounds %struct.GPR, %struct.GPR* %3821, i32 0, i32 1
  %3823 = getelementptr inbounds %struct.Reg, %struct.Reg* %3822, i32 0, i32 0
  %RAX.i225 = bitcast %union.anon* %3823 to i64*
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3825 = getelementptr inbounds %struct.GPR, %struct.GPR* %3824, i32 0, i32 15
  %3826 = getelementptr inbounds %struct.Reg, %struct.Reg* %3825, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %3826 to i64*
  %3827 = load i64, i64* %RBP.i226
  %3828 = sub i64 %3827, 20
  %3829 = load i64, i64* %PC.i224
  %3830 = add i64 %3829, 3
  store i64 %3830, i64* %PC.i224
  %3831 = inttoptr i64 %3828 to i32*
  %3832 = load i32, i32* %3831
  %3833 = zext i32 %3832 to i64
  store i64 %3833, i64* %RAX.i225, align 8
  store %struct.Memory* %loadMem_42c9ef, %struct.Memory** %MEMORY
  %loadMem_42c9f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3835 = getelementptr inbounds %struct.GPR, %struct.GPR* %3834, i32 0, i32 33
  %3836 = getelementptr inbounds %struct.Reg, %struct.Reg* %3835, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %3836 to i64*
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3838 = getelementptr inbounds %struct.GPR, %struct.GPR* %3837, i32 0, i32 7
  %3839 = getelementptr inbounds %struct.Reg, %struct.Reg* %3838, i32 0, i32 0
  %RDX.i222 = bitcast %union.anon* %3839 to i64*
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3841 = getelementptr inbounds %struct.GPR, %struct.GPR* %3840, i32 0, i32 15
  %3842 = getelementptr inbounds %struct.Reg, %struct.Reg* %3841, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %3842 to i64*
  %3843 = load i64, i64* %RBP.i223
  %3844 = sub i64 %3843, 8
  %3845 = load i64, i64* %PC.i221
  %3846 = add i64 %3845, 4
  store i64 %3846, i64* %PC.i221
  %3847 = inttoptr i64 %3844 to i64*
  %3848 = load i64, i64* %3847
  store i64 %3848, i64* %RDX.i222, align 8
  store %struct.Memory* %loadMem_42c9f2, %struct.Memory** %MEMORY
  %loadMem_42c9f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3850 = getelementptr inbounds %struct.GPR, %struct.GPR* %3849, i32 0, i32 33
  %3851 = getelementptr inbounds %struct.Reg, %struct.Reg* %3850, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %3851 to i64*
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3853 = getelementptr inbounds %struct.GPR, %struct.GPR* %3852, i32 0, i32 1
  %3854 = getelementptr inbounds %struct.Reg, %struct.Reg* %3853, i32 0, i32 0
  %EAX.i219 = bitcast %union.anon* %3854 to i32*
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3856 = getelementptr inbounds %struct.GPR, %struct.GPR* %3855, i32 0, i32 7
  %3857 = getelementptr inbounds %struct.Reg, %struct.Reg* %3856, i32 0, i32 0
  %RDX.i220 = bitcast %union.anon* %3857 to i64*
  %3858 = load i32, i32* %EAX.i219
  %3859 = zext i32 %3858 to i64
  %3860 = load i64, i64* %RDX.i220
  %3861 = add i64 %3860, 35668
  %3862 = load i64, i64* %PC.i218
  %3863 = add i64 %3862, 6
  store i64 %3863, i64* %PC.i218
  %3864 = inttoptr i64 %3861 to i32*
  %3865 = load i32, i32* %3864
  %3866 = sub i32 %3858, %3865
  %3867 = icmp ult i32 %3858, %3865
  %3868 = zext i1 %3867 to i8
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3868, i8* %3869, align 1
  %3870 = and i32 %3866, 255
  %3871 = call i32 @llvm.ctpop.i32(i32 %3870)
  %3872 = trunc i32 %3871 to i8
  %3873 = and i8 %3872, 1
  %3874 = xor i8 %3873, 1
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3874, i8* %3875, align 1
  %3876 = xor i32 %3865, %3858
  %3877 = xor i32 %3876, %3866
  %3878 = lshr i32 %3877, 4
  %3879 = trunc i32 %3878 to i8
  %3880 = and i8 %3879, 1
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3880, i8* %3881, align 1
  %3882 = icmp eq i32 %3866, 0
  %3883 = zext i1 %3882 to i8
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3883, i8* %3884, align 1
  %3885 = lshr i32 %3866, 31
  %3886 = trunc i32 %3885 to i8
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3886, i8* %3887, align 1
  %3888 = lshr i32 %3858, 31
  %3889 = lshr i32 %3865, 31
  %3890 = xor i32 %3889, %3888
  %3891 = xor i32 %3885, %3888
  %3892 = add i32 %3891, %3890
  %3893 = icmp eq i32 %3892, 2
  %3894 = zext i1 %3893 to i8
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3894, i8* %3895, align 1
  store %struct.Memory* %loadMem_42c9f6, %struct.Memory** %MEMORY
  %loadMem_42c9fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 33
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %3898 to i64*
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3900 = getelementptr inbounds %struct.GPR, %struct.GPR* %3899, i32 0, i32 5
  %3901 = getelementptr inbounds %struct.Reg, %struct.Reg* %3900, i32 0, i32 0
  %3902 = bitcast %union.anon* %3901 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3902, i32 0, i32 0
  %3903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3904 = getelementptr inbounds %struct.GPR, %struct.GPR* %3903, i32 0, i32 15
  %3905 = getelementptr inbounds %struct.Reg, %struct.Reg* %3904, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %3905 to i64*
  %3906 = load i64, i64* %RBP.i217
  %3907 = sub i64 %3906, 46
  %3908 = load i8, i8* %CL.i
  %3909 = zext i8 %3908 to i64
  %3910 = load i64, i64* %PC.i216
  %3911 = add i64 %3910, 3
  store i64 %3911, i64* %PC.i216
  %3912 = inttoptr i64 %3907 to i8*
  store i8 %3908, i8* %3912
  store %struct.Memory* %loadMem_42c9fc, %struct.Memory** %MEMORY
  %loadMem_42c9ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3914 = getelementptr inbounds %struct.GPR, %struct.GPR* %3913, i32 0, i32 33
  %3915 = getelementptr inbounds %struct.Reg, %struct.Reg* %3914, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %3915 to i64*
  %3916 = load i64, i64* %PC.i215
  %3917 = add i64 %3916, 40
  %3918 = load i64, i64* %PC.i215
  %3919 = add i64 %3918, 6
  %3920 = load i64, i64* %PC.i215
  %3921 = add i64 %3920, 6
  store i64 %3921, i64* %PC.i215
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3923 = load i8, i8* %3922, align 1
  %3924 = icmp ne i8 %3923, 0
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3926 = load i8, i8* %3925, align 1
  %3927 = icmp ne i8 %3926, 0
  %3928 = xor i1 %3924, %3927
  %3929 = xor i1 %3928, true
  %3930 = zext i1 %3929 to i8
  store i8 %3930, i8* %BRANCH_TAKEN, align 1
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3932 = select i1 %3928, i64 %3919, i64 %3917
  store i64 %3932, i64* %3931, align 8
  store %struct.Memory* %loadMem_42c9ff, %struct.Memory** %MEMORY
  %loadBr_42c9ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c9ff = icmp eq i8 %loadBr_42c9ff, 1
  br i1 %cmpBr_42c9ff, label %block_.L_42ca27, label %block_42ca05

block_42ca05:                                     ; preds = %block_.L_42c9eb
  %loadMem_42ca05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3934 = getelementptr inbounds %struct.GPR, %struct.GPR* %3933, i32 0, i32 33
  %3935 = getelementptr inbounds %struct.Reg, %struct.Reg* %3934, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %3935 to i64*
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3937 = getelementptr inbounds %struct.GPR, %struct.GPR* %3936, i32 0, i32 1
  %3938 = getelementptr inbounds %struct.Reg, %struct.Reg* %3937, i32 0, i32 0
  %RAX.i213 = bitcast %union.anon* %3938 to i64*
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 15
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %3941 to i64*
  %3942 = load i64, i64* %RBP.i214
  %3943 = sub i64 %3942, 8
  %3944 = load i64, i64* %PC.i212
  %3945 = add i64 %3944, 4
  store i64 %3945, i64* %PC.i212
  %3946 = inttoptr i64 %3943 to i64*
  %3947 = load i64, i64* %3946
  store i64 %3947, i64* %RAX.i213, align 8
  store %struct.Memory* %loadMem_42ca05, %struct.Memory** %MEMORY
  %loadMem_42ca09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3949 = getelementptr inbounds %struct.GPR, %struct.GPR* %3948, i32 0, i32 33
  %3950 = getelementptr inbounds %struct.Reg, %struct.Reg* %3949, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %3950 to i64*
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3952 = getelementptr inbounds %struct.GPR, %struct.GPR* %3951, i32 0, i32 1
  %3953 = getelementptr inbounds %struct.Reg, %struct.Reg* %3952, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %3953 to i64*
  %3954 = load i64, i64* %RAX.i211
  %3955 = load i64, i64* %PC.i210
  %3956 = add i64 %3955, 6
  store i64 %3956, i64* %PC.i210
  %3957 = add i64 35672, %3954
  store i64 %3957, i64* %RAX.i211, align 8
  %3958 = icmp ult i64 %3957, %3954
  %3959 = icmp ult i64 %3957, 35672
  %3960 = or i1 %3958, %3959
  %3961 = zext i1 %3960 to i8
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3961, i8* %3962, align 1
  %3963 = trunc i64 %3957 to i32
  %3964 = and i32 %3963, 255
  %3965 = call i32 @llvm.ctpop.i32(i32 %3964)
  %3966 = trunc i32 %3965 to i8
  %3967 = and i8 %3966, 1
  %3968 = xor i8 %3967, 1
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3968, i8* %3969, align 1
  %3970 = xor i64 35672, %3954
  %3971 = xor i64 %3970, %3957
  %3972 = lshr i64 %3971, 4
  %3973 = trunc i64 %3972 to i8
  %3974 = and i8 %3973, 1
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3974, i8* %3975, align 1
  %3976 = icmp eq i64 %3957, 0
  %3977 = zext i1 %3976 to i8
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3977, i8* %3978, align 1
  %3979 = lshr i64 %3957, 63
  %3980 = trunc i64 %3979 to i8
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3980, i8* %3981, align 1
  %3982 = lshr i64 %3954, 63
  %3983 = xor i64 %3979, %3982
  %3984 = add i64 %3983, %3979
  %3985 = icmp eq i64 %3984, 2
  %3986 = zext i1 %3985 to i8
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3986, i8* %3987, align 1
  store %struct.Memory* %loadMem_42ca09, %struct.Memory** %MEMORY
  %loadMem_42ca0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3989 = getelementptr inbounds %struct.GPR, %struct.GPR* %3988, i32 0, i32 33
  %3990 = getelementptr inbounds %struct.Reg, %struct.Reg* %3989, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %3990 to i64*
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3992 = getelementptr inbounds %struct.GPR, %struct.GPR* %3991, i32 0, i32 5
  %3993 = getelementptr inbounds %struct.Reg, %struct.Reg* %3992, i32 0, i32 0
  %RCX.i208 = bitcast %union.anon* %3993 to i64*
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3995 = getelementptr inbounds %struct.GPR, %struct.GPR* %3994, i32 0, i32 15
  %3996 = getelementptr inbounds %struct.Reg, %struct.Reg* %3995, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %3996 to i64*
  %3997 = load i64, i64* %RBP.i209
  %3998 = sub i64 %3997, 20
  %3999 = load i64, i64* %PC.i207
  %4000 = add i64 %3999, 4
  store i64 %4000, i64* %PC.i207
  %4001 = inttoptr i64 %3998 to i32*
  %4002 = load i32, i32* %4001
  %4003 = sext i32 %4002 to i64
  store i64 %4003, i64* %RCX.i208, align 8
  store %struct.Memory* %loadMem_42ca0f, %struct.Memory** %MEMORY
  %loadMem_42ca13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4005 = getelementptr inbounds %struct.GPR, %struct.GPR* %4004, i32 0, i32 33
  %4006 = getelementptr inbounds %struct.Reg, %struct.Reg* %4005, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %4006 to i64*
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 5
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %RCX.i206 = bitcast %union.anon* %4009 to i64*
  %4010 = load i64, i64* %RCX.i206
  %4011 = load i64, i64* %PC.i205
  %4012 = add i64 %4011, 4
  store i64 %4012, i64* %PC.i205
  %4013 = shl i64 %4010, 3
  %4014 = icmp slt i64 %4013, 0
  %4015 = shl i64 %4013, 1
  store i64 %4015, i64* %RCX.i206, align 8
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4017 = zext i1 %4014 to i8
  store i8 %4017, i8* %4016, align 1
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4019 = trunc i64 %4015 to i32
  %4020 = and i32 %4019, 254
  %4021 = call i32 @llvm.ctpop.i32(i32 %4020)
  %4022 = trunc i32 %4021 to i8
  %4023 = and i8 %4022, 1
  %4024 = xor i8 %4023, 1
  store i8 %4024, i8* %4018, align 1
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4025, align 1
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4027 = icmp eq i64 %4015, 0
  %4028 = zext i1 %4027 to i8
  store i8 %4028, i8* %4026, align 1
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4030 = lshr i64 %4015, 63
  %4031 = trunc i64 %4030 to i8
  store i8 %4031, i8* %4029, align 1
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4032, align 1
  store %struct.Memory* %loadMem_42ca13, %struct.Memory** %MEMORY
  %loadMem_42ca17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4034 = getelementptr inbounds %struct.GPR, %struct.GPR* %4033, i32 0, i32 33
  %4035 = getelementptr inbounds %struct.Reg, %struct.Reg* %4034, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %4035 to i64*
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4037 = getelementptr inbounds %struct.GPR, %struct.GPR* %4036, i32 0, i32 1
  %4038 = getelementptr inbounds %struct.Reg, %struct.Reg* %4037, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %4038 to i64*
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4040 = getelementptr inbounds %struct.GPR, %struct.GPR* %4039, i32 0, i32 5
  %4041 = getelementptr inbounds %struct.Reg, %struct.Reg* %4040, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %4041 to i64*
  %4042 = load i64, i64* %RAX.i203
  %4043 = load i64, i64* %RCX.i204
  %4044 = load i64, i64* %PC.i202
  %4045 = add i64 %4044, 3
  store i64 %4045, i64* %PC.i202
  %4046 = add i64 %4043, %4042
  store i64 %4046, i64* %RAX.i203, align 8
  %4047 = icmp ult i64 %4046, %4042
  %4048 = icmp ult i64 %4046, %4043
  %4049 = or i1 %4047, %4048
  %4050 = zext i1 %4049 to i8
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4050, i8* %4051, align 1
  %4052 = trunc i64 %4046 to i32
  %4053 = and i32 %4052, 255
  %4054 = call i32 @llvm.ctpop.i32(i32 %4053)
  %4055 = trunc i32 %4054 to i8
  %4056 = and i8 %4055, 1
  %4057 = xor i8 %4056, 1
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4057, i8* %4058, align 1
  %4059 = xor i64 %4043, %4042
  %4060 = xor i64 %4059, %4046
  %4061 = lshr i64 %4060, 4
  %4062 = trunc i64 %4061 to i8
  %4063 = and i8 %4062, 1
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4063, i8* %4064, align 1
  %4065 = icmp eq i64 %4046, 0
  %4066 = zext i1 %4065 to i8
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4066, i8* %4067, align 1
  %4068 = lshr i64 %4046, 63
  %4069 = trunc i64 %4068 to i8
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4069, i8* %4070, align 1
  %4071 = lshr i64 %4042, 63
  %4072 = lshr i64 %4043, 63
  %4073 = xor i64 %4068, %4071
  %4074 = xor i64 %4068, %4072
  %4075 = add i64 %4073, %4074
  %4076 = icmp eq i64 %4075, 2
  %4077 = zext i1 %4076 to i8
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4077, i8* %4078, align 1
  store %struct.Memory* %loadMem_42ca17, %struct.Memory** %MEMORY
  %loadMem_42ca1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4080 = getelementptr inbounds %struct.GPR, %struct.GPR* %4079, i32 0, i32 33
  %4081 = getelementptr inbounds %struct.Reg, %struct.Reg* %4080, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %4081 to i64*
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4083 = getelementptr inbounds %struct.GPR, %struct.GPR* %4082, i32 0, i32 1
  %4084 = getelementptr inbounds %struct.Reg, %struct.Reg* %4083, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %4084 to i64*
  %4085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4086 = getelementptr inbounds %struct.GPR, %struct.GPR* %4085, i32 0, i32 7
  %4087 = getelementptr inbounds %struct.Reg, %struct.Reg* %4086, i32 0, i32 0
  %RDX.i201 = bitcast %union.anon* %4087 to i64*
  %4088 = load i64, i64* %RAX.i200
  %4089 = load i64, i64* %PC.i199
  %4090 = add i64 %4089, 2
  store i64 %4090, i64* %PC.i199
  %4091 = inttoptr i64 %4088 to i32*
  %4092 = load i32, i32* %4091
  %4093 = zext i32 %4092 to i64
  store i64 %4093, i64* %RDX.i201, align 8
  store %struct.Memory* %loadMem_42ca1a, %struct.Memory** %MEMORY
  %loadMem_42ca1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4095 = getelementptr inbounds %struct.GPR, %struct.GPR* %4094, i32 0, i32 33
  %4096 = getelementptr inbounds %struct.Reg, %struct.Reg* %4095, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %4096 to i64*
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4098 = getelementptr inbounds %struct.GPR, %struct.GPR* %4097, i32 0, i32 7
  %4099 = getelementptr inbounds %struct.Reg, %struct.Reg* %4098, i32 0, i32 0
  %EDX.i197 = bitcast %union.anon* %4099 to i32*
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4101 = getelementptr inbounds %struct.GPR, %struct.GPR* %4100, i32 0, i32 15
  %4102 = getelementptr inbounds %struct.Reg, %struct.Reg* %4101, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %4102 to i64*
  %4103 = load i32, i32* %EDX.i197
  %4104 = zext i32 %4103 to i64
  %4105 = load i64, i64* %RBP.i198
  %4106 = sub i64 %4105, 24
  %4107 = load i64, i64* %PC.i196
  %4108 = add i64 %4107, 3
  store i64 %4108, i64* %PC.i196
  %4109 = inttoptr i64 %4106 to i32*
  %4110 = load i32, i32* %4109
  %4111 = sub i32 %4103, %4110
  %4112 = icmp ult i32 %4103, %4110
  %4113 = zext i1 %4112 to i8
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4113, i8* %4114, align 1
  %4115 = and i32 %4111, 255
  %4116 = call i32 @llvm.ctpop.i32(i32 %4115)
  %4117 = trunc i32 %4116 to i8
  %4118 = and i8 %4117, 1
  %4119 = xor i8 %4118, 1
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4119, i8* %4120, align 1
  %4121 = xor i32 %4110, %4103
  %4122 = xor i32 %4121, %4111
  %4123 = lshr i32 %4122, 4
  %4124 = trunc i32 %4123 to i8
  %4125 = and i8 %4124, 1
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4125, i8* %4126, align 1
  %4127 = icmp eq i32 %4111, 0
  %4128 = zext i1 %4127 to i8
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4128, i8* %4129, align 1
  %4130 = lshr i32 %4111, 31
  %4131 = trunc i32 %4130 to i8
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4131, i8* %4132, align 1
  %4133 = lshr i32 %4103, 31
  %4134 = lshr i32 %4110, 31
  %4135 = xor i32 %4134, %4133
  %4136 = xor i32 %4130, %4133
  %4137 = add i32 %4136, %4135
  %4138 = icmp eq i32 %4137, 2
  %4139 = zext i1 %4138 to i8
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4139, i8* %4140, align 1
  store %struct.Memory* %loadMem_42ca1c, %struct.Memory** %MEMORY
  %loadMem_42ca1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4142 = getelementptr inbounds %struct.GPR, %struct.GPR* %4141, i32 0, i32 33
  %4143 = getelementptr inbounds %struct.Reg, %struct.Reg* %4142, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %4143 to i64*
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4145 = getelementptr inbounds %struct.GPR, %struct.GPR* %4144, i32 0, i32 9
  %4146 = getelementptr inbounds %struct.Reg, %struct.Reg* %4145, i32 0, i32 0
  %4147 = bitcast %union.anon* %4146 to %struct.anon.2*
  %SIL.i195 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4147, i32 0, i32 0
  %4148 = load i64, i64* %PC.i194
  %4149 = add i64 %4148, 4
  store i64 %4149, i64* %PC.i194
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4151 = load i8, i8* %4150, align 1
  store i8 %4151, i8* %SIL.i195, align 1
  store %struct.Memory* %loadMem_42ca1f, %struct.Memory** %MEMORY
  %loadMem_42ca23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4153 = getelementptr inbounds %struct.GPR, %struct.GPR* %4152, i32 0, i32 33
  %4154 = getelementptr inbounds %struct.Reg, %struct.Reg* %4153, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %4154 to i64*
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4156 = getelementptr inbounds %struct.GPR, %struct.GPR* %4155, i32 0, i32 9
  %4157 = getelementptr inbounds %struct.Reg, %struct.Reg* %4156, i32 0, i32 0
  %4158 = bitcast %union.anon* %4157 to %struct.anon.2*
  %SIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4158, i32 0, i32 0
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4160 = getelementptr inbounds %struct.GPR, %struct.GPR* %4159, i32 0, i32 15
  %4161 = getelementptr inbounds %struct.Reg, %struct.Reg* %4160, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %4161 to i64*
  %4162 = load i64, i64* %RBP.i193
  %4163 = sub i64 %4162, 46
  %4164 = load i8, i8* %SIL.i
  %4165 = zext i8 %4164 to i64
  %4166 = load i64, i64* %PC.i192
  %4167 = add i64 %4166, 4
  store i64 %4167, i64* %PC.i192
  %4168 = inttoptr i64 %4163 to i8*
  store i8 %4164, i8* %4168
  store %struct.Memory* %loadMem_42ca23, %struct.Memory** %MEMORY
  br label %block_.L_42ca27

block_.L_42ca27:                                  ; preds = %block_42ca05, %block_.L_42c9eb
  %loadMem_42ca27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4170 = getelementptr inbounds %struct.GPR, %struct.GPR* %4169, i32 0, i32 33
  %4171 = getelementptr inbounds %struct.Reg, %struct.Reg* %4170, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %4171 to i64*
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4173 = getelementptr inbounds %struct.GPR, %struct.GPR* %4172, i32 0, i32 1
  %4174 = getelementptr inbounds %struct.Reg, %struct.Reg* %4173, i32 0, i32 0
  %4175 = bitcast %union.anon* %4174 to %struct.anon.2*
  %AL.i190 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4175, i32 0, i32 0
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4177 = getelementptr inbounds %struct.GPR, %struct.GPR* %4176, i32 0, i32 15
  %4178 = getelementptr inbounds %struct.Reg, %struct.Reg* %4177, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %4178 to i64*
  %4179 = load i64, i64* %RBP.i191
  %4180 = sub i64 %4179, 46
  %4181 = load i64, i64* %PC.i189
  %4182 = add i64 %4181, 3
  store i64 %4182, i64* %PC.i189
  %4183 = inttoptr i64 %4180 to i8*
  %4184 = load i8, i8* %4183
  store i8 %4184, i8* %AL.i190, align 1
  store %struct.Memory* %loadMem_42ca27, %struct.Memory** %MEMORY
  %loadMem_42ca2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4186 = getelementptr inbounds %struct.GPR, %struct.GPR* %4185, i32 0, i32 33
  %4187 = getelementptr inbounds %struct.Reg, %struct.Reg* %4186, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %4187 to i64*
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4189 = getelementptr inbounds %struct.GPR, %struct.GPR* %4188, i32 0, i32 1
  %4190 = getelementptr inbounds %struct.Reg, %struct.Reg* %4189, i32 0, i32 0
  %4191 = bitcast %union.anon* %4190 to %struct.anon.2*
  %AL.i188 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4191, i32 0, i32 0
  %4192 = load i8, i8* %AL.i188
  %4193 = zext i8 %4192 to i64
  %4194 = load i64, i64* %PC.i187
  %4195 = add i64 %4194, 2
  store i64 %4195, i64* %PC.i187
  %4196 = and i64 1, %4193
  %4197 = trunc i64 %4196 to i8
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4198, align 1
  %4199 = trunc i64 %4196 to i32
  %4200 = and i32 %4199, 255
  %4201 = call i32 @llvm.ctpop.i32(i32 %4200)
  %4202 = trunc i32 %4201 to i8
  %4203 = and i8 %4202, 1
  %4204 = xor i8 %4203, 1
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4204, i8* %4205, align 1
  %4206 = icmp eq i8 %4197, 0
  %4207 = zext i1 %4206 to i8
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4207, i8* %4208, align 1
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4209, align 1
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4210, align 1
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4211, align 1
  store %struct.Memory* %loadMem_42ca2a, %struct.Memory** %MEMORY
  %loadMem_42ca2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4213 = getelementptr inbounds %struct.GPR, %struct.GPR* %4212, i32 0, i32 33
  %4214 = getelementptr inbounds %struct.Reg, %struct.Reg* %4213, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %4214 to i64*
  %4215 = load i64, i64* %PC.i186
  %4216 = add i64 %4215, 11
  %4217 = load i64, i64* %PC.i186
  %4218 = add i64 %4217, 6
  %4219 = load i64, i64* %PC.i186
  %4220 = add i64 %4219, 6
  store i64 %4220, i64* %PC.i186
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4222 = load i8, i8* %4221, align 1
  %4223 = icmp eq i8 %4222, 0
  %4224 = zext i1 %4223 to i8
  store i8 %4224, i8* %BRANCH_TAKEN, align 1
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4226 = select i1 %4223, i64 %4216, i64 %4218
  store i64 %4226, i64* %4225, align 8
  store %struct.Memory* %loadMem_42ca2c, %struct.Memory** %MEMORY
  %loadBr_42ca2c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ca2c = icmp eq i8 %loadBr_42ca2c, 1
  br i1 %cmpBr_42ca2c, label %block_.L_42ca37, label %block_42ca32

block_42ca32:                                     ; preds = %block_.L_42ca27
  %loadMem_42ca32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 33
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %4229 to i64*
  %4230 = load i64, i64* %PC.i185
  %4231 = add i64 %4230, 337
  %4232 = load i64, i64* %PC.i185
  %4233 = add i64 %4232, 5
  store i64 %4233, i64* %PC.i185
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4231, i64* %4234, align 8
  store %struct.Memory* %loadMem_42ca32, %struct.Memory** %MEMORY
  br label %block_.L_42cb83

block_.L_42ca37:                                  ; preds = %block_.L_42ca27
  %loadMem_42ca37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4236 = getelementptr inbounds %struct.GPR, %struct.GPR* %4235, i32 0, i32 33
  %4237 = getelementptr inbounds %struct.Reg, %struct.Reg* %4236, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %4237 to i64*
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4239 = getelementptr inbounds %struct.GPR, %struct.GPR* %4238, i32 0, i32 1
  %4240 = getelementptr inbounds %struct.Reg, %struct.Reg* %4239, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %4240 to i64*
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4242 = getelementptr inbounds %struct.GPR, %struct.GPR* %4241, i32 0, i32 15
  %4243 = getelementptr inbounds %struct.Reg, %struct.Reg* %4242, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %4243 to i64*
  %4244 = load i64, i64* %RBP.i184
  %4245 = sub i64 %4244, 20
  %4246 = load i64, i64* %PC.i182
  %4247 = add i64 %4246, 3
  store i64 %4247, i64* %PC.i182
  %4248 = inttoptr i64 %4245 to i32*
  %4249 = load i32, i32* %4248
  %4250 = zext i32 %4249 to i64
  store i64 %4250, i64* %RAX.i183, align 8
  store %struct.Memory* %loadMem_42ca37, %struct.Memory** %MEMORY
  %loadMem_42ca3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 33
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %4253 to i64*
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 1
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %EAX.i180 = bitcast %union.anon* %4256 to i32*
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 15
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %4259 to i64*
  %4260 = load i32, i32* %EAX.i180
  %4261 = zext i32 %4260 to i64
  %4262 = load i64, i64* %RBP.i181
  %4263 = sub i64 %4262, 16
  %4264 = load i64, i64* %PC.i179
  %4265 = add i64 %4264, 3
  store i64 %4265, i64* %PC.i179
  %4266 = inttoptr i64 %4263 to i32*
  %4267 = load i32, i32* %4266
  %4268 = sub i32 %4260, %4267
  %4269 = icmp ult i32 %4260, %4267
  %4270 = zext i1 %4269 to i8
  %4271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4270, i8* %4271, align 1
  %4272 = and i32 %4268, 255
  %4273 = call i32 @llvm.ctpop.i32(i32 %4272)
  %4274 = trunc i32 %4273 to i8
  %4275 = and i8 %4274, 1
  %4276 = xor i8 %4275, 1
  %4277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4276, i8* %4277, align 1
  %4278 = xor i32 %4267, %4260
  %4279 = xor i32 %4278, %4268
  %4280 = lshr i32 %4279, 4
  %4281 = trunc i32 %4280 to i8
  %4282 = and i8 %4281, 1
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4282, i8* %4283, align 1
  %4284 = icmp eq i32 %4268, 0
  %4285 = zext i1 %4284 to i8
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4285, i8* %4286, align 1
  %4287 = lshr i32 %4268, 31
  %4288 = trunc i32 %4287 to i8
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4288, i8* %4289, align 1
  %4290 = lshr i32 %4260, 31
  %4291 = lshr i32 %4267, 31
  %4292 = xor i32 %4291, %4290
  %4293 = xor i32 %4287, %4290
  %4294 = add i32 %4293, %4292
  %4295 = icmp eq i32 %4294, 2
  %4296 = zext i1 %4295 to i8
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4296, i8* %4297, align 1
  store %struct.Memory* %loadMem_42ca3a, %struct.Memory** %MEMORY
  %loadMem_42ca3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4299 = getelementptr inbounds %struct.GPR, %struct.GPR* %4298, i32 0, i32 33
  %4300 = getelementptr inbounds %struct.Reg, %struct.Reg* %4299, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %4300 to i64*
  %4301 = load i64, i64* %PC.i178
  %4302 = add i64 %4301, 65
  %4303 = load i64, i64* %PC.i178
  %4304 = add i64 %4303, 6
  %4305 = load i64, i64* %PC.i178
  %4306 = add i64 %4305, 6
  store i64 %4306, i64* %PC.i178
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4308 = load i8, i8* %4307, align 1
  store i8 %4308, i8* %BRANCH_TAKEN, align 1
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4310 = icmp ne i8 %4308, 0
  %4311 = select i1 %4310, i64 %4302, i64 %4304
  store i64 %4311, i64* %4309, align 8
  store %struct.Memory* %loadMem_42ca3d, %struct.Memory** %MEMORY
  %loadBr_42ca3d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ca3d = icmp eq i8 %loadBr_42ca3d, 1
  br i1 %cmpBr_42ca3d, label %block_.L_42ca7e, label %block_42ca43

block_42ca43:                                     ; preds = %block_.L_42ca37
  %loadMem_42ca43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4313 = getelementptr inbounds %struct.GPR, %struct.GPR* %4312, i32 0, i32 33
  %4314 = getelementptr inbounds %struct.Reg, %struct.Reg* %4313, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %4314 to i64*
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4316 = getelementptr inbounds %struct.GPR, %struct.GPR* %4315, i32 0, i32 1
  %4317 = getelementptr inbounds %struct.Reg, %struct.Reg* %4316, i32 0, i32 0
  %RAX.i176 = bitcast %union.anon* %4317 to i64*
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4319 = getelementptr inbounds %struct.GPR, %struct.GPR* %4318, i32 0, i32 15
  %4320 = getelementptr inbounds %struct.Reg, %struct.Reg* %4319, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %4320 to i64*
  %4321 = load i64, i64* %RBP.i177
  %4322 = sub i64 %4321, 8
  %4323 = load i64, i64* %PC.i175
  %4324 = add i64 %4323, 4
  store i64 %4324, i64* %PC.i175
  %4325 = inttoptr i64 %4322 to i64*
  %4326 = load i64, i64* %4325
  store i64 %4326, i64* %RAX.i176, align 8
  store %struct.Memory* %loadMem_42ca43, %struct.Memory** %MEMORY
  %loadMem_42ca47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4328 = getelementptr inbounds %struct.GPR, %struct.GPR* %4327, i32 0, i32 33
  %4329 = getelementptr inbounds %struct.Reg, %struct.Reg* %4328, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %4329 to i64*
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4331 = getelementptr inbounds %struct.GPR, %struct.GPR* %4330, i32 0, i32 1
  %4332 = getelementptr inbounds %struct.Reg, %struct.Reg* %4331, i32 0, i32 0
  %RAX.i174 = bitcast %union.anon* %4332 to i64*
  %4333 = load i64, i64* %RAX.i174
  %4334 = load i64, i64* %PC.i173
  %4335 = add i64 %4334, 6
  store i64 %4335, i64* %PC.i173
  %4336 = add i64 35672, %4333
  store i64 %4336, i64* %RAX.i174, align 8
  %4337 = icmp ult i64 %4336, %4333
  %4338 = icmp ult i64 %4336, 35672
  %4339 = or i1 %4337, %4338
  %4340 = zext i1 %4339 to i8
  %4341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4340, i8* %4341, align 1
  %4342 = trunc i64 %4336 to i32
  %4343 = and i32 %4342, 255
  %4344 = call i32 @llvm.ctpop.i32(i32 %4343)
  %4345 = trunc i32 %4344 to i8
  %4346 = and i8 %4345, 1
  %4347 = xor i8 %4346, 1
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4347, i8* %4348, align 1
  %4349 = xor i64 35672, %4333
  %4350 = xor i64 %4349, %4336
  %4351 = lshr i64 %4350, 4
  %4352 = trunc i64 %4351 to i8
  %4353 = and i8 %4352, 1
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4353, i8* %4354, align 1
  %4355 = icmp eq i64 %4336, 0
  %4356 = zext i1 %4355 to i8
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4356, i8* %4357, align 1
  %4358 = lshr i64 %4336, 63
  %4359 = trunc i64 %4358 to i8
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4359, i8* %4360, align 1
  %4361 = lshr i64 %4333, 63
  %4362 = xor i64 %4358, %4361
  %4363 = add i64 %4362, %4358
  %4364 = icmp eq i64 %4363, 2
  %4365 = zext i1 %4364 to i8
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4365, i8* %4366, align 1
  store %struct.Memory* %loadMem_42ca47, %struct.Memory** %MEMORY
  %loadMem_42ca4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4368 = getelementptr inbounds %struct.GPR, %struct.GPR* %4367, i32 0, i32 33
  %4369 = getelementptr inbounds %struct.Reg, %struct.Reg* %4368, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %4369 to i64*
  %4370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4371 = getelementptr inbounds %struct.GPR, %struct.GPR* %4370, i32 0, i32 5
  %4372 = getelementptr inbounds %struct.Reg, %struct.Reg* %4371, i32 0, i32 0
  %RCX.i171 = bitcast %union.anon* %4372 to i64*
  %4373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4374 = getelementptr inbounds %struct.GPR, %struct.GPR* %4373, i32 0, i32 15
  %4375 = getelementptr inbounds %struct.Reg, %struct.Reg* %4374, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %4375 to i64*
  %4376 = load i64, i64* %RBP.i172
  %4377 = sub i64 %4376, 20
  %4378 = load i64, i64* %PC.i170
  %4379 = add i64 %4378, 4
  store i64 %4379, i64* %PC.i170
  %4380 = inttoptr i64 %4377 to i32*
  %4381 = load i32, i32* %4380
  %4382 = sext i32 %4381 to i64
  store i64 %4382, i64* %RCX.i171, align 8
  store %struct.Memory* %loadMem_42ca4d, %struct.Memory** %MEMORY
  %loadMem_42ca51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4384 = getelementptr inbounds %struct.GPR, %struct.GPR* %4383, i32 0, i32 33
  %4385 = getelementptr inbounds %struct.Reg, %struct.Reg* %4384, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %4385 to i64*
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4387 = getelementptr inbounds %struct.GPR, %struct.GPR* %4386, i32 0, i32 5
  %4388 = getelementptr inbounds %struct.Reg, %struct.Reg* %4387, i32 0, i32 0
  %RCX.i169 = bitcast %union.anon* %4388 to i64*
  %4389 = load i64, i64* %RCX.i169
  %4390 = load i64, i64* %PC.i168
  %4391 = add i64 %4390, 4
  store i64 %4391, i64* %PC.i168
  %4392 = shl i64 %4389, 3
  %4393 = icmp slt i64 %4392, 0
  %4394 = shl i64 %4392, 1
  store i64 %4394, i64* %RCX.i169, align 8
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4396 = zext i1 %4393 to i8
  store i8 %4396, i8* %4395, align 1
  %4397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4398 = trunc i64 %4394 to i32
  %4399 = and i32 %4398, 254
  %4400 = call i32 @llvm.ctpop.i32(i32 %4399)
  %4401 = trunc i32 %4400 to i8
  %4402 = and i8 %4401, 1
  %4403 = xor i8 %4402, 1
  store i8 %4403, i8* %4397, align 1
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4404, align 1
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4406 = icmp eq i64 %4394, 0
  %4407 = zext i1 %4406 to i8
  store i8 %4407, i8* %4405, align 1
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4409 = lshr i64 %4394, 63
  %4410 = trunc i64 %4409 to i8
  store i8 %4410, i8* %4408, align 1
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4411, align 1
  store %struct.Memory* %loadMem_42ca51, %struct.Memory** %MEMORY
  %loadMem_42ca55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4413 = getelementptr inbounds %struct.GPR, %struct.GPR* %4412, i32 0, i32 33
  %4414 = getelementptr inbounds %struct.Reg, %struct.Reg* %4413, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %4414 to i64*
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4416 = getelementptr inbounds %struct.GPR, %struct.GPR* %4415, i32 0, i32 1
  %4417 = getelementptr inbounds %struct.Reg, %struct.Reg* %4416, i32 0, i32 0
  %RAX.i166 = bitcast %union.anon* %4417 to i64*
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4419 = getelementptr inbounds %struct.GPR, %struct.GPR* %4418, i32 0, i32 5
  %4420 = getelementptr inbounds %struct.Reg, %struct.Reg* %4419, i32 0, i32 0
  %RCX.i167 = bitcast %union.anon* %4420 to i64*
  %4421 = load i64, i64* %RAX.i166
  %4422 = load i64, i64* %RCX.i167
  %4423 = load i64, i64* %PC.i165
  %4424 = add i64 %4423, 3
  store i64 %4424, i64* %PC.i165
  %4425 = add i64 %4422, %4421
  store i64 %4425, i64* %RAX.i166, align 8
  %4426 = icmp ult i64 %4425, %4421
  %4427 = icmp ult i64 %4425, %4422
  %4428 = or i1 %4426, %4427
  %4429 = zext i1 %4428 to i8
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4429, i8* %4430, align 1
  %4431 = trunc i64 %4425 to i32
  %4432 = and i32 %4431, 255
  %4433 = call i32 @llvm.ctpop.i32(i32 %4432)
  %4434 = trunc i32 %4433 to i8
  %4435 = and i8 %4434, 1
  %4436 = xor i8 %4435, 1
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4436, i8* %4437, align 1
  %4438 = xor i64 %4422, %4421
  %4439 = xor i64 %4438, %4425
  %4440 = lshr i64 %4439, 4
  %4441 = trunc i64 %4440 to i8
  %4442 = and i8 %4441, 1
  %4443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4442, i8* %4443, align 1
  %4444 = icmp eq i64 %4425, 0
  %4445 = zext i1 %4444 to i8
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4445, i8* %4446, align 1
  %4447 = lshr i64 %4425, 63
  %4448 = trunc i64 %4447 to i8
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4448, i8* %4449, align 1
  %4450 = lshr i64 %4421, 63
  %4451 = lshr i64 %4422, 63
  %4452 = xor i64 %4447, %4450
  %4453 = xor i64 %4447, %4451
  %4454 = add i64 %4452, %4453
  %4455 = icmp eq i64 %4454, 2
  %4456 = zext i1 %4455 to i8
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4456, i8* %4457, align 1
  store %struct.Memory* %loadMem_42ca55, %struct.Memory** %MEMORY
  %loadMem_42ca58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4459 = getelementptr inbounds %struct.GPR, %struct.GPR* %4458, i32 0, i32 33
  %4460 = getelementptr inbounds %struct.Reg, %struct.Reg* %4459, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %4460 to i64*
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4462 = getelementptr inbounds %struct.GPR, %struct.GPR* %4461, i32 0, i32 1
  %4463 = getelementptr inbounds %struct.Reg, %struct.Reg* %4462, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %4463 to i64*
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4465 = getelementptr inbounds %struct.GPR, %struct.GPR* %4464, i32 0, i32 7
  %4466 = getelementptr inbounds %struct.Reg, %struct.Reg* %4465, i32 0, i32 0
  %RDX.i164 = bitcast %union.anon* %4466 to i64*
  %4467 = load i64, i64* %RAX.i163
  %4468 = add i64 %4467, 4
  %4469 = load i64, i64* %PC.i162
  %4470 = add i64 %4469, 3
  store i64 %4470, i64* %PC.i162
  %4471 = inttoptr i64 %4468 to i32*
  %4472 = load i32, i32* %4471
  %4473 = zext i32 %4472 to i64
  store i64 %4473, i64* %RDX.i164, align 8
  store %struct.Memory* %loadMem_42ca58, %struct.Memory** %MEMORY
  %loadMem_42ca5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4475 = getelementptr inbounds %struct.GPR, %struct.GPR* %4474, i32 0, i32 33
  %4476 = getelementptr inbounds %struct.Reg, %struct.Reg* %4475, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %4476 to i64*
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4478 = getelementptr inbounds %struct.GPR, %struct.GPR* %4477, i32 0, i32 1
  %4479 = getelementptr inbounds %struct.Reg, %struct.Reg* %4478, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %4479 to i64*
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4481 = getelementptr inbounds %struct.GPR, %struct.GPR* %4480, i32 0, i32 15
  %4482 = getelementptr inbounds %struct.Reg, %struct.Reg* %4481, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %4482 to i64*
  %4483 = load i64, i64* %RBP.i161
  %4484 = sub i64 %4483, 8
  %4485 = load i64, i64* %PC.i159
  %4486 = add i64 %4485, 4
  store i64 %4486, i64* %PC.i159
  %4487 = inttoptr i64 %4484 to i64*
  %4488 = load i64, i64* %4487
  store i64 %4488, i64* %RAX.i160, align 8
  store %struct.Memory* %loadMem_42ca5b, %struct.Memory** %MEMORY
  %loadMem_42ca5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4490 = getelementptr inbounds %struct.GPR, %struct.GPR* %4489, i32 0, i32 33
  %4491 = getelementptr inbounds %struct.Reg, %struct.Reg* %4490, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %4491 to i64*
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4493 = getelementptr inbounds %struct.GPR, %struct.GPR* %4492, i32 0, i32 1
  %4494 = getelementptr inbounds %struct.Reg, %struct.Reg* %4493, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %4494 to i64*
  %4495 = load i64, i64* %RAX.i158
  %4496 = load i64, i64* %PC.i157
  %4497 = add i64 %4496, 6
  store i64 %4497, i64* %PC.i157
  %4498 = add i64 35672, %4495
  store i64 %4498, i64* %RAX.i158, align 8
  %4499 = icmp ult i64 %4498, %4495
  %4500 = icmp ult i64 %4498, 35672
  %4501 = or i1 %4499, %4500
  %4502 = zext i1 %4501 to i8
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4502, i8* %4503, align 1
  %4504 = trunc i64 %4498 to i32
  %4505 = and i32 %4504, 255
  %4506 = call i32 @llvm.ctpop.i32(i32 %4505)
  %4507 = trunc i32 %4506 to i8
  %4508 = and i8 %4507, 1
  %4509 = xor i8 %4508, 1
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4509, i8* %4510, align 1
  %4511 = xor i64 35672, %4495
  %4512 = xor i64 %4511, %4498
  %4513 = lshr i64 %4512, 4
  %4514 = trunc i64 %4513 to i8
  %4515 = and i8 %4514, 1
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4515, i8* %4516, align 1
  %4517 = icmp eq i64 %4498, 0
  %4518 = zext i1 %4517 to i8
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4518, i8* %4519, align 1
  %4520 = lshr i64 %4498, 63
  %4521 = trunc i64 %4520 to i8
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4521, i8* %4522, align 1
  %4523 = lshr i64 %4495, 63
  %4524 = xor i64 %4520, %4523
  %4525 = add i64 %4524, %4520
  %4526 = icmp eq i64 %4525, 2
  %4527 = zext i1 %4526 to i8
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4527, i8* %4528, align 1
  store %struct.Memory* %loadMem_42ca5f, %struct.Memory** %MEMORY
  %loadMem_42ca65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4530 = getelementptr inbounds %struct.GPR, %struct.GPR* %4529, i32 0, i32 33
  %4531 = getelementptr inbounds %struct.Reg, %struct.Reg* %4530, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %4531 to i64*
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4533 = getelementptr inbounds %struct.GPR, %struct.GPR* %4532, i32 0, i32 9
  %4534 = getelementptr inbounds %struct.Reg, %struct.Reg* %4533, i32 0, i32 0
  %RSI.i155 = bitcast %union.anon* %4534 to i64*
  %4535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4536 = getelementptr inbounds %struct.GPR, %struct.GPR* %4535, i32 0, i32 15
  %4537 = getelementptr inbounds %struct.Reg, %struct.Reg* %4536, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %4537 to i64*
  %4538 = load i64, i64* %RBP.i156
  %4539 = sub i64 %4538, 20
  %4540 = load i64, i64* %PC.i154
  %4541 = add i64 %4540, 3
  store i64 %4541, i64* %PC.i154
  %4542 = inttoptr i64 %4539 to i32*
  %4543 = load i32, i32* %4542
  %4544 = zext i32 %4543 to i64
  store i64 %4544, i64* %RSI.i155, align 8
  store %struct.Memory* %loadMem_42ca65, %struct.Memory** %MEMORY
  %loadMem_42ca68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4546 = getelementptr inbounds %struct.GPR, %struct.GPR* %4545, i32 0, i32 33
  %4547 = getelementptr inbounds %struct.Reg, %struct.Reg* %4546, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %4547 to i64*
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4549 = getelementptr inbounds %struct.GPR, %struct.GPR* %4548, i32 0, i32 9
  %4550 = getelementptr inbounds %struct.Reg, %struct.Reg* %4549, i32 0, i32 0
  %RSI.i153 = bitcast %union.anon* %4550 to i64*
  %4551 = load i64, i64* %RSI.i153
  %4552 = load i64, i64* %PC.i152
  %4553 = add i64 %4552, 3
  store i64 %4553, i64* %PC.i152
  %4554 = trunc i64 %4551 to i32
  %4555 = sub i32 %4554, 1
  %4556 = zext i32 %4555 to i64
  store i64 %4556, i64* %RSI.i153, align 8
  %4557 = icmp ult i32 %4554, 1
  %4558 = zext i1 %4557 to i8
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4558, i8* %4559, align 1
  %4560 = and i32 %4555, 255
  %4561 = call i32 @llvm.ctpop.i32(i32 %4560)
  %4562 = trunc i32 %4561 to i8
  %4563 = and i8 %4562, 1
  %4564 = xor i8 %4563, 1
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4564, i8* %4565, align 1
  %4566 = xor i64 1, %4551
  %4567 = trunc i64 %4566 to i32
  %4568 = xor i32 %4567, %4555
  %4569 = lshr i32 %4568, 4
  %4570 = trunc i32 %4569 to i8
  %4571 = and i8 %4570, 1
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4571, i8* %4572, align 1
  %4573 = icmp eq i32 %4555, 0
  %4574 = zext i1 %4573 to i8
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4574, i8* %4575, align 1
  %4576 = lshr i32 %4555, 31
  %4577 = trunc i32 %4576 to i8
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4577, i8* %4578, align 1
  %4579 = lshr i32 %4554, 31
  %4580 = xor i32 %4576, %4579
  %4581 = add i32 %4580, %4579
  %4582 = icmp eq i32 %4581, 2
  %4583 = zext i1 %4582 to i8
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4583, i8* %4584, align 1
  store %struct.Memory* %loadMem_42ca68, %struct.Memory** %MEMORY
  %loadMem_42ca6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4586 = getelementptr inbounds %struct.GPR, %struct.GPR* %4585, i32 0, i32 33
  %4587 = getelementptr inbounds %struct.Reg, %struct.Reg* %4586, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %4587 to i64*
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4589 = getelementptr inbounds %struct.GPR, %struct.GPR* %4588, i32 0, i32 9
  %4590 = getelementptr inbounds %struct.Reg, %struct.Reg* %4589, i32 0, i32 0
  %ESI.i150 = bitcast %union.anon* %4590 to i32*
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4592 = getelementptr inbounds %struct.GPR, %struct.GPR* %4591, i32 0, i32 5
  %4593 = getelementptr inbounds %struct.Reg, %struct.Reg* %4592, i32 0, i32 0
  %RCX.i151 = bitcast %union.anon* %4593 to i64*
  %4594 = load i32, i32* %ESI.i150
  %4595 = zext i32 %4594 to i64
  %4596 = load i64, i64* %PC.i149
  %4597 = add i64 %4596, 3
  store i64 %4597, i64* %PC.i149
  %4598 = shl i64 %4595, 32
  %4599 = ashr exact i64 %4598, 32
  store i64 %4599, i64* %RCX.i151, align 8
  store %struct.Memory* %loadMem_42ca6b, %struct.Memory** %MEMORY
  %loadMem_42ca6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4601 = getelementptr inbounds %struct.GPR, %struct.GPR* %4600, i32 0, i32 33
  %4602 = getelementptr inbounds %struct.Reg, %struct.Reg* %4601, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %4602 to i64*
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4604 = getelementptr inbounds %struct.GPR, %struct.GPR* %4603, i32 0, i32 5
  %4605 = getelementptr inbounds %struct.Reg, %struct.Reg* %4604, i32 0, i32 0
  %RCX.i148 = bitcast %union.anon* %4605 to i64*
  %4606 = load i64, i64* %RCX.i148
  %4607 = load i64, i64* %PC.i147
  %4608 = add i64 %4607, 4
  store i64 %4608, i64* %PC.i147
  %4609 = shl i64 %4606, 3
  %4610 = icmp slt i64 %4609, 0
  %4611 = shl i64 %4609, 1
  store i64 %4611, i64* %RCX.i148, align 8
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4613 = zext i1 %4610 to i8
  store i8 %4613, i8* %4612, align 1
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4615 = trunc i64 %4611 to i32
  %4616 = and i32 %4615, 254
  %4617 = call i32 @llvm.ctpop.i32(i32 %4616)
  %4618 = trunc i32 %4617 to i8
  %4619 = and i8 %4618, 1
  %4620 = xor i8 %4619, 1
  store i8 %4620, i8* %4614, align 1
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4621, align 1
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4623 = icmp eq i64 %4611, 0
  %4624 = zext i1 %4623 to i8
  store i8 %4624, i8* %4622, align 1
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4626 = lshr i64 %4611, 63
  %4627 = trunc i64 %4626 to i8
  store i8 %4627, i8* %4625, align 1
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4628, align 1
  store %struct.Memory* %loadMem_42ca6e, %struct.Memory** %MEMORY
  %loadMem_42ca72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4630 = getelementptr inbounds %struct.GPR, %struct.GPR* %4629, i32 0, i32 33
  %4631 = getelementptr inbounds %struct.Reg, %struct.Reg* %4630, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %4631 to i64*
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4633 = getelementptr inbounds %struct.GPR, %struct.GPR* %4632, i32 0, i32 1
  %4634 = getelementptr inbounds %struct.Reg, %struct.Reg* %4633, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %4634 to i64*
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4636 = getelementptr inbounds %struct.GPR, %struct.GPR* %4635, i32 0, i32 5
  %4637 = getelementptr inbounds %struct.Reg, %struct.Reg* %4636, i32 0, i32 0
  %RCX.i146 = bitcast %union.anon* %4637 to i64*
  %4638 = load i64, i64* %RAX.i145
  %4639 = load i64, i64* %RCX.i146
  %4640 = load i64, i64* %PC.i144
  %4641 = add i64 %4640, 3
  store i64 %4641, i64* %PC.i144
  %4642 = add i64 %4639, %4638
  store i64 %4642, i64* %RAX.i145, align 8
  %4643 = icmp ult i64 %4642, %4638
  %4644 = icmp ult i64 %4642, %4639
  %4645 = or i1 %4643, %4644
  %4646 = zext i1 %4645 to i8
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4646, i8* %4647, align 1
  %4648 = trunc i64 %4642 to i32
  %4649 = and i32 %4648, 255
  %4650 = call i32 @llvm.ctpop.i32(i32 %4649)
  %4651 = trunc i32 %4650 to i8
  %4652 = and i8 %4651, 1
  %4653 = xor i8 %4652, 1
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4653, i8* %4654, align 1
  %4655 = xor i64 %4639, %4638
  %4656 = xor i64 %4655, %4642
  %4657 = lshr i64 %4656, 4
  %4658 = trunc i64 %4657 to i8
  %4659 = and i8 %4658, 1
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4659, i8* %4660, align 1
  %4661 = icmp eq i64 %4642, 0
  %4662 = zext i1 %4661 to i8
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4662, i8* %4663, align 1
  %4664 = lshr i64 %4642, 63
  %4665 = trunc i64 %4664 to i8
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4665, i8* %4666, align 1
  %4667 = lshr i64 %4638, 63
  %4668 = lshr i64 %4639, 63
  %4669 = xor i64 %4664, %4667
  %4670 = xor i64 %4664, %4668
  %4671 = add i64 %4669, %4670
  %4672 = icmp eq i64 %4671, 2
  %4673 = zext i1 %4672 to i8
  %4674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4673, i8* %4674, align 1
  store %struct.Memory* %loadMem_42ca72, %struct.Memory** %MEMORY
  %loadMem_42ca75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4676 = getelementptr inbounds %struct.GPR, %struct.GPR* %4675, i32 0, i32 33
  %4677 = getelementptr inbounds %struct.Reg, %struct.Reg* %4676, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %4677 to i64*
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4679 = getelementptr inbounds %struct.GPR, %struct.GPR* %4678, i32 0, i32 7
  %4680 = getelementptr inbounds %struct.Reg, %struct.Reg* %4679, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %4680 to i32*
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4682 = getelementptr inbounds %struct.GPR, %struct.GPR* %4681, i32 0, i32 1
  %4683 = getelementptr inbounds %struct.Reg, %struct.Reg* %4682, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %4683 to i64*
  %4684 = load i32, i32* %EDX.i
  %4685 = zext i32 %4684 to i64
  %4686 = load i64, i64* %RAX.i143
  %4687 = add i64 %4686, 4
  %4688 = load i64, i64* %PC.i142
  %4689 = add i64 %4688, 3
  store i64 %4689, i64* %PC.i142
  %4690 = inttoptr i64 %4687 to i32*
  %4691 = load i32, i32* %4690
  %4692 = sub i32 %4684, %4691
  %4693 = icmp ult i32 %4684, %4691
  %4694 = zext i1 %4693 to i8
  %4695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4694, i8* %4695, align 1
  %4696 = and i32 %4692, 255
  %4697 = call i32 @llvm.ctpop.i32(i32 %4696)
  %4698 = trunc i32 %4697 to i8
  %4699 = and i8 %4698, 1
  %4700 = xor i8 %4699, 1
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4700, i8* %4701, align 1
  %4702 = xor i32 %4691, %4684
  %4703 = xor i32 %4702, %4692
  %4704 = lshr i32 %4703, 4
  %4705 = trunc i32 %4704 to i8
  %4706 = and i8 %4705, 1
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4706, i8* %4707, align 1
  %4708 = icmp eq i32 %4692, 0
  %4709 = zext i1 %4708 to i8
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4709, i8* %4710, align 1
  %4711 = lshr i32 %4692, 31
  %4712 = trunc i32 %4711 to i8
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4712, i8* %4713, align 1
  %4714 = lshr i32 %4684, 31
  %4715 = lshr i32 %4691, 31
  %4716 = xor i32 %4715, %4714
  %4717 = xor i32 %4711, %4714
  %4718 = add i32 %4717, %4716
  %4719 = icmp eq i32 %4718, 2
  %4720 = zext i1 %4719 to i8
  %4721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4720, i8* %4721, align 1
  store %struct.Memory* %loadMem_42ca75, %struct.Memory** %MEMORY
  %loadMem_42ca78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4723 = getelementptr inbounds %struct.GPR, %struct.GPR* %4722, i32 0, i32 33
  %4724 = getelementptr inbounds %struct.Reg, %struct.Reg* %4723, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %4724 to i64*
  %4725 = load i64, i64* %PC.i141
  %4726 = add i64 %4725, 248
  %4727 = load i64, i64* %PC.i141
  %4728 = add i64 %4727, 6
  %4729 = load i64, i64* %PC.i141
  %4730 = add i64 %4729, 6
  store i64 %4730, i64* %PC.i141
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4732 = load i8, i8* %4731, align 1
  store i8 %4732, i8* %BRANCH_TAKEN, align 1
  %4733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4734 = icmp ne i8 %4732, 0
  %4735 = select i1 %4734, i64 %4726, i64 %4728
  store i64 %4735, i64* %4733, align 8
  store %struct.Memory* %loadMem_42ca78, %struct.Memory** %MEMORY
  %loadBr_42ca78 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ca78 = icmp eq i8 %loadBr_42ca78, 1
  br i1 %cmpBr_42ca78, label %block_.L_42cb70, label %block_.L_42ca7e

block_.L_42ca7e:                                  ; preds = %block_42ca43, %block_.L_42ca37
  %loadMem_42ca7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4737 = getelementptr inbounds %struct.GPR, %struct.GPR* %4736, i32 0, i32 33
  %4738 = getelementptr inbounds %struct.Reg, %struct.Reg* %4737, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %4738 to i64*
  %4739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4740 = getelementptr inbounds %struct.GPR, %struct.GPR* %4739, i32 0, i32 1
  %4741 = getelementptr inbounds %struct.Reg, %struct.Reg* %4740, i32 0, i32 0
  %RAX.i139 = bitcast %union.anon* %4741 to i64*
  %4742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4743 = getelementptr inbounds %struct.GPR, %struct.GPR* %4742, i32 0, i32 15
  %4744 = getelementptr inbounds %struct.Reg, %struct.Reg* %4743, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %4744 to i64*
  %4745 = load i64, i64* %RBP.i140
  %4746 = sub i64 %4745, 8
  %4747 = load i64, i64* %PC.i138
  %4748 = add i64 %4747, 4
  store i64 %4748, i64* %PC.i138
  %4749 = inttoptr i64 %4746 to i64*
  %4750 = load i64, i64* %4749
  store i64 %4750, i64* %RAX.i139, align 8
  store %struct.Memory* %loadMem_42ca7e, %struct.Memory** %MEMORY
  %loadMem_42ca82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4752 = getelementptr inbounds %struct.GPR, %struct.GPR* %4751, i32 0, i32 33
  %4753 = getelementptr inbounds %struct.Reg, %struct.Reg* %4752, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %4753 to i64*
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4755 = getelementptr inbounds %struct.GPR, %struct.GPR* %4754, i32 0, i32 1
  %4756 = getelementptr inbounds %struct.Reg, %struct.Reg* %4755, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %4756 to i64*
  %4757 = load i64, i64* %RAX.i137
  %4758 = load i64, i64* %PC.i136
  %4759 = add i64 %4758, 6
  store i64 %4759, i64* %PC.i136
  %4760 = add i64 35672, %4757
  store i64 %4760, i64* %RAX.i137, align 8
  %4761 = icmp ult i64 %4760, %4757
  %4762 = icmp ult i64 %4760, 35672
  %4763 = or i1 %4761, %4762
  %4764 = zext i1 %4763 to i8
  %4765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4764, i8* %4765, align 1
  %4766 = trunc i64 %4760 to i32
  %4767 = and i32 %4766, 255
  %4768 = call i32 @llvm.ctpop.i32(i32 %4767)
  %4769 = trunc i32 %4768 to i8
  %4770 = and i8 %4769, 1
  %4771 = xor i8 %4770, 1
  %4772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4771, i8* %4772, align 1
  %4773 = xor i64 35672, %4757
  %4774 = xor i64 %4773, %4760
  %4775 = lshr i64 %4774, 4
  %4776 = trunc i64 %4775 to i8
  %4777 = and i8 %4776, 1
  %4778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4777, i8* %4778, align 1
  %4779 = icmp eq i64 %4760, 0
  %4780 = zext i1 %4779 to i8
  %4781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4780, i8* %4781, align 1
  %4782 = lshr i64 %4760, 63
  %4783 = trunc i64 %4782 to i8
  %4784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4783, i8* %4784, align 1
  %4785 = lshr i64 %4757, 63
  %4786 = xor i64 %4782, %4785
  %4787 = add i64 %4786, %4782
  %4788 = icmp eq i64 %4787, 2
  %4789 = zext i1 %4788 to i8
  %4790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4789, i8* %4790, align 1
  store %struct.Memory* %loadMem_42ca82, %struct.Memory** %MEMORY
  %loadMem_42ca88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4792 = getelementptr inbounds %struct.GPR, %struct.GPR* %4791, i32 0, i32 33
  %4793 = getelementptr inbounds %struct.Reg, %struct.Reg* %4792, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %4793 to i64*
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4795 = getelementptr inbounds %struct.GPR, %struct.GPR* %4794, i32 0, i32 5
  %4796 = getelementptr inbounds %struct.Reg, %struct.Reg* %4795, i32 0, i32 0
  %RCX.i134 = bitcast %union.anon* %4796 to i64*
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4798 = getelementptr inbounds %struct.GPR, %struct.GPR* %4797, i32 0, i32 15
  %4799 = getelementptr inbounds %struct.Reg, %struct.Reg* %4798, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %4799 to i64*
  %4800 = load i64, i64* %RBP.i135
  %4801 = sub i64 %4800, 20
  %4802 = load i64, i64* %PC.i133
  %4803 = add i64 %4802, 4
  store i64 %4803, i64* %PC.i133
  %4804 = inttoptr i64 %4801 to i32*
  %4805 = load i32, i32* %4804
  %4806 = sext i32 %4805 to i64
  store i64 %4806, i64* %RCX.i134, align 8
  store %struct.Memory* %loadMem_42ca88, %struct.Memory** %MEMORY
  %loadMem_42ca8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4808 = getelementptr inbounds %struct.GPR, %struct.GPR* %4807, i32 0, i32 33
  %4809 = getelementptr inbounds %struct.Reg, %struct.Reg* %4808, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %4809 to i64*
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4811 = getelementptr inbounds %struct.GPR, %struct.GPR* %4810, i32 0, i32 5
  %4812 = getelementptr inbounds %struct.Reg, %struct.Reg* %4811, i32 0, i32 0
  %RCX.i132 = bitcast %union.anon* %4812 to i64*
  %4813 = load i64, i64* %RCX.i132
  %4814 = load i64, i64* %PC.i131
  %4815 = add i64 %4814, 4
  store i64 %4815, i64* %PC.i131
  %4816 = shl i64 %4813, 3
  %4817 = icmp slt i64 %4816, 0
  %4818 = shl i64 %4816, 1
  store i64 %4818, i64* %RCX.i132, align 8
  %4819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4820 = zext i1 %4817 to i8
  store i8 %4820, i8* %4819, align 1
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4822 = trunc i64 %4818 to i32
  %4823 = and i32 %4822, 254
  %4824 = call i32 @llvm.ctpop.i32(i32 %4823)
  %4825 = trunc i32 %4824 to i8
  %4826 = and i8 %4825, 1
  %4827 = xor i8 %4826, 1
  store i8 %4827, i8* %4821, align 1
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4828, align 1
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4830 = icmp eq i64 %4818, 0
  %4831 = zext i1 %4830 to i8
  store i8 %4831, i8* %4829, align 1
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4833 = lshr i64 %4818, 63
  %4834 = trunc i64 %4833 to i8
  store i8 %4834, i8* %4832, align 1
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4835, align 1
  store %struct.Memory* %loadMem_42ca8c, %struct.Memory** %MEMORY
  %loadMem_42ca90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4837 = getelementptr inbounds %struct.GPR, %struct.GPR* %4836, i32 0, i32 33
  %4838 = getelementptr inbounds %struct.Reg, %struct.Reg* %4837, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %4838 to i64*
  %4839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4840 = getelementptr inbounds %struct.GPR, %struct.GPR* %4839, i32 0, i32 1
  %4841 = getelementptr inbounds %struct.Reg, %struct.Reg* %4840, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %4841 to i64*
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4843 = getelementptr inbounds %struct.GPR, %struct.GPR* %4842, i32 0, i32 5
  %4844 = getelementptr inbounds %struct.Reg, %struct.Reg* %4843, i32 0, i32 0
  %RCX.i130 = bitcast %union.anon* %4844 to i64*
  %4845 = load i64, i64* %RAX.i129
  %4846 = load i64, i64* %RCX.i130
  %4847 = load i64, i64* %PC.i128
  %4848 = add i64 %4847, 3
  store i64 %4848, i64* %PC.i128
  %4849 = add i64 %4846, %4845
  store i64 %4849, i64* %RAX.i129, align 8
  %4850 = icmp ult i64 %4849, %4845
  %4851 = icmp ult i64 %4849, %4846
  %4852 = or i1 %4850, %4851
  %4853 = zext i1 %4852 to i8
  %4854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4853, i8* %4854, align 1
  %4855 = trunc i64 %4849 to i32
  %4856 = and i32 %4855, 255
  %4857 = call i32 @llvm.ctpop.i32(i32 %4856)
  %4858 = trunc i32 %4857 to i8
  %4859 = and i8 %4858, 1
  %4860 = xor i8 %4859, 1
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4860, i8* %4861, align 1
  %4862 = xor i64 %4846, %4845
  %4863 = xor i64 %4862, %4849
  %4864 = lshr i64 %4863, 4
  %4865 = trunc i64 %4864 to i8
  %4866 = and i8 %4865, 1
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4866, i8* %4867, align 1
  %4868 = icmp eq i64 %4849, 0
  %4869 = zext i1 %4868 to i8
  %4870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4869, i8* %4870, align 1
  %4871 = lshr i64 %4849, 63
  %4872 = trunc i64 %4871 to i8
  %4873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4872, i8* %4873, align 1
  %4874 = lshr i64 %4845, 63
  %4875 = lshr i64 %4846, 63
  %4876 = xor i64 %4871, %4874
  %4877 = xor i64 %4871, %4875
  %4878 = add i64 %4876, %4877
  %4879 = icmp eq i64 %4878, 2
  %4880 = zext i1 %4879 to i8
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4880, i8* %4881, align 1
  store %struct.Memory* %loadMem_42ca90, %struct.Memory** %MEMORY
  %loadMem_42ca93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4883 = getelementptr inbounds %struct.GPR, %struct.GPR* %4882, i32 0, i32 33
  %4884 = getelementptr inbounds %struct.Reg, %struct.Reg* %4883, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %4884 to i64*
  %4885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4886 = getelementptr inbounds %struct.GPR, %struct.GPR* %4885, i32 0, i32 1
  %4887 = getelementptr inbounds %struct.Reg, %struct.Reg* %4886, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %4887 to i64*
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4889 = getelementptr inbounds %struct.GPR, %struct.GPR* %4888, i32 0, i32 11
  %4890 = getelementptr inbounds %struct.Reg, %struct.Reg* %4889, i32 0, i32 0
  %RDI.i127 = bitcast %union.anon* %4890 to i64*
  %4891 = load i64, i64* %RAX.i126
  %4892 = add i64 %4891, 4
  %4893 = load i64, i64* %PC.i125
  %4894 = add i64 %4893, 3
  store i64 %4894, i64* %PC.i125
  %4895 = inttoptr i64 %4892 to i32*
  %4896 = load i32, i32* %4895
  %4897 = zext i32 %4896 to i64
  store i64 %4897, i64* %RDI.i127, align 8
  store %struct.Memory* %loadMem_42ca93, %struct.Memory** %MEMORY
  %loadMem_42ca96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4899 = getelementptr inbounds %struct.GPR, %struct.GPR* %4898, i32 0, i32 33
  %4900 = getelementptr inbounds %struct.Reg, %struct.Reg* %4899, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %4900 to i64*
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4902 = getelementptr inbounds %struct.GPR, %struct.GPR* %4901, i32 0, i32 9
  %4903 = getelementptr inbounds %struct.Reg, %struct.Reg* %4902, i32 0, i32 0
  %RSI.i123 = bitcast %union.anon* %4903 to i64*
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4905 = getelementptr inbounds %struct.GPR, %struct.GPR* %4904, i32 0, i32 15
  %4906 = getelementptr inbounds %struct.Reg, %struct.Reg* %4905, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %4906 to i64*
  %4907 = load i64, i64* %RBP.i124
  %4908 = sub i64 %4907, 12
  %4909 = load i64, i64* %PC.i122
  %4910 = add i64 %4909, 3
  store i64 %4910, i64* %PC.i122
  %4911 = inttoptr i64 %4908 to i32*
  %4912 = load i32, i32* %4911
  %4913 = zext i32 %4912 to i64
  store i64 %4913, i64* %RSI.i123, align 8
  store %struct.Memory* %loadMem_42ca96, %struct.Memory** %MEMORY
  %loadMem_42ca99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4915 = getelementptr inbounds %struct.GPR, %struct.GPR* %4914, i32 0, i32 33
  %4916 = getelementptr inbounds %struct.Reg, %struct.Reg* %4915, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %4916 to i64*
  %4917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4918 = getelementptr inbounds %struct.GPR, %struct.GPR* %4917, i32 0, i32 15
  %4919 = getelementptr inbounds %struct.Reg, %struct.Reg* %4918, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %4919 to i64*
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4921 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4920, i64 0, i64 0
  %YMM0.i121 = bitcast %union.VectorReg* %4921 to %"class.std::bitset"*
  %4922 = bitcast %"class.std::bitset"* %YMM0.i121 to i8*
  %4923 = load i64, i64* %RBP.i120
  %4924 = sub i64 %4923, 32
  %4925 = load i64, i64* %PC.i119
  %4926 = add i64 %4925, 5
  store i64 %4926, i64* %PC.i119
  %4927 = inttoptr i64 %4924 to float*
  %4928 = load float, float* %4927
  %4929 = bitcast i8* %4922 to float*
  store float %4928, float* %4929, align 1
  %4930 = getelementptr inbounds i8, i8* %4922, i64 4
  %4931 = bitcast i8* %4930 to float*
  store float 0.000000e+00, float* %4931, align 1
  %4932 = getelementptr inbounds i8, i8* %4922, i64 8
  %4933 = bitcast i8* %4932 to float*
  store float 0.000000e+00, float* %4933, align 1
  %4934 = getelementptr inbounds i8, i8* %4922, i64 12
  %4935 = bitcast i8* %4934 to float*
  store float 0.000000e+00, float* %4935, align 1
  store %struct.Memory* %loadMem_42ca99, %struct.Memory** %MEMORY
  %loadMem_42ca9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4937 = getelementptr inbounds %struct.GPR, %struct.GPR* %4936, i32 0, i32 33
  %4938 = getelementptr inbounds %struct.Reg, %struct.Reg* %4937, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %4938 to i64*
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4940 = getelementptr inbounds %struct.GPR, %struct.GPR* %4939, i32 0, i32 1
  %4941 = getelementptr inbounds %struct.Reg, %struct.Reg* %4940, i32 0, i32 0
  %RAX.i117 = bitcast %union.anon* %4941 to i64*
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4943 = getelementptr inbounds %struct.GPR, %struct.GPR* %4942, i32 0, i32 15
  %4944 = getelementptr inbounds %struct.Reg, %struct.Reg* %4943, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %4944 to i64*
  %4945 = load i64, i64* %RBP.i118
  %4946 = sub i64 %4945, 8
  %4947 = load i64, i64* %PC.i116
  %4948 = add i64 %4947, 4
  store i64 %4948, i64* %PC.i116
  %4949 = inttoptr i64 %4946 to i64*
  %4950 = load i64, i64* %4949
  store i64 %4950, i64* %RAX.i117, align 8
  store %struct.Memory* %loadMem_42ca9e, %struct.Memory** %MEMORY
  %loadMem_42caa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4952 = getelementptr inbounds %struct.GPR, %struct.GPR* %4951, i32 0, i32 33
  %4953 = getelementptr inbounds %struct.Reg, %struct.Reg* %4952, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %4953 to i64*
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4955 = getelementptr inbounds %struct.GPR, %struct.GPR* %4954, i32 0, i32 1
  %4956 = getelementptr inbounds %struct.Reg, %struct.Reg* %4955, i32 0, i32 0
  %RAX.i115 = bitcast %union.anon* %4956 to i64*
  %4957 = load i64, i64* %RAX.i115
  %4958 = load i64, i64* %PC.i114
  %4959 = add i64 %4958, 6
  store i64 %4959, i64* %PC.i114
  %4960 = add i64 35672, %4957
  store i64 %4960, i64* %RAX.i115, align 8
  %4961 = icmp ult i64 %4960, %4957
  %4962 = icmp ult i64 %4960, 35672
  %4963 = or i1 %4961, %4962
  %4964 = zext i1 %4963 to i8
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4964, i8* %4965, align 1
  %4966 = trunc i64 %4960 to i32
  %4967 = and i32 %4966, 255
  %4968 = call i32 @llvm.ctpop.i32(i32 %4967)
  %4969 = trunc i32 %4968 to i8
  %4970 = and i8 %4969, 1
  %4971 = xor i8 %4970, 1
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4971, i8* %4972, align 1
  %4973 = xor i64 35672, %4957
  %4974 = xor i64 %4973, %4960
  %4975 = lshr i64 %4974, 4
  %4976 = trunc i64 %4975 to i8
  %4977 = and i8 %4976, 1
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4977, i8* %4978, align 1
  %4979 = icmp eq i64 %4960, 0
  %4980 = zext i1 %4979 to i8
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4980, i8* %4981, align 1
  %4982 = lshr i64 %4960, 63
  %4983 = trunc i64 %4982 to i8
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4983, i8* %4984, align 1
  %4985 = lshr i64 %4957, 63
  %4986 = xor i64 %4982, %4985
  %4987 = add i64 %4986, %4982
  %4988 = icmp eq i64 %4987, 2
  %4989 = zext i1 %4988 to i8
  %4990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4989, i8* %4990, align 1
  store %struct.Memory* %loadMem_42caa2, %struct.Memory** %MEMORY
  %loadMem_42caa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4992 = getelementptr inbounds %struct.GPR, %struct.GPR* %4991, i32 0, i32 33
  %4993 = getelementptr inbounds %struct.Reg, %struct.Reg* %4992, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %4993 to i64*
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 5
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %RCX.i112 = bitcast %union.anon* %4996 to i64*
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4998 = getelementptr inbounds %struct.GPR, %struct.GPR* %4997, i32 0, i32 15
  %4999 = getelementptr inbounds %struct.Reg, %struct.Reg* %4998, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %4999 to i64*
  %5000 = load i64, i64* %RBP.i113
  %5001 = sub i64 %5000, 20
  %5002 = load i64, i64* %PC.i111
  %5003 = add i64 %5002, 4
  store i64 %5003, i64* %PC.i111
  %5004 = inttoptr i64 %5001 to i32*
  %5005 = load i32, i32* %5004
  %5006 = sext i32 %5005 to i64
  store i64 %5006, i64* %RCX.i112, align 8
  store %struct.Memory* %loadMem_42caa8, %struct.Memory** %MEMORY
  %loadMem_42caac = load %struct.Memory*, %struct.Memory** %MEMORY
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5008 = getelementptr inbounds %struct.GPR, %struct.GPR* %5007, i32 0, i32 33
  %5009 = getelementptr inbounds %struct.Reg, %struct.Reg* %5008, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %5009 to i64*
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5011 = getelementptr inbounds %struct.GPR, %struct.GPR* %5010, i32 0, i32 5
  %5012 = getelementptr inbounds %struct.Reg, %struct.Reg* %5011, i32 0, i32 0
  %RCX.i110 = bitcast %union.anon* %5012 to i64*
  %5013 = load i64, i64* %RCX.i110
  %5014 = load i64, i64* %PC.i109
  %5015 = add i64 %5014, 4
  store i64 %5015, i64* %PC.i109
  %5016 = shl i64 %5013, 3
  %5017 = icmp slt i64 %5016, 0
  %5018 = shl i64 %5016, 1
  store i64 %5018, i64* %RCX.i110, align 8
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5020 = zext i1 %5017 to i8
  store i8 %5020, i8* %5019, align 1
  %5021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5022 = trunc i64 %5018 to i32
  %5023 = and i32 %5022, 254
  %5024 = call i32 @llvm.ctpop.i32(i32 %5023)
  %5025 = trunc i32 %5024 to i8
  %5026 = and i8 %5025, 1
  %5027 = xor i8 %5026, 1
  store i8 %5027, i8* %5021, align 1
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5028, align 1
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5030 = icmp eq i64 %5018, 0
  %5031 = zext i1 %5030 to i8
  store i8 %5031, i8* %5029, align 1
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5033 = lshr i64 %5018, 63
  %5034 = trunc i64 %5033 to i8
  store i8 %5034, i8* %5032, align 1
  %5035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5035, align 1
  store %struct.Memory* %loadMem_42caac, %struct.Memory** %MEMORY
  %loadMem_42cab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5037 = getelementptr inbounds %struct.GPR, %struct.GPR* %5036, i32 0, i32 33
  %5038 = getelementptr inbounds %struct.Reg, %struct.Reg* %5037, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %5038 to i64*
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5040 = getelementptr inbounds %struct.GPR, %struct.GPR* %5039, i32 0, i32 1
  %5041 = getelementptr inbounds %struct.Reg, %struct.Reg* %5040, i32 0, i32 0
  %RAX.i107 = bitcast %union.anon* %5041 to i64*
  %5042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5043 = getelementptr inbounds %struct.GPR, %struct.GPR* %5042, i32 0, i32 5
  %5044 = getelementptr inbounds %struct.Reg, %struct.Reg* %5043, i32 0, i32 0
  %RCX.i108 = bitcast %union.anon* %5044 to i64*
  %5045 = load i64, i64* %RAX.i107
  %5046 = load i64, i64* %RCX.i108
  %5047 = load i64, i64* %PC.i106
  %5048 = add i64 %5047, 3
  store i64 %5048, i64* %PC.i106
  %5049 = add i64 %5046, %5045
  store i64 %5049, i64* %RAX.i107, align 8
  %5050 = icmp ult i64 %5049, %5045
  %5051 = icmp ult i64 %5049, %5046
  %5052 = or i1 %5050, %5051
  %5053 = zext i1 %5052 to i8
  %5054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5053, i8* %5054, align 1
  %5055 = trunc i64 %5049 to i32
  %5056 = and i32 %5055, 255
  %5057 = call i32 @llvm.ctpop.i32(i32 %5056)
  %5058 = trunc i32 %5057 to i8
  %5059 = and i8 %5058, 1
  %5060 = xor i8 %5059, 1
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5060, i8* %5061, align 1
  %5062 = xor i64 %5046, %5045
  %5063 = xor i64 %5062, %5049
  %5064 = lshr i64 %5063, 4
  %5065 = trunc i64 %5064 to i8
  %5066 = and i8 %5065, 1
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5066, i8* %5067, align 1
  %5068 = icmp eq i64 %5049, 0
  %5069 = zext i1 %5068 to i8
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5069, i8* %5070, align 1
  %5071 = lshr i64 %5049, 63
  %5072 = trunc i64 %5071 to i8
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5072, i8* %5073, align 1
  %5074 = lshr i64 %5045, 63
  %5075 = lshr i64 %5046, 63
  %5076 = xor i64 %5071, %5074
  %5077 = xor i64 %5071, %5075
  %5078 = add i64 %5076, %5077
  %5079 = icmp eq i64 %5078, 2
  %5080 = zext i1 %5079 to i8
  %5081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5080, i8* %5081, align 1
  store %struct.Memory* %loadMem_42cab0, %struct.Memory** %MEMORY
  %loadMem_42cab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5083 = getelementptr inbounds %struct.GPR, %struct.GPR* %5082, i32 0, i32 33
  %5084 = getelementptr inbounds %struct.Reg, %struct.Reg* %5083, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %5084 to i64*
  %5085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5086 = getelementptr inbounds %struct.GPR, %struct.GPR* %5085, i32 0, i32 1
  %5087 = getelementptr inbounds %struct.Reg, %struct.Reg* %5086, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %5087 to i64*
  %5088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5089 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5088, i64 0, i64 0
  %YMM0.i105 = bitcast %union.VectorReg* %5089 to %"class.std::bitset"*
  %5090 = bitcast %"class.std::bitset"* %YMM0.i105 to i8*
  %5091 = bitcast %"class.std::bitset"* %YMM0.i105 to i8*
  %5092 = load i64, i64* %RAX.i104
  %5093 = add i64 %5092, 8
  %5094 = load i64, i64* %PC.i103
  %5095 = add i64 %5094, 5
  store i64 %5095, i64* %PC.i103
  %5096 = bitcast i8* %5091 to <2 x float>*
  %5097 = load <2 x float>, <2 x float>* %5096, align 1
  %5098 = getelementptr inbounds i8, i8* %5091, i64 8
  %5099 = bitcast i8* %5098 to <2 x i32>*
  %5100 = load <2 x i32>, <2 x i32>* %5099, align 1
  %5101 = inttoptr i64 %5093 to float*
  %5102 = load float, float* %5101
  %5103 = extractelement <2 x float> %5097, i32 0
  %5104 = fmul float %5103, %5102
  %5105 = bitcast i8* %5090 to float*
  store float %5104, float* %5105, align 1
  %5106 = bitcast <2 x float> %5097 to <2 x i32>
  %5107 = extractelement <2 x i32> %5106, i32 1
  %5108 = getelementptr inbounds i8, i8* %5090, i64 4
  %5109 = bitcast i8* %5108 to i32*
  store i32 %5107, i32* %5109, align 1
  %5110 = extractelement <2 x i32> %5100, i32 0
  %5111 = getelementptr inbounds i8, i8* %5090, i64 8
  %5112 = bitcast i8* %5111 to i32*
  store i32 %5110, i32* %5112, align 1
  %5113 = extractelement <2 x i32> %5100, i32 1
  %5114 = getelementptr inbounds i8, i8* %5090, i64 12
  %5115 = bitcast i8* %5114 to i32*
  store i32 %5113, i32* %5115, align 1
  store %struct.Memory* %loadMem_42cab3, %struct.Memory** %MEMORY
  %loadMem_42cab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5117 = getelementptr inbounds %struct.GPR, %struct.GPR* %5116, i32 0, i32 33
  %5118 = getelementptr inbounds %struct.Reg, %struct.Reg* %5117, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %5118 to i64*
  %5119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5120 = getelementptr inbounds %struct.GPR, %struct.GPR* %5119, i32 0, i32 1
  %5121 = getelementptr inbounds %struct.Reg, %struct.Reg* %5120, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %5121 to i64*
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5123 = getelementptr inbounds %struct.GPR, %struct.GPR* %5122, i32 0, i32 15
  %5124 = getelementptr inbounds %struct.Reg, %struct.Reg* %5123, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %5124 to i64*
  %5125 = load i64, i64* %RBP.i102
  %5126 = sub i64 %5125, 8
  %5127 = load i64, i64* %PC.i100
  %5128 = add i64 %5127, 4
  store i64 %5128, i64* %PC.i100
  %5129 = inttoptr i64 %5126 to i64*
  %5130 = load i64, i64* %5129
  store i64 %5130, i64* %RAX.i101, align 8
  store %struct.Memory* %loadMem_42cab8, %struct.Memory** %MEMORY
  %loadMem_42cabc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5132 = getelementptr inbounds %struct.GPR, %struct.GPR* %5131, i32 0, i32 33
  %5133 = getelementptr inbounds %struct.Reg, %struct.Reg* %5132, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %5133 to i64*
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5135 = getelementptr inbounds %struct.GPR, %struct.GPR* %5134, i32 0, i32 1
  %5136 = getelementptr inbounds %struct.Reg, %struct.Reg* %5135, i32 0, i32 0
  %RAX.i99 = bitcast %union.anon* %5136 to i64*
  %5137 = load i64, i64* %RAX.i99
  %5138 = load i64, i64* %PC.i98
  %5139 = add i64 %5138, 6
  store i64 %5139, i64* %PC.i98
  %5140 = add i64 35672, %5137
  store i64 %5140, i64* %RAX.i99, align 8
  %5141 = icmp ult i64 %5140, %5137
  %5142 = icmp ult i64 %5140, 35672
  %5143 = or i1 %5141, %5142
  %5144 = zext i1 %5143 to i8
  %5145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5144, i8* %5145, align 1
  %5146 = trunc i64 %5140 to i32
  %5147 = and i32 %5146, 255
  %5148 = call i32 @llvm.ctpop.i32(i32 %5147)
  %5149 = trunc i32 %5148 to i8
  %5150 = and i8 %5149, 1
  %5151 = xor i8 %5150, 1
  %5152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5151, i8* %5152, align 1
  %5153 = xor i64 35672, %5137
  %5154 = xor i64 %5153, %5140
  %5155 = lshr i64 %5154, 4
  %5156 = trunc i64 %5155 to i8
  %5157 = and i8 %5156, 1
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5157, i8* %5158, align 1
  %5159 = icmp eq i64 %5140, 0
  %5160 = zext i1 %5159 to i8
  %5161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5160, i8* %5161, align 1
  %5162 = lshr i64 %5140, 63
  %5163 = trunc i64 %5162 to i8
  %5164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5163, i8* %5164, align 1
  %5165 = lshr i64 %5137, 63
  %5166 = xor i64 %5162, %5165
  %5167 = add i64 %5166, %5162
  %5168 = icmp eq i64 %5167, 2
  %5169 = zext i1 %5168 to i8
  %5170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5169, i8* %5170, align 1
  store %struct.Memory* %loadMem_42cabc, %struct.Memory** %MEMORY
  %loadMem_42cac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5172 = getelementptr inbounds %struct.GPR, %struct.GPR* %5171, i32 0, i32 33
  %5173 = getelementptr inbounds %struct.Reg, %struct.Reg* %5172, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %5173 to i64*
  %5174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5175 = getelementptr inbounds %struct.GPR, %struct.GPR* %5174, i32 0, i32 5
  %5176 = getelementptr inbounds %struct.Reg, %struct.Reg* %5175, i32 0, i32 0
  %RCX.i96 = bitcast %union.anon* %5176 to i64*
  %5177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5178 = getelementptr inbounds %struct.GPR, %struct.GPR* %5177, i32 0, i32 15
  %5179 = getelementptr inbounds %struct.Reg, %struct.Reg* %5178, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %5179 to i64*
  %5180 = load i64, i64* %RBP.i97
  %5181 = sub i64 %5180, 20
  %5182 = load i64, i64* %PC.i95
  %5183 = add i64 %5182, 4
  store i64 %5183, i64* %PC.i95
  %5184 = inttoptr i64 %5181 to i32*
  %5185 = load i32, i32* %5184
  %5186 = sext i32 %5185 to i64
  store i64 %5186, i64* %RCX.i96, align 8
  store %struct.Memory* %loadMem_42cac2, %struct.Memory** %MEMORY
  %loadMem_42cac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5188 = getelementptr inbounds %struct.GPR, %struct.GPR* %5187, i32 0, i32 33
  %5189 = getelementptr inbounds %struct.Reg, %struct.Reg* %5188, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %5189 to i64*
  %5190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5191 = getelementptr inbounds %struct.GPR, %struct.GPR* %5190, i32 0, i32 5
  %5192 = getelementptr inbounds %struct.Reg, %struct.Reg* %5191, i32 0, i32 0
  %RCX.i94 = bitcast %union.anon* %5192 to i64*
  %5193 = load i64, i64* %RCX.i94
  %5194 = load i64, i64* %PC.i93
  %5195 = add i64 %5194, 4
  store i64 %5195, i64* %PC.i93
  %5196 = shl i64 %5193, 3
  %5197 = icmp slt i64 %5196, 0
  %5198 = shl i64 %5196, 1
  store i64 %5198, i64* %RCX.i94, align 8
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5200 = zext i1 %5197 to i8
  store i8 %5200, i8* %5199, align 1
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5202 = trunc i64 %5198 to i32
  %5203 = and i32 %5202, 254
  %5204 = call i32 @llvm.ctpop.i32(i32 %5203)
  %5205 = trunc i32 %5204 to i8
  %5206 = and i8 %5205, 1
  %5207 = xor i8 %5206, 1
  store i8 %5207, i8* %5201, align 1
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5208, align 1
  %5209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5210 = icmp eq i64 %5198, 0
  %5211 = zext i1 %5210 to i8
  store i8 %5211, i8* %5209, align 1
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5213 = lshr i64 %5198, 63
  %5214 = trunc i64 %5213 to i8
  store i8 %5214, i8* %5212, align 1
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5215, align 1
  store %struct.Memory* %loadMem_42cac6, %struct.Memory** %MEMORY
  %loadMem_42caca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5217 = getelementptr inbounds %struct.GPR, %struct.GPR* %5216, i32 0, i32 33
  %5218 = getelementptr inbounds %struct.Reg, %struct.Reg* %5217, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %5218 to i64*
  %5219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5220 = getelementptr inbounds %struct.GPR, %struct.GPR* %5219, i32 0, i32 1
  %5221 = getelementptr inbounds %struct.Reg, %struct.Reg* %5220, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %5221 to i64*
  %5222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5223 = getelementptr inbounds %struct.GPR, %struct.GPR* %5222, i32 0, i32 5
  %5224 = getelementptr inbounds %struct.Reg, %struct.Reg* %5223, i32 0, i32 0
  %RCX.i92 = bitcast %union.anon* %5224 to i64*
  %5225 = load i64, i64* %RAX.i91
  %5226 = load i64, i64* %RCX.i92
  %5227 = load i64, i64* %PC.i90
  %5228 = add i64 %5227, 3
  store i64 %5228, i64* %PC.i90
  %5229 = add i64 %5226, %5225
  store i64 %5229, i64* %RAX.i91, align 8
  %5230 = icmp ult i64 %5229, %5225
  %5231 = icmp ult i64 %5229, %5226
  %5232 = or i1 %5230, %5231
  %5233 = zext i1 %5232 to i8
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5233, i8* %5234, align 1
  %5235 = trunc i64 %5229 to i32
  %5236 = and i32 %5235, 255
  %5237 = call i32 @llvm.ctpop.i32(i32 %5236)
  %5238 = trunc i32 %5237 to i8
  %5239 = and i8 %5238, 1
  %5240 = xor i8 %5239, 1
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5240, i8* %5241, align 1
  %5242 = xor i64 %5226, %5225
  %5243 = xor i64 %5242, %5229
  %5244 = lshr i64 %5243, 4
  %5245 = trunc i64 %5244 to i8
  %5246 = and i8 %5245, 1
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5246, i8* %5247, align 1
  %5248 = icmp eq i64 %5229, 0
  %5249 = zext i1 %5248 to i8
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5249, i8* %5250, align 1
  %5251 = lshr i64 %5229, 63
  %5252 = trunc i64 %5251 to i8
  %5253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5252, i8* %5253, align 1
  %5254 = lshr i64 %5225, 63
  %5255 = lshr i64 %5226, 63
  %5256 = xor i64 %5251, %5254
  %5257 = xor i64 %5251, %5255
  %5258 = add i64 %5256, %5257
  %5259 = icmp eq i64 %5258, 2
  %5260 = zext i1 %5259 to i8
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5260, i8* %5261, align 1
  store %struct.Memory* %loadMem_42caca, %struct.Memory** %MEMORY
  %loadMem_42cacd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5263 = getelementptr inbounds %struct.GPR, %struct.GPR* %5262, i32 0, i32 33
  %5264 = getelementptr inbounds %struct.Reg, %struct.Reg* %5263, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %5264 to i64*
  %5265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5266 = getelementptr inbounds %struct.GPR, %struct.GPR* %5265, i32 0, i32 1
  %5267 = getelementptr inbounds %struct.Reg, %struct.Reg* %5266, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %5267 to i64*
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5268, i64 0, i64 1
  %YMM1.i89 = bitcast %union.VectorReg* %5269 to %"class.std::bitset"*
  %5270 = bitcast %"class.std::bitset"* %YMM1.i89 to i8*
  %5271 = load i64, i64* %RAX.i88
  %5272 = add i64 %5271, 12
  %5273 = load i64, i64* %PC.i87
  %5274 = add i64 %5273, 5
  store i64 %5274, i64* %PC.i87
  %5275 = inttoptr i64 %5272 to float*
  %5276 = load float, float* %5275
  %5277 = bitcast i8* %5270 to float*
  store float %5276, float* %5277, align 1
  %5278 = getelementptr inbounds i8, i8* %5270, i64 4
  %5279 = bitcast i8* %5278 to float*
  store float 0.000000e+00, float* %5279, align 1
  %5280 = getelementptr inbounds i8, i8* %5270, i64 8
  %5281 = bitcast i8* %5280 to float*
  store float 0.000000e+00, float* %5281, align 1
  %5282 = getelementptr inbounds i8, i8* %5270, i64 12
  %5283 = bitcast i8* %5282 to float*
  store float 0.000000e+00, float* %5283, align 1
  store %struct.Memory* %loadMem_42cacd, %struct.Memory** %MEMORY
  %loadMem_42cad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5285 = getelementptr inbounds %struct.GPR, %struct.GPR* %5284, i32 0, i32 33
  %5286 = getelementptr inbounds %struct.Reg, %struct.Reg* %5285, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %5286 to i64*
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5288 = getelementptr inbounds %struct.GPR, %struct.GPR* %5287, i32 0, i32 7
  %5289 = getelementptr inbounds %struct.Reg, %struct.Reg* %5288, i32 0, i32 0
  %RDX.i85 = bitcast %union.anon* %5289 to i64*
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5291 = getelementptr inbounds %struct.GPR, %struct.GPR* %5290, i32 0, i32 15
  %5292 = getelementptr inbounds %struct.Reg, %struct.Reg* %5291, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %5292 to i64*
  %5293 = load i64, i64* %RBP.i86
  %5294 = sub i64 %5293, 8
  %5295 = load i64, i64* %PC.i84
  %5296 = add i64 %5295, 4
  store i64 %5296, i64* %PC.i84
  %5297 = inttoptr i64 %5294 to i64*
  %5298 = load i64, i64* %5297
  store i64 %5298, i64* %RDX.i85, align 8
  store %struct.Memory* %loadMem_42cad2, %struct.Memory** %MEMORY
  %loadMem1_42cad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5300 = getelementptr inbounds %struct.GPR, %struct.GPR* %5299, i32 0, i32 33
  %5301 = getelementptr inbounds %struct.Reg, %struct.Reg* %5300, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %5301 to i64*
  %5302 = load i64, i64* %PC.i83
  %5303 = add i64 %5302, 794
  %5304 = load i64, i64* %PC.i83
  %5305 = add i64 %5304, 5
  %5306 = load i64, i64* %PC.i83
  %5307 = add i64 %5306, 5
  store i64 %5307, i64* %PC.i83
  %5308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5309 = load i64, i64* %5308, align 8
  %5310 = add i64 %5309, -8
  %5311 = inttoptr i64 %5310 to i64*
  store i64 %5305, i64* %5311
  store i64 %5310, i64* %5308, align 8
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5303, i64* %5312, align 8
  store %struct.Memory* %loadMem1_42cad6, %struct.Memory** %MEMORY
  %loadMem2_42cad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cad6 = load i64, i64* %3
  %call2_42cad6 = call %struct.Memory* @sub_42cdf0.add_influence_source(%struct.State* %0, i64 %loadPC_42cad6, %struct.Memory* %loadMem2_42cad6)
  store %struct.Memory* %call2_42cad6, %struct.Memory** %MEMORY
  %loadMem_42cadb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5314 = getelementptr inbounds %struct.GPR, %struct.GPR* %5313, i32 0, i32 33
  %5315 = getelementptr inbounds %struct.Reg, %struct.Reg* %5314, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %5315 to i64*
  %5316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5317 = getelementptr inbounds %struct.GPR, %struct.GPR* %5316, i32 0, i32 9
  %5318 = getelementptr inbounds %struct.Reg, %struct.Reg* %5317, i32 0, i32 0
  %RSI.i82 = bitcast %union.anon* %5318 to i64*
  %5319 = load i64, i64* %PC.i81
  %5320 = add i64 %5319, 7
  store i64 %5320, i64* %PC.i81
  %5321 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %5322 = zext i32 %5321 to i64
  store i64 %5322, i64* %RSI.i82, align 8
  store %struct.Memory* %loadMem_42cadb, %struct.Memory** %MEMORY
  %loadMem_42cae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5324 = getelementptr inbounds %struct.GPR, %struct.GPR* %5323, i32 0, i32 33
  %5325 = getelementptr inbounds %struct.Reg, %struct.Reg* %5324, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %5325 to i64*
  %5326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5327 = getelementptr inbounds %struct.GPR, %struct.GPR* %5326, i32 0, i32 9
  %5328 = getelementptr inbounds %struct.Reg, %struct.Reg* %5327, i32 0, i32 0
  %RSI.i80 = bitcast %union.anon* %5328 to i64*
  %5329 = load i64, i64* %RSI.i80
  %5330 = load i64, i64* %PC.i79
  %5331 = add i64 %5330, 3
  store i64 %5331, i64* %PC.i79
  %5332 = and i64 1, %5329
  %5333 = trunc i64 %5332 to i32
  store i64 %5332, i64* %RSI.i80, align 8
  %5334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5334, align 1
  %5335 = and i32 %5333, 255
  %5336 = call i32 @llvm.ctpop.i32(i32 %5335)
  %5337 = trunc i32 %5336 to i8
  %5338 = and i8 %5337, 1
  %5339 = xor i8 %5338, 1
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5339, i8* %5340, align 1
  %5341 = icmp eq i32 %5333, 0
  %5342 = zext i1 %5341 to i8
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5342, i8* %5343, align 1
  %5344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5344, align 1
  %5345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5345, align 1
  %5346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5346, align 1
  store %struct.Memory* %loadMem_42cae2, %struct.Memory** %MEMORY
  %loadMem_42cae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5348 = getelementptr inbounds %struct.GPR, %struct.GPR* %5347, i32 0, i32 33
  %5349 = getelementptr inbounds %struct.Reg, %struct.Reg* %5348, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %5349 to i64*
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5351 = getelementptr inbounds %struct.GPR, %struct.GPR* %5350, i32 0, i32 9
  %5352 = getelementptr inbounds %struct.Reg, %struct.Reg* %5351, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %5352 to i32*
  %5353 = load i32, i32* %ESI.i
  %5354 = zext i32 %5353 to i64
  %5355 = load i64, i64* %PC.i78
  %5356 = add i64 %5355, 3
  store i64 %5356, i64* %PC.i78
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5357, align 1
  %5358 = and i32 %5353, 255
  %5359 = call i32 @llvm.ctpop.i32(i32 %5358)
  %5360 = trunc i32 %5359 to i8
  %5361 = and i8 %5360, 1
  %5362 = xor i8 %5361, 1
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5362, i8* %5363, align 1
  %5364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5364, align 1
  %5365 = icmp eq i32 %5353, 0
  %5366 = zext i1 %5365 to i8
  %5367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5366, i8* %5367, align 1
  %5368 = lshr i32 %5353, 31
  %5369 = trunc i32 %5368 to i8
  %5370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5369, i8* %5370, align 1
  %5371 = lshr i32 %5353, 31
  %5372 = xor i32 %5368, %5371
  %5373 = add i32 %5372, %5371
  %5374 = icmp eq i32 %5373, 2
  %5375 = zext i1 %5374 to i8
  %5376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5375, i8* %5376, align 1
  store %struct.Memory* %loadMem_42cae5, %struct.Memory** %MEMORY
  %loadMem_42cae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5378 = getelementptr inbounds %struct.GPR, %struct.GPR* %5377, i32 0, i32 33
  %5379 = getelementptr inbounds %struct.Reg, %struct.Reg* %5378, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %5379 to i64*
  %5380 = load i64, i64* %PC.i77
  %5381 = add i64 %5380, 11
  %5382 = load i64, i64* %PC.i77
  %5383 = add i64 %5382, 6
  %5384 = load i64, i64* %PC.i77
  %5385 = add i64 %5384, 6
  store i64 %5385, i64* %PC.i77
  %5386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5387 = load i8, i8* %5386, align 1
  %5388 = icmp eq i8 %5387, 0
  %5389 = zext i1 %5388 to i8
  store i8 %5389, i8* %BRANCH_TAKEN, align 1
  %5390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5391 = select i1 %5388, i64 %5381, i64 %5383
  store i64 %5391, i64* %5390, align 8
  store %struct.Memory* %loadMem_42cae8, %struct.Memory** %MEMORY
  %loadBr_42cae8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42cae8 = icmp eq i8 %loadBr_42cae8, 1
  br i1 %cmpBr_42cae8, label %block_.L_42caf3, label %block_42caee

block_42caee:                                     ; preds = %block_.L_42ca7e
  %loadMem_42caee = load %struct.Memory*, %struct.Memory** %MEMORY
  %5392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5393 = getelementptr inbounds %struct.GPR, %struct.GPR* %5392, i32 0, i32 33
  %5394 = getelementptr inbounds %struct.Reg, %struct.Reg* %5393, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %5394 to i64*
  %5395 = load i64, i64* %PC.i76
  %5396 = add i64 %5395, 125
  %5397 = load i64, i64* %PC.i76
  %5398 = add i64 %5397, 5
  store i64 %5398, i64* %PC.i76
  %5399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5396, i64* %5399, align 8
  store %struct.Memory* %loadMem_42caee, %struct.Memory** %MEMORY
  br label %block_.L_42cb6b

block_.L_42caf3:                                  ; preds = %block_.L_42ca7e
  %loadMem_42caf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5401 = getelementptr inbounds %struct.GPR, %struct.GPR* %5400, i32 0, i32 33
  %5402 = getelementptr inbounds %struct.Reg, %struct.Reg* %5401, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %5402 to i64*
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5404 = getelementptr inbounds %struct.GPR, %struct.GPR* %5403, i32 0, i32 11
  %5405 = getelementptr inbounds %struct.Reg, %struct.Reg* %5404, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5405 to i64*
  %5406 = load i64, i64* %PC.i75
  %5407 = add i64 %5406, 10
  store i64 %5407, i64* %PC.i75
  store i64 ptrtoint (%G__0x57c72b_type* @G__0x57c72b to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_42caf3, %struct.Memory** %MEMORY
  %loadMem_42cafd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5409 = getelementptr inbounds %struct.GPR, %struct.GPR* %5408, i32 0, i32 33
  %5410 = getelementptr inbounds %struct.Reg, %struct.Reg* %5409, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %5410 to i64*
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5412 = getelementptr inbounds %struct.GPR, %struct.GPR* %5411, i32 0, i32 1
  %5413 = getelementptr inbounds %struct.Reg, %struct.Reg* %5412, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %5413 to i64*
  %5414 = load i64, i64* %PC.i73
  %5415 = add i64 %5414, 10
  store i64 %5415, i64* %PC.i73
  store i64 ptrtoint (%G__0x586e37_type* @G__0x586e37 to i64), i64* %RAX.i74, align 8
  store %struct.Memory* %loadMem_42cafd, %struct.Memory** %MEMORY
  %loadMem_42cb07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5417 = getelementptr inbounds %struct.GPR, %struct.GPR* %5416, i32 0, i32 33
  %5418 = getelementptr inbounds %struct.Reg, %struct.Reg* %5417, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %5418 to i64*
  %5419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5420 = getelementptr inbounds %struct.GPR, %struct.GPR* %5419, i32 0, i32 5
  %5421 = getelementptr inbounds %struct.Reg, %struct.Reg* %5420, i32 0, i32 0
  %RCX.i72 = bitcast %union.anon* %5421 to i64*
  %5422 = load i64, i64* %PC.i71
  %5423 = add i64 %5422, 10
  store i64 %5423, i64* %PC.i71
  store i64 ptrtoint (%G__0x586e29_type* @G__0x586e29 to i64), i64* %RCX.i72, align 8
  store %struct.Memory* %loadMem_42cb07, %struct.Memory** %MEMORY
  %loadMem_42cb11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5425 = getelementptr inbounds %struct.GPR, %struct.GPR* %5424, i32 0, i32 33
  %5426 = getelementptr inbounds %struct.Reg, %struct.Reg* %5425, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %5426 to i64*
  %5427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5428 = getelementptr inbounds %struct.GPR, %struct.GPR* %5427, i32 0, i32 15
  %5429 = getelementptr inbounds %struct.Reg, %struct.Reg* %5428, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %5429 to i64*
  %5430 = load i64, i64* %RBP.i70
  %5431 = sub i64 %5430, 12
  %5432 = load i64, i64* %PC.i69
  %5433 = add i64 %5432, 4
  store i64 %5433, i64* %PC.i69
  %5434 = inttoptr i64 %5431 to i32*
  %5435 = load i32, i32* %5434
  %5436 = sub i32 %5435, 2
  %5437 = icmp ult i32 %5435, 2
  %5438 = zext i1 %5437 to i8
  %5439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5438, i8* %5439, align 1
  %5440 = and i32 %5436, 255
  %5441 = call i32 @llvm.ctpop.i32(i32 %5440)
  %5442 = trunc i32 %5441 to i8
  %5443 = and i8 %5442, 1
  %5444 = xor i8 %5443, 1
  %5445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5444, i8* %5445, align 1
  %5446 = xor i32 %5435, 2
  %5447 = xor i32 %5446, %5436
  %5448 = lshr i32 %5447, 4
  %5449 = trunc i32 %5448 to i8
  %5450 = and i8 %5449, 1
  %5451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5450, i8* %5451, align 1
  %5452 = icmp eq i32 %5436, 0
  %5453 = zext i1 %5452 to i8
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5453, i8* %5454, align 1
  %5455 = lshr i32 %5436, 31
  %5456 = trunc i32 %5455 to i8
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5456, i8* %5457, align 1
  %5458 = lshr i32 %5435, 31
  %5459 = xor i32 %5455, %5458
  %5460 = add i32 %5459, %5458
  %5461 = icmp eq i32 %5460, 2
  %5462 = zext i1 %5461 to i8
  %5463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5462, i8* %5463, align 1
  store %struct.Memory* %loadMem_42cb11, %struct.Memory** %MEMORY
  %loadMem_42cb15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5465 = getelementptr inbounds %struct.GPR, %struct.GPR* %5464, i32 0, i32 33
  %5466 = getelementptr inbounds %struct.Reg, %struct.Reg* %5465, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %5466 to i64*
  %5467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5468 = getelementptr inbounds %struct.GPR, %struct.GPR* %5467, i32 0, i32 1
  %5469 = getelementptr inbounds %struct.Reg, %struct.Reg* %5468, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %5469 to i64*
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5471 = getelementptr inbounds %struct.GPR, %struct.GPR* %5470, i32 0, i32 5
  %5472 = getelementptr inbounds %struct.Reg, %struct.Reg* %5471, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %5472 to i64*
  %5473 = load i64, i64* %RCX.i68
  %5474 = load i64, i64* %PC.i66
  %5475 = add i64 %5474, 4
  store i64 %5475, i64* %PC.i66
  %5476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5477 = load i8, i8* %5476, align 1
  %5478 = icmp ne i8 %5477, 0
  %5479 = load i64, i64* %RAX.i67, align 8
  %5480 = select i1 %5478, i64 %5473, i64 %5479
  store i64 %5480, i64* %RAX.i67, align 8
  store %struct.Memory* %loadMem_42cb15, %struct.Memory** %MEMORY
  %loadMem_42cb19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5482 = getelementptr inbounds %struct.GPR, %struct.GPR* %5481, i32 0, i32 33
  %5483 = getelementptr inbounds %struct.Reg, %struct.Reg* %5482, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %5483 to i64*
  %5484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5485 = getelementptr inbounds %struct.GPR, %struct.GPR* %5484, i32 0, i32 7
  %5486 = getelementptr inbounds %struct.Reg, %struct.Reg* %5485, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5486 to i64*
  %5487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5488 = getelementptr inbounds %struct.GPR, %struct.GPR* %5487, i32 0, i32 15
  %5489 = getelementptr inbounds %struct.Reg, %struct.Reg* %5488, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %5489 to i64*
  %5490 = load i64, i64* %RBP.i65
  %5491 = sub i64 %5490, 24
  %5492 = load i64, i64* %PC.i64
  %5493 = add i64 %5492, 3
  store i64 %5493, i64* %PC.i64
  %5494 = inttoptr i64 %5491 to i32*
  %5495 = load i32, i32* %5494
  %5496 = zext i32 %5495 to i64
  store i64 %5496, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_42cb19, %struct.Memory** %MEMORY
  %loadMem_42cb1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5498 = getelementptr inbounds %struct.GPR, %struct.GPR* %5497, i32 0, i32 33
  %5499 = getelementptr inbounds %struct.Reg, %struct.Reg* %5498, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %5499 to i64*
  %5500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5501 = getelementptr inbounds %struct.GPR, %struct.GPR* %5500, i32 0, i32 5
  %5502 = getelementptr inbounds %struct.Reg, %struct.Reg* %5501, i32 0, i32 0
  %RCX.i62 = bitcast %union.anon* %5502 to i64*
  %5503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5504 = getelementptr inbounds %struct.GPR, %struct.GPR* %5503, i32 0, i32 15
  %5505 = getelementptr inbounds %struct.Reg, %struct.Reg* %5504, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %5505 to i64*
  %5506 = load i64, i64* %RBP.i63
  %5507 = sub i64 %5506, 8
  %5508 = load i64, i64* %PC.i61
  %5509 = add i64 %5508, 4
  store i64 %5509, i64* %PC.i61
  %5510 = inttoptr i64 %5507 to i64*
  %5511 = load i64, i64* %5510
  store i64 %5511, i64* %RCX.i62, align 8
  store %struct.Memory* %loadMem_42cb1c, %struct.Memory** %MEMORY
  %loadMem_42cb20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5513 = getelementptr inbounds %struct.GPR, %struct.GPR* %5512, i32 0, i32 33
  %5514 = getelementptr inbounds %struct.Reg, %struct.Reg* %5513, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %5514 to i64*
  %5515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5516 = getelementptr inbounds %struct.GPR, %struct.GPR* %5515, i32 0, i32 5
  %5517 = getelementptr inbounds %struct.Reg, %struct.Reg* %5516, i32 0, i32 0
  %RCX.i60 = bitcast %union.anon* %5517 to i64*
  %5518 = load i64, i64* %RCX.i60
  %5519 = load i64, i64* %PC.i59
  %5520 = add i64 %5519, 7
  store i64 %5520, i64* %PC.i59
  %5521 = add i64 35672, %5518
  store i64 %5521, i64* %RCX.i60, align 8
  %5522 = icmp ult i64 %5521, %5518
  %5523 = icmp ult i64 %5521, 35672
  %5524 = or i1 %5522, %5523
  %5525 = zext i1 %5524 to i8
  %5526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5525, i8* %5526, align 1
  %5527 = trunc i64 %5521 to i32
  %5528 = and i32 %5527, 255
  %5529 = call i32 @llvm.ctpop.i32(i32 %5528)
  %5530 = trunc i32 %5529 to i8
  %5531 = and i8 %5530, 1
  %5532 = xor i8 %5531, 1
  %5533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5532, i8* %5533, align 1
  %5534 = xor i64 35672, %5518
  %5535 = xor i64 %5534, %5521
  %5536 = lshr i64 %5535, 4
  %5537 = trunc i64 %5536 to i8
  %5538 = and i8 %5537, 1
  %5539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5538, i8* %5539, align 1
  %5540 = icmp eq i64 %5521, 0
  %5541 = zext i1 %5540 to i8
  %5542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5541, i8* %5542, align 1
  %5543 = lshr i64 %5521, 63
  %5544 = trunc i64 %5543 to i8
  %5545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5544, i8* %5545, align 1
  %5546 = lshr i64 %5518, 63
  %5547 = xor i64 %5543, %5546
  %5548 = add i64 %5547, %5543
  %5549 = icmp eq i64 %5548, 2
  %5550 = zext i1 %5549 to i8
  %5551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5550, i8* %5551, align 1
  store %struct.Memory* %loadMem_42cb20, %struct.Memory** %MEMORY
  %loadMem_42cb27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5553 = getelementptr inbounds %struct.GPR, %struct.GPR* %5552, i32 0, i32 33
  %5554 = getelementptr inbounds %struct.Reg, %struct.Reg* %5553, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %5554 to i64*
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5556 = getelementptr inbounds %struct.GPR, %struct.GPR* %5555, i32 0, i32 9
  %5557 = getelementptr inbounds %struct.Reg, %struct.Reg* %5556, i32 0, i32 0
  %RSI.i57 = bitcast %union.anon* %5557 to i64*
  %5558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5559 = getelementptr inbounds %struct.GPR, %struct.GPR* %5558, i32 0, i32 15
  %5560 = getelementptr inbounds %struct.Reg, %struct.Reg* %5559, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %5560 to i64*
  %5561 = load i64, i64* %RBP.i58
  %5562 = sub i64 %5561, 20
  %5563 = load i64, i64* %PC.i56
  %5564 = add i64 %5563, 4
  store i64 %5564, i64* %PC.i56
  %5565 = inttoptr i64 %5562 to i32*
  %5566 = load i32, i32* %5565
  %5567 = sext i32 %5566 to i64
  store i64 %5567, i64* %RSI.i57, align 8
  store %struct.Memory* %loadMem_42cb27, %struct.Memory** %MEMORY
  %loadMem_42cb2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5569 = getelementptr inbounds %struct.GPR, %struct.GPR* %5568, i32 0, i32 33
  %5570 = getelementptr inbounds %struct.Reg, %struct.Reg* %5569, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %5570 to i64*
  %5571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5572 = getelementptr inbounds %struct.GPR, %struct.GPR* %5571, i32 0, i32 9
  %5573 = getelementptr inbounds %struct.Reg, %struct.Reg* %5572, i32 0, i32 0
  %RSI.i55 = bitcast %union.anon* %5573 to i64*
  %5574 = load i64, i64* %RSI.i55
  %5575 = load i64, i64* %PC.i54
  %5576 = add i64 %5575, 4
  store i64 %5576, i64* %PC.i54
  %5577 = shl i64 %5574, 3
  %5578 = icmp slt i64 %5577, 0
  %5579 = shl i64 %5577, 1
  store i64 %5579, i64* %RSI.i55, align 8
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5581 = zext i1 %5578 to i8
  store i8 %5581, i8* %5580, align 1
  %5582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5583 = trunc i64 %5579 to i32
  %5584 = and i32 %5583, 254
  %5585 = call i32 @llvm.ctpop.i32(i32 %5584)
  %5586 = trunc i32 %5585 to i8
  %5587 = and i8 %5586, 1
  %5588 = xor i8 %5587, 1
  store i8 %5588, i8* %5582, align 1
  %5589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5589, align 1
  %5590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5591 = icmp eq i64 %5579, 0
  %5592 = zext i1 %5591 to i8
  store i8 %5592, i8* %5590, align 1
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5594 = lshr i64 %5579, 63
  %5595 = trunc i64 %5594 to i8
  store i8 %5595, i8* %5593, align 1
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5596, align 1
  store %struct.Memory* %loadMem_42cb2b, %struct.Memory** %MEMORY
  %loadMem_42cb2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5598 = getelementptr inbounds %struct.GPR, %struct.GPR* %5597, i32 0, i32 33
  %5599 = getelementptr inbounds %struct.Reg, %struct.Reg* %5598, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %5599 to i64*
  %5600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5601 = getelementptr inbounds %struct.GPR, %struct.GPR* %5600, i32 0, i32 5
  %5602 = getelementptr inbounds %struct.Reg, %struct.Reg* %5601, i32 0, i32 0
  %RCX.i52 = bitcast %union.anon* %5602 to i64*
  %5603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5604 = getelementptr inbounds %struct.GPR, %struct.GPR* %5603, i32 0, i32 9
  %5605 = getelementptr inbounds %struct.Reg, %struct.Reg* %5604, i32 0, i32 0
  %RSI.i53 = bitcast %union.anon* %5605 to i64*
  %5606 = load i64, i64* %RCX.i52
  %5607 = load i64, i64* %RSI.i53
  %5608 = load i64, i64* %PC.i51
  %5609 = add i64 %5608, 3
  store i64 %5609, i64* %PC.i51
  %5610 = add i64 %5607, %5606
  store i64 %5610, i64* %RCX.i52, align 8
  %5611 = icmp ult i64 %5610, %5606
  %5612 = icmp ult i64 %5610, %5607
  %5613 = or i1 %5611, %5612
  %5614 = zext i1 %5613 to i8
  %5615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5614, i8* %5615, align 1
  %5616 = trunc i64 %5610 to i32
  %5617 = and i32 %5616, 255
  %5618 = call i32 @llvm.ctpop.i32(i32 %5617)
  %5619 = trunc i32 %5618 to i8
  %5620 = and i8 %5619, 1
  %5621 = xor i8 %5620, 1
  %5622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5621, i8* %5622, align 1
  %5623 = xor i64 %5607, %5606
  %5624 = xor i64 %5623, %5610
  %5625 = lshr i64 %5624, 4
  %5626 = trunc i64 %5625 to i8
  %5627 = and i8 %5626, 1
  %5628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5627, i8* %5628, align 1
  %5629 = icmp eq i64 %5610, 0
  %5630 = zext i1 %5629 to i8
  %5631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5630, i8* %5631, align 1
  %5632 = lshr i64 %5610, 63
  %5633 = trunc i64 %5632 to i8
  %5634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5633, i8* %5634, align 1
  %5635 = lshr i64 %5606, 63
  %5636 = lshr i64 %5607, 63
  %5637 = xor i64 %5632, %5635
  %5638 = xor i64 %5632, %5636
  %5639 = add i64 %5637, %5638
  %5640 = icmp eq i64 %5639, 2
  %5641 = zext i1 %5640 to i8
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5641, i8* %5642, align 1
  store %struct.Memory* %loadMem_42cb2f, %struct.Memory** %MEMORY
  %loadMem_42cb32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5644 = getelementptr inbounds %struct.GPR, %struct.GPR* %5643, i32 0, i32 33
  %5645 = getelementptr inbounds %struct.Reg, %struct.Reg* %5644, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %5645 to i64*
  %5646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5647 = getelementptr inbounds %struct.GPR, %struct.GPR* %5646, i32 0, i32 5
  %5648 = getelementptr inbounds %struct.Reg, %struct.Reg* %5647, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5648 to i64*
  %5649 = load i64, i64* %RCX.i
  %5650 = add i64 %5649, 4
  %5651 = load i64, i64* %PC.i50
  %5652 = add i64 %5651, 3
  store i64 %5652, i64* %PC.i50
  %5653 = inttoptr i64 %5650 to i32*
  %5654 = load i32, i32* %5653
  %5655 = zext i32 %5654 to i64
  store i64 %5655, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_42cb32, %struct.Memory** %MEMORY
  %loadMem_42cb35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5657 = getelementptr inbounds %struct.GPR, %struct.GPR* %5656, i32 0, i32 33
  %5658 = getelementptr inbounds %struct.Reg, %struct.Reg* %5657, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %5658 to i64*
  %5659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5660 = getelementptr inbounds %struct.GPR, %struct.GPR* %5659, i32 0, i32 15
  %5661 = getelementptr inbounds %struct.Reg, %struct.Reg* %5660, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %5661 to i64*
  %5662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5663 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5662, i64 0, i64 0
  %YMM0.i49 = bitcast %union.VectorReg* %5663 to %"class.std::bitset"*
  %5664 = bitcast %"class.std::bitset"* %YMM0.i49 to i8*
  %5665 = load i64, i64* %RBP.i48
  %5666 = sub i64 %5665, 32
  %5667 = load i64, i64* %PC.i47
  %5668 = add i64 %5667, 5
  store i64 %5668, i64* %PC.i47
  %5669 = inttoptr i64 %5666 to float*
  %5670 = load float, float* %5669
  %5671 = bitcast i8* %5664 to float*
  store float %5670, float* %5671, align 1
  %5672 = getelementptr inbounds i8, i8* %5664, i64 4
  %5673 = bitcast i8* %5672 to float*
  store float 0.000000e+00, float* %5673, align 1
  %5674 = getelementptr inbounds i8, i8* %5664, i64 8
  %5675 = bitcast i8* %5674 to float*
  store float 0.000000e+00, float* %5675, align 1
  %5676 = getelementptr inbounds i8, i8* %5664, i64 12
  %5677 = bitcast i8* %5676 to float*
  store float 0.000000e+00, float* %5677, align 1
  store %struct.Memory* %loadMem_42cb35, %struct.Memory** %MEMORY
  %loadMem_42cb3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5679 = getelementptr inbounds %struct.GPR, %struct.GPR* %5678, i32 0, i32 33
  %5680 = getelementptr inbounds %struct.Reg, %struct.Reg* %5679, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %5680 to i64*
  %5681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5682 = getelementptr inbounds %struct.GPR, %struct.GPR* %5681, i32 0, i32 9
  %5683 = getelementptr inbounds %struct.Reg, %struct.Reg* %5682, i32 0, i32 0
  %RSI.i45 = bitcast %union.anon* %5683 to i64*
  %5684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5685 = getelementptr inbounds %struct.GPR, %struct.GPR* %5684, i32 0, i32 15
  %5686 = getelementptr inbounds %struct.Reg, %struct.Reg* %5685, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %5686 to i64*
  %5687 = load i64, i64* %RBP.i46
  %5688 = sub i64 %5687, 8
  %5689 = load i64, i64* %PC.i44
  %5690 = add i64 %5689, 4
  store i64 %5690, i64* %PC.i44
  %5691 = inttoptr i64 %5688 to i64*
  %5692 = load i64, i64* %5691
  store i64 %5692, i64* %RSI.i45, align 8
  store %struct.Memory* %loadMem_42cb3a, %struct.Memory** %MEMORY
  %loadMem_42cb3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5694 = getelementptr inbounds %struct.GPR, %struct.GPR* %5693, i32 0, i32 33
  %5695 = getelementptr inbounds %struct.Reg, %struct.Reg* %5694, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %5695 to i64*
  %5696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5697 = getelementptr inbounds %struct.GPR, %struct.GPR* %5696, i32 0, i32 9
  %5698 = getelementptr inbounds %struct.Reg, %struct.Reg* %5697, i32 0, i32 0
  %RSI.i43 = bitcast %union.anon* %5698 to i64*
  %5699 = load i64, i64* %RSI.i43
  %5700 = load i64, i64* %PC.i42
  %5701 = add i64 %5700, 7
  store i64 %5701, i64* %PC.i42
  %5702 = add i64 35672, %5699
  store i64 %5702, i64* %RSI.i43, align 8
  %5703 = icmp ult i64 %5702, %5699
  %5704 = icmp ult i64 %5702, 35672
  %5705 = or i1 %5703, %5704
  %5706 = zext i1 %5705 to i8
  %5707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5706, i8* %5707, align 1
  %5708 = trunc i64 %5702 to i32
  %5709 = and i32 %5708, 255
  %5710 = call i32 @llvm.ctpop.i32(i32 %5709)
  %5711 = trunc i32 %5710 to i8
  %5712 = and i8 %5711, 1
  %5713 = xor i8 %5712, 1
  %5714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5713, i8* %5714, align 1
  %5715 = xor i64 35672, %5699
  %5716 = xor i64 %5715, %5702
  %5717 = lshr i64 %5716, 4
  %5718 = trunc i64 %5717 to i8
  %5719 = and i8 %5718, 1
  %5720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5719, i8* %5720, align 1
  %5721 = icmp eq i64 %5702, 0
  %5722 = zext i1 %5721 to i8
  %5723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5722, i8* %5723, align 1
  %5724 = lshr i64 %5702, 63
  %5725 = trunc i64 %5724 to i8
  %5726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5725, i8* %5726, align 1
  %5727 = lshr i64 %5699, 63
  %5728 = xor i64 %5724, %5727
  %5729 = add i64 %5728, %5724
  %5730 = icmp eq i64 %5729, 2
  %5731 = zext i1 %5730 to i8
  %5732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5731, i8* %5732, align 1
  store %struct.Memory* %loadMem_42cb3e, %struct.Memory** %MEMORY
  %loadMem_42cb45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5734 = getelementptr inbounds %struct.GPR, %struct.GPR* %5733, i32 0, i32 33
  %5735 = getelementptr inbounds %struct.Reg, %struct.Reg* %5734, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %5735 to i64*
  %5736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5737 = getelementptr inbounds %struct.GPR, %struct.GPR* %5736, i32 0, i32 15
  %5738 = getelementptr inbounds %struct.Reg, %struct.Reg* %5737, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %5738 to i64*
  %5739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5740 = getelementptr inbounds %struct.GPR, %struct.GPR* %5739, i32 0, i32 17
  %5741 = getelementptr inbounds %struct.Reg, %struct.Reg* %5740, i32 0, i32 0
  %R8.i41 = bitcast %union.anon* %5741 to i64*
  %5742 = load i64, i64* %RBP.i40
  %5743 = sub i64 %5742, 20
  %5744 = load i64, i64* %PC.i39
  %5745 = add i64 %5744, 4
  store i64 %5745, i64* %PC.i39
  %5746 = inttoptr i64 %5743 to i32*
  %5747 = load i32, i32* %5746
  %5748 = sext i32 %5747 to i64
  store i64 %5748, i64* %R8.i41, align 8
  store %struct.Memory* %loadMem_42cb45, %struct.Memory** %MEMORY
  %loadMem_42cb49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5750 = getelementptr inbounds %struct.GPR, %struct.GPR* %5749, i32 0, i32 33
  %5751 = getelementptr inbounds %struct.Reg, %struct.Reg* %5750, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %5751 to i64*
  %5752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5753 = getelementptr inbounds %struct.GPR, %struct.GPR* %5752, i32 0, i32 17
  %5754 = getelementptr inbounds %struct.Reg, %struct.Reg* %5753, i32 0, i32 0
  %R8.i38 = bitcast %union.anon* %5754 to i64*
  %5755 = load i64, i64* %R8.i38
  %5756 = load i64, i64* %PC.i37
  %5757 = add i64 %5756, 4
  store i64 %5757, i64* %PC.i37
  %5758 = shl i64 %5755, 3
  %5759 = icmp slt i64 %5758, 0
  %5760 = shl i64 %5758, 1
  store i64 %5760, i64* %R8.i38, align 8
  %5761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5762 = zext i1 %5759 to i8
  store i8 %5762, i8* %5761, align 1
  %5763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5764 = trunc i64 %5760 to i32
  %5765 = and i32 %5764, 254
  %5766 = call i32 @llvm.ctpop.i32(i32 %5765)
  %5767 = trunc i32 %5766 to i8
  %5768 = and i8 %5767, 1
  %5769 = xor i8 %5768, 1
  store i8 %5769, i8* %5763, align 1
  %5770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5770, align 1
  %5771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5772 = icmp eq i64 %5760, 0
  %5773 = zext i1 %5772 to i8
  store i8 %5773, i8* %5771, align 1
  %5774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5775 = lshr i64 %5760, 63
  %5776 = trunc i64 %5775 to i8
  store i8 %5776, i8* %5774, align 1
  %5777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5777, align 1
  store %struct.Memory* %loadMem_42cb49, %struct.Memory** %MEMORY
  %loadMem_42cb4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5779 = getelementptr inbounds %struct.GPR, %struct.GPR* %5778, i32 0, i32 33
  %5780 = getelementptr inbounds %struct.Reg, %struct.Reg* %5779, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %5780 to i64*
  %5781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5782 = getelementptr inbounds %struct.GPR, %struct.GPR* %5781, i32 0, i32 9
  %5783 = getelementptr inbounds %struct.Reg, %struct.Reg* %5782, i32 0, i32 0
  %RSI.i36 = bitcast %union.anon* %5783 to i64*
  %5784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5785 = getelementptr inbounds %struct.GPR, %struct.GPR* %5784, i32 0, i32 17
  %5786 = getelementptr inbounds %struct.Reg, %struct.Reg* %5785, i32 0, i32 0
  %R8.i = bitcast %union.anon* %5786 to i64*
  %5787 = load i64, i64* %RSI.i36
  %5788 = load i64, i64* %R8.i
  %5789 = load i64, i64* %PC.i35
  %5790 = add i64 %5789, 3
  store i64 %5790, i64* %PC.i35
  %5791 = add i64 %5788, %5787
  store i64 %5791, i64* %RSI.i36, align 8
  %5792 = icmp ult i64 %5791, %5787
  %5793 = icmp ult i64 %5791, %5788
  %5794 = or i1 %5792, %5793
  %5795 = zext i1 %5794 to i8
  %5796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5795, i8* %5796, align 1
  %5797 = trunc i64 %5791 to i32
  %5798 = and i32 %5797, 255
  %5799 = call i32 @llvm.ctpop.i32(i32 %5798)
  %5800 = trunc i32 %5799 to i8
  %5801 = and i8 %5800, 1
  %5802 = xor i8 %5801, 1
  %5803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5802, i8* %5803, align 1
  %5804 = xor i64 %5788, %5787
  %5805 = xor i64 %5804, %5791
  %5806 = lshr i64 %5805, 4
  %5807 = trunc i64 %5806 to i8
  %5808 = and i8 %5807, 1
  %5809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5808, i8* %5809, align 1
  %5810 = icmp eq i64 %5791, 0
  %5811 = zext i1 %5810 to i8
  %5812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5811, i8* %5812, align 1
  %5813 = lshr i64 %5791, 63
  %5814 = trunc i64 %5813 to i8
  %5815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5814, i8* %5815, align 1
  %5816 = lshr i64 %5787, 63
  %5817 = lshr i64 %5788, 63
  %5818 = xor i64 %5813, %5816
  %5819 = xor i64 %5813, %5817
  %5820 = add i64 %5818, %5819
  %5821 = icmp eq i64 %5820, 2
  %5822 = zext i1 %5821 to i8
  %5823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5822, i8* %5823, align 1
  store %struct.Memory* %loadMem_42cb4d, %struct.Memory** %MEMORY
  %loadMem_42cb50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5825 = getelementptr inbounds %struct.GPR, %struct.GPR* %5824, i32 0, i32 33
  %5826 = getelementptr inbounds %struct.Reg, %struct.Reg* %5825, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %5826 to i64*
  %5827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5828 = getelementptr inbounds %struct.GPR, %struct.GPR* %5827, i32 0, i32 9
  %5829 = getelementptr inbounds %struct.Reg, %struct.Reg* %5828, i32 0, i32 0
  %RSI.i33 = bitcast %union.anon* %5829 to i64*
  %5830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5831 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5830, i64 0, i64 0
  %YMM0.i34 = bitcast %union.VectorReg* %5831 to %"class.std::bitset"*
  %5832 = bitcast %"class.std::bitset"* %YMM0.i34 to i8*
  %5833 = bitcast %"class.std::bitset"* %YMM0.i34 to i8*
  %5834 = load i64, i64* %RSI.i33
  %5835 = add i64 %5834, 8
  %5836 = load i64, i64* %PC.i32
  %5837 = add i64 %5836, 5
  store i64 %5837, i64* %PC.i32
  %5838 = bitcast i8* %5833 to <2 x float>*
  %5839 = load <2 x float>, <2 x float>* %5838, align 1
  %5840 = getelementptr inbounds i8, i8* %5833, i64 8
  %5841 = bitcast i8* %5840 to <2 x i32>*
  %5842 = load <2 x i32>, <2 x i32>* %5841, align 1
  %5843 = inttoptr i64 %5835 to float*
  %5844 = load float, float* %5843
  %5845 = extractelement <2 x float> %5839, i32 0
  %5846 = fmul float %5845, %5844
  %5847 = bitcast i8* %5832 to float*
  store float %5846, float* %5847, align 1
  %5848 = bitcast <2 x float> %5839 to <2 x i32>
  %5849 = extractelement <2 x i32> %5848, i32 1
  %5850 = getelementptr inbounds i8, i8* %5832, i64 4
  %5851 = bitcast i8* %5850 to i32*
  store i32 %5849, i32* %5851, align 1
  %5852 = extractelement <2 x i32> %5842, i32 0
  %5853 = getelementptr inbounds i8, i8* %5832, i64 8
  %5854 = bitcast i8* %5853 to i32*
  store i32 %5852, i32* %5854, align 1
  %5855 = extractelement <2 x i32> %5842, i32 1
  %5856 = getelementptr inbounds i8, i8* %5832, i64 12
  %5857 = bitcast i8* %5856 to i32*
  store i32 %5855, i32* %5857, align 1
  store %struct.Memory* %loadMem_42cb50, %struct.Memory** %MEMORY
  %loadMem_42cb55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5859 = getelementptr inbounds %struct.GPR, %struct.GPR* %5858, i32 0, i32 33
  %5860 = getelementptr inbounds %struct.Reg, %struct.Reg* %5859, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %5860 to i64*
  %5861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5862 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5861, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %5862 to %"class.std::bitset"*
  %5863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5864 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5863, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %5864 to %union.vec128_t*
  %5865 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %5866 = bitcast %union.vec128_t* %XMM0.i to i8*
  %5867 = load i64, i64* %PC.i31
  %5868 = add i64 %5867, 4
  store i64 %5868, i64* %PC.i31
  %5869 = bitcast i8* %5866 to <2 x float>*
  %5870 = load <2 x float>, <2 x float>* %5869, align 1
  %5871 = extractelement <2 x float> %5870, i32 0
  %5872 = fpext float %5871 to double
  %5873 = bitcast i8* %5865 to double*
  store double %5872, double* %5873, align 1
  store %struct.Memory* %loadMem_42cb55, %struct.Memory** %MEMORY
  %loadMem_42cb59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5875 = getelementptr inbounds %struct.GPR, %struct.GPR* %5874, i32 0, i32 33
  %5876 = getelementptr inbounds %struct.Reg, %struct.Reg* %5875, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %5876 to i64*
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5878 = getelementptr inbounds %struct.GPR, %struct.GPR* %5877, i32 0, i32 15
  %5879 = getelementptr inbounds %struct.Reg, %struct.Reg* %5878, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %5879 to i64*
  %5880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5881 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5880, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %5881 to %"class.std::bitset"*
  %5882 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %5883 = load i64, i64* %RBP.i30
  %5884 = sub i64 %5883, 32
  %5885 = load i64, i64* %PC.i29
  %5886 = add i64 %5885, 5
  store i64 %5886, i64* %PC.i29
  %5887 = inttoptr i64 %5884 to float*
  %5888 = load float, float* %5887
  %5889 = fpext float %5888 to double
  %5890 = bitcast i8* %5882 to double*
  store double %5889, double* %5890, align 1
  store %struct.Memory* %loadMem_42cb59, %struct.Memory** %MEMORY
  %loadMem_42cb5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5892 = getelementptr inbounds %struct.GPR, %struct.GPR* %5891, i32 0, i32 33
  %5893 = getelementptr inbounds %struct.Reg, %struct.Reg* %5892, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %5893 to i64*
  %5894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5895 = getelementptr inbounds %struct.GPR, %struct.GPR* %5894, i32 0, i32 1
  %5896 = getelementptr inbounds %struct.Reg, %struct.Reg* %5895, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %5896 to i64*
  %5897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5898 = getelementptr inbounds %struct.GPR, %struct.GPR* %5897, i32 0, i32 9
  %5899 = getelementptr inbounds %struct.Reg, %struct.Reg* %5898, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5899 to i64*
  %5900 = load i64, i64* %RAX.i28
  %5901 = load i64, i64* %PC.i27
  %5902 = add i64 %5901, 3
  store i64 %5902, i64* %PC.i27
  store i64 %5900, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_42cb5e, %struct.Memory** %MEMORY
  %loadMem_42cb61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5904 = getelementptr inbounds %struct.GPR, %struct.GPR* %5903, i32 0, i32 33
  %5905 = getelementptr inbounds %struct.Reg, %struct.Reg* %5904, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %5905 to i64*
  %5906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5907 = getelementptr inbounds %struct.GPR, %struct.GPR* %5906, i32 0, i32 1
  %5908 = getelementptr inbounds %struct.Reg, %struct.Reg* %5907, i32 0, i32 0
  %5909 = bitcast %union.anon* %5908 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5909, i32 0, i32 0
  %5910 = load i64, i64* %PC.i26
  %5911 = add i64 %5910, 2
  store i64 %5911, i64* %PC.i26
  store i8 2, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_42cb61, %struct.Memory** %MEMORY
  %loadMem1_42cb63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5913 = getelementptr inbounds %struct.GPR, %struct.GPR* %5912, i32 0, i32 33
  %5914 = getelementptr inbounds %struct.Reg, %struct.Reg* %5913, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %5914 to i64*
  %5915 = load i64, i64* %PC.i25
  %5916 = add i64 %5915, 152141
  %5917 = load i64, i64* %PC.i25
  %5918 = add i64 %5917, 5
  %5919 = load i64, i64* %PC.i25
  %5920 = add i64 %5919, 5
  store i64 %5920, i64* %PC.i25
  %5921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5922 = load i64, i64* %5921, align 8
  %5923 = add i64 %5922, -8
  %5924 = inttoptr i64 %5923 to i64*
  store i64 %5918, i64* %5924
  store i64 %5923, i64* %5921, align 8
  %5925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5916, i64* %5925, align 8
  store %struct.Memory* %loadMem1_42cb63, %struct.Memory** %MEMORY
  %loadMem2_42cb63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cb63 = load i64, i64* %3
  %call2_42cb63 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_42cb63, %struct.Memory* %loadMem2_42cb63)
  store %struct.Memory* %call2_42cb63, %struct.Memory** %MEMORY
  %loadMem_42cb68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5927 = getelementptr inbounds %struct.GPR, %struct.GPR* %5926, i32 0, i32 33
  %5928 = getelementptr inbounds %struct.Reg, %struct.Reg* %5927, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %5928 to i64*
  %5929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5930 = getelementptr inbounds %struct.GPR, %struct.GPR* %5929, i32 0, i32 1
  %5931 = getelementptr inbounds %struct.Reg, %struct.Reg* %5930, i32 0, i32 0
  %EAX.i23 = bitcast %union.anon* %5931 to i32*
  %5932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5933 = getelementptr inbounds %struct.GPR, %struct.GPR* %5932, i32 0, i32 15
  %5934 = getelementptr inbounds %struct.Reg, %struct.Reg* %5933, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %5934 to i64*
  %5935 = load i64, i64* %RBP.i24
  %5936 = sub i64 %5935, 52
  %5937 = load i32, i32* %EAX.i23
  %5938 = zext i32 %5937 to i64
  %5939 = load i64, i64* %PC.i22
  %5940 = add i64 %5939, 3
  store i64 %5940, i64* %PC.i22
  %5941 = inttoptr i64 %5936 to i32*
  store i32 %5937, i32* %5941
  store %struct.Memory* %loadMem_42cb68, %struct.Memory** %MEMORY
  br label %block_.L_42cb6b

block_.L_42cb6b:                                  ; preds = %block_.L_42caf3, %block_42caee
  %loadMem_42cb6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5943 = getelementptr inbounds %struct.GPR, %struct.GPR* %5942, i32 0, i32 33
  %5944 = getelementptr inbounds %struct.Reg, %struct.Reg* %5943, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %5944 to i64*
  %5945 = load i64, i64* %PC.i21
  %5946 = add i64 %5945, 5
  %5947 = load i64, i64* %PC.i21
  %5948 = add i64 %5947, 5
  store i64 %5948, i64* %PC.i21
  %5949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5946, i64* %5949, align 8
  store %struct.Memory* %loadMem_42cb6b, %struct.Memory** %MEMORY
  br label %block_.L_42cb70

block_.L_42cb70:                                  ; preds = %block_.L_42cb6b, %block_42ca43
  %loadMem_42cb70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5951 = getelementptr inbounds %struct.GPR, %struct.GPR* %5950, i32 0, i32 33
  %5952 = getelementptr inbounds %struct.Reg, %struct.Reg* %5951, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %5952 to i64*
  %5953 = load i64, i64* %PC.i20
  %5954 = add i64 %5953, 5
  %5955 = load i64, i64* %PC.i20
  %5956 = add i64 %5955, 5
  store i64 %5956, i64* %PC.i20
  %5957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5954, i64* %5957, align 8
  store %struct.Memory* %loadMem_42cb70, %struct.Memory** %MEMORY
  br label %block_.L_42cb75

block_.L_42cb75:                                  ; preds = %block_.L_42cb70
  %loadMem_42cb75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5959 = getelementptr inbounds %struct.GPR, %struct.GPR* %5958, i32 0, i32 33
  %5960 = getelementptr inbounds %struct.Reg, %struct.Reg* %5959, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %5960 to i64*
  %5961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5962 = getelementptr inbounds %struct.GPR, %struct.GPR* %5961, i32 0, i32 1
  %5963 = getelementptr inbounds %struct.Reg, %struct.Reg* %5962, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %5963 to i64*
  %5964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5965 = getelementptr inbounds %struct.GPR, %struct.GPR* %5964, i32 0, i32 15
  %5966 = getelementptr inbounds %struct.Reg, %struct.Reg* %5965, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %5966 to i64*
  %5967 = load i64, i64* %RBP.i19
  %5968 = sub i64 %5967, 20
  %5969 = load i64, i64* %PC.i17
  %5970 = add i64 %5969, 3
  store i64 %5970, i64* %PC.i17
  %5971 = inttoptr i64 %5968 to i32*
  %5972 = load i32, i32* %5971
  %5973 = zext i32 %5972 to i64
  store i64 %5973, i64* %RAX.i18, align 8
  store %struct.Memory* %loadMem_42cb75, %struct.Memory** %MEMORY
  %loadMem_42cb78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5975 = getelementptr inbounds %struct.GPR, %struct.GPR* %5974, i32 0, i32 33
  %5976 = getelementptr inbounds %struct.Reg, %struct.Reg* %5975, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %5976 to i64*
  %5977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5978 = getelementptr inbounds %struct.GPR, %struct.GPR* %5977, i32 0, i32 1
  %5979 = getelementptr inbounds %struct.Reg, %struct.Reg* %5978, i32 0, i32 0
  %RAX.i16 = bitcast %union.anon* %5979 to i64*
  %5980 = load i64, i64* %RAX.i16
  %5981 = load i64, i64* %PC.i15
  %5982 = add i64 %5981, 3
  store i64 %5982, i64* %PC.i15
  %5983 = trunc i64 %5980 to i32
  %5984 = add i32 1, %5983
  %5985 = zext i32 %5984 to i64
  store i64 %5985, i64* %RAX.i16, align 8
  %5986 = icmp ult i32 %5984, %5983
  %5987 = icmp ult i32 %5984, 1
  %5988 = or i1 %5986, %5987
  %5989 = zext i1 %5988 to i8
  %5990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5989, i8* %5990, align 1
  %5991 = and i32 %5984, 255
  %5992 = call i32 @llvm.ctpop.i32(i32 %5991)
  %5993 = trunc i32 %5992 to i8
  %5994 = and i8 %5993, 1
  %5995 = xor i8 %5994, 1
  %5996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5995, i8* %5996, align 1
  %5997 = xor i64 1, %5980
  %5998 = trunc i64 %5997 to i32
  %5999 = xor i32 %5998, %5984
  %6000 = lshr i32 %5999, 4
  %6001 = trunc i32 %6000 to i8
  %6002 = and i8 %6001, 1
  %6003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6002, i8* %6003, align 1
  %6004 = icmp eq i32 %5984, 0
  %6005 = zext i1 %6004 to i8
  %6006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6005, i8* %6006, align 1
  %6007 = lshr i32 %5984, 31
  %6008 = trunc i32 %6007 to i8
  %6009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6008, i8* %6009, align 1
  %6010 = lshr i32 %5983, 31
  %6011 = xor i32 %6007, %6010
  %6012 = add i32 %6011, %6007
  %6013 = icmp eq i32 %6012, 2
  %6014 = zext i1 %6013 to i8
  %6015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6014, i8* %6015, align 1
  store %struct.Memory* %loadMem_42cb78, %struct.Memory** %MEMORY
  %loadMem_42cb7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6017 = getelementptr inbounds %struct.GPR, %struct.GPR* %6016, i32 0, i32 33
  %6018 = getelementptr inbounds %struct.Reg, %struct.Reg* %6017, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %6018 to i64*
  %6019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6020 = getelementptr inbounds %struct.GPR, %struct.GPR* %6019, i32 0, i32 1
  %6021 = getelementptr inbounds %struct.Reg, %struct.Reg* %6020, i32 0, i32 0
  %EAX.i13 = bitcast %union.anon* %6021 to i32*
  %6022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6023 = getelementptr inbounds %struct.GPR, %struct.GPR* %6022, i32 0, i32 15
  %6024 = getelementptr inbounds %struct.Reg, %struct.Reg* %6023, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %6024 to i64*
  %6025 = load i64, i64* %RBP.i14
  %6026 = sub i64 %6025, 20
  %6027 = load i32, i32* %EAX.i13
  %6028 = zext i32 %6027 to i64
  %6029 = load i64, i64* %PC.i12
  %6030 = add i64 %6029, 3
  store i64 %6030, i64* %PC.i12
  %6031 = inttoptr i64 %6026 to i32*
  store i32 %6027, i32* %6031
  store %struct.Memory* %loadMem_42cb7b, %struct.Memory** %MEMORY
  %loadMem_42cb7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6033 = getelementptr inbounds %struct.GPR, %struct.GPR* %6032, i32 0, i32 33
  %6034 = getelementptr inbounds %struct.Reg, %struct.Reg* %6033, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %6034 to i64*
  %6035 = load i64, i64* %PC.i11
  %6036 = add i64 %6035, -403
  %6037 = load i64, i64* %PC.i11
  %6038 = add i64 %6037, 5
  store i64 %6038, i64* %PC.i11
  %6039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6036, i64* %6039, align 8
  store %struct.Memory* %loadMem_42cb7e, %struct.Memory** %MEMORY
  br label %block_.L_42c9eb

block_.L_42cb83:                                  ; preds = %block_42ca32
  %loadMem_42cb83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6041 = getelementptr inbounds %struct.GPR, %struct.GPR* %6040, i32 0, i32 33
  %6042 = getelementptr inbounds %struct.Reg, %struct.Reg* %6041, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %6042 to i64*
  %6043 = load i64, i64* %PC.i10
  %6044 = add i64 %6043, 5
  %6045 = load i64, i64* %PC.i10
  %6046 = add i64 %6045, 5
  store i64 %6046, i64* %PC.i10
  %6047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6044, i64* %6047, align 8
  store %struct.Memory* %loadMem_42cb83, %struct.Memory** %MEMORY
  br label %block_.L_42cb88

block_.L_42cb88:                                  ; preds = %block_.L_42cb83, %block_.L_42c85f
  %loadMem_42cb88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6049 = getelementptr inbounds %struct.GPR, %struct.GPR* %6048, i32 0, i32 33
  %6050 = getelementptr inbounds %struct.Reg, %struct.Reg* %6049, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %6050 to i64*
  %6051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6052 = getelementptr inbounds %struct.GPR, %struct.GPR* %6051, i32 0, i32 1
  %6053 = getelementptr inbounds %struct.Reg, %struct.Reg* %6052, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %6053 to i64*
  %6054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6055 = getelementptr inbounds %struct.GPR, %struct.GPR* %6054, i32 0, i32 15
  %6056 = getelementptr inbounds %struct.Reg, %struct.Reg* %6055, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %6056 to i64*
  %6057 = load i64, i64* %RBP.i9
  %6058 = sub i64 %6057, 20
  %6059 = load i64, i64* %PC.i8
  %6060 = add i64 %6059, 3
  store i64 %6060, i64* %PC.i8
  %6061 = inttoptr i64 %6058 to i32*
  %6062 = load i32, i32* %6061
  %6063 = zext i32 %6062 to i64
  store i64 %6063, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_42cb88, %struct.Memory** %MEMORY
  %loadMem_42cb8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6065 = getelementptr inbounds %struct.GPR, %struct.GPR* %6064, i32 0, i32 33
  %6066 = getelementptr inbounds %struct.Reg, %struct.Reg* %6065, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %6066 to i64*
  %6067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6068 = getelementptr inbounds %struct.GPR, %struct.GPR* %6067, i32 0, i32 1
  %6069 = getelementptr inbounds %struct.Reg, %struct.Reg* %6068, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %6069 to i32*
  %6070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6071 = getelementptr inbounds %struct.GPR, %struct.GPR* %6070, i32 0, i32 15
  %6072 = getelementptr inbounds %struct.Reg, %struct.Reg* %6071, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %6072 to i64*
  %6073 = load i64, i64* %RBP.i7
  %6074 = sub i64 %6073, 16
  %6075 = load i32, i32* %EAX.i
  %6076 = zext i32 %6075 to i64
  %6077 = load i64, i64* %PC.i6
  %6078 = add i64 %6077, 3
  store i64 %6078, i64* %PC.i6
  %6079 = inttoptr i64 %6074 to i32*
  store i32 %6075, i32* %6079
  store %struct.Memory* %loadMem_42cb8b, %struct.Memory** %MEMORY
  %loadMem_42cb8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6081 = getelementptr inbounds %struct.GPR, %struct.GPR* %6080, i32 0, i32 33
  %6082 = getelementptr inbounds %struct.Reg, %struct.Reg* %6081, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %6082 to i64*
  %6083 = load i64, i64* %PC.i5
  %6084 = add i64 %6083, -1093
  %6085 = load i64, i64* %PC.i5
  %6086 = add i64 %6085, 5
  store i64 %6086, i64* %PC.i5
  %6087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6084, i64* %6087, align 8
  store %struct.Memory* %loadMem_42cb8e, %struct.Memory** %MEMORY
  br label %block_.L_42c749

block_.L_42cb93:                                  ; preds = %block_.L_42c749
  %loadMem_42cb93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6089 = getelementptr inbounds %struct.GPR, %struct.GPR* %6088, i32 0, i32 33
  %6090 = getelementptr inbounds %struct.Reg, %struct.Reg* %6089, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %6090 to i64*
  %6091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6092 = getelementptr inbounds %struct.GPR, %struct.GPR* %6091, i32 0, i32 13
  %6093 = getelementptr inbounds %struct.Reg, %struct.Reg* %6092, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %6093 to i64*
  %6094 = load i64, i64* %RSP.i
  %6095 = load i64, i64* %PC.i4
  %6096 = add i64 %6095, 4
  store i64 %6096, i64* %PC.i4
  %6097 = add i64 64, %6094
  store i64 %6097, i64* %RSP.i, align 8
  %6098 = icmp ult i64 %6097, %6094
  %6099 = icmp ult i64 %6097, 64
  %6100 = or i1 %6098, %6099
  %6101 = zext i1 %6100 to i8
  %6102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6101, i8* %6102, align 1
  %6103 = trunc i64 %6097 to i32
  %6104 = and i32 %6103, 255
  %6105 = call i32 @llvm.ctpop.i32(i32 %6104)
  %6106 = trunc i32 %6105 to i8
  %6107 = and i8 %6106, 1
  %6108 = xor i8 %6107, 1
  %6109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6108, i8* %6109, align 1
  %6110 = xor i64 64, %6094
  %6111 = xor i64 %6110, %6097
  %6112 = lshr i64 %6111, 4
  %6113 = trunc i64 %6112 to i8
  %6114 = and i8 %6113, 1
  %6115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6114, i8* %6115, align 1
  %6116 = icmp eq i64 %6097, 0
  %6117 = zext i1 %6116 to i8
  %6118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6117, i8* %6118, align 1
  %6119 = lshr i64 %6097, 63
  %6120 = trunc i64 %6119 to i8
  %6121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6120, i8* %6121, align 1
  %6122 = lshr i64 %6094, 63
  %6123 = xor i64 %6119, %6122
  %6124 = add i64 %6123, %6119
  %6125 = icmp eq i64 %6124, 2
  %6126 = zext i1 %6125 to i8
  %6127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6126, i8* %6127, align 1
  store %struct.Memory* %loadMem_42cb93, %struct.Memory** %MEMORY
  %loadMem_42cb97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6129 = getelementptr inbounds %struct.GPR, %struct.GPR* %6128, i32 0, i32 33
  %6130 = getelementptr inbounds %struct.Reg, %struct.Reg* %6129, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6130 to i64*
  %6131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6132 = getelementptr inbounds %struct.GPR, %struct.GPR* %6131, i32 0, i32 15
  %6133 = getelementptr inbounds %struct.Reg, %struct.Reg* %6132, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6133 to i64*
  %6134 = load i64, i64* %PC.i2
  %6135 = add i64 %6134, 1
  store i64 %6135, i64* %PC.i2
  %6136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6137 = load i64, i64* %6136, align 8
  %6138 = add i64 %6137, 8
  %6139 = inttoptr i64 %6137 to i64*
  %6140 = load i64, i64* %6139
  store i64 %6140, i64* %RBP.i3, align 8
  store i64 %6138, i64* %6136, align 8
  store %struct.Memory* %loadMem_42cb97, %struct.Memory** %MEMORY
  %loadMem_42cb98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6142 = getelementptr inbounds %struct.GPR, %struct.GPR* %6141, i32 0, i32 33
  %6143 = getelementptr inbounds %struct.Reg, %struct.Reg* %6142, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6143 to i64*
  %6144 = load i64, i64* %PC.i1
  %6145 = add i64 %6144, 1
  store i64 %6145, i64* %PC.i1
  %6146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6148 = load i64, i64* %6147, align 8
  %6149 = inttoptr i64 %6148 to i64*
  %6150 = load i64, i64* %6149
  store i64 %6150, i64* %6146, align 8
  %6151 = add i64 %6148, 8
  store i64 %6151, i64* %6147, align 8
  store %struct.Memory* %loadMem_42cb98, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_42cb98
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

define %struct.Memory* @routine_subq__0x40___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 64
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 64
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
  %23 = xor i64 64, %9
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

define %struct.Memory* @routine_movl__0x10___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 16, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__0x42cd40___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x42cd40_type* @G__0x42cd40 to i64), i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 20
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_addq__0x8b58___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 35672, %9
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 35672
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
  %25 = xor i64 35672, %9
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

define %struct.Memory* @routine_movq_MINUS0x8__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x8b54__r8____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 35668
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.gg_sort(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl_0x8b54__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 35668
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

define %struct.Memory* @routine_jge_.L_42cb93(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x8b58___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 35672, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 35672
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
  %25 = xor i64 35672, %9
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

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_42c86d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x4__rax____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_movss_0xc__rax____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
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

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.add_influence_source(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xab0f24___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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

define %struct.Memory* @routine_jne_.L_42c7f8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_42c85f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57c705___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57c705_type* @G__0x57c705 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586e37___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586e37_type* @G__0x586e37 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586e29___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x586e29_type* @G__0x586e29 to i64), i64* %RCX, align 8
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

define %struct.Memory* @routine_cmoveq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = load i64, i64* %RAX, align 8
  %19 = select i1 %17, i64 %12, i64 %18
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x8b58___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 35672, %9
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 35672
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
  %25 = xor i64 35672, %9
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

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_0x4__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 3
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

define %struct.Memory* @routine_addq__rsi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RSI
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

define %struct.Memory* @routine_cvtss2sd_0x8__rcx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
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

define %struct.Memory* @routine_movb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 1, i8* %AL, align 1
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

define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42cb88(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_42c892(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x1450__rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 5200
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %14 to float*
  store float %23, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %14, i64 4
  %26 = bitcast i8* %25 to float*
  store float 0.000000e+00, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %14, i64 8
  %28 = bitcast i8* %27 to float*
  store float 0.000000e+00, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %14, i64 12
  %30 = bitcast i8* %29 to float*
  store float 0.000000e+00, float* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 36
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

define %struct.Memory* @routine_jmpq_.L_42c8a8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_0xe10__rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 3600
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %14 to float*
  store float %23, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %14, i64 4
  %26 = bitcast i8* %25 to float*
  store float 0.000000e+00, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %14, i64 8
  %28 = bitcast i8* %27 to float*
  store float 0.000000e+00, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %14, i64 12
  %30 = bitcast i8* %29 to float*
  store float 0.000000e+00, float* %30, align 1
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

define %struct.Memory* @routine_movb__al___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  store i8 %14, i8* %CL, align 1
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

define %struct.Memory* @routine_cmpl_0x8b54__rdx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = add i64 %14, 35668
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

define %struct.Memory* @routine_movb__cl__MINUS0x2d__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 45
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_42c8ea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x18__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 24
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

define %struct.Memory* @routine_movb__sil__MINUS0x2d__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 45
  %15 = load i8, i8* %SIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x2d__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 45
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_testb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i8, i8* %AL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 2
  store i64 %13, i64* %PC
  %14 = and i64 1, %11
  %15 = trunc i64 %14 to i8
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

define %struct.Memory* @routine_jne_.L_42c8fa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_42c978(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_42c941(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x4__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_42c965(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addss_MINUS0x1c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_42c96a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42c8ae(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0xb72714___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb72714_type* @G__0xb72714 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__rax__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %18, %14
  %20 = icmp ult i64 %18, %14
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
  %30 = xor i64 %18, %14
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
  %42 = lshr i64 %18, 63
  %43 = lshr i64 %14, 63
  %44 = xor i64 %42, %43
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_42c99b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_MINUS0x24__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42c9b5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0xb667d__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xb667d__rip__type* @G_0xb667d__rip_ to i64)
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
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

define %struct.Memory* @routine_movss_MINUS0x1c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
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

define %struct.Memory* @routine_ucomiss_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
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

define %struct.Memory* @routine_jbe_.L_42c9d8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_divss_MINUS0x1c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %25 = fdiv float %24, %23
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42c9e5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_0xb672c__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xb672c__rip__type* @G_0xb672c__rip_ to i64)
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

define %struct.Memory* @routine_movb__cl__MINUS0x2e__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 46
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_42ca27(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__sil__MINUS0x2e__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 46
  %15 = load i8, i8* %SIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x2e__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 46
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_42ca37(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_42cb83(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_42ca7e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_42cb70(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_MINUS0x20__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
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

define %struct.Memory* @routine_mulss_0x8__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 8
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
  %25 = fmul float %24, %23
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

define %struct.Memory* @routine_jne_.L_42caf3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_42cb6b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57c72b___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57c72b_type* @G__0x57c72b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__rcx____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x8b58___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = add i64 35672, %9
  store i64 %12, i64* %RSI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 35672
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
  %25 = xor i64 35672, %9
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

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x4___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 3
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %R8, align 8
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

define %struct.Memory* @routine_addq__r8___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RSI, align 8
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

define %struct.Memory* @routine_mulss_0x8__rsi____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RSI
  %14 = add i64 %13, 8
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
  %25 = fmul float %24, %23
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

define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = bitcast i8* %11 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = fpext float %16 to double
  %18 = bitcast i8* %10 to double*
  store double %17, double* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x20__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x2___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 2, i8* %AL, align 1
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

define %struct.Memory* @routine_jmpq_.L_42cb70(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42cb75(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42c9eb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42c749(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x40___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 64, %9
  store i64 %12, i64* %RSP, align 8
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
