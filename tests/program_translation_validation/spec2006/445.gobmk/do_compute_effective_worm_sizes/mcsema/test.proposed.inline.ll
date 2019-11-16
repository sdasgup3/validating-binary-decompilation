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
%G_0x58ad1__rip__type = type <{ [8 x i8] }>
%G_0x58b3a__rip__type = type <{ [8 x i8] }>
%G_0x7ae438_type = type <{ [4 x i8] }>
%G__0x582e3b_type = type <{ [8 x i8] }>
%G__0x5832cb_type = type <{ [8 x i8] }>
%G__0xae4620_type = type <{ [8 x i8] }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
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
@G_0x58ad1__rip_ = global %G_0x58ad1__rip__type zeroinitializer
@G_0x58b3a__rip_ = global %G_0x58b3a__rip__type zeroinitializer
@G_0x7ae438 = global %G_0x7ae438_type zeroinitializer
@G__0x582e3b = global %G__0x582e3b_type zeroinitializer
@G__0x5832cb = global %G__0x5832cb_type zeroinitializer
@G__0xae4620 = global %G__0xae4620_type zeroinitializer
@G__0xb0eff0 = global %G__0xb0eff0_type zeroinitializer

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

declare %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_488480.propagate_worm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @do_compute_effective_worm_sizes(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_489f70 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_489f70, %struct.Memory** %MEMORY
  %loadMem_489f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i760 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i761 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i760
  %27 = load i64, i64* %PC.i759
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i759
  store i64 %26, i64* %RBP.i761, align 8
  store %struct.Memory* %loadMem_489f71, %struct.Memory** %MEMORY
  %loadMem_489f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i758 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i758
  %36 = load i64, i64* %PC.i757
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i757
  %38 = sub i64 %35, 3280
  store i64 %38, i64* %RSP.i758, align 8
  %39 = icmp ult i64 %35, 3280
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
  %49 = xor i64 3280, %35
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
  store %struct.Memory* %loadMem_489f74, %struct.Memory** %MEMORY
  %loadMem_489f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i756 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i756
  %77 = sub i64 %76, 4
  %78 = load i32, i32* %EDI.i
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %PC.i755
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i755
  %82 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %82
  store %struct.Memory* %loadMem_489f7b, %struct.Memory** %MEMORY
  %loadMem_489f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RSI.i753 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RBP.i754 = bitcast %union.anon* %91 to i64*
  %92 = load i64, i64* %RBP.i754
  %93 = sub i64 %92, 16
  %94 = load i64, i64* %RSI.i753
  %95 = load i64, i64* %PC.i752
  %96 = add i64 %95, 4
  store i64 %96, i64* %PC.i752
  %97 = inttoptr i64 %93 to i64*
  store i64 %94, i64* %97
  store %struct.Memory* %loadMem_489f7e, %struct.Memory** %MEMORY
  %loadMem_489f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %RDX.i750 = bitcast %union.anon* %103 to i64*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 15
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RBP.i751 = bitcast %union.anon* %106 to i64*
  %107 = load i64, i64* %RBP.i751
  %108 = sub i64 %107, 24
  %109 = load i64, i64* %RDX.i750
  %110 = load i64, i64* %PC.i749
  %111 = add i64 %110, 4
  store i64 %111, i64* %PC.i749
  %112 = inttoptr i64 %108 to i64*
  store i64 %109, i64* %112
  store %struct.Memory* %loadMem_489f82, %struct.Memory** %MEMORY
  %loadMem_489f86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 33
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %115 to i64*
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %ECX.i747 = bitcast %union.anon* %118 to i32*
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 15
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %RBP.i748 = bitcast %union.anon* %121 to i64*
  %122 = load i64, i64* %RBP.i748
  %123 = sub i64 %122, 28
  %124 = load i32, i32* %ECX.i747
  %125 = zext i32 %124 to i64
  %126 = load i64, i64* %PC.i746
  %127 = add i64 %126, 3
  store i64 %127, i64* %PC.i746
  %128 = inttoptr i64 %123 to i32*
  store i32 %124, i32* %128
  store %struct.Memory* %loadMem_489f86, %struct.Memory** %MEMORY
  %loadMem_489f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 33
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 15
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RBP.i745 = bitcast %union.anon* %134 to i64*
  %135 = load i64, i64* %RBP.i745
  %136 = sub i64 %135, 32
  %137 = load i64, i64* %PC.i744
  %138 = add i64 %137, 7
  store i64 %138, i64* %PC.i744
  %139 = inttoptr i64 %136 to i32*
  store i32 21, i32* %139
  store %struct.Memory* %loadMem_489f89, %struct.Memory** %MEMORY
  br label %block_.L_489f90

block_.L_489f90:                                  ; preds = %block_.L_48a0af, %entry
  %loadMem_489f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 33
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 15
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %RBP.i743 = bitcast %union.anon* %145 to i64*
  %146 = load i64, i64* %RBP.i743
  %147 = sub i64 %146, 32
  %148 = load i64, i64* %PC.i742
  %149 = add i64 %148, 7
  store i64 %149, i64* %PC.i742
  %150 = inttoptr i64 %147 to i32*
  %151 = load i32, i32* %150
  %152 = sub i32 %151, 400
  %153 = icmp ult i32 %151, 400
  %154 = zext i1 %153 to i8
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %154, i8* %155, align 1
  %156 = and i32 %152, 255
  %157 = call i32 @llvm.ctpop.i32(i32 %156)
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  %160 = xor i8 %159, 1
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %160, i8* %161, align 1
  %162 = xor i32 %151, 400
  %163 = xor i32 %162, %152
  %164 = lshr i32 %163, 4
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %166, i8* %167, align 1
  %168 = icmp eq i32 %152, 0
  %169 = zext i1 %168 to i8
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %169, i8* %170, align 1
  %171 = lshr i32 %152, 31
  %172 = trunc i32 %171 to i8
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %172, i8* %173, align 1
  %174 = lshr i32 %151, 31
  %175 = xor i32 %171, %174
  %176 = add i32 %175, %174
  %177 = icmp eq i32 %176, 2
  %178 = zext i1 %177 to i8
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %178, i8* %179, align 1
  store %struct.Memory* %loadMem_489f90, %struct.Memory** %MEMORY
  %loadMem_489f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 33
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %182 to i64*
  %183 = load i64, i64* %PC.i741
  %184 = add i64 %183, 294
  %185 = load i64, i64* %PC.i741
  %186 = add i64 %185, 6
  %187 = load i64, i64* %PC.i741
  %188 = add i64 %187, 6
  store i64 %188, i64* %PC.i741
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %190 = load i8, i8* %189, align 1
  %191 = icmp ne i8 %190, 0
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %193 = load i8, i8* %192, align 1
  %194 = icmp ne i8 %193, 0
  %195 = xor i1 %191, %194
  %196 = xor i1 %195, true
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %BRANCH_TAKEN, align 1
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %199 = select i1 %195, i64 %186, i64 %184
  store i64 %199, i64* %198, align 8
  store %struct.Memory* %loadMem_489f97, %struct.Memory** %MEMORY
  %loadBr_489f97 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489f97 = icmp eq i8 %loadBr_489f97, 1
  br i1 %cmpBr_489f97, label %block_.L_48a0bd, label %block_489f9d

block_489f9d:                                     ; preds = %block_.L_489f90
  %loadMem_489f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 33
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %202 to i64*
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %RAX.i739 = bitcast %union.anon* %205 to i64*
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 15
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %RBP.i740 = bitcast %union.anon* %208 to i64*
  %209 = load i64, i64* %RBP.i740
  %210 = sub i64 %209, 32
  %211 = load i64, i64* %PC.i738
  %212 = add i64 %211, 4
  store i64 %212, i64* %PC.i738
  %213 = inttoptr i64 %210 to i32*
  %214 = load i32, i32* %213
  %215 = sext i32 %214 to i64
  store i64 %215, i64* %RAX.i739, align 8
  store %struct.Memory* %loadMem_489f9d, %struct.Memory** %MEMORY
  %loadMem_489fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 33
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %218 to i64*
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %RAX.i736 = bitcast %union.anon* %221 to i64*
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 5
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %RCX.i737 = bitcast %union.anon* %224 to i64*
  %225 = load i64, i64* %RAX.i736
  %226 = add i64 %225, 12099168
  %227 = load i64, i64* %PC.i735
  %228 = add i64 %227, 8
  store i64 %228, i64* %PC.i735
  %229 = inttoptr i64 %226 to i8*
  %230 = load i8, i8* %229
  %231 = zext i8 %230 to i64
  store i64 %231, i64* %RCX.i737, align 8
  store %struct.Memory* %loadMem_489fa1, %struct.Memory** %MEMORY
  %loadMem_489fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 33
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %234 to i64*
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %236 = getelementptr inbounds %struct.GPR, %struct.GPR* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.Reg, %struct.Reg* %236, i32 0, i32 0
  %ECX.i734 = bitcast %union.anon* %237 to i32*
  %238 = load i32, i32* %ECX.i734
  %239 = zext i32 %238 to i64
  %240 = load i64, i64* %PC.i733
  %241 = add i64 %240, 3
  store i64 %241, i64* %PC.i733
  %242 = sub i32 %238, 3
  %243 = icmp ult i32 %238, 3
  %244 = zext i1 %243 to i8
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %244, i8* %245, align 1
  %246 = and i32 %242, 255
  %247 = call i32 @llvm.ctpop.i32(i32 %246)
  %248 = trunc i32 %247 to i8
  %249 = and i8 %248, 1
  %250 = xor i8 %249, 1
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %250, i8* %251, align 1
  %252 = xor i64 3, %239
  %253 = trunc i64 %252 to i32
  %254 = xor i32 %253, %242
  %255 = lshr i32 %254, 4
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, 1
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %257, i8* %258, align 1
  %259 = icmp eq i32 %242, 0
  %260 = zext i1 %259 to i8
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %260, i8* %261, align 1
  %262 = lshr i32 %242, 31
  %263 = trunc i32 %262 to i8
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %263, i8* %264, align 1
  %265 = lshr i32 %238, 31
  %266 = xor i32 %262, %265
  %267 = add i32 %266, %265
  %268 = icmp eq i32 %267, 2
  %269 = zext i1 %268 to i8
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %269, i8* %270, align 1
  store %struct.Memory* %loadMem_489fa9, %struct.Memory** %MEMORY
  %loadMem_489fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 33
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %273 to i64*
  %274 = load i64, i64* %PC.i732
  %275 = add i64 %274, 11
  %276 = load i64, i64* %PC.i732
  %277 = add i64 %276, 6
  %278 = load i64, i64* %PC.i732
  %279 = add i64 %278, 6
  store i64 %279, i64* %PC.i732
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %281 = load i8, i8* %280, align 1
  %282 = icmp eq i8 %281, 0
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %BRANCH_TAKEN, align 1
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %285 = select i1 %282, i64 %275, i64 %277
  store i64 %285, i64* %284, align 8
  store %struct.Memory* %loadMem_489fac, %struct.Memory** %MEMORY
  %loadBr_489fac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489fac = icmp eq i8 %loadBr_489fac, 1
  br i1 %cmpBr_489fac, label %block_.L_489fb7, label %block_489fb2

block_489fb2:                                     ; preds = %block_489f9d
  %loadMem_489fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 33
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %288 to i64*
  %289 = load i64, i64* %PC.i731
  %290 = add i64 %289, 253
  %291 = load i64, i64* %PC.i731
  %292 = add i64 %291, 5
  store i64 %292, i64* %PC.i731
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %290, i64* %293, align 8
  store %struct.Memory* %loadMem_489fb2, %struct.Memory** %MEMORY
  br label %block_.L_48a0af

block_.L_489fb7:                                  ; preds = %block_489f9d
  %loadMem_489fb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 33
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 15
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %RBP.i730 = bitcast %union.anon* %299 to i64*
  %300 = load i64, i64* %RBP.i730
  %301 = sub i64 %300, 3244
  %302 = load i64, i64* %PC.i729
  %303 = add i64 %302, 10
  store i64 %303, i64* %PC.i729
  %304 = inttoptr i64 %301 to i32*
  store i32 0, i32* %304
  store %struct.Memory* %loadMem_489fb7, %struct.Memory** %MEMORY
  br label %block_.L_489fc1

block_.L_489fc1:                                  ; preds = %block_489fdc, %block_.L_489fb7
  %loadMem_489fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 33
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %307 to i64*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %RAX.i727 = bitcast %union.anon* %310 to i64*
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %312 = getelementptr inbounds %struct.GPR, %struct.GPR* %311, i32 0, i32 15
  %313 = getelementptr inbounds %struct.Reg, %struct.Reg* %312, i32 0, i32 0
  %RBP.i728 = bitcast %union.anon* %313 to i64*
  %314 = load i64, i64* %RBP.i728
  %315 = sub i64 %314, 3244
  %316 = load i64, i64* %PC.i726
  %317 = add i64 %316, 6
  store i64 %317, i64* %PC.i726
  %318 = inttoptr i64 %315 to i32*
  %319 = load i32, i32* %318
  %320 = zext i32 %319 to i64
  store i64 %320, i64* %RAX.i727, align 8
  store %struct.Memory* %loadMem_489fc1, %struct.Memory** %MEMORY
  %loadMem_489fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %322 = getelementptr inbounds %struct.GPR, %struct.GPR* %321, i32 0, i32 33
  %323 = getelementptr inbounds %struct.Reg, %struct.Reg* %322, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %323 to i64*
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 5
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %RCX.i725 = bitcast %union.anon* %326 to i64*
  %327 = load i64, i64* %PC.i724
  %328 = add i64 %327, 7
  store i64 %328, i64* %PC.i724
  %329 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RCX.i725, align 8
  store %struct.Memory* %loadMem_489fc7, %struct.Memory** %MEMORY
  %loadMem_489fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 33
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %333 to i64*
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 5
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %RCX.i723 = bitcast %union.anon* %336 to i64*
  %337 = load i64, i64* %RCX.i723
  %338 = load i64, i64* %PC.i722
  %339 = add i64 %338, 3
  store i64 %339, i64* %PC.i722
  %340 = trunc i64 %337 to i32
  %341 = sub i32 %340, 1
  %342 = zext i32 %341 to i64
  store i64 %342, i64* %RCX.i723, align 8
  %343 = icmp ult i32 %340, 1
  %344 = zext i1 %343 to i8
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %344, i8* %345, align 1
  %346 = and i32 %341, 255
  %347 = call i32 @llvm.ctpop.i32(i32 %346)
  %348 = trunc i32 %347 to i8
  %349 = and i8 %348, 1
  %350 = xor i8 %349, 1
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %350, i8* %351, align 1
  %352 = xor i64 1, %337
  %353 = trunc i64 %352 to i32
  %354 = xor i32 %353, %341
  %355 = lshr i32 %354, 4
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %357, i8* %358, align 1
  %359 = icmp eq i32 %341, 0
  %360 = zext i1 %359 to i8
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %360, i8* %361, align 1
  %362 = lshr i32 %341, 31
  %363 = trunc i32 %362 to i8
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %363, i8* %364, align 1
  %365 = lshr i32 %340, 31
  %366 = xor i32 %362, %365
  %367 = add i32 %366, %365
  %368 = icmp eq i32 %367, 2
  %369 = zext i1 %368 to i8
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %369, i8* %370, align 1
  store %struct.Memory* %loadMem_489fce, %struct.Memory** %MEMORY
  %loadMem_489fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 33
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %373 to i64*
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 5
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %RCX.i721 = bitcast %union.anon* %376 to i64*
  %377 = load i64, i64* %RCX.i721
  %378 = load i64, i64* %PC.i720
  %379 = add i64 %378, 2
  store i64 %379, i64* %PC.i720
  %380 = trunc i64 %377 to i32
  %381 = shl i32 %380, 1
  %382 = icmp slt i32 %380, 0
  %383 = icmp slt i32 %381, 0
  %384 = xor i1 %382, %383
  %385 = zext i32 %381 to i64
  store i64 %385, i64* %RCX.i721, align 8
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %387 = zext i1 %382 to i8
  store i8 %387, i8* %386, align 1
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %389 = and i32 %381, 254
  %390 = call i32 @llvm.ctpop.i32(i32 %389)
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  %393 = xor i8 %392, 1
  store i8 %393, i8* %388, align 1
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %394, align 1
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %396 = icmp eq i32 %381, 0
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %395, align 1
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %399 = lshr i32 %381, 31
  %400 = trunc i32 %399 to i8
  store i8 %400, i8* %398, align 1
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %402 = zext i1 %384 to i8
  store i8 %402, i8* %401, align 1
  store %struct.Memory* %loadMem_489fd1, %struct.Memory** %MEMORY
  %loadMem_489fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 33
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %405 to i64*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %EAX.i718 = bitcast %union.anon* %408 to i32*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 5
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %ECX.i719 = bitcast %union.anon* %411 to i32*
  %412 = load i32, i32* %EAX.i718
  %413 = zext i32 %412 to i64
  %414 = load i32, i32* %ECX.i719
  %415 = zext i32 %414 to i64
  %416 = load i64, i64* %PC.i717
  %417 = add i64 %416, 2
  store i64 %417, i64* %PC.i717
  %418 = sub i32 %412, %414
  %419 = icmp ult i32 %412, %414
  %420 = zext i1 %419 to i8
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %420, i8* %421, align 1
  %422 = and i32 %418, 255
  %423 = call i32 @llvm.ctpop.i32(i32 %422)
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  %426 = xor i8 %425, 1
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %426, i8* %427, align 1
  %428 = xor i64 %415, %413
  %429 = trunc i64 %428 to i32
  %430 = xor i32 %429, %418
  %431 = lshr i32 %430, 4
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %433, i8* %434, align 1
  %435 = icmp eq i32 %418, 0
  %436 = zext i1 %435 to i8
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %436, i8* %437, align 1
  %438 = lshr i32 %418, 31
  %439 = trunc i32 %438 to i8
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %439, i8* %440, align 1
  %441 = lshr i32 %412, 31
  %442 = lshr i32 %414, 31
  %443 = xor i32 %442, %441
  %444 = xor i32 %438, %441
  %445 = add i32 %444, %443
  %446 = icmp eq i32 %445, 2
  %447 = zext i1 %446 to i8
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %447, i8* %448, align 1
  store %struct.Memory* %loadMem_489fd4, %struct.Memory** %MEMORY
  %loadMem_489fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 33
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %451 to i64*
  %452 = load i64, i64* %PC.i716
  %453 = add i64 %452, 64
  %454 = load i64, i64* %PC.i716
  %455 = add i64 %454, 6
  %456 = load i64, i64* %PC.i716
  %457 = add i64 %456, 6
  store i64 %457, i64* %PC.i716
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %459 = load i8, i8* %458, align 1
  %460 = icmp ne i8 %459, 0
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %462 = load i8, i8* %461, align 1
  %463 = icmp ne i8 %462, 0
  %464 = xor i1 %460, %463
  %465 = xor i1 %464, true
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %BRANCH_TAKEN, align 1
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %468 = select i1 %464, i64 %455, i64 %453
  store i64 %468, i64* %467, align 8
  store %struct.Memory* %loadMem_489fd6, %struct.Memory** %MEMORY
  %loadBr_489fd6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489fd6 = icmp eq i8 %loadBr_489fd6, 1
  br i1 %cmpBr_489fd6, label %block_.L_48a016, label %block_489fdc

block_489fdc:                                     ; preds = %block_.L_489fc1
  %loadMem_489fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 33
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %471 to i64*
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 1
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %RAX.i715 = bitcast %union.anon* %474 to i64*
  %475 = load i64, i64* %PC.i714
  %476 = add i64 %475, 10
  store i64 %476, i64* %PC.i714
  store i64 ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64), i64* %RAX.i715, align 8
  store %struct.Memory* %loadMem_489fdc, %struct.Memory** %MEMORY
  %loadMem_489fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 33
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %479 to i64*
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 5
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %RCX.i712 = bitcast %union.anon* %482 to i64*
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 15
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %RBP.i713 = bitcast %union.anon* %485 to i64*
  %486 = load i64, i64* %RBP.i713
  %487 = sub i64 %486, 32
  %488 = load i64, i64* %PC.i711
  %489 = add i64 %488, 4
  store i64 %489, i64* %PC.i711
  %490 = inttoptr i64 %487 to i32*
  %491 = load i32, i32* %490
  %492 = sext i32 %491 to i64
  store i64 %492, i64* %RCX.i712, align 8
  store %struct.Memory* %loadMem_489fe6, %struct.Memory** %MEMORY
  %loadMem_489fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 33
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %495 to i64*
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %497 = getelementptr inbounds %struct.GPR, %struct.GPR* %496, i32 0, i32 5
  %498 = getelementptr inbounds %struct.Reg, %struct.Reg* %497, i32 0, i32 0
  %RCX.i710 = bitcast %union.anon* %498 to i64*
  %499 = load i64, i64* %RCX.i710
  %500 = load i64, i64* %PC.i709
  %501 = add i64 %500, 7
  store i64 %501, i64* %PC.i709
  %502 = sext i64 %499 to i128
  %503 = and i128 %502, -18446744073709551616
  %504 = zext i64 %499 to i128
  %505 = or i128 %503, %504
  %506 = mul i128 144, %505
  %507 = trunc i128 %506 to i64
  store i64 %507, i64* %RCX.i710, align 8
  %508 = sext i64 %507 to i128
  %509 = icmp ne i128 %508, %506
  %510 = zext i1 %509 to i8
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %510, i8* %511, align 1
  %512 = trunc i128 %506 to i32
  %513 = and i32 %512, 255
  %514 = call i32 @llvm.ctpop.i32(i32 %513)
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  %517 = xor i8 %516, 1
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %517, i8* %518, align 1
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %519, align 1
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %520, align 1
  %521 = lshr i64 %507, 63
  %522 = trunc i64 %521 to i8
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %522, i8* %523, align 1
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %510, i8* %524, align 1
  store %struct.Memory* %loadMem_489fea, %struct.Memory** %MEMORY
  %loadMem_489ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 33
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %527 to i64*
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 1
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %RAX.i707 = bitcast %union.anon* %530 to i64*
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 5
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %RCX.i708 = bitcast %union.anon* %533 to i64*
  %534 = load i64, i64* %RAX.i707
  %535 = load i64, i64* %RCX.i708
  %536 = load i64, i64* %PC.i706
  %537 = add i64 %536, 3
  store i64 %537, i64* %PC.i706
  %538 = add i64 %535, %534
  store i64 %538, i64* %RAX.i707, align 8
  %539 = icmp ult i64 %538, %534
  %540 = icmp ult i64 %538, %535
  %541 = or i1 %539, %540
  %542 = zext i1 %541 to i8
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %542, i8* %543, align 1
  %544 = trunc i64 %538 to i32
  %545 = and i32 %544, 255
  %546 = call i32 @llvm.ctpop.i32(i32 %545)
  %547 = trunc i32 %546 to i8
  %548 = and i8 %547, 1
  %549 = xor i8 %548, 1
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %549, i8* %550, align 1
  %551 = xor i64 %535, %534
  %552 = xor i64 %551, %538
  %553 = lshr i64 %552, 4
  %554 = trunc i64 %553 to i8
  %555 = and i8 %554, 1
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %555, i8* %556, align 1
  %557 = icmp eq i64 %538, 0
  %558 = zext i1 %557 to i8
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %558, i8* %559, align 1
  %560 = lshr i64 %538, 63
  %561 = trunc i64 %560 to i8
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %561, i8* %562, align 1
  %563 = lshr i64 %534, 63
  %564 = lshr i64 %535, 63
  %565 = xor i64 %560, %563
  %566 = xor i64 %560, %564
  %567 = add i64 %565, %566
  %568 = icmp eq i64 %567, 2
  %569 = zext i1 %568 to i8
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %569, i8* %570, align 1
  store %struct.Memory* %loadMem_489ff1, %struct.Memory** %MEMORY
  %loadMem_489ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 33
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 5
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %RCX.i704 = bitcast %union.anon* %576 to i64*
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 15
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %579 to i64*
  %580 = load i64, i64* %RBP.i705
  %581 = sub i64 %580, 3244
  %582 = load i64, i64* %PC.i703
  %583 = add i64 %582, 7
  store i64 %583, i64* %PC.i703
  %584 = inttoptr i64 %581 to i32*
  %585 = load i32, i32* %584
  %586 = sext i32 %585 to i64
  store i64 %586, i64* %RCX.i704, align 8
  store %struct.Memory* %loadMem_489ff4, %struct.Memory** %MEMORY
  %loadMem_489ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 33
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %589 to i64*
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %591 = getelementptr inbounds %struct.GPR, %struct.GPR* %590, i32 0, i32 1
  %592 = getelementptr inbounds %struct.Reg, %struct.Reg* %591, i32 0, i32 0
  %RAX.i701 = bitcast %union.anon* %592 to i64*
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 5
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %RCX.i702 = bitcast %union.anon* %595 to i64*
  %596 = load i64, i64* %RAX.i701
  %597 = load i64, i64* %RCX.i702
  %598 = mul i64 %597, 4
  %599 = add i64 %598, %596
  %600 = load i64, i64* %PC.i700
  %601 = add i64 %600, 7
  store i64 %601, i64* %PC.i700
  %602 = inttoptr i64 %599 to i32*
  store i32 0, i32* %602
  store %struct.Memory* %loadMem_489ffb, %struct.Memory** %MEMORY
  %loadMem_48a002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 33
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %605 to i64*
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 1
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %RAX.i698 = bitcast %union.anon* %608 to i64*
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 15
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %RBP.i699 = bitcast %union.anon* %611 to i64*
  %612 = load i64, i64* %RBP.i699
  %613 = sub i64 %612, 3244
  %614 = load i64, i64* %PC.i697
  %615 = add i64 %614, 6
  store i64 %615, i64* %PC.i697
  %616 = inttoptr i64 %613 to i32*
  %617 = load i32, i32* %616
  %618 = zext i32 %617 to i64
  store i64 %618, i64* %RAX.i698, align 8
  store %struct.Memory* %loadMem_48a002, %struct.Memory** %MEMORY
  %loadMem_48a008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 33
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %621 to i64*
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 1
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %RAX.i696 = bitcast %union.anon* %624 to i64*
  %625 = load i64, i64* %RAX.i696
  %626 = load i64, i64* %PC.i695
  %627 = add i64 %626, 3
  store i64 %627, i64* %PC.i695
  %628 = trunc i64 %625 to i32
  %629 = add i32 1, %628
  %630 = zext i32 %629 to i64
  store i64 %630, i64* %RAX.i696, align 8
  %631 = icmp ult i32 %629, %628
  %632 = icmp ult i32 %629, 1
  %633 = or i1 %631, %632
  %634 = zext i1 %633 to i8
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %634, i8* %635, align 1
  %636 = and i32 %629, 255
  %637 = call i32 @llvm.ctpop.i32(i32 %636)
  %638 = trunc i32 %637 to i8
  %639 = and i8 %638, 1
  %640 = xor i8 %639, 1
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %640, i8* %641, align 1
  %642 = xor i64 1, %625
  %643 = trunc i64 %642 to i32
  %644 = xor i32 %643, %629
  %645 = lshr i32 %644, 4
  %646 = trunc i32 %645 to i8
  %647 = and i8 %646, 1
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %647, i8* %648, align 1
  %649 = icmp eq i32 %629, 0
  %650 = zext i1 %649 to i8
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %650, i8* %651, align 1
  %652 = lshr i32 %629, 31
  %653 = trunc i32 %652 to i8
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %653, i8* %654, align 1
  %655 = lshr i32 %628, 31
  %656 = xor i32 %652, %655
  %657 = add i32 %656, %652
  %658 = icmp eq i32 %657, 2
  %659 = zext i1 %658 to i8
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %659, i8* %660, align 1
  store %struct.Memory* %loadMem_48a008, %struct.Memory** %MEMORY
  %loadMem_48a00b = load %struct.Memory*, %struct.Memory** %MEMORY
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 33
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %663 to i64*
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 1
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %EAX.i693 = bitcast %union.anon* %666 to i32*
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 15
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %RBP.i694 = bitcast %union.anon* %669 to i64*
  %670 = load i64, i64* %RBP.i694
  %671 = sub i64 %670, 3244
  %672 = load i32, i32* %EAX.i693
  %673 = zext i32 %672 to i64
  %674 = load i64, i64* %PC.i692
  %675 = add i64 %674, 6
  store i64 %675, i64* %PC.i692
  %676 = inttoptr i64 %671 to i32*
  store i32 %672, i32* %676
  store %struct.Memory* %loadMem_48a00b, %struct.Memory** %MEMORY
  %loadMem_48a011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 33
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %679 to i64*
  %680 = load i64, i64* %PC.i691
  %681 = add i64 %680, -80
  %682 = load i64, i64* %PC.i691
  %683 = add i64 %682, 5
  store i64 %683, i64* %PC.i691
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %681, i64* %684, align 8
  store %struct.Memory* %loadMem_48a011, %struct.Memory** %MEMORY
  br label %block_.L_489fc1

block_.L_48a016:                                  ; preds = %block_.L_489fc1
  %loadMem_48a016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 33
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %687 to i64*
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 1
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %RAX.i689 = bitcast %union.anon* %690 to i64*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 15
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %RBP.i690 = bitcast %union.anon* %693 to i64*
  %694 = load i64, i64* %RBP.i690
  %695 = sub i64 %694, 32
  %696 = load i64, i64* %PC.i688
  %697 = add i64 %696, 4
  store i64 %697, i64* %PC.i688
  %698 = inttoptr i64 %695 to i32*
  %699 = load i32, i32* %698
  %700 = sext i32 %699 to i64
  store i64 %700, i64* %RAX.i689, align 8
  store %struct.Memory* %loadMem_48a016, %struct.Memory** %MEMORY
  %loadMem_48a01a = load %struct.Memory*, %struct.Memory** %MEMORY
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 33
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %703 to i64*
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 1
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %RAX.i686 = bitcast %union.anon* %706 to i64*
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %708 = getelementptr inbounds %struct.GPR, %struct.GPR* %707, i32 0, i32 15
  %709 = getelementptr inbounds %struct.Reg, %struct.Reg* %708, i32 0, i32 0
  %RBP.i687 = bitcast %union.anon* %709 to i64*
  %710 = load i64, i64* %RBP.i687
  %711 = load i64, i64* %RAX.i686
  %712 = mul i64 %711, 4
  %713 = add i64 %710, -3232
  %714 = add i64 %713, %712
  %715 = load i64, i64* %PC.i685
  %716 = add i64 %715, 11
  store i64 %716, i64* %PC.i685
  %717 = inttoptr i64 %714 to i32*
  store i32 0, i32* %717
  store %struct.Memory* %loadMem_48a01a, %struct.Memory** %MEMORY
  %loadMem_48a025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 33
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %720 to i64*
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %722 = getelementptr inbounds %struct.GPR, %struct.GPR* %721, i32 0, i32 1
  %723 = getelementptr inbounds %struct.Reg, %struct.Reg* %722, i32 0, i32 0
  %RAX.i683 = bitcast %union.anon* %723 to i64*
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 15
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %RBP.i684 = bitcast %union.anon* %726 to i64*
  %727 = load i64, i64* %RBP.i684
  %728 = sub i64 %727, 32
  %729 = load i64, i64* %PC.i682
  %730 = add i64 %729, 4
  store i64 %730, i64* %PC.i682
  %731 = inttoptr i64 %728 to i32*
  %732 = load i32, i32* %731
  %733 = sext i32 %732 to i64
  store i64 %733, i64* %RAX.i683, align 8
  store %struct.Memory* %loadMem_48a025, %struct.Memory** %MEMORY
  %loadMem_48a029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 33
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %736 to i64*
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 1
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %RAX.i680 = bitcast %union.anon* %739 to i64*
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 5
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %RCX.i681 = bitcast %union.anon* %742 to i64*
  %743 = load i64, i64* %RAX.i680
  %744 = add i64 %743, 12099168
  %745 = load i64, i64* %PC.i679
  %746 = add i64 %745, 8
  store i64 %746, i64* %PC.i679
  %747 = inttoptr i64 %744 to i8*
  %748 = load i8, i8* %747
  %749 = zext i8 %748 to i64
  store i64 %749, i64* %RCX.i681, align 8
  store %struct.Memory* %loadMem_48a029, %struct.Memory** %MEMORY
  %loadMem_48a031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 33
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %752 to i64*
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 5
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %RCX.i677 = bitcast %union.anon* %755 to i64*
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %757 = getelementptr inbounds %struct.GPR, %struct.GPR* %756, i32 0, i32 15
  %758 = getelementptr inbounds %struct.Reg, %struct.Reg* %757, i32 0, i32 0
  %RBP.i678 = bitcast %union.anon* %758 to i64*
  %759 = load i64, i64* %RCX.i677
  %760 = load i64, i64* %RBP.i678
  %761 = sub i64 %760, 4
  %762 = load i64, i64* %PC.i676
  %763 = add i64 %762, 3
  store i64 %763, i64* %PC.i676
  %764 = trunc i64 %759 to i32
  %765 = inttoptr i64 %761 to i32*
  %766 = load i32, i32* %765
  %767 = and i32 %766, %764
  %768 = zext i32 %767 to i64
  store i64 %768, i64* %RCX.i677, align 8
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %769, align 1
  %770 = and i32 %767, 255
  %771 = call i32 @llvm.ctpop.i32(i32 %770)
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  %774 = xor i8 %773, 1
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %774, i8* %775, align 1
  %776 = icmp eq i32 %767, 0
  %777 = zext i1 %776 to i8
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %777, i8* %778, align 1
  %779 = lshr i32 %767, 31
  %780 = trunc i32 %779 to i8
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %780, i8* %781, align 1
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %782, align 1
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %783, align 1
  store %struct.Memory* %loadMem_48a031, %struct.Memory** %MEMORY
  %loadMem_48a034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 33
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %786 to i64*
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 5
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %ECX.i675 = bitcast %union.anon* %789 to i32*
  %790 = load i32, i32* %ECX.i675
  %791 = zext i32 %790 to i64
  %792 = load i64, i64* %PC.i674
  %793 = add i64 %792, 3
  store i64 %793, i64* %PC.i674
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %794, align 1
  %795 = and i32 %790, 255
  %796 = call i32 @llvm.ctpop.i32(i32 %795)
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  %799 = xor i8 %798, 1
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %799, i8* %800, align 1
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %801, align 1
  %802 = icmp eq i32 %790, 0
  %803 = zext i1 %802 to i8
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %803, i8* %804, align 1
  %805 = lshr i32 %790, 31
  %806 = trunc i32 %805 to i8
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %806, i8* %807, align 1
  %808 = lshr i32 %790, 31
  %809 = xor i32 %805, %808
  %810 = add i32 %809, %808
  %811 = icmp eq i32 %810, 2
  %812 = zext i1 %811 to i8
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %812, i8* %813, align 1
  store %struct.Memory* %loadMem_48a034, %struct.Memory** %MEMORY
  %loadMem_48a037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 33
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %816 to i64*
  %817 = load i64, i64* %PC.i673
  %818 = add i64 %817, 100
  %819 = load i64, i64* %PC.i673
  %820 = add i64 %819, 6
  %821 = load i64, i64* %PC.i673
  %822 = add i64 %821, 6
  store i64 %822, i64* %PC.i673
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %824 = load i8, i8* %823, align 1
  store i8 %824, i8* %BRANCH_TAKEN, align 1
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %826 = icmp ne i8 %824, 0
  %827 = select i1 %826, i64 %818, i64 %820
  store i64 %827, i64* %825, align 8
  store %struct.Memory* %loadMem_48a037, %struct.Memory** %MEMORY
  %loadBr_48a037 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a037 = icmp eq i8 %loadBr_48a037, 1
  br i1 %cmpBr_48a037, label %block_.L_48a09b, label %block_48a03d

block_48a03d:                                     ; preds = %block_.L_48a016
  %loadMem_48a03d = load %struct.Memory*, %struct.Memory** %MEMORY
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %829 = getelementptr inbounds %struct.GPR, %struct.GPR* %828, i32 0, i32 33
  %830 = getelementptr inbounds %struct.Reg, %struct.Reg* %829, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %830 to i64*
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 1
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %RAX.i672 = bitcast %union.anon* %833 to i64*
  %834 = load i64, i64* %PC.i671
  %835 = add i64 %834, 10
  store i64 %835, i64* %PC.i671
  store i64 ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64), i64* %RAX.i672, align 8
  store %struct.Memory* %loadMem_48a03d, %struct.Memory** %MEMORY
  %loadMem_48a047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 33
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %838 to i64*
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 5
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %RCX.i670 = bitcast %union.anon* %841 to i64*
  %842 = load i64, i64* %PC.i669
  %843 = add i64 %842, 10
  store i64 %843, i64* %PC.i669
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX.i670, align 8
  store %struct.Memory* %loadMem_48a047, %struct.Memory** %MEMORY
  %loadMem_48a051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 33
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %846 to i64*
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 7
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %RDX.i667 = bitcast %union.anon* %849 to i64*
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 15
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %RBP.i668 = bitcast %union.anon* %852 to i64*
  %853 = load i64, i64* %RBP.i668
  %854 = sub i64 %853, 32
  %855 = load i64, i64* %PC.i666
  %856 = add i64 %855, 4
  store i64 %856, i64* %PC.i666
  %857 = inttoptr i64 %854 to i32*
  %858 = load i32, i32* %857
  %859 = sext i32 %858 to i64
  store i64 %859, i64* %RDX.i667, align 8
  store %struct.Memory* %loadMem_48a051, %struct.Memory** %MEMORY
  %loadMem_48a055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 33
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %862 to i64*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 7
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %RDX.i664 = bitcast %union.anon* %865 to i64*
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 15
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %RBP.i665 = bitcast %union.anon* %868 to i64*
  %869 = load i64, i64* %RBP.i665
  %870 = load i64, i64* %RDX.i664
  %871 = mul i64 %870, 4
  %872 = add i64 %869, -1632
  %873 = add i64 %872, %871
  %874 = load i64, i64* %PC.i663
  %875 = add i64 %874, 11
  store i64 %875, i64* %PC.i663
  %876 = inttoptr i64 %873 to i32*
  store i32 0, i32* %876
  store %struct.Memory* %loadMem_48a055, %struct.Memory** %MEMORY
  %loadMem_48a060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 33
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %879 to i64*
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %881 = getelementptr inbounds %struct.GPR, %struct.GPR* %880, i32 0, i32 7
  %882 = getelementptr inbounds %struct.Reg, %struct.Reg* %881, i32 0, i32 0
  %RDX.i661 = bitcast %union.anon* %882 to i64*
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 15
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %RBP.i662 = bitcast %union.anon* %885 to i64*
  %886 = load i64, i64* %RBP.i662
  %887 = sub i64 %886, 32
  %888 = load i64, i64* %PC.i660
  %889 = add i64 %888, 4
  store i64 %889, i64* %PC.i660
  %890 = inttoptr i64 %887 to i32*
  %891 = load i32, i32* %890
  %892 = sext i32 %891 to i64
  store i64 %892, i64* %RDX.i661, align 8
  store %struct.Memory* %loadMem_48a060, %struct.Memory** %MEMORY
  %loadMem_48a064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %894 = getelementptr inbounds %struct.GPR, %struct.GPR* %893, i32 0, i32 33
  %895 = getelementptr inbounds %struct.Reg, %struct.Reg* %894, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %895 to i64*
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %897 = getelementptr inbounds %struct.GPR, %struct.GPR* %896, i32 0, i32 7
  %898 = getelementptr inbounds %struct.Reg, %struct.Reg* %897, i32 0, i32 0
  %RDX.i659 = bitcast %union.anon* %898 to i64*
  %899 = load i64, i64* %RDX.i659
  %900 = load i64, i64* %PC.i658
  %901 = add i64 %900, 7
  store i64 %901, i64* %PC.i658
  %902 = sext i64 %899 to i128
  %903 = and i128 %902, -18446744073709551616
  %904 = zext i64 %899 to i128
  %905 = or i128 %903, %904
  %906 = mul i128 380, %905
  %907 = trunc i128 %906 to i64
  store i64 %907, i64* %RDX.i659, align 8
  %908 = sext i64 %907 to i128
  %909 = icmp ne i128 %908, %906
  %910 = zext i1 %909 to i8
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %910, i8* %911, align 1
  %912 = trunc i128 %906 to i32
  %913 = and i32 %912, 255
  %914 = call i32 @llvm.ctpop.i32(i32 %913)
  %915 = trunc i32 %914 to i8
  %916 = and i8 %915, 1
  %917 = xor i8 %916, 1
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %917, i8* %918, align 1
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %919, align 1
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %920, align 1
  %921 = lshr i64 %907, 63
  %922 = trunc i64 %921 to i8
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %922, i8* %923, align 1
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %910, i8* %924, align 1
  store %struct.Memory* %loadMem_48a064, %struct.Memory** %MEMORY
  %loadMem_48a06b = load %struct.Memory*, %struct.Memory** %MEMORY
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 33
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %927 to i64*
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 5
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %RCX.i656 = bitcast %union.anon* %930 to i64*
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 7
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %RDX.i657 = bitcast %union.anon* %933 to i64*
  %934 = load i64, i64* %RCX.i656
  %935 = load i64, i64* %RDX.i657
  %936 = load i64, i64* %PC.i655
  %937 = add i64 %936, 3
  store i64 %937, i64* %PC.i655
  %938 = add i64 %935, %934
  store i64 %938, i64* %RCX.i656, align 8
  %939 = icmp ult i64 %938, %934
  %940 = icmp ult i64 %938, %935
  %941 = or i1 %939, %940
  %942 = zext i1 %941 to i8
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %942, i8* %943, align 1
  %944 = trunc i64 %938 to i32
  %945 = and i32 %944, 255
  %946 = call i32 @llvm.ctpop.i32(i32 %945)
  %947 = trunc i32 %946 to i8
  %948 = and i8 %947, 1
  %949 = xor i8 %948, 1
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %949, i8* %950, align 1
  %951 = xor i64 %935, %934
  %952 = xor i64 %951, %938
  %953 = lshr i64 %952, 4
  %954 = trunc i64 %953 to i8
  %955 = and i8 %954, 1
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %955, i8* %956, align 1
  %957 = icmp eq i64 %938, 0
  %958 = zext i1 %957 to i8
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %958, i8* %959, align 1
  %960 = lshr i64 %938, 63
  %961 = trunc i64 %960 to i8
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %961, i8* %962, align 1
  %963 = lshr i64 %934, 63
  %964 = lshr i64 %935, 63
  %965 = xor i64 %960, %963
  %966 = xor i64 %960, %964
  %967 = add i64 %965, %966
  %968 = icmp eq i64 %967, 2
  %969 = zext i1 %968 to i8
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %969, i8* %970, align 1
  store %struct.Memory* %loadMem_48a06b, %struct.Memory** %MEMORY
  %loadMem_48a06e = load %struct.Memory*, %struct.Memory** %MEMORY
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 33
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %973 to i64*
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 5
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %RCX.i653 = bitcast %union.anon* %976 to i64*
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 9
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %RSI.i654 = bitcast %union.anon* %979 to i64*
  %980 = load i64, i64* %RCX.i653
  %981 = add i64 %980, 12
  %982 = load i64, i64* %PC.i652
  %983 = add i64 %982, 3
  store i64 %983, i64* %PC.i652
  %984 = inttoptr i64 %981 to i32*
  %985 = load i32, i32* %984
  %986 = zext i32 %985 to i64
  store i64 %986, i64* %RSI.i654, align 8
  store %struct.Memory* %loadMem_48a06e, %struct.Memory** %MEMORY
  %loadMem_48a071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 33
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %989 to i64*
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 5
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %RCX.i650 = bitcast %union.anon* %992 to i64*
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 15
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %RBP.i651 = bitcast %union.anon* %995 to i64*
  %996 = load i64, i64* %RBP.i651
  %997 = sub i64 %996, 32
  %998 = load i64, i64* %PC.i649
  %999 = add i64 %998, 4
  store i64 %999, i64* %PC.i649
  %1000 = inttoptr i64 %997 to i32*
  %1001 = load i32, i32* %1000
  %1002 = sext i32 %1001 to i64
  store i64 %1002, i64* %RCX.i650, align 8
  store %struct.Memory* %loadMem_48a071, %struct.Memory** %MEMORY
  %loadMem_48a075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 33
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %1005 to i64*
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 5
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %RCX.i648 = bitcast %union.anon* %1008 to i64*
  %1009 = load i64, i64* %RCX.i648
  %1010 = load i64, i64* %PC.i647
  %1011 = add i64 %1010, 7
  store i64 %1011, i64* %PC.i647
  %1012 = sext i64 %1009 to i128
  %1013 = and i128 %1012, -18446744073709551616
  %1014 = zext i64 %1009 to i128
  %1015 = or i128 %1013, %1014
  %1016 = mul i128 144, %1015
  %1017 = trunc i128 %1016 to i64
  store i64 %1017, i64* %RCX.i648, align 8
  %1018 = sext i64 %1017 to i128
  %1019 = icmp ne i128 %1018, %1016
  %1020 = zext i1 %1019 to i8
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1020, i8* %1021, align 1
  %1022 = trunc i128 %1016 to i32
  %1023 = and i32 %1022, 255
  %1024 = call i32 @llvm.ctpop.i32(i32 %1023)
  %1025 = trunc i32 %1024 to i8
  %1026 = and i8 %1025, 1
  %1027 = xor i8 %1026, 1
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1027, i8* %1028, align 1
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1029, align 1
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1030, align 1
  %1031 = lshr i64 %1017, 63
  %1032 = trunc i64 %1031 to i8
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1032, i8* %1033, align 1
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1020, i8* %1034, align 1
  store %struct.Memory* %loadMem_48a075, %struct.Memory** %MEMORY
  %loadMem_48a07c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 33
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %1037 to i64*
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 1
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %RAX.i645 = bitcast %union.anon* %1040 to i64*
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 5
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %RCX.i646 = bitcast %union.anon* %1043 to i64*
  %1044 = load i64, i64* %RAX.i645
  %1045 = load i64, i64* %RCX.i646
  %1046 = load i64, i64* %PC.i644
  %1047 = add i64 %1046, 3
  store i64 %1047, i64* %PC.i644
  %1048 = add i64 %1045, %1044
  store i64 %1048, i64* %RAX.i645, align 8
  %1049 = icmp ult i64 %1048, %1044
  %1050 = icmp ult i64 %1048, %1045
  %1051 = or i1 %1049, %1050
  %1052 = zext i1 %1051 to i8
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1052, i8* %1053, align 1
  %1054 = trunc i64 %1048 to i32
  %1055 = and i32 %1054, 255
  %1056 = call i32 @llvm.ctpop.i32(i32 %1055)
  %1057 = trunc i32 %1056 to i8
  %1058 = and i8 %1057, 1
  %1059 = xor i8 %1058, 1
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1059, i8* %1060, align 1
  %1061 = xor i64 %1045, %1044
  %1062 = xor i64 %1061, %1048
  %1063 = lshr i64 %1062, 4
  %1064 = trunc i64 %1063 to i8
  %1065 = and i8 %1064, 1
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1065, i8* %1066, align 1
  %1067 = icmp eq i64 %1048, 0
  %1068 = zext i1 %1067 to i8
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1068, i8* %1069, align 1
  %1070 = lshr i64 %1048, 63
  %1071 = trunc i64 %1070 to i8
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1071, i8* %1072, align 1
  %1073 = lshr i64 %1044, 63
  %1074 = lshr i64 %1045, 63
  %1075 = xor i64 %1070, %1073
  %1076 = xor i64 %1070, %1074
  %1077 = add i64 %1075, %1076
  %1078 = icmp eq i64 %1077, 2
  %1079 = zext i1 %1078 to i8
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1079, i8* %1080, align 1
  store %struct.Memory* %loadMem_48a07c, %struct.Memory** %MEMORY
  %loadMem_48a07f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 33
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %1083 to i64*
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 9
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %ESI.i642 = bitcast %union.anon* %1086 to i32*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 1
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %RAX.i643 = bitcast %union.anon* %1089 to i64*
  %1090 = load i64, i64* %RAX.i643
  %1091 = load i32, i32* %ESI.i642
  %1092 = zext i32 %1091 to i64
  %1093 = load i64, i64* %PC.i641
  %1094 = add i64 %1093, 2
  store i64 %1094, i64* %PC.i641
  %1095 = inttoptr i64 %1090 to i32*
  store i32 %1091, i32* %1095
  store %struct.Memory* %loadMem_48a07f, %struct.Memory** %MEMORY
  %loadMem_48a081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 33
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %1098 to i64*
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 1
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %RAX.i639 = bitcast %union.anon* %1101 to i64*
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 15
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %RBP.i640 = bitcast %union.anon* %1104 to i64*
  %1105 = load i64, i64* %RBP.i640
  %1106 = sub i64 %1105, 32
  %1107 = load i64, i64* %PC.i638
  %1108 = add i64 %1107, 4
  store i64 %1108, i64* %PC.i638
  %1109 = inttoptr i64 %1106 to i32*
  %1110 = load i32, i32* %1109
  %1111 = sext i32 %1110 to i64
  store i64 %1111, i64* %RAX.i639, align 8
  store %struct.Memory* %loadMem_48a081, %struct.Memory** %MEMORY
  %loadMem_48a085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 33
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %1114 to i64*
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 1
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %RAX.i635 = bitcast %union.anon* %1117 to i64*
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1119 = getelementptr inbounds %struct.GPR, %struct.GPR* %1118, i32 0, i32 9
  %1120 = getelementptr inbounds %struct.Reg, %struct.Reg* %1119, i32 0, i32 0
  %RSI.i636 = bitcast %union.anon* %1120 to i64*
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 15
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %RBP.i637 = bitcast %union.anon* %1123 to i64*
  %1124 = load i64, i64* %RBP.i637
  %1125 = load i64, i64* %RAX.i635
  %1126 = mul i64 %1125, 4
  %1127 = add i64 %1124, -3232
  %1128 = add i64 %1127, %1126
  %1129 = load i64, i64* %PC.i634
  %1130 = add i64 %1129, 7
  store i64 %1130, i64* %PC.i634
  %1131 = inttoptr i64 %1128 to i32*
  %1132 = load i32, i32* %1131
  %1133 = zext i32 %1132 to i64
  store i64 %1133, i64* %RSI.i636, align 8
  store %struct.Memory* %loadMem_48a085, %struct.Memory** %MEMORY
  %loadMem_48a08c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 33
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %1136 to i64*
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 9
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %RSI.i633 = bitcast %union.anon* %1139 to i64*
  %1140 = load i64, i64* %RSI.i633
  %1141 = load i64, i64* %PC.i632
  %1142 = add i64 %1141, 3
  store i64 %1142, i64* %PC.i632
  %1143 = trunc i64 %1140 to i32
  %1144 = add i32 1, %1143
  %1145 = zext i32 %1144 to i64
  store i64 %1145, i64* %RSI.i633, align 8
  %1146 = icmp ult i32 %1144, %1143
  %1147 = icmp ult i32 %1144, 1
  %1148 = or i1 %1146, %1147
  %1149 = zext i1 %1148 to i8
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1149, i8* %1150, align 1
  %1151 = and i32 %1144, 255
  %1152 = call i32 @llvm.ctpop.i32(i32 %1151)
  %1153 = trunc i32 %1152 to i8
  %1154 = and i8 %1153, 1
  %1155 = xor i8 %1154, 1
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1155, i8* %1156, align 1
  %1157 = xor i64 1, %1140
  %1158 = trunc i64 %1157 to i32
  %1159 = xor i32 %1158, %1144
  %1160 = lshr i32 %1159, 4
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1162, i8* %1163, align 1
  %1164 = icmp eq i32 %1144, 0
  %1165 = zext i1 %1164 to i8
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1165, i8* %1166, align 1
  %1167 = lshr i32 %1144, 31
  %1168 = trunc i32 %1167 to i8
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1168, i8* %1169, align 1
  %1170 = lshr i32 %1143, 31
  %1171 = xor i32 %1167, %1170
  %1172 = add i32 %1171, %1167
  %1173 = icmp eq i32 %1172, 2
  %1174 = zext i1 %1173 to i8
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1174, i8* %1175, align 1
  store %struct.Memory* %loadMem_48a08c, %struct.Memory** %MEMORY
  %loadMem_48a08f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 33
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %1178 to i64*
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 9
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %ESI.i629 = bitcast %union.anon* %1181 to i32*
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 1
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %RAX.i630 = bitcast %union.anon* %1184 to i64*
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 15
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %RBP.i631 = bitcast %union.anon* %1187 to i64*
  %1188 = load i64, i64* %RBP.i631
  %1189 = load i64, i64* %RAX.i630
  %1190 = mul i64 %1189, 4
  %1191 = add i64 %1188, -3232
  %1192 = add i64 %1191, %1190
  %1193 = load i32, i32* %ESI.i629
  %1194 = zext i32 %1193 to i64
  %1195 = load i64, i64* %PC.i628
  %1196 = add i64 %1195, 7
  store i64 %1196, i64* %PC.i628
  %1197 = inttoptr i64 %1192 to i32*
  store i32 %1193, i32* %1197
  store %struct.Memory* %loadMem_48a08f, %struct.Memory** %MEMORY
  %loadMem_48a096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1199 = getelementptr inbounds %struct.GPR, %struct.GPR* %1198, i32 0, i32 33
  %1200 = getelementptr inbounds %struct.Reg, %struct.Reg* %1199, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %1200 to i64*
  %1201 = load i64, i64* %PC.i627
  %1202 = add i64 %1201, 20
  %1203 = load i64, i64* %PC.i627
  %1204 = add i64 %1203, 5
  store i64 %1204, i64* %PC.i627
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1202, i64* %1205, align 8
  store %struct.Memory* %loadMem_48a096, %struct.Memory** %MEMORY
  br label %block_.L_48a0aa

block_.L_48a09b:                                  ; preds = %block_.L_48a016
  %loadMem_48a09b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 33
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %1208 to i64*
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 1
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %RAX.i625 = bitcast %union.anon* %1211 to i64*
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 15
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %RBP.i626 = bitcast %union.anon* %1214 to i64*
  %1215 = load i64, i64* %RBP.i626
  %1216 = sub i64 %1215, 32
  %1217 = load i64, i64* %PC.i624
  %1218 = add i64 %1217, 4
  store i64 %1218, i64* %PC.i624
  %1219 = inttoptr i64 %1216 to i32*
  %1220 = load i32, i32* %1219
  %1221 = sext i32 %1220 to i64
  store i64 %1221, i64* %RAX.i625, align 8
  store %struct.Memory* %loadMem_48a09b, %struct.Memory** %MEMORY
  %loadMem_48a09f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1223 = getelementptr inbounds %struct.GPR, %struct.GPR* %1222, i32 0, i32 33
  %1224 = getelementptr inbounds %struct.Reg, %struct.Reg* %1223, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %1224 to i64*
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 1
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %RAX.i622 = bitcast %union.anon* %1227 to i64*
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1229 = getelementptr inbounds %struct.GPR, %struct.GPR* %1228, i32 0, i32 15
  %1230 = getelementptr inbounds %struct.Reg, %struct.Reg* %1229, i32 0, i32 0
  %RBP.i623 = bitcast %union.anon* %1230 to i64*
  %1231 = load i64, i64* %RBP.i623
  %1232 = load i64, i64* %RAX.i622
  %1233 = mul i64 %1232, 4
  %1234 = add i64 %1231, -1632
  %1235 = add i64 %1234, %1233
  %1236 = load i64, i64* %PC.i621
  %1237 = add i64 %1236, 11
  store i64 %1237, i64* %PC.i621
  %1238 = inttoptr i64 %1235 to i32*
  store i32 -1, i32* %1238
  store %struct.Memory* %loadMem_48a09f, %struct.Memory** %MEMORY
  br label %block_.L_48a0aa

block_.L_48a0aa:                                  ; preds = %block_.L_48a09b, %block_48a03d
  %loadMem_48a0aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 33
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %1241 to i64*
  %1242 = load i64, i64* %PC.i620
  %1243 = add i64 %1242, 5
  %1244 = load i64, i64* %PC.i620
  %1245 = add i64 %1244, 5
  store i64 %1245, i64* %PC.i620
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1243, i64* %1246, align 8
  store %struct.Memory* %loadMem_48a0aa, %struct.Memory** %MEMORY
  br label %block_.L_48a0af

block_.L_48a0af:                                  ; preds = %block_.L_48a0aa, %block_489fb2
  %loadMem_48a0af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 33
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %1249 to i64*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 1
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %RAX.i618 = bitcast %union.anon* %1252 to i64*
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 15
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %RBP.i619 = bitcast %union.anon* %1255 to i64*
  %1256 = load i64, i64* %RBP.i619
  %1257 = sub i64 %1256, 32
  %1258 = load i64, i64* %PC.i617
  %1259 = add i64 %1258, 3
  store i64 %1259, i64* %PC.i617
  %1260 = inttoptr i64 %1257 to i32*
  %1261 = load i32, i32* %1260
  %1262 = zext i32 %1261 to i64
  store i64 %1262, i64* %RAX.i618, align 8
  store %struct.Memory* %loadMem_48a0af, %struct.Memory** %MEMORY
  %loadMem_48a0b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1264 = getelementptr inbounds %struct.GPR, %struct.GPR* %1263, i32 0, i32 33
  %1265 = getelementptr inbounds %struct.Reg, %struct.Reg* %1264, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %1265 to i64*
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1267 = getelementptr inbounds %struct.GPR, %struct.GPR* %1266, i32 0, i32 1
  %1268 = getelementptr inbounds %struct.Reg, %struct.Reg* %1267, i32 0, i32 0
  %RAX.i616 = bitcast %union.anon* %1268 to i64*
  %1269 = load i64, i64* %RAX.i616
  %1270 = load i64, i64* %PC.i615
  %1271 = add i64 %1270, 3
  store i64 %1271, i64* %PC.i615
  %1272 = trunc i64 %1269 to i32
  %1273 = add i32 1, %1272
  %1274 = zext i32 %1273 to i64
  store i64 %1274, i64* %RAX.i616, align 8
  %1275 = icmp ult i32 %1273, %1272
  %1276 = icmp ult i32 %1273, 1
  %1277 = or i1 %1275, %1276
  %1278 = zext i1 %1277 to i8
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1278, i8* %1279, align 1
  %1280 = and i32 %1273, 255
  %1281 = call i32 @llvm.ctpop.i32(i32 %1280)
  %1282 = trunc i32 %1281 to i8
  %1283 = and i8 %1282, 1
  %1284 = xor i8 %1283, 1
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1284, i8* %1285, align 1
  %1286 = xor i64 1, %1269
  %1287 = trunc i64 %1286 to i32
  %1288 = xor i32 %1287, %1273
  %1289 = lshr i32 %1288, 4
  %1290 = trunc i32 %1289 to i8
  %1291 = and i8 %1290, 1
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1291, i8* %1292, align 1
  %1293 = icmp eq i32 %1273, 0
  %1294 = zext i1 %1293 to i8
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1294, i8* %1295, align 1
  %1296 = lshr i32 %1273, 31
  %1297 = trunc i32 %1296 to i8
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1297, i8* %1298, align 1
  %1299 = lshr i32 %1272, 31
  %1300 = xor i32 %1296, %1299
  %1301 = add i32 %1300, %1296
  %1302 = icmp eq i32 %1301, 2
  %1303 = zext i1 %1302 to i8
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1303, i8* %1304, align 1
  store %struct.Memory* %loadMem_48a0b2, %struct.Memory** %MEMORY
  %loadMem_48a0b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1306 = getelementptr inbounds %struct.GPR, %struct.GPR* %1305, i32 0, i32 33
  %1307 = getelementptr inbounds %struct.Reg, %struct.Reg* %1306, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %1307 to i64*
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 1
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %EAX.i613 = bitcast %union.anon* %1310 to i32*
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 15
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %RBP.i614 = bitcast %union.anon* %1313 to i64*
  %1314 = load i64, i64* %RBP.i614
  %1315 = sub i64 %1314, 32
  %1316 = load i32, i32* %EAX.i613
  %1317 = zext i32 %1316 to i64
  %1318 = load i64, i64* %PC.i612
  %1319 = add i64 %1318, 3
  store i64 %1319, i64* %PC.i612
  %1320 = inttoptr i64 %1315 to i32*
  store i32 %1316, i32* %1320
  store %struct.Memory* %loadMem_48a0b5, %struct.Memory** %MEMORY
  %loadMem_48a0b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 33
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %1323 to i64*
  %1324 = load i64, i64* %PC.i611
  %1325 = add i64 %1324, -296
  %1326 = load i64, i64* %PC.i611
  %1327 = add i64 %1326, 5
  store i64 %1327, i64* %PC.i611
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1325, i64* %1328, align 8
  store %struct.Memory* %loadMem_48a0b8, %struct.Memory** %MEMORY
  br label %block_.L_489f90

block_.L_48a0bd:                                  ; preds = %block_.L_489f90
  %loadMem_48a0bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 33
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %1331 to i64*
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1333 = getelementptr inbounds %struct.GPR, %struct.GPR* %1332, i32 0, i32 15
  %1334 = getelementptr inbounds %struct.Reg, %struct.Reg* %1333, i32 0, i32 0
  %RBP.i610 = bitcast %union.anon* %1334 to i64*
  %1335 = load i64, i64* %RBP.i610
  %1336 = sub i64 %1335, 3240
  %1337 = load i64, i64* %PC.i609
  %1338 = add i64 %1337, 10
  store i64 %1338, i64* %PC.i609
  %1339 = inttoptr i64 %1336 to i32*
  store i32 0, i32* %1339
  store %struct.Memory* %loadMem_48a0bd, %struct.Memory** %MEMORY
  %loadMem_48a0c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1341 = getelementptr inbounds %struct.GPR, %struct.GPR* %1340, i32 0, i32 33
  %1342 = getelementptr inbounds %struct.Reg, %struct.Reg* %1341, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %1342 to i64*
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1344 = getelementptr inbounds %struct.GPR, %struct.GPR* %1343, i32 0, i32 15
  %1345 = getelementptr inbounds %struct.Reg, %struct.Reg* %1344, i32 0, i32 0
  %RBP.i608 = bitcast %union.anon* %1345 to i64*
  %1346 = load i64, i64* %RBP.i608
  %1347 = sub i64 %1346, 3236
  %1348 = load i64, i64* %PC.i607
  %1349 = add i64 %1348, 10
  store i64 %1349, i64* %PC.i607
  %1350 = inttoptr i64 %1347 to i32*
  store i32 1, i32* %1350
  store %struct.Memory* %loadMem_48a0c7, %struct.Memory** %MEMORY
  br label %block_.L_48a0d1

block_.L_48a0d1:                                  ; preds = %block_.L_48a3a1, %block_.L_48a0bd
  %loadMem_48a0d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 33
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %1353 to i64*
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1355 = getelementptr inbounds %struct.GPR, %struct.GPR* %1354, i32 0, i32 1
  %1356 = getelementptr inbounds %struct.Reg, %struct.Reg* %1355, i32 0, i32 0
  %EAX.i605 = bitcast %union.anon* %1356 to i32*
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 1
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %RAX.i606 = bitcast %union.anon* %1359 to i64*
  %1360 = load i64, i64* %RAX.i606
  %1361 = load i32, i32* %EAX.i605
  %1362 = zext i32 %1361 to i64
  %1363 = load i64, i64* %PC.i604
  %1364 = add i64 %1363, 2
  store i64 %1364, i64* %PC.i604
  %1365 = xor i64 %1362, %1360
  %1366 = trunc i64 %1365 to i32
  %1367 = and i64 %1365, 4294967295
  store i64 %1367, i64* %RAX.i606, align 8
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1368, align 1
  %1369 = and i32 %1366, 255
  %1370 = call i32 @llvm.ctpop.i32(i32 %1369)
  %1371 = trunc i32 %1370 to i8
  %1372 = and i8 %1371, 1
  %1373 = xor i8 %1372, 1
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1373, i8* %1374, align 1
  %1375 = icmp eq i32 %1366, 0
  %1376 = zext i1 %1375 to i8
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1376, i8* %1377, align 1
  %1378 = lshr i32 %1366, 31
  %1379 = trunc i32 %1378 to i8
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1379, i8* %1380, align 1
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1381, align 1
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1382, align 1
  store %struct.Memory* %loadMem_48a0d1, %struct.Memory** %MEMORY
  %loadMem_48a0d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 33
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %1385 to i64*
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1387 = getelementptr inbounds %struct.GPR, %struct.GPR* %1386, i32 0, i32 1
  %1388 = getelementptr inbounds %struct.Reg, %struct.Reg* %1387, i32 0, i32 0
  %1389 = bitcast %union.anon* %1388 to %struct.anon.2*
  %AL.i602 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1389, i32 0, i32 0
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 5
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %1393 = bitcast %union.anon* %1392 to %struct.anon.2*
  %CL.i603 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1393, i32 0, i32 0
  %1394 = load i8, i8* %AL.i602
  %1395 = zext i8 %1394 to i64
  %1396 = load i64, i64* %PC.i601
  %1397 = add i64 %1396, 2
  store i64 %1397, i64* %PC.i601
  store i8 %1394, i8* %CL.i603, align 1
  store %struct.Memory* %loadMem_48a0d3, %struct.Memory** %MEMORY
  %loadMem_48a0d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 33
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %1400 to i64*
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 15
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %1403 to i64*
  %1404 = load i64, i64* %RBP.i600
  %1405 = sub i64 %1404, 3236
  %1406 = load i64, i64* %PC.i599
  %1407 = add i64 %1406, 7
  store i64 %1407, i64* %PC.i599
  %1408 = inttoptr i64 %1405 to i32*
  %1409 = load i32, i32* %1408
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1410, align 1
  %1411 = and i32 %1409, 255
  %1412 = call i32 @llvm.ctpop.i32(i32 %1411)
  %1413 = trunc i32 %1412 to i8
  %1414 = and i8 %1413, 1
  %1415 = xor i8 %1414, 1
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1415, i8* %1416, align 1
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1417, align 1
  %1418 = icmp eq i32 %1409, 0
  %1419 = zext i1 %1418 to i8
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1419, i8* %1420, align 1
  %1421 = lshr i32 %1409, 31
  %1422 = trunc i32 %1421 to i8
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1422, i8* %1423, align 1
  %1424 = lshr i32 %1409, 31
  %1425 = xor i32 %1421, %1424
  %1426 = add i32 %1425, %1424
  %1427 = icmp eq i32 %1426, 2
  %1428 = zext i1 %1427 to i8
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1428, i8* %1429, align 1
  store %struct.Memory* %loadMem_48a0d5, %struct.Memory** %MEMORY
  %loadMem_48a0dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 33
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %1432 to i64*
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 5
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %1436 = bitcast %union.anon* %1435 to %struct.anon.2*
  %CL.i597 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1436, i32 0, i32 0
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 15
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %RBP.i598 = bitcast %union.anon* %1439 to i64*
  %1440 = load i64, i64* %RBP.i598
  %1441 = sub i64 %1440, 3265
  %1442 = load i8, i8* %CL.i597
  %1443 = zext i8 %1442 to i64
  %1444 = load i64, i64* %PC.i596
  %1445 = add i64 %1444, 6
  store i64 %1445, i64* %PC.i596
  %1446 = inttoptr i64 %1441 to i8*
  store i8 %1442, i8* %1446
  store %struct.Memory* %loadMem_48a0dc, %struct.Memory** %MEMORY
  %loadMem_48a0e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.GPR, %struct.GPR* %1447, i32 0, i32 33
  %1449 = getelementptr inbounds %struct.Reg, %struct.Reg* %1448, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %1449 to i64*
  %1450 = load i64, i64* %PC.i595
  %1451 = add i64 %1450, 24
  %1452 = load i64, i64* %PC.i595
  %1453 = add i64 %1452, 6
  %1454 = load i64, i64* %PC.i595
  %1455 = add i64 %1454, 6
  store i64 %1455, i64* %PC.i595
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1457 = load i8, i8* %1456, align 1
  store i8 %1457, i8* %BRANCH_TAKEN, align 1
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1459 = icmp ne i8 %1457, 0
  %1460 = select i1 %1459, i64 %1451, i64 %1453
  store i64 %1460, i64* %1458, align 8
  store %struct.Memory* %loadMem_48a0e2, %struct.Memory** %MEMORY
  %loadBr_48a0e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a0e2 = icmp eq i8 %loadBr_48a0e2, 1
  br i1 %cmpBr_48a0e2, label %block_.L_48a0fa, label %block_48a0e8

block_48a0e8:                                     ; preds = %block_.L_48a0d1
  %loadMem_48a0e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 33
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %1463 to i64*
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1465 = getelementptr inbounds %struct.GPR, %struct.GPR* %1464, i32 0, i32 1
  %1466 = getelementptr inbounds %struct.Reg, %struct.Reg* %1465, i32 0, i32 0
  %RAX.i593 = bitcast %union.anon* %1466 to i64*
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 15
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %RBP.i594 = bitcast %union.anon* %1469 to i64*
  %1470 = load i64, i64* %RBP.i594
  %1471 = sub i64 %1470, 3240
  %1472 = load i64, i64* %PC.i592
  %1473 = add i64 %1472, 6
  store i64 %1473, i64* %PC.i592
  %1474 = inttoptr i64 %1471 to i32*
  %1475 = load i32, i32* %1474
  %1476 = zext i32 %1475 to i64
  store i64 %1476, i64* %RAX.i593, align 8
  store %struct.Memory* %loadMem_48a0e8, %struct.Memory** %MEMORY
  %loadMem_48a0ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 33
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %1479 to i64*
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 1
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %EAX.i590 = bitcast %union.anon* %1482 to i32*
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 15
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %RBP.i591 = bitcast %union.anon* %1485 to i64*
  %1486 = load i32, i32* %EAX.i590
  %1487 = zext i32 %1486 to i64
  %1488 = load i64, i64* %RBP.i591
  %1489 = sub i64 %1488, 28
  %1490 = load i64, i64* %PC.i589
  %1491 = add i64 %1490, 3
  store i64 %1491, i64* %PC.i589
  %1492 = inttoptr i64 %1489 to i32*
  %1493 = load i32, i32* %1492
  %1494 = sub i32 %1486, %1493
  %1495 = icmp ult i32 %1486, %1493
  %1496 = zext i1 %1495 to i8
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1496, i8* %1497, align 1
  %1498 = and i32 %1494, 255
  %1499 = call i32 @llvm.ctpop.i32(i32 %1498)
  %1500 = trunc i32 %1499 to i8
  %1501 = and i8 %1500, 1
  %1502 = xor i8 %1501, 1
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1502, i8* %1503, align 1
  %1504 = xor i32 %1493, %1486
  %1505 = xor i32 %1504, %1494
  %1506 = lshr i32 %1505, 4
  %1507 = trunc i32 %1506 to i8
  %1508 = and i8 %1507, 1
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1508, i8* %1509, align 1
  %1510 = icmp eq i32 %1494, 0
  %1511 = zext i1 %1510 to i8
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1511, i8* %1512, align 1
  %1513 = lshr i32 %1494, 31
  %1514 = trunc i32 %1513 to i8
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1514, i8* %1515, align 1
  %1516 = lshr i32 %1486, 31
  %1517 = lshr i32 %1493, 31
  %1518 = xor i32 %1517, %1516
  %1519 = xor i32 %1513, %1516
  %1520 = add i32 %1519, %1518
  %1521 = icmp eq i32 %1520, 2
  %1522 = zext i1 %1521 to i8
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1522, i8* %1523, align 1
  store %struct.Memory* %loadMem_48a0ee, %struct.Memory** %MEMORY
  %loadMem_48a0f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1525 = getelementptr inbounds %struct.GPR, %struct.GPR* %1524, i32 0, i32 33
  %1526 = getelementptr inbounds %struct.Reg, %struct.Reg* %1525, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %1526 to i64*
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 5
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %1530 = bitcast %union.anon* %1529 to %struct.anon.2*
  %CL.i588 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1530, i32 0, i32 0
  %1531 = load i64, i64* %PC.i587
  %1532 = add i64 %1531, 3
  store i64 %1532, i64* %PC.i587
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1534 = load i8, i8* %1533, align 1
  %1535 = icmp ne i8 %1534, 0
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1537 = load i8, i8* %1536, align 1
  %1538 = icmp ne i8 %1537, 0
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1540 = load i8, i8* %1539, align 1
  %1541 = icmp ne i8 %1540, 0
  %1542 = xor i1 %1538, %1541
  %1543 = or i1 %1535, %1542
  %1544 = zext i1 %1543 to i8
  store i8 %1544, i8* %CL.i588, align 1
  store %struct.Memory* %loadMem_48a0f1, %struct.Memory** %MEMORY
  %loadMem_48a0f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 33
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %1547 to i64*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 5
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %1551 = bitcast %union.anon* %1550 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1551, i32 0, i32 0
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 15
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %1554 to i64*
  %1555 = load i64, i64* %RBP.i586
  %1556 = sub i64 %1555, 3265
  %1557 = load i8, i8* %CL.i
  %1558 = zext i8 %1557 to i64
  %1559 = load i64, i64* %PC.i585
  %1560 = add i64 %1559, 6
  store i64 %1560, i64* %PC.i585
  %1561 = inttoptr i64 %1556 to i8*
  store i8 %1557, i8* %1561
  store %struct.Memory* %loadMem_48a0f4, %struct.Memory** %MEMORY
  br label %block_.L_48a0fa

block_.L_48a0fa:                                  ; preds = %block_48a0e8, %block_.L_48a0d1
  %loadMem_48a0fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 33
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %1564 to i64*
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1566 = getelementptr inbounds %struct.GPR, %struct.GPR* %1565, i32 0, i32 1
  %1567 = getelementptr inbounds %struct.Reg, %struct.Reg* %1566, i32 0, i32 0
  %1568 = bitcast %union.anon* %1567 to %struct.anon.2*
  %AL.i583 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1568, i32 0, i32 0
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1570 = getelementptr inbounds %struct.GPR, %struct.GPR* %1569, i32 0, i32 15
  %1571 = getelementptr inbounds %struct.Reg, %struct.Reg* %1570, i32 0, i32 0
  %RBP.i584 = bitcast %union.anon* %1571 to i64*
  %1572 = load i64, i64* %RBP.i584
  %1573 = sub i64 %1572, 3265
  %1574 = load i64, i64* %PC.i582
  %1575 = add i64 %1574, 6
  store i64 %1575, i64* %PC.i582
  %1576 = inttoptr i64 %1573 to i8*
  %1577 = load i8, i8* %1576
  store i8 %1577, i8* %AL.i583, align 1
  store %struct.Memory* %loadMem_48a0fa, %struct.Memory** %MEMORY
  %loadMem_48a100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 33
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %1580 to i64*
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1582 = getelementptr inbounds %struct.GPR, %struct.GPR* %1581, i32 0, i32 1
  %1583 = getelementptr inbounds %struct.Reg, %struct.Reg* %1582, i32 0, i32 0
  %1584 = bitcast %union.anon* %1583 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1584, i32 0, i32 0
  %1585 = load i8, i8* %AL.i
  %1586 = zext i8 %1585 to i64
  %1587 = load i64, i64* %PC.i581
  %1588 = add i64 %1587, 2
  store i64 %1588, i64* %PC.i581
  %1589 = and i64 1, %1586
  %1590 = trunc i64 %1589 to i8
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1591, align 1
  %1592 = trunc i64 %1589 to i32
  %1593 = and i32 %1592, 255
  %1594 = call i32 @llvm.ctpop.i32(i32 %1593)
  %1595 = trunc i32 %1594 to i8
  %1596 = and i8 %1595, 1
  %1597 = xor i8 %1596, 1
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1597, i8* %1598, align 1
  %1599 = icmp eq i8 %1590, 0
  %1600 = zext i1 %1599 to i8
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1600, i8* %1601, align 1
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1602, align 1
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1603, align 1
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1604, align 1
  store %struct.Memory* %loadMem_48a100, %struct.Memory** %MEMORY
  %loadMem_48a102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 33
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %1607 to i64*
  %1608 = load i64, i64* %PC.i580
  %1609 = add i64 %1608, 11
  %1610 = load i64, i64* %PC.i580
  %1611 = add i64 %1610, 6
  %1612 = load i64, i64* %PC.i580
  %1613 = add i64 %1612, 6
  store i64 %1613, i64* %PC.i580
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1615 = load i8, i8* %1614, align 1
  %1616 = icmp eq i8 %1615, 0
  %1617 = zext i1 %1616 to i8
  store i8 %1617, i8* %BRANCH_TAKEN, align 1
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1619 = select i1 %1616, i64 %1609, i64 %1611
  store i64 %1619, i64* %1618, align 8
  store %struct.Memory* %loadMem_48a102, %struct.Memory** %MEMORY
  %loadBr_48a102 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a102 = icmp eq i8 %loadBr_48a102, 1
  br i1 %cmpBr_48a102, label %block_.L_48a10d, label %block_48a108

block_48a108:                                     ; preds = %block_.L_48a0fa
  %loadMem_48a108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1621 = getelementptr inbounds %struct.GPR, %struct.GPR* %1620, i32 0, i32 33
  %1622 = getelementptr inbounds %struct.Reg, %struct.Reg* %1621, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %1622 to i64*
  %1623 = load i64, i64* %PC.i579
  %1624 = add i64 %1623, 670
  %1625 = load i64, i64* %PC.i579
  %1626 = add i64 %1625, 5
  store i64 %1626, i64* %PC.i579
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1624, i64* %1627, align 8
  store %struct.Memory* %loadMem_48a108, %struct.Memory** %MEMORY
  br label %block_.L_48a3a6

block_.L_48a10d:                                  ; preds = %block_.L_48a0fa
  %loadMem_48a10d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 33
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %1630 to i64*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 15
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %RBP.i578 = bitcast %union.anon* %1633 to i64*
  %1634 = load i64, i64* %RBP.i578
  %1635 = sub i64 %1634, 3236
  %1636 = load i64, i64* %PC.i577
  %1637 = add i64 %1636, 10
  store i64 %1637, i64* %PC.i577
  %1638 = inttoptr i64 %1635 to i32*
  store i32 0, i32* %1638
  store %struct.Memory* %loadMem_48a10d, %struct.Memory** %MEMORY
  %loadMem_48a117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 33
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %1641 to i64*
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 1
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %RAX.i575 = bitcast %union.anon* %1644 to i64*
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 15
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %RBP.i576 = bitcast %union.anon* %1647 to i64*
  %1648 = load i64, i64* %RBP.i576
  %1649 = sub i64 %1648, 3240
  %1650 = load i64, i64* %PC.i574
  %1651 = add i64 %1650, 6
  store i64 %1651, i64* %PC.i574
  %1652 = inttoptr i64 %1649 to i32*
  %1653 = load i32, i32* %1652
  %1654 = zext i32 %1653 to i64
  store i64 %1654, i64* %RAX.i575, align 8
  store %struct.Memory* %loadMem_48a117, %struct.Memory** %MEMORY
  %loadMem_48a11d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 33
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %1657 to i64*
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1659 = getelementptr inbounds %struct.GPR, %struct.GPR* %1658, i32 0, i32 1
  %1660 = getelementptr inbounds %struct.Reg, %struct.Reg* %1659, i32 0, i32 0
  %RAX.i573 = bitcast %union.anon* %1660 to i64*
  %1661 = load i64, i64* %RAX.i573
  %1662 = load i64, i64* %PC.i572
  %1663 = add i64 %1662, 3
  store i64 %1663, i64* %PC.i572
  %1664 = trunc i64 %1661 to i32
  %1665 = add i32 1, %1664
  %1666 = zext i32 %1665 to i64
  store i64 %1666, i64* %RAX.i573, align 8
  %1667 = icmp ult i32 %1665, %1664
  %1668 = icmp ult i32 %1665, 1
  %1669 = or i1 %1667, %1668
  %1670 = zext i1 %1669 to i8
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1670, i8* %1671, align 1
  %1672 = and i32 %1665, 255
  %1673 = call i32 @llvm.ctpop.i32(i32 %1672)
  %1674 = trunc i32 %1673 to i8
  %1675 = and i8 %1674, 1
  %1676 = xor i8 %1675, 1
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1676, i8* %1677, align 1
  %1678 = xor i64 1, %1661
  %1679 = trunc i64 %1678 to i32
  %1680 = xor i32 %1679, %1665
  %1681 = lshr i32 %1680, 4
  %1682 = trunc i32 %1681 to i8
  %1683 = and i8 %1682, 1
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1683, i8* %1684, align 1
  %1685 = icmp eq i32 %1665, 0
  %1686 = zext i1 %1685 to i8
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1686, i8* %1687, align 1
  %1688 = lshr i32 %1665, 31
  %1689 = trunc i32 %1688 to i8
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1689, i8* %1690, align 1
  %1691 = lshr i32 %1664, 31
  %1692 = xor i32 %1688, %1691
  %1693 = add i32 %1692, %1688
  %1694 = icmp eq i32 %1693, 2
  %1695 = zext i1 %1694 to i8
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1695, i8* %1696, align 1
  store %struct.Memory* %loadMem_48a11d, %struct.Memory** %MEMORY
  %loadMem_48a120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 33
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %1699 to i64*
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 1
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %EAX.i570 = bitcast %union.anon* %1702 to i32*
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1704 = getelementptr inbounds %struct.GPR, %struct.GPR* %1703, i32 0, i32 15
  %1705 = getelementptr inbounds %struct.Reg, %struct.Reg* %1704, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %1705 to i64*
  %1706 = load i64, i64* %RBP.i571
  %1707 = sub i64 %1706, 3240
  %1708 = load i32, i32* %EAX.i570
  %1709 = zext i32 %1708 to i64
  %1710 = load i64, i64* %PC.i569
  %1711 = add i64 %1710, 6
  store i64 %1711, i64* %PC.i569
  %1712 = inttoptr i64 %1707 to i32*
  store i32 %1708, i32* %1712
  store %struct.Memory* %loadMem_48a120, %struct.Memory** %MEMORY
  %loadMem_48a126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 33
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %1715 to i64*
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 15
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %1718 to i64*
  %1719 = load i64, i64* %RBP.i568
  %1720 = sub i64 %1719, 32
  %1721 = load i64, i64* %PC.i567
  %1722 = add i64 %1721, 7
  store i64 %1722, i64* %PC.i567
  %1723 = inttoptr i64 %1720 to i32*
  store i32 21, i32* %1723
  store %struct.Memory* %loadMem_48a126, %struct.Memory** %MEMORY
  br label %block_.L_48a12d

block_.L_48a12d:                                  ; preds = %block_.L_48a393, %block_.L_48a10d
  %loadMem_48a12d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1725 = getelementptr inbounds %struct.GPR, %struct.GPR* %1724, i32 0, i32 33
  %1726 = getelementptr inbounds %struct.Reg, %struct.Reg* %1725, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %1726 to i64*
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 15
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %RBP.i566 = bitcast %union.anon* %1729 to i64*
  %1730 = load i64, i64* %RBP.i566
  %1731 = sub i64 %1730, 32
  %1732 = load i64, i64* %PC.i565
  %1733 = add i64 %1732, 7
  store i64 %1733, i64* %PC.i565
  %1734 = inttoptr i64 %1731 to i32*
  %1735 = load i32, i32* %1734
  %1736 = sub i32 %1735, 400
  %1737 = icmp ult i32 %1735, 400
  %1738 = zext i1 %1737 to i8
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1738, i8* %1739, align 1
  %1740 = and i32 %1736, 255
  %1741 = call i32 @llvm.ctpop.i32(i32 %1740)
  %1742 = trunc i32 %1741 to i8
  %1743 = and i8 %1742, 1
  %1744 = xor i8 %1743, 1
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1744, i8* %1745, align 1
  %1746 = xor i32 %1735, 400
  %1747 = xor i32 %1746, %1736
  %1748 = lshr i32 %1747, 4
  %1749 = trunc i32 %1748 to i8
  %1750 = and i8 %1749, 1
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1750, i8* %1751, align 1
  %1752 = icmp eq i32 %1736, 0
  %1753 = zext i1 %1752 to i8
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1753, i8* %1754, align 1
  %1755 = lshr i32 %1736, 31
  %1756 = trunc i32 %1755 to i8
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1756, i8* %1757, align 1
  %1758 = lshr i32 %1735, 31
  %1759 = xor i32 %1755, %1758
  %1760 = add i32 %1759, %1758
  %1761 = icmp eq i32 %1760, 2
  %1762 = zext i1 %1761 to i8
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1762, i8* %1763, align 1
  store %struct.Memory* %loadMem_48a12d, %struct.Memory** %MEMORY
  %loadMem_48a134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 33
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %1766 to i64*
  %1767 = load i64, i64* %PC.i564
  %1768 = add i64 %1767, 621
  %1769 = load i64, i64* %PC.i564
  %1770 = add i64 %1769, 6
  %1771 = load i64, i64* %PC.i564
  %1772 = add i64 %1771, 6
  store i64 %1772, i64* %PC.i564
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1774 = load i8, i8* %1773, align 1
  %1775 = icmp ne i8 %1774, 0
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1777 = load i8, i8* %1776, align 1
  %1778 = icmp ne i8 %1777, 0
  %1779 = xor i1 %1775, %1778
  %1780 = xor i1 %1779, true
  %1781 = zext i1 %1780 to i8
  store i8 %1781, i8* %BRANCH_TAKEN, align 1
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1783 = select i1 %1779, i64 %1770, i64 %1768
  store i64 %1783, i64* %1782, align 8
  store %struct.Memory* %loadMem_48a134, %struct.Memory** %MEMORY
  %loadBr_48a134 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a134 = icmp eq i8 %loadBr_48a134, 1
  br i1 %cmpBr_48a134, label %block_.L_48a3a1, label %block_48a13a

block_48a13a:                                     ; preds = %block_.L_48a12d
  %loadMem_48a13a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 33
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %1786 to i64*
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 1
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %1789 to i64*
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1791 = getelementptr inbounds %struct.GPR, %struct.GPR* %1790, i32 0, i32 15
  %1792 = getelementptr inbounds %struct.Reg, %struct.Reg* %1791, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %1792 to i64*
  %1793 = load i64, i64* %RBP.i563
  %1794 = sub i64 %1793, 32
  %1795 = load i64, i64* %PC.i561
  %1796 = add i64 %1795, 4
  store i64 %1796, i64* %PC.i561
  %1797 = inttoptr i64 %1794 to i32*
  %1798 = load i32, i32* %1797
  %1799 = sext i32 %1798 to i64
  store i64 %1799, i64* %RAX.i562, align 8
  store %struct.Memory* %loadMem_48a13a, %struct.Memory** %MEMORY
  %loadMem_48a13e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 33
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %1802 to i64*
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 1
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %RAX.i559 = bitcast %union.anon* %1805 to i64*
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 5
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %RCX.i560 = bitcast %union.anon* %1808 to i64*
  %1809 = load i64, i64* %RAX.i559
  %1810 = add i64 %1809, 12099168
  %1811 = load i64, i64* %PC.i558
  %1812 = add i64 %1811, 8
  store i64 %1812, i64* %PC.i558
  %1813 = inttoptr i64 %1810 to i8*
  %1814 = load i8, i8* %1813
  %1815 = zext i8 %1814 to i64
  store i64 %1815, i64* %RCX.i560, align 8
  store %struct.Memory* %loadMem_48a13e, %struct.Memory** %MEMORY
  %loadMem_48a146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1817 = getelementptr inbounds %struct.GPR, %struct.GPR* %1816, i32 0, i32 33
  %1818 = getelementptr inbounds %struct.Reg, %struct.Reg* %1817, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %1818 to i64*
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1820 = getelementptr inbounds %struct.GPR, %struct.GPR* %1819, i32 0, i32 5
  %1821 = getelementptr inbounds %struct.Reg, %struct.Reg* %1820, i32 0, i32 0
  %ECX.i557 = bitcast %union.anon* %1821 to i32*
  %1822 = load i32, i32* %ECX.i557
  %1823 = zext i32 %1822 to i64
  %1824 = load i64, i64* %PC.i556
  %1825 = add i64 %1824, 3
  store i64 %1825, i64* %PC.i556
  %1826 = sub i32 %1822, 3
  %1827 = icmp ult i32 %1822, 3
  %1828 = zext i1 %1827 to i8
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1828, i8* %1829, align 1
  %1830 = and i32 %1826, 255
  %1831 = call i32 @llvm.ctpop.i32(i32 %1830)
  %1832 = trunc i32 %1831 to i8
  %1833 = and i8 %1832, 1
  %1834 = xor i8 %1833, 1
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1834, i8* %1835, align 1
  %1836 = xor i64 3, %1823
  %1837 = trunc i64 %1836 to i32
  %1838 = xor i32 %1837, %1826
  %1839 = lshr i32 %1838, 4
  %1840 = trunc i32 %1839 to i8
  %1841 = and i8 %1840, 1
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1841, i8* %1842, align 1
  %1843 = icmp eq i32 %1826, 0
  %1844 = zext i1 %1843 to i8
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1844, i8* %1845, align 1
  %1846 = lshr i32 %1826, 31
  %1847 = trunc i32 %1846 to i8
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1847, i8* %1848, align 1
  %1849 = lshr i32 %1822, 31
  %1850 = xor i32 %1846, %1849
  %1851 = add i32 %1850, %1849
  %1852 = icmp eq i32 %1851, 2
  %1853 = zext i1 %1852 to i8
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1853, i8* %1854, align 1
  store %struct.Memory* %loadMem_48a146, %struct.Memory** %MEMORY
  %loadMem_48a149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 33
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %1857 to i64*
  %1858 = load i64, i64* %PC.i555
  %1859 = add i64 %1858, 24
  %1860 = load i64, i64* %PC.i555
  %1861 = add i64 %1860, 6
  %1862 = load i64, i64* %PC.i555
  %1863 = add i64 %1862, 6
  store i64 %1863, i64* %PC.i555
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1865 = load i8, i8* %1864, align 1
  store i8 %1865, i8* %BRANCH_TAKEN, align 1
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1867 = icmp ne i8 %1865, 0
  %1868 = select i1 %1867, i64 %1859, i64 %1861
  store i64 %1868, i64* %1866, align 8
  store %struct.Memory* %loadMem_48a149, %struct.Memory** %MEMORY
  %loadBr_48a149 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a149 = icmp eq i8 %loadBr_48a149, 1
  br i1 %cmpBr_48a149, label %block_.L_48a161, label %block_48a14f

block_48a14f:                                     ; preds = %block_48a13a
  %loadMem_48a14f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 33
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %1871 to i64*
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1873 = getelementptr inbounds %struct.GPR, %struct.GPR* %1872, i32 0, i32 1
  %1874 = getelementptr inbounds %struct.Reg, %struct.Reg* %1873, i32 0, i32 0
  %RAX.i553 = bitcast %union.anon* %1874 to i64*
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1876 = getelementptr inbounds %struct.GPR, %struct.GPR* %1875, i32 0, i32 15
  %1877 = getelementptr inbounds %struct.Reg, %struct.Reg* %1876, i32 0, i32 0
  %RBP.i554 = bitcast %union.anon* %1877 to i64*
  %1878 = load i64, i64* %RBP.i554
  %1879 = sub i64 %1878, 32
  %1880 = load i64, i64* %PC.i552
  %1881 = add i64 %1880, 4
  store i64 %1881, i64* %PC.i552
  %1882 = inttoptr i64 %1879 to i32*
  %1883 = load i32, i32* %1882
  %1884 = sext i32 %1883 to i64
  store i64 %1884, i64* %RAX.i553, align 8
  store %struct.Memory* %loadMem_48a14f, %struct.Memory** %MEMORY
  %loadMem_48a153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1886 = getelementptr inbounds %struct.GPR, %struct.GPR* %1885, i32 0, i32 33
  %1887 = getelementptr inbounds %struct.Reg, %struct.Reg* %1886, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %1887 to i64*
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1889 = getelementptr inbounds %struct.GPR, %struct.GPR* %1888, i32 0, i32 1
  %1890 = getelementptr inbounds %struct.Reg, %struct.Reg* %1889, i32 0, i32 0
  %RAX.i550 = bitcast %union.anon* %1890 to i64*
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1892 = getelementptr inbounds %struct.GPR, %struct.GPR* %1891, i32 0, i32 15
  %1893 = getelementptr inbounds %struct.Reg, %struct.Reg* %1892, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %1893 to i64*
  %1894 = load i64, i64* %RBP.i551
  %1895 = load i64, i64* %RAX.i550
  %1896 = mul i64 %1895, 4
  %1897 = add i64 %1894, -1632
  %1898 = add i64 %1897, %1896
  %1899 = load i64, i64* %PC.i549
  %1900 = add i64 %1899, 8
  store i64 %1900, i64* %PC.i549
  %1901 = inttoptr i64 %1898 to i32*
  %1902 = load i32, i32* %1901
  %1903 = sub i32 %1902, -1
  %1904 = icmp ult i32 %1902, -1
  %1905 = zext i1 %1904 to i8
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1905, i8* %1906, align 1
  %1907 = and i32 %1903, 255
  %1908 = call i32 @llvm.ctpop.i32(i32 %1907)
  %1909 = trunc i32 %1908 to i8
  %1910 = and i8 %1909, 1
  %1911 = xor i8 %1910, 1
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1911, i8* %1912, align 1
  %1913 = xor i32 %1902, -1
  %1914 = xor i32 %1913, %1903
  %1915 = lshr i32 %1914, 4
  %1916 = trunc i32 %1915 to i8
  %1917 = and i8 %1916, 1
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1917, i8* %1918, align 1
  %1919 = icmp eq i32 %1903, 0
  %1920 = zext i1 %1919 to i8
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1920, i8* %1921, align 1
  %1922 = lshr i32 %1903, 31
  %1923 = trunc i32 %1922 to i8
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1923, i8* %1924, align 1
  %1925 = lshr i32 %1902, 31
  %1926 = xor i32 %1925, 1
  %1927 = xor i32 %1922, %1925
  %1928 = add i32 %1927, %1926
  %1929 = icmp eq i32 %1928, 2
  %1930 = zext i1 %1929 to i8
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1930, i8* %1931, align 1
  store %struct.Memory* %loadMem_48a153, %struct.Memory** %MEMORY
  %loadMem_48a15b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 33
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %1934 to i64*
  %1935 = load i64, i64* %PC.i548
  %1936 = add i64 %1935, 11
  %1937 = load i64, i64* %PC.i548
  %1938 = add i64 %1937, 6
  %1939 = load i64, i64* %PC.i548
  %1940 = add i64 %1939, 6
  store i64 %1940, i64* %PC.i548
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1942 = load i8, i8* %1941, align 1
  store i8 %1942, i8* %BRANCH_TAKEN, align 1
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1944 = icmp ne i8 %1942, 0
  %1945 = select i1 %1944, i64 %1936, i64 %1938
  store i64 %1945, i64* %1943, align 8
  store %struct.Memory* %loadMem_48a15b, %struct.Memory** %MEMORY
  %loadBr_48a15b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a15b = icmp eq i8 %loadBr_48a15b, 1
  br i1 %cmpBr_48a15b, label %block_.L_48a166, label %block_.L_48a161

block_.L_48a161:                                  ; preds = %block_48a14f, %block_48a13a
  %loadMem_48a161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 33
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %1948 to i64*
  %1949 = load i64, i64* %PC.i547
  %1950 = add i64 %1949, 562
  %1951 = load i64, i64* %PC.i547
  %1952 = add i64 %1951, 5
  store i64 %1952, i64* %PC.i547
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1950, i64* %1953, align 8
  store %struct.Memory* %loadMem_48a161, %struct.Memory** %MEMORY
  br label %block_.L_48a393

block_.L_48a166:                                  ; preds = %block_48a14f
  %loadMem_48a166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1955 = getelementptr inbounds %struct.GPR, %struct.GPR* %1954, i32 0, i32 33
  %1956 = getelementptr inbounds %struct.Reg, %struct.Reg* %1955, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %1956 to i64*
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 15
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %1959 to i64*
  %1960 = load i64, i64* %RBP.i546
  %1961 = sub i64 %1960, 3252
  %1962 = load i64, i64* %PC.i545
  %1963 = add i64 %1962, 10
  store i64 %1963, i64* %PC.i545
  %1964 = inttoptr i64 %1961 to i32*
  store i32 0, i32* %1964
  store %struct.Memory* %loadMem_48a166, %struct.Memory** %MEMORY
  br label %block_.L_48a170

block_.L_48a170:                                  ; preds = %block_.L_48a37a, %block_.L_48a166
  %loadMem_48a170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 33
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %1967 to i64*
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1969 = getelementptr inbounds %struct.GPR, %struct.GPR* %1968, i32 0, i32 15
  %1970 = getelementptr inbounds %struct.Reg, %struct.Reg* %1969, i32 0, i32 0
  %RBP.i544 = bitcast %union.anon* %1970 to i64*
  %1971 = load i64, i64* %RBP.i544
  %1972 = sub i64 %1971, 3252
  %1973 = load i64, i64* %PC.i543
  %1974 = add i64 %1973, 7
  store i64 %1974, i64* %PC.i543
  %1975 = inttoptr i64 %1972 to i32*
  %1976 = load i32, i32* %1975
  %1977 = sub i32 %1976, 4
  %1978 = icmp ult i32 %1976, 4
  %1979 = zext i1 %1978 to i8
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1979, i8* %1980, align 1
  %1981 = and i32 %1977, 255
  %1982 = call i32 @llvm.ctpop.i32(i32 %1981)
  %1983 = trunc i32 %1982 to i8
  %1984 = and i8 %1983, 1
  %1985 = xor i8 %1984, 1
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1985, i8* %1986, align 1
  %1987 = xor i32 %1976, 4
  %1988 = xor i32 %1987, %1977
  %1989 = lshr i32 %1988, 4
  %1990 = trunc i32 %1989 to i8
  %1991 = and i8 %1990, 1
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1991, i8* %1992, align 1
  %1993 = icmp eq i32 %1977, 0
  %1994 = zext i1 %1993 to i8
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1994, i8* %1995, align 1
  %1996 = lshr i32 %1977, 31
  %1997 = trunc i32 %1996 to i8
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1997, i8* %1998, align 1
  %1999 = lshr i32 %1976, 31
  %2000 = xor i32 %1996, %1999
  %2001 = add i32 %2000, %1999
  %2002 = icmp eq i32 %2001, 2
  %2003 = zext i1 %2002 to i8
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2003, i8* %2004, align 1
  store %struct.Memory* %loadMem_48a170, %struct.Memory** %MEMORY
  %loadMem_48a177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 33
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %2007 to i64*
  %2008 = load i64, i64* %PC.i542
  %2009 = add i64 %2008, 535
  %2010 = load i64, i64* %PC.i542
  %2011 = add i64 %2010, 6
  %2012 = load i64, i64* %PC.i542
  %2013 = add i64 %2012, 6
  store i64 %2013, i64* %PC.i542
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2015 = load i8, i8* %2014, align 1
  %2016 = icmp ne i8 %2015, 0
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2018 = load i8, i8* %2017, align 1
  %2019 = icmp ne i8 %2018, 0
  %2020 = xor i1 %2016, %2019
  %2021 = xor i1 %2020, true
  %2022 = zext i1 %2021 to i8
  store i8 %2022, i8* %BRANCH_TAKEN, align 1
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2024 = select i1 %2020, i64 %2011, i64 %2009
  store i64 %2024, i64* %2023, align 8
  store %struct.Memory* %loadMem_48a177, %struct.Memory** %MEMORY
  %loadBr_48a177 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a177 = icmp eq i8 %loadBr_48a177, 1
  br i1 %cmpBr_48a177, label %block_.L_48a38e, label %block_48a17d

block_48a17d:                                     ; preds = %block_.L_48a170
  %loadMem_48a17d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2026 = getelementptr inbounds %struct.GPR, %struct.GPR* %2025, i32 0, i32 33
  %2027 = getelementptr inbounds %struct.Reg, %struct.Reg* %2026, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %2027 to i64*
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 1
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %RAX.i540 = bitcast %union.anon* %2030 to i64*
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2032 = getelementptr inbounds %struct.GPR, %struct.GPR* %2031, i32 0, i32 15
  %2033 = getelementptr inbounds %struct.Reg, %struct.Reg* %2032, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %2033 to i64*
  %2034 = load i64, i64* %RBP.i541
  %2035 = sub i64 %2034, 32
  %2036 = load i64, i64* %PC.i539
  %2037 = add i64 %2036, 3
  store i64 %2037, i64* %PC.i539
  %2038 = inttoptr i64 %2035 to i32*
  %2039 = load i32, i32* %2038
  %2040 = zext i32 %2039 to i64
  store i64 %2040, i64* %RAX.i540, align 8
  store %struct.Memory* %loadMem_48a17d, %struct.Memory** %MEMORY
  %loadMem_48a180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 33
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %2043 to i64*
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2045 = getelementptr inbounds %struct.GPR, %struct.GPR* %2044, i32 0, i32 5
  %2046 = getelementptr inbounds %struct.Reg, %struct.Reg* %2045, i32 0, i32 0
  %RCX.i537 = bitcast %union.anon* %2046 to i64*
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2048 = getelementptr inbounds %struct.GPR, %struct.GPR* %2047, i32 0, i32 15
  %2049 = getelementptr inbounds %struct.Reg, %struct.Reg* %2048, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %2049 to i64*
  %2050 = load i64, i64* %RBP.i538
  %2051 = sub i64 %2050, 3252
  %2052 = load i64, i64* %PC.i536
  %2053 = add i64 %2052, 7
  store i64 %2053, i64* %PC.i536
  %2054 = inttoptr i64 %2051 to i32*
  %2055 = load i32, i32* %2054
  %2056 = sext i32 %2055 to i64
  store i64 %2056, i64* %RCX.i537, align 8
  store %struct.Memory* %loadMem_48a180, %struct.Memory** %MEMORY
  %loadMem_48a187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2058 = getelementptr inbounds %struct.GPR, %struct.GPR* %2057, i32 0, i32 33
  %2059 = getelementptr inbounds %struct.Reg, %struct.Reg* %2058, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %2059 to i64*
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2061 = getelementptr inbounds %struct.GPR, %struct.GPR* %2060, i32 0, i32 1
  %2062 = getelementptr inbounds %struct.Reg, %struct.Reg* %2061, i32 0, i32 0
  %RAX.i534 = bitcast %union.anon* %2062 to i64*
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 5
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %RCX.i535 = bitcast %union.anon* %2065 to i64*
  %2066 = load i64, i64* %RAX.i534
  %2067 = load i64, i64* %RCX.i535
  %2068 = mul i64 %2067, 4
  %2069 = add i64 %2068, 8053168
  %2070 = load i64, i64* %PC.i533
  %2071 = add i64 %2070, 7
  store i64 %2071, i64* %PC.i533
  %2072 = trunc i64 %2066 to i32
  %2073 = inttoptr i64 %2069 to i32*
  %2074 = load i32, i32* %2073
  %2075 = add i32 %2074, %2072
  %2076 = zext i32 %2075 to i64
  store i64 %2076, i64* %RAX.i534, align 8
  %2077 = icmp ult i32 %2075, %2072
  %2078 = icmp ult i32 %2075, %2074
  %2079 = or i1 %2077, %2078
  %2080 = zext i1 %2079 to i8
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2080, i8* %2081, align 1
  %2082 = and i32 %2075, 255
  %2083 = call i32 @llvm.ctpop.i32(i32 %2082)
  %2084 = trunc i32 %2083 to i8
  %2085 = and i8 %2084, 1
  %2086 = xor i8 %2085, 1
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2086, i8* %2087, align 1
  %2088 = xor i32 %2074, %2072
  %2089 = xor i32 %2088, %2075
  %2090 = lshr i32 %2089, 4
  %2091 = trunc i32 %2090 to i8
  %2092 = and i8 %2091, 1
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2092, i8* %2093, align 1
  %2094 = icmp eq i32 %2075, 0
  %2095 = zext i1 %2094 to i8
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2095, i8* %2096, align 1
  %2097 = lshr i32 %2075, 31
  %2098 = trunc i32 %2097 to i8
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2098, i8* %2099, align 1
  %2100 = lshr i32 %2072, 31
  %2101 = lshr i32 %2074, 31
  %2102 = xor i32 %2097, %2100
  %2103 = xor i32 %2097, %2101
  %2104 = add i32 %2102, %2103
  %2105 = icmp eq i32 %2104, 2
  %2106 = zext i1 %2105 to i8
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2106, i8* %2107, align 1
  store %struct.Memory* %loadMem_48a187, %struct.Memory** %MEMORY
  %loadMem_48a18e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 33
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %2110 to i64*
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2112 = getelementptr inbounds %struct.GPR, %struct.GPR* %2111, i32 0, i32 1
  %2113 = getelementptr inbounds %struct.Reg, %struct.Reg* %2112, i32 0, i32 0
  %EAX.i531 = bitcast %union.anon* %2113 to i32*
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2115 = getelementptr inbounds %struct.GPR, %struct.GPR* %2114, i32 0, i32 15
  %2116 = getelementptr inbounds %struct.Reg, %struct.Reg* %2115, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %2116 to i64*
  %2117 = load i64, i64* %RBP.i532
  %2118 = sub i64 %2117, 3256
  %2119 = load i32, i32* %EAX.i531
  %2120 = zext i32 %2119 to i64
  %2121 = load i64, i64* %PC.i530
  %2122 = add i64 %2121, 6
  store i64 %2122, i64* %PC.i530
  %2123 = inttoptr i64 %2118 to i32*
  store i32 %2119, i32* %2123
  store %struct.Memory* %loadMem_48a18e, %struct.Memory** %MEMORY
  %loadMem_48a194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 33
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %2126 to i64*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 5
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %RCX.i528 = bitcast %union.anon* %2129 to i64*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 15
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %2132 to i64*
  %2133 = load i64, i64* %RBP.i529
  %2134 = sub i64 %2133, 3256
  %2135 = load i64, i64* %PC.i527
  %2136 = add i64 %2135, 7
  store i64 %2136, i64* %PC.i527
  %2137 = inttoptr i64 %2134 to i32*
  %2138 = load i32, i32* %2137
  %2139 = sext i32 %2138 to i64
  store i64 %2139, i64* %RCX.i528, align 8
  store %struct.Memory* %loadMem_48a194, %struct.Memory** %MEMORY
  %loadMem_48a19b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 33
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %2142 to i64*
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 1
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %RAX.i525 = bitcast %union.anon* %2145 to i64*
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 5
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %RCX.i526 = bitcast %union.anon* %2148 to i64*
  %2149 = load i64, i64* %RCX.i526
  %2150 = add i64 %2149, 12099168
  %2151 = load i64, i64* %PC.i524
  %2152 = add i64 %2151, 8
  store i64 %2152, i64* %PC.i524
  %2153 = inttoptr i64 %2150 to i8*
  %2154 = load i8, i8* %2153
  %2155 = zext i8 %2154 to i64
  store i64 %2155, i64* %RAX.i525, align 8
  store %struct.Memory* %loadMem_48a19b, %struct.Memory** %MEMORY
  %loadMem_48a1a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 33
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %2158 to i64*
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 1
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %EAX.i523 = bitcast %union.anon* %2161 to i32*
  %2162 = load i32, i32* %EAX.i523
  %2163 = zext i32 %2162 to i64
  %2164 = load i64, i64* %PC.i522
  %2165 = add i64 %2164, 3
  store i64 %2165, i64* %PC.i522
  %2166 = sub i32 %2162, 3
  %2167 = icmp ult i32 %2162, 3
  %2168 = zext i1 %2167 to i8
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2168, i8* %2169, align 1
  %2170 = and i32 %2166, 255
  %2171 = call i32 @llvm.ctpop.i32(i32 %2170)
  %2172 = trunc i32 %2171 to i8
  %2173 = and i8 %2172, 1
  %2174 = xor i8 %2173, 1
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2174, i8* %2175, align 1
  %2176 = xor i64 3, %2163
  %2177 = trunc i64 %2176 to i32
  %2178 = xor i32 %2177, %2166
  %2179 = lshr i32 %2178, 4
  %2180 = trunc i32 %2179 to i8
  %2181 = and i8 %2180, 1
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2181, i8* %2182, align 1
  %2183 = icmp eq i32 %2166, 0
  %2184 = zext i1 %2183 to i8
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2184, i8* %2185, align 1
  %2186 = lshr i32 %2166, 31
  %2187 = trunc i32 %2186 to i8
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2187, i8* %2188, align 1
  %2189 = lshr i32 %2162, 31
  %2190 = xor i32 %2186, %2189
  %2191 = add i32 %2190, %2189
  %2192 = icmp eq i32 %2191, 2
  %2193 = zext i1 %2192 to i8
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2193, i8* %2194, align 1
  store %struct.Memory* %loadMem_48a1a3, %struct.Memory** %MEMORY
  %loadMem_48a1a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 33
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %2197 to i64*
  %2198 = load i64, i64* %PC.i521
  %2199 = add i64 %2198, 463
  %2200 = load i64, i64* %PC.i521
  %2201 = add i64 %2200, 6
  %2202 = load i64, i64* %PC.i521
  %2203 = add i64 %2202, 6
  store i64 %2203, i64* %PC.i521
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2205 = load i8, i8* %2204, align 1
  store i8 %2205, i8* %BRANCH_TAKEN, align 1
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2207 = icmp ne i8 %2205, 0
  %2208 = select i1 %2207, i64 %2199, i64 %2201
  store i64 %2208, i64* %2206, align 8
  store %struct.Memory* %loadMem_48a1a6, %struct.Memory** %MEMORY
  %loadBr_48a1a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a1a6 = icmp eq i8 %loadBr_48a1a6, 1
  br i1 %cmpBr_48a1a6, label %block_.L_48a375, label %block_48a1ac

block_48a1ac:                                     ; preds = %block_48a17d
  %loadMem_48a1ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 33
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %2211 to i64*
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 1
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %RAX.i519 = bitcast %union.anon* %2214 to i64*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 15
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %2217 to i64*
  %2218 = load i64, i64* %RBP.i520
  %2219 = sub i64 %2218, 3256
  %2220 = load i64, i64* %PC.i518
  %2221 = add i64 %2220, 7
  store i64 %2221, i64* %PC.i518
  %2222 = inttoptr i64 %2219 to i32*
  %2223 = load i32, i32* %2222
  %2224 = sext i32 %2223 to i64
  store i64 %2224, i64* %RAX.i519, align 8
  store %struct.Memory* %loadMem_48a1ac, %struct.Memory** %MEMORY
  %loadMem_48a1b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2226 = getelementptr inbounds %struct.GPR, %struct.GPR* %2225, i32 0, i32 33
  %2227 = getelementptr inbounds %struct.Reg, %struct.Reg* %2226, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %2227 to i64*
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 1
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %RAX.i515 = bitcast %union.anon* %2230 to i64*
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 5
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %RCX.i516 = bitcast %union.anon* %2233 to i64*
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 15
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %2236 to i64*
  %2237 = load i64, i64* %RBP.i517
  %2238 = load i64, i64* %RAX.i515
  %2239 = mul i64 %2238, 4
  %2240 = add i64 %2237, -1632
  %2241 = add i64 %2240, %2239
  %2242 = load i64, i64* %PC.i514
  %2243 = add i64 %2242, 7
  store i64 %2243, i64* %PC.i514
  %2244 = inttoptr i64 %2241 to i32*
  %2245 = load i32, i32* %2244
  %2246 = zext i32 %2245 to i64
  store i64 %2246, i64* %RCX.i516, align 8
  store %struct.Memory* %loadMem_48a1b3, %struct.Memory** %MEMORY
  %loadMem_48a1ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2248 = getelementptr inbounds %struct.GPR, %struct.GPR* %2247, i32 0, i32 33
  %2249 = getelementptr inbounds %struct.Reg, %struct.Reg* %2248, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %2249 to i64*
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2251 = getelementptr inbounds %struct.GPR, %struct.GPR* %2250, i32 0, i32 7
  %2252 = getelementptr inbounds %struct.Reg, %struct.Reg* %2251, i32 0, i32 0
  %RDX.i512 = bitcast %union.anon* %2252 to i64*
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 15
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %2255 to i64*
  %2256 = load i64, i64* %RBP.i513
  %2257 = sub i64 %2256, 3240
  %2258 = load i64, i64* %PC.i511
  %2259 = add i64 %2258, 6
  store i64 %2259, i64* %PC.i511
  %2260 = inttoptr i64 %2257 to i32*
  %2261 = load i32, i32* %2260
  %2262 = zext i32 %2261 to i64
  store i64 %2262, i64* %RDX.i512, align 8
  store %struct.Memory* %loadMem_48a1ba, %struct.Memory** %MEMORY
  %loadMem_48a1c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 33
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %2265 to i64*
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2267 = getelementptr inbounds %struct.GPR, %struct.GPR* %2266, i32 0, i32 7
  %2268 = getelementptr inbounds %struct.Reg, %struct.Reg* %2267, i32 0, i32 0
  %RDX.i510 = bitcast %union.anon* %2268 to i64*
  %2269 = load i64, i64* %RDX.i510
  %2270 = load i64, i64* %PC.i509
  %2271 = add i64 %2270, 3
  store i64 %2271, i64* %PC.i509
  %2272 = trunc i64 %2269 to i32
  %2273 = sub i32 %2272, 1
  %2274 = zext i32 %2273 to i64
  store i64 %2274, i64* %RDX.i510, align 8
  %2275 = icmp ult i32 %2272, 1
  %2276 = zext i1 %2275 to i8
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2276, i8* %2277, align 1
  %2278 = and i32 %2273, 255
  %2279 = call i32 @llvm.ctpop.i32(i32 %2278)
  %2280 = trunc i32 %2279 to i8
  %2281 = and i8 %2280, 1
  %2282 = xor i8 %2281, 1
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2282, i8* %2283, align 1
  %2284 = xor i64 1, %2269
  %2285 = trunc i64 %2284 to i32
  %2286 = xor i32 %2285, %2273
  %2287 = lshr i32 %2286, 4
  %2288 = trunc i32 %2287 to i8
  %2289 = and i8 %2288, 1
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2289, i8* %2290, align 1
  %2291 = icmp eq i32 %2273, 0
  %2292 = zext i1 %2291 to i8
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2292, i8* %2293, align 1
  %2294 = lshr i32 %2273, 31
  %2295 = trunc i32 %2294 to i8
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2295, i8* %2296, align 1
  %2297 = lshr i32 %2272, 31
  %2298 = xor i32 %2294, %2297
  %2299 = add i32 %2298, %2297
  %2300 = icmp eq i32 %2299, 2
  %2301 = zext i1 %2300 to i8
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2301, i8* %2302, align 1
  store %struct.Memory* %loadMem_48a1c0, %struct.Memory** %MEMORY
  %loadMem_48a1c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 33
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %2305 to i64*
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2307 = getelementptr inbounds %struct.GPR, %struct.GPR* %2306, i32 0, i32 5
  %2308 = getelementptr inbounds %struct.Reg, %struct.Reg* %2307, i32 0, i32 0
  %ECX.i507 = bitcast %union.anon* %2308 to i32*
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2310 = getelementptr inbounds %struct.GPR, %struct.GPR* %2309, i32 0, i32 7
  %2311 = getelementptr inbounds %struct.Reg, %struct.Reg* %2310, i32 0, i32 0
  %EDX.i508 = bitcast %union.anon* %2311 to i32*
  %2312 = load i32, i32* %ECX.i507
  %2313 = zext i32 %2312 to i64
  %2314 = load i32, i32* %EDX.i508
  %2315 = zext i32 %2314 to i64
  %2316 = load i64, i64* %PC.i506
  %2317 = add i64 %2316, 2
  store i64 %2317, i64* %PC.i506
  %2318 = sub i32 %2312, %2314
  %2319 = icmp ult i32 %2312, %2314
  %2320 = zext i1 %2319 to i8
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2320, i8* %2321, align 1
  %2322 = and i32 %2318, 255
  %2323 = call i32 @llvm.ctpop.i32(i32 %2322)
  %2324 = trunc i32 %2323 to i8
  %2325 = and i8 %2324, 1
  %2326 = xor i8 %2325, 1
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2326, i8* %2327, align 1
  %2328 = xor i64 %2315, %2313
  %2329 = trunc i64 %2328 to i32
  %2330 = xor i32 %2329, %2318
  %2331 = lshr i32 %2330, 4
  %2332 = trunc i32 %2331 to i8
  %2333 = and i8 %2332, 1
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2333, i8* %2334, align 1
  %2335 = icmp eq i32 %2318, 0
  %2336 = zext i1 %2335 to i8
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2336, i8* %2337, align 1
  %2338 = lshr i32 %2318, 31
  %2339 = trunc i32 %2338 to i8
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2339, i8* %2340, align 1
  %2341 = lshr i32 %2312, 31
  %2342 = lshr i32 %2314, 31
  %2343 = xor i32 %2342, %2341
  %2344 = xor i32 %2338, %2341
  %2345 = add i32 %2344, %2343
  %2346 = icmp eq i32 %2345, 2
  %2347 = zext i1 %2346 to i8
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2347, i8* %2348, align 1
  store %struct.Memory* %loadMem_48a1c3, %struct.Memory** %MEMORY
  %loadMem_48a1c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2350 = getelementptr inbounds %struct.GPR, %struct.GPR* %2349, i32 0, i32 33
  %2351 = getelementptr inbounds %struct.Reg, %struct.Reg* %2350, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %2351 to i64*
  %2352 = load i64, i64* %PC.i505
  %2353 = add i64 %2352, 432
  %2354 = load i64, i64* %PC.i505
  %2355 = add i64 %2354, 6
  %2356 = load i64, i64* %PC.i505
  %2357 = add i64 %2356, 6
  store i64 %2357, i64* %PC.i505
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2359 = load i8, i8* %2358, align 1
  %2360 = icmp eq i8 %2359, 0
  %2361 = zext i1 %2360 to i8
  store i8 %2361, i8* %BRANCH_TAKEN, align 1
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2363 = select i1 %2360, i64 %2353, i64 %2355
  store i64 %2363, i64* %2362, align 8
  store %struct.Memory* %loadMem_48a1c5, %struct.Memory** %MEMORY
  %loadBr_48a1c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a1c5 = icmp eq i8 %loadBr_48a1c5, 1
  br i1 %cmpBr_48a1c5, label %block_.L_48a375, label %block_48a1cb

block_48a1cb:                                     ; preds = %block_48a1ac
  %loadMem_48a1cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2365 = getelementptr inbounds %struct.GPR, %struct.GPR* %2364, i32 0, i32 33
  %2366 = getelementptr inbounds %struct.Reg, %struct.Reg* %2365, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %2366 to i64*
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 15
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %2369 to i64*
  %2370 = load i64, i64* %RBP.i504
  %2371 = sub i64 %2370, 3236
  %2372 = load i64, i64* %PC.i503
  %2373 = add i64 %2372, 10
  store i64 %2373, i64* %PC.i503
  %2374 = inttoptr i64 %2371 to i32*
  store i32 1, i32* %2374
  store %struct.Memory* %loadMem_48a1cb, %struct.Memory** %MEMORY
  %loadMem_48a1d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 33
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %2377 to i64*
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 1
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %RAX.i501 = bitcast %union.anon* %2380 to i64*
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 15
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %2383 to i64*
  %2384 = load i64, i64* %RBP.i502
  %2385 = sub i64 %2384, 3240
  %2386 = load i64, i64* %PC.i500
  %2387 = add i64 %2386, 6
  store i64 %2387, i64* %PC.i500
  %2388 = inttoptr i64 %2385 to i32*
  %2389 = load i32, i32* %2388
  %2390 = zext i32 %2389 to i64
  store i64 %2390, i64* %RAX.i501, align 8
  store %struct.Memory* %loadMem_48a1d5, %struct.Memory** %MEMORY
  %loadMem_48a1db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 33
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %2393 to i64*
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 5
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %RCX.i498 = bitcast %union.anon* %2396 to i64*
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 15
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %2399 to i64*
  %2400 = load i64, i64* %RBP.i499
  %2401 = sub i64 %2400, 32
  %2402 = load i64, i64* %PC.i497
  %2403 = add i64 %2402, 4
  store i64 %2403, i64* %PC.i497
  %2404 = inttoptr i64 %2401 to i32*
  %2405 = load i32, i32* %2404
  %2406 = sext i32 %2405 to i64
  store i64 %2406, i64* %RCX.i498, align 8
  store %struct.Memory* %loadMem_48a1db, %struct.Memory** %MEMORY
  %loadMem_48a1df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 33
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %2409 to i64*
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 1
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %EAX.i494 = bitcast %union.anon* %2412 to i32*
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2414 = getelementptr inbounds %struct.GPR, %struct.GPR* %2413, i32 0, i32 5
  %2415 = getelementptr inbounds %struct.Reg, %struct.Reg* %2414, i32 0, i32 0
  %RCX.i495 = bitcast %union.anon* %2415 to i64*
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 15
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %2418 to i64*
  %2419 = load i64, i64* %RBP.i496
  %2420 = load i64, i64* %RCX.i495
  %2421 = mul i64 %2420, 4
  %2422 = add i64 %2419, -1632
  %2423 = add i64 %2422, %2421
  %2424 = load i32, i32* %EAX.i494
  %2425 = zext i32 %2424 to i64
  %2426 = load i64, i64* %PC.i493
  %2427 = add i64 %2426, 7
  store i64 %2427, i64* %PC.i493
  %2428 = inttoptr i64 %2423 to i32*
  store i32 %2424, i32* %2428
  store %struct.Memory* %loadMem_48a1df, %struct.Memory** %MEMORY
  %loadMem_48a1e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 33
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %2431 to i64*
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 15
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %2434 to i64*
  %2435 = load i64, i64* %RBP.i492
  %2436 = sub i64 %2435, 3244
  %2437 = load i64, i64* %PC.i491
  %2438 = add i64 %2437, 10
  store i64 %2438, i64* %PC.i491
  %2439 = inttoptr i64 %2436 to i32*
  store i32 0, i32* %2439
  store %struct.Memory* %loadMem_48a1e6, %struct.Memory** %MEMORY
  br label %block_.L_48a1f0

block_.L_48a1f0:                                  ; preds = %block_.L_48a35c, %block_48a1cb
  %loadMem_48a1f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 33
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %2442 to i64*
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2444 = getelementptr inbounds %struct.GPR, %struct.GPR* %2443, i32 0, i32 1
  %2445 = getelementptr inbounds %struct.Reg, %struct.Reg* %2444, i32 0, i32 0
  %RAX.i489 = bitcast %union.anon* %2445 to i64*
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 15
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %2448 to i64*
  %2449 = load i64, i64* %RBP.i490
  %2450 = sub i64 %2449, 3244
  %2451 = load i64, i64* %PC.i488
  %2452 = add i64 %2451, 6
  store i64 %2452, i64* %PC.i488
  %2453 = inttoptr i64 %2450 to i32*
  %2454 = load i32, i32* %2453
  %2455 = zext i32 %2454 to i64
  store i64 %2455, i64* %RAX.i489, align 8
  store %struct.Memory* %loadMem_48a1f0, %struct.Memory** %MEMORY
  %loadMem_48a1f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2457 = getelementptr inbounds %struct.GPR, %struct.GPR* %2456, i32 0, i32 33
  %2458 = getelementptr inbounds %struct.Reg, %struct.Reg* %2457, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %2458 to i64*
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 5
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %RCX.i486 = bitcast %union.anon* %2461 to i64*
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 15
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %2464 to i64*
  %2465 = load i64, i64* %RBP.i487
  %2466 = sub i64 %2465, 3256
  %2467 = load i64, i64* %PC.i485
  %2468 = add i64 %2467, 7
  store i64 %2468, i64* %PC.i485
  %2469 = inttoptr i64 %2466 to i32*
  %2470 = load i32, i32* %2469
  %2471 = sext i32 %2470 to i64
  store i64 %2471, i64* %RCX.i486, align 8
  store %struct.Memory* %loadMem_48a1f6, %struct.Memory** %MEMORY
  %loadMem_48a1fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2473 = getelementptr inbounds %struct.GPR, %struct.GPR* %2472, i32 0, i32 33
  %2474 = getelementptr inbounds %struct.Reg, %struct.Reg* %2473, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %2474 to i64*
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 1
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %EAX.i482 = bitcast %union.anon* %2477 to i32*
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 5
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %RCX.i483 = bitcast %union.anon* %2480 to i64*
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 15
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %2483 to i64*
  %2484 = load i32, i32* %EAX.i482
  %2485 = zext i32 %2484 to i64
  %2486 = load i64, i64* %RBP.i484
  %2487 = load i64, i64* %RCX.i483
  %2488 = mul i64 %2487, 4
  %2489 = add i64 %2486, -3232
  %2490 = add i64 %2489, %2488
  %2491 = load i64, i64* %PC.i481
  %2492 = add i64 %2491, 7
  store i64 %2492, i64* %PC.i481
  %2493 = inttoptr i64 %2490 to i32*
  %2494 = load i32, i32* %2493
  %2495 = sub i32 %2484, %2494
  %2496 = icmp ult i32 %2484, %2494
  %2497 = zext i1 %2496 to i8
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2497, i8* %2498, align 1
  %2499 = and i32 %2495, 255
  %2500 = call i32 @llvm.ctpop.i32(i32 %2499)
  %2501 = trunc i32 %2500 to i8
  %2502 = and i8 %2501, 1
  %2503 = xor i8 %2502, 1
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2503, i8* %2504, align 1
  %2505 = xor i32 %2494, %2484
  %2506 = xor i32 %2505, %2495
  %2507 = lshr i32 %2506, 4
  %2508 = trunc i32 %2507 to i8
  %2509 = and i8 %2508, 1
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2509, i8* %2510, align 1
  %2511 = icmp eq i32 %2495, 0
  %2512 = zext i1 %2511 to i8
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2512, i8* %2513, align 1
  %2514 = lshr i32 %2495, 31
  %2515 = trunc i32 %2514 to i8
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2515, i8* %2516, align 1
  %2517 = lshr i32 %2484, 31
  %2518 = lshr i32 %2494, 31
  %2519 = xor i32 %2518, %2517
  %2520 = xor i32 %2514, %2517
  %2521 = add i32 %2520, %2519
  %2522 = icmp eq i32 %2521, 2
  %2523 = zext i1 %2522 to i8
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2523, i8* %2524, align 1
  store %struct.Memory* %loadMem_48a1fd, %struct.Memory** %MEMORY
  %loadMem_48a204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 33
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %2527 to i64*
  %2528 = load i64, i64* %PC.i480
  %2529 = add i64 %2528, 364
  %2530 = load i64, i64* %PC.i480
  %2531 = add i64 %2530, 6
  %2532 = load i64, i64* %PC.i480
  %2533 = add i64 %2532, 6
  store i64 %2533, i64* %PC.i480
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2535 = load i8, i8* %2534, align 1
  %2536 = icmp ne i8 %2535, 0
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2538 = load i8, i8* %2537, align 1
  %2539 = icmp ne i8 %2538, 0
  %2540 = xor i1 %2536, %2539
  %2541 = xor i1 %2540, true
  %2542 = zext i1 %2541 to i8
  store i8 %2542, i8* %BRANCH_TAKEN, align 1
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2544 = select i1 %2540, i64 %2531, i64 %2529
  store i64 %2544, i64* %2543, align 8
  store %struct.Memory* %loadMem_48a204, %struct.Memory** %MEMORY
  %loadBr_48a204 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a204 = icmp eq i8 %loadBr_48a204, 1
  br i1 %cmpBr_48a204, label %block_.L_48a370, label %block_48a20a

block_48a20a:                                     ; preds = %block_.L_48a1f0
  %loadMem_48a20a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2546 = getelementptr inbounds %struct.GPR, %struct.GPR* %2545, i32 0, i32 33
  %2547 = getelementptr inbounds %struct.Reg, %struct.Reg* %2546, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %2547 to i64*
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 15
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %RBP.i479 = bitcast %union.anon* %2550 to i64*
  %2551 = load i64, i64* %RBP.i479
  %2552 = sub i64 %2551, 3260
  %2553 = load i64, i64* %PC.i478
  %2554 = add i64 %2553, 10
  store i64 %2554, i64* %PC.i478
  %2555 = inttoptr i64 %2552 to i32*
  store i32 0, i32* %2555
  store %struct.Memory* %loadMem_48a20a, %struct.Memory** %MEMORY
  %loadMem_48a214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 33
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 15
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %2561 to i64*
  %2562 = load i64, i64* %RBP.i477
  %2563 = sub i64 %2562, 3248
  %2564 = load i64, i64* %PC.i476
  %2565 = add i64 %2564, 10
  store i64 %2565, i64* %PC.i476
  %2566 = inttoptr i64 %2563 to i32*
  store i32 0, i32* %2566
  store %struct.Memory* %loadMem_48a214, %struct.Memory** %MEMORY
  br label %block_.L_48a21e

block_.L_48a21e:                                  ; preds = %block_.L_48a28f, %block_48a20a
  %loadMem_48a21e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 33
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %2569 to i64*
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2571 = getelementptr inbounds %struct.GPR, %struct.GPR* %2570, i32 0, i32 1
  %2572 = getelementptr inbounds %struct.Reg, %struct.Reg* %2571, i32 0, i32 0
  %RAX.i474 = bitcast %union.anon* %2572 to i64*
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2574 = getelementptr inbounds %struct.GPR, %struct.GPR* %2573, i32 0, i32 15
  %2575 = getelementptr inbounds %struct.Reg, %struct.Reg* %2574, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %2575 to i64*
  %2576 = load i64, i64* %RBP.i475
  %2577 = sub i64 %2576, 3248
  %2578 = load i64, i64* %PC.i473
  %2579 = add i64 %2578, 6
  store i64 %2579, i64* %PC.i473
  %2580 = inttoptr i64 %2577 to i32*
  %2581 = load i32, i32* %2580
  %2582 = zext i32 %2581 to i64
  store i64 %2582, i64* %RAX.i474, align 8
  store %struct.Memory* %loadMem_48a21e, %struct.Memory** %MEMORY
  %loadMem_48a224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 33
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %2585 to i64*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 5
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %RCX.i471 = bitcast %union.anon* %2588 to i64*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 15
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %2591 to i64*
  %2592 = load i64, i64* %RBP.i472
  %2593 = sub i64 %2592, 32
  %2594 = load i64, i64* %PC.i470
  %2595 = add i64 %2594, 4
  store i64 %2595, i64* %PC.i470
  %2596 = inttoptr i64 %2593 to i32*
  %2597 = load i32, i32* %2596
  %2598 = sext i32 %2597 to i64
  store i64 %2598, i64* %RCX.i471, align 8
  store %struct.Memory* %loadMem_48a224, %struct.Memory** %MEMORY
  %loadMem_48a228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2600 = getelementptr inbounds %struct.GPR, %struct.GPR* %2599, i32 0, i32 33
  %2601 = getelementptr inbounds %struct.Reg, %struct.Reg* %2600, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %2601 to i64*
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2603 = getelementptr inbounds %struct.GPR, %struct.GPR* %2602, i32 0, i32 1
  %2604 = getelementptr inbounds %struct.Reg, %struct.Reg* %2603, i32 0, i32 0
  %EAX.i467 = bitcast %union.anon* %2604 to i32*
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 5
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %RCX.i468 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 15
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %2610 to i64*
  %2611 = load i32, i32* %EAX.i467
  %2612 = zext i32 %2611 to i64
  %2613 = load i64, i64* %RBP.i469
  %2614 = load i64, i64* %RCX.i468
  %2615 = mul i64 %2614, 4
  %2616 = add i64 %2613, -3232
  %2617 = add i64 %2616, %2615
  %2618 = load i64, i64* %PC.i466
  %2619 = add i64 %2618, 7
  store i64 %2619, i64* %PC.i466
  %2620 = inttoptr i64 %2617 to i32*
  %2621 = load i32, i32* %2620
  %2622 = sub i32 %2611, %2621
  %2623 = icmp ult i32 %2611, %2621
  %2624 = zext i1 %2623 to i8
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2624, i8* %2625, align 1
  %2626 = and i32 %2622, 255
  %2627 = call i32 @llvm.ctpop.i32(i32 %2626)
  %2628 = trunc i32 %2627 to i8
  %2629 = and i8 %2628, 1
  %2630 = xor i8 %2629, 1
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2630, i8* %2631, align 1
  %2632 = xor i32 %2621, %2611
  %2633 = xor i32 %2632, %2622
  %2634 = lshr i32 %2633, 4
  %2635 = trunc i32 %2634 to i8
  %2636 = and i8 %2635, 1
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2636, i8* %2637, align 1
  %2638 = icmp eq i32 %2622, 0
  %2639 = zext i1 %2638 to i8
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2639, i8* %2640, align 1
  %2641 = lshr i32 %2622, 31
  %2642 = trunc i32 %2641 to i8
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2642, i8* %2643, align 1
  %2644 = lshr i32 %2611, 31
  %2645 = lshr i32 %2621, 31
  %2646 = xor i32 %2645, %2644
  %2647 = xor i32 %2641, %2644
  %2648 = add i32 %2647, %2646
  %2649 = icmp eq i32 %2648, 2
  %2650 = zext i1 %2649 to i8
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2650, i8* %2651, align 1
  store %struct.Memory* %loadMem_48a228, %struct.Memory** %MEMORY
  %loadMem_48a22f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 33
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %2654 to i64*
  %2655 = load i64, i64* %PC.i465
  %2656 = add i64 %2655, 116
  %2657 = load i64, i64* %PC.i465
  %2658 = add i64 %2657, 6
  %2659 = load i64, i64* %PC.i465
  %2660 = add i64 %2659, 6
  store i64 %2660, i64* %PC.i465
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2662 = load i8, i8* %2661, align 1
  %2663 = icmp ne i8 %2662, 0
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2665 = load i8, i8* %2664, align 1
  %2666 = icmp ne i8 %2665, 0
  %2667 = xor i1 %2663, %2666
  %2668 = xor i1 %2667, true
  %2669 = zext i1 %2668 to i8
  store i8 %2669, i8* %BRANCH_TAKEN, align 1
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2671 = select i1 %2667, i64 %2658, i64 %2656
  store i64 %2671, i64* %2670, align 8
  store %struct.Memory* %loadMem_48a22f, %struct.Memory** %MEMORY
  %loadBr_48a22f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a22f = icmp eq i8 %loadBr_48a22f, 1
  br i1 %cmpBr_48a22f, label %block_.L_48a2a3, label %block_48a235

block_48a235:                                     ; preds = %block_.L_48a21e
  %loadMem_48a235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2673 = getelementptr inbounds %struct.GPR, %struct.GPR* %2672, i32 0, i32 33
  %2674 = getelementptr inbounds %struct.Reg, %struct.Reg* %2673, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %2674 to i64*
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2676 = getelementptr inbounds %struct.GPR, %struct.GPR* %2675, i32 0, i32 1
  %2677 = getelementptr inbounds %struct.Reg, %struct.Reg* %2676, i32 0, i32 0
  %RAX.i464 = bitcast %union.anon* %2677 to i64*
  %2678 = load i64, i64* %PC.i463
  %2679 = add i64 %2678, 10
  store i64 %2679, i64* %PC.i463
  store i64 ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64), i64* %RAX.i464, align 8
  store %struct.Memory* %loadMem_48a235, %struct.Memory** %MEMORY
  %loadMem_48a23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 33
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %2682 to i64*
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 5
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %RCX.i461 = bitcast %union.anon* %2685 to i64*
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 15
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %2688 to i64*
  %2689 = load i64, i64* %RBP.i462
  %2690 = sub i64 %2689, 32
  %2691 = load i64, i64* %PC.i460
  %2692 = add i64 %2691, 4
  store i64 %2692, i64* %PC.i460
  %2693 = inttoptr i64 %2690 to i32*
  %2694 = load i32, i32* %2693
  %2695 = sext i32 %2694 to i64
  store i64 %2695, i64* %RCX.i461, align 8
  store %struct.Memory* %loadMem_48a23f, %struct.Memory** %MEMORY
  %loadMem_48a243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 33
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %2698 to i64*
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2700 = getelementptr inbounds %struct.GPR, %struct.GPR* %2699, i32 0, i32 5
  %2701 = getelementptr inbounds %struct.Reg, %struct.Reg* %2700, i32 0, i32 0
  %RCX.i459 = bitcast %union.anon* %2701 to i64*
  %2702 = load i64, i64* %RCX.i459
  %2703 = load i64, i64* %PC.i458
  %2704 = add i64 %2703, 7
  store i64 %2704, i64* %PC.i458
  %2705 = sext i64 %2702 to i128
  %2706 = and i128 %2705, -18446744073709551616
  %2707 = zext i64 %2702 to i128
  %2708 = or i128 %2706, %2707
  %2709 = mul i128 144, %2708
  %2710 = trunc i128 %2709 to i64
  store i64 %2710, i64* %RCX.i459, align 8
  %2711 = sext i64 %2710 to i128
  %2712 = icmp ne i128 %2711, %2709
  %2713 = zext i1 %2712 to i8
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2713, i8* %2714, align 1
  %2715 = trunc i128 %2709 to i32
  %2716 = and i32 %2715, 255
  %2717 = call i32 @llvm.ctpop.i32(i32 %2716)
  %2718 = trunc i32 %2717 to i8
  %2719 = and i8 %2718, 1
  %2720 = xor i8 %2719, 1
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2720, i8* %2721, align 1
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2722, align 1
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2723, align 1
  %2724 = lshr i64 %2710, 63
  %2725 = trunc i64 %2724 to i8
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2725, i8* %2726, align 1
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2713, i8* %2727, align 1
  store %struct.Memory* %loadMem_48a243, %struct.Memory** %MEMORY
  %loadMem_48a24a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 33
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %2730 to i64*
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2732 = getelementptr inbounds %struct.GPR, %struct.GPR* %2731, i32 0, i32 1
  %2733 = getelementptr inbounds %struct.Reg, %struct.Reg* %2732, i32 0, i32 0
  %RAX.i456 = bitcast %union.anon* %2733 to i64*
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2735 = getelementptr inbounds %struct.GPR, %struct.GPR* %2734, i32 0, i32 7
  %2736 = getelementptr inbounds %struct.Reg, %struct.Reg* %2735, i32 0, i32 0
  %RDX.i457 = bitcast %union.anon* %2736 to i64*
  %2737 = load i64, i64* %RAX.i456
  %2738 = load i64, i64* %PC.i455
  %2739 = add i64 %2738, 3
  store i64 %2739, i64* %PC.i455
  store i64 %2737, i64* %RDX.i457, align 8
  store %struct.Memory* %loadMem_48a24a, %struct.Memory** %MEMORY
  %loadMem_48a24d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2741 = getelementptr inbounds %struct.GPR, %struct.GPR* %2740, i32 0, i32 33
  %2742 = getelementptr inbounds %struct.Reg, %struct.Reg* %2741, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %2742 to i64*
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2744 = getelementptr inbounds %struct.GPR, %struct.GPR* %2743, i32 0, i32 5
  %2745 = getelementptr inbounds %struct.Reg, %struct.Reg* %2744, i32 0, i32 0
  %RCX.i453 = bitcast %union.anon* %2745 to i64*
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2747 = getelementptr inbounds %struct.GPR, %struct.GPR* %2746, i32 0, i32 7
  %2748 = getelementptr inbounds %struct.Reg, %struct.Reg* %2747, i32 0, i32 0
  %RDX.i454 = bitcast %union.anon* %2748 to i64*
  %2749 = load i64, i64* %RDX.i454
  %2750 = load i64, i64* %RCX.i453
  %2751 = load i64, i64* %PC.i452
  %2752 = add i64 %2751, 3
  store i64 %2752, i64* %PC.i452
  %2753 = add i64 %2750, %2749
  store i64 %2753, i64* %RDX.i454, align 8
  %2754 = icmp ult i64 %2753, %2749
  %2755 = icmp ult i64 %2753, %2750
  %2756 = or i1 %2754, %2755
  %2757 = zext i1 %2756 to i8
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2757, i8* %2758, align 1
  %2759 = trunc i64 %2753 to i32
  %2760 = and i32 %2759, 255
  %2761 = call i32 @llvm.ctpop.i32(i32 %2760)
  %2762 = trunc i32 %2761 to i8
  %2763 = and i8 %2762, 1
  %2764 = xor i8 %2763, 1
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2764, i8* %2765, align 1
  %2766 = xor i64 %2750, %2749
  %2767 = xor i64 %2766, %2753
  %2768 = lshr i64 %2767, 4
  %2769 = trunc i64 %2768 to i8
  %2770 = and i8 %2769, 1
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2770, i8* %2771, align 1
  %2772 = icmp eq i64 %2753, 0
  %2773 = zext i1 %2772 to i8
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2773, i8* %2774, align 1
  %2775 = lshr i64 %2753, 63
  %2776 = trunc i64 %2775 to i8
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2776, i8* %2777, align 1
  %2778 = lshr i64 %2749, 63
  %2779 = lshr i64 %2750, 63
  %2780 = xor i64 %2775, %2778
  %2781 = xor i64 %2775, %2779
  %2782 = add i64 %2780, %2781
  %2783 = icmp eq i64 %2782, 2
  %2784 = zext i1 %2783 to i8
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2784, i8* %2785, align 1
  store %struct.Memory* %loadMem_48a24d, %struct.Memory** %MEMORY
  %loadMem_48a250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2787 = getelementptr inbounds %struct.GPR, %struct.GPR* %2786, i32 0, i32 33
  %2788 = getelementptr inbounds %struct.Reg, %struct.Reg* %2787, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %2788 to i64*
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 5
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %RCX.i450 = bitcast %union.anon* %2791 to i64*
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2793 = getelementptr inbounds %struct.GPR, %struct.GPR* %2792, i32 0, i32 15
  %2794 = getelementptr inbounds %struct.Reg, %struct.Reg* %2793, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %2794 to i64*
  %2795 = load i64, i64* %RBP.i451
  %2796 = sub i64 %2795, 3248
  %2797 = load i64, i64* %PC.i449
  %2798 = add i64 %2797, 7
  store i64 %2798, i64* %PC.i449
  %2799 = inttoptr i64 %2796 to i32*
  %2800 = load i32, i32* %2799
  %2801 = sext i32 %2800 to i64
  store i64 %2801, i64* %RCX.i450, align 8
  store %struct.Memory* %loadMem_48a250, %struct.Memory** %MEMORY
  %loadMem_48a257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2803 = getelementptr inbounds %struct.GPR, %struct.GPR* %2802, i32 0, i32 33
  %2804 = getelementptr inbounds %struct.Reg, %struct.Reg* %2803, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %2804 to i64*
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2806 = getelementptr inbounds %struct.GPR, %struct.GPR* %2805, i32 0, i32 5
  %2807 = getelementptr inbounds %struct.Reg, %struct.Reg* %2806, i32 0, i32 0
  %RCX.i446 = bitcast %union.anon* %2807 to i64*
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 7
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %RDX.i447 = bitcast %union.anon* %2810 to i64*
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 9
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %RSI.i448 = bitcast %union.anon* %2813 to i64*
  %2814 = load i64, i64* %RDX.i447
  %2815 = load i64, i64* %RCX.i446
  %2816 = mul i64 %2815, 4
  %2817 = add i64 %2816, %2814
  %2818 = load i64, i64* %PC.i445
  %2819 = add i64 %2818, 3
  store i64 %2819, i64* %PC.i445
  %2820 = inttoptr i64 %2817 to i32*
  %2821 = load i32, i32* %2820
  %2822 = zext i32 %2821 to i64
  store i64 %2822, i64* %RSI.i448, align 8
  store %struct.Memory* %loadMem_48a257, %struct.Memory** %MEMORY
  %loadMem_48a25a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 33
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %2825 to i64*
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 5
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %RCX.i443 = bitcast %union.anon* %2828 to i64*
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 15
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %2831 to i64*
  %2832 = load i64, i64* %RBP.i444
  %2833 = sub i64 %2832, 3256
  %2834 = load i64, i64* %PC.i442
  %2835 = add i64 %2834, 7
  store i64 %2835, i64* %PC.i442
  %2836 = inttoptr i64 %2833 to i32*
  %2837 = load i32, i32* %2836
  %2838 = sext i32 %2837 to i64
  store i64 %2838, i64* %RCX.i443, align 8
  store %struct.Memory* %loadMem_48a25a, %struct.Memory** %MEMORY
  %loadMem_48a261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 33
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %2841 to i64*
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 5
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %RCX.i441 = bitcast %union.anon* %2844 to i64*
  %2845 = load i64, i64* %RCX.i441
  %2846 = load i64, i64* %PC.i440
  %2847 = add i64 %2846, 7
  store i64 %2847, i64* %PC.i440
  %2848 = sext i64 %2845 to i128
  %2849 = and i128 %2848, -18446744073709551616
  %2850 = zext i64 %2845 to i128
  %2851 = or i128 %2849, %2850
  %2852 = mul i128 144, %2851
  %2853 = trunc i128 %2852 to i64
  store i64 %2853, i64* %RCX.i441, align 8
  %2854 = sext i64 %2853 to i128
  %2855 = icmp ne i128 %2854, %2852
  %2856 = zext i1 %2855 to i8
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2856, i8* %2857, align 1
  %2858 = trunc i128 %2852 to i32
  %2859 = and i32 %2858, 255
  %2860 = call i32 @llvm.ctpop.i32(i32 %2859)
  %2861 = trunc i32 %2860 to i8
  %2862 = and i8 %2861, 1
  %2863 = xor i8 %2862, 1
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2863, i8* %2864, align 1
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2865, align 1
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2866, align 1
  %2867 = lshr i64 %2853, 63
  %2868 = trunc i64 %2867 to i8
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2868, i8* %2869, align 1
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2856, i8* %2870, align 1
  store %struct.Memory* %loadMem_48a261, %struct.Memory** %MEMORY
  %loadMem_48a268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 33
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %2873 to i64*
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2875 = getelementptr inbounds %struct.GPR, %struct.GPR* %2874, i32 0, i32 1
  %2876 = getelementptr inbounds %struct.Reg, %struct.Reg* %2875, i32 0, i32 0
  %RAX.i438 = bitcast %union.anon* %2876 to i64*
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 5
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %RCX.i439 = bitcast %union.anon* %2879 to i64*
  %2880 = load i64, i64* %RAX.i438
  %2881 = load i64, i64* %RCX.i439
  %2882 = load i64, i64* %PC.i437
  %2883 = add i64 %2882, 3
  store i64 %2883, i64* %PC.i437
  %2884 = add i64 %2881, %2880
  store i64 %2884, i64* %RAX.i438, align 8
  %2885 = icmp ult i64 %2884, %2880
  %2886 = icmp ult i64 %2884, %2881
  %2887 = or i1 %2885, %2886
  %2888 = zext i1 %2887 to i8
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2888, i8* %2889, align 1
  %2890 = trunc i64 %2884 to i32
  %2891 = and i32 %2890, 255
  %2892 = call i32 @llvm.ctpop.i32(i32 %2891)
  %2893 = trunc i32 %2892 to i8
  %2894 = and i8 %2893, 1
  %2895 = xor i8 %2894, 1
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2895, i8* %2896, align 1
  %2897 = xor i64 %2881, %2880
  %2898 = xor i64 %2897, %2884
  %2899 = lshr i64 %2898, 4
  %2900 = trunc i64 %2899 to i8
  %2901 = and i8 %2900, 1
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2901, i8* %2902, align 1
  %2903 = icmp eq i64 %2884, 0
  %2904 = zext i1 %2903 to i8
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2904, i8* %2905, align 1
  %2906 = lshr i64 %2884, 63
  %2907 = trunc i64 %2906 to i8
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2907, i8* %2908, align 1
  %2909 = lshr i64 %2880, 63
  %2910 = lshr i64 %2881, 63
  %2911 = xor i64 %2906, %2909
  %2912 = xor i64 %2906, %2910
  %2913 = add i64 %2911, %2912
  %2914 = icmp eq i64 %2913, 2
  %2915 = zext i1 %2914 to i8
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2915, i8* %2916, align 1
  store %struct.Memory* %loadMem_48a268, %struct.Memory** %MEMORY
  %loadMem_48a26b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 33
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %2919 to i64*
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 5
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %RCX.i435 = bitcast %union.anon* %2922 to i64*
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 15
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %2925 to i64*
  %2926 = load i64, i64* %RBP.i436
  %2927 = sub i64 %2926, 3244
  %2928 = load i64, i64* %PC.i434
  %2929 = add i64 %2928, 7
  store i64 %2929, i64* %PC.i434
  %2930 = inttoptr i64 %2927 to i32*
  %2931 = load i32, i32* %2930
  %2932 = sext i32 %2931 to i64
  store i64 %2932, i64* %RCX.i435, align 8
  store %struct.Memory* %loadMem_48a26b, %struct.Memory** %MEMORY
  %loadMem_48a272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 33
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %2935 to i64*
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2937 = getelementptr inbounds %struct.GPR, %struct.GPR* %2936, i32 0, i32 9
  %2938 = getelementptr inbounds %struct.Reg, %struct.Reg* %2937, i32 0, i32 0
  %ESI.i431 = bitcast %union.anon* %2938 to i32*
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2940 = getelementptr inbounds %struct.GPR, %struct.GPR* %2939, i32 0, i32 1
  %2941 = getelementptr inbounds %struct.Reg, %struct.Reg* %2940, i32 0, i32 0
  %RAX.i432 = bitcast %union.anon* %2941 to i64*
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2943 = getelementptr inbounds %struct.GPR, %struct.GPR* %2942, i32 0, i32 5
  %2944 = getelementptr inbounds %struct.Reg, %struct.Reg* %2943, i32 0, i32 0
  %RCX.i433 = bitcast %union.anon* %2944 to i64*
  %2945 = load i32, i32* %ESI.i431
  %2946 = zext i32 %2945 to i64
  %2947 = load i64, i64* %RAX.i432
  %2948 = load i64, i64* %RCX.i433
  %2949 = mul i64 %2948, 4
  %2950 = add i64 %2949, %2947
  %2951 = load i64, i64* %PC.i430
  %2952 = add i64 %2951, 3
  store i64 %2952, i64* %PC.i430
  %2953 = inttoptr i64 %2950 to i32*
  %2954 = load i32, i32* %2953
  %2955 = sub i32 %2945, %2954
  %2956 = icmp ult i32 %2945, %2954
  %2957 = zext i1 %2956 to i8
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2957, i8* %2958, align 1
  %2959 = and i32 %2955, 255
  %2960 = call i32 @llvm.ctpop.i32(i32 %2959)
  %2961 = trunc i32 %2960 to i8
  %2962 = and i8 %2961, 1
  %2963 = xor i8 %2962, 1
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2963, i8* %2964, align 1
  %2965 = xor i32 %2954, %2945
  %2966 = xor i32 %2965, %2955
  %2967 = lshr i32 %2966, 4
  %2968 = trunc i32 %2967 to i8
  %2969 = and i8 %2968, 1
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2969, i8* %2970, align 1
  %2971 = icmp eq i32 %2955, 0
  %2972 = zext i1 %2971 to i8
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2972, i8* %2973, align 1
  %2974 = lshr i32 %2955, 31
  %2975 = trunc i32 %2974 to i8
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2975, i8* %2976, align 1
  %2977 = lshr i32 %2945, 31
  %2978 = lshr i32 %2954, 31
  %2979 = xor i32 %2978, %2977
  %2980 = xor i32 %2974, %2977
  %2981 = add i32 %2980, %2979
  %2982 = icmp eq i32 %2981, 2
  %2983 = zext i1 %2982 to i8
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2983, i8* %2984, align 1
  store %struct.Memory* %loadMem_48a272, %struct.Memory** %MEMORY
  %loadMem_48a275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2986 = getelementptr inbounds %struct.GPR, %struct.GPR* %2985, i32 0, i32 33
  %2987 = getelementptr inbounds %struct.Reg, %struct.Reg* %2986, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %2987 to i64*
  %2988 = load i64, i64* %PC.i429
  %2989 = add i64 %2988, 21
  %2990 = load i64, i64* %PC.i429
  %2991 = add i64 %2990, 6
  %2992 = load i64, i64* %PC.i429
  %2993 = add i64 %2992, 6
  store i64 %2993, i64* %PC.i429
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2995 = load i8, i8* %2994, align 1
  %2996 = icmp eq i8 %2995, 0
  %2997 = zext i1 %2996 to i8
  store i8 %2997, i8* %BRANCH_TAKEN, align 1
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2999 = select i1 %2996, i64 %2989, i64 %2991
  store i64 %2999, i64* %2998, align 8
  store %struct.Memory* %loadMem_48a275, %struct.Memory** %MEMORY
  %loadBr_48a275 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a275 = icmp eq i8 %loadBr_48a275, 1
  br i1 %cmpBr_48a275, label %block_.L_48a28a, label %block_48a27b

block_48a27b:                                     ; preds = %block_48a235
  %loadMem_48a27b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3001 = getelementptr inbounds %struct.GPR, %struct.GPR* %3000, i32 0, i32 33
  %3002 = getelementptr inbounds %struct.Reg, %struct.Reg* %3001, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %3002 to i64*
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 15
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %3005 to i64*
  %3006 = load i64, i64* %RBP.i428
  %3007 = sub i64 %3006, 3260
  %3008 = load i64, i64* %PC.i427
  %3009 = add i64 %3008, 10
  store i64 %3009, i64* %PC.i427
  %3010 = inttoptr i64 %3007 to i32*
  store i32 1, i32* %3010
  store %struct.Memory* %loadMem_48a27b, %struct.Memory** %MEMORY
  %loadMem_48a285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3012 = getelementptr inbounds %struct.GPR, %struct.GPR* %3011, i32 0, i32 33
  %3013 = getelementptr inbounds %struct.Reg, %struct.Reg* %3012, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %3013 to i64*
  %3014 = load i64, i64* %PC.i426
  %3015 = add i64 %3014, 30
  %3016 = load i64, i64* %PC.i426
  %3017 = add i64 %3016, 5
  store i64 %3017, i64* %PC.i426
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3015, i64* %3018, align 8
  store %struct.Memory* %loadMem_48a285, %struct.Memory** %MEMORY
  br label %block_.L_48a2a3

block_.L_48a28a:                                  ; preds = %block_48a235
  %loadMem_48a28a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 33
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %3021 to i64*
  %3022 = load i64, i64* %PC.i425
  %3023 = add i64 %3022, 5
  %3024 = load i64, i64* %PC.i425
  %3025 = add i64 %3024, 5
  store i64 %3025, i64* %PC.i425
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3023, i64* %3026, align 8
  store %struct.Memory* %loadMem_48a28a, %struct.Memory** %MEMORY
  br label %block_.L_48a28f

block_.L_48a28f:                                  ; preds = %block_.L_48a28a
  %loadMem_48a28f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 33
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %3029 to i64*
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3031 = getelementptr inbounds %struct.GPR, %struct.GPR* %3030, i32 0, i32 1
  %3032 = getelementptr inbounds %struct.Reg, %struct.Reg* %3031, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %3032 to i64*
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3034 = getelementptr inbounds %struct.GPR, %struct.GPR* %3033, i32 0, i32 15
  %3035 = getelementptr inbounds %struct.Reg, %struct.Reg* %3034, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %3035 to i64*
  %3036 = load i64, i64* %RBP.i424
  %3037 = sub i64 %3036, 3248
  %3038 = load i64, i64* %PC.i422
  %3039 = add i64 %3038, 6
  store i64 %3039, i64* %PC.i422
  %3040 = inttoptr i64 %3037 to i32*
  %3041 = load i32, i32* %3040
  %3042 = zext i32 %3041 to i64
  store i64 %3042, i64* %RAX.i423, align 8
  store %struct.Memory* %loadMem_48a28f, %struct.Memory** %MEMORY
  %loadMem_48a295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3044 = getelementptr inbounds %struct.GPR, %struct.GPR* %3043, i32 0, i32 33
  %3045 = getelementptr inbounds %struct.Reg, %struct.Reg* %3044, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %3045 to i64*
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3047 = getelementptr inbounds %struct.GPR, %struct.GPR* %3046, i32 0, i32 1
  %3048 = getelementptr inbounds %struct.Reg, %struct.Reg* %3047, i32 0, i32 0
  %RAX.i421 = bitcast %union.anon* %3048 to i64*
  %3049 = load i64, i64* %RAX.i421
  %3050 = load i64, i64* %PC.i420
  %3051 = add i64 %3050, 3
  store i64 %3051, i64* %PC.i420
  %3052 = trunc i64 %3049 to i32
  %3053 = add i32 1, %3052
  %3054 = zext i32 %3053 to i64
  store i64 %3054, i64* %RAX.i421, align 8
  %3055 = icmp ult i32 %3053, %3052
  %3056 = icmp ult i32 %3053, 1
  %3057 = or i1 %3055, %3056
  %3058 = zext i1 %3057 to i8
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3058, i8* %3059, align 1
  %3060 = and i32 %3053, 255
  %3061 = call i32 @llvm.ctpop.i32(i32 %3060)
  %3062 = trunc i32 %3061 to i8
  %3063 = and i8 %3062, 1
  %3064 = xor i8 %3063, 1
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3064, i8* %3065, align 1
  %3066 = xor i64 1, %3049
  %3067 = trunc i64 %3066 to i32
  %3068 = xor i32 %3067, %3053
  %3069 = lshr i32 %3068, 4
  %3070 = trunc i32 %3069 to i8
  %3071 = and i8 %3070, 1
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3071, i8* %3072, align 1
  %3073 = icmp eq i32 %3053, 0
  %3074 = zext i1 %3073 to i8
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3074, i8* %3075, align 1
  %3076 = lshr i32 %3053, 31
  %3077 = trunc i32 %3076 to i8
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3077, i8* %3078, align 1
  %3079 = lshr i32 %3052, 31
  %3080 = xor i32 %3076, %3079
  %3081 = add i32 %3080, %3076
  %3082 = icmp eq i32 %3081, 2
  %3083 = zext i1 %3082 to i8
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3083, i8* %3084, align 1
  store %struct.Memory* %loadMem_48a295, %struct.Memory** %MEMORY
  %loadMem_48a298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 33
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %3087 to i64*
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 1
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %EAX.i418 = bitcast %union.anon* %3090 to i32*
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3092 = getelementptr inbounds %struct.GPR, %struct.GPR* %3091, i32 0, i32 15
  %3093 = getelementptr inbounds %struct.Reg, %struct.Reg* %3092, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %3093 to i64*
  %3094 = load i64, i64* %RBP.i419
  %3095 = sub i64 %3094, 3248
  %3096 = load i32, i32* %EAX.i418
  %3097 = zext i32 %3096 to i64
  %3098 = load i64, i64* %PC.i417
  %3099 = add i64 %3098, 6
  store i64 %3099, i64* %PC.i417
  %3100 = inttoptr i64 %3095 to i32*
  store i32 %3096, i32* %3100
  store %struct.Memory* %loadMem_48a298, %struct.Memory** %MEMORY
  %loadMem_48a29e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 33
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %3103 to i64*
  %3104 = load i64, i64* %PC.i416
  %3105 = add i64 %3104, -128
  %3106 = load i64, i64* %PC.i416
  %3107 = add i64 %3106, 5
  store i64 %3107, i64* %PC.i416
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3105, i64* %3108, align 8
  store %struct.Memory* %loadMem_48a29e, %struct.Memory** %MEMORY
  br label %block_.L_48a21e

block_.L_48a2a3:                                  ; preds = %block_48a27b, %block_.L_48a21e
  %loadMem_48a2a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 33
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %3111 to i64*
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 15
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %3114 to i64*
  %3115 = load i64, i64* %RBP.i415
  %3116 = sub i64 %3115, 3260
  %3117 = load i64, i64* %PC.i414
  %3118 = add i64 %3117, 7
  store i64 %3118, i64* %PC.i414
  %3119 = inttoptr i64 %3116 to i32*
  %3120 = load i32, i32* %3119
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3121, align 1
  %3122 = and i32 %3120, 255
  %3123 = call i32 @llvm.ctpop.i32(i32 %3122)
  %3124 = trunc i32 %3123 to i8
  %3125 = and i8 %3124, 1
  %3126 = xor i8 %3125, 1
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3126, i8* %3127, align 1
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3128, align 1
  %3129 = icmp eq i32 %3120, 0
  %3130 = zext i1 %3129 to i8
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3130, i8* %3131, align 1
  %3132 = lshr i32 %3120, 31
  %3133 = trunc i32 %3132 to i8
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3133, i8* %3134, align 1
  %3135 = lshr i32 %3120, 31
  %3136 = xor i32 %3132, %3135
  %3137 = add i32 %3136, %3135
  %3138 = icmp eq i32 %3137, 2
  %3139 = zext i1 %3138 to i8
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3139, i8* %3140, align 1
  store %struct.Memory* %loadMem_48a2a3, %struct.Memory** %MEMORY
  %loadMem_48a2aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3142 = getelementptr inbounds %struct.GPR, %struct.GPR* %3141, i32 0, i32 33
  %3143 = getelementptr inbounds %struct.Reg, %struct.Reg* %3142, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %3143 to i64*
  %3144 = load i64, i64* %PC.i413
  %3145 = add i64 %3144, 173
  %3146 = load i64, i64* %PC.i413
  %3147 = add i64 %3146, 6
  %3148 = load i64, i64* %PC.i413
  %3149 = add i64 %3148, 6
  store i64 %3149, i64* %PC.i413
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3151 = load i8, i8* %3150, align 1
  %3152 = icmp eq i8 %3151, 0
  %3153 = zext i1 %3152 to i8
  store i8 %3153, i8* %BRANCH_TAKEN, align 1
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3155 = select i1 %3152, i64 %3145, i64 %3147
  store i64 %3155, i64* %3154, align 8
  store %struct.Memory* %loadMem_48a2aa, %struct.Memory** %MEMORY
  %loadBr_48a2aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a2aa = icmp eq i8 %loadBr_48a2aa, 1
  br i1 %cmpBr_48a2aa, label %block_.L_48a357, label %block_48a2b0

block_48a2b0:                                     ; preds = %block_.L_48a2a3
  %loadMem_48a2b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3157 = getelementptr inbounds %struct.GPR, %struct.GPR* %3156, i32 0, i32 33
  %3158 = getelementptr inbounds %struct.Reg, %struct.Reg* %3157, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %3158 to i64*
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3160 = getelementptr inbounds %struct.GPR, %struct.GPR* %3159, i32 0, i32 1
  %3161 = getelementptr inbounds %struct.Reg, %struct.Reg* %3160, i32 0, i32 0
  %RAX.i411 = bitcast %union.anon* %3161 to i64*
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3163 = getelementptr inbounds %struct.GPR, %struct.GPR* %3162, i32 0, i32 15
  %3164 = getelementptr inbounds %struct.Reg, %struct.Reg* %3163, i32 0, i32 0
  %RBP.i412 = bitcast %union.anon* %3164 to i64*
  %3165 = load i64, i64* %RBP.i412
  %3166 = sub i64 %3165, 32
  %3167 = load i64, i64* %PC.i410
  %3168 = add i64 %3167, 4
  store i64 %3168, i64* %PC.i410
  %3169 = inttoptr i64 %3166 to i32*
  %3170 = load i32, i32* %3169
  %3171 = sext i32 %3170 to i64
  store i64 %3171, i64* %RAX.i411, align 8
  store %struct.Memory* %loadMem_48a2b0, %struct.Memory** %MEMORY
  %loadMem_48a2b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3173 = getelementptr inbounds %struct.GPR, %struct.GPR* %3172, i32 0, i32 33
  %3174 = getelementptr inbounds %struct.Reg, %struct.Reg* %3173, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %3174 to i64*
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3176 = getelementptr inbounds %struct.GPR, %struct.GPR* %3175, i32 0, i32 1
  %3177 = getelementptr inbounds %struct.Reg, %struct.Reg* %3176, i32 0, i32 0
  %RAX.i407 = bitcast %union.anon* %3177 to i64*
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 5
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %RCX.i408 = bitcast %union.anon* %3180 to i64*
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3182 = getelementptr inbounds %struct.GPR, %struct.GPR* %3181, i32 0, i32 15
  %3183 = getelementptr inbounds %struct.Reg, %struct.Reg* %3182, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %3183 to i64*
  %3184 = load i64, i64* %RBP.i409
  %3185 = load i64, i64* %RAX.i407
  %3186 = mul i64 %3185, 4
  %3187 = add i64 %3184, -3232
  %3188 = add i64 %3187, %3186
  %3189 = load i64, i64* %PC.i406
  %3190 = add i64 %3189, 7
  store i64 %3190, i64* %PC.i406
  %3191 = inttoptr i64 %3188 to i32*
  %3192 = load i32, i32* %3191
  %3193 = zext i32 %3192 to i64
  store i64 %3193, i64* %RCX.i408, align 8
  store %struct.Memory* %loadMem_48a2b4, %struct.Memory** %MEMORY
  %loadMem_48a2bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 33
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %3196 to i64*
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3198 = getelementptr inbounds %struct.GPR, %struct.GPR* %3197, i32 0, i32 7
  %3199 = getelementptr inbounds %struct.Reg, %struct.Reg* %3198, i32 0, i32 0
  %RDX.i405 = bitcast %union.anon* %3199 to i64*
  %3200 = load i64, i64* %PC.i404
  %3201 = add i64 %3200, 7
  store i64 %3201, i64* %PC.i404
  %3202 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %3203 = zext i32 %3202 to i64
  store i64 %3203, i64* %RDX.i405, align 8
  store %struct.Memory* %loadMem_48a2bb, %struct.Memory** %MEMORY
  %loadMem_48a2c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3205 = getelementptr inbounds %struct.GPR, %struct.GPR* %3204, i32 0, i32 33
  %3206 = getelementptr inbounds %struct.Reg, %struct.Reg* %3205, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %3206 to i64*
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3208 = getelementptr inbounds %struct.GPR, %struct.GPR* %3207, i32 0, i32 7
  %3209 = getelementptr inbounds %struct.Reg, %struct.Reg* %3208, i32 0, i32 0
  %RDX.i403 = bitcast %union.anon* %3209 to i64*
  %3210 = load i64, i64* %RDX.i403
  %3211 = load i64, i64* %PC.i402
  %3212 = add i64 %3211, 3
  store i64 %3212, i64* %PC.i402
  %3213 = trunc i64 %3210 to i32
  %3214 = sub i32 %3213, 1
  %3215 = zext i32 %3214 to i64
  store i64 %3215, i64* %RDX.i403, align 8
  %3216 = icmp ult i32 %3213, 1
  %3217 = zext i1 %3216 to i8
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3217, i8* %3218, align 1
  %3219 = and i32 %3214, 255
  %3220 = call i32 @llvm.ctpop.i32(i32 %3219)
  %3221 = trunc i32 %3220 to i8
  %3222 = and i8 %3221, 1
  %3223 = xor i8 %3222, 1
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3223, i8* %3224, align 1
  %3225 = xor i64 1, %3210
  %3226 = trunc i64 %3225 to i32
  %3227 = xor i32 %3226, %3214
  %3228 = lshr i32 %3227, 4
  %3229 = trunc i32 %3228 to i8
  %3230 = and i8 %3229, 1
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3230, i8* %3231, align 1
  %3232 = icmp eq i32 %3214, 0
  %3233 = zext i1 %3232 to i8
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3233, i8* %3234, align 1
  %3235 = lshr i32 %3214, 31
  %3236 = trunc i32 %3235 to i8
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3236, i8* %3237, align 1
  %3238 = lshr i32 %3213, 31
  %3239 = xor i32 %3235, %3238
  %3240 = add i32 %3239, %3238
  %3241 = icmp eq i32 %3240, 2
  %3242 = zext i1 %3241 to i8
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3242, i8* %3243, align 1
  store %struct.Memory* %loadMem_48a2c2, %struct.Memory** %MEMORY
  %loadMem_48a2c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3245 = getelementptr inbounds %struct.GPR, %struct.GPR* %3244, i32 0, i32 33
  %3246 = getelementptr inbounds %struct.Reg, %struct.Reg* %3245, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %3246 to i64*
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3248 = getelementptr inbounds %struct.GPR, %struct.GPR* %3247, i32 0, i32 7
  %3249 = getelementptr inbounds %struct.Reg, %struct.Reg* %3248, i32 0, i32 0
  %RDX.i401 = bitcast %union.anon* %3249 to i64*
  %3250 = load i64, i64* %RDX.i401
  %3251 = load i64, i64* %PC.i400
  %3252 = add i64 %3251, 2
  store i64 %3252, i64* %PC.i400
  %3253 = trunc i64 %3250 to i32
  %3254 = shl i32 %3253, 1
  %3255 = icmp slt i32 %3253, 0
  %3256 = icmp slt i32 %3254, 0
  %3257 = xor i1 %3255, %3256
  %3258 = zext i32 %3254 to i64
  store i64 %3258, i64* %RDX.i401, align 8
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3260 = zext i1 %3255 to i8
  store i8 %3260, i8* %3259, align 1
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3262 = and i32 %3254, 254
  %3263 = call i32 @llvm.ctpop.i32(i32 %3262)
  %3264 = trunc i32 %3263 to i8
  %3265 = and i8 %3264, 1
  %3266 = xor i8 %3265, 1
  store i8 %3266, i8* %3261, align 1
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3267, align 1
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3269 = icmp eq i32 %3254, 0
  %3270 = zext i1 %3269 to i8
  store i8 %3270, i8* %3268, align 1
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3272 = lshr i32 %3254, 31
  %3273 = trunc i32 %3272 to i8
  store i8 %3273, i8* %3271, align 1
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3275 = zext i1 %3257 to i8
  store i8 %3275, i8* %3274, align 1
  store %struct.Memory* %loadMem_48a2c5, %struct.Memory** %MEMORY
  %loadMem_48a2c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3277 = getelementptr inbounds %struct.GPR, %struct.GPR* %3276, i32 0, i32 33
  %3278 = getelementptr inbounds %struct.Reg, %struct.Reg* %3277, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %3278 to i64*
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3280 = getelementptr inbounds %struct.GPR, %struct.GPR* %3279, i32 0, i32 5
  %3281 = getelementptr inbounds %struct.Reg, %struct.Reg* %3280, i32 0, i32 0
  %ECX.i398 = bitcast %union.anon* %3281 to i32*
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3283 = getelementptr inbounds %struct.GPR, %struct.GPR* %3282, i32 0, i32 7
  %3284 = getelementptr inbounds %struct.Reg, %struct.Reg* %3283, i32 0, i32 0
  %EDX.i399 = bitcast %union.anon* %3284 to i32*
  %3285 = load i32, i32* %ECX.i398
  %3286 = zext i32 %3285 to i64
  %3287 = load i32, i32* %EDX.i399
  %3288 = zext i32 %3287 to i64
  %3289 = load i64, i64* %PC.i397
  %3290 = add i64 %3289, 2
  store i64 %3290, i64* %PC.i397
  %3291 = sub i32 %3285, %3287
  %3292 = icmp ult i32 %3285, %3287
  %3293 = zext i1 %3292 to i8
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3293, i8* %3294, align 1
  %3295 = and i32 %3291, 255
  %3296 = call i32 @llvm.ctpop.i32(i32 %3295)
  %3297 = trunc i32 %3296 to i8
  %3298 = and i8 %3297, 1
  %3299 = xor i8 %3298, 1
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3299, i8* %3300, align 1
  %3301 = xor i64 %3288, %3286
  %3302 = trunc i64 %3301 to i32
  %3303 = xor i32 %3302, %3291
  %3304 = lshr i32 %3303, 4
  %3305 = trunc i32 %3304 to i8
  %3306 = and i8 %3305, 1
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3306, i8* %3307, align 1
  %3308 = icmp eq i32 %3291, 0
  %3309 = zext i1 %3308 to i8
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3309, i8* %3310, align 1
  %3311 = lshr i32 %3291, 31
  %3312 = trunc i32 %3311 to i8
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3312, i8* %3313, align 1
  %3314 = lshr i32 %3285, 31
  %3315 = lshr i32 %3287, 31
  %3316 = xor i32 %3315, %3314
  %3317 = xor i32 %3311, %3314
  %3318 = add i32 %3317, %3316
  %3319 = icmp eq i32 %3318, 2
  %3320 = zext i1 %3319 to i8
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3320, i8* %3321, align 1
  store %struct.Memory* %loadMem_48a2c8, %struct.Memory** %MEMORY
  %loadMem_48a2ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3323 = getelementptr inbounds %struct.GPR, %struct.GPR* %3322, i32 0, i32 33
  %3324 = getelementptr inbounds %struct.Reg, %struct.Reg* %3323, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %3324 to i64*
  %3325 = load i64, i64* %PC.i396
  %3326 = add i64 %3325, 11
  %3327 = load i64, i64* %PC.i396
  %3328 = add i64 %3327, 6
  %3329 = load i64, i64* %PC.i396
  %3330 = add i64 %3329, 6
  store i64 %3330, i64* %PC.i396
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3332 = load i8, i8* %3331, align 1
  %3333 = icmp ne i8 %3332, 0
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3335 = load i8, i8* %3334, align 1
  %3336 = icmp ne i8 %3335, 0
  %3337 = xor i1 %3333, %3336
  %3338 = xor i1 %3337, true
  %3339 = zext i1 %3338 to i8
  store i8 %3339, i8* %BRANCH_TAKEN, align 1
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3341 = select i1 %3337, i64 %3328, i64 %3326
  store i64 %3341, i64* %3340, align 8
  store %struct.Memory* %loadMem_48a2ca, %struct.Memory** %MEMORY
  %loadBr_48a2ca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a2ca = icmp eq i8 %loadBr_48a2ca, 1
  br i1 %cmpBr_48a2ca, label %block_.L_48a2d5, label %block_48a2d0

block_48a2d0:                                     ; preds = %block_48a2b0
  %loadMem_48a2d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3343 = getelementptr inbounds %struct.GPR, %struct.GPR* %3342, i32 0, i32 33
  %3344 = getelementptr inbounds %struct.Reg, %struct.Reg* %3343, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %3344 to i64*
  %3345 = load i64, i64* %PC.i395
  %3346 = add i64 %3345, 45
  %3347 = load i64, i64* %PC.i395
  %3348 = add i64 %3347, 5
  store i64 %3348, i64* %PC.i395
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3346, i64* %3349, align 8
  store %struct.Memory* %loadMem_48a2d0, %struct.Memory** %MEMORY
  br label %block_.L_48a2fd

block_.L_48a2d5:                                  ; preds = %block_48a2b0
  %loadMem_48a2d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3351 = getelementptr inbounds %struct.GPR, %struct.GPR* %3350, i32 0, i32 33
  %3352 = getelementptr inbounds %struct.Reg, %struct.Reg* %3351, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %3352 to i64*
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3354 = getelementptr inbounds %struct.GPR, %struct.GPR* %3353, i32 0, i32 11
  %3355 = getelementptr inbounds %struct.Reg, %struct.Reg* %3354, i32 0, i32 0
  %RDI.i394 = bitcast %union.anon* %3355 to i64*
  %3356 = load i64, i64* %PC.i393
  %3357 = add i64 %3356, 10
  store i64 %3357, i64* %PC.i393
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI.i394, align 8
  store %struct.Memory* %loadMem_48a2d5, %struct.Memory** %MEMORY
  %loadMem_48a2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3359 = getelementptr inbounds %struct.GPR, %struct.GPR* %3358, i32 0, i32 33
  %3360 = getelementptr inbounds %struct.Reg, %struct.Reg* %3359, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %3360 to i64*
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3362 = getelementptr inbounds %struct.GPR, %struct.GPR* %3361, i32 0, i32 9
  %3363 = getelementptr inbounds %struct.Reg, %struct.Reg* %3362, i32 0, i32 0
  %RSI.i392 = bitcast %union.anon* %3363 to i64*
  %3364 = load i64, i64* %PC.i391
  %3365 = add i64 %3364, 5
  store i64 %3365, i64* %PC.i391
  store i64 636, i64* %RSI.i392, align 8
  store %struct.Memory* %loadMem_48a2df, %struct.Memory** %MEMORY
  %loadMem_48a2e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 33
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %3368 to i64*
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 7
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %RDX.i390 = bitcast %union.anon* %3371 to i64*
  %3372 = load i64, i64* %PC.i389
  %3373 = add i64 %3372, 10
  store i64 %3373, i64* %PC.i389
  store i64 ptrtoint (%G__0x5832cb_type* @G__0x5832cb to i64), i64* %RDX.i390, align 8
  store %struct.Memory* %loadMem_48a2e4, %struct.Memory** %MEMORY
  %loadMem_48a2ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3375 = getelementptr inbounds %struct.GPR, %struct.GPR* %3374, i32 0, i32 33
  %3376 = getelementptr inbounds %struct.Reg, %struct.Reg* %3375, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %3376 to i64*
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3378 = getelementptr inbounds %struct.GPR, %struct.GPR* %3377, i32 0, i32 1
  %3379 = getelementptr inbounds %struct.Reg, %struct.Reg* %3378, i32 0, i32 0
  %RAX.i388 = bitcast %union.anon* %3379 to i64*
  %3380 = load i64, i64* %PC.i387
  %3381 = add i64 %3380, 5
  store i64 %3381, i64* %PC.i387
  store i64 4294967295, i64* %RAX.i388, align 8
  store %struct.Memory* %loadMem_48a2ee, %struct.Memory** %MEMORY
  %loadMem_48a2f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3383 = getelementptr inbounds %struct.GPR, %struct.GPR* %3382, i32 0, i32 33
  %3384 = getelementptr inbounds %struct.Reg, %struct.Reg* %3383, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %3384 to i64*
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3386 = getelementptr inbounds %struct.GPR, %struct.GPR* %3385, i32 0, i32 1
  %3387 = getelementptr inbounds %struct.Reg, %struct.Reg* %3386, i32 0, i32 0
  %EAX.i385 = bitcast %union.anon* %3387 to i32*
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3389 = getelementptr inbounds %struct.GPR, %struct.GPR* %3388, i32 0, i32 5
  %3390 = getelementptr inbounds %struct.Reg, %struct.Reg* %3389, i32 0, i32 0
  %RCX.i386 = bitcast %union.anon* %3390 to i64*
  %3391 = load i32, i32* %EAX.i385
  %3392 = zext i32 %3391 to i64
  %3393 = load i64, i64* %PC.i384
  %3394 = add i64 %3393, 2
  store i64 %3394, i64* %PC.i384
  %3395 = and i64 %3392, 4294967295
  store i64 %3395, i64* %RCX.i386, align 8
  store %struct.Memory* %loadMem_48a2f3, %struct.Memory** %MEMORY
  %loadMem_48a2f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 33
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %3398 to i64*
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 1
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %EAX.i383 = bitcast %union.anon* %3401 to i32*
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 17
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %3404 to i32*
  %3405 = bitcast i32* %R8D.i to i64*
  %3406 = load i32, i32* %EAX.i383
  %3407 = zext i32 %3406 to i64
  %3408 = load i64, i64* %PC.i382
  %3409 = add i64 %3408, 3
  store i64 %3409, i64* %PC.i382
  %3410 = and i64 %3407, 4294967295
  store i64 %3410, i64* %3405, align 8
  store %struct.Memory* %loadMem_48a2f5, %struct.Memory** %MEMORY
  %loadMem1_48a2f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 33
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %3413 to i64*
  %3414 = load i64, i64* %PC.i381
  %3415 = add i64 %3414, -229992
  %3416 = load i64, i64* %PC.i381
  %3417 = add i64 %3416, 5
  %3418 = load i64, i64* %PC.i381
  %3419 = add i64 %3418, 5
  store i64 %3419, i64* %PC.i381
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3421 = load i64, i64* %3420, align 8
  %3422 = add i64 %3421, -8
  %3423 = inttoptr i64 %3422 to i64*
  store i64 %3417, i64* %3423
  store i64 %3422, i64* %3420, align 8
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3415, i64* %3424, align 8
  store %struct.Memory* %loadMem1_48a2f8, %struct.Memory** %MEMORY
  %loadMem2_48a2f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48a2f8 = load i64, i64* %3
  %call2_48a2f8 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_48a2f8, %struct.Memory* %loadMem2_48a2f8)
  store %struct.Memory* %call2_48a2f8, %struct.Memory** %MEMORY
  br label %block_.L_48a2fd

block_.L_48a2fd:                                  ; preds = %block_.L_48a2d5, %block_48a2d0
  %loadMem_48a2fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3426 = getelementptr inbounds %struct.GPR, %struct.GPR* %3425, i32 0, i32 33
  %3427 = getelementptr inbounds %struct.Reg, %struct.Reg* %3426, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %3427 to i64*
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3429 = getelementptr inbounds %struct.GPR, %struct.GPR* %3428, i32 0, i32 1
  %3430 = getelementptr inbounds %struct.Reg, %struct.Reg* %3429, i32 0, i32 0
  %RAX.i380 = bitcast %union.anon* %3430 to i64*
  %3431 = load i64, i64* %PC.i379
  %3432 = add i64 %3431, 10
  store i64 %3432, i64* %PC.i379
  store i64 ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64), i64* %RAX.i380, align 8
  store %struct.Memory* %loadMem_48a2fd, %struct.Memory** %MEMORY
  %loadMem_48a307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3434 = getelementptr inbounds %struct.GPR, %struct.GPR* %3433, i32 0, i32 33
  %3435 = getelementptr inbounds %struct.Reg, %struct.Reg* %3434, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %3435 to i64*
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3437 = getelementptr inbounds %struct.GPR, %struct.GPR* %3436, i32 0, i32 5
  %3438 = getelementptr inbounds %struct.Reg, %struct.Reg* %3437, i32 0, i32 0
  %RCX.i377 = bitcast %union.anon* %3438 to i64*
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3440 = getelementptr inbounds %struct.GPR, %struct.GPR* %3439, i32 0, i32 15
  %3441 = getelementptr inbounds %struct.Reg, %struct.Reg* %3440, i32 0, i32 0
  %RBP.i378 = bitcast %union.anon* %3441 to i64*
  %3442 = load i64, i64* %RBP.i378
  %3443 = sub i64 %3442, 3256
  %3444 = load i64, i64* %PC.i376
  %3445 = add i64 %3444, 7
  store i64 %3445, i64* %PC.i376
  %3446 = inttoptr i64 %3443 to i32*
  %3447 = load i32, i32* %3446
  %3448 = sext i32 %3447 to i64
  store i64 %3448, i64* %RCX.i377, align 8
  store %struct.Memory* %loadMem_48a307, %struct.Memory** %MEMORY
  %loadMem_48a30e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 33
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %3451 to i64*
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3453 = getelementptr inbounds %struct.GPR, %struct.GPR* %3452, i32 0, i32 5
  %3454 = getelementptr inbounds %struct.Reg, %struct.Reg* %3453, i32 0, i32 0
  %RCX.i375 = bitcast %union.anon* %3454 to i64*
  %3455 = load i64, i64* %RCX.i375
  %3456 = load i64, i64* %PC.i374
  %3457 = add i64 %3456, 7
  store i64 %3457, i64* %PC.i374
  %3458 = sext i64 %3455 to i128
  %3459 = and i128 %3458, -18446744073709551616
  %3460 = zext i64 %3455 to i128
  %3461 = or i128 %3459, %3460
  %3462 = mul i128 144, %3461
  %3463 = trunc i128 %3462 to i64
  store i64 %3463, i64* %RCX.i375, align 8
  %3464 = sext i64 %3463 to i128
  %3465 = icmp ne i128 %3464, %3462
  %3466 = zext i1 %3465 to i8
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3466, i8* %3467, align 1
  %3468 = trunc i128 %3462 to i32
  %3469 = and i32 %3468, 255
  %3470 = call i32 @llvm.ctpop.i32(i32 %3469)
  %3471 = trunc i32 %3470 to i8
  %3472 = and i8 %3471, 1
  %3473 = xor i8 %3472, 1
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3473, i8* %3474, align 1
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3475, align 1
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3476, align 1
  %3477 = lshr i64 %3463, 63
  %3478 = trunc i64 %3477 to i8
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3478, i8* %3479, align 1
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3466, i8* %3480, align 1
  store %struct.Memory* %loadMem_48a30e, %struct.Memory** %MEMORY
  %loadMem_48a315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 33
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %3483 to i64*
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3485 = getelementptr inbounds %struct.GPR, %struct.GPR* %3484, i32 0, i32 1
  %3486 = getelementptr inbounds %struct.Reg, %struct.Reg* %3485, i32 0, i32 0
  %RAX.i372 = bitcast %union.anon* %3486 to i64*
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3488 = getelementptr inbounds %struct.GPR, %struct.GPR* %3487, i32 0, i32 7
  %3489 = getelementptr inbounds %struct.Reg, %struct.Reg* %3488, i32 0, i32 0
  %RDX.i373 = bitcast %union.anon* %3489 to i64*
  %3490 = load i64, i64* %RAX.i372
  %3491 = load i64, i64* %PC.i371
  %3492 = add i64 %3491, 3
  store i64 %3492, i64* %PC.i371
  store i64 %3490, i64* %RDX.i373, align 8
  store %struct.Memory* %loadMem_48a315, %struct.Memory** %MEMORY
  %loadMem_48a318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 33
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %3495 to i64*
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 5
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %RCX.i369 = bitcast %union.anon* %3498 to i64*
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3500 = getelementptr inbounds %struct.GPR, %struct.GPR* %3499, i32 0, i32 7
  %3501 = getelementptr inbounds %struct.Reg, %struct.Reg* %3500, i32 0, i32 0
  %RDX.i370 = bitcast %union.anon* %3501 to i64*
  %3502 = load i64, i64* %RDX.i370
  %3503 = load i64, i64* %RCX.i369
  %3504 = load i64, i64* %PC.i368
  %3505 = add i64 %3504, 3
  store i64 %3505, i64* %PC.i368
  %3506 = add i64 %3503, %3502
  store i64 %3506, i64* %RDX.i370, align 8
  %3507 = icmp ult i64 %3506, %3502
  %3508 = icmp ult i64 %3506, %3503
  %3509 = or i1 %3507, %3508
  %3510 = zext i1 %3509 to i8
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3510, i8* %3511, align 1
  %3512 = trunc i64 %3506 to i32
  %3513 = and i32 %3512, 255
  %3514 = call i32 @llvm.ctpop.i32(i32 %3513)
  %3515 = trunc i32 %3514 to i8
  %3516 = and i8 %3515, 1
  %3517 = xor i8 %3516, 1
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3517, i8* %3518, align 1
  %3519 = xor i64 %3503, %3502
  %3520 = xor i64 %3519, %3506
  %3521 = lshr i64 %3520, 4
  %3522 = trunc i64 %3521 to i8
  %3523 = and i8 %3522, 1
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3523, i8* %3524, align 1
  %3525 = icmp eq i64 %3506, 0
  %3526 = zext i1 %3525 to i8
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3526, i8* %3527, align 1
  %3528 = lshr i64 %3506, 63
  %3529 = trunc i64 %3528 to i8
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3529, i8* %3530, align 1
  %3531 = lshr i64 %3502, 63
  %3532 = lshr i64 %3503, 63
  %3533 = xor i64 %3528, %3531
  %3534 = xor i64 %3528, %3532
  %3535 = add i64 %3533, %3534
  %3536 = icmp eq i64 %3535, 2
  %3537 = zext i1 %3536 to i8
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3537, i8* %3538, align 1
  store %struct.Memory* %loadMem_48a318, %struct.Memory** %MEMORY
  %loadMem_48a31b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3540 = getelementptr inbounds %struct.GPR, %struct.GPR* %3539, i32 0, i32 33
  %3541 = getelementptr inbounds %struct.Reg, %struct.Reg* %3540, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %3541 to i64*
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3543 = getelementptr inbounds %struct.GPR, %struct.GPR* %3542, i32 0, i32 5
  %3544 = getelementptr inbounds %struct.Reg, %struct.Reg* %3543, i32 0, i32 0
  %RCX.i366 = bitcast %union.anon* %3544 to i64*
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3546 = getelementptr inbounds %struct.GPR, %struct.GPR* %3545, i32 0, i32 15
  %3547 = getelementptr inbounds %struct.Reg, %struct.Reg* %3546, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %3547 to i64*
  %3548 = load i64, i64* %RBP.i367
  %3549 = sub i64 %3548, 3244
  %3550 = load i64, i64* %PC.i365
  %3551 = add i64 %3550, 7
  store i64 %3551, i64* %PC.i365
  %3552 = inttoptr i64 %3549 to i32*
  %3553 = load i32, i32* %3552
  %3554 = sext i32 %3553 to i64
  store i64 %3554, i64* %RCX.i366, align 8
  store %struct.Memory* %loadMem_48a31b, %struct.Memory** %MEMORY
  %loadMem_48a322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3556 = getelementptr inbounds %struct.GPR, %struct.GPR* %3555, i32 0, i32 33
  %3557 = getelementptr inbounds %struct.Reg, %struct.Reg* %3556, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %3557 to i64*
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3559 = getelementptr inbounds %struct.GPR, %struct.GPR* %3558, i32 0, i32 5
  %3560 = getelementptr inbounds %struct.Reg, %struct.Reg* %3559, i32 0, i32 0
  %RCX.i362 = bitcast %union.anon* %3560 to i64*
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3562 = getelementptr inbounds %struct.GPR, %struct.GPR* %3561, i32 0, i32 7
  %3563 = getelementptr inbounds %struct.Reg, %struct.Reg* %3562, i32 0, i32 0
  %RDX.i363 = bitcast %union.anon* %3563 to i64*
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3565 = getelementptr inbounds %struct.GPR, %struct.GPR* %3564, i32 0, i32 9
  %3566 = getelementptr inbounds %struct.Reg, %struct.Reg* %3565, i32 0, i32 0
  %RSI.i364 = bitcast %union.anon* %3566 to i64*
  %3567 = load i64, i64* %RDX.i363
  %3568 = load i64, i64* %RCX.i362
  %3569 = mul i64 %3568, 4
  %3570 = add i64 %3569, %3567
  %3571 = load i64, i64* %PC.i361
  %3572 = add i64 %3571, 3
  store i64 %3572, i64* %PC.i361
  %3573 = inttoptr i64 %3570 to i32*
  %3574 = load i32, i32* %3573
  %3575 = zext i32 %3574 to i64
  store i64 %3575, i64* %RSI.i364, align 8
  store %struct.Memory* %loadMem_48a322, %struct.Memory** %MEMORY
  %loadMem_48a325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3577 = getelementptr inbounds %struct.GPR, %struct.GPR* %3576, i32 0, i32 33
  %3578 = getelementptr inbounds %struct.Reg, %struct.Reg* %3577, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %3578 to i64*
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3580 = getelementptr inbounds %struct.GPR, %struct.GPR* %3579, i32 0, i32 5
  %3581 = getelementptr inbounds %struct.Reg, %struct.Reg* %3580, i32 0, i32 0
  %RCX.i359 = bitcast %union.anon* %3581 to i64*
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3583 = getelementptr inbounds %struct.GPR, %struct.GPR* %3582, i32 0, i32 15
  %3584 = getelementptr inbounds %struct.Reg, %struct.Reg* %3583, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %3584 to i64*
  %3585 = load i64, i64* %RBP.i360
  %3586 = sub i64 %3585, 32
  %3587 = load i64, i64* %PC.i358
  %3588 = add i64 %3587, 4
  store i64 %3588, i64* %PC.i358
  %3589 = inttoptr i64 %3586 to i32*
  %3590 = load i32, i32* %3589
  %3591 = sext i32 %3590 to i64
  store i64 %3591, i64* %RCX.i359, align 8
  store %struct.Memory* %loadMem_48a325, %struct.Memory** %MEMORY
  %loadMem_48a329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3593 = getelementptr inbounds %struct.GPR, %struct.GPR* %3592, i32 0, i32 33
  %3594 = getelementptr inbounds %struct.Reg, %struct.Reg* %3593, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %3594 to i64*
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3596 = getelementptr inbounds %struct.GPR, %struct.GPR* %3595, i32 0, i32 5
  %3597 = getelementptr inbounds %struct.Reg, %struct.Reg* %3596, i32 0, i32 0
  %RCX.i357 = bitcast %union.anon* %3597 to i64*
  %3598 = load i64, i64* %RCX.i357
  %3599 = load i64, i64* %PC.i356
  %3600 = add i64 %3599, 7
  store i64 %3600, i64* %PC.i356
  %3601 = sext i64 %3598 to i128
  %3602 = and i128 %3601, -18446744073709551616
  %3603 = zext i64 %3598 to i128
  %3604 = or i128 %3602, %3603
  %3605 = mul i128 144, %3604
  %3606 = trunc i128 %3605 to i64
  store i64 %3606, i64* %RCX.i357, align 8
  %3607 = sext i64 %3606 to i128
  %3608 = icmp ne i128 %3607, %3605
  %3609 = zext i1 %3608 to i8
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3609, i8* %3610, align 1
  %3611 = trunc i128 %3605 to i32
  %3612 = and i32 %3611, 255
  %3613 = call i32 @llvm.ctpop.i32(i32 %3612)
  %3614 = trunc i32 %3613 to i8
  %3615 = and i8 %3614, 1
  %3616 = xor i8 %3615, 1
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3616, i8* %3617, align 1
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3618, align 1
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3619, align 1
  %3620 = lshr i64 %3606, 63
  %3621 = trunc i64 %3620 to i8
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3621, i8* %3622, align 1
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3609, i8* %3623, align 1
  store %struct.Memory* %loadMem_48a329, %struct.Memory** %MEMORY
  %loadMem_48a330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3625 = getelementptr inbounds %struct.GPR, %struct.GPR* %3624, i32 0, i32 33
  %3626 = getelementptr inbounds %struct.Reg, %struct.Reg* %3625, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %3626 to i64*
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3628 = getelementptr inbounds %struct.GPR, %struct.GPR* %3627, i32 0, i32 1
  %3629 = getelementptr inbounds %struct.Reg, %struct.Reg* %3628, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %3629 to i64*
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3631 = getelementptr inbounds %struct.GPR, %struct.GPR* %3630, i32 0, i32 5
  %3632 = getelementptr inbounds %struct.Reg, %struct.Reg* %3631, i32 0, i32 0
  %RCX.i355 = bitcast %union.anon* %3632 to i64*
  %3633 = load i64, i64* %RAX.i354
  %3634 = load i64, i64* %RCX.i355
  %3635 = load i64, i64* %PC.i353
  %3636 = add i64 %3635, 3
  store i64 %3636, i64* %PC.i353
  %3637 = add i64 %3634, %3633
  store i64 %3637, i64* %RAX.i354, align 8
  %3638 = icmp ult i64 %3637, %3633
  %3639 = icmp ult i64 %3637, %3634
  %3640 = or i1 %3638, %3639
  %3641 = zext i1 %3640 to i8
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3641, i8* %3642, align 1
  %3643 = trunc i64 %3637 to i32
  %3644 = and i32 %3643, 255
  %3645 = call i32 @llvm.ctpop.i32(i32 %3644)
  %3646 = trunc i32 %3645 to i8
  %3647 = and i8 %3646, 1
  %3648 = xor i8 %3647, 1
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3648, i8* %3649, align 1
  %3650 = xor i64 %3634, %3633
  %3651 = xor i64 %3650, %3637
  %3652 = lshr i64 %3651, 4
  %3653 = trunc i64 %3652 to i8
  %3654 = and i8 %3653, 1
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3654, i8* %3655, align 1
  %3656 = icmp eq i64 %3637, 0
  %3657 = zext i1 %3656 to i8
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3657, i8* %3658, align 1
  %3659 = lshr i64 %3637, 63
  %3660 = trunc i64 %3659 to i8
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3660, i8* %3661, align 1
  %3662 = lshr i64 %3633, 63
  %3663 = lshr i64 %3634, 63
  %3664 = xor i64 %3659, %3662
  %3665 = xor i64 %3659, %3663
  %3666 = add i64 %3664, %3665
  %3667 = icmp eq i64 %3666, 2
  %3668 = zext i1 %3667 to i8
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3668, i8* %3669, align 1
  store %struct.Memory* %loadMem_48a330, %struct.Memory** %MEMORY
  %loadMem_48a333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 33
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %3672 to i64*
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 5
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %RCX.i351 = bitcast %union.anon* %3675 to i64*
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3677 = getelementptr inbounds %struct.GPR, %struct.GPR* %3676, i32 0, i32 15
  %3678 = getelementptr inbounds %struct.Reg, %struct.Reg* %3677, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %3678 to i64*
  %3679 = load i64, i64* %RBP.i352
  %3680 = sub i64 %3679, 32
  %3681 = load i64, i64* %PC.i350
  %3682 = add i64 %3681, 4
  store i64 %3682, i64* %PC.i350
  %3683 = inttoptr i64 %3680 to i32*
  %3684 = load i32, i32* %3683
  %3685 = sext i32 %3684 to i64
  store i64 %3685, i64* %RCX.i351, align 8
  store %struct.Memory* %loadMem_48a333, %struct.Memory** %MEMORY
  %loadMem_48a337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3687 = getelementptr inbounds %struct.GPR, %struct.GPR* %3686, i32 0, i32 33
  %3688 = getelementptr inbounds %struct.Reg, %struct.Reg* %3687, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %3688 to i64*
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3690 = getelementptr inbounds %struct.GPR, %struct.GPR* %3689, i32 0, i32 5
  %3691 = getelementptr inbounds %struct.Reg, %struct.Reg* %3690, i32 0, i32 0
  %RCX.i348 = bitcast %union.anon* %3691 to i64*
  %3692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3693 = getelementptr inbounds %struct.GPR, %struct.GPR* %3692, i32 0, i32 15
  %3694 = getelementptr inbounds %struct.Reg, %struct.Reg* %3693, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %3694 to i64*
  %3695 = load i64, i64* %RBP.i349
  %3696 = load i64, i64* %RCX.i348
  %3697 = mul i64 %3696, 4
  %3698 = add i64 %3695, -3232
  %3699 = add i64 %3698, %3697
  %3700 = load i64, i64* %PC.i347
  %3701 = add i64 %3700, 8
  store i64 %3701, i64* %PC.i347
  %3702 = inttoptr i64 %3699 to i32*
  %3703 = load i32, i32* %3702
  %3704 = sext i32 %3703 to i64
  store i64 %3704, i64* %RCX.i348, align 8
  store %struct.Memory* %loadMem_48a337, %struct.Memory** %MEMORY
  %loadMem_48a33f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3706 = getelementptr inbounds %struct.GPR, %struct.GPR* %3705, i32 0, i32 33
  %3707 = getelementptr inbounds %struct.Reg, %struct.Reg* %3706, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %3707 to i64*
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3709 = getelementptr inbounds %struct.GPR, %struct.GPR* %3708, i32 0, i32 9
  %3710 = getelementptr inbounds %struct.Reg, %struct.Reg* %3709, i32 0, i32 0
  %ESI.i344 = bitcast %union.anon* %3710 to i32*
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3712 = getelementptr inbounds %struct.GPR, %struct.GPR* %3711, i32 0, i32 1
  %3713 = getelementptr inbounds %struct.Reg, %struct.Reg* %3712, i32 0, i32 0
  %RAX.i345 = bitcast %union.anon* %3713 to i64*
  %3714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3715 = getelementptr inbounds %struct.GPR, %struct.GPR* %3714, i32 0, i32 5
  %3716 = getelementptr inbounds %struct.Reg, %struct.Reg* %3715, i32 0, i32 0
  %RCX.i346 = bitcast %union.anon* %3716 to i64*
  %3717 = load i64, i64* %RAX.i345
  %3718 = load i64, i64* %RCX.i346
  %3719 = mul i64 %3718, 4
  %3720 = add i64 %3719, %3717
  %3721 = load i32, i32* %ESI.i344
  %3722 = zext i32 %3721 to i64
  %3723 = load i64, i64* %PC.i343
  %3724 = add i64 %3723, 3
  store i64 %3724, i64* %PC.i343
  %3725 = inttoptr i64 %3720 to i32*
  store i32 %3721, i32* %3725
  store %struct.Memory* %loadMem_48a33f, %struct.Memory** %MEMORY
  %loadMem_48a342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3727 = getelementptr inbounds %struct.GPR, %struct.GPR* %3726, i32 0, i32 33
  %3728 = getelementptr inbounds %struct.Reg, %struct.Reg* %3727, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %3728 to i64*
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3730 = getelementptr inbounds %struct.GPR, %struct.GPR* %3729, i32 0, i32 1
  %3731 = getelementptr inbounds %struct.Reg, %struct.Reg* %3730, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %3731 to i64*
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3733 = getelementptr inbounds %struct.GPR, %struct.GPR* %3732, i32 0, i32 15
  %3734 = getelementptr inbounds %struct.Reg, %struct.Reg* %3733, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %3734 to i64*
  %3735 = load i64, i64* %RBP.i342
  %3736 = sub i64 %3735, 32
  %3737 = load i64, i64* %PC.i340
  %3738 = add i64 %3737, 4
  store i64 %3738, i64* %PC.i340
  %3739 = inttoptr i64 %3736 to i32*
  %3740 = load i32, i32* %3739
  %3741 = sext i32 %3740 to i64
  store i64 %3741, i64* %RAX.i341, align 8
  store %struct.Memory* %loadMem_48a342, %struct.Memory** %MEMORY
  %loadMem_48a346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3743 = getelementptr inbounds %struct.GPR, %struct.GPR* %3742, i32 0, i32 33
  %3744 = getelementptr inbounds %struct.Reg, %struct.Reg* %3743, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %3744 to i64*
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3746 = getelementptr inbounds %struct.GPR, %struct.GPR* %3745, i32 0, i32 1
  %3747 = getelementptr inbounds %struct.Reg, %struct.Reg* %3746, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %3747 to i64*
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3749 = getelementptr inbounds %struct.GPR, %struct.GPR* %3748, i32 0, i32 9
  %3750 = getelementptr inbounds %struct.Reg, %struct.Reg* %3749, i32 0, i32 0
  %RSI.i338 = bitcast %union.anon* %3750 to i64*
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3752 = getelementptr inbounds %struct.GPR, %struct.GPR* %3751, i32 0, i32 15
  %3753 = getelementptr inbounds %struct.Reg, %struct.Reg* %3752, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %3753 to i64*
  %3754 = load i64, i64* %RBP.i339
  %3755 = load i64, i64* %RAX.i337
  %3756 = mul i64 %3755, 4
  %3757 = add i64 %3754, -3232
  %3758 = add i64 %3757, %3756
  %3759 = load i64, i64* %PC.i336
  %3760 = add i64 %3759, 7
  store i64 %3760, i64* %PC.i336
  %3761 = inttoptr i64 %3758 to i32*
  %3762 = load i32, i32* %3761
  %3763 = zext i32 %3762 to i64
  store i64 %3763, i64* %RSI.i338, align 8
  store %struct.Memory* %loadMem_48a346, %struct.Memory** %MEMORY
  %loadMem_48a34d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3765 = getelementptr inbounds %struct.GPR, %struct.GPR* %3764, i32 0, i32 33
  %3766 = getelementptr inbounds %struct.Reg, %struct.Reg* %3765, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %3766 to i64*
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3768 = getelementptr inbounds %struct.GPR, %struct.GPR* %3767, i32 0, i32 9
  %3769 = getelementptr inbounds %struct.Reg, %struct.Reg* %3768, i32 0, i32 0
  %RSI.i335 = bitcast %union.anon* %3769 to i64*
  %3770 = load i64, i64* %RSI.i335
  %3771 = load i64, i64* %PC.i334
  %3772 = add i64 %3771, 3
  store i64 %3772, i64* %PC.i334
  %3773 = trunc i64 %3770 to i32
  %3774 = add i32 1, %3773
  %3775 = zext i32 %3774 to i64
  store i64 %3775, i64* %RSI.i335, align 8
  %3776 = icmp ult i32 %3774, %3773
  %3777 = icmp ult i32 %3774, 1
  %3778 = or i1 %3776, %3777
  %3779 = zext i1 %3778 to i8
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3779, i8* %3780, align 1
  %3781 = and i32 %3774, 255
  %3782 = call i32 @llvm.ctpop.i32(i32 %3781)
  %3783 = trunc i32 %3782 to i8
  %3784 = and i8 %3783, 1
  %3785 = xor i8 %3784, 1
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3785, i8* %3786, align 1
  %3787 = xor i64 1, %3770
  %3788 = trunc i64 %3787 to i32
  %3789 = xor i32 %3788, %3774
  %3790 = lshr i32 %3789, 4
  %3791 = trunc i32 %3790 to i8
  %3792 = and i8 %3791, 1
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3792, i8* %3793, align 1
  %3794 = icmp eq i32 %3774, 0
  %3795 = zext i1 %3794 to i8
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3795, i8* %3796, align 1
  %3797 = lshr i32 %3774, 31
  %3798 = trunc i32 %3797 to i8
  %3799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3798, i8* %3799, align 1
  %3800 = lshr i32 %3773, 31
  %3801 = xor i32 %3797, %3800
  %3802 = add i32 %3801, %3797
  %3803 = icmp eq i32 %3802, 2
  %3804 = zext i1 %3803 to i8
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3804, i8* %3805, align 1
  store %struct.Memory* %loadMem_48a34d, %struct.Memory** %MEMORY
  %loadMem_48a350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3807 = getelementptr inbounds %struct.GPR, %struct.GPR* %3806, i32 0, i32 33
  %3808 = getelementptr inbounds %struct.Reg, %struct.Reg* %3807, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %3808 to i64*
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3810 = getelementptr inbounds %struct.GPR, %struct.GPR* %3809, i32 0, i32 9
  %3811 = getelementptr inbounds %struct.Reg, %struct.Reg* %3810, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %3811 to i32*
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3813 = getelementptr inbounds %struct.GPR, %struct.GPR* %3812, i32 0, i32 1
  %3814 = getelementptr inbounds %struct.Reg, %struct.Reg* %3813, i32 0, i32 0
  %RAX.i332 = bitcast %union.anon* %3814 to i64*
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3816 = getelementptr inbounds %struct.GPR, %struct.GPR* %3815, i32 0, i32 15
  %3817 = getelementptr inbounds %struct.Reg, %struct.Reg* %3816, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %3817 to i64*
  %3818 = load i64, i64* %RBP.i333
  %3819 = load i64, i64* %RAX.i332
  %3820 = mul i64 %3819, 4
  %3821 = add i64 %3818, -3232
  %3822 = add i64 %3821, %3820
  %3823 = load i32, i32* %ESI.i
  %3824 = zext i32 %3823 to i64
  %3825 = load i64, i64* %PC.i331
  %3826 = add i64 %3825, 7
  store i64 %3826, i64* %PC.i331
  %3827 = inttoptr i64 %3822 to i32*
  store i32 %3823, i32* %3827
  store %struct.Memory* %loadMem_48a350, %struct.Memory** %MEMORY
  br label %block_.L_48a357

block_.L_48a357:                                  ; preds = %block_.L_48a2fd, %block_.L_48a2a3
  %loadMem_48a357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3829 = getelementptr inbounds %struct.GPR, %struct.GPR* %3828, i32 0, i32 33
  %3830 = getelementptr inbounds %struct.Reg, %struct.Reg* %3829, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %3830 to i64*
  %3831 = load i64, i64* %PC.i330
  %3832 = add i64 %3831, 5
  %3833 = load i64, i64* %PC.i330
  %3834 = add i64 %3833, 5
  store i64 %3834, i64* %PC.i330
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3832, i64* %3835, align 8
  store %struct.Memory* %loadMem_48a357, %struct.Memory** %MEMORY
  br label %block_.L_48a35c

block_.L_48a35c:                                  ; preds = %block_.L_48a357
  %loadMem_48a35c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 33
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %3838 to i64*
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3840 = getelementptr inbounds %struct.GPR, %struct.GPR* %3839, i32 0, i32 1
  %3841 = getelementptr inbounds %struct.Reg, %struct.Reg* %3840, i32 0, i32 0
  %RAX.i328 = bitcast %union.anon* %3841 to i64*
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3843 = getelementptr inbounds %struct.GPR, %struct.GPR* %3842, i32 0, i32 15
  %3844 = getelementptr inbounds %struct.Reg, %struct.Reg* %3843, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %3844 to i64*
  %3845 = load i64, i64* %RBP.i329
  %3846 = sub i64 %3845, 3244
  %3847 = load i64, i64* %PC.i327
  %3848 = add i64 %3847, 6
  store i64 %3848, i64* %PC.i327
  %3849 = inttoptr i64 %3846 to i32*
  %3850 = load i32, i32* %3849
  %3851 = zext i32 %3850 to i64
  store i64 %3851, i64* %RAX.i328, align 8
  store %struct.Memory* %loadMem_48a35c, %struct.Memory** %MEMORY
  %loadMem_48a362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3853 = getelementptr inbounds %struct.GPR, %struct.GPR* %3852, i32 0, i32 33
  %3854 = getelementptr inbounds %struct.Reg, %struct.Reg* %3853, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %3854 to i64*
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3856 = getelementptr inbounds %struct.GPR, %struct.GPR* %3855, i32 0, i32 1
  %3857 = getelementptr inbounds %struct.Reg, %struct.Reg* %3856, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %3857 to i64*
  %3858 = load i64, i64* %RAX.i326
  %3859 = load i64, i64* %PC.i325
  %3860 = add i64 %3859, 3
  store i64 %3860, i64* %PC.i325
  %3861 = trunc i64 %3858 to i32
  %3862 = add i32 1, %3861
  %3863 = zext i32 %3862 to i64
  store i64 %3863, i64* %RAX.i326, align 8
  %3864 = icmp ult i32 %3862, %3861
  %3865 = icmp ult i32 %3862, 1
  %3866 = or i1 %3864, %3865
  %3867 = zext i1 %3866 to i8
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3867, i8* %3868, align 1
  %3869 = and i32 %3862, 255
  %3870 = call i32 @llvm.ctpop.i32(i32 %3869)
  %3871 = trunc i32 %3870 to i8
  %3872 = and i8 %3871, 1
  %3873 = xor i8 %3872, 1
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3873, i8* %3874, align 1
  %3875 = xor i64 1, %3858
  %3876 = trunc i64 %3875 to i32
  %3877 = xor i32 %3876, %3862
  %3878 = lshr i32 %3877, 4
  %3879 = trunc i32 %3878 to i8
  %3880 = and i8 %3879, 1
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3880, i8* %3881, align 1
  %3882 = icmp eq i32 %3862, 0
  %3883 = zext i1 %3882 to i8
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3883, i8* %3884, align 1
  %3885 = lshr i32 %3862, 31
  %3886 = trunc i32 %3885 to i8
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3886, i8* %3887, align 1
  %3888 = lshr i32 %3861, 31
  %3889 = xor i32 %3885, %3888
  %3890 = add i32 %3889, %3885
  %3891 = icmp eq i32 %3890, 2
  %3892 = zext i1 %3891 to i8
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3892, i8* %3893, align 1
  store %struct.Memory* %loadMem_48a362, %struct.Memory** %MEMORY
  %loadMem_48a365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3895 = getelementptr inbounds %struct.GPR, %struct.GPR* %3894, i32 0, i32 33
  %3896 = getelementptr inbounds %struct.Reg, %struct.Reg* %3895, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %3896 to i64*
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3898 = getelementptr inbounds %struct.GPR, %struct.GPR* %3897, i32 0, i32 1
  %3899 = getelementptr inbounds %struct.Reg, %struct.Reg* %3898, i32 0, i32 0
  %EAX.i323 = bitcast %union.anon* %3899 to i32*
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3901 = getelementptr inbounds %struct.GPR, %struct.GPR* %3900, i32 0, i32 15
  %3902 = getelementptr inbounds %struct.Reg, %struct.Reg* %3901, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %3902 to i64*
  %3903 = load i64, i64* %RBP.i324
  %3904 = sub i64 %3903, 3244
  %3905 = load i32, i32* %EAX.i323
  %3906 = zext i32 %3905 to i64
  %3907 = load i64, i64* %PC.i322
  %3908 = add i64 %3907, 6
  store i64 %3908, i64* %PC.i322
  %3909 = inttoptr i64 %3904 to i32*
  store i32 %3905, i32* %3909
  store %struct.Memory* %loadMem_48a365, %struct.Memory** %MEMORY
  %loadMem_48a36b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3911 = getelementptr inbounds %struct.GPR, %struct.GPR* %3910, i32 0, i32 33
  %3912 = getelementptr inbounds %struct.Reg, %struct.Reg* %3911, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %3912 to i64*
  %3913 = load i64, i64* %PC.i321
  %3914 = add i64 %3913, -379
  %3915 = load i64, i64* %PC.i321
  %3916 = add i64 %3915, 5
  store i64 %3916, i64* %PC.i321
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3914, i64* %3917, align 8
  store %struct.Memory* %loadMem_48a36b, %struct.Memory** %MEMORY
  br label %block_.L_48a1f0

block_.L_48a370:                                  ; preds = %block_.L_48a1f0
  %loadMem_48a370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3919 = getelementptr inbounds %struct.GPR, %struct.GPR* %3918, i32 0, i32 33
  %3920 = getelementptr inbounds %struct.Reg, %struct.Reg* %3919, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %3920 to i64*
  %3921 = load i64, i64* %PC.i320
  %3922 = add i64 %3921, 5
  %3923 = load i64, i64* %PC.i320
  %3924 = add i64 %3923, 5
  store i64 %3924, i64* %PC.i320
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3922, i64* %3925, align 8
  store %struct.Memory* %loadMem_48a370, %struct.Memory** %MEMORY
  br label %block_.L_48a375

block_.L_48a375:                                  ; preds = %block_.L_48a370, %block_48a1ac, %block_48a17d
  %loadMem_48a375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 33
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %3928 to i64*
  %3929 = load i64, i64* %PC.i319
  %3930 = add i64 %3929, 5
  %3931 = load i64, i64* %PC.i319
  %3932 = add i64 %3931, 5
  store i64 %3932, i64* %PC.i319
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3930, i64* %3933, align 8
  store %struct.Memory* %loadMem_48a375, %struct.Memory** %MEMORY
  br label %block_.L_48a37a

block_.L_48a37a:                                  ; preds = %block_.L_48a375
  %loadMem_48a37a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3935 = getelementptr inbounds %struct.GPR, %struct.GPR* %3934, i32 0, i32 33
  %3936 = getelementptr inbounds %struct.Reg, %struct.Reg* %3935, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %3936 to i64*
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3938 = getelementptr inbounds %struct.GPR, %struct.GPR* %3937, i32 0, i32 1
  %3939 = getelementptr inbounds %struct.Reg, %struct.Reg* %3938, i32 0, i32 0
  %RAX.i317 = bitcast %union.anon* %3939 to i64*
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3941 = getelementptr inbounds %struct.GPR, %struct.GPR* %3940, i32 0, i32 15
  %3942 = getelementptr inbounds %struct.Reg, %struct.Reg* %3941, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %3942 to i64*
  %3943 = load i64, i64* %RBP.i318
  %3944 = sub i64 %3943, 3252
  %3945 = load i64, i64* %PC.i316
  %3946 = add i64 %3945, 6
  store i64 %3946, i64* %PC.i316
  %3947 = inttoptr i64 %3944 to i32*
  %3948 = load i32, i32* %3947
  %3949 = zext i32 %3948 to i64
  store i64 %3949, i64* %RAX.i317, align 8
  store %struct.Memory* %loadMem_48a37a, %struct.Memory** %MEMORY
  %loadMem_48a380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3951 = getelementptr inbounds %struct.GPR, %struct.GPR* %3950, i32 0, i32 33
  %3952 = getelementptr inbounds %struct.Reg, %struct.Reg* %3951, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %3952 to i64*
  %3953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3954 = getelementptr inbounds %struct.GPR, %struct.GPR* %3953, i32 0, i32 1
  %3955 = getelementptr inbounds %struct.Reg, %struct.Reg* %3954, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %3955 to i64*
  %3956 = load i64, i64* %RAX.i315
  %3957 = load i64, i64* %PC.i314
  %3958 = add i64 %3957, 3
  store i64 %3958, i64* %PC.i314
  %3959 = trunc i64 %3956 to i32
  %3960 = add i32 1, %3959
  %3961 = zext i32 %3960 to i64
  store i64 %3961, i64* %RAX.i315, align 8
  %3962 = icmp ult i32 %3960, %3959
  %3963 = icmp ult i32 %3960, 1
  %3964 = or i1 %3962, %3963
  %3965 = zext i1 %3964 to i8
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3965, i8* %3966, align 1
  %3967 = and i32 %3960, 255
  %3968 = call i32 @llvm.ctpop.i32(i32 %3967)
  %3969 = trunc i32 %3968 to i8
  %3970 = and i8 %3969, 1
  %3971 = xor i8 %3970, 1
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3971, i8* %3972, align 1
  %3973 = xor i64 1, %3956
  %3974 = trunc i64 %3973 to i32
  %3975 = xor i32 %3974, %3960
  %3976 = lshr i32 %3975, 4
  %3977 = trunc i32 %3976 to i8
  %3978 = and i8 %3977, 1
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3978, i8* %3979, align 1
  %3980 = icmp eq i32 %3960, 0
  %3981 = zext i1 %3980 to i8
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3981, i8* %3982, align 1
  %3983 = lshr i32 %3960, 31
  %3984 = trunc i32 %3983 to i8
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3984, i8* %3985, align 1
  %3986 = lshr i32 %3959, 31
  %3987 = xor i32 %3983, %3986
  %3988 = add i32 %3987, %3983
  %3989 = icmp eq i32 %3988, 2
  %3990 = zext i1 %3989 to i8
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3990, i8* %3991, align 1
  store %struct.Memory* %loadMem_48a380, %struct.Memory** %MEMORY
  %loadMem_48a383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3993 = getelementptr inbounds %struct.GPR, %struct.GPR* %3992, i32 0, i32 33
  %3994 = getelementptr inbounds %struct.Reg, %struct.Reg* %3993, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %3994 to i64*
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3996 = getelementptr inbounds %struct.GPR, %struct.GPR* %3995, i32 0, i32 1
  %3997 = getelementptr inbounds %struct.Reg, %struct.Reg* %3996, i32 0, i32 0
  %EAX.i312 = bitcast %union.anon* %3997 to i32*
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3999 = getelementptr inbounds %struct.GPR, %struct.GPR* %3998, i32 0, i32 15
  %4000 = getelementptr inbounds %struct.Reg, %struct.Reg* %3999, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %4000 to i64*
  %4001 = load i64, i64* %RBP.i313
  %4002 = sub i64 %4001, 3252
  %4003 = load i32, i32* %EAX.i312
  %4004 = zext i32 %4003 to i64
  %4005 = load i64, i64* %PC.i311
  %4006 = add i64 %4005, 6
  store i64 %4006, i64* %PC.i311
  %4007 = inttoptr i64 %4002 to i32*
  store i32 %4003, i32* %4007
  store %struct.Memory* %loadMem_48a383, %struct.Memory** %MEMORY
  %loadMem_48a389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4009 = getelementptr inbounds %struct.GPR, %struct.GPR* %4008, i32 0, i32 33
  %4010 = getelementptr inbounds %struct.Reg, %struct.Reg* %4009, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %4010 to i64*
  %4011 = load i64, i64* %PC.i310
  %4012 = add i64 %4011, -537
  %4013 = load i64, i64* %PC.i310
  %4014 = add i64 %4013, 5
  store i64 %4014, i64* %PC.i310
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4012, i64* %4015, align 8
  store %struct.Memory* %loadMem_48a389, %struct.Memory** %MEMORY
  br label %block_.L_48a170

block_.L_48a38e:                                  ; preds = %block_.L_48a170
  %loadMem_48a38e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4017 = getelementptr inbounds %struct.GPR, %struct.GPR* %4016, i32 0, i32 33
  %4018 = getelementptr inbounds %struct.Reg, %struct.Reg* %4017, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %4018 to i64*
  %4019 = load i64, i64* %PC.i309
  %4020 = add i64 %4019, 5
  %4021 = load i64, i64* %PC.i309
  %4022 = add i64 %4021, 5
  store i64 %4022, i64* %PC.i309
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4020, i64* %4023, align 8
  store %struct.Memory* %loadMem_48a38e, %struct.Memory** %MEMORY
  br label %block_.L_48a393

block_.L_48a393:                                  ; preds = %block_.L_48a38e, %block_.L_48a161
  %loadMem_48a393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 33
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %4026 to i64*
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4028 = getelementptr inbounds %struct.GPR, %struct.GPR* %4027, i32 0, i32 1
  %4029 = getelementptr inbounds %struct.Reg, %struct.Reg* %4028, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %4029 to i64*
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4031 = getelementptr inbounds %struct.GPR, %struct.GPR* %4030, i32 0, i32 15
  %4032 = getelementptr inbounds %struct.Reg, %struct.Reg* %4031, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %4032 to i64*
  %4033 = load i64, i64* %RBP.i308
  %4034 = sub i64 %4033, 32
  %4035 = load i64, i64* %PC.i306
  %4036 = add i64 %4035, 3
  store i64 %4036, i64* %PC.i306
  %4037 = inttoptr i64 %4034 to i32*
  %4038 = load i32, i32* %4037
  %4039 = zext i32 %4038 to i64
  store i64 %4039, i64* %RAX.i307, align 8
  store %struct.Memory* %loadMem_48a393, %struct.Memory** %MEMORY
  %loadMem_48a396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4041 = getelementptr inbounds %struct.GPR, %struct.GPR* %4040, i32 0, i32 33
  %4042 = getelementptr inbounds %struct.Reg, %struct.Reg* %4041, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %4042 to i64*
  %4043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4044 = getelementptr inbounds %struct.GPR, %struct.GPR* %4043, i32 0, i32 1
  %4045 = getelementptr inbounds %struct.Reg, %struct.Reg* %4044, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %4045 to i64*
  %4046 = load i64, i64* %RAX.i305
  %4047 = load i64, i64* %PC.i304
  %4048 = add i64 %4047, 3
  store i64 %4048, i64* %PC.i304
  %4049 = trunc i64 %4046 to i32
  %4050 = add i32 1, %4049
  %4051 = zext i32 %4050 to i64
  store i64 %4051, i64* %RAX.i305, align 8
  %4052 = icmp ult i32 %4050, %4049
  %4053 = icmp ult i32 %4050, 1
  %4054 = or i1 %4052, %4053
  %4055 = zext i1 %4054 to i8
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4055, i8* %4056, align 1
  %4057 = and i32 %4050, 255
  %4058 = call i32 @llvm.ctpop.i32(i32 %4057)
  %4059 = trunc i32 %4058 to i8
  %4060 = and i8 %4059, 1
  %4061 = xor i8 %4060, 1
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4061, i8* %4062, align 1
  %4063 = xor i64 1, %4046
  %4064 = trunc i64 %4063 to i32
  %4065 = xor i32 %4064, %4050
  %4066 = lshr i32 %4065, 4
  %4067 = trunc i32 %4066 to i8
  %4068 = and i8 %4067, 1
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4068, i8* %4069, align 1
  %4070 = icmp eq i32 %4050, 0
  %4071 = zext i1 %4070 to i8
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4071, i8* %4072, align 1
  %4073 = lshr i32 %4050, 31
  %4074 = trunc i32 %4073 to i8
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4074, i8* %4075, align 1
  %4076 = lshr i32 %4049, 31
  %4077 = xor i32 %4073, %4076
  %4078 = add i32 %4077, %4073
  %4079 = icmp eq i32 %4078, 2
  %4080 = zext i1 %4079 to i8
  %4081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4080, i8* %4081, align 1
  store %struct.Memory* %loadMem_48a396, %struct.Memory** %MEMORY
  %loadMem_48a399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4083 = getelementptr inbounds %struct.GPR, %struct.GPR* %4082, i32 0, i32 33
  %4084 = getelementptr inbounds %struct.Reg, %struct.Reg* %4083, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %4084 to i64*
  %4085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4086 = getelementptr inbounds %struct.GPR, %struct.GPR* %4085, i32 0, i32 1
  %4087 = getelementptr inbounds %struct.Reg, %struct.Reg* %4086, i32 0, i32 0
  %EAX.i302 = bitcast %union.anon* %4087 to i32*
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4089 = getelementptr inbounds %struct.GPR, %struct.GPR* %4088, i32 0, i32 15
  %4090 = getelementptr inbounds %struct.Reg, %struct.Reg* %4089, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %4090 to i64*
  %4091 = load i64, i64* %RBP.i303
  %4092 = sub i64 %4091, 32
  %4093 = load i32, i32* %EAX.i302
  %4094 = zext i32 %4093 to i64
  %4095 = load i64, i64* %PC.i301
  %4096 = add i64 %4095, 3
  store i64 %4096, i64* %PC.i301
  %4097 = inttoptr i64 %4092 to i32*
  store i32 %4093, i32* %4097
  store %struct.Memory* %loadMem_48a399, %struct.Memory** %MEMORY
  %loadMem_48a39c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4099 = getelementptr inbounds %struct.GPR, %struct.GPR* %4098, i32 0, i32 33
  %4100 = getelementptr inbounds %struct.Reg, %struct.Reg* %4099, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %4100 to i64*
  %4101 = load i64, i64* %PC.i300
  %4102 = add i64 %4101, -623
  %4103 = load i64, i64* %PC.i300
  %4104 = add i64 %4103, 5
  store i64 %4104, i64* %PC.i300
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4102, i64* %4105, align 8
  store %struct.Memory* %loadMem_48a39c, %struct.Memory** %MEMORY
  br label %block_.L_48a12d

block_.L_48a3a1:                                  ; preds = %block_.L_48a12d
  %loadMem_48a3a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4107 = getelementptr inbounds %struct.GPR, %struct.GPR* %4106, i32 0, i32 33
  %4108 = getelementptr inbounds %struct.Reg, %struct.Reg* %4107, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %4108 to i64*
  %4109 = load i64, i64* %PC.i299
  %4110 = add i64 %4109, -720
  %4111 = load i64, i64* %PC.i299
  %4112 = add i64 %4111, 5
  store i64 %4112, i64* %PC.i299
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4110, i64* %4113, align 8
  store %struct.Memory* %loadMem_48a3a1, %struct.Memory** %MEMORY
  br label %block_.L_48a0d1

block_.L_48a3a6:                                  ; preds = %block_48a108
  %loadMem_48a3a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4115 = getelementptr inbounds %struct.GPR, %struct.GPR* %4114, i32 0, i32 33
  %4116 = getelementptr inbounds %struct.Reg, %struct.Reg* %4115, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %4116 to i64*
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4118 = getelementptr inbounds %struct.GPR, %struct.GPR* %4117, i32 0, i32 15
  %4119 = getelementptr inbounds %struct.Reg, %struct.Reg* %4118, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %4119 to i64*
  %4120 = load i64, i64* %RBP.i298
  %4121 = sub i64 %4120, 4
  %4122 = load i64, i64* %PC.i297
  %4123 = add i64 %4122, 4
  store i64 %4123, i64* %PC.i297
  %4124 = inttoptr i64 %4121 to i32*
  %4125 = load i32, i32* %4124
  %4126 = sub i32 %4125, 3
  %4127 = icmp ult i32 %4125, 3
  %4128 = zext i1 %4127 to i8
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4128, i8* %4129, align 1
  %4130 = and i32 %4126, 255
  %4131 = call i32 @llvm.ctpop.i32(i32 %4130)
  %4132 = trunc i32 %4131 to i8
  %4133 = and i8 %4132, 1
  %4134 = xor i8 %4133, 1
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4134, i8* %4135, align 1
  %4136 = xor i32 %4125, 3
  %4137 = xor i32 %4136, %4126
  %4138 = lshr i32 %4137, 4
  %4139 = trunc i32 %4138 to i8
  %4140 = and i8 %4139, 1
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4140, i8* %4141, align 1
  %4142 = icmp eq i32 %4126, 0
  %4143 = zext i1 %4142 to i8
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4143, i8* %4144, align 1
  %4145 = lshr i32 %4126, 31
  %4146 = trunc i32 %4145 to i8
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4146, i8* %4147, align 1
  %4148 = lshr i32 %4125, 31
  %4149 = xor i32 %4145, %4148
  %4150 = add i32 %4149, %4148
  %4151 = icmp eq i32 %4150, 2
  %4152 = zext i1 %4151 to i8
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4152, i8* %4153, align 1
  store %struct.Memory* %loadMem_48a3a6, %struct.Memory** %MEMORY
  %loadMem_48a3aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4155 = getelementptr inbounds %struct.GPR, %struct.GPR* %4154, i32 0, i32 33
  %4156 = getelementptr inbounds %struct.Reg, %struct.Reg* %4155, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %4156 to i64*
  %4157 = load i64, i64* %PC.i296
  %4158 = add i64 %4157, 432
  %4159 = load i64, i64* %PC.i296
  %4160 = add i64 %4159, 6
  %4161 = load i64, i64* %PC.i296
  %4162 = add i64 %4161, 6
  store i64 %4162, i64* %PC.i296
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4164 = load i8, i8* %4163, align 1
  %4165 = icmp eq i8 %4164, 0
  %4166 = zext i1 %4165 to i8
  store i8 %4166, i8* %BRANCH_TAKEN, align 1
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4168 = select i1 %4165, i64 %4158, i64 %4160
  store i64 %4168, i64* %4167, align 8
  store %struct.Memory* %loadMem_48a3aa, %struct.Memory** %MEMORY
  %loadBr_48a3aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a3aa = icmp eq i8 %loadBr_48a3aa, 1
  br i1 %cmpBr_48a3aa, label %block_.L_48a55a, label %block_48a3b0

block_48a3b0:                                     ; preds = %block_.L_48a3a6
  %loadMem_48a3b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4170 = getelementptr inbounds %struct.GPR, %struct.GPR* %4169, i32 0, i32 33
  %4171 = getelementptr inbounds %struct.Reg, %struct.Reg* %4170, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %4171 to i64*
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4173 = getelementptr inbounds %struct.GPR, %struct.GPR* %4172, i32 0, i32 15
  %4174 = getelementptr inbounds %struct.Reg, %struct.Reg* %4173, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %4174 to i64*
  %4175 = load i64, i64* %RBP.i295
  %4176 = sub i64 %4175, 32
  %4177 = load i64, i64* %PC.i294
  %4178 = add i64 %4177, 7
  store i64 %4178, i64* %PC.i294
  %4179 = inttoptr i64 %4176 to i32*
  store i32 21, i32* %4179
  store %struct.Memory* %loadMem_48a3b0, %struct.Memory** %MEMORY
  br label %block_.L_48a3b7

block_.L_48a3b7:                                  ; preds = %block_.L_48a4da, %block_48a3b0
  %loadMem_48a3b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4181 = getelementptr inbounds %struct.GPR, %struct.GPR* %4180, i32 0, i32 33
  %4182 = getelementptr inbounds %struct.Reg, %struct.Reg* %4181, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %4182 to i64*
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4184 = getelementptr inbounds %struct.GPR, %struct.GPR* %4183, i32 0, i32 15
  %4185 = getelementptr inbounds %struct.Reg, %struct.Reg* %4184, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %4185 to i64*
  %4186 = load i64, i64* %RBP.i293
  %4187 = sub i64 %4186, 32
  %4188 = load i64, i64* %PC.i292
  %4189 = add i64 %4188, 7
  store i64 %4189, i64* %PC.i292
  %4190 = inttoptr i64 %4187 to i32*
  %4191 = load i32, i32* %4190
  %4192 = sub i32 %4191, 400
  %4193 = icmp ult i32 %4191, 400
  %4194 = zext i1 %4193 to i8
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4194, i8* %4195, align 1
  %4196 = and i32 %4192, 255
  %4197 = call i32 @llvm.ctpop.i32(i32 %4196)
  %4198 = trunc i32 %4197 to i8
  %4199 = and i8 %4198, 1
  %4200 = xor i8 %4199, 1
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4200, i8* %4201, align 1
  %4202 = xor i32 %4191, 400
  %4203 = xor i32 %4202, %4192
  %4204 = lshr i32 %4203, 4
  %4205 = trunc i32 %4204 to i8
  %4206 = and i8 %4205, 1
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4206, i8* %4207, align 1
  %4208 = icmp eq i32 %4192, 0
  %4209 = zext i1 %4208 to i8
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4209, i8* %4210, align 1
  %4211 = lshr i32 %4192, 31
  %4212 = trunc i32 %4211 to i8
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4212, i8* %4213, align 1
  %4214 = lshr i32 %4191, 31
  %4215 = xor i32 %4211, %4214
  %4216 = add i32 %4215, %4214
  %4217 = icmp eq i32 %4216, 2
  %4218 = zext i1 %4217 to i8
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4218, i8* %4219, align 1
  store %struct.Memory* %loadMem_48a3b7, %struct.Memory** %MEMORY
  %loadMem_48a3be = load %struct.Memory*, %struct.Memory** %MEMORY
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4221 = getelementptr inbounds %struct.GPR, %struct.GPR* %4220, i32 0, i32 33
  %4222 = getelementptr inbounds %struct.Reg, %struct.Reg* %4221, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %4222 to i64*
  %4223 = load i64, i64* %PC.i291
  %4224 = add i64 %4223, 298
  %4225 = load i64, i64* %PC.i291
  %4226 = add i64 %4225, 6
  %4227 = load i64, i64* %PC.i291
  %4228 = add i64 %4227, 6
  store i64 %4228, i64* %PC.i291
  %4229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4230 = load i8, i8* %4229, align 1
  %4231 = icmp ne i8 %4230, 0
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4233 = load i8, i8* %4232, align 1
  %4234 = icmp ne i8 %4233, 0
  %4235 = xor i1 %4231, %4234
  %4236 = xor i1 %4235, true
  %4237 = zext i1 %4236 to i8
  store i8 %4237, i8* %BRANCH_TAKEN, align 1
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4239 = select i1 %4235, i64 %4226, i64 %4224
  store i64 %4239, i64* %4238, align 8
  store %struct.Memory* %loadMem_48a3be, %struct.Memory** %MEMORY
  %loadBr_48a3be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a3be = icmp eq i8 %loadBr_48a3be, 1
  br i1 %cmpBr_48a3be, label %block_.L_48a4e8, label %block_48a3c4

block_48a3c4:                                     ; preds = %block_.L_48a3b7
  %loadMem_48a3c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4241 = getelementptr inbounds %struct.GPR, %struct.GPR* %4240, i32 0, i32 33
  %4242 = getelementptr inbounds %struct.Reg, %struct.Reg* %4241, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %4242 to i64*
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4244 = getelementptr inbounds %struct.GPR, %struct.GPR* %4243, i32 0, i32 1
  %4245 = getelementptr inbounds %struct.Reg, %struct.Reg* %4244, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %4245 to i64*
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4247 = getelementptr inbounds %struct.GPR, %struct.GPR* %4246, i32 0, i32 15
  %4248 = getelementptr inbounds %struct.Reg, %struct.Reg* %4247, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %4248 to i64*
  %4249 = load i64, i64* %RBP.i290
  %4250 = sub i64 %4249, 32
  %4251 = load i64, i64* %PC.i288
  %4252 = add i64 %4251, 4
  store i64 %4252, i64* %PC.i288
  %4253 = inttoptr i64 %4250 to i32*
  %4254 = load i32, i32* %4253
  %4255 = sext i32 %4254 to i64
  store i64 %4255, i64* %RAX.i289, align 8
  store %struct.Memory* %loadMem_48a3c4, %struct.Memory** %MEMORY
  %loadMem_48a3c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4257 = getelementptr inbounds %struct.GPR, %struct.GPR* %4256, i32 0, i32 33
  %4258 = getelementptr inbounds %struct.Reg, %struct.Reg* %4257, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %4258 to i64*
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4260 = getelementptr inbounds %struct.GPR, %struct.GPR* %4259, i32 0, i32 1
  %4261 = getelementptr inbounds %struct.Reg, %struct.Reg* %4260, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %4261 to i64*
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4263 = getelementptr inbounds %struct.GPR, %struct.GPR* %4262, i32 0, i32 5
  %4264 = getelementptr inbounds %struct.Reg, %struct.Reg* %4263, i32 0, i32 0
  %RCX.i287 = bitcast %union.anon* %4264 to i64*
  %4265 = load i64, i64* %RAX.i286
  %4266 = add i64 %4265, 12099168
  %4267 = load i64, i64* %PC.i285
  %4268 = add i64 %4267, 8
  store i64 %4268, i64* %PC.i285
  %4269 = inttoptr i64 %4266 to i8*
  %4270 = load i8, i8* %4269
  %4271 = zext i8 %4270 to i64
  store i64 %4271, i64* %RCX.i287, align 8
  store %struct.Memory* %loadMem_48a3c8, %struct.Memory** %MEMORY
  %loadMem_48a3d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4273 = getelementptr inbounds %struct.GPR, %struct.GPR* %4272, i32 0, i32 33
  %4274 = getelementptr inbounds %struct.Reg, %struct.Reg* %4273, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %4274 to i64*
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4276 = getelementptr inbounds %struct.GPR, %struct.GPR* %4275, i32 0, i32 5
  %4277 = getelementptr inbounds %struct.Reg, %struct.Reg* %4276, i32 0, i32 0
  %ECX.i284 = bitcast %union.anon* %4277 to i32*
  %4278 = load i32, i32* %ECX.i284
  %4279 = zext i32 %4278 to i64
  %4280 = load i64, i64* %PC.i283
  %4281 = add i64 %4280, 3
  store i64 %4281, i64* %PC.i283
  %4282 = sub i32 %4278, 3
  %4283 = icmp ult i32 %4278, 3
  %4284 = zext i1 %4283 to i8
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4284, i8* %4285, align 1
  %4286 = and i32 %4282, 255
  %4287 = call i32 @llvm.ctpop.i32(i32 %4286)
  %4288 = trunc i32 %4287 to i8
  %4289 = and i8 %4288, 1
  %4290 = xor i8 %4289, 1
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4290, i8* %4291, align 1
  %4292 = xor i64 3, %4279
  %4293 = trunc i64 %4292 to i32
  %4294 = xor i32 %4293, %4282
  %4295 = lshr i32 %4294, 4
  %4296 = trunc i32 %4295 to i8
  %4297 = and i8 %4296, 1
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4297, i8* %4298, align 1
  %4299 = icmp eq i32 %4282, 0
  %4300 = zext i1 %4299 to i8
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4300, i8* %4301, align 1
  %4302 = lshr i32 %4282, 31
  %4303 = trunc i32 %4302 to i8
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4303, i8* %4304, align 1
  %4305 = lshr i32 %4278, 31
  %4306 = xor i32 %4302, %4305
  %4307 = add i32 %4306, %4305
  %4308 = icmp eq i32 %4307, 2
  %4309 = zext i1 %4308 to i8
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4309, i8* %4310, align 1
  store %struct.Memory* %loadMem_48a3d0, %struct.Memory** %MEMORY
  %loadMem_48a3d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4312 = getelementptr inbounds %struct.GPR, %struct.GPR* %4311, i32 0, i32 33
  %4313 = getelementptr inbounds %struct.Reg, %struct.Reg* %4312, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %4313 to i64*
  %4314 = load i64, i64* %PC.i282
  %4315 = add i64 %4314, 11
  %4316 = load i64, i64* %PC.i282
  %4317 = add i64 %4316, 6
  %4318 = load i64, i64* %PC.i282
  %4319 = add i64 %4318, 6
  store i64 %4319, i64* %PC.i282
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4321 = load i8, i8* %4320, align 1
  %4322 = icmp eq i8 %4321, 0
  %4323 = zext i1 %4322 to i8
  store i8 %4323, i8* %BRANCH_TAKEN, align 1
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4325 = select i1 %4322, i64 %4315, i64 %4317
  store i64 %4325, i64* %4324, align 8
  store %struct.Memory* %loadMem_48a3d3, %struct.Memory** %MEMORY
  %loadBr_48a3d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a3d3 = icmp eq i8 %loadBr_48a3d3, 1
  br i1 %cmpBr_48a3d3, label %block_.L_48a3de, label %block_48a3d9

block_48a3d9:                                     ; preds = %block_48a3c4
  %loadMem_48a3d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4327 = getelementptr inbounds %struct.GPR, %struct.GPR* %4326, i32 0, i32 33
  %4328 = getelementptr inbounds %struct.Reg, %struct.Reg* %4327, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %4328 to i64*
  %4329 = load i64, i64* %PC.i281
  %4330 = add i64 %4329, 257
  %4331 = load i64, i64* %PC.i281
  %4332 = add i64 %4331, 5
  store i64 %4332, i64* %PC.i281
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4330, i64* %4333, align 8
  store %struct.Memory* %loadMem_48a3d9, %struct.Memory** %MEMORY
  br label %block_.L_48a4da

block_.L_48a3de:                                  ; preds = %block_48a3c4
  %loadMem_48a3de = load %struct.Memory*, %struct.Memory** %MEMORY
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4335 = getelementptr inbounds %struct.GPR, %struct.GPR* %4334, i32 0, i32 33
  %4336 = getelementptr inbounds %struct.Reg, %struct.Reg* %4335, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %4336 to i64*
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4338 = getelementptr inbounds %struct.GPR, %struct.GPR* %4337, i32 0, i32 15
  %4339 = getelementptr inbounds %struct.Reg, %struct.Reg* %4338, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %4339 to i64*
  %4340 = load i64, i64* %RBP.i280
  %4341 = sub i64 %4340, 3244
  %4342 = load i64, i64* %PC.i279
  %4343 = add i64 %4342, 10
  store i64 %4343, i64* %PC.i279
  %4344 = inttoptr i64 %4341 to i32*
  store i32 0, i32* %4344
  store %struct.Memory* %loadMem_48a3de, %struct.Memory** %MEMORY
  br label %block_.L_48a3e8

block_.L_48a3e8:                                  ; preds = %block_.L_48a4c1, %block_.L_48a3de
  %loadMem_48a3e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4346 = getelementptr inbounds %struct.GPR, %struct.GPR* %4345, i32 0, i32 33
  %4347 = getelementptr inbounds %struct.Reg, %struct.Reg* %4346, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %4347 to i64*
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4349 = getelementptr inbounds %struct.GPR, %struct.GPR* %4348, i32 0, i32 1
  %4350 = getelementptr inbounds %struct.Reg, %struct.Reg* %4349, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %4350 to i64*
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4352 = getelementptr inbounds %struct.GPR, %struct.GPR* %4351, i32 0, i32 15
  %4353 = getelementptr inbounds %struct.Reg, %struct.Reg* %4352, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %4353 to i64*
  %4354 = load i64, i64* %RBP.i278
  %4355 = sub i64 %4354, 3244
  %4356 = load i64, i64* %PC.i276
  %4357 = add i64 %4356, 6
  store i64 %4357, i64* %PC.i276
  %4358 = inttoptr i64 %4355 to i32*
  %4359 = load i32, i32* %4358
  %4360 = zext i32 %4359 to i64
  store i64 %4360, i64* %RAX.i277, align 8
  store %struct.Memory* %loadMem_48a3e8, %struct.Memory** %MEMORY
  %loadMem_48a3ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4362 = getelementptr inbounds %struct.GPR, %struct.GPR* %4361, i32 0, i32 33
  %4363 = getelementptr inbounds %struct.Reg, %struct.Reg* %4362, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %4363 to i64*
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4365 = getelementptr inbounds %struct.GPR, %struct.GPR* %4364, i32 0, i32 5
  %4366 = getelementptr inbounds %struct.Reg, %struct.Reg* %4365, i32 0, i32 0
  %RCX.i274 = bitcast %union.anon* %4366 to i64*
  %4367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4368 = getelementptr inbounds %struct.GPR, %struct.GPR* %4367, i32 0, i32 15
  %4369 = getelementptr inbounds %struct.Reg, %struct.Reg* %4368, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %4369 to i64*
  %4370 = load i64, i64* %RBP.i275
  %4371 = sub i64 %4370, 32
  %4372 = load i64, i64* %PC.i273
  %4373 = add i64 %4372, 4
  store i64 %4373, i64* %PC.i273
  %4374 = inttoptr i64 %4371 to i32*
  %4375 = load i32, i32* %4374
  %4376 = sext i32 %4375 to i64
  store i64 %4376, i64* %RCX.i274, align 8
  store %struct.Memory* %loadMem_48a3ee, %struct.Memory** %MEMORY
  %loadMem_48a3f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4378 = getelementptr inbounds %struct.GPR, %struct.GPR* %4377, i32 0, i32 33
  %4379 = getelementptr inbounds %struct.Reg, %struct.Reg* %4378, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %4379 to i64*
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4381 = getelementptr inbounds %struct.GPR, %struct.GPR* %4380, i32 0, i32 1
  %4382 = getelementptr inbounds %struct.Reg, %struct.Reg* %4381, i32 0, i32 0
  %EAX.i270 = bitcast %union.anon* %4382 to i32*
  %4383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4384 = getelementptr inbounds %struct.GPR, %struct.GPR* %4383, i32 0, i32 5
  %4385 = getelementptr inbounds %struct.Reg, %struct.Reg* %4384, i32 0, i32 0
  %RCX.i271 = bitcast %union.anon* %4385 to i64*
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4387 = getelementptr inbounds %struct.GPR, %struct.GPR* %4386, i32 0, i32 15
  %4388 = getelementptr inbounds %struct.Reg, %struct.Reg* %4387, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %4388 to i64*
  %4389 = load i32, i32* %EAX.i270
  %4390 = zext i32 %4389 to i64
  %4391 = load i64, i64* %RBP.i272
  %4392 = load i64, i64* %RCX.i271
  %4393 = mul i64 %4392, 4
  %4394 = add i64 %4391, -3232
  %4395 = add i64 %4394, %4393
  %4396 = load i64, i64* %PC.i269
  %4397 = add i64 %4396, 7
  store i64 %4397, i64* %PC.i269
  %4398 = inttoptr i64 %4395 to i32*
  %4399 = load i32, i32* %4398
  %4400 = sub i32 %4389, %4399
  %4401 = icmp ult i32 %4389, %4399
  %4402 = zext i1 %4401 to i8
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4402, i8* %4403, align 1
  %4404 = and i32 %4400, 255
  %4405 = call i32 @llvm.ctpop.i32(i32 %4404)
  %4406 = trunc i32 %4405 to i8
  %4407 = and i8 %4406, 1
  %4408 = xor i8 %4407, 1
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4408, i8* %4409, align 1
  %4410 = xor i32 %4399, %4389
  %4411 = xor i32 %4410, %4400
  %4412 = lshr i32 %4411, 4
  %4413 = trunc i32 %4412 to i8
  %4414 = and i8 %4413, 1
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4414, i8* %4415, align 1
  %4416 = icmp eq i32 %4400, 0
  %4417 = zext i1 %4416 to i8
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4417, i8* %4418, align 1
  %4419 = lshr i32 %4400, 31
  %4420 = trunc i32 %4419 to i8
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4420, i8* %4421, align 1
  %4422 = lshr i32 %4389, 31
  %4423 = lshr i32 %4399, 31
  %4424 = xor i32 %4423, %4422
  %4425 = xor i32 %4419, %4422
  %4426 = add i32 %4425, %4424
  %4427 = icmp eq i32 %4426, 2
  %4428 = zext i1 %4427 to i8
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4428, i8* %4429, align 1
  store %struct.Memory* %loadMem_48a3f2, %struct.Memory** %MEMORY
  %loadMem_48a3f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4431 = getelementptr inbounds %struct.GPR, %struct.GPR* %4430, i32 0, i32 33
  %4432 = getelementptr inbounds %struct.Reg, %struct.Reg* %4431, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %4432 to i64*
  %4433 = load i64, i64* %PC.i268
  %4434 = add i64 %4433, 220
  %4435 = load i64, i64* %PC.i268
  %4436 = add i64 %4435, 6
  %4437 = load i64, i64* %PC.i268
  %4438 = add i64 %4437, 6
  store i64 %4438, i64* %PC.i268
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4440 = load i8, i8* %4439, align 1
  %4441 = icmp ne i8 %4440, 0
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4443 = load i8, i8* %4442, align 1
  %4444 = icmp ne i8 %4443, 0
  %4445 = xor i1 %4441, %4444
  %4446 = xor i1 %4445, true
  %4447 = zext i1 %4446 to i8
  store i8 %4447, i8* %BRANCH_TAKEN, align 1
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4449 = select i1 %4445, i64 %4436, i64 %4434
  store i64 %4449, i64* %4448, align 8
  store %struct.Memory* %loadMem_48a3f9, %struct.Memory** %MEMORY
  %loadBr_48a3f9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a3f9 = icmp eq i8 %loadBr_48a3f9, 1
  br i1 %cmpBr_48a3f9, label %block_.L_48a4d5, label %block_48a3ff

block_48a3ff:                                     ; preds = %block_.L_48a3e8
  %loadMem_48a3ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 33
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %4452 to i64*
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4454 = getelementptr inbounds %struct.GPR, %struct.GPR* %4453, i32 0, i32 1
  %4455 = getelementptr inbounds %struct.Reg, %struct.Reg* %4454, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %4455 to i64*
  %4456 = load i64, i64* %PC.i266
  %4457 = add i64 %4456, 10
  store i64 %4457, i64* %PC.i266
  store i64 ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64), i64* %RAX.i267, align 8
  store %struct.Memory* %loadMem_48a3ff, %struct.Memory** %MEMORY
  %loadMem_48a409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4459 = getelementptr inbounds %struct.GPR, %struct.GPR* %4458, i32 0, i32 33
  %4460 = getelementptr inbounds %struct.Reg, %struct.Reg* %4459, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %4460 to i64*
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4462 = getelementptr inbounds %struct.GPR, %struct.GPR* %4461, i32 0, i32 5
  %4463 = getelementptr inbounds %struct.Reg, %struct.Reg* %4462, i32 0, i32 0
  %RCX.i264 = bitcast %union.anon* %4463 to i64*
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4465 = getelementptr inbounds %struct.GPR, %struct.GPR* %4464, i32 0, i32 15
  %4466 = getelementptr inbounds %struct.Reg, %struct.Reg* %4465, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %4466 to i64*
  %4467 = load i64, i64* %RBP.i265
  %4468 = sub i64 %4467, 32
  %4469 = load i64, i64* %PC.i263
  %4470 = add i64 %4469, 4
  store i64 %4470, i64* %PC.i263
  %4471 = inttoptr i64 %4468 to i32*
  %4472 = load i32, i32* %4471
  %4473 = sext i32 %4472 to i64
  store i64 %4473, i64* %RCX.i264, align 8
  store %struct.Memory* %loadMem_48a409, %struct.Memory** %MEMORY
  %loadMem_48a40d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4475 = getelementptr inbounds %struct.GPR, %struct.GPR* %4474, i32 0, i32 33
  %4476 = getelementptr inbounds %struct.Reg, %struct.Reg* %4475, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %4476 to i64*
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4478 = getelementptr inbounds %struct.GPR, %struct.GPR* %4477, i32 0, i32 5
  %4479 = getelementptr inbounds %struct.Reg, %struct.Reg* %4478, i32 0, i32 0
  %RCX.i262 = bitcast %union.anon* %4479 to i64*
  %4480 = load i64, i64* %RCX.i262
  %4481 = load i64, i64* %PC.i261
  %4482 = add i64 %4481, 7
  store i64 %4482, i64* %PC.i261
  %4483 = sext i64 %4480 to i128
  %4484 = and i128 %4483, -18446744073709551616
  %4485 = zext i64 %4480 to i128
  %4486 = or i128 %4484, %4485
  %4487 = mul i128 144, %4486
  %4488 = trunc i128 %4487 to i64
  store i64 %4488, i64* %RCX.i262, align 8
  %4489 = sext i64 %4488 to i128
  %4490 = icmp ne i128 %4489, %4487
  %4491 = zext i1 %4490 to i8
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4491, i8* %4492, align 1
  %4493 = trunc i128 %4487 to i32
  %4494 = and i32 %4493, 255
  %4495 = call i32 @llvm.ctpop.i32(i32 %4494)
  %4496 = trunc i32 %4495 to i8
  %4497 = and i8 %4496, 1
  %4498 = xor i8 %4497, 1
  %4499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4498, i8* %4499, align 1
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4500, align 1
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4501, align 1
  %4502 = lshr i64 %4488, 63
  %4503 = trunc i64 %4502 to i8
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4503, i8* %4504, align 1
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4491, i8* %4505, align 1
  store %struct.Memory* %loadMem_48a40d, %struct.Memory** %MEMORY
  %loadMem_48a414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4507 = getelementptr inbounds %struct.GPR, %struct.GPR* %4506, i32 0, i32 33
  %4508 = getelementptr inbounds %struct.Reg, %struct.Reg* %4507, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %4508 to i64*
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 1
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %RAX.i259 = bitcast %union.anon* %4511 to i64*
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4513 = getelementptr inbounds %struct.GPR, %struct.GPR* %4512, i32 0, i32 5
  %4514 = getelementptr inbounds %struct.Reg, %struct.Reg* %4513, i32 0, i32 0
  %RCX.i260 = bitcast %union.anon* %4514 to i64*
  %4515 = load i64, i64* %RAX.i259
  %4516 = load i64, i64* %RCX.i260
  %4517 = load i64, i64* %PC.i258
  %4518 = add i64 %4517, 3
  store i64 %4518, i64* %PC.i258
  %4519 = add i64 %4516, %4515
  store i64 %4519, i64* %RAX.i259, align 8
  %4520 = icmp ult i64 %4519, %4515
  %4521 = icmp ult i64 %4519, %4516
  %4522 = or i1 %4520, %4521
  %4523 = zext i1 %4522 to i8
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4523, i8* %4524, align 1
  %4525 = trunc i64 %4519 to i32
  %4526 = and i32 %4525, 255
  %4527 = call i32 @llvm.ctpop.i32(i32 %4526)
  %4528 = trunc i32 %4527 to i8
  %4529 = and i8 %4528, 1
  %4530 = xor i8 %4529, 1
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4530, i8* %4531, align 1
  %4532 = xor i64 %4516, %4515
  %4533 = xor i64 %4532, %4519
  %4534 = lshr i64 %4533, 4
  %4535 = trunc i64 %4534 to i8
  %4536 = and i8 %4535, 1
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4536, i8* %4537, align 1
  %4538 = icmp eq i64 %4519, 0
  %4539 = zext i1 %4538 to i8
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4539, i8* %4540, align 1
  %4541 = lshr i64 %4519, 63
  %4542 = trunc i64 %4541 to i8
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4542, i8* %4543, align 1
  %4544 = lshr i64 %4515, 63
  %4545 = lshr i64 %4516, 63
  %4546 = xor i64 %4541, %4544
  %4547 = xor i64 %4541, %4545
  %4548 = add i64 %4546, %4547
  %4549 = icmp eq i64 %4548, 2
  %4550 = zext i1 %4549 to i8
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4550, i8* %4551, align 1
  store %struct.Memory* %loadMem_48a414, %struct.Memory** %MEMORY
  %loadMem_48a417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4553 = getelementptr inbounds %struct.GPR, %struct.GPR* %4552, i32 0, i32 33
  %4554 = getelementptr inbounds %struct.Reg, %struct.Reg* %4553, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %4554 to i64*
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4556 = getelementptr inbounds %struct.GPR, %struct.GPR* %4555, i32 0, i32 5
  %4557 = getelementptr inbounds %struct.Reg, %struct.Reg* %4556, i32 0, i32 0
  %RCX.i256 = bitcast %union.anon* %4557 to i64*
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4559 = getelementptr inbounds %struct.GPR, %struct.GPR* %4558, i32 0, i32 15
  %4560 = getelementptr inbounds %struct.Reg, %struct.Reg* %4559, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %4560 to i64*
  %4561 = load i64, i64* %RBP.i257
  %4562 = sub i64 %4561, 3244
  %4563 = load i64, i64* %PC.i255
  %4564 = add i64 %4563, 7
  store i64 %4564, i64* %PC.i255
  %4565 = inttoptr i64 %4562 to i32*
  %4566 = load i32, i32* %4565
  %4567 = sext i32 %4566 to i64
  store i64 %4567, i64* %RCX.i256, align 8
  store %struct.Memory* %loadMem_48a417, %struct.Memory** %MEMORY
  %loadMem_48a41e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4569 = getelementptr inbounds %struct.GPR, %struct.GPR* %4568, i32 0, i32 33
  %4570 = getelementptr inbounds %struct.Reg, %struct.Reg* %4569, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %4570 to i64*
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4572 = getelementptr inbounds %struct.GPR, %struct.GPR* %4571, i32 0, i32 1
  %4573 = getelementptr inbounds %struct.Reg, %struct.Reg* %4572, i32 0, i32 0
  %RAX.i252 = bitcast %union.anon* %4573 to i64*
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4575 = getelementptr inbounds %struct.GPR, %struct.GPR* %4574, i32 0, i32 5
  %4576 = getelementptr inbounds %struct.Reg, %struct.Reg* %4575, i32 0, i32 0
  %RCX.i253 = bitcast %union.anon* %4576 to i64*
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4578 = getelementptr inbounds %struct.GPR, %struct.GPR* %4577, i32 0, i32 7
  %4579 = getelementptr inbounds %struct.Reg, %struct.Reg* %4578, i32 0, i32 0
  %RDX.i254 = bitcast %union.anon* %4579 to i64*
  %4580 = load i64, i64* %RAX.i252
  %4581 = load i64, i64* %RCX.i253
  %4582 = mul i64 %4581, 4
  %4583 = add i64 %4582, %4580
  %4584 = load i64, i64* %PC.i251
  %4585 = add i64 %4584, 3
  store i64 %4585, i64* %PC.i251
  %4586 = inttoptr i64 %4583 to i32*
  %4587 = load i32, i32* %4586
  %4588 = zext i32 %4587 to i64
  store i64 %4588, i64* %RDX.i254, align 8
  store %struct.Memory* %loadMem_48a41e, %struct.Memory** %MEMORY
  %loadMem_48a421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4590 = getelementptr inbounds %struct.GPR, %struct.GPR* %4589, i32 0, i32 33
  %4591 = getelementptr inbounds %struct.Reg, %struct.Reg* %4590, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %4591 to i64*
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4593 = getelementptr inbounds %struct.GPR, %struct.GPR* %4592, i32 0, i32 7
  %4594 = getelementptr inbounds %struct.Reg, %struct.Reg* %4593, i32 0, i32 0
  %EDX.i249 = bitcast %union.anon* %4594 to i32*
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4596 = getelementptr inbounds %struct.GPR, %struct.GPR* %4595, i32 0, i32 15
  %4597 = getelementptr inbounds %struct.Reg, %struct.Reg* %4596, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %4597 to i64*
  %4598 = load i64, i64* %RBP.i250
  %4599 = sub i64 %4598, 3264
  %4600 = load i32, i32* %EDX.i249
  %4601 = zext i32 %4600 to i64
  %4602 = load i64, i64* %PC.i248
  %4603 = add i64 %4602, 6
  store i64 %4603, i64* %PC.i248
  %4604 = inttoptr i64 %4599 to i32*
  store i32 %4600, i32* %4604
  store %struct.Memory* %loadMem_48a421, %struct.Memory** %MEMORY
  %loadMem_48a427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4606 = getelementptr inbounds %struct.GPR, %struct.GPR* %4605, i32 0, i32 33
  %4607 = getelementptr inbounds %struct.Reg, %struct.Reg* %4606, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %4607 to i64*
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4609 = getelementptr inbounds %struct.GPR, %struct.GPR* %4608, i32 0, i32 1
  %4610 = getelementptr inbounds %struct.Reg, %struct.Reg* %4609, i32 0, i32 0
  %RAX.i246 = bitcast %union.anon* %4610 to i64*
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4612 = getelementptr inbounds %struct.GPR, %struct.GPR* %4611, i32 0, i32 15
  %4613 = getelementptr inbounds %struct.Reg, %struct.Reg* %4612, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %4613 to i64*
  %4614 = load i64, i64* %RBP.i247
  %4615 = sub i64 %4614, 32
  %4616 = load i64, i64* %PC.i245
  %4617 = add i64 %4616, 4
  store i64 %4617, i64* %PC.i245
  %4618 = inttoptr i64 %4615 to i32*
  %4619 = load i32, i32* %4618
  %4620 = sext i32 %4619 to i64
  store i64 %4620, i64* %RAX.i246, align 8
  store %struct.Memory* %loadMem_48a427, %struct.Memory** %MEMORY
  %loadMem_48a42b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4622 = getelementptr inbounds %struct.GPR, %struct.GPR* %4621, i32 0, i32 33
  %4623 = getelementptr inbounds %struct.Reg, %struct.Reg* %4622, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %4623 to i64*
  %4624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4625 = getelementptr inbounds %struct.GPR, %struct.GPR* %4624, i32 0, i32 1
  %4626 = getelementptr inbounds %struct.Reg, %struct.Reg* %4625, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %4626 to i64*
  %4627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4628 = getelementptr inbounds %struct.GPR, %struct.GPR* %4627, i32 0, i32 7
  %4629 = getelementptr inbounds %struct.Reg, %struct.Reg* %4628, i32 0, i32 0
  %RDX.i244 = bitcast %union.anon* %4629 to i64*
  %4630 = load i64, i64* %RAX.i243
  %4631 = add i64 %4630, 12099168
  %4632 = load i64, i64* %PC.i242
  %4633 = add i64 %4632, 8
  store i64 %4633, i64* %PC.i242
  %4634 = inttoptr i64 %4631 to i8*
  %4635 = load i8, i8* %4634
  %4636 = zext i8 %4635 to i64
  store i64 %4636, i64* %RDX.i244, align 8
  store %struct.Memory* %loadMem_48a42b, %struct.Memory** %MEMORY
  %loadMem_48a433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4638 = getelementptr inbounds %struct.GPR, %struct.GPR* %4637, i32 0, i32 33
  %4639 = getelementptr inbounds %struct.Reg, %struct.Reg* %4638, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %4639 to i64*
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4641 = getelementptr inbounds %struct.GPR, %struct.GPR* %4640, i32 0, i32 7
  %4642 = getelementptr inbounds %struct.Reg, %struct.Reg* %4641, i32 0, i32 0
  %EDX.i241 = bitcast %union.anon* %4642 to i32*
  %4643 = load i32, i32* %EDX.i241
  %4644 = zext i32 %4643 to i64
  %4645 = load i64, i64* %PC.i240
  %4646 = add i64 %4645, 3
  store i64 %4646, i64* %PC.i240
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4647, align 1
  %4648 = and i32 %4643, 255
  %4649 = call i32 @llvm.ctpop.i32(i32 %4648)
  %4650 = trunc i32 %4649 to i8
  %4651 = and i8 %4650, 1
  %4652 = xor i8 %4651, 1
  %4653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4652, i8* %4653, align 1
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4654, align 1
  %4655 = icmp eq i32 %4643, 0
  %4656 = zext i1 %4655 to i8
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4656, i8* %4657, align 1
  %4658 = lshr i32 %4643, 31
  %4659 = trunc i32 %4658 to i8
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4659, i8* %4660, align 1
  %4661 = lshr i32 %4643, 31
  %4662 = xor i32 %4658, %4661
  %4663 = add i32 %4662, %4661
  %4664 = icmp eq i32 %4663, 2
  %4665 = zext i1 %4664 to i8
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4665, i8* %4666, align 1
  store %struct.Memory* %loadMem_48a433, %struct.Memory** %MEMORY
  %loadMem_48a436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4668 = getelementptr inbounds %struct.GPR, %struct.GPR* %4667, i32 0, i32 33
  %4669 = getelementptr inbounds %struct.Reg, %struct.Reg* %4668, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %4669 to i64*
  %4670 = load i64, i64* %PC.i239
  %4671 = add i64 %4670, 81
  %4672 = load i64, i64* %PC.i239
  %4673 = add i64 %4672, 6
  %4674 = load i64, i64* %PC.i239
  %4675 = add i64 %4674, 6
  store i64 %4675, i64* %PC.i239
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4677 = load i8, i8* %4676, align 1
  %4678 = icmp eq i8 %4677, 0
  %4679 = zext i1 %4678 to i8
  store i8 %4679, i8* %BRANCH_TAKEN, align 1
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4681 = select i1 %4678, i64 %4671, i64 %4673
  store i64 %4681, i64* %4680, align 8
  store %struct.Memory* %loadMem_48a436, %struct.Memory** %MEMORY
  %loadBr_48a436 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a436 = icmp eq i8 %loadBr_48a436, 1
  br i1 %cmpBr_48a436, label %block_.L_48a487, label %block_48a43c

block_48a43c:                                     ; preds = %block_48a3ff
  %loadMem_48a43c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4683 = getelementptr inbounds %struct.GPR, %struct.GPR* %4682, i32 0, i32 33
  %4684 = getelementptr inbounds %struct.Reg, %struct.Reg* %4683, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %4684 to i64*
  %4685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4686 = getelementptr inbounds %struct.GPR, %struct.GPR* %4685, i32 0, i32 1
  %4687 = getelementptr inbounds %struct.Reg, %struct.Reg* %4686, i32 0, i32 0
  %RAX.i238 = bitcast %union.anon* %4687 to i64*
  %4688 = load i64, i64* %PC.i237
  %4689 = add i64 %4688, 10
  store i64 %4689, i64* %PC.i237
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i238, align 8
  store %struct.Memory* %loadMem_48a43c, %struct.Memory** %MEMORY
  %loadMem_48a446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4691 = getelementptr inbounds %struct.GPR, %struct.GPR* %4690, i32 0, i32 33
  %4692 = getelementptr inbounds %struct.Reg, %struct.Reg* %4691, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %4692 to i64*
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4694 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4693, i64 0, i64 0
  %YMM0.i236 = bitcast %union.VectorReg* %4694 to %"class.std::bitset"*
  %4695 = bitcast %"class.std::bitset"* %YMM0.i236 to i8*
  %4696 = load i64, i64* %PC.i235
  %4697 = add i64 %4696, ptrtoint (%G_0x58b3a__rip__type* @G_0x58b3a__rip_ to i64)
  %4698 = load i64, i64* %PC.i235
  %4699 = add i64 %4698, 8
  store i64 %4699, i64* %PC.i235
  %4700 = inttoptr i64 %4697 to double*
  %4701 = load double, double* %4700
  %4702 = bitcast i8* %4695 to double*
  store double %4701, double* %4702, align 1
  %4703 = getelementptr inbounds i8, i8* %4695, i64 8
  %4704 = bitcast i8* %4703 to double*
  store double 0.000000e+00, double* %4704, align 1
  store %struct.Memory* %loadMem_48a446, %struct.Memory** %MEMORY
  %loadMem_48a44e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4706 = getelementptr inbounds %struct.GPR, %struct.GPR* %4705, i32 0, i32 33
  %4707 = getelementptr inbounds %struct.Reg, %struct.Reg* %4706, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %4707 to i64*
  %4708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4709 = getelementptr inbounds %struct.GPR, %struct.GPR* %4708, i32 0, i32 5
  %4710 = getelementptr inbounds %struct.Reg, %struct.Reg* %4709, i32 0, i32 0
  %RCX.i233 = bitcast %union.anon* %4710 to i64*
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4712 = getelementptr inbounds %struct.GPR, %struct.GPR* %4711, i32 0, i32 15
  %4713 = getelementptr inbounds %struct.Reg, %struct.Reg* %4712, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %4713 to i64*
  %4714 = load i64, i64* %RBP.i234
  %4715 = sub i64 %4714, 32
  %4716 = load i64, i64* %PC.i232
  %4717 = add i64 %4716, 4
  store i64 %4717, i64* %PC.i232
  %4718 = inttoptr i64 %4715 to i32*
  %4719 = load i32, i32* %4718
  %4720 = sext i32 %4719 to i64
  store i64 %4720, i64* %RCX.i233, align 8
  store %struct.Memory* %loadMem_48a44e, %struct.Memory** %MEMORY
  %loadMem_48a452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4722 = getelementptr inbounds %struct.GPR, %struct.GPR* %4721, i32 0, i32 33
  %4723 = getelementptr inbounds %struct.Reg, %struct.Reg* %4722, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %4723 to i64*
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4725 = getelementptr inbounds %struct.GPR, %struct.GPR* %4724, i32 0, i32 5
  %4726 = getelementptr inbounds %struct.Reg, %struct.Reg* %4725, i32 0, i32 0
  %RCX.i229 = bitcast %union.anon* %4726 to i64*
  %4727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4728 = getelementptr inbounds %struct.GPR, %struct.GPR* %4727, i32 0, i32 15
  %4729 = getelementptr inbounds %struct.Reg, %struct.Reg* %4728, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %4729 to i64*
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4731 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4730, i64 0, i64 1
  %YMM1.i231 = bitcast %union.VectorReg* %4731 to %"class.std::bitset"*
  %4732 = bitcast %"class.std::bitset"* %YMM1.i231 to i8*
  %4733 = load i64, i64* %RBP.i230
  %4734 = load i64, i64* %RCX.i229
  %4735 = mul i64 %4734, 4
  %4736 = add i64 %4733, -3232
  %4737 = add i64 %4736, %4735
  %4738 = load i64, i64* %PC.i228
  %4739 = add i64 %4738, 9
  store i64 %4739, i64* %PC.i228
  %4740 = inttoptr i64 %4737 to i32*
  %4741 = load i32, i32* %4740
  %4742 = sitofp i32 %4741 to double
  %4743 = bitcast i8* %4732 to double*
  store double %4742, double* %4743, align 1
  store %struct.Memory* %loadMem_48a452, %struct.Memory** %MEMORY
  %loadMem_48a45b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4745 = getelementptr inbounds %struct.GPR, %struct.GPR* %4744, i32 0, i32 33
  %4746 = getelementptr inbounds %struct.Reg, %struct.Reg* %4745, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %4746 to i64*
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4748 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4747, i64 0, i64 0
  %YMM0.i226 = bitcast %union.VectorReg* %4748 to %"class.std::bitset"*
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4750 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4749, i64 0, i64 1
  %XMM1.i227 = bitcast %union.VectorReg* %4750 to %union.vec128_t*
  %4751 = bitcast %"class.std::bitset"* %YMM0.i226 to i8*
  %4752 = bitcast %"class.std::bitset"* %YMM0.i226 to i8*
  %4753 = bitcast %union.vec128_t* %XMM1.i227 to i8*
  %4754 = load i64, i64* %PC.i225
  %4755 = add i64 %4754, 4
  store i64 %4755, i64* %PC.i225
  %4756 = bitcast i8* %4752 to double*
  %4757 = load double, double* %4756, align 1
  %4758 = getelementptr inbounds i8, i8* %4752, i64 8
  %4759 = bitcast i8* %4758 to i64*
  %4760 = load i64, i64* %4759, align 1
  %4761 = bitcast i8* %4753 to double*
  %4762 = load double, double* %4761, align 1
  %4763 = fdiv double %4757, %4762
  %4764 = bitcast i8* %4751 to double*
  store double %4763, double* %4764, align 1
  %4765 = getelementptr inbounds i8, i8* %4751, i64 8
  %4766 = bitcast i8* %4765 to i64*
  store i64 %4760, i64* %4766, align 1
  store %struct.Memory* %loadMem_48a45b, %struct.Memory** %MEMORY
  %loadMem_48a45f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4768 = getelementptr inbounds %struct.GPR, %struct.GPR* %4767, i32 0, i32 33
  %4769 = getelementptr inbounds %struct.Reg, %struct.Reg* %4768, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %4769 to i64*
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4771 = getelementptr inbounds %struct.GPR, %struct.GPR* %4770, i32 0, i32 5
  %4772 = getelementptr inbounds %struct.Reg, %struct.Reg* %4771, i32 0, i32 0
  %RCX.i223 = bitcast %union.anon* %4772 to i64*
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4774 = getelementptr inbounds %struct.GPR, %struct.GPR* %4773, i32 0, i32 15
  %4775 = getelementptr inbounds %struct.Reg, %struct.Reg* %4774, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %4775 to i64*
  %4776 = load i64, i64* %RBP.i224
  %4777 = sub i64 %4776, 3264
  %4778 = load i64, i64* %PC.i222
  %4779 = add i64 %4778, 7
  store i64 %4779, i64* %PC.i222
  %4780 = inttoptr i64 %4777 to i32*
  %4781 = load i32, i32* %4780
  %4782 = sext i32 %4781 to i64
  store i64 %4782, i64* %RCX.i223, align 8
  store %struct.Memory* %loadMem_48a45f, %struct.Memory** %MEMORY
  %loadMem_48a466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4784 = getelementptr inbounds %struct.GPR, %struct.GPR* %4783, i32 0, i32 33
  %4785 = getelementptr inbounds %struct.Reg, %struct.Reg* %4784, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %4785 to i64*
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4787 = getelementptr inbounds %struct.GPR, %struct.GPR* %4786, i32 0, i32 5
  %4788 = getelementptr inbounds %struct.Reg, %struct.Reg* %4787, i32 0, i32 0
  %RCX.i221 = bitcast %union.anon* %4788 to i64*
  %4789 = load i64, i64* %RCX.i221
  %4790 = load i64, i64* %PC.i220
  %4791 = add i64 %4790, 7
  store i64 %4791, i64* %PC.i220
  %4792 = sext i64 %4789 to i128
  %4793 = and i128 %4792, -18446744073709551616
  %4794 = zext i64 %4789 to i128
  %4795 = or i128 %4793, %4794
  %4796 = mul i128 380, %4795
  %4797 = trunc i128 %4796 to i64
  store i64 %4797, i64* %RCX.i221, align 8
  %4798 = sext i64 %4797 to i128
  %4799 = icmp ne i128 %4798, %4796
  %4800 = zext i1 %4799 to i8
  %4801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4800, i8* %4801, align 1
  %4802 = trunc i128 %4796 to i32
  %4803 = and i32 %4802, 255
  %4804 = call i32 @llvm.ctpop.i32(i32 %4803)
  %4805 = trunc i32 %4804 to i8
  %4806 = and i8 %4805, 1
  %4807 = xor i8 %4806, 1
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4807, i8* %4808, align 1
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4809, align 1
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4810, align 1
  %4811 = lshr i64 %4797, 63
  %4812 = trunc i64 %4811 to i8
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4812, i8* %4813, align 1
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4800, i8* %4814, align 1
  store %struct.Memory* %loadMem_48a466, %struct.Memory** %MEMORY
  %loadMem_48a46d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4816 = getelementptr inbounds %struct.GPR, %struct.GPR* %4815, i32 0, i32 33
  %4817 = getelementptr inbounds %struct.Reg, %struct.Reg* %4816, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %4817 to i64*
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4819 = getelementptr inbounds %struct.GPR, %struct.GPR* %4818, i32 0, i32 1
  %4820 = getelementptr inbounds %struct.Reg, %struct.Reg* %4819, i32 0, i32 0
  %RAX.i218 = bitcast %union.anon* %4820 to i64*
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4822 = getelementptr inbounds %struct.GPR, %struct.GPR* %4821, i32 0, i32 5
  %4823 = getelementptr inbounds %struct.Reg, %struct.Reg* %4822, i32 0, i32 0
  %RCX.i219 = bitcast %union.anon* %4823 to i64*
  %4824 = load i64, i64* %RAX.i218
  %4825 = load i64, i64* %RCX.i219
  %4826 = load i64, i64* %PC.i217
  %4827 = add i64 %4826, 3
  store i64 %4827, i64* %PC.i217
  %4828 = add i64 %4825, %4824
  store i64 %4828, i64* %RAX.i218, align 8
  %4829 = icmp ult i64 %4828, %4824
  %4830 = icmp ult i64 %4828, %4825
  %4831 = or i1 %4829, %4830
  %4832 = zext i1 %4831 to i8
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4832, i8* %4833, align 1
  %4834 = trunc i64 %4828 to i32
  %4835 = and i32 %4834, 255
  %4836 = call i32 @llvm.ctpop.i32(i32 %4835)
  %4837 = trunc i32 %4836 to i8
  %4838 = and i8 %4837, 1
  %4839 = xor i8 %4838, 1
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4839, i8* %4840, align 1
  %4841 = xor i64 %4825, %4824
  %4842 = xor i64 %4841, %4828
  %4843 = lshr i64 %4842, 4
  %4844 = trunc i64 %4843 to i8
  %4845 = and i8 %4844, 1
  %4846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4845, i8* %4846, align 1
  %4847 = icmp eq i64 %4828, 0
  %4848 = zext i1 %4847 to i8
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4848, i8* %4849, align 1
  %4850 = lshr i64 %4828, 63
  %4851 = trunc i64 %4850 to i8
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4851, i8* %4852, align 1
  %4853 = lshr i64 %4824, 63
  %4854 = lshr i64 %4825, 63
  %4855 = xor i64 %4850, %4853
  %4856 = xor i64 %4850, %4854
  %4857 = add i64 %4855, %4856
  %4858 = icmp eq i64 %4857, 2
  %4859 = zext i1 %4858 to i8
  %4860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4859, i8* %4860, align 1
  store %struct.Memory* %loadMem_48a46d, %struct.Memory** %MEMORY
  %loadMem_48a470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4862 = getelementptr inbounds %struct.GPR, %struct.GPR* %4861, i32 0, i32 33
  %4863 = getelementptr inbounds %struct.Reg, %struct.Reg* %4862, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %4863 to i64*
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4865 = getelementptr inbounds %struct.GPR, %struct.GPR* %4864, i32 0, i32 1
  %4866 = getelementptr inbounds %struct.Reg, %struct.Reg* %4865, i32 0, i32 0
  %RAX.i215 = bitcast %union.anon* %4866 to i64*
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4868 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4867, i64 0, i64 1
  %YMM1.i216 = bitcast %union.VectorReg* %4868 to %"class.std::bitset"*
  %4869 = bitcast %"class.std::bitset"* %YMM1.i216 to i8*
  %4870 = load i64, i64* %RAX.i215
  %4871 = add i64 %4870, 8
  %4872 = load i64, i64* %PC.i214
  %4873 = add i64 %4872, 5
  store i64 %4873, i64* %PC.i214
  %4874 = inttoptr i64 %4871 to float*
  %4875 = load float, float* %4874
  %4876 = fpext float %4875 to double
  %4877 = bitcast i8* %4869 to double*
  store double %4876, double* %4877, align 1
  store %struct.Memory* %loadMem_48a470, %struct.Memory** %MEMORY
  %loadMem_48a475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4879 = getelementptr inbounds %struct.GPR, %struct.GPR* %4878, i32 0, i32 33
  %4880 = getelementptr inbounds %struct.Reg, %struct.Reg* %4879, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %4880 to i64*
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4882 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4881, i64 0, i64 1
  %YMM1.i212 = bitcast %union.VectorReg* %4882 to %"class.std::bitset"*
  %4883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4884 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4883, i64 0, i64 0
  %XMM0.i213 = bitcast %union.VectorReg* %4884 to %union.vec128_t*
  %4885 = bitcast %"class.std::bitset"* %YMM1.i212 to i8*
  %4886 = bitcast %"class.std::bitset"* %YMM1.i212 to i8*
  %4887 = bitcast %union.vec128_t* %XMM0.i213 to i8*
  %4888 = load i64, i64* %PC.i211
  %4889 = add i64 %4888, 4
  store i64 %4889, i64* %PC.i211
  %4890 = bitcast i8* %4886 to double*
  %4891 = load double, double* %4890, align 1
  %4892 = getelementptr inbounds i8, i8* %4886, i64 8
  %4893 = bitcast i8* %4892 to i64*
  %4894 = load i64, i64* %4893, align 1
  %4895 = bitcast i8* %4887 to double*
  %4896 = load double, double* %4895, align 1
  %4897 = fadd double %4891, %4896
  %4898 = bitcast i8* %4885 to double*
  store double %4897, double* %4898, align 1
  %4899 = getelementptr inbounds i8, i8* %4885, i64 8
  %4900 = bitcast i8* %4899 to i64*
  store i64 %4894, i64* %4900, align 1
  store %struct.Memory* %loadMem_48a475, %struct.Memory** %MEMORY
  %loadMem_48a479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4902 = getelementptr inbounds %struct.GPR, %struct.GPR* %4901, i32 0, i32 33
  %4903 = getelementptr inbounds %struct.Reg, %struct.Reg* %4902, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %4903 to i64*
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4905 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4904, i64 0, i64 0
  %YMM0.i209 = bitcast %union.VectorReg* %4905 to %"class.std::bitset"*
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4907 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4906, i64 0, i64 1
  %XMM1.i210 = bitcast %union.VectorReg* %4907 to %union.vec128_t*
  %4908 = bitcast %"class.std::bitset"* %YMM0.i209 to i8*
  %4909 = bitcast %union.vec128_t* %XMM1.i210 to i8*
  %4910 = load i64, i64* %PC.i208
  %4911 = add i64 %4910, 4
  store i64 %4911, i64* %PC.i208
  %4912 = bitcast i8* %4908 to <2 x i32>*
  %4913 = load <2 x i32>, <2 x i32>* %4912, align 1
  %4914 = getelementptr inbounds i8, i8* %4908, i64 8
  %4915 = bitcast i8* %4914 to <2 x i32>*
  %4916 = load <2 x i32>, <2 x i32>* %4915, align 1
  %4917 = bitcast i8* %4909 to double*
  %4918 = load double, double* %4917, align 1
  %4919 = fptrunc double %4918 to float
  %4920 = bitcast i8* %4908 to float*
  store float %4919, float* %4920, align 1
  %4921 = extractelement <2 x i32> %4913, i32 1
  %4922 = getelementptr inbounds i8, i8* %4908, i64 4
  %4923 = bitcast i8* %4922 to i32*
  store i32 %4921, i32* %4923, align 1
  %4924 = extractelement <2 x i32> %4916, i32 0
  %4925 = bitcast i8* %4914 to i32*
  store i32 %4924, i32* %4925, align 1
  %4926 = extractelement <2 x i32> %4916, i32 1
  %4927 = getelementptr inbounds i8, i8* %4908, i64 12
  %4928 = bitcast i8* %4927 to i32*
  store i32 %4926, i32* %4928, align 1
  store %struct.Memory* %loadMem_48a479, %struct.Memory** %MEMORY
  %loadMem_48a47d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4930 = getelementptr inbounds %struct.GPR, %struct.GPR* %4929, i32 0, i32 33
  %4931 = getelementptr inbounds %struct.Reg, %struct.Reg* %4930, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %4931 to i64*
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4933 = getelementptr inbounds %struct.GPR, %struct.GPR* %4932, i32 0, i32 1
  %4934 = getelementptr inbounds %struct.Reg, %struct.Reg* %4933, i32 0, i32 0
  %RAX.i206 = bitcast %union.anon* %4934 to i64*
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4936 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4935, i64 0, i64 0
  %XMM0.i207 = bitcast %union.VectorReg* %4936 to %union.vec128_t*
  %4937 = load i64, i64* %RAX.i206
  %4938 = add i64 %4937, 8
  %4939 = bitcast %union.vec128_t* %XMM0.i207 to i8*
  %4940 = load i64, i64* %PC.i205
  %4941 = add i64 %4940, 5
  store i64 %4941, i64* %PC.i205
  %4942 = bitcast i8* %4939 to <2 x float>*
  %4943 = load <2 x float>, <2 x float>* %4942, align 1
  %4944 = extractelement <2 x float> %4943, i32 0
  %4945 = inttoptr i64 %4938 to float*
  store float %4944, float* %4945
  store %struct.Memory* %loadMem_48a47d, %struct.Memory** %MEMORY
  %loadMem_48a482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4947 = getelementptr inbounds %struct.GPR, %struct.GPR* %4946, i32 0, i32 33
  %4948 = getelementptr inbounds %struct.Reg, %struct.Reg* %4947, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %4948 to i64*
  %4949 = load i64, i64* %PC.i204
  %4950 = add i64 %4949, 58
  %4951 = load i64, i64* %PC.i204
  %4952 = add i64 %4951, 5
  store i64 %4952, i64* %PC.i204
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4950, i64* %4953, align 8
  store %struct.Memory* %loadMem_48a482, %struct.Memory** %MEMORY
  br label %block_.L_48a4bc

block_.L_48a487:                                  ; preds = %block_48a3ff
  %loadMem_48a487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4955 = getelementptr inbounds %struct.GPR, %struct.GPR* %4954, i32 0, i32 33
  %4956 = getelementptr inbounds %struct.Reg, %struct.Reg* %4955, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %4956 to i64*
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4958 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4957, i64 0, i64 0
  %YMM0.i203 = bitcast %union.VectorReg* %4958 to %"class.std::bitset"*
  %4959 = bitcast %"class.std::bitset"* %YMM0.i203 to i8*
  %4960 = load i64, i64* %PC.i202
  %4961 = add i64 %4960, ptrtoint (%G_0x58ad1__rip__type* @G_0x58ad1__rip_ to i64)
  %4962 = load i64, i64* %PC.i202
  %4963 = add i64 %4962, 8
  store i64 %4963, i64* %PC.i202
  %4964 = inttoptr i64 %4961 to double*
  %4965 = load double, double* %4964
  %4966 = bitcast i8* %4959 to double*
  store double %4965, double* %4966, align 1
  %4967 = getelementptr inbounds i8, i8* %4959, i64 8
  %4968 = bitcast i8* %4967 to double*
  store double 0.000000e+00, double* %4968, align 1
  store %struct.Memory* %loadMem_48a487, %struct.Memory** %MEMORY
  %loadMem_48a48f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4970 = getelementptr inbounds %struct.GPR, %struct.GPR* %4969, i32 0, i32 33
  %4971 = getelementptr inbounds %struct.Reg, %struct.Reg* %4970, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %4971 to i64*
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4973 = getelementptr inbounds %struct.GPR, %struct.GPR* %4972, i32 0, i32 1
  %4974 = getelementptr inbounds %struct.Reg, %struct.Reg* %4973, i32 0, i32 0
  %RAX.i201 = bitcast %union.anon* %4974 to i64*
  %4975 = load i64, i64* %PC.i200
  %4976 = add i64 %4975, 10
  store i64 %4976, i64* %PC.i200
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i201, align 8
  store %struct.Memory* %loadMem_48a48f, %struct.Memory** %MEMORY
  %loadMem_48a499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4978 = getelementptr inbounds %struct.GPR, %struct.GPR* %4977, i32 0, i32 33
  %4979 = getelementptr inbounds %struct.Reg, %struct.Reg* %4978, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %4979 to i64*
  %4980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4981 = getelementptr inbounds %struct.GPR, %struct.GPR* %4980, i32 0, i32 5
  %4982 = getelementptr inbounds %struct.Reg, %struct.Reg* %4981, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %4982 to i64*
  %4983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4984 = getelementptr inbounds %struct.GPR, %struct.GPR* %4983, i32 0, i32 15
  %4985 = getelementptr inbounds %struct.Reg, %struct.Reg* %4984, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %4985 to i64*
  %4986 = load i64, i64* %RBP.i199
  %4987 = sub i64 %4986, 3264
  %4988 = load i64, i64* %PC.i197
  %4989 = add i64 %4988, 7
  store i64 %4989, i64* %PC.i197
  %4990 = inttoptr i64 %4987 to i32*
  %4991 = load i32, i32* %4990
  %4992 = sext i32 %4991 to i64
  store i64 %4992, i64* %RCX.i198, align 8
  store %struct.Memory* %loadMem_48a499, %struct.Memory** %MEMORY
  %loadMem_48a4a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4994 = getelementptr inbounds %struct.GPR, %struct.GPR* %4993, i32 0, i32 33
  %4995 = getelementptr inbounds %struct.Reg, %struct.Reg* %4994, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %4995 to i64*
  %4996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4997 = getelementptr inbounds %struct.GPR, %struct.GPR* %4996, i32 0, i32 5
  %4998 = getelementptr inbounds %struct.Reg, %struct.Reg* %4997, i32 0, i32 0
  %RCX.i196 = bitcast %union.anon* %4998 to i64*
  %4999 = load i64, i64* %RCX.i196
  %5000 = load i64, i64* %PC.i195
  %5001 = add i64 %5000, 7
  store i64 %5001, i64* %PC.i195
  %5002 = sext i64 %4999 to i128
  %5003 = and i128 %5002, -18446744073709551616
  %5004 = zext i64 %4999 to i128
  %5005 = or i128 %5003, %5004
  %5006 = mul i128 380, %5005
  %5007 = trunc i128 %5006 to i64
  store i64 %5007, i64* %RCX.i196, align 8
  %5008 = sext i64 %5007 to i128
  %5009 = icmp ne i128 %5008, %5006
  %5010 = zext i1 %5009 to i8
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5010, i8* %5011, align 1
  %5012 = trunc i128 %5006 to i32
  %5013 = and i32 %5012, 255
  %5014 = call i32 @llvm.ctpop.i32(i32 %5013)
  %5015 = trunc i32 %5014 to i8
  %5016 = and i8 %5015, 1
  %5017 = xor i8 %5016, 1
  %5018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5017, i8* %5018, align 1
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5019, align 1
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5020, align 1
  %5021 = lshr i64 %5007, 63
  %5022 = trunc i64 %5021 to i8
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5022, i8* %5023, align 1
  %5024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5010, i8* %5024, align 1
  store %struct.Memory* %loadMem_48a4a0, %struct.Memory** %MEMORY
  %loadMem_48a4a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5026 = getelementptr inbounds %struct.GPR, %struct.GPR* %5025, i32 0, i32 33
  %5027 = getelementptr inbounds %struct.Reg, %struct.Reg* %5026, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %5027 to i64*
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5029 = getelementptr inbounds %struct.GPR, %struct.GPR* %5028, i32 0, i32 1
  %5030 = getelementptr inbounds %struct.Reg, %struct.Reg* %5029, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %5030 to i64*
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5032 = getelementptr inbounds %struct.GPR, %struct.GPR* %5031, i32 0, i32 5
  %5033 = getelementptr inbounds %struct.Reg, %struct.Reg* %5032, i32 0, i32 0
  %RCX.i194 = bitcast %union.anon* %5033 to i64*
  %5034 = load i64, i64* %RAX.i193
  %5035 = load i64, i64* %RCX.i194
  %5036 = load i64, i64* %PC.i192
  %5037 = add i64 %5036, 3
  store i64 %5037, i64* %PC.i192
  %5038 = add i64 %5035, %5034
  store i64 %5038, i64* %RAX.i193, align 8
  %5039 = icmp ult i64 %5038, %5034
  %5040 = icmp ult i64 %5038, %5035
  %5041 = or i1 %5039, %5040
  %5042 = zext i1 %5041 to i8
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5042, i8* %5043, align 1
  %5044 = trunc i64 %5038 to i32
  %5045 = and i32 %5044, 255
  %5046 = call i32 @llvm.ctpop.i32(i32 %5045)
  %5047 = trunc i32 %5046 to i8
  %5048 = and i8 %5047, 1
  %5049 = xor i8 %5048, 1
  %5050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5049, i8* %5050, align 1
  %5051 = xor i64 %5035, %5034
  %5052 = xor i64 %5051, %5038
  %5053 = lshr i64 %5052, 4
  %5054 = trunc i64 %5053 to i8
  %5055 = and i8 %5054, 1
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5055, i8* %5056, align 1
  %5057 = icmp eq i64 %5038, 0
  %5058 = zext i1 %5057 to i8
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5058, i8* %5059, align 1
  %5060 = lshr i64 %5038, 63
  %5061 = trunc i64 %5060 to i8
  %5062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5061, i8* %5062, align 1
  %5063 = lshr i64 %5034, 63
  %5064 = lshr i64 %5035, 63
  %5065 = xor i64 %5060, %5063
  %5066 = xor i64 %5060, %5064
  %5067 = add i64 %5065, %5066
  %5068 = icmp eq i64 %5067, 2
  %5069 = zext i1 %5068 to i8
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5069, i8* %5070, align 1
  store %struct.Memory* %loadMem_48a4a7, %struct.Memory** %MEMORY
  %loadMem_48a4aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5072 = getelementptr inbounds %struct.GPR, %struct.GPR* %5071, i32 0, i32 33
  %5073 = getelementptr inbounds %struct.Reg, %struct.Reg* %5072, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %5073 to i64*
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5075 = getelementptr inbounds %struct.GPR, %struct.GPR* %5074, i32 0, i32 1
  %5076 = getelementptr inbounds %struct.Reg, %struct.Reg* %5075, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %5076 to i64*
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5078 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5077, i64 0, i64 1
  %YMM1.i191 = bitcast %union.VectorReg* %5078 to %"class.std::bitset"*
  %5079 = bitcast %"class.std::bitset"* %YMM1.i191 to i8*
  %5080 = load i64, i64* %RAX.i190
  %5081 = add i64 %5080, 8
  %5082 = load i64, i64* %PC.i189
  %5083 = add i64 %5082, 5
  store i64 %5083, i64* %PC.i189
  %5084 = inttoptr i64 %5081 to float*
  %5085 = load float, float* %5084
  %5086 = fpext float %5085 to double
  %5087 = bitcast i8* %5079 to double*
  store double %5086, double* %5087, align 1
  store %struct.Memory* %loadMem_48a4aa, %struct.Memory** %MEMORY
  %loadMem_48a4af = load %struct.Memory*, %struct.Memory** %MEMORY
  %5088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5089 = getelementptr inbounds %struct.GPR, %struct.GPR* %5088, i32 0, i32 33
  %5090 = getelementptr inbounds %struct.Reg, %struct.Reg* %5089, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %5090 to i64*
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5092 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5091, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %5092 to %"class.std::bitset"*
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5094 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5093, i64 0, i64 0
  %XMM0.i188 = bitcast %union.VectorReg* %5094 to %union.vec128_t*
  %5095 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %5096 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %5097 = bitcast %union.vec128_t* %XMM0.i188 to i8*
  %5098 = load i64, i64* %PC.i187
  %5099 = add i64 %5098, 4
  store i64 %5099, i64* %PC.i187
  %5100 = bitcast i8* %5096 to double*
  %5101 = load double, double* %5100, align 1
  %5102 = getelementptr inbounds i8, i8* %5096, i64 8
  %5103 = bitcast i8* %5102 to i64*
  %5104 = load i64, i64* %5103, align 1
  %5105 = bitcast i8* %5097 to double*
  %5106 = load double, double* %5105, align 1
  %5107 = fadd double %5101, %5106
  %5108 = bitcast i8* %5095 to double*
  store double %5107, double* %5108, align 1
  %5109 = getelementptr inbounds i8, i8* %5095, i64 8
  %5110 = bitcast i8* %5109 to i64*
  store i64 %5104, i64* %5110, align 1
  store %struct.Memory* %loadMem_48a4af, %struct.Memory** %MEMORY
  %loadMem_48a4b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5112 = getelementptr inbounds %struct.GPR, %struct.GPR* %5111, i32 0, i32 33
  %5113 = getelementptr inbounds %struct.Reg, %struct.Reg* %5112, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %5113 to i64*
  %5114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5115 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5114, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %5115 to %"class.std::bitset"*
  %5116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5117 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5116, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %5117 to %union.vec128_t*
  %5118 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %5119 = bitcast %union.vec128_t* %XMM1.i to i8*
  %5120 = load i64, i64* %PC.i186
  %5121 = add i64 %5120, 4
  store i64 %5121, i64* %PC.i186
  %5122 = bitcast i8* %5118 to <2 x i32>*
  %5123 = load <2 x i32>, <2 x i32>* %5122, align 1
  %5124 = getelementptr inbounds i8, i8* %5118, i64 8
  %5125 = bitcast i8* %5124 to <2 x i32>*
  %5126 = load <2 x i32>, <2 x i32>* %5125, align 1
  %5127 = bitcast i8* %5119 to double*
  %5128 = load double, double* %5127, align 1
  %5129 = fptrunc double %5128 to float
  %5130 = bitcast i8* %5118 to float*
  store float %5129, float* %5130, align 1
  %5131 = extractelement <2 x i32> %5123, i32 1
  %5132 = getelementptr inbounds i8, i8* %5118, i64 4
  %5133 = bitcast i8* %5132 to i32*
  store i32 %5131, i32* %5133, align 1
  %5134 = extractelement <2 x i32> %5126, i32 0
  %5135 = bitcast i8* %5124 to i32*
  store i32 %5134, i32* %5135, align 1
  %5136 = extractelement <2 x i32> %5126, i32 1
  %5137 = getelementptr inbounds i8, i8* %5118, i64 12
  %5138 = bitcast i8* %5137 to i32*
  store i32 %5136, i32* %5138, align 1
  store %struct.Memory* %loadMem_48a4b3, %struct.Memory** %MEMORY
  %loadMem_48a4b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5140 = getelementptr inbounds %struct.GPR, %struct.GPR* %5139, i32 0, i32 33
  %5141 = getelementptr inbounds %struct.Reg, %struct.Reg* %5140, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %5141 to i64*
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5143 = getelementptr inbounds %struct.GPR, %struct.GPR* %5142, i32 0, i32 1
  %5144 = getelementptr inbounds %struct.Reg, %struct.Reg* %5143, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %5144 to i64*
  %5145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5146 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5145, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %5146 to %union.vec128_t*
  %5147 = load i64, i64* %RAX.i185
  %5148 = add i64 %5147, 8
  %5149 = bitcast %union.vec128_t* %XMM0.i to i8*
  %5150 = load i64, i64* %PC.i184
  %5151 = add i64 %5150, 5
  store i64 %5151, i64* %PC.i184
  %5152 = bitcast i8* %5149 to <2 x float>*
  %5153 = load <2 x float>, <2 x float>* %5152, align 1
  %5154 = extractelement <2 x float> %5153, i32 0
  %5155 = inttoptr i64 %5148 to float*
  store float %5154, float* %5155
  store %struct.Memory* %loadMem_48a4b7, %struct.Memory** %MEMORY
  br label %block_.L_48a4bc

block_.L_48a4bc:                                  ; preds = %block_.L_48a487, %block_48a43c
  %loadMem_48a4bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5157 = getelementptr inbounds %struct.GPR, %struct.GPR* %5156, i32 0, i32 33
  %5158 = getelementptr inbounds %struct.Reg, %struct.Reg* %5157, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %5158 to i64*
  %5159 = load i64, i64* %PC.i183
  %5160 = add i64 %5159, 5
  %5161 = load i64, i64* %PC.i183
  %5162 = add i64 %5161, 5
  store i64 %5162, i64* %PC.i183
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5160, i64* %5163, align 8
  store %struct.Memory* %loadMem_48a4bc, %struct.Memory** %MEMORY
  br label %block_.L_48a4c1

block_.L_48a4c1:                                  ; preds = %block_.L_48a4bc
  %loadMem_48a4c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5165 = getelementptr inbounds %struct.GPR, %struct.GPR* %5164, i32 0, i32 33
  %5166 = getelementptr inbounds %struct.Reg, %struct.Reg* %5165, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %5166 to i64*
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5168 = getelementptr inbounds %struct.GPR, %struct.GPR* %5167, i32 0, i32 1
  %5169 = getelementptr inbounds %struct.Reg, %struct.Reg* %5168, i32 0, i32 0
  %RAX.i181 = bitcast %union.anon* %5169 to i64*
  %5170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5171 = getelementptr inbounds %struct.GPR, %struct.GPR* %5170, i32 0, i32 15
  %5172 = getelementptr inbounds %struct.Reg, %struct.Reg* %5171, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %5172 to i64*
  %5173 = load i64, i64* %RBP.i182
  %5174 = sub i64 %5173, 3244
  %5175 = load i64, i64* %PC.i180
  %5176 = add i64 %5175, 6
  store i64 %5176, i64* %PC.i180
  %5177 = inttoptr i64 %5174 to i32*
  %5178 = load i32, i32* %5177
  %5179 = zext i32 %5178 to i64
  store i64 %5179, i64* %RAX.i181, align 8
  store %struct.Memory* %loadMem_48a4c1, %struct.Memory** %MEMORY
  %loadMem_48a4c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5181 = getelementptr inbounds %struct.GPR, %struct.GPR* %5180, i32 0, i32 33
  %5182 = getelementptr inbounds %struct.Reg, %struct.Reg* %5181, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %5182 to i64*
  %5183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5184 = getelementptr inbounds %struct.GPR, %struct.GPR* %5183, i32 0, i32 1
  %5185 = getelementptr inbounds %struct.Reg, %struct.Reg* %5184, i32 0, i32 0
  %RAX.i179 = bitcast %union.anon* %5185 to i64*
  %5186 = load i64, i64* %RAX.i179
  %5187 = load i64, i64* %PC.i178
  %5188 = add i64 %5187, 3
  store i64 %5188, i64* %PC.i178
  %5189 = trunc i64 %5186 to i32
  %5190 = add i32 1, %5189
  %5191 = zext i32 %5190 to i64
  store i64 %5191, i64* %RAX.i179, align 8
  %5192 = icmp ult i32 %5190, %5189
  %5193 = icmp ult i32 %5190, 1
  %5194 = or i1 %5192, %5193
  %5195 = zext i1 %5194 to i8
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5195, i8* %5196, align 1
  %5197 = and i32 %5190, 255
  %5198 = call i32 @llvm.ctpop.i32(i32 %5197)
  %5199 = trunc i32 %5198 to i8
  %5200 = and i8 %5199, 1
  %5201 = xor i8 %5200, 1
  %5202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5201, i8* %5202, align 1
  %5203 = xor i64 1, %5186
  %5204 = trunc i64 %5203 to i32
  %5205 = xor i32 %5204, %5190
  %5206 = lshr i32 %5205, 4
  %5207 = trunc i32 %5206 to i8
  %5208 = and i8 %5207, 1
  %5209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5208, i8* %5209, align 1
  %5210 = icmp eq i32 %5190, 0
  %5211 = zext i1 %5210 to i8
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5211, i8* %5212, align 1
  %5213 = lshr i32 %5190, 31
  %5214 = trunc i32 %5213 to i8
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5214, i8* %5215, align 1
  %5216 = lshr i32 %5189, 31
  %5217 = xor i32 %5213, %5216
  %5218 = add i32 %5217, %5213
  %5219 = icmp eq i32 %5218, 2
  %5220 = zext i1 %5219 to i8
  %5221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5220, i8* %5221, align 1
  store %struct.Memory* %loadMem_48a4c7, %struct.Memory** %MEMORY
  %loadMem_48a4ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5223 = getelementptr inbounds %struct.GPR, %struct.GPR* %5222, i32 0, i32 33
  %5224 = getelementptr inbounds %struct.Reg, %struct.Reg* %5223, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %5224 to i64*
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5226 = getelementptr inbounds %struct.GPR, %struct.GPR* %5225, i32 0, i32 1
  %5227 = getelementptr inbounds %struct.Reg, %struct.Reg* %5226, i32 0, i32 0
  %EAX.i176 = bitcast %union.anon* %5227 to i32*
  %5228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5229 = getelementptr inbounds %struct.GPR, %struct.GPR* %5228, i32 0, i32 15
  %5230 = getelementptr inbounds %struct.Reg, %struct.Reg* %5229, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %5230 to i64*
  %5231 = load i64, i64* %RBP.i177
  %5232 = sub i64 %5231, 3244
  %5233 = load i32, i32* %EAX.i176
  %5234 = zext i32 %5233 to i64
  %5235 = load i64, i64* %PC.i175
  %5236 = add i64 %5235, 6
  store i64 %5236, i64* %PC.i175
  %5237 = inttoptr i64 %5232 to i32*
  store i32 %5233, i32* %5237
  store %struct.Memory* %loadMem_48a4ca, %struct.Memory** %MEMORY
  %loadMem_48a4d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5239 = getelementptr inbounds %struct.GPR, %struct.GPR* %5238, i32 0, i32 33
  %5240 = getelementptr inbounds %struct.Reg, %struct.Reg* %5239, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %5240 to i64*
  %5241 = load i64, i64* %PC.i174
  %5242 = add i64 %5241, -232
  %5243 = load i64, i64* %PC.i174
  %5244 = add i64 %5243, 5
  store i64 %5244, i64* %PC.i174
  %5245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5242, i64* %5245, align 8
  store %struct.Memory* %loadMem_48a4d0, %struct.Memory** %MEMORY
  br label %block_.L_48a3e8

block_.L_48a4d5:                                  ; preds = %block_.L_48a3e8
  %loadMem_48a4d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5247 = getelementptr inbounds %struct.GPR, %struct.GPR* %5246, i32 0, i32 33
  %5248 = getelementptr inbounds %struct.Reg, %struct.Reg* %5247, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %5248 to i64*
  %5249 = load i64, i64* %PC.i173
  %5250 = add i64 %5249, 5
  %5251 = load i64, i64* %PC.i173
  %5252 = add i64 %5251, 5
  store i64 %5252, i64* %PC.i173
  %5253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5250, i64* %5253, align 8
  store %struct.Memory* %loadMem_48a4d5, %struct.Memory** %MEMORY
  br label %block_.L_48a4da

block_.L_48a4da:                                  ; preds = %block_.L_48a4d5, %block_48a3d9
  %loadMem_48a4da = load %struct.Memory*, %struct.Memory** %MEMORY
  %5254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5255 = getelementptr inbounds %struct.GPR, %struct.GPR* %5254, i32 0, i32 33
  %5256 = getelementptr inbounds %struct.Reg, %struct.Reg* %5255, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %5256 to i64*
  %5257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5258 = getelementptr inbounds %struct.GPR, %struct.GPR* %5257, i32 0, i32 1
  %5259 = getelementptr inbounds %struct.Reg, %struct.Reg* %5258, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %5259 to i64*
  %5260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5261 = getelementptr inbounds %struct.GPR, %struct.GPR* %5260, i32 0, i32 15
  %5262 = getelementptr inbounds %struct.Reg, %struct.Reg* %5261, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %5262 to i64*
  %5263 = load i64, i64* %RBP.i172
  %5264 = sub i64 %5263, 32
  %5265 = load i64, i64* %PC.i170
  %5266 = add i64 %5265, 3
  store i64 %5266, i64* %PC.i170
  %5267 = inttoptr i64 %5264 to i32*
  %5268 = load i32, i32* %5267
  %5269 = zext i32 %5268 to i64
  store i64 %5269, i64* %RAX.i171, align 8
  store %struct.Memory* %loadMem_48a4da, %struct.Memory** %MEMORY
  %loadMem_48a4dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5271 = getelementptr inbounds %struct.GPR, %struct.GPR* %5270, i32 0, i32 33
  %5272 = getelementptr inbounds %struct.Reg, %struct.Reg* %5271, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %5272 to i64*
  %5273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5274 = getelementptr inbounds %struct.GPR, %struct.GPR* %5273, i32 0, i32 1
  %5275 = getelementptr inbounds %struct.Reg, %struct.Reg* %5274, i32 0, i32 0
  %RAX.i169 = bitcast %union.anon* %5275 to i64*
  %5276 = load i64, i64* %RAX.i169
  %5277 = load i64, i64* %PC.i168
  %5278 = add i64 %5277, 3
  store i64 %5278, i64* %PC.i168
  %5279 = trunc i64 %5276 to i32
  %5280 = add i32 1, %5279
  %5281 = zext i32 %5280 to i64
  store i64 %5281, i64* %RAX.i169, align 8
  %5282 = icmp ult i32 %5280, %5279
  %5283 = icmp ult i32 %5280, 1
  %5284 = or i1 %5282, %5283
  %5285 = zext i1 %5284 to i8
  %5286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5285, i8* %5286, align 1
  %5287 = and i32 %5280, 255
  %5288 = call i32 @llvm.ctpop.i32(i32 %5287)
  %5289 = trunc i32 %5288 to i8
  %5290 = and i8 %5289, 1
  %5291 = xor i8 %5290, 1
  %5292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5291, i8* %5292, align 1
  %5293 = xor i64 1, %5276
  %5294 = trunc i64 %5293 to i32
  %5295 = xor i32 %5294, %5280
  %5296 = lshr i32 %5295, 4
  %5297 = trunc i32 %5296 to i8
  %5298 = and i8 %5297, 1
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5298, i8* %5299, align 1
  %5300 = icmp eq i32 %5280, 0
  %5301 = zext i1 %5300 to i8
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5301, i8* %5302, align 1
  %5303 = lshr i32 %5280, 31
  %5304 = trunc i32 %5303 to i8
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5304, i8* %5305, align 1
  %5306 = lshr i32 %5279, 31
  %5307 = xor i32 %5303, %5306
  %5308 = add i32 %5307, %5303
  %5309 = icmp eq i32 %5308, 2
  %5310 = zext i1 %5309 to i8
  %5311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5310, i8* %5311, align 1
  store %struct.Memory* %loadMem_48a4dd, %struct.Memory** %MEMORY
  %loadMem_48a4e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5313 = getelementptr inbounds %struct.GPR, %struct.GPR* %5312, i32 0, i32 33
  %5314 = getelementptr inbounds %struct.Reg, %struct.Reg* %5313, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %5314 to i64*
  %5315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5316 = getelementptr inbounds %struct.GPR, %struct.GPR* %5315, i32 0, i32 1
  %5317 = getelementptr inbounds %struct.Reg, %struct.Reg* %5316, i32 0, i32 0
  %EAX.i166 = bitcast %union.anon* %5317 to i32*
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5319 = getelementptr inbounds %struct.GPR, %struct.GPR* %5318, i32 0, i32 15
  %5320 = getelementptr inbounds %struct.Reg, %struct.Reg* %5319, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %5320 to i64*
  %5321 = load i64, i64* %RBP.i167
  %5322 = sub i64 %5321, 32
  %5323 = load i32, i32* %EAX.i166
  %5324 = zext i32 %5323 to i64
  %5325 = load i64, i64* %PC.i165
  %5326 = add i64 %5325, 3
  store i64 %5326, i64* %PC.i165
  %5327 = inttoptr i64 %5322 to i32*
  store i32 %5323, i32* %5327
  store %struct.Memory* %loadMem_48a4e0, %struct.Memory** %MEMORY
  %loadMem_48a4e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5329 = getelementptr inbounds %struct.GPR, %struct.GPR* %5328, i32 0, i32 33
  %5330 = getelementptr inbounds %struct.Reg, %struct.Reg* %5329, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %5330 to i64*
  %5331 = load i64, i64* %PC.i164
  %5332 = add i64 %5331, -300
  %5333 = load i64, i64* %PC.i164
  %5334 = add i64 %5333, 5
  store i64 %5334, i64* %PC.i164
  %5335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5332, i64* %5335, align 8
  store %struct.Memory* %loadMem_48a4e3, %struct.Memory** %MEMORY
  br label %block_.L_48a3b7

block_.L_48a4e8:                                  ; preds = %block_.L_48a3b7
  %loadMem_48a4e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5337 = getelementptr inbounds %struct.GPR, %struct.GPR* %5336, i32 0, i32 33
  %5338 = getelementptr inbounds %struct.Reg, %struct.Reg* %5337, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %5338 to i64*
  %5339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5340 = getelementptr inbounds %struct.GPR, %struct.GPR* %5339, i32 0, i32 15
  %5341 = getelementptr inbounds %struct.Reg, %struct.Reg* %5340, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %5341 to i64*
  %5342 = load i64, i64* %RBP.i163
  %5343 = sub i64 %5342, 32
  %5344 = load i64, i64* %PC.i162
  %5345 = add i64 %5344, 7
  store i64 %5345, i64* %PC.i162
  %5346 = inttoptr i64 %5343 to i32*
  store i32 21, i32* %5346
  store %struct.Memory* %loadMem_48a4e8, %struct.Memory** %MEMORY
  br label %block_.L_48a4ef

block_.L_48a4ef:                                  ; preds = %block_.L_48a547, %block_.L_48a4e8
  %loadMem_48a4ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %5347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5348 = getelementptr inbounds %struct.GPR, %struct.GPR* %5347, i32 0, i32 33
  %5349 = getelementptr inbounds %struct.Reg, %struct.Reg* %5348, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %5349 to i64*
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5351 = getelementptr inbounds %struct.GPR, %struct.GPR* %5350, i32 0, i32 15
  %5352 = getelementptr inbounds %struct.Reg, %struct.Reg* %5351, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %5352 to i64*
  %5353 = load i64, i64* %RBP.i161
  %5354 = sub i64 %5353, 32
  %5355 = load i64, i64* %PC.i160
  %5356 = add i64 %5355, 7
  store i64 %5356, i64* %PC.i160
  %5357 = inttoptr i64 %5354 to i32*
  %5358 = load i32, i32* %5357
  %5359 = sub i32 %5358, 400
  %5360 = icmp ult i32 %5358, 400
  %5361 = zext i1 %5360 to i8
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5361, i8* %5362, align 1
  %5363 = and i32 %5359, 255
  %5364 = call i32 @llvm.ctpop.i32(i32 %5363)
  %5365 = trunc i32 %5364 to i8
  %5366 = and i8 %5365, 1
  %5367 = xor i8 %5366, 1
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5367, i8* %5368, align 1
  %5369 = xor i32 %5358, 400
  %5370 = xor i32 %5369, %5359
  %5371 = lshr i32 %5370, 4
  %5372 = trunc i32 %5371 to i8
  %5373 = and i8 %5372, 1
  %5374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5373, i8* %5374, align 1
  %5375 = icmp eq i32 %5359, 0
  %5376 = zext i1 %5375 to i8
  %5377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5376, i8* %5377, align 1
  %5378 = lshr i32 %5359, 31
  %5379 = trunc i32 %5378 to i8
  %5380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5379, i8* %5380, align 1
  %5381 = lshr i32 %5358, 31
  %5382 = xor i32 %5378, %5381
  %5383 = add i32 %5382, %5381
  %5384 = icmp eq i32 %5383, 2
  %5385 = zext i1 %5384 to i8
  %5386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5385, i8* %5386, align 1
  store %struct.Memory* %loadMem_48a4ef, %struct.Memory** %MEMORY
  %loadMem_48a4f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5388 = getelementptr inbounds %struct.GPR, %struct.GPR* %5387, i32 0, i32 33
  %5389 = getelementptr inbounds %struct.Reg, %struct.Reg* %5388, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %5389 to i64*
  %5390 = load i64, i64* %PC.i159
  %5391 = add i64 %5390, 95
  %5392 = load i64, i64* %PC.i159
  %5393 = add i64 %5392, 6
  %5394 = load i64, i64* %PC.i159
  %5395 = add i64 %5394, 6
  store i64 %5395, i64* %PC.i159
  %5396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5397 = load i8, i8* %5396, align 1
  %5398 = icmp ne i8 %5397, 0
  %5399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5400 = load i8, i8* %5399, align 1
  %5401 = icmp ne i8 %5400, 0
  %5402 = xor i1 %5398, %5401
  %5403 = xor i1 %5402, true
  %5404 = zext i1 %5403 to i8
  store i8 %5404, i8* %BRANCH_TAKEN, align 1
  %5405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5406 = select i1 %5402, i64 %5393, i64 %5391
  store i64 %5406, i64* %5405, align 8
  store %struct.Memory* %loadMem_48a4f6, %struct.Memory** %MEMORY
  %loadBr_48a4f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a4f6 = icmp eq i8 %loadBr_48a4f6, 1
  br i1 %cmpBr_48a4f6, label %block_.L_48a555, label %block_48a4fc

block_48a4fc:                                     ; preds = %block_.L_48a4ef
  %loadMem_48a4fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5408 = getelementptr inbounds %struct.GPR, %struct.GPR* %5407, i32 0, i32 33
  %5409 = getelementptr inbounds %struct.Reg, %struct.Reg* %5408, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %5409 to i64*
  %5410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5411 = getelementptr inbounds %struct.GPR, %struct.GPR* %5410, i32 0, i32 1
  %5412 = getelementptr inbounds %struct.Reg, %struct.Reg* %5411, i32 0, i32 0
  %RAX.i157 = bitcast %union.anon* %5412 to i64*
  %5413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5414 = getelementptr inbounds %struct.GPR, %struct.GPR* %5413, i32 0, i32 15
  %5415 = getelementptr inbounds %struct.Reg, %struct.Reg* %5414, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %5415 to i64*
  %5416 = load i64, i64* %RBP.i158
  %5417 = sub i64 %5416, 32
  %5418 = load i64, i64* %PC.i156
  %5419 = add i64 %5418, 4
  store i64 %5419, i64* %PC.i156
  %5420 = inttoptr i64 %5417 to i32*
  %5421 = load i32, i32* %5420
  %5422 = sext i32 %5421 to i64
  store i64 %5422, i64* %RAX.i157, align 8
  store %struct.Memory* %loadMem_48a4fc, %struct.Memory** %MEMORY
  %loadMem_48a500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5424 = getelementptr inbounds %struct.GPR, %struct.GPR* %5423, i32 0, i32 33
  %5425 = getelementptr inbounds %struct.Reg, %struct.Reg* %5424, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %5425 to i64*
  %5426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5427 = getelementptr inbounds %struct.GPR, %struct.GPR* %5426, i32 0, i32 1
  %5428 = getelementptr inbounds %struct.Reg, %struct.Reg* %5427, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %5428 to i64*
  %5429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5430 = getelementptr inbounds %struct.GPR, %struct.GPR* %5429, i32 0, i32 5
  %5431 = getelementptr inbounds %struct.Reg, %struct.Reg* %5430, i32 0, i32 0
  %RCX.i155 = bitcast %union.anon* %5431 to i64*
  %5432 = load i64, i64* %RAX.i154
  %5433 = add i64 %5432, 12099168
  %5434 = load i64, i64* %PC.i153
  %5435 = add i64 %5434, 8
  store i64 %5435, i64* %PC.i153
  %5436 = inttoptr i64 %5433 to i8*
  %5437 = load i8, i8* %5436
  %5438 = zext i8 %5437 to i64
  store i64 %5438, i64* %RCX.i155, align 8
  store %struct.Memory* %loadMem_48a500, %struct.Memory** %MEMORY
  %loadMem_48a508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5440 = getelementptr inbounds %struct.GPR, %struct.GPR* %5439, i32 0, i32 33
  %5441 = getelementptr inbounds %struct.Reg, %struct.Reg* %5440, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %5441 to i64*
  %5442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5443 = getelementptr inbounds %struct.GPR, %struct.GPR* %5442, i32 0, i32 5
  %5444 = getelementptr inbounds %struct.Reg, %struct.Reg* %5443, i32 0, i32 0
  %ECX.i152 = bitcast %union.anon* %5444 to i32*
  %5445 = load i32, i32* %ECX.i152
  %5446 = zext i32 %5445 to i64
  %5447 = load i64, i64* %PC.i151
  %5448 = add i64 %5447, 3
  store i64 %5448, i64* %PC.i151
  %5449 = sub i32 %5445, 1
  %5450 = icmp ult i32 %5445, 1
  %5451 = zext i1 %5450 to i8
  %5452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5451, i8* %5452, align 1
  %5453 = and i32 %5449, 255
  %5454 = call i32 @llvm.ctpop.i32(i32 %5453)
  %5455 = trunc i32 %5454 to i8
  %5456 = and i8 %5455, 1
  %5457 = xor i8 %5456, 1
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5457, i8* %5458, align 1
  %5459 = xor i64 1, %5446
  %5460 = trunc i64 %5459 to i32
  %5461 = xor i32 %5460, %5449
  %5462 = lshr i32 %5461, 4
  %5463 = trunc i32 %5462 to i8
  %5464 = and i8 %5463, 1
  %5465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5464, i8* %5465, align 1
  %5466 = icmp eq i32 %5449, 0
  %5467 = zext i1 %5466 to i8
  %5468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5467, i8* %5468, align 1
  %5469 = lshr i32 %5449, 31
  %5470 = trunc i32 %5469 to i8
  %5471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5470, i8* %5471, align 1
  %5472 = lshr i32 %5445, 31
  %5473 = xor i32 %5469, %5472
  %5474 = add i32 %5473, %5472
  %5475 = icmp eq i32 %5474, 2
  %5476 = zext i1 %5475 to i8
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5476, i8* %5477, align 1
  store %struct.Memory* %loadMem_48a508, %struct.Memory** %MEMORY
  %loadMem_48a50b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5479 = getelementptr inbounds %struct.GPR, %struct.GPR* %5478, i32 0, i32 33
  %5480 = getelementptr inbounds %struct.Reg, %struct.Reg* %5479, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %5480 to i64*
  %5481 = load i64, i64* %PC.i150
  %5482 = add i64 %5481, 27
  %5483 = load i64, i64* %PC.i150
  %5484 = add i64 %5483, 6
  %5485 = load i64, i64* %PC.i150
  %5486 = add i64 %5485, 6
  store i64 %5486, i64* %PC.i150
  %5487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5488 = load i8, i8* %5487, align 1
  store i8 %5488, i8* %BRANCH_TAKEN, align 1
  %5489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5490 = icmp ne i8 %5488, 0
  %5491 = select i1 %5490, i64 %5482, i64 %5484
  store i64 %5491, i64* %5489, align 8
  store %struct.Memory* %loadMem_48a50b, %struct.Memory** %MEMORY
  %loadBr_48a50b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a50b = icmp eq i8 %loadBr_48a50b, 1
  br i1 %cmpBr_48a50b, label %block_.L_48a526, label %block_48a511

block_48a511:                                     ; preds = %block_48a4fc
  %loadMem_48a511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5493 = getelementptr inbounds %struct.GPR, %struct.GPR* %5492, i32 0, i32 33
  %5494 = getelementptr inbounds %struct.Reg, %struct.Reg* %5493, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %5494 to i64*
  %5495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5496 = getelementptr inbounds %struct.GPR, %struct.GPR* %5495, i32 0, i32 1
  %5497 = getelementptr inbounds %struct.Reg, %struct.Reg* %5496, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %5497 to i64*
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5499 = getelementptr inbounds %struct.GPR, %struct.GPR* %5498, i32 0, i32 15
  %5500 = getelementptr inbounds %struct.Reg, %struct.Reg* %5499, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %5500 to i64*
  %5501 = load i64, i64* %RBP.i149
  %5502 = sub i64 %5501, 32
  %5503 = load i64, i64* %PC.i147
  %5504 = add i64 %5503, 4
  store i64 %5504, i64* %PC.i147
  %5505 = inttoptr i64 %5502 to i32*
  %5506 = load i32, i32* %5505
  %5507 = sext i32 %5506 to i64
  store i64 %5507, i64* %RAX.i148, align 8
  store %struct.Memory* %loadMem_48a511, %struct.Memory** %MEMORY
  %loadMem_48a515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5509 = getelementptr inbounds %struct.GPR, %struct.GPR* %5508, i32 0, i32 33
  %5510 = getelementptr inbounds %struct.Reg, %struct.Reg* %5509, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %5510 to i64*
  %5511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5512 = getelementptr inbounds %struct.GPR, %struct.GPR* %5511, i32 0, i32 1
  %5513 = getelementptr inbounds %struct.Reg, %struct.Reg* %5512, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %5513 to i64*
  %5514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5515 = getelementptr inbounds %struct.GPR, %struct.GPR* %5514, i32 0, i32 5
  %5516 = getelementptr inbounds %struct.Reg, %struct.Reg* %5515, i32 0, i32 0
  %RCX.i146 = bitcast %union.anon* %5516 to i64*
  %5517 = load i64, i64* %RAX.i145
  %5518 = add i64 %5517, 12099168
  %5519 = load i64, i64* %PC.i144
  %5520 = add i64 %5519, 8
  store i64 %5520, i64* %PC.i144
  %5521 = inttoptr i64 %5518 to i8*
  %5522 = load i8, i8* %5521
  %5523 = zext i8 %5522 to i64
  store i64 %5523, i64* %RCX.i146, align 8
  store %struct.Memory* %loadMem_48a515, %struct.Memory** %MEMORY
  %loadMem_48a51d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5525 = getelementptr inbounds %struct.GPR, %struct.GPR* %5524, i32 0, i32 33
  %5526 = getelementptr inbounds %struct.Reg, %struct.Reg* %5525, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %5526 to i64*
  %5527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5528 = getelementptr inbounds %struct.GPR, %struct.GPR* %5527, i32 0, i32 5
  %5529 = getelementptr inbounds %struct.Reg, %struct.Reg* %5528, i32 0, i32 0
  %ECX.i143 = bitcast %union.anon* %5529 to i32*
  %5530 = load i32, i32* %ECX.i143
  %5531 = zext i32 %5530 to i64
  %5532 = load i64, i64* %PC.i142
  %5533 = add i64 %5532, 3
  store i64 %5533, i64* %PC.i142
  %5534 = sub i32 %5530, 2
  %5535 = icmp ult i32 %5530, 2
  %5536 = zext i1 %5535 to i8
  %5537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5536, i8* %5537, align 1
  %5538 = and i32 %5534, 255
  %5539 = call i32 @llvm.ctpop.i32(i32 %5538)
  %5540 = trunc i32 %5539 to i8
  %5541 = and i8 %5540, 1
  %5542 = xor i8 %5541, 1
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5542, i8* %5543, align 1
  %5544 = xor i64 2, %5531
  %5545 = trunc i64 %5544 to i32
  %5546 = xor i32 %5545, %5534
  %5547 = lshr i32 %5546, 4
  %5548 = trunc i32 %5547 to i8
  %5549 = and i8 %5548, 1
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5549, i8* %5550, align 1
  %5551 = icmp eq i32 %5534, 0
  %5552 = zext i1 %5551 to i8
  %5553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5552, i8* %5553, align 1
  %5554 = lshr i32 %5534, 31
  %5555 = trunc i32 %5554 to i8
  %5556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5555, i8* %5556, align 1
  %5557 = lshr i32 %5530, 31
  %5558 = xor i32 %5554, %5557
  %5559 = add i32 %5558, %5557
  %5560 = icmp eq i32 %5559, 2
  %5561 = zext i1 %5560 to i8
  %5562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5561, i8* %5562, align 1
  store %struct.Memory* %loadMem_48a51d, %struct.Memory** %MEMORY
  %loadMem_48a520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5564 = getelementptr inbounds %struct.GPR, %struct.GPR* %5563, i32 0, i32 33
  %5565 = getelementptr inbounds %struct.Reg, %struct.Reg* %5564, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %5565 to i64*
  %5566 = load i64, i64* %PC.i141
  %5567 = add i64 %5566, 34
  %5568 = load i64, i64* %PC.i141
  %5569 = add i64 %5568, 6
  %5570 = load i64, i64* %PC.i141
  %5571 = add i64 %5570, 6
  store i64 %5571, i64* %PC.i141
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5573 = load i8, i8* %5572, align 1
  %5574 = icmp eq i8 %5573, 0
  %5575 = zext i1 %5574 to i8
  store i8 %5575, i8* %BRANCH_TAKEN, align 1
  %5576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5577 = select i1 %5574, i64 %5567, i64 %5569
  store i64 %5577, i64* %5576, align 8
  store %struct.Memory* %loadMem_48a520, %struct.Memory** %MEMORY
  %loadBr_48a520 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a520 = icmp eq i8 %loadBr_48a520, 1
  br i1 %cmpBr_48a520, label %block_.L_48a542, label %block_.L_48a526

block_.L_48a526:                                  ; preds = %block_48a511, %block_48a4fc
  %loadMem_48a526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5579 = getelementptr inbounds %struct.GPR, %struct.GPR* %5578, i32 0, i32 33
  %5580 = getelementptr inbounds %struct.Reg, %struct.Reg* %5579, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %5580 to i64*
  %5581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5582 = getelementptr inbounds %struct.GPR, %struct.GPR* %5581, i32 0, i32 11
  %5583 = getelementptr inbounds %struct.Reg, %struct.Reg* %5582, i32 0, i32 0
  %RDI.i139 = bitcast %union.anon* %5583 to i64*
  %5584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5585 = getelementptr inbounds %struct.GPR, %struct.GPR* %5584, i32 0, i32 15
  %5586 = getelementptr inbounds %struct.Reg, %struct.Reg* %5585, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %5586 to i64*
  %5587 = load i64, i64* %RBP.i140
  %5588 = sub i64 %5587, 32
  %5589 = load i64, i64* %PC.i138
  %5590 = add i64 %5589, 3
  store i64 %5590, i64* %PC.i138
  %5591 = inttoptr i64 %5588 to i32*
  %5592 = load i32, i32* %5591
  %5593 = zext i32 %5592 to i64
  store i64 %5593, i64* %RDI.i139, align 8
  store %struct.Memory* %loadMem_48a526, %struct.Memory** %MEMORY
  %loadMem_48a529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5595 = getelementptr inbounds %struct.GPR, %struct.GPR* %5594, i32 0, i32 33
  %5596 = getelementptr inbounds %struct.Reg, %struct.Reg* %5595, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %5596 to i64*
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5598 = getelementptr inbounds %struct.GPR, %struct.GPR* %5597, i32 0, i32 9
  %5599 = getelementptr inbounds %struct.Reg, %struct.Reg* %5598, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5599 to i64*
  %5600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5601 = getelementptr inbounds %struct.GPR, %struct.GPR* %5600, i32 0, i32 15
  %5602 = getelementptr inbounds %struct.Reg, %struct.Reg* %5601, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %5602 to i64*
  %5603 = load i64, i64* %RBP.i137
  %5604 = sub i64 %5603, 32
  %5605 = load i64, i64* %PC.i136
  %5606 = add i64 %5605, 3
  store i64 %5606, i64* %PC.i136
  %5607 = inttoptr i64 %5604 to i32*
  %5608 = load i32, i32* %5607
  %5609 = zext i32 %5608 to i64
  store i64 %5609, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_48a529, %struct.Memory** %MEMORY
  %loadMem1_48a52c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5611 = getelementptr inbounds %struct.GPR, %struct.GPR* %5610, i32 0, i32 33
  %5612 = getelementptr inbounds %struct.Reg, %struct.Reg* %5611, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %5612 to i64*
  %5613 = load i64, i64* %PC.i135
  %5614 = add i64 %5613, -9276
  %5615 = load i64, i64* %PC.i135
  %5616 = add i64 %5615, 5
  %5617 = load i64, i64* %PC.i135
  %5618 = add i64 %5617, 5
  store i64 %5618, i64* %PC.i135
  %5619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5620 = load i64, i64* %5619, align 8
  %5621 = add i64 %5620, -8
  %5622 = inttoptr i64 %5621 to i64*
  store i64 %5616, i64* %5622
  store i64 %5621, i64* %5619, align 8
  %5623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5614, i64* %5623, align 8
  store %struct.Memory* %loadMem1_48a52c, %struct.Memory** %MEMORY
  %loadMem2_48a52c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48a52c = load i64, i64* %3
  %call2_48a52c = call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* %0, i64 %loadPC_48a52c, %struct.Memory* %loadMem2_48a52c)
  store %struct.Memory* %call2_48a52c, %struct.Memory** %MEMORY
  %loadMem_48a531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5625 = getelementptr inbounds %struct.GPR, %struct.GPR* %5624, i32 0, i32 33
  %5626 = getelementptr inbounds %struct.Reg, %struct.Reg* %5625, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %5626 to i64*
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5628 = getelementptr inbounds %struct.GPR, %struct.GPR* %5627, i32 0, i32 1
  %5629 = getelementptr inbounds %struct.Reg, %struct.Reg* %5628, i32 0, i32 0
  %EAX.i134 = bitcast %union.anon* %5629 to i32*
  %5630 = load i32, i32* %EAX.i134
  %5631 = zext i32 %5630 to i64
  %5632 = load i64, i64* %PC.i133
  %5633 = add i64 %5632, 3
  store i64 %5633, i64* %PC.i133
  %5634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5634, align 1
  %5635 = and i32 %5630, 255
  %5636 = call i32 @llvm.ctpop.i32(i32 %5635)
  %5637 = trunc i32 %5636 to i8
  %5638 = and i8 %5637, 1
  %5639 = xor i8 %5638, 1
  %5640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5639, i8* %5640, align 1
  %5641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5641, align 1
  %5642 = icmp eq i32 %5630, 0
  %5643 = zext i1 %5642 to i8
  %5644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5643, i8* %5644, align 1
  %5645 = lshr i32 %5630, 31
  %5646 = trunc i32 %5645 to i8
  %5647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5646, i8* %5647, align 1
  %5648 = lshr i32 %5630, 31
  %5649 = xor i32 %5645, %5648
  %5650 = add i32 %5649, %5648
  %5651 = icmp eq i32 %5650, 2
  %5652 = zext i1 %5651 to i8
  %5653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5652, i8* %5653, align 1
  store %struct.Memory* %loadMem_48a531, %struct.Memory** %MEMORY
  %loadMem_48a534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5655 = getelementptr inbounds %struct.GPR, %struct.GPR* %5654, i32 0, i32 33
  %5656 = getelementptr inbounds %struct.Reg, %struct.Reg* %5655, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %5656 to i64*
  %5657 = load i64, i64* %PC.i132
  %5658 = add i64 %5657, 14
  %5659 = load i64, i64* %PC.i132
  %5660 = add i64 %5659, 6
  %5661 = load i64, i64* %PC.i132
  %5662 = add i64 %5661, 6
  store i64 %5662, i64* %PC.i132
  %5663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5664 = load i8, i8* %5663, align 1
  store i8 %5664, i8* %BRANCH_TAKEN, align 1
  %5665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5666 = icmp ne i8 %5664, 0
  %5667 = select i1 %5666, i64 %5658, i64 %5660
  store i64 %5667, i64* %5665, align 8
  store %struct.Memory* %loadMem_48a534, %struct.Memory** %MEMORY
  %loadBr_48a534 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a534 = icmp eq i8 %loadBr_48a534, 1
  br i1 %cmpBr_48a534, label %block_.L_48a542, label %block_48a53a

block_48a53a:                                     ; preds = %block_.L_48a526
  %loadMem_48a53a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5669 = getelementptr inbounds %struct.GPR, %struct.GPR* %5668, i32 0, i32 33
  %5670 = getelementptr inbounds %struct.Reg, %struct.Reg* %5669, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %5670 to i64*
  %5671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5672 = getelementptr inbounds %struct.GPR, %struct.GPR* %5671, i32 0, i32 11
  %5673 = getelementptr inbounds %struct.Reg, %struct.Reg* %5672, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5673 to i64*
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5675 = getelementptr inbounds %struct.GPR, %struct.GPR* %5674, i32 0, i32 15
  %5676 = getelementptr inbounds %struct.Reg, %struct.Reg* %5675, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %5676 to i64*
  %5677 = load i64, i64* %RBP.i131
  %5678 = sub i64 %5677, 32
  %5679 = load i64, i64* %PC.i130
  %5680 = add i64 %5679, 3
  store i64 %5680, i64* %PC.i130
  %5681 = inttoptr i64 %5678 to i32*
  %5682 = load i32, i32* %5681
  %5683 = zext i32 %5682 to i64
  store i64 %5683, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_48a53a, %struct.Memory** %MEMORY
  %loadMem1_48a53d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5685 = getelementptr inbounds %struct.GPR, %struct.GPR* %5684, i32 0, i32 33
  %5686 = getelementptr inbounds %struct.Reg, %struct.Reg* %5685, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %5686 to i64*
  %5687 = load i64, i64* %PC.i129
  %5688 = add i64 %5687, -8381
  %5689 = load i64, i64* %PC.i129
  %5690 = add i64 %5689, 5
  %5691 = load i64, i64* %PC.i129
  %5692 = add i64 %5691, 5
  store i64 %5692, i64* %PC.i129
  %5693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5694 = load i64, i64* %5693, align 8
  %5695 = add i64 %5694, -8
  %5696 = inttoptr i64 %5695 to i64*
  store i64 %5690, i64* %5696
  store i64 %5695, i64* %5693, align 8
  %5697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5688, i64* %5697, align 8
  store %struct.Memory* %loadMem1_48a53d, %struct.Memory** %MEMORY
  %loadMem2_48a53d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48a53d = load i64, i64* %3
  %call2_48a53d = call %struct.Memory* @sub_488480.propagate_worm(%struct.State* %0, i64 %loadPC_48a53d, %struct.Memory* %loadMem2_48a53d)
  store %struct.Memory* %call2_48a53d, %struct.Memory** %MEMORY
  br label %block_.L_48a542

block_.L_48a542:                                  ; preds = %block_48a53a, %block_.L_48a526, %block_48a511
  %loadMem_48a542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5699 = getelementptr inbounds %struct.GPR, %struct.GPR* %5698, i32 0, i32 33
  %5700 = getelementptr inbounds %struct.Reg, %struct.Reg* %5699, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %5700 to i64*
  %5701 = load i64, i64* %PC.i128
  %5702 = add i64 %5701, 5
  %5703 = load i64, i64* %PC.i128
  %5704 = add i64 %5703, 5
  store i64 %5704, i64* %PC.i128
  %5705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5702, i64* %5705, align 8
  store %struct.Memory* %loadMem_48a542, %struct.Memory** %MEMORY
  br label %block_.L_48a547

block_.L_48a547:                                  ; preds = %block_.L_48a542
  %loadMem_48a547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5707 = getelementptr inbounds %struct.GPR, %struct.GPR* %5706, i32 0, i32 33
  %5708 = getelementptr inbounds %struct.Reg, %struct.Reg* %5707, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %5708 to i64*
  %5709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5710 = getelementptr inbounds %struct.GPR, %struct.GPR* %5709, i32 0, i32 1
  %5711 = getelementptr inbounds %struct.Reg, %struct.Reg* %5710, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %5711 to i64*
  %5712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5713 = getelementptr inbounds %struct.GPR, %struct.GPR* %5712, i32 0, i32 15
  %5714 = getelementptr inbounds %struct.Reg, %struct.Reg* %5713, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %5714 to i64*
  %5715 = load i64, i64* %RBP.i127
  %5716 = sub i64 %5715, 32
  %5717 = load i64, i64* %PC.i125
  %5718 = add i64 %5717, 3
  store i64 %5718, i64* %PC.i125
  %5719 = inttoptr i64 %5716 to i32*
  %5720 = load i32, i32* %5719
  %5721 = zext i32 %5720 to i64
  store i64 %5721, i64* %RAX.i126, align 8
  store %struct.Memory* %loadMem_48a547, %struct.Memory** %MEMORY
  %loadMem_48a54a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5723 = getelementptr inbounds %struct.GPR, %struct.GPR* %5722, i32 0, i32 33
  %5724 = getelementptr inbounds %struct.Reg, %struct.Reg* %5723, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %5724 to i64*
  %5725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5726 = getelementptr inbounds %struct.GPR, %struct.GPR* %5725, i32 0, i32 1
  %5727 = getelementptr inbounds %struct.Reg, %struct.Reg* %5726, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %5727 to i64*
  %5728 = load i64, i64* %RAX.i124
  %5729 = load i64, i64* %PC.i123
  %5730 = add i64 %5729, 3
  store i64 %5730, i64* %PC.i123
  %5731 = trunc i64 %5728 to i32
  %5732 = add i32 1, %5731
  %5733 = zext i32 %5732 to i64
  store i64 %5733, i64* %RAX.i124, align 8
  %5734 = icmp ult i32 %5732, %5731
  %5735 = icmp ult i32 %5732, 1
  %5736 = or i1 %5734, %5735
  %5737 = zext i1 %5736 to i8
  %5738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5737, i8* %5738, align 1
  %5739 = and i32 %5732, 255
  %5740 = call i32 @llvm.ctpop.i32(i32 %5739)
  %5741 = trunc i32 %5740 to i8
  %5742 = and i8 %5741, 1
  %5743 = xor i8 %5742, 1
  %5744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5743, i8* %5744, align 1
  %5745 = xor i64 1, %5728
  %5746 = trunc i64 %5745 to i32
  %5747 = xor i32 %5746, %5732
  %5748 = lshr i32 %5747, 4
  %5749 = trunc i32 %5748 to i8
  %5750 = and i8 %5749, 1
  %5751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5750, i8* %5751, align 1
  %5752 = icmp eq i32 %5732, 0
  %5753 = zext i1 %5752 to i8
  %5754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5753, i8* %5754, align 1
  %5755 = lshr i32 %5732, 31
  %5756 = trunc i32 %5755 to i8
  %5757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5756, i8* %5757, align 1
  %5758 = lshr i32 %5731, 31
  %5759 = xor i32 %5755, %5758
  %5760 = add i32 %5759, %5755
  %5761 = icmp eq i32 %5760, 2
  %5762 = zext i1 %5761 to i8
  %5763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5762, i8* %5763, align 1
  store %struct.Memory* %loadMem_48a54a, %struct.Memory** %MEMORY
  %loadMem_48a54d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5765 = getelementptr inbounds %struct.GPR, %struct.GPR* %5764, i32 0, i32 33
  %5766 = getelementptr inbounds %struct.Reg, %struct.Reg* %5765, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %5766 to i64*
  %5767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5768 = getelementptr inbounds %struct.GPR, %struct.GPR* %5767, i32 0, i32 1
  %5769 = getelementptr inbounds %struct.Reg, %struct.Reg* %5768, i32 0, i32 0
  %EAX.i121 = bitcast %union.anon* %5769 to i32*
  %5770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5771 = getelementptr inbounds %struct.GPR, %struct.GPR* %5770, i32 0, i32 15
  %5772 = getelementptr inbounds %struct.Reg, %struct.Reg* %5771, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %5772 to i64*
  %5773 = load i64, i64* %RBP.i122
  %5774 = sub i64 %5773, 32
  %5775 = load i32, i32* %EAX.i121
  %5776 = zext i32 %5775 to i64
  %5777 = load i64, i64* %PC.i120
  %5778 = add i64 %5777, 3
  store i64 %5778, i64* %PC.i120
  %5779 = inttoptr i64 %5774 to i32*
  store i32 %5775, i32* %5779
  store %struct.Memory* %loadMem_48a54d, %struct.Memory** %MEMORY
  %loadMem_48a550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5781 = getelementptr inbounds %struct.GPR, %struct.GPR* %5780, i32 0, i32 33
  %5782 = getelementptr inbounds %struct.Reg, %struct.Reg* %5781, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %5782 to i64*
  %5783 = load i64, i64* %PC.i119
  %5784 = add i64 %5783, -97
  %5785 = load i64, i64* %PC.i119
  %5786 = add i64 %5785, 5
  store i64 %5786, i64* %PC.i119
  %5787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5784, i64* %5787, align 8
  store %struct.Memory* %loadMem_48a550, %struct.Memory** %MEMORY
  br label %block_.L_48a4ef

block_.L_48a555:                                  ; preds = %block_.L_48a4ef
  %loadMem_48a555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5789 = getelementptr inbounds %struct.GPR, %struct.GPR* %5788, i32 0, i32 33
  %5790 = getelementptr inbounds %struct.Reg, %struct.Reg* %5789, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %5790 to i64*
  %5791 = load i64, i64* %PC.i118
  %5792 = add i64 %5791, 5
  %5793 = load i64, i64* %PC.i118
  %5794 = add i64 %5793, 5
  store i64 %5794, i64* %PC.i118
  %5795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5792, i64* %5795, align 8
  store %struct.Memory* %loadMem_48a555, %struct.Memory** %MEMORY
  br label %block_.L_48a55a

block_.L_48a55a:                                  ; preds = %block_.L_48a555, %block_.L_48a3a6
  %loadMem_48a55a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5797 = getelementptr inbounds %struct.GPR, %struct.GPR* %5796, i32 0, i32 33
  %5798 = getelementptr inbounds %struct.Reg, %struct.Reg* %5797, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %5798 to i64*
  %5799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5800 = getelementptr inbounds %struct.GPR, %struct.GPR* %5799, i32 0, i32 15
  %5801 = getelementptr inbounds %struct.Reg, %struct.Reg* %5800, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %5801 to i64*
  %5802 = load i64, i64* %RBP.i117
  %5803 = sub i64 %5802, 32
  %5804 = load i64, i64* %PC.i116
  %5805 = add i64 %5804, 7
  store i64 %5805, i64* %PC.i116
  %5806 = inttoptr i64 %5803 to i32*
  store i32 21, i32* %5806
  store %struct.Memory* %loadMem_48a55a, %struct.Memory** %MEMORY
  br label %block_.L_48a561

block_.L_48a561:                                  ; preds = %block_.L_48a639, %block_.L_48a55a
  %loadMem_48a561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5808 = getelementptr inbounds %struct.GPR, %struct.GPR* %5807, i32 0, i32 33
  %5809 = getelementptr inbounds %struct.Reg, %struct.Reg* %5808, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %5809 to i64*
  %5810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5811 = getelementptr inbounds %struct.GPR, %struct.GPR* %5810, i32 0, i32 15
  %5812 = getelementptr inbounds %struct.Reg, %struct.Reg* %5811, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %5812 to i64*
  %5813 = load i64, i64* %RBP.i115
  %5814 = sub i64 %5813, 32
  %5815 = load i64, i64* %PC.i114
  %5816 = add i64 %5815, 7
  store i64 %5816, i64* %PC.i114
  %5817 = inttoptr i64 %5814 to i32*
  %5818 = load i32, i32* %5817
  %5819 = sub i32 %5818, 400
  %5820 = icmp ult i32 %5818, 400
  %5821 = zext i1 %5820 to i8
  %5822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5821, i8* %5822, align 1
  %5823 = and i32 %5819, 255
  %5824 = call i32 @llvm.ctpop.i32(i32 %5823)
  %5825 = trunc i32 %5824 to i8
  %5826 = and i8 %5825, 1
  %5827 = xor i8 %5826, 1
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5827, i8* %5828, align 1
  %5829 = xor i32 %5818, 400
  %5830 = xor i32 %5829, %5819
  %5831 = lshr i32 %5830, 4
  %5832 = trunc i32 %5831 to i8
  %5833 = and i8 %5832, 1
  %5834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5833, i8* %5834, align 1
  %5835 = icmp eq i32 %5819, 0
  %5836 = zext i1 %5835 to i8
  %5837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5836, i8* %5837, align 1
  %5838 = lshr i32 %5819, 31
  %5839 = trunc i32 %5838 to i8
  %5840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5839, i8* %5840, align 1
  %5841 = lshr i32 %5818, 31
  %5842 = xor i32 %5838, %5841
  %5843 = add i32 %5842, %5841
  %5844 = icmp eq i32 %5843, 2
  %5845 = zext i1 %5844 to i8
  %5846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5845, i8* %5846, align 1
  store %struct.Memory* %loadMem_48a561, %struct.Memory** %MEMORY
  %loadMem_48a568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5848 = getelementptr inbounds %struct.GPR, %struct.GPR* %5847, i32 0, i32 33
  %5849 = getelementptr inbounds %struct.Reg, %struct.Reg* %5848, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %5849 to i64*
  %5850 = load i64, i64* %PC.i113
  %5851 = add i64 %5850, 223
  %5852 = load i64, i64* %PC.i113
  %5853 = add i64 %5852, 6
  %5854 = load i64, i64* %PC.i113
  %5855 = add i64 %5854, 6
  store i64 %5855, i64* %PC.i113
  %5856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5857 = load i8, i8* %5856, align 1
  %5858 = icmp ne i8 %5857, 0
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5860 = load i8, i8* %5859, align 1
  %5861 = icmp ne i8 %5860, 0
  %5862 = xor i1 %5858, %5861
  %5863 = xor i1 %5862, true
  %5864 = zext i1 %5863 to i8
  store i8 %5864, i8* %BRANCH_TAKEN, align 1
  %5865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5866 = select i1 %5862, i64 %5853, i64 %5851
  store i64 %5866, i64* %5865, align 8
  store %struct.Memory* %loadMem_48a568, %struct.Memory** %MEMORY
  %loadBr_48a568 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a568 = icmp eq i8 %loadBr_48a568, 1
  br i1 %cmpBr_48a568, label %block_.L_48a647, label %block_48a56e

block_48a56e:                                     ; preds = %block_.L_48a561
  %loadMem_48a56e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5868 = getelementptr inbounds %struct.GPR, %struct.GPR* %5867, i32 0, i32 33
  %5869 = getelementptr inbounds %struct.Reg, %struct.Reg* %5868, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %5869 to i64*
  %5870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5871 = getelementptr inbounds %struct.GPR, %struct.GPR* %5870, i32 0, i32 1
  %5872 = getelementptr inbounds %struct.Reg, %struct.Reg* %5871, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %5872 to i64*
  %5873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5874 = getelementptr inbounds %struct.GPR, %struct.GPR* %5873, i32 0, i32 15
  %5875 = getelementptr inbounds %struct.Reg, %struct.Reg* %5874, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %5875 to i64*
  %5876 = load i64, i64* %RBP.i112
  %5877 = sub i64 %5876, 32
  %5878 = load i64, i64* %PC.i110
  %5879 = add i64 %5878, 4
  store i64 %5879, i64* %PC.i110
  %5880 = inttoptr i64 %5877 to i32*
  %5881 = load i32, i32* %5880
  %5882 = sext i32 %5881 to i64
  store i64 %5882, i64* %RAX.i111, align 8
  store %struct.Memory* %loadMem_48a56e, %struct.Memory** %MEMORY
  %loadMem_48a572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5884 = getelementptr inbounds %struct.GPR, %struct.GPR* %5883, i32 0, i32 33
  %5885 = getelementptr inbounds %struct.Reg, %struct.Reg* %5884, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %5885 to i64*
  %5886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5887 = getelementptr inbounds %struct.GPR, %struct.GPR* %5886, i32 0, i32 1
  %5888 = getelementptr inbounds %struct.Reg, %struct.Reg* %5887, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %5888 to i64*
  %5889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5890 = getelementptr inbounds %struct.GPR, %struct.GPR* %5889, i32 0, i32 5
  %5891 = getelementptr inbounds %struct.Reg, %struct.Reg* %5890, i32 0, i32 0
  %RCX.i109 = bitcast %union.anon* %5891 to i64*
  %5892 = load i64, i64* %RAX.i108
  %5893 = add i64 %5892, 12099168
  %5894 = load i64, i64* %PC.i107
  %5895 = add i64 %5894, 8
  store i64 %5895, i64* %PC.i107
  %5896 = inttoptr i64 %5893 to i8*
  %5897 = load i8, i8* %5896
  %5898 = zext i8 %5897 to i64
  store i64 %5898, i64* %RCX.i109, align 8
  store %struct.Memory* %loadMem_48a572, %struct.Memory** %MEMORY
  %loadMem_48a57a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5900 = getelementptr inbounds %struct.GPR, %struct.GPR* %5899, i32 0, i32 33
  %5901 = getelementptr inbounds %struct.Reg, %struct.Reg* %5900, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %5901 to i64*
  %5902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5903 = getelementptr inbounds %struct.GPR, %struct.GPR* %5902, i32 0, i32 5
  %5904 = getelementptr inbounds %struct.Reg, %struct.Reg* %5903, i32 0, i32 0
  %ECX.i106 = bitcast %union.anon* %5904 to i32*
  %5905 = load i32, i32* %ECX.i106
  %5906 = zext i32 %5905 to i64
  %5907 = load i64, i64* %PC.i105
  %5908 = add i64 %5907, 3
  store i64 %5908, i64* %PC.i105
  %5909 = sub i32 %5905, 3
  %5910 = icmp ult i32 %5905, 3
  %5911 = zext i1 %5910 to i8
  %5912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5911, i8* %5912, align 1
  %5913 = and i32 %5909, 255
  %5914 = call i32 @llvm.ctpop.i32(i32 %5913)
  %5915 = trunc i32 %5914 to i8
  %5916 = and i8 %5915, 1
  %5917 = xor i8 %5916, 1
  %5918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5917, i8* %5918, align 1
  %5919 = xor i64 3, %5906
  %5920 = trunc i64 %5919 to i32
  %5921 = xor i32 %5920, %5909
  %5922 = lshr i32 %5921, 4
  %5923 = trunc i32 %5922 to i8
  %5924 = and i8 %5923, 1
  %5925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5924, i8* %5925, align 1
  %5926 = icmp eq i32 %5909, 0
  %5927 = zext i1 %5926 to i8
  %5928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5927, i8* %5928, align 1
  %5929 = lshr i32 %5909, 31
  %5930 = trunc i32 %5929 to i8
  %5931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5930, i8* %5931, align 1
  %5932 = lshr i32 %5905, 31
  %5933 = xor i32 %5929, %5932
  %5934 = add i32 %5933, %5932
  %5935 = icmp eq i32 %5934, 2
  %5936 = zext i1 %5935 to i8
  %5937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5936, i8* %5937, align 1
  store %struct.Memory* %loadMem_48a57a, %struct.Memory** %MEMORY
  %loadMem_48a57d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5939 = getelementptr inbounds %struct.GPR, %struct.GPR* %5938, i32 0, i32 33
  %5940 = getelementptr inbounds %struct.Reg, %struct.Reg* %5939, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %5940 to i64*
  %5941 = load i64, i64* %PC.i104
  %5942 = add i64 %5941, 11
  %5943 = load i64, i64* %PC.i104
  %5944 = add i64 %5943, 6
  %5945 = load i64, i64* %PC.i104
  %5946 = add i64 %5945, 6
  store i64 %5946, i64* %PC.i104
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5948 = load i8, i8* %5947, align 1
  %5949 = icmp eq i8 %5948, 0
  %5950 = zext i1 %5949 to i8
  store i8 %5950, i8* %BRANCH_TAKEN, align 1
  %5951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5952 = select i1 %5949, i64 %5942, i64 %5944
  store i64 %5952, i64* %5951, align 8
  store %struct.Memory* %loadMem_48a57d, %struct.Memory** %MEMORY
  %loadBr_48a57d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a57d = icmp eq i8 %loadBr_48a57d, 1
  br i1 %cmpBr_48a57d, label %block_.L_48a588, label %block_48a583

block_48a583:                                     ; preds = %block_48a56e
  %loadMem_48a583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5954 = getelementptr inbounds %struct.GPR, %struct.GPR* %5953, i32 0, i32 33
  %5955 = getelementptr inbounds %struct.Reg, %struct.Reg* %5954, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %5955 to i64*
  %5956 = load i64, i64* %PC.i103
  %5957 = add i64 %5956, 182
  %5958 = load i64, i64* %PC.i103
  %5959 = add i64 %5958, 5
  store i64 %5959, i64* %PC.i103
  %5960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5957, i64* %5960, align 8
  store %struct.Memory* %loadMem_48a583, %struct.Memory** %MEMORY
  br label %block_.L_48a639

block_.L_48a588:                                  ; preds = %block_48a56e
  %loadMem_48a588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5962 = getelementptr inbounds %struct.GPR, %struct.GPR* %5961, i32 0, i32 33
  %5963 = getelementptr inbounds %struct.Reg, %struct.Reg* %5962, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %5963 to i64*
  %5964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5965 = getelementptr inbounds %struct.GPR, %struct.GPR* %5964, i32 0, i32 1
  %5966 = getelementptr inbounds %struct.Reg, %struct.Reg* %5965, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %5966 to i64*
  %5967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5968 = getelementptr inbounds %struct.GPR, %struct.GPR* %5967, i32 0, i32 15
  %5969 = getelementptr inbounds %struct.Reg, %struct.Reg* %5968, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %5969 to i64*
  %5970 = load i64, i64* %RBP.i102
  %5971 = sub i64 %5970, 32
  %5972 = load i64, i64* %PC.i100
  %5973 = add i64 %5972, 4
  store i64 %5973, i64* %PC.i100
  %5974 = inttoptr i64 %5971 to i32*
  %5975 = load i32, i32* %5974
  %5976 = sext i32 %5975 to i64
  store i64 %5976, i64* %RAX.i101, align 8
  store %struct.Memory* %loadMem_48a588, %struct.Memory** %MEMORY
  %loadMem_48a58c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5978 = getelementptr inbounds %struct.GPR, %struct.GPR* %5977, i32 0, i32 33
  %5979 = getelementptr inbounds %struct.Reg, %struct.Reg* %5978, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %5979 to i64*
  %5980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5981 = getelementptr inbounds %struct.GPR, %struct.GPR* %5980, i32 0, i32 1
  %5982 = getelementptr inbounds %struct.Reg, %struct.Reg* %5981, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %5982 to i64*
  %5983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5984 = getelementptr inbounds %struct.GPR, %struct.GPR* %5983, i32 0, i32 15
  %5985 = getelementptr inbounds %struct.Reg, %struct.Reg* %5984, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %5985 to i64*
  %5986 = load i64, i64* %RBP.i99
  %5987 = load i64, i64* %RAX.i98
  %5988 = mul i64 %5987, 4
  %5989 = add i64 %5986, -3232
  %5990 = add i64 %5989, %5988
  %5991 = load i64, i64* %PC.i97
  %5992 = add i64 %5991, 8
  store i64 %5992, i64* %PC.i97
  %5993 = inttoptr i64 %5990 to i32*
  %5994 = load i32, i32* %5993
  %5995 = sub i32 %5994, 4
  %5996 = icmp ult i32 %5994, 4
  %5997 = zext i1 %5996 to i8
  %5998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5997, i8* %5998, align 1
  %5999 = and i32 %5995, 255
  %6000 = call i32 @llvm.ctpop.i32(i32 %5999)
  %6001 = trunc i32 %6000 to i8
  %6002 = and i8 %6001, 1
  %6003 = xor i8 %6002, 1
  %6004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6003, i8* %6004, align 1
  %6005 = xor i32 %5994, 4
  %6006 = xor i32 %6005, %5995
  %6007 = lshr i32 %6006, 4
  %6008 = trunc i32 %6007 to i8
  %6009 = and i8 %6008, 1
  %6010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6009, i8* %6010, align 1
  %6011 = icmp eq i32 %5995, 0
  %6012 = zext i1 %6011 to i8
  %6013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6012, i8* %6013, align 1
  %6014 = lshr i32 %5995, 31
  %6015 = trunc i32 %6014 to i8
  %6016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6015, i8* %6016, align 1
  %6017 = lshr i32 %5994, 31
  %6018 = xor i32 %6014, %6017
  %6019 = add i32 %6018, %6017
  %6020 = icmp eq i32 %6019, 2
  %6021 = zext i1 %6020 to i8
  %6022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6021, i8* %6022, align 1
  store %struct.Memory* %loadMem_48a58c, %struct.Memory** %MEMORY
  %loadMem_48a594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6024 = getelementptr inbounds %struct.GPR, %struct.GPR* %6023, i32 0, i32 33
  %6025 = getelementptr inbounds %struct.Reg, %struct.Reg* %6024, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %6025 to i64*
  %6026 = load i64, i64* %PC.i96
  %6027 = add i64 %6026, 26
  %6028 = load i64, i64* %PC.i96
  %6029 = add i64 %6028, 6
  %6030 = load i64, i64* %PC.i96
  %6031 = add i64 %6030, 6
  store i64 %6031, i64* %PC.i96
  %6032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6033 = load i8, i8* %6032, align 1
  %6034 = icmp ne i8 %6033, 0
  %6035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6036 = load i8, i8* %6035, align 1
  %6037 = icmp ne i8 %6036, 0
  %6038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6039 = load i8, i8* %6038, align 1
  %6040 = icmp ne i8 %6039, 0
  %6041 = xor i1 %6037, %6040
  %6042 = or i1 %6034, %6041
  %6043 = zext i1 %6042 to i8
  store i8 %6043, i8* %BRANCH_TAKEN, align 1
  %6044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6045 = select i1 %6042, i64 %6027, i64 %6029
  store i64 %6045, i64* %6044, align 8
  store %struct.Memory* %loadMem_48a594, %struct.Memory** %MEMORY
  %loadBr_48a594 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a594 = icmp eq i8 %loadBr_48a594, 1
  br i1 %cmpBr_48a594, label %block_.L_48a5ae, label %block_48a59a

block_48a59a:                                     ; preds = %block_.L_48a588
  %loadMem_48a59a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6047 = getelementptr inbounds %struct.GPR, %struct.GPR* %6046, i32 0, i32 33
  %6048 = getelementptr inbounds %struct.Reg, %struct.Reg* %6047, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %6048 to i64*
  %6049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6050 = getelementptr inbounds %struct.GPR, %struct.GPR* %6049, i32 0, i32 1
  %6051 = getelementptr inbounds %struct.Reg, %struct.Reg* %6050, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %6051 to i64*
  %6052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6053 = getelementptr inbounds %struct.GPR, %struct.GPR* %6052, i32 0, i32 15
  %6054 = getelementptr inbounds %struct.Reg, %struct.Reg* %6053, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %6054 to i64*
  %6055 = load i64, i64* %RBP.i95
  %6056 = sub i64 %6055, 24
  %6057 = load i64, i64* %PC.i93
  %6058 = add i64 %6057, 4
  store i64 %6058, i64* %PC.i93
  %6059 = inttoptr i64 %6056 to i64*
  %6060 = load i64, i64* %6059
  store i64 %6060, i64* %RAX.i94, align 8
  store %struct.Memory* %loadMem_48a59a, %struct.Memory** %MEMORY
  %loadMem_48a59e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6062 = getelementptr inbounds %struct.GPR, %struct.GPR* %6061, i32 0, i32 33
  %6063 = getelementptr inbounds %struct.Reg, %struct.Reg* %6062, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %6063 to i64*
  %6064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6065 = getelementptr inbounds %struct.GPR, %struct.GPR* %6064, i32 0, i32 5
  %6066 = getelementptr inbounds %struct.Reg, %struct.Reg* %6065, i32 0, i32 0
  %RCX.i91 = bitcast %union.anon* %6066 to i64*
  %6067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6068 = getelementptr inbounds %struct.GPR, %struct.GPR* %6067, i32 0, i32 15
  %6069 = getelementptr inbounds %struct.Reg, %struct.Reg* %6068, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %6069 to i64*
  %6070 = load i64, i64* %RBP.i92
  %6071 = sub i64 %6070, 32
  %6072 = load i64, i64* %PC.i90
  %6073 = add i64 %6072, 4
  store i64 %6073, i64* %PC.i90
  %6074 = inttoptr i64 %6071 to i32*
  %6075 = load i32, i32* %6074
  %6076 = sext i32 %6075 to i64
  store i64 %6076, i64* %RCX.i91, align 8
  store %struct.Memory* %loadMem_48a59e, %struct.Memory** %MEMORY
  %loadMem_48a5a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6078 = getelementptr inbounds %struct.GPR, %struct.GPR* %6077, i32 0, i32 33
  %6079 = getelementptr inbounds %struct.Reg, %struct.Reg* %6078, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %6079 to i64*
  %6080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6081 = getelementptr inbounds %struct.GPR, %struct.GPR* %6080, i32 0, i32 1
  %6082 = getelementptr inbounds %struct.Reg, %struct.Reg* %6081, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %6082 to i64*
  %6083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6084 = getelementptr inbounds %struct.GPR, %struct.GPR* %6083, i32 0, i32 5
  %6085 = getelementptr inbounds %struct.Reg, %struct.Reg* %6084, i32 0, i32 0
  %RCX.i89 = bitcast %union.anon* %6085 to i64*
  %6086 = load i64, i64* %RAX.i88
  %6087 = load i64, i64* %RCX.i89
  %6088 = mul i64 %6087, 4
  %6089 = add i64 %6088, %6086
  %6090 = load i64, i64* %PC.i87
  %6091 = add i64 %6090, 7
  store i64 %6091, i64* %PC.i87
  %6092 = inttoptr i64 %6089 to i32*
  store i32 0, i32* %6092
  store %struct.Memory* %loadMem_48a5a2, %struct.Memory** %MEMORY
  %loadMem_48a5a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6094 = getelementptr inbounds %struct.GPR, %struct.GPR* %6093, i32 0, i32 33
  %6095 = getelementptr inbounds %struct.Reg, %struct.Reg* %6094, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %6095 to i64*
  %6096 = load i64, i64* %PC.i86
  %6097 = add i64 %6096, 27
  %6098 = load i64, i64* %PC.i86
  %6099 = add i64 %6098, 5
  store i64 %6099, i64* %PC.i86
  %6100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6097, i64* %6100, align 8
  store %struct.Memory* %loadMem_48a5a9, %struct.Memory** %MEMORY
  br label %block_.L_48a5c4

block_.L_48a5ae:                                  ; preds = %block_.L_48a588
  %loadMem_48a5ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %6101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6102 = getelementptr inbounds %struct.GPR, %struct.GPR* %6101, i32 0, i32 33
  %6103 = getelementptr inbounds %struct.Reg, %struct.Reg* %6102, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %6103 to i64*
  %6104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6105 = getelementptr inbounds %struct.GPR, %struct.GPR* %6104, i32 0, i32 1
  %6106 = getelementptr inbounds %struct.Reg, %struct.Reg* %6105, i32 0, i32 0
  %RAX.i84 = bitcast %union.anon* %6106 to i64*
  %6107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6108 = getelementptr inbounds %struct.GPR, %struct.GPR* %6107, i32 0, i32 15
  %6109 = getelementptr inbounds %struct.Reg, %struct.Reg* %6108, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %6109 to i64*
  %6110 = load i64, i64* %RBP.i85
  %6111 = sub i64 %6110, 32
  %6112 = load i64, i64* %PC.i83
  %6113 = add i64 %6112, 4
  store i64 %6113, i64* %PC.i83
  %6114 = inttoptr i64 %6111 to i32*
  %6115 = load i32, i32* %6114
  %6116 = sext i32 %6115 to i64
  store i64 %6116, i64* %RAX.i84, align 8
  store %struct.Memory* %loadMem_48a5ae, %struct.Memory** %MEMORY
  %loadMem_48a5b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6118 = getelementptr inbounds %struct.GPR, %struct.GPR* %6117, i32 0, i32 33
  %6119 = getelementptr inbounds %struct.Reg, %struct.Reg* %6118, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %6119 to i64*
  %6120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6121 = getelementptr inbounds %struct.GPR, %struct.GPR* %6120, i32 0, i32 1
  %6122 = getelementptr inbounds %struct.Reg, %struct.Reg* %6121, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %6122 to i64*
  %6123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6124 = getelementptr inbounds %struct.GPR, %struct.GPR* %6123, i32 0, i32 5
  %6125 = getelementptr inbounds %struct.Reg, %struct.Reg* %6124, i32 0, i32 0
  %RCX.i81 = bitcast %union.anon* %6125 to i64*
  %6126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6127 = getelementptr inbounds %struct.GPR, %struct.GPR* %6126, i32 0, i32 15
  %6128 = getelementptr inbounds %struct.Reg, %struct.Reg* %6127, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %6128 to i64*
  %6129 = load i64, i64* %RBP.i82
  %6130 = load i64, i64* %RAX.i80
  %6131 = mul i64 %6130, 4
  %6132 = add i64 %6129, -3232
  %6133 = add i64 %6132, %6131
  %6134 = load i64, i64* %PC.i79
  %6135 = add i64 %6134, 7
  store i64 %6135, i64* %PC.i79
  %6136 = inttoptr i64 %6133 to i32*
  %6137 = load i32, i32* %6136
  %6138 = zext i32 %6137 to i64
  store i64 %6138, i64* %RCX.i81, align 8
  store %struct.Memory* %loadMem_48a5b2, %struct.Memory** %MEMORY
  %loadMem_48a5b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6140 = getelementptr inbounds %struct.GPR, %struct.GPR* %6139, i32 0, i32 33
  %6141 = getelementptr inbounds %struct.Reg, %struct.Reg* %6140, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %6141 to i64*
  %6142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6143 = getelementptr inbounds %struct.GPR, %struct.GPR* %6142, i32 0, i32 1
  %6144 = getelementptr inbounds %struct.Reg, %struct.Reg* %6143, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %6144 to i64*
  %6145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6146 = getelementptr inbounds %struct.GPR, %struct.GPR* %6145, i32 0, i32 15
  %6147 = getelementptr inbounds %struct.Reg, %struct.Reg* %6146, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %6147 to i64*
  %6148 = load i64, i64* %RBP.i78
  %6149 = sub i64 %6148, 24
  %6150 = load i64, i64* %PC.i76
  %6151 = add i64 %6150, 4
  store i64 %6151, i64* %PC.i76
  %6152 = inttoptr i64 %6149 to i64*
  %6153 = load i64, i64* %6152
  store i64 %6153, i64* %RAX.i77, align 8
  store %struct.Memory* %loadMem_48a5b9, %struct.Memory** %MEMORY
  %loadMem_48a5bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6155 = getelementptr inbounds %struct.GPR, %struct.GPR* %6154, i32 0, i32 33
  %6156 = getelementptr inbounds %struct.Reg, %struct.Reg* %6155, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %6156 to i64*
  %6157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6158 = getelementptr inbounds %struct.GPR, %struct.GPR* %6157, i32 0, i32 7
  %6159 = getelementptr inbounds %struct.Reg, %struct.Reg* %6158, i32 0, i32 0
  %RDX.i74 = bitcast %union.anon* %6159 to i64*
  %6160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6161 = getelementptr inbounds %struct.GPR, %struct.GPR* %6160, i32 0, i32 15
  %6162 = getelementptr inbounds %struct.Reg, %struct.Reg* %6161, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %6162 to i64*
  %6163 = load i64, i64* %RBP.i75
  %6164 = sub i64 %6163, 32
  %6165 = load i64, i64* %PC.i73
  %6166 = add i64 %6165, 4
  store i64 %6166, i64* %PC.i73
  %6167 = inttoptr i64 %6164 to i32*
  %6168 = load i32, i32* %6167
  %6169 = sext i32 %6168 to i64
  store i64 %6169, i64* %RDX.i74, align 8
  store %struct.Memory* %loadMem_48a5bd, %struct.Memory** %MEMORY
  %loadMem_48a5c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6171 = getelementptr inbounds %struct.GPR, %struct.GPR* %6170, i32 0, i32 33
  %6172 = getelementptr inbounds %struct.Reg, %struct.Reg* %6171, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %6172 to i64*
  %6173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6174 = getelementptr inbounds %struct.GPR, %struct.GPR* %6173, i32 0, i32 5
  %6175 = getelementptr inbounds %struct.Reg, %struct.Reg* %6174, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %6175 to i32*
  %6176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6177 = getelementptr inbounds %struct.GPR, %struct.GPR* %6176, i32 0, i32 1
  %6178 = getelementptr inbounds %struct.Reg, %struct.Reg* %6177, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %6178 to i64*
  %6179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6180 = getelementptr inbounds %struct.GPR, %struct.GPR* %6179, i32 0, i32 7
  %6181 = getelementptr inbounds %struct.Reg, %struct.Reg* %6180, i32 0, i32 0
  %RDX.i72 = bitcast %union.anon* %6181 to i64*
  %6182 = load i64, i64* %RAX.i71
  %6183 = load i64, i64* %RDX.i72
  %6184 = mul i64 %6183, 4
  %6185 = add i64 %6184, %6182
  %6186 = load i32, i32* %ECX.i
  %6187 = zext i32 %6186 to i64
  %6188 = load i64, i64* %PC.i70
  %6189 = add i64 %6188, 3
  store i64 %6189, i64* %PC.i70
  %6190 = inttoptr i64 %6185 to i32*
  store i32 %6186, i32* %6190
  store %struct.Memory* %loadMem_48a5c1, %struct.Memory** %MEMORY
  br label %block_.L_48a5c4

block_.L_48a5c4:                                  ; preds = %block_.L_48a5ae, %block_48a59a
  %loadMem_48a5c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6192 = getelementptr inbounds %struct.GPR, %struct.GPR* %6191, i32 0, i32 33
  %6193 = getelementptr inbounds %struct.Reg, %struct.Reg* %6192, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %6193 to i64*
  %6194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6195 = getelementptr inbounds %struct.GPR, %struct.GPR* %6194, i32 0, i32 15
  %6196 = getelementptr inbounds %struct.Reg, %struct.Reg* %6195, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %6196 to i64*
  %6197 = load i64, i64* %RBP.i69
  %6198 = sub i64 %6197, 3244
  %6199 = load i64, i64* %PC.i68
  %6200 = add i64 %6199, 10
  store i64 %6200, i64* %PC.i68
  %6201 = inttoptr i64 %6198 to i32*
  store i32 0, i32* %6201
  store %struct.Memory* %loadMem_48a5c4, %struct.Memory** %MEMORY
  br label %block_.L_48a5ce

block_.L_48a5ce:                                  ; preds = %block_48a5e5, %block_.L_48a5c4
  %loadMem_48a5ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %6202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6203 = getelementptr inbounds %struct.GPR, %struct.GPR* %6202, i32 0, i32 33
  %6204 = getelementptr inbounds %struct.Reg, %struct.Reg* %6203, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %6204 to i64*
  %6205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6206 = getelementptr inbounds %struct.GPR, %struct.GPR* %6205, i32 0, i32 1
  %6207 = getelementptr inbounds %struct.Reg, %struct.Reg* %6206, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %6207 to i64*
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6209 = getelementptr inbounds %struct.GPR, %struct.GPR* %6208, i32 0, i32 15
  %6210 = getelementptr inbounds %struct.Reg, %struct.Reg* %6209, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %6210 to i64*
  %6211 = load i64, i64* %RBP.i67
  %6212 = sub i64 %6211, 3244
  %6213 = load i64, i64* %PC.i65
  %6214 = add i64 %6213, 6
  store i64 %6214, i64* %PC.i65
  %6215 = inttoptr i64 %6212 to i32*
  %6216 = load i32, i32* %6215
  %6217 = zext i32 %6216 to i64
  store i64 %6217, i64* %RAX.i66, align 8
  store %struct.Memory* %loadMem_48a5ce, %struct.Memory** %MEMORY
  %loadMem_48a5d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6219 = getelementptr inbounds %struct.GPR, %struct.GPR* %6218, i32 0, i32 33
  %6220 = getelementptr inbounds %struct.Reg, %struct.Reg* %6219, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %6220 to i64*
  %6221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6222 = getelementptr inbounds %struct.GPR, %struct.GPR* %6221, i32 0, i32 5
  %6223 = getelementptr inbounds %struct.Reg, %struct.Reg* %6222, i32 0, i32 0
  %RCX.i63 = bitcast %union.anon* %6223 to i64*
  %6224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6225 = getelementptr inbounds %struct.GPR, %struct.GPR* %6224, i32 0, i32 15
  %6226 = getelementptr inbounds %struct.Reg, %struct.Reg* %6225, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %6226 to i64*
  %6227 = load i64, i64* %RBP.i64
  %6228 = sub i64 %6227, 24
  %6229 = load i64, i64* %PC.i62
  %6230 = add i64 %6229, 4
  store i64 %6230, i64* %PC.i62
  %6231 = inttoptr i64 %6228 to i64*
  %6232 = load i64, i64* %6231
  store i64 %6232, i64* %RCX.i63, align 8
  store %struct.Memory* %loadMem_48a5d4, %struct.Memory** %MEMORY
  %loadMem_48a5d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6234 = getelementptr inbounds %struct.GPR, %struct.GPR* %6233, i32 0, i32 33
  %6235 = getelementptr inbounds %struct.Reg, %struct.Reg* %6234, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %6235 to i64*
  %6236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6237 = getelementptr inbounds %struct.GPR, %struct.GPR* %6236, i32 0, i32 7
  %6238 = getelementptr inbounds %struct.Reg, %struct.Reg* %6237, i32 0, i32 0
  %RDX.i60 = bitcast %union.anon* %6238 to i64*
  %6239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6240 = getelementptr inbounds %struct.GPR, %struct.GPR* %6239, i32 0, i32 15
  %6241 = getelementptr inbounds %struct.Reg, %struct.Reg* %6240, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %6241 to i64*
  %6242 = load i64, i64* %RBP.i61
  %6243 = sub i64 %6242, 32
  %6244 = load i64, i64* %PC.i59
  %6245 = add i64 %6244, 4
  store i64 %6245, i64* %PC.i59
  %6246 = inttoptr i64 %6243 to i32*
  %6247 = load i32, i32* %6246
  %6248 = sext i32 %6247 to i64
  store i64 %6248, i64* %RDX.i60, align 8
  store %struct.Memory* %loadMem_48a5d8, %struct.Memory** %MEMORY
  %loadMem_48a5dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6250 = getelementptr inbounds %struct.GPR, %struct.GPR* %6249, i32 0, i32 33
  %6251 = getelementptr inbounds %struct.Reg, %struct.Reg* %6250, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %6251 to i64*
  %6252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6253 = getelementptr inbounds %struct.GPR, %struct.GPR* %6252, i32 0, i32 1
  %6254 = getelementptr inbounds %struct.Reg, %struct.Reg* %6253, i32 0, i32 0
  %EAX.i56 = bitcast %union.anon* %6254 to i32*
  %6255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6256 = getelementptr inbounds %struct.GPR, %struct.GPR* %6255, i32 0, i32 5
  %6257 = getelementptr inbounds %struct.Reg, %struct.Reg* %6256, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %6257 to i64*
  %6258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6259 = getelementptr inbounds %struct.GPR, %struct.GPR* %6258, i32 0, i32 7
  %6260 = getelementptr inbounds %struct.Reg, %struct.Reg* %6259, i32 0, i32 0
  %RDX.i58 = bitcast %union.anon* %6260 to i64*
  %6261 = load i32, i32* %EAX.i56
  %6262 = zext i32 %6261 to i64
  %6263 = load i64, i64* %RCX.i57
  %6264 = load i64, i64* %RDX.i58
  %6265 = mul i64 %6264, 4
  %6266 = add i64 %6265, %6263
  %6267 = load i64, i64* %PC.i55
  %6268 = add i64 %6267, 3
  store i64 %6268, i64* %PC.i55
  %6269 = inttoptr i64 %6266 to i32*
  %6270 = load i32, i32* %6269
  %6271 = sub i32 %6261, %6270
  %6272 = icmp ult i32 %6261, %6270
  %6273 = zext i1 %6272 to i8
  %6274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6273, i8* %6274, align 1
  %6275 = and i32 %6271, 255
  %6276 = call i32 @llvm.ctpop.i32(i32 %6275)
  %6277 = trunc i32 %6276 to i8
  %6278 = and i8 %6277, 1
  %6279 = xor i8 %6278, 1
  %6280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6279, i8* %6280, align 1
  %6281 = xor i32 %6270, %6261
  %6282 = xor i32 %6281, %6271
  %6283 = lshr i32 %6282, 4
  %6284 = trunc i32 %6283 to i8
  %6285 = and i8 %6284, 1
  %6286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6285, i8* %6286, align 1
  %6287 = icmp eq i32 %6271, 0
  %6288 = zext i1 %6287 to i8
  %6289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6288, i8* %6289, align 1
  %6290 = lshr i32 %6271, 31
  %6291 = trunc i32 %6290 to i8
  %6292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6291, i8* %6292, align 1
  %6293 = lshr i32 %6261, 31
  %6294 = lshr i32 %6270, 31
  %6295 = xor i32 %6294, %6293
  %6296 = xor i32 %6290, %6293
  %6297 = add i32 %6296, %6295
  %6298 = icmp eq i32 %6297, 2
  %6299 = zext i1 %6298 to i8
  %6300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6299, i8* %6300, align 1
  store %struct.Memory* %loadMem_48a5dc, %struct.Memory** %MEMORY
  %loadMem_48a5df = load %struct.Memory*, %struct.Memory** %MEMORY
  %6301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6302 = getelementptr inbounds %struct.GPR, %struct.GPR* %6301, i32 0, i32 33
  %6303 = getelementptr inbounds %struct.Reg, %struct.Reg* %6302, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %6303 to i64*
  %6304 = load i64, i64* %PC.i54
  %6305 = add i64 %6304, 85
  %6306 = load i64, i64* %PC.i54
  %6307 = add i64 %6306, 6
  %6308 = load i64, i64* %PC.i54
  %6309 = add i64 %6308, 6
  store i64 %6309, i64* %PC.i54
  %6310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6311 = load i8, i8* %6310, align 1
  %6312 = icmp ne i8 %6311, 0
  %6313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6314 = load i8, i8* %6313, align 1
  %6315 = icmp ne i8 %6314, 0
  %6316 = xor i1 %6312, %6315
  %6317 = xor i1 %6316, true
  %6318 = zext i1 %6317 to i8
  store i8 %6318, i8* %BRANCH_TAKEN, align 1
  %6319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6320 = select i1 %6316, i64 %6307, i64 %6305
  store i64 %6320, i64* %6319, align 8
  store %struct.Memory* %loadMem_48a5df, %struct.Memory** %MEMORY
  %loadBr_48a5df = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a5df = icmp eq i8 %loadBr_48a5df, 1
  br i1 %cmpBr_48a5df, label %block_.L_48a634, label %block_48a5e5

block_48a5e5:                                     ; preds = %block_.L_48a5ce
  %loadMem_48a5e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6322 = getelementptr inbounds %struct.GPR, %struct.GPR* %6321, i32 0, i32 33
  %6323 = getelementptr inbounds %struct.Reg, %struct.Reg* %6322, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %6323 to i64*
  %6324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6325 = getelementptr inbounds %struct.GPR, %struct.GPR* %6324, i32 0, i32 1
  %6326 = getelementptr inbounds %struct.Reg, %struct.Reg* %6325, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %6326 to i64*
  %6327 = load i64, i64* %PC.i52
  %6328 = add i64 %6327, 10
  store i64 %6328, i64* %PC.i52
  store i64 ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64), i64* %RAX.i53, align 8
  store %struct.Memory* %loadMem_48a5e5, %struct.Memory** %MEMORY
  %loadMem_48a5ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %6329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6330 = getelementptr inbounds %struct.GPR, %struct.GPR* %6329, i32 0, i32 33
  %6331 = getelementptr inbounds %struct.Reg, %struct.Reg* %6330, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %6331 to i64*
  %6332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6333 = getelementptr inbounds %struct.GPR, %struct.GPR* %6332, i32 0, i32 5
  %6334 = getelementptr inbounds %struct.Reg, %struct.Reg* %6333, i32 0, i32 0
  %RCX.i50 = bitcast %union.anon* %6334 to i64*
  %6335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6336 = getelementptr inbounds %struct.GPR, %struct.GPR* %6335, i32 0, i32 15
  %6337 = getelementptr inbounds %struct.Reg, %struct.Reg* %6336, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %6337 to i64*
  %6338 = load i64, i64* %RBP.i51
  %6339 = sub i64 %6338, 32
  %6340 = load i64, i64* %PC.i49
  %6341 = add i64 %6340, 4
  store i64 %6341, i64* %PC.i49
  %6342 = inttoptr i64 %6339 to i32*
  %6343 = load i32, i32* %6342
  %6344 = sext i32 %6343 to i64
  store i64 %6344, i64* %RCX.i50, align 8
  store %struct.Memory* %loadMem_48a5ef, %struct.Memory** %MEMORY
  %loadMem_48a5f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6346 = getelementptr inbounds %struct.GPR, %struct.GPR* %6345, i32 0, i32 33
  %6347 = getelementptr inbounds %struct.Reg, %struct.Reg* %6346, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %6347 to i64*
  %6348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6349 = getelementptr inbounds %struct.GPR, %struct.GPR* %6348, i32 0, i32 5
  %6350 = getelementptr inbounds %struct.Reg, %struct.Reg* %6349, i32 0, i32 0
  %RCX.i48 = bitcast %union.anon* %6350 to i64*
  %6351 = load i64, i64* %RCX.i48
  %6352 = load i64, i64* %PC.i47
  %6353 = add i64 %6352, 7
  store i64 %6353, i64* %PC.i47
  %6354 = sext i64 %6351 to i128
  %6355 = and i128 %6354, -18446744073709551616
  %6356 = zext i64 %6351 to i128
  %6357 = or i128 %6355, %6356
  %6358 = mul i128 144, %6357
  %6359 = trunc i128 %6358 to i64
  store i64 %6359, i64* %RCX.i48, align 8
  %6360 = sext i64 %6359 to i128
  %6361 = icmp ne i128 %6360, %6358
  %6362 = zext i1 %6361 to i8
  %6363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6362, i8* %6363, align 1
  %6364 = trunc i128 %6358 to i32
  %6365 = and i32 %6364, 255
  %6366 = call i32 @llvm.ctpop.i32(i32 %6365)
  %6367 = trunc i32 %6366 to i8
  %6368 = and i8 %6367, 1
  %6369 = xor i8 %6368, 1
  %6370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6369, i8* %6370, align 1
  %6371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6371, align 1
  %6372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6372, align 1
  %6373 = lshr i64 %6359, 63
  %6374 = trunc i64 %6373 to i8
  %6375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6374, i8* %6375, align 1
  %6376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6362, i8* %6376, align 1
  store %struct.Memory* %loadMem_48a5f3, %struct.Memory** %MEMORY
  %loadMem_48a5fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6378 = getelementptr inbounds %struct.GPR, %struct.GPR* %6377, i32 0, i32 33
  %6379 = getelementptr inbounds %struct.Reg, %struct.Reg* %6378, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %6379 to i64*
  %6380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6381 = getelementptr inbounds %struct.GPR, %struct.GPR* %6380, i32 0, i32 1
  %6382 = getelementptr inbounds %struct.Reg, %struct.Reg* %6381, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %6382 to i64*
  %6383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6384 = getelementptr inbounds %struct.GPR, %struct.GPR* %6383, i32 0, i32 5
  %6385 = getelementptr inbounds %struct.Reg, %struct.Reg* %6384, i32 0, i32 0
  %RCX.i46 = bitcast %union.anon* %6385 to i64*
  %6386 = load i64, i64* %RAX.i45
  %6387 = load i64, i64* %RCX.i46
  %6388 = load i64, i64* %PC.i44
  %6389 = add i64 %6388, 3
  store i64 %6389, i64* %PC.i44
  %6390 = add i64 %6387, %6386
  store i64 %6390, i64* %RAX.i45, align 8
  %6391 = icmp ult i64 %6390, %6386
  %6392 = icmp ult i64 %6390, %6387
  %6393 = or i1 %6391, %6392
  %6394 = zext i1 %6393 to i8
  %6395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6394, i8* %6395, align 1
  %6396 = trunc i64 %6390 to i32
  %6397 = and i32 %6396, 255
  %6398 = call i32 @llvm.ctpop.i32(i32 %6397)
  %6399 = trunc i32 %6398 to i8
  %6400 = and i8 %6399, 1
  %6401 = xor i8 %6400, 1
  %6402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6401, i8* %6402, align 1
  %6403 = xor i64 %6387, %6386
  %6404 = xor i64 %6403, %6390
  %6405 = lshr i64 %6404, 4
  %6406 = trunc i64 %6405 to i8
  %6407 = and i8 %6406, 1
  %6408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6407, i8* %6408, align 1
  %6409 = icmp eq i64 %6390, 0
  %6410 = zext i1 %6409 to i8
  %6411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6410, i8* %6411, align 1
  %6412 = lshr i64 %6390, 63
  %6413 = trunc i64 %6412 to i8
  %6414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6413, i8* %6414, align 1
  %6415 = lshr i64 %6386, 63
  %6416 = lshr i64 %6387, 63
  %6417 = xor i64 %6412, %6415
  %6418 = xor i64 %6412, %6416
  %6419 = add i64 %6417, %6418
  %6420 = icmp eq i64 %6419, 2
  %6421 = zext i1 %6420 to i8
  %6422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6421, i8* %6422, align 1
  store %struct.Memory* %loadMem_48a5fa, %struct.Memory** %MEMORY
  %loadMem_48a5fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6424 = getelementptr inbounds %struct.GPR, %struct.GPR* %6423, i32 0, i32 33
  %6425 = getelementptr inbounds %struct.Reg, %struct.Reg* %6424, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %6425 to i64*
  %6426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6427 = getelementptr inbounds %struct.GPR, %struct.GPR* %6426, i32 0, i32 5
  %6428 = getelementptr inbounds %struct.Reg, %struct.Reg* %6427, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %6428 to i64*
  %6429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6430 = getelementptr inbounds %struct.GPR, %struct.GPR* %6429, i32 0, i32 15
  %6431 = getelementptr inbounds %struct.Reg, %struct.Reg* %6430, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %6431 to i64*
  %6432 = load i64, i64* %RBP.i43
  %6433 = sub i64 %6432, 3244
  %6434 = load i64, i64* %PC.i41
  %6435 = add i64 %6434, 7
  store i64 %6435, i64* %PC.i41
  %6436 = inttoptr i64 %6433 to i32*
  %6437 = load i32, i32* %6436
  %6438 = sext i32 %6437 to i64
  store i64 %6438, i64* %RCX.i42, align 8
  store %struct.Memory* %loadMem_48a5fd, %struct.Memory** %MEMORY
  %loadMem_48a604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6440 = getelementptr inbounds %struct.GPR, %struct.GPR* %6439, i32 0, i32 33
  %6441 = getelementptr inbounds %struct.Reg, %struct.Reg* %6440, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %6441 to i64*
  %6442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6443 = getelementptr inbounds %struct.GPR, %struct.GPR* %6442, i32 0, i32 1
  %6444 = getelementptr inbounds %struct.Reg, %struct.Reg* %6443, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %6444 to i64*
  %6445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6446 = getelementptr inbounds %struct.GPR, %struct.GPR* %6445, i32 0, i32 5
  %6447 = getelementptr inbounds %struct.Reg, %struct.Reg* %6446, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %6447 to i64*
  %6448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6449 = getelementptr inbounds %struct.GPR, %struct.GPR* %6448, i32 0, i32 7
  %6450 = getelementptr inbounds %struct.Reg, %struct.Reg* %6449, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %6450 to i64*
  %6451 = load i64, i64* %RAX.i39
  %6452 = load i64, i64* %RCX.i40
  %6453 = mul i64 %6452, 4
  %6454 = add i64 %6453, %6451
  %6455 = load i64, i64* %PC.i38
  %6456 = add i64 %6455, 3
  store i64 %6456, i64* %PC.i38
  %6457 = inttoptr i64 %6454 to i32*
  %6458 = load i32, i32* %6457
  %6459 = zext i32 %6458 to i64
  store i64 %6459, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_48a604, %struct.Memory** %MEMORY
  %loadMem_48a607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6461 = getelementptr inbounds %struct.GPR, %struct.GPR* %6460, i32 0, i32 33
  %6462 = getelementptr inbounds %struct.Reg, %struct.Reg* %6461, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %6462 to i64*
  %6463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6464 = getelementptr inbounds %struct.GPR, %struct.GPR* %6463, i32 0, i32 1
  %6465 = getelementptr inbounds %struct.Reg, %struct.Reg* %6464, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %6465 to i64*
  %6466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6467 = getelementptr inbounds %struct.GPR, %struct.GPR* %6466, i32 0, i32 15
  %6468 = getelementptr inbounds %struct.Reg, %struct.Reg* %6467, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %6468 to i64*
  %6469 = load i64, i64* %RBP.i37
  %6470 = sub i64 %6469, 16
  %6471 = load i64, i64* %PC.i35
  %6472 = add i64 %6471, 4
  store i64 %6472, i64* %PC.i35
  %6473 = inttoptr i64 %6470 to i64*
  %6474 = load i64, i64* %6473
  store i64 %6474, i64* %RAX.i36, align 8
  store %struct.Memory* %loadMem_48a607, %struct.Memory** %MEMORY
  %loadMem_48a60b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6476 = getelementptr inbounds %struct.GPR, %struct.GPR* %6475, i32 0, i32 33
  %6477 = getelementptr inbounds %struct.Reg, %struct.Reg* %6476, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %6477 to i64*
  %6478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6479 = getelementptr inbounds %struct.GPR, %struct.GPR* %6478, i32 0, i32 5
  %6480 = getelementptr inbounds %struct.Reg, %struct.Reg* %6479, i32 0, i32 0
  %RCX.i33 = bitcast %union.anon* %6480 to i64*
  %6481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6482 = getelementptr inbounds %struct.GPR, %struct.GPR* %6481, i32 0, i32 15
  %6483 = getelementptr inbounds %struct.Reg, %struct.Reg* %6482, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %6483 to i64*
  %6484 = load i64, i64* %RBP.i34
  %6485 = sub i64 %6484, 32
  %6486 = load i64, i64* %PC.i32
  %6487 = add i64 %6486, 4
  store i64 %6487, i64* %PC.i32
  %6488 = inttoptr i64 %6485 to i32*
  %6489 = load i32, i32* %6488
  %6490 = sext i32 %6489 to i64
  store i64 %6490, i64* %RCX.i33, align 8
  store %struct.Memory* %loadMem_48a60b, %struct.Memory** %MEMORY
  %loadMem_48a60f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6492 = getelementptr inbounds %struct.GPR, %struct.GPR* %6491, i32 0, i32 33
  %6493 = getelementptr inbounds %struct.Reg, %struct.Reg* %6492, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %6493 to i64*
  %6494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6495 = getelementptr inbounds %struct.GPR, %struct.GPR* %6494, i32 0, i32 5
  %6496 = getelementptr inbounds %struct.Reg, %struct.Reg* %6495, i32 0, i32 0
  %RCX.i31 = bitcast %union.anon* %6496 to i64*
  %6497 = load i64, i64* %RCX.i31
  %6498 = load i64, i64* %PC.i30
  %6499 = add i64 %6498, 4
  store i64 %6499, i64* %PC.i30
  %6500 = shl i64 %6497, 3
  %6501 = icmp slt i64 %6500, 0
  %6502 = shl i64 %6500, 1
  store i64 %6502, i64* %RCX.i31, align 8
  %6503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6504 = zext i1 %6501 to i8
  store i8 %6504, i8* %6503, align 1
  %6505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6506 = trunc i64 %6502 to i32
  %6507 = and i32 %6506, 254
  %6508 = call i32 @llvm.ctpop.i32(i32 %6507)
  %6509 = trunc i32 %6508 to i8
  %6510 = and i8 %6509, 1
  %6511 = xor i8 %6510, 1
  store i8 %6511, i8* %6505, align 1
  %6512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6512, align 1
  %6513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6514 = icmp eq i64 %6502, 0
  %6515 = zext i1 %6514 to i8
  store i8 %6515, i8* %6513, align 1
  %6516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6517 = lshr i64 %6502, 63
  %6518 = trunc i64 %6517 to i8
  store i8 %6518, i8* %6516, align 1
  %6519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6519, align 1
  store %struct.Memory* %loadMem_48a60f, %struct.Memory** %MEMORY
  %loadMem_48a613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6521 = getelementptr inbounds %struct.GPR, %struct.GPR* %6520, i32 0, i32 33
  %6522 = getelementptr inbounds %struct.Reg, %struct.Reg* %6521, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %6522 to i64*
  %6523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6524 = getelementptr inbounds %struct.GPR, %struct.GPR* %6523, i32 0, i32 1
  %6525 = getelementptr inbounds %struct.Reg, %struct.Reg* %6524, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %6525 to i64*
  %6526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6527 = getelementptr inbounds %struct.GPR, %struct.GPR* %6526, i32 0, i32 5
  %6528 = getelementptr inbounds %struct.Reg, %struct.Reg* %6527, i32 0, i32 0
  %RCX.i29 = bitcast %union.anon* %6528 to i64*
  %6529 = load i64, i64* %RAX.i28
  %6530 = load i64, i64* %RCX.i29
  %6531 = load i64, i64* %PC.i27
  %6532 = add i64 %6531, 3
  store i64 %6532, i64* %PC.i27
  %6533 = add i64 %6530, %6529
  store i64 %6533, i64* %RAX.i28, align 8
  %6534 = icmp ult i64 %6533, %6529
  %6535 = icmp ult i64 %6533, %6530
  %6536 = or i1 %6534, %6535
  %6537 = zext i1 %6536 to i8
  %6538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6537, i8* %6538, align 1
  %6539 = trunc i64 %6533 to i32
  %6540 = and i32 %6539, 255
  %6541 = call i32 @llvm.ctpop.i32(i32 %6540)
  %6542 = trunc i32 %6541 to i8
  %6543 = and i8 %6542, 1
  %6544 = xor i8 %6543, 1
  %6545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6544, i8* %6545, align 1
  %6546 = xor i64 %6530, %6529
  %6547 = xor i64 %6546, %6533
  %6548 = lshr i64 %6547, 4
  %6549 = trunc i64 %6548 to i8
  %6550 = and i8 %6549, 1
  %6551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6550, i8* %6551, align 1
  %6552 = icmp eq i64 %6533, 0
  %6553 = zext i1 %6552 to i8
  %6554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6553, i8* %6554, align 1
  %6555 = lshr i64 %6533, 63
  %6556 = trunc i64 %6555 to i8
  %6557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6556, i8* %6557, align 1
  %6558 = lshr i64 %6529, 63
  %6559 = lshr i64 %6530, 63
  %6560 = xor i64 %6555, %6558
  %6561 = xor i64 %6555, %6559
  %6562 = add i64 %6560, %6561
  %6563 = icmp eq i64 %6562, 2
  %6564 = zext i1 %6563 to i8
  %6565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6564, i8* %6565, align 1
  store %struct.Memory* %loadMem_48a613, %struct.Memory** %MEMORY
  %loadMem_48a616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6567 = getelementptr inbounds %struct.GPR, %struct.GPR* %6566, i32 0, i32 33
  %6568 = getelementptr inbounds %struct.Reg, %struct.Reg* %6567, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %6568 to i64*
  %6569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6570 = getelementptr inbounds %struct.GPR, %struct.GPR* %6569, i32 0, i32 5
  %6571 = getelementptr inbounds %struct.Reg, %struct.Reg* %6570, i32 0, i32 0
  %RCX.i25 = bitcast %union.anon* %6571 to i64*
  %6572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6573 = getelementptr inbounds %struct.GPR, %struct.GPR* %6572, i32 0, i32 15
  %6574 = getelementptr inbounds %struct.Reg, %struct.Reg* %6573, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %6574 to i64*
  %6575 = load i64, i64* %RBP.i26
  %6576 = sub i64 %6575, 3244
  %6577 = load i64, i64* %PC.i24
  %6578 = add i64 %6577, 7
  store i64 %6578, i64* %PC.i24
  %6579 = inttoptr i64 %6576 to i32*
  %6580 = load i32, i32* %6579
  %6581 = sext i32 %6580 to i64
  store i64 %6581, i64* %RCX.i25, align 8
  store %struct.Memory* %loadMem_48a616, %struct.Memory** %MEMORY
  %loadMem_48a61d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6583 = getelementptr inbounds %struct.GPR, %struct.GPR* %6582, i32 0, i32 33
  %6584 = getelementptr inbounds %struct.Reg, %struct.Reg* %6583, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %6584 to i64*
  %6585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6586 = getelementptr inbounds %struct.GPR, %struct.GPR* %6585, i32 0, i32 7
  %6587 = getelementptr inbounds %struct.Reg, %struct.Reg* %6586, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %6587 to i32*
  %6588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6589 = getelementptr inbounds %struct.GPR, %struct.GPR* %6588, i32 0, i32 1
  %6590 = getelementptr inbounds %struct.Reg, %struct.Reg* %6589, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %6590 to i64*
  %6591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6592 = getelementptr inbounds %struct.GPR, %struct.GPR* %6591, i32 0, i32 5
  %6593 = getelementptr inbounds %struct.Reg, %struct.Reg* %6592, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %6593 to i64*
  %6594 = load i64, i64* %RAX.i23
  %6595 = load i64, i64* %RCX.i
  %6596 = mul i64 %6595, 4
  %6597 = add i64 %6596, %6594
  %6598 = load i32, i32* %EDX.i
  %6599 = zext i32 %6598 to i64
  %6600 = load i64, i64* %PC.i22
  %6601 = add i64 %6600, 3
  store i64 %6601, i64* %PC.i22
  %6602 = inttoptr i64 %6597 to i32*
  store i32 %6598, i32* %6602
  store %struct.Memory* %loadMem_48a61d, %struct.Memory** %MEMORY
  %loadMem_48a620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6604 = getelementptr inbounds %struct.GPR, %struct.GPR* %6603, i32 0, i32 33
  %6605 = getelementptr inbounds %struct.Reg, %struct.Reg* %6604, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %6605 to i64*
  %6606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6607 = getelementptr inbounds %struct.GPR, %struct.GPR* %6606, i32 0, i32 1
  %6608 = getelementptr inbounds %struct.Reg, %struct.Reg* %6607, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %6608 to i64*
  %6609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6610 = getelementptr inbounds %struct.GPR, %struct.GPR* %6609, i32 0, i32 15
  %6611 = getelementptr inbounds %struct.Reg, %struct.Reg* %6610, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %6611 to i64*
  %6612 = load i64, i64* %RBP.i21
  %6613 = sub i64 %6612, 3244
  %6614 = load i64, i64* %PC.i19
  %6615 = add i64 %6614, 6
  store i64 %6615, i64* %PC.i19
  %6616 = inttoptr i64 %6613 to i32*
  %6617 = load i32, i32* %6616
  %6618 = zext i32 %6617 to i64
  store i64 %6618, i64* %RAX.i20, align 8
  store %struct.Memory* %loadMem_48a620, %struct.Memory** %MEMORY
  %loadMem_48a626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6620 = getelementptr inbounds %struct.GPR, %struct.GPR* %6619, i32 0, i32 33
  %6621 = getelementptr inbounds %struct.Reg, %struct.Reg* %6620, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %6621 to i64*
  %6622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6623 = getelementptr inbounds %struct.GPR, %struct.GPR* %6622, i32 0, i32 1
  %6624 = getelementptr inbounds %struct.Reg, %struct.Reg* %6623, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %6624 to i64*
  %6625 = load i64, i64* %RAX.i18
  %6626 = load i64, i64* %PC.i17
  %6627 = add i64 %6626, 3
  store i64 %6627, i64* %PC.i17
  %6628 = trunc i64 %6625 to i32
  %6629 = add i32 1, %6628
  %6630 = zext i32 %6629 to i64
  store i64 %6630, i64* %RAX.i18, align 8
  %6631 = icmp ult i32 %6629, %6628
  %6632 = icmp ult i32 %6629, 1
  %6633 = or i1 %6631, %6632
  %6634 = zext i1 %6633 to i8
  %6635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6634, i8* %6635, align 1
  %6636 = and i32 %6629, 255
  %6637 = call i32 @llvm.ctpop.i32(i32 %6636)
  %6638 = trunc i32 %6637 to i8
  %6639 = and i8 %6638, 1
  %6640 = xor i8 %6639, 1
  %6641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6640, i8* %6641, align 1
  %6642 = xor i64 1, %6625
  %6643 = trunc i64 %6642 to i32
  %6644 = xor i32 %6643, %6629
  %6645 = lshr i32 %6644, 4
  %6646 = trunc i32 %6645 to i8
  %6647 = and i8 %6646, 1
  %6648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6647, i8* %6648, align 1
  %6649 = icmp eq i32 %6629, 0
  %6650 = zext i1 %6649 to i8
  %6651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6650, i8* %6651, align 1
  %6652 = lshr i32 %6629, 31
  %6653 = trunc i32 %6652 to i8
  %6654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6653, i8* %6654, align 1
  %6655 = lshr i32 %6628, 31
  %6656 = xor i32 %6652, %6655
  %6657 = add i32 %6656, %6652
  %6658 = icmp eq i32 %6657, 2
  %6659 = zext i1 %6658 to i8
  %6660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6659, i8* %6660, align 1
  store %struct.Memory* %loadMem_48a626, %struct.Memory** %MEMORY
  %loadMem_48a629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6662 = getelementptr inbounds %struct.GPR, %struct.GPR* %6661, i32 0, i32 33
  %6663 = getelementptr inbounds %struct.Reg, %struct.Reg* %6662, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %6663 to i64*
  %6664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6665 = getelementptr inbounds %struct.GPR, %struct.GPR* %6664, i32 0, i32 1
  %6666 = getelementptr inbounds %struct.Reg, %struct.Reg* %6665, i32 0, i32 0
  %EAX.i15 = bitcast %union.anon* %6666 to i32*
  %6667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6668 = getelementptr inbounds %struct.GPR, %struct.GPR* %6667, i32 0, i32 15
  %6669 = getelementptr inbounds %struct.Reg, %struct.Reg* %6668, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %6669 to i64*
  %6670 = load i64, i64* %RBP.i16
  %6671 = sub i64 %6670, 3244
  %6672 = load i32, i32* %EAX.i15
  %6673 = zext i32 %6672 to i64
  %6674 = load i64, i64* %PC.i14
  %6675 = add i64 %6674, 6
  store i64 %6675, i64* %PC.i14
  %6676 = inttoptr i64 %6671 to i32*
  store i32 %6672, i32* %6676
  store %struct.Memory* %loadMem_48a629, %struct.Memory** %MEMORY
  %loadMem_48a62f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6678 = getelementptr inbounds %struct.GPR, %struct.GPR* %6677, i32 0, i32 33
  %6679 = getelementptr inbounds %struct.Reg, %struct.Reg* %6678, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %6679 to i64*
  %6680 = load i64, i64* %PC.i13
  %6681 = add i64 %6680, -97
  %6682 = load i64, i64* %PC.i13
  %6683 = add i64 %6682, 5
  store i64 %6683, i64* %PC.i13
  %6684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6681, i64* %6684, align 8
  store %struct.Memory* %loadMem_48a62f, %struct.Memory** %MEMORY
  br label %block_.L_48a5ce

block_.L_48a634:                                  ; preds = %block_.L_48a5ce
  %loadMem_48a634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6686 = getelementptr inbounds %struct.GPR, %struct.GPR* %6685, i32 0, i32 33
  %6687 = getelementptr inbounds %struct.Reg, %struct.Reg* %6686, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %6687 to i64*
  %6688 = load i64, i64* %PC.i12
  %6689 = add i64 %6688, 5
  %6690 = load i64, i64* %PC.i12
  %6691 = add i64 %6690, 5
  store i64 %6691, i64* %PC.i12
  %6692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6689, i64* %6692, align 8
  store %struct.Memory* %loadMem_48a634, %struct.Memory** %MEMORY
  br label %block_.L_48a639

block_.L_48a639:                                  ; preds = %block_.L_48a634, %block_48a583
  %loadMem_48a639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6694 = getelementptr inbounds %struct.GPR, %struct.GPR* %6693, i32 0, i32 33
  %6695 = getelementptr inbounds %struct.Reg, %struct.Reg* %6694, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %6695 to i64*
  %6696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6697 = getelementptr inbounds %struct.GPR, %struct.GPR* %6696, i32 0, i32 1
  %6698 = getelementptr inbounds %struct.Reg, %struct.Reg* %6697, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %6698 to i64*
  %6699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6700 = getelementptr inbounds %struct.GPR, %struct.GPR* %6699, i32 0, i32 15
  %6701 = getelementptr inbounds %struct.Reg, %struct.Reg* %6700, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %6701 to i64*
  %6702 = load i64, i64* %RBP.i11
  %6703 = sub i64 %6702, 32
  %6704 = load i64, i64* %PC.i9
  %6705 = add i64 %6704, 3
  store i64 %6705, i64* %PC.i9
  %6706 = inttoptr i64 %6703 to i32*
  %6707 = load i32, i32* %6706
  %6708 = zext i32 %6707 to i64
  store i64 %6708, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_48a639, %struct.Memory** %MEMORY
  %loadMem_48a63c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6710 = getelementptr inbounds %struct.GPR, %struct.GPR* %6709, i32 0, i32 33
  %6711 = getelementptr inbounds %struct.Reg, %struct.Reg* %6710, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %6711 to i64*
  %6712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6713 = getelementptr inbounds %struct.GPR, %struct.GPR* %6712, i32 0, i32 1
  %6714 = getelementptr inbounds %struct.Reg, %struct.Reg* %6713, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %6714 to i64*
  %6715 = load i64, i64* %RAX.i
  %6716 = load i64, i64* %PC.i8
  %6717 = add i64 %6716, 3
  store i64 %6717, i64* %PC.i8
  %6718 = trunc i64 %6715 to i32
  %6719 = add i32 1, %6718
  %6720 = zext i32 %6719 to i64
  store i64 %6720, i64* %RAX.i, align 8
  %6721 = icmp ult i32 %6719, %6718
  %6722 = icmp ult i32 %6719, 1
  %6723 = or i1 %6721, %6722
  %6724 = zext i1 %6723 to i8
  %6725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6724, i8* %6725, align 1
  %6726 = and i32 %6719, 255
  %6727 = call i32 @llvm.ctpop.i32(i32 %6726)
  %6728 = trunc i32 %6727 to i8
  %6729 = and i8 %6728, 1
  %6730 = xor i8 %6729, 1
  %6731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6730, i8* %6731, align 1
  %6732 = xor i64 1, %6715
  %6733 = trunc i64 %6732 to i32
  %6734 = xor i32 %6733, %6719
  %6735 = lshr i32 %6734, 4
  %6736 = trunc i32 %6735 to i8
  %6737 = and i8 %6736, 1
  %6738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6737, i8* %6738, align 1
  %6739 = icmp eq i32 %6719, 0
  %6740 = zext i1 %6739 to i8
  %6741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6740, i8* %6741, align 1
  %6742 = lshr i32 %6719, 31
  %6743 = trunc i32 %6742 to i8
  %6744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6743, i8* %6744, align 1
  %6745 = lshr i32 %6718, 31
  %6746 = xor i32 %6742, %6745
  %6747 = add i32 %6746, %6742
  %6748 = icmp eq i32 %6747, 2
  %6749 = zext i1 %6748 to i8
  %6750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6749, i8* %6750, align 1
  store %struct.Memory* %loadMem_48a63c, %struct.Memory** %MEMORY
  %loadMem_48a63f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6752 = getelementptr inbounds %struct.GPR, %struct.GPR* %6751, i32 0, i32 33
  %6753 = getelementptr inbounds %struct.Reg, %struct.Reg* %6752, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %6753 to i64*
  %6754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6755 = getelementptr inbounds %struct.GPR, %struct.GPR* %6754, i32 0, i32 1
  %6756 = getelementptr inbounds %struct.Reg, %struct.Reg* %6755, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %6756 to i32*
  %6757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6758 = getelementptr inbounds %struct.GPR, %struct.GPR* %6757, i32 0, i32 15
  %6759 = getelementptr inbounds %struct.Reg, %struct.Reg* %6758, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %6759 to i64*
  %6760 = load i64, i64* %RBP.i7
  %6761 = sub i64 %6760, 32
  %6762 = load i32, i32* %EAX.i
  %6763 = zext i32 %6762 to i64
  %6764 = load i64, i64* %PC.i6
  %6765 = add i64 %6764, 3
  store i64 %6765, i64* %PC.i6
  %6766 = inttoptr i64 %6761 to i32*
  store i32 %6762, i32* %6766
  store %struct.Memory* %loadMem_48a63f, %struct.Memory** %MEMORY
  %loadMem_48a642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6768 = getelementptr inbounds %struct.GPR, %struct.GPR* %6767, i32 0, i32 33
  %6769 = getelementptr inbounds %struct.Reg, %struct.Reg* %6768, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %6769 to i64*
  %6770 = load i64, i64* %PC.i5
  %6771 = add i64 %6770, -225
  %6772 = load i64, i64* %PC.i5
  %6773 = add i64 %6772, 5
  store i64 %6773, i64* %PC.i5
  %6774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6771, i64* %6774, align 8
  store %struct.Memory* %loadMem_48a642, %struct.Memory** %MEMORY
  br label %block_.L_48a561

block_.L_48a647:                                  ; preds = %block_.L_48a561
  %loadMem_48a647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6776 = getelementptr inbounds %struct.GPR, %struct.GPR* %6775, i32 0, i32 33
  %6777 = getelementptr inbounds %struct.Reg, %struct.Reg* %6776, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %6777 to i64*
  %6778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6779 = getelementptr inbounds %struct.GPR, %struct.GPR* %6778, i32 0, i32 13
  %6780 = getelementptr inbounds %struct.Reg, %struct.Reg* %6779, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %6780 to i64*
  %6781 = load i64, i64* %RSP.i
  %6782 = load i64, i64* %PC.i4
  %6783 = add i64 %6782, 7
  store i64 %6783, i64* %PC.i4
  %6784 = add i64 3280, %6781
  store i64 %6784, i64* %RSP.i, align 8
  %6785 = icmp ult i64 %6784, %6781
  %6786 = icmp ult i64 %6784, 3280
  %6787 = or i1 %6785, %6786
  %6788 = zext i1 %6787 to i8
  %6789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6788, i8* %6789, align 1
  %6790 = trunc i64 %6784 to i32
  %6791 = and i32 %6790, 255
  %6792 = call i32 @llvm.ctpop.i32(i32 %6791)
  %6793 = trunc i32 %6792 to i8
  %6794 = and i8 %6793, 1
  %6795 = xor i8 %6794, 1
  %6796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6795, i8* %6796, align 1
  %6797 = xor i64 3280, %6781
  %6798 = xor i64 %6797, %6784
  %6799 = lshr i64 %6798, 4
  %6800 = trunc i64 %6799 to i8
  %6801 = and i8 %6800, 1
  %6802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6801, i8* %6802, align 1
  %6803 = icmp eq i64 %6784, 0
  %6804 = zext i1 %6803 to i8
  %6805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6804, i8* %6805, align 1
  %6806 = lshr i64 %6784, 63
  %6807 = trunc i64 %6806 to i8
  %6808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6807, i8* %6808, align 1
  %6809 = lshr i64 %6781, 63
  %6810 = xor i64 %6806, %6809
  %6811 = add i64 %6810, %6806
  %6812 = icmp eq i64 %6811, 2
  %6813 = zext i1 %6812 to i8
  %6814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6813, i8* %6814, align 1
  store %struct.Memory* %loadMem_48a647, %struct.Memory** %MEMORY
  %loadMem_48a64e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6816 = getelementptr inbounds %struct.GPR, %struct.GPR* %6815, i32 0, i32 33
  %6817 = getelementptr inbounds %struct.Reg, %struct.Reg* %6816, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6817 to i64*
  %6818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6819 = getelementptr inbounds %struct.GPR, %struct.GPR* %6818, i32 0, i32 15
  %6820 = getelementptr inbounds %struct.Reg, %struct.Reg* %6819, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6820 to i64*
  %6821 = load i64, i64* %PC.i2
  %6822 = add i64 %6821, 1
  store i64 %6822, i64* %PC.i2
  %6823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6824 = load i64, i64* %6823, align 8
  %6825 = add i64 %6824, 8
  %6826 = inttoptr i64 %6824 to i64*
  %6827 = load i64, i64* %6826
  store i64 %6827, i64* %RBP.i3, align 8
  store i64 %6825, i64* %6823, align 8
  store %struct.Memory* %loadMem_48a64e, %struct.Memory** %MEMORY
  %loadMem_48a64f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6829 = getelementptr inbounds %struct.GPR, %struct.GPR* %6828, i32 0, i32 33
  %6830 = getelementptr inbounds %struct.Reg, %struct.Reg* %6829, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6830 to i64*
  %6831 = load i64, i64* %PC.i1
  %6832 = add i64 %6831, 1
  store i64 %6832, i64* %PC.i1
  %6833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6835 = load i64, i64* %6834, align 8
  %6836 = inttoptr i64 %6835 to i64*
  %6837 = load i64, i64* %6836
  store i64 %6837, i64* %6833, align 8
  %6838 = add i64 %6835, 8
  store i64 %6838, i64* %6834, align 8
  store %struct.Memory* %loadMem_48a64f, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_48a64f
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

define %struct.Memory* @routine_subq__0xcd0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 3280
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 3280
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
  %23 = xor i64 3280, %9
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

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x15__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 21, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x190__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 400
  %16 = icmp ult i32 %14, 400
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
  %25 = xor i32 %14, 400
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

define %struct.Memory* @routine_jge_.L_48a0bd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_489fb7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_48a0af(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0xcac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 3244
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xcac__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3244
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_shll__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = shl i32 %12, 1
  %14 = icmp slt i32 %12, 0
  %15 = icmp slt i32 %13, 0
  %16 = xor i1 %14, %15
  %17 = zext i32 %13 to i64
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %ECX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ECX
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

define %struct.Memory* @routine_jge_.L_48a016(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xae4620___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64), i64* %RAX, align 8
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

define %struct.Memory* @routine_imulq__0x90___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 144, %15
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

define %struct.Memory* @routine_movslq_MINUS0xcac__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3244
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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

define %struct.Memory* @routine_movl__eax__MINUS0xcac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3244
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_489fc1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0xca0__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -3232
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 0, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl_MINUS0x4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = and i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %22, align 1
  %23 = and i32 %20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
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

define %struct.Memory* @routine_je_.L_48a09b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xb0eff0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x660__rbp__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1632
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 0, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 380, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_0xc__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xca0__rbp__rax_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -3232
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi__MINUS0xca0__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -3232
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ESI
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_48a0aa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x660__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1632
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 -1, i32* %19
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

define %struct.Memory* @routine_jmpq_.L_489f90(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0xca8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 3240
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0xca4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 3236
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0xca4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 3236
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

define %struct.Memory* @routine_movb__cl__MINUS0xcc1__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 3265
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_48a0fa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0xca8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 28
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

define %struct.Memory* @routine_setle__cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
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
  store i8 %23, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0xcc1__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 3265
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_jne_.L_48a10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_48a3a6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0xca4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 3236
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xca8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3240
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_48a3a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_48a161(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x660__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1632
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %20, -1
  %22 = icmp ult i32 %20, -1
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %21, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i32 %20, -1
  %32 = xor i32 %31, %21
  %33 = lshr i32 %32, 4
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i32 %21, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %21, 31
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %20, 31
  %44 = xor i32 %43, 1
  %45 = xor i32 %40, %43
  %46 = add i32 %45, %44
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_48a166(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_48a393(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0xcb4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 3252
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4__MINUS0xcb4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 3252
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jge_.L_48a38e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0xcb4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3252
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 8053168
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = trunc i64 %12 to i32
  %19 = inttoptr i64 %15 to i32*
  %20 = load i32, i32* %19
  %21 = add i32 %20, %18
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RAX, align 8
  %23 = icmp ult i32 %21, %18
  %24 = icmp ult i32 %21, %20
  %25 = or i1 %23, %24
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %26, i8* %27, align 1
  %28 = and i32 %21, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %33, align 1
  %34 = xor i32 %20, %18
  %35 = xor i32 %34, %21
  %36 = lshr i32 %35, 4
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %38, i8* %39, align 1
  %40 = icmp eq i32 %21, 0
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %21, 31
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %44, i8* %45, align 1
  %46 = lshr i32 %18, 31
  %47 = lshr i32 %20, 31
  %48 = xor i32 %43, %46
  %49 = xor i32 %43, %47
  %50 = add i32 %48, %49
  %51 = icmp eq i32 %50, 2
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %52, i8* %53, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xcb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3256
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xcb8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3256
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_48a375(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0xcb8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3256
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x660__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1632
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xca8__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3240
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

define %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %EDX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ECX
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

define %struct.Memory* @routine_jne_.L_48a375(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x660__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1632
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0xca0__rbp__rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RBP
  %18 = load i64, i64* %RCX
  %19 = mul i64 %18, 4
  %20 = add i64 %17, -3232
  %21 = add i64 %20, %19
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %21 to i32*
  %25 = load i32, i32* %24
  %26 = sub i32 %15, %25
  %27 = icmp ult i32 %15, %25
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %26, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = xor i32 %25, %15
  %37 = xor i32 %36, %26
  %38 = lshr i32 %37, 4
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %40, i8* %41, align 1
  %42 = icmp eq i32 %26, 0
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %26, 31
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %46, i8* %47, align 1
  %48 = lshr i32 %15, 31
  %49 = lshr i32 %25, 31
  %50 = xor i32 %49, %48
  %51 = xor i32 %45, %48
  %52 = add i32 %51, %50
  %53 = icmp eq i32 %52, 2
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %54, i8* %55, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_48a370(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0xcbc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 3260
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0xcb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 3248
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xcb0__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_48a2a3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__rcx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RCX
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

define %struct.Memory* @routine_movslq_MINUS0xcb0__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rdx__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl___rax__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i32, i32* %ESI
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RAX
  %18 = load i64, i64* %RCX
  %19 = mul i64 %18, 4
  %20 = add i64 %19, %17
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %20 to i32*
  %24 = load i32, i32* %23
  %25 = sub i32 %15, %24
  %26 = icmp ult i32 %15, %24
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %27, i8* %28, align 1
  %29 = and i32 %25, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = xor i32 %24, %15
  %36 = xor i32 %35, %25
  %37 = lshr i32 %36, 4
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %39, i8* %40, align 1
  %41 = icmp eq i32 %25, 0
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %25, 31
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %15, 31
  %48 = lshr i32 %24, 31
  %49 = xor i32 %48, %47
  %50 = xor i32 %44, %47
  %51 = add i32 %50, %49
  %52 = icmp eq i32 %51, 2
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %53, i8* %54, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_48a28a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0xcbc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 3260
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_48a2a3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_48a28f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0xcb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3248
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_48a21e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0xcbc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 3260
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

define %struct.Memory* @routine_jne_.L_48a357(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0xca0__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -3232
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RCX, align 8
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

define %struct.Memory* @routine_jge_.L_48a2d5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_48a2fd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x582e3b___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x27c___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 636, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x5832cb___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5832cb_type* @G__0x5832cb to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0xca0__rbp__rcx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -3232
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %ESI
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_48a35c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_48a1f0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_48a375(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_48a37a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0xcb4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3252
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xcb4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3252
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_48a170(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_48a12d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_48a0d1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x3__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_48a55a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_48a4e8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_48a3de(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_48a4da(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_48a4d5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0xcc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3264
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_jne_.L_48a487(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x58b3a__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x58b3a__rip__type* @G_0x58b3a__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0xca0__rbp__rcx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -3232
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = sitofp i32 %23 to double
  %25 = bitcast i8* %14 to double*
  store double %24, double* %25, align 1
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

define %struct.Memory* @routine_movslq_MINUS0xcc0__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3264
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 380, %15
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

define %struct.Memory* @routine_cvtss2sd_0x8__rax____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fadd double %16, %21
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

define %struct.Memory* @routine_movss__xmm0__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 8
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

define %struct.Memory* @routine_jmpq_.L_48a4bc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x58ad1__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x58ad1__rip__type* @G_0x58ad1__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_48a4c1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_48a3e8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_48a3b7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_48a555(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 1
  %14 = icmp ult i32 %9, 1
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
  %23 = xor i64 1, %10
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

define %struct.Memory* @routine_je_.L_48a526(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 2
  %14 = icmp ult i32 %9, 2
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
  %23 = xor i64 2, %10
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

define %struct.Memory* @routine_jne_.L_48a542(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.is_worm_origin(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_48a542(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.propagate_worm(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_48a547(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_48a4ef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_48a55a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_48a647(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_48a588(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_48a639(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x4__MINUS0xca0__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -3232
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %20, 4
  %22 = icmp ult i32 %20, 4
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %21, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i32 %20, 4
  %32 = xor i32 %31, %21
  %33 = lshr i32 %32, 4
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i32 %21, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %21, 31
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %20, 31
  %44 = xor i32 %40, %43
  %45 = add i32 %44, %43
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_48a5ae(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_48a5c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %ECX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
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

define %struct.Memory* @routine_cmpl___rcx__rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RCX
  %18 = load i64, i64* %RDX
  %19 = mul i64 %18, 4
  %20 = add i64 %19, %17
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %20 to i32*
  %24 = load i32, i32* %23
  %25 = sub i32 %15, %24
  %26 = icmp ult i32 %15, %24
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %27, i8* %28, align 1
  %29 = and i32 %25, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = xor i32 %24, %15
  %36 = xor i32 %35, %25
  %37 = lshr i32 %36, 4
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %39, i8* %40, align 1
  %41 = icmp eq i32 %25, 0
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %25, 31
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %15, 31
  %48 = lshr i32 %24, 31
  %49 = xor i32 %48, %47
  %50 = xor i32 %44, %47
  %51 = add i32 %50, %49
  %52 = icmp eq i32 %51, 2
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %53, i8* %54, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_48a634(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EDX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_48a5ce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_48a561(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0xcd0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 3280, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 3280
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
  %25 = xor i64 3280, %9
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
