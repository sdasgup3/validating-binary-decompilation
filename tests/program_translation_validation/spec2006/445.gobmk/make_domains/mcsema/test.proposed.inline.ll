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
%G__0xac1610_type = type <{ [8 x i8] }>
%G__0xac1c50_type = type <{ [8 x i8] }>
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
@G_0x7ae438 = global %G_0x7ae438_type zeroinitializer
@G__0xac1610 = global %G__0xac1610_type zeroinitializer
@G__0xac1c50 = global %G__0xac1c50_type zeroinitializer

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

declare %struct.Memory* @sub_438450.clear_eye(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4384f0.is_lively(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4385d0.compute_primary_domains(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4a5e60.find_cuts(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_438ca0.originate_eye(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_438f80.count_neighbours(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @make_domains(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_437c30 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_437c30, %struct.Memory** %MEMORY
  %loadMem_437c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i833 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i834 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i833
  %27 = load i64, i64* %PC.i832
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i832
  store i64 %26, i64* %RBP.i834, align 8
  store %struct.Memory* %loadMem_437c31, %struct.Memory** %MEMORY
  %loadMem_437c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i849 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i849
  %36 = load i64, i64* %PC.i848
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i848
  %38 = sub i64 %35, 3312
  store i64 %38, i64* %RSP.i849, align 8
  %39 = icmp ult i64 %35, 3312
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
  %49 = xor i64 3312, %35
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
  store %struct.Memory* %loadMem_437c34, %struct.Memory** %MEMORY
  %loadMem_437c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i860 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EAX.i861 = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RAX.i862 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RAX.i862
  %77 = load i32, i32* %EAX.i861
  %78 = zext i32 %77 to i64
  %79 = load i64, i64* %PC.i860
  %80 = add i64 %79, 2
  store i64 %80, i64* %PC.i860
  %81 = xor i64 %78, %76
  %82 = trunc i64 %81 to i32
  %83 = and i64 %81, 4294967295
  store i64 %83, i64* %RAX.i862, align 8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %84, align 1
  %85 = and i32 %82, 255
  %86 = call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %89, i8* %90, align 1
  %91 = icmp eq i32 %82, 0
  %92 = zext i1 %91 to i8
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %92, i8* %93, align 1
  %94 = lshr i32 %82, 31
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %95, i8* %96, align 1
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %97, align 1
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %98, align 1
  store %struct.Memory* %loadMem_437c3b, %struct.Memory** %MEMORY
  %loadMem_437c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i900 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %RCX.i901 = bitcast %union.anon* %104 to i64*
  %105 = load i64, i64* %PC.i900
  %106 = add i64 %105, 5
  store i64 %106, i64* %PC.i900
  store i64 1600, i64* %RCX.i901, align 8
  store %struct.Memory* %loadMem_437c3d, %struct.Memory** %MEMORY
  %loadMem_437c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 33
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %PC.i897 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %ECX.i898 = bitcast %union.anon* %112 to i32*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 17
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %R8D.i899 = bitcast %union.anon* %115 to i32*
  %116 = bitcast i32* %R8D.i899 to i64*
  %117 = load i32, i32* %ECX.i898
  %118 = zext i32 %117 to i64
  %119 = load i64, i64* %PC.i897
  %120 = add i64 %119, 3
  store i64 %120, i64* %PC.i897
  %121 = and i64 %118, 4294967295
  store i64 %121, i64* %116, align 8
  store %struct.Memory* %loadMem_437c42, %struct.Memory** %MEMORY
  %loadMem_437c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 33
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %124 to i64*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 15
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %RBP.i895 = bitcast %union.anon* %127 to i64*
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 19
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %R9.i896 = bitcast %union.anon* %130 to i64*
  %131 = load i64, i64* %RBP.i895
  %132 = sub i64 %131, 3248
  %133 = load i64, i64* %PC.i894
  %134 = add i64 %133, 7
  store i64 %134, i64* %PC.i894
  store i64 %132, i64* %R9.i896, align 8
  store %struct.Memory* %loadMem_437c45, %struct.Memory** %MEMORY
  %loadMem_437c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %PC.i892 = bitcast %union.anon* %137 to i64*
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 21
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %R10.i893 = bitcast %union.anon* %140 to i64*
  %141 = load i64, i64* %PC.i892
  %142 = add i64 %141, 10
  store i64 %142, i64* %PC.i892
  store i64 ptrtoint (%G__0xac1c50_type* @G__0xac1c50 to i64), i64* %R10.i893, align 8
  store %struct.Memory* %loadMem_437c4c, %struct.Memory** %MEMORY
  %loadMem_437c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 33
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %PC.i890 = bitcast %union.anon* %145 to i64*
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 23
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %R11.i891 = bitcast %union.anon* %148 to i64*
  %149 = load i64, i64* %PC.i890
  %150 = add i64 %149, 10
  store i64 %150, i64* %PC.i890
  store i64 ptrtoint (%G__0xac1610_type* @G__0xac1610 to i64), i64* %R11.i891, align 8
  store %struct.Memory* %loadMem_437c56, %struct.Memory** %MEMORY
  %loadMem_437c60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 33
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %PC.i887 = bitcast %union.anon* %153 to i64*
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 11
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %RDI.i888 = bitcast %union.anon* %156 to i64*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 15
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %RBP.i889 = bitcast %union.anon* %159 to i64*
  %160 = load i64, i64* %RBP.i889
  %161 = sub i64 %160, 8
  %162 = load i64, i64* %RDI.i888
  %163 = load i64, i64* %PC.i887
  %164 = add i64 %163, 4
  store i64 %164, i64* %PC.i887
  %165 = inttoptr i64 %161 to i64*
  store i64 %162, i64* %165
  store %struct.Memory* %loadMem_437c60, %struct.Memory** %MEMORY
  %loadMem_437c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 33
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %PC.i884 = bitcast %union.anon* %168 to i64*
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 9
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %RSI.i885 = bitcast %union.anon* %171 to i64*
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 15
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %RBP.i886 = bitcast %union.anon* %174 to i64*
  %175 = load i64, i64* %RBP.i886
  %176 = sub i64 %175, 16
  %177 = load i64, i64* %RSI.i885
  %178 = load i64, i64* %PC.i884
  %179 = add i64 %178, 4
  store i64 %179, i64* %PC.i884
  %180 = inttoptr i64 %176 to i64*
  store i64 %177, i64* %180
  store %struct.Memory* %loadMem_437c64, %struct.Memory** %MEMORY
  %loadMem_437c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %182 = getelementptr inbounds %struct.GPR, %struct.GPR* %181, i32 0, i32 33
  %183 = getelementptr inbounds %struct.Reg, %struct.Reg* %182, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %183 to i64*
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 7
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %186 to i32*
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 15
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %RBP.i883 = bitcast %union.anon* %189 to i64*
  %190 = load i64, i64* %RBP.i883
  %191 = sub i64 %190, 20
  %192 = load i32, i32* %EDX.i
  %193 = zext i32 %192 to i64
  %194 = load i64, i64* %PC.i882
  %195 = add i64 %194, 3
  store i64 %195, i64* %PC.i882
  %196 = inttoptr i64 %191 to i32*
  store i32 %192, i32* %196
  store %struct.Memory* %loadMem_437c68, %struct.Memory** %MEMORY
  %loadMem_437c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 33
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %PC.i880 = bitcast %union.anon* %199 to i64*
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 11
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %RDI.i881 = bitcast %union.anon* %202 to i64*
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 23
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %R11.i = bitcast %union.anon* %205 to i64*
  %206 = load i64, i64* %R11.i
  %207 = load i64, i64* %PC.i880
  %208 = add i64 %207, 3
  store i64 %208, i64* %PC.i880
  store i64 %206, i64* %RDI.i881, align 8
  store %struct.Memory* %loadMem_437c6b, %struct.Memory** %MEMORY
  %loadMem_437c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 33
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %PC.i877 = bitcast %union.anon* %211 to i64*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %EAX.i878 = bitcast %union.anon* %214 to i32*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 9
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %RSI.i879 = bitcast %union.anon* %217 to i64*
  %218 = load i32, i32* %EAX.i878
  %219 = zext i32 %218 to i64
  %220 = load i64, i64* %PC.i877
  %221 = add i64 %220, 2
  store i64 %221, i64* %PC.i877
  %222 = and i64 %219, 4294967295
  store i64 %222, i64* %RSI.i879, align 8
  store %struct.Memory* %loadMem_437c6e, %struct.Memory** %MEMORY
  %loadMem_437c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 33
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %225 to i64*
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 7
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %RDX.i875 = bitcast %union.anon* %228 to i64*
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 17
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %R8.i876 = bitcast %union.anon* %231 to i64*
  %232 = load i64, i64* %R8.i876
  %233 = load i64, i64* %PC.i874
  %234 = add i64 %233, 3
  store i64 %234, i64* %PC.i874
  store i64 %232, i64* %RDX.i875, align 8
  store %struct.Memory* %loadMem_437c70, %struct.Memory** %MEMORY
  %loadMem_437c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %236 = getelementptr inbounds %struct.GPR, %struct.GPR* %235, i32 0, i32 33
  %237 = getelementptr inbounds %struct.Reg, %struct.Reg* %236, i32 0, i32 0
  %PC.i872 = bitcast %union.anon* %237 to i64*
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 15
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %RBP.i873 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 21
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %R10.i = bitcast %union.anon* %243 to i64*
  %244 = load i64, i64* %RBP.i873
  %245 = sub i64 %244, 3288
  %246 = load i64, i64* %R10.i
  %247 = load i64, i64* %PC.i872
  %248 = add i64 %247, 7
  store i64 %248, i64* %PC.i872
  %249 = inttoptr i64 %245 to i64*
  store i64 %246, i64* %249
  store %struct.Memory* %loadMem_437c73, %struct.Memory** %MEMORY
  %loadMem_437c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 33
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %252 to i64*
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 15
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %RBP.i870 = bitcast %union.anon* %255 to i64*
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 17
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %R8.i871 = bitcast %union.anon* %258 to i64*
  %259 = load i64, i64* %RBP.i870
  %260 = sub i64 %259, 3296
  %261 = load i64, i64* %R8.i871
  %262 = load i64, i64* %PC.i869
  %263 = add i64 %262, 7
  store i64 %263, i64* %PC.i869
  %264 = inttoptr i64 %260 to i64*
  store i64 %261, i64* %264
  store %struct.Memory* %loadMem_437c7a, %struct.Memory** %MEMORY
  %loadMem_437c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 33
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %267 to i64*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 15
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %RBP.i868 = bitcast %union.anon* %270 to i64*
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 19
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %R9.i = bitcast %union.anon* %273 to i64*
  %274 = load i64, i64* %RBP.i868
  %275 = sub i64 %274, 3304
  %276 = load i64, i64* %R9.i
  %277 = load i64, i64* %PC.i867
  %278 = add i64 %277, 7
  store i64 %278, i64* %PC.i867
  %279 = inttoptr i64 %275 to i64*
  store i64 %276, i64* %279
  store %struct.Memory* %loadMem_437c81, %struct.Memory** %MEMORY
  %loadMem_437c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 33
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %PC.i864 = bitcast %union.anon* %282 to i64*
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %EAX.i865 = bitcast %union.anon* %285 to i32*
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 15
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %RBP.i866 = bitcast %union.anon* %288 to i64*
  %289 = load i64, i64* %RBP.i866
  %290 = sub i64 %289, 3308
  %291 = load i32, i32* %EAX.i865
  %292 = zext i32 %291 to i64
  %293 = load i64, i64* %PC.i864
  %294 = add i64 %293, 6
  store i64 %294, i64* %PC.i864
  %295 = inttoptr i64 %290 to i32*
  store i32 %291, i32* %295
  store %struct.Memory* %loadMem_437c88, %struct.Memory** %MEMORY
  %loadMem1_437c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %297 = getelementptr inbounds %struct.GPR, %struct.GPR* %296, i32 0, i32 33
  %298 = getelementptr inbounds %struct.Reg, %struct.Reg* %297, i32 0, i32 0
  %PC.i863 = bitcast %union.anon* %298 to i64*
  %299 = load i64, i64* %PC.i863
  %300 = add i64 %299, -224286
  %301 = load i64, i64* %PC.i863
  %302 = add i64 %301, 5
  %303 = load i64, i64* %PC.i863
  %304 = add i64 %303, 5
  store i64 %304, i64* %PC.i863
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = add i64 %306, -8
  %308 = inttoptr i64 %307 to i64*
  store i64 %302, i64* %308
  store i64 %307, i64* %305, align 8
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %300, i64* %309, align 8
  store %struct.Memory* %loadMem1_437c8e, %struct.Memory** %MEMORY
  %loadMem2_437c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_437c8e = load i64, i64* %3
  %310 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %loadMem2_437c8e)
  store %struct.Memory* %310, %struct.Memory** %MEMORY
  %loadMem_437c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %312 = getelementptr inbounds %struct.GPR, %struct.GPR* %311, i32 0, i32 33
  %313 = getelementptr inbounds %struct.Reg, %struct.Reg* %312, i32 0, i32 0
  %PC.i857 = bitcast %union.anon* %313 to i64*
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 11
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %RDI.i858 = bitcast %union.anon* %316 to i64*
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 15
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %RBP.i859 = bitcast %union.anon* %319 to i64*
  %320 = load i64, i64* %RBP.i859
  %321 = sub i64 %320, 3288
  %322 = load i64, i64* %PC.i857
  %323 = add i64 %322, 7
  store i64 %323, i64* %PC.i857
  %324 = inttoptr i64 %321 to i64*
  %325 = load i64, i64* %324
  store i64 %325, i64* %RDI.i858, align 8
  store %struct.Memory* %loadMem_437c93, %struct.Memory** %MEMORY
  %loadMem_437c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 33
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %PC.i854 = bitcast %union.anon* %328 to i64*
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 9
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %RSI.i855 = bitcast %union.anon* %331 to i64*
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 15
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %RBP.i856 = bitcast %union.anon* %334 to i64*
  %335 = load i64, i64* %RBP.i856
  %336 = sub i64 %335, 3308
  %337 = load i64, i64* %PC.i854
  %338 = add i64 %337, 6
  store i64 %338, i64* %PC.i854
  %339 = inttoptr i64 %336 to i32*
  %340 = load i32, i32* %339
  %341 = zext i32 %340 to i64
  store i64 %341, i64* %RSI.i855, align 8
  store %struct.Memory* %loadMem_437c9a, %struct.Memory** %MEMORY
  %loadMem_437ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %343 = getelementptr inbounds %struct.GPR, %struct.GPR* %342, i32 0, i32 33
  %344 = getelementptr inbounds %struct.Reg, %struct.Reg* %343, i32 0, i32 0
  %PC.i851 = bitcast %union.anon* %344 to i64*
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 7
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %RDX.i852 = bitcast %union.anon* %347 to i64*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 15
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %RBP.i853 = bitcast %union.anon* %350 to i64*
  %351 = load i64, i64* %RBP.i853
  %352 = sub i64 %351, 3296
  %353 = load i64, i64* %PC.i851
  %354 = add i64 %353, 7
  store i64 %354, i64* %PC.i851
  %355 = inttoptr i64 %352 to i64*
  %356 = load i64, i64* %355
  store i64 %356, i64* %RDX.i852, align 8
  store %struct.Memory* %loadMem_437ca0, %struct.Memory** %MEMORY
  %loadMem1_437ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 33
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %359 to i64*
  %360 = load i64, i64* %PC.i850
  %361 = add i64 %360, -224311
  %362 = load i64, i64* %PC.i850
  %363 = add i64 %362, 5
  %364 = load i64, i64* %PC.i850
  %365 = add i64 %364, 5
  store i64 %365, i64* %PC.i850
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = add i64 %367, -8
  %369 = inttoptr i64 %368 to i64*
  store i64 %363, i64* %369
  store i64 %368, i64* %366, align 8
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %361, i64* %370, align 8
  store %struct.Memory* %loadMem1_437ca7, %struct.Memory** %MEMORY
  %loadMem2_437ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_437ca7 = load i64, i64* %3
  %371 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %loadMem2_437ca7)
  store %struct.Memory* %371, %struct.Memory** %MEMORY
  %loadMem_437cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 33
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %374 to i64*
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 7
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %RDX.i846 = bitcast %union.anon* %377 to i64*
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 15
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %RBP.i847 = bitcast %union.anon* %380 to i64*
  %381 = load i64, i64* %RBP.i847
  %382 = sub i64 %381, 3304
  %383 = load i64, i64* %PC.i845
  %384 = add i64 %383, 7
  store i64 %384, i64* %PC.i845
  %385 = inttoptr i64 %382 to i64*
  %386 = load i64, i64* %385
  store i64 %386, i64* %RDX.i846, align 8
  store %struct.Memory* %loadMem_437cac, %struct.Memory** %MEMORY
  %loadMem_437cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 33
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %389 to i64*
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 7
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %RDX.i843 = bitcast %union.anon* %392 to i64*
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 11
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %RDI.i844 = bitcast %union.anon* %395 to i64*
  %396 = load i64, i64* %RDX.i843
  %397 = load i64, i64* %PC.i842
  %398 = add i64 %397, 3
  store i64 %398, i64* %PC.i842
  store i64 %396, i64* %RDI.i844, align 8
  store %struct.Memory* %loadMem_437cb3, %struct.Memory** %MEMORY
  %loadMem_437cb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 33
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %401 to i64*
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 9
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %RSI.i840 = bitcast %union.anon* %404 to i64*
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %406 = getelementptr inbounds %struct.GPR, %struct.GPR* %405, i32 0, i32 15
  %407 = getelementptr inbounds %struct.Reg, %struct.Reg* %406, i32 0, i32 0
  %RBP.i841 = bitcast %union.anon* %407 to i64*
  %408 = load i64, i64* %RBP.i841
  %409 = sub i64 %408, 3308
  %410 = load i64, i64* %PC.i839
  %411 = add i64 %410, 6
  store i64 %411, i64* %PC.i839
  %412 = inttoptr i64 %409 to i32*
  %413 = load i32, i32* %412
  %414 = zext i32 %413 to i64
  store i64 %414, i64* %RSI.i840, align 8
  store %struct.Memory* %loadMem_437cb6, %struct.Memory** %MEMORY
  %loadMem_437cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 33
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %417 to i64*
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 7
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %RDX.i837 = bitcast %union.anon* %420 to i64*
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 15
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %RBP.i838 = bitcast %union.anon* %423 to i64*
  %424 = load i64, i64* %RBP.i838
  %425 = sub i64 %424, 3296
  %426 = load i64, i64* %PC.i836
  %427 = add i64 %426, 7
  store i64 %427, i64* %PC.i836
  %428 = inttoptr i64 %425 to i64*
  %429 = load i64, i64* %428
  store i64 %429, i64* %RDX.i837, align 8
  store %struct.Memory* %loadMem_437cbc, %struct.Memory** %MEMORY
  %loadMem1_437cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %431 = getelementptr inbounds %struct.GPR, %struct.GPR* %430, i32 0, i32 33
  %432 = getelementptr inbounds %struct.Reg, %struct.Reg* %431, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %432 to i64*
  %433 = load i64, i64* %PC.i835
  %434 = add i64 %433, -224339
  %435 = load i64, i64* %PC.i835
  %436 = add i64 %435, 5
  %437 = load i64, i64* %PC.i835
  %438 = add i64 %437, 5
  store i64 %438, i64* %PC.i835
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = add i64 %440, -8
  %442 = inttoptr i64 %441 to i64*
  store i64 %436, i64* %442
  store i64 %441, i64* %439, align 8
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %434, i64* %443, align 8
  store %struct.Memory* %loadMem1_437cc3, %struct.Memory** %MEMORY
  %loadMem2_437cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_437cc3 = load i64, i64* %3
  %444 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %loadMem2_437cc3)
  store %struct.Memory* %444, %struct.Memory** %MEMORY
  %loadMem_437cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %446 = getelementptr inbounds %struct.GPR, %struct.GPR* %445, i32 0, i32 33
  %447 = getelementptr inbounds %struct.Reg, %struct.Reg* %446, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %447 to i64*
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 15
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %RBP.i831 = bitcast %union.anon* %450 to i64*
  %451 = load i64, i64* %RBP.i831
  %452 = sub i64 %451, 36
  %453 = load i64, i64* %PC.i830
  %454 = add i64 %453, 7
  store i64 %454, i64* %PC.i830
  %455 = inttoptr i64 %452 to i32*
  store i32 21, i32* %455
  store %struct.Memory* %loadMem_437cc8, %struct.Memory** %MEMORY
  br label %block_.L_437ccf

block_.L_437ccf:                                  ; preds = %block_.L_437d50, %entry
  %loadMem_437ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 33
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %PC.i828 = bitcast %union.anon* %458 to i64*
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 15
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %RBP.i829 = bitcast %union.anon* %461 to i64*
  %462 = load i64, i64* %RBP.i829
  %463 = sub i64 %462, 36
  %464 = load i64, i64* %PC.i828
  %465 = add i64 %464, 7
  store i64 %465, i64* %PC.i828
  %466 = inttoptr i64 %463 to i32*
  %467 = load i32, i32* %466
  %468 = sub i32 %467, 400
  %469 = icmp ult i32 %467, 400
  %470 = zext i1 %469 to i8
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %470, i8* %471, align 1
  %472 = and i32 %468, 255
  %473 = call i32 @llvm.ctpop.i32(i32 %472)
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  %476 = xor i8 %475, 1
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %476, i8* %477, align 1
  %478 = xor i32 %467, 400
  %479 = xor i32 %478, %468
  %480 = lshr i32 %479, 4
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %482, i8* %483, align 1
  %484 = icmp eq i32 %468, 0
  %485 = zext i1 %484 to i8
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %485, i8* %486, align 1
  %487 = lshr i32 %468, 31
  %488 = trunc i32 %487 to i8
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %488, i8* %489, align 1
  %490 = lshr i32 %467, 31
  %491 = xor i32 %487, %490
  %492 = add i32 %491, %490
  %493 = icmp eq i32 %492, 2
  %494 = zext i1 %493 to i8
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %494, i8* %495, align 1
  store %struct.Memory* %loadMem_437ccf, %struct.Memory** %MEMORY
  %loadMem_437cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %497 = getelementptr inbounds %struct.GPR, %struct.GPR* %496, i32 0, i32 33
  %498 = getelementptr inbounds %struct.Reg, %struct.Reg* %497, i32 0, i32 0
  %PC.i827 = bitcast %union.anon* %498 to i64*
  %499 = load i64, i64* %PC.i827
  %500 = add i64 %499, 136
  %501 = load i64, i64* %PC.i827
  %502 = add i64 %501, 6
  %503 = load i64, i64* %PC.i827
  %504 = add i64 %503, 6
  store i64 %504, i64* %PC.i827
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %506 = load i8, i8* %505, align 1
  %507 = icmp ne i8 %506, 0
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %509 = load i8, i8* %508, align 1
  %510 = icmp ne i8 %509, 0
  %511 = xor i1 %507, %510
  %512 = xor i1 %511, true
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %BRANCH_TAKEN, align 1
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %515 = select i1 %511, i64 %502, i64 %500
  store i64 %515, i64* %514, align 8
  store %struct.Memory* %loadMem_437cd6, %struct.Memory** %MEMORY
  %loadBr_437cd6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437cd6 = icmp eq i8 %loadBr_437cd6, 1
  br i1 %cmpBr_437cd6, label %block_.L_437d5e, label %block_437cdc

block_437cdc:                                     ; preds = %block_.L_437ccf
  %loadMem_437cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 33
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %PC.i824 = bitcast %union.anon* %518 to i64*
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 1
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %RAX.i825 = bitcast %union.anon* %521 to i64*
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 15
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %RBP.i826 = bitcast %union.anon* %524 to i64*
  %525 = load i64, i64* %RBP.i826
  %526 = sub i64 %525, 36
  %527 = load i64, i64* %PC.i824
  %528 = add i64 %527, 4
  store i64 %528, i64* %PC.i824
  %529 = inttoptr i64 %526 to i32*
  %530 = load i32, i32* %529
  %531 = sext i32 %530 to i64
  store i64 %531, i64* %RAX.i825, align 8
  store %struct.Memory* %loadMem_437cdc, %struct.Memory** %MEMORY
  %loadMem_437ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 33
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %534 to i64*
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 1
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %RAX.i822 = bitcast %union.anon* %537 to i64*
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 5
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %RCX.i823 = bitcast %union.anon* %540 to i64*
  %541 = load i64, i64* %RAX.i822
  %542 = add i64 %541, 12099168
  %543 = load i64, i64* %PC.i821
  %544 = add i64 %543, 8
  store i64 %544, i64* %PC.i821
  %545 = inttoptr i64 %542 to i8*
  %546 = load i8, i8* %545
  %547 = zext i8 %546 to i64
  store i64 %547, i64* %RCX.i823, align 8
  store %struct.Memory* %loadMem_437ce0, %struct.Memory** %MEMORY
  %loadMem_437ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 33
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %550 to i64*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 5
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %ECX.i820 = bitcast %union.anon* %553 to i32*
  %554 = load i32, i32* %ECX.i820
  %555 = zext i32 %554 to i64
  %556 = load i64, i64* %PC.i819
  %557 = add i64 %556, 3
  store i64 %557, i64* %PC.i819
  %558 = sub i32 %554, 3
  %559 = icmp ult i32 %554, 3
  %560 = zext i1 %559 to i8
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %560, i8* %561, align 1
  %562 = and i32 %558, 255
  %563 = call i32 @llvm.ctpop.i32(i32 %562)
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  %566 = xor i8 %565, 1
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %566, i8* %567, align 1
  %568 = xor i64 3, %555
  %569 = trunc i64 %568 to i32
  %570 = xor i32 %569, %558
  %571 = lshr i32 %570, 4
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %573, i8* %574, align 1
  %575 = icmp eq i32 %558, 0
  %576 = zext i1 %575 to i8
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %576, i8* %577, align 1
  %578 = lshr i32 %558, 31
  %579 = trunc i32 %578 to i8
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %579, i8* %580, align 1
  %581 = lshr i32 %554, 31
  %582 = xor i32 %578, %581
  %583 = add i32 %582, %581
  %584 = icmp eq i32 %583, 2
  %585 = zext i1 %584 to i8
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %585, i8* %586, align 1
  store %struct.Memory* %loadMem_437ce8, %struct.Memory** %MEMORY
  %loadMem_437ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 33
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %PC.i818 = bitcast %union.anon* %589 to i64*
  %590 = load i64, i64* %PC.i818
  %591 = add i64 %590, 96
  %592 = load i64, i64* %PC.i818
  %593 = add i64 %592, 6
  %594 = load i64, i64* %PC.i818
  %595 = add i64 %594, 6
  store i64 %595, i64* %PC.i818
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %597 = load i8, i8* %596, align 1
  store i8 %597, i8* %BRANCH_TAKEN, align 1
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %599 = icmp ne i8 %597, 0
  %600 = select i1 %599, i64 %591, i64 %593
  store i64 %600, i64* %598, align 8
  store %struct.Memory* %loadMem_437ceb, %struct.Memory** %MEMORY
  %loadBr_437ceb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437ceb = icmp eq i8 %loadBr_437ceb, 1
  br i1 %cmpBr_437ceb, label %block_.L_437d4b, label %block_437cf1

block_437cf1:                                     ; preds = %block_437cdc
  %loadMem_437cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 33
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %603 to i64*
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 15
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %RBP.i817 = bitcast %union.anon* %606 to i64*
  %607 = load i64, i64* %RBP.i817
  %608 = sub i64 %607, 8
  %609 = load i64, i64* %PC.i816
  %610 = add i64 %609, 5
  store i64 %610, i64* %PC.i816
  %611 = inttoptr i64 %608 to i64*
  %612 = load i64, i64* %611
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %613, align 1
  %614 = trunc i64 %612 to i32
  %615 = and i32 %614, 255
  %616 = call i32 @llvm.ctpop.i32(i32 %615)
  %617 = trunc i32 %616 to i8
  %618 = and i8 %617, 1
  %619 = xor i8 %618, 1
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %619, i8* %620, align 1
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %621, align 1
  %622 = icmp eq i64 %612, 0
  %623 = zext i1 %622 to i8
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %623, i8* %624, align 1
  %625 = lshr i64 %612, 63
  %626 = trunc i64 %625 to i8
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %626, i8* %627, align 1
  %628 = lshr i64 %612, 63
  %629 = xor i64 %625, %628
  %630 = add i64 %629, %628
  %631 = icmp eq i64 %630, 2
  %632 = zext i1 %631 to i8
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %632, i8* %633, align 1
  store %struct.Memory* %loadMem_437cf1, %struct.Memory** %MEMORY
  %loadMem_437cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 33
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %636 to i64*
  %637 = load i64, i64* %PC.i815
  %638 = add i64 %637, 29
  %639 = load i64, i64* %PC.i815
  %640 = add i64 %639, 6
  %641 = load i64, i64* %PC.i815
  %642 = add i64 %641, 6
  store i64 %642, i64* %PC.i815
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %644 = load i8, i8* %643, align 1
  store i8 %644, i8* %BRANCH_TAKEN, align 1
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %646 = icmp ne i8 %644, 0
  %647 = select i1 %646, i64 %638, i64 %640
  store i64 %647, i64* %645, align 8
  store %struct.Memory* %loadMem_437cf6, %struct.Memory** %MEMORY
  %loadBr_437cf6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437cf6 = icmp eq i8 %loadBr_437cf6, 1
  br i1 %cmpBr_437cf6, label %block_.L_437d13, label %block_437cfc

block_437cfc:                                     ; preds = %block_437cf1
  %loadMem_437cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 33
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %650 to i64*
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 1
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %RAX.i813 = bitcast %union.anon* %653 to i64*
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %655 = getelementptr inbounds %struct.GPR, %struct.GPR* %654, i32 0, i32 15
  %656 = getelementptr inbounds %struct.Reg, %struct.Reg* %655, i32 0, i32 0
  %RBP.i814 = bitcast %union.anon* %656 to i64*
  %657 = load i64, i64* %RBP.i814
  %658 = sub i64 %657, 8
  %659 = load i64, i64* %PC.i812
  %660 = add i64 %659, 4
  store i64 %660, i64* %PC.i812
  %661 = inttoptr i64 %658 to i64*
  %662 = load i64, i64* %661
  store i64 %662, i64* %RAX.i813, align 8
  store %struct.Memory* %loadMem_437cfc, %struct.Memory** %MEMORY
  %loadMem_437d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %664 = getelementptr inbounds %struct.GPR, %struct.GPR* %663, i32 0, i32 33
  %665 = getelementptr inbounds %struct.Reg, %struct.Reg* %664, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %665 to i64*
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %667 = getelementptr inbounds %struct.GPR, %struct.GPR* %666, i32 0, i32 5
  %668 = getelementptr inbounds %struct.Reg, %struct.Reg* %667, i32 0, i32 0
  %RCX.i810 = bitcast %union.anon* %668 to i64*
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %670 = getelementptr inbounds %struct.GPR, %struct.GPR* %669, i32 0, i32 15
  %671 = getelementptr inbounds %struct.Reg, %struct.Reg* %670, i32 0, i32 0
  %RBP.i811 = bitcast %union.anon* %671 to i64*
  %672 = load i64, i64* %RBP.i811
  %673 = sub i64 %672, 36
  %674 = load i64, i64* %PC.i809
  %675 = add i64 %674, 4
  store i64 %675, i64* %PC.i809
  %676 = inttoptr i64 %673 to i32*
  %677 = load i32, i32* %676
  %678 = sext i32 %677 to i64
  store i64 %678, i64* %RCX.i810, align 8
  store %struct.Memory* %loadMem_437d00, %struct.Memory** %MEMORY
  %loadMem_437d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 33
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %681 to i64*
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 5
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %RCX.i808 = bitcast %union.anon* %684 to i64*
  %685 = load i64, i64* %RCX.i808
  %686 = load i64, i64* %PC.i807
  %687 = add i64 %686, 4
  store i64 %687, i64* %PC.i807
  %688 = sext i64 %685 to i128
  %689 = and i128 %688, -18446744073709551616
  %690 = zext i64 %685 to i128
  %691 = or i128 %689, %690
  %692 = mul i128 36, %691
  %693 = trunc i128 %692 to i64
  store i64 %693, i64* %RCX.i808, align 8
  %694 = sext i64 %693 to i128
  %695 = icmp ne i128 %694, %692
  %696 = zext i1 %695 to i8
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %696, i8* %697, align 1
  %698 = trunc i128 %692 to i32
  %699 = and i32 %698, 255
  %700 = call i32 @llvm.ctpop.i32(i32 %699)
  %701 = trunc i32 %700 to i8
  %702 = and i8 %701, 1
  %703 = xor i8 %702, 1
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %703, i8* %704, align 1
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %705, align 1
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %706, align 1
  %707 = lshr i64 %693, 63
  %708 = trunc i64 %707 to i8
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %708, i8* %709, align 1
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %696, i8* %710, align 1
  store %struct.Memory* %loadMem_437d04, %struct.Memory** %MEMORY
  %loadMem_437d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 33
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %713 to i64*
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 1
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %RAX.i805 = bitcast %union.anon* %716 to i64*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 5
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %RCX.i806 = bitcast %union.anon* %719 to i64*
  %720 = load i64, i64* %RAX.i805
  %721 = load i64, i64* %RCX.i806
  %722 = load i64, i64* %PC.i804
  %723 = add i64 %722, 3
  store i64 %723, i64* %PC.i804
  %724 = add i64 %721, %720
  store i64 %724, i64* %RAX.i805, align 8
  %725 = icmp ult i64 %724, %720
  %726 = icmp ult i64 %724, %721
  %727 = or i1 %725, %726
  %728 = zext i1 %727 to i8
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %728, i8* %729, align 1
  %730 = trunc i64 %724 to i32
  %731 = and i32 %730, 255
  %732 = call i32 @llvm.ctpop.i32(i32 %731)
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %735, i8* %736, align 1
  %737 = xor i64 %721, %720
  %738 = xor i64 %737, %724
  %739 = lshr i64 %738, 4
  %740 = trunc i64 %739 to i8
  %741 = and i8 %740, 1
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %741, i8* %742, align 1
  %743 = icmp eq i64 %724, 0
  %744 = zext i1 %743 to i8
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %744, i8* %745, align 1
  %746 = lshr i64 %724, 63
  %747 = trunc i64 %746 to i8
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %747, i8* %748, align 1
  %749 = lshr i64 %720, 63
  %750 = lshr i64 %721, 63
  %751 = xor i64 %746, %749
  %752 = xor i64 %746, %750
  %753 = add i64 %751, %752
  %754 = icmp eq i64 %753, 2
  %755 = zext i1 %754 to i8
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %755, i8* %756, align 1
  store %struct.Memory* %loadMem_437d08, %struct.Memory** %MEMORY
  %loadMem_437d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 33
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %759 to i64*
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 1
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %RAX.i802 = bitcast %union.anon* %762 to i64*
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %764 = getelementptr inbounds %struct.GPR, %struct.GPR* %763, i32 0, i32 11
  %765 = getelementptr inbounds %struct.Reg, %struct.Reg* %764, i32 0, i32 0
  %RDI.i803 = bitcast %union.anon* %765 to i64*
  %766 = load i64, i64* %RAX.i802
  %767 = load i64, i64* %PC.i801
  %768 = add i64 %767, 3
  store i64 %768, i64* %PC.i801
  store i64 %766, i64* %RDI.i803, align 8
  store %struct.Memory* %loadMem_437d0b, %struct.Memory** %MEMORY
  %loadMem1_437d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 33
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %771 to i64*
  %772 = load i64, i64* %PC.i800
  %773 = add i64 %772, 1858
  %774 = load i64, i64* %PC.i800
  %775 = add i64 %774, 5
  %776 = load i64, i64* %PC.i800
  %777 = add i64 %776, 5
  store i64 %777, i64* %PC.i800
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %779 = load i64, i64* %778, align 8
  %780 = add i64 %779, -8
  %781 = inttoptr i64 %780 to i64*
  store i64 %775, i64* %781
  store i64 %780, i64* %778, align 8
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %773, i64* %782, align 8
  store %struct.Memory* %loadMem1_437d0e, %struct.Memory** %MEMORY
  %loadMem2_437d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_437d0e = load i64, i64* %3
  %call2_437d0e = call %struct.Memory* @sub_438450.clear_eye(%struct.State* %0, i64 %loadPC_437d0e, %struct.Memory* %loadMem2_437d0e)
  store %struct.Memory* %call2_437d0e, %struct.Memory** %MEMORY
  br label %block_.L_437d13

block_.L_437d13:                                  ; preds = %block_437cfc, %block_437cf1
  %loadMem_437d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %784 = getelementptr inbounds %struct.GPR, %struct.GPR* %783, i32 0, i32 33
  %785 = getelementptr inbounds %struct.Reg, %struct.Reg* %784, i32 0, i32 0
  %PC.i798 = bitcast %union.anon* %785 to i64*
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 15
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %RBP.i799 = bitcast %union.anon* %788 to i64*
  %789 = load i64, i64* %RBP.i799
  %790 = sub i64 %789, 16
  %791 = load i64, i64* %PC.i798
  %792 = add i64 %791, 5
  store i64 %792, i64* %PC.i798
  %793 = inttoptr i64 %790 to i64*
  %794 = load i64, i64* %793
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %795, align 1
  %796 = trunc i64 %794 to i32
  %797 = and i32 %796, 255
  %798 = call i32 @llvm.ctpop.i32(i32 %797)
  %799 = trunc i32 %798 to i8
  %800 = and i8 %799, 1
  %801 = xor i8 %800, 1
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %801, i8* %802, align 1
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %803, align 1
  %804 = icmp eq i64 %794, 0
  %805 = zext i1 %804 to i8
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %805, i8* %806, align 1
  %807 = lshr i64 %794, 63
  %808 = trunc i64 %807 to i8
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %808, i8* %809, align 1
  %810 = lshr i64 %794, 63
  %811 = xor i64 %807, %810
  %812 = add i64 %811, %810
  %813 = icmp eq i64 %812, 2
  %814 = zext i1 %813 to i8
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %814, i8* %815, align 1
  store %struct.Memory* %loadMem_437d13, %struct.Memory** %MEMORY
  %loadMem_437d18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 33
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %818 to i64*
  %819 = load i64, i64* %PC.i797
  %820 = add i64 %819, 29
  %821 = load i64, i64* %PC.i797
  %822 = add i64 %821, 6
  %823 = load i64, i64* %PC.i797
  %824 = add i64 %823, 6
  store i64 %824, i64* %PC.i797
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %826 = load i8, i8* %825, align 1
  store i8 %826, i8* %BRANCH_TAKEN, align 1
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %828 = icmp ne i8 %826, 0
  %829 = select i1 %828, i64 %820, i64 %822
  store i64 %829, i64* %827, align 8
  store %struct.Memory* %loadMem_437d18, %struct.Memory** %MEMORY
  %loadBr_437d18 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437d18 = icmp eq i8 %loadBr_437d18, 1
  br i1 %cmpBr_437d18, label %block_.L_437d35, label %block_437d1e

block_437d1e:                                     ; preds = %block_.L_437d13
  %loadMem_437d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 33
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %832 to i64*
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 1
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %RAX.i795 = bitcast %union.anon* %835 to i64*
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 15
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %RBP.i796 = bitcast %union.anon* %838 to i64*
  %839 = load i64, i64* %RBP.i796
  %840 = sub i64 %839, 16
  %841 = load i64, i64* %PC.i794
  %842 = add i64 %841, 4
  store i64 %842, i64* %PC.i794
  %843 = inttoptr i64 %840 to i64*
  %844 = load i64, i64* %843
  store i64 %844, i64* %RAX.i795, align 8
  store %struct.Memory* %loadMem_437d1e, %struct.Memory** %MEMORY
  %loadMem_437d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 33
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %847 to i64*
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 5
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %RCX.i792 = bitcast %union.anon* %850 to i64*
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 15
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %RBP.i793 = bitcast %union.anon* %853 to i64*
  %854 = load i64, i64* %RBP.i793
  %855 = sub i64 %854, 36
  %856 = load i64, i64* %PC.i791
  %857 = add i64 %856, 4
  store i64 %857, i64* %PC.i791
  %858 = inttoptr i64 %855 to i32*
  %859 = load i32, i32* %858
  %860 = sext i32 %859 to i64
  store i64 %860, i64* %RCX.i792, align 8
  store %struct.Memory* %loadMem_437d22, %struct.Memory** %MEMORY
  %loadMem_437d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 33
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %863 to i64*
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 5
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %RCX.i790 = bitcast %union.anon* %866 to i64*
  %867 = load i64, i64* %RCX.i790
  %868 = load i64, i64* %PC.i789
  %869 = add i64 %868, 4
  store i64 %869, i64* %PC.i789
  %870 = sext i64 %867 to i128
  %871 = and i128 %870, -18446744073709551616
  %872 = zext i64 %867 to i128
  %873 = or i128 %871, %872
  %874 = mul i128 36, %873
  %875 = trunc i128 %874 to i64
  store i64 %875, i64* %RCX.i790, align 8
  %876 = sext i64 %875 to i128
  %877 = icmp ne i128 %876, %874
  %878 = zext i1 %877 to i8
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %878, i8* %879, align 1
  %880 = trunc i128 %874 to i32
  %881 = and i32 %880, 255
  %882 = call i32 @llvm.ctpop.i32(i32 %881)
  %883 = trunc i32 %882 to i8
  %884 = and i8 %883, 1
  %885 = xor i8 %884, 1
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %885, i8* %886, align 1
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %887, align 1
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %888, align 1
  %889 = lshr i64 %875, 63
  %890 = trunc i64 %889 to i8
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %890, i8* %891, align 1
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %878, i8* %892, align 1
  store %struct.Memory* %loadMem_437d26, %struct.Memory** %MEMORY
  %loadMem_437d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %894 = getelementptr inbounds %struct.GPR, %struct.GPR* %893, i32 0, i32 33
  %895 = getelementptr inbounds %struct.Reg, %struct.Reg* %894, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %895 to i64*
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %897 = getelementptr inbounds %struct.GPR, %struct.GPR* %896, i32 0, i32 1
  %898 = getelementptr inbounds %struct.Reg, %struct.Reg* %897, i32 0, i32 0
  %RAX.i787 = bitcast %union.anon* %898 to i64*
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 5
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %RCX.i788 = bitcast %union.anon* %901 to i64*
  %902 = load i64, i64* %RAX.i787
  %903 = load i64, i64* %RCX.i788
  %904 = load i64, i64* %PC.i786
  %905 = add i64 %904, 3
  store i64 %905, i64* %PC.i786
  %906 = add i64 %903, %902
  store i64 %906, i64* %RAX.i787, align 8
  %907 = icmp ult i64 %906, %902
  %908 = icmp ult i64 %906, %903
  %909 = or i1 %907, %908
  %910 = zext i1 %909 to i8
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %910, i8* %911, align 1
  %912 = trunc i64 %906 to i32
  %913 = and i32 %912, 255
  %914 = call i32 @llvm.ctpop.i32(i32 %913)
  %915 = trunc i32 %914 to i8
  %916 = and i8 %915, 1
  %917 = xor i8 %916, 1
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %917, i8* %918, align 1
  %919 = xor i64 %903, %902
  %920 = xor i64 %919, %906
  %921 = lshr i64 %920, 4
  %922 = trunc i64 %921 to i8
  %923 = and i8 %922, 1
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %923, i8* %924, align 1
  %925 = icmp eq i64 %906, 0
  %926 = zext i1 %925 to i8
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %926, i8* %927, align 1
  %928 = lshr i64 %906, 63
  %929 = trunc i64 %928 to i8
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %929, i8* %930, align 1
  %931 = lshr i64 %902, 63
  %932 = lshr i64 %903, 63
  %933 = xor i64 %928, %931
  %934 = xor i64 %928, %932
  %935 = add i64 %933, %934
  %936 = icmp eq i64 %935, 2
  %937 = zext i1 %936 to i8
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %937, i8* %938, align 1
  store %struct.Memory* %loadMem_437d2a, %struct.Memory** %MEMORY
  %loadMem_437d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %940 = getelementptr inbounds %struct.GPR, %struct.GPR* %939, i32 0, i32 33
  %941 = getelementptr inbounds %struct.Reg, %struct.Reg* %940, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %941 to i64*
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 1
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %RAX.i784 = bitcast %union.anon* %944 to i64*
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 11
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %RDI.i785 = bitcast %union.anon* %947 to i64*
  %948 = load i64, i64* %RAX.i784
  %949 = load i64, i64* %PC.i783
  %950 = add i64 %949, 3
  store i64 %950, i64* %PC.i783
  store i64 %948, i64* %RDI.i785, align 8
  store %struct.Memory* %loadMem_437d2d, %struct.Memory** %MEMORY
  %loadMem1_437d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 33
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %953 to i64*
  %954 = load i64, i64* %PC.i782
  %955 = add i64 %954, 1824
  %956 = load i64, i64* %PC.i782
  %957 = add i64 %956, 5
  %958 = load i64, i64* %PC.i782
  %959 = add i64 %958, 5
  store i64 %959, i64* %PC.i782
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %961 = load i64, i64* %960, align 8
  %962 = add i64 %961, -8
  %963 = inttoptr i64 %962 to i64*
  store i64 %957, i64* %963
  store i64 %962, i64* %960, align 8
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %955, i64* %964, align 8
  store %struct.Memory* %loadMem1_437d30, %struct.Memory** %MEMORY
  %loadMem2_437d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_437d30 = load i64, i64* %3
  %call2_437d30 = call %struct.Memory* @sub_438450.clear_eye(%struct.State* %0, i64 %loadPC_437d30, %struct.Memory* %loadMem2_437d30)
  store %struct.Memory* %call2_437d30, %struct.Memory** %MEMORY
  br label %block_.L_437d35

block_.L_437d35:                                  ; preds = %block_437d1e, %block_.L_437d13
  %loadMem_437d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %966 = getelementptr inbounds %struct.GPR, %struct.GPR* %965, i32 0, i32 33
  %967 = getelementptr inbounds %struct.Reg, %struct.Reg* %966, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %967 to i64*
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 11
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %RDI.i780 = bitcast %union.anon* %970 to i64*
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 15
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %RBP.i781 = bitcast %union.anon* %973 to i64*
  %974 = load i64, i64* %RBP.i781
  %975 = sub i64 %974, 20
  %976 = load i64, i64* %PC.i779
  %977 = add i64 %976, 3
  store i64 %977, i64* %PC.i779
  %978 = inttoptr i64 %975 to i32*
  %979 = load i32, i32* %978
  %980 = zext i32 %979 to i64
  store i64 %980, i64* %RDI.i780, align 8
  store %struct.Memory* %loadMem_437d35, %struct.Memory** %MEMORY
  %loadMem_437d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 33
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %983 to i64*
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 9
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %RSI.i777 = bitcast %union.anon* %986 to i64*
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 15
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %RBP.i778 = bitcast %union.anon* %989 to i64*
  %990 = load i64, i64* %RBP.i778
  %991 = sub i64 %990, 36
  %992 = load i64, i64* %PC.i776
  %993 = add i64 %992, 3
  store i64 %993, i64* %PC.i776
  %994 = inttoptr i64 %991 to i32*
  %995 = load i32, i32* %994
  %996 = zext i32 %995 to i64
  store i64 %996, i64* %RSI.i777, align 8
  store %struct.Memory* %loadMem_437d38, %struct.Memory** %MEMORY
  %loadMem1_437d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 33
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %999 to i64*
  %1000 = load i64, i64* %PC.i775
  %1001 = add i64 %1000, 1973
  %1002 = load i64, i64* %PC.i775
  %1003 = add i64 %1002, 5
  %1004 = load i64, i64* %PC.i775
  %1005 = add i64 %1004, 5
  store i64 %1005, i64* %PC.i775
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1007 = load i64, i64* %1006, align 8
  %1008 = add i64 %1007, -8
  %1009 = inttoptr i64 %1008 to i64*
  store i64 %1003, i64* %1009
  store i64 %1008, i64* %1006, align 8
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1001, i64* %1010, align 8
  store %struct.Memory* %loadMem1_437d3b, %struct.Memory** %MEMORY
  %loadMem2_437d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_437d3b = load i64, i64* %3
  %call2_437d3b = call %struct.Memory* @sub_4384f0.is_lively(%struct.State* %0, i64 %loadPC_437d3b, %struct.Memory* %loadMem2_437d3b)
  store %struct.Memory* %call2_437d3b, %struct.Memory** %MEMORY
  %loadMem_437d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 33
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %1013 to i64*
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1015 = getelementptr inbounds %struct.GPR, %struct.GPR* %1014, i32 0, i32 5
  %1016 = getelementptr inbounds %struct.Reg, %struct.Reg* %1015, i32 0, i32 0
  %RCX.i773 = bitcast %union.anon* %1016 to i64*
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 15
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %RBP.i774 = bitcast %union.anon* %1019 to i64*
  %1020 = load i64, i64* %RBP.i774
  %1021 = sub i64 %1020, 36
  %1022 = load i64, i64* %PC.i772
  %1023 = add i64 %1022, 4
  store i64 %1023, i64* %PC.i772
  %1024 = inttoptr i64 %1021 to i32*
  %1025 = load i32, i32* %1024
  %1026 = sext i32 %1025 to i64
  store i64 %1026, i64* %RCX.i773, align 8
  store %struct.Memory* %loadMem_437d40, %struct.Memory** %MEMORY
  %loadMem_437d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 33
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %1029 to i64*
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 1
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %EAX.i769 = bitcast %union.anon* %1032 to i32*
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 5
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %RCX.i770 = bitcast %union.anon* %1035 to i64*
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 15
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %RBP.i771 = bitcast %union.anon* %1038 to i64*
  %1039 = load i64, i64* %RBP.i771
  %1040 = load i64, i64* %RCX.i770
  %1041 = mul i64 %1040, 4
  %1042 = add i64 %1039, -1648
  %1043 = add i64 %1042, %1041
  %1044 = load i32, i32* %EAX.i769
  %1045 = zext i32 %1044 to i64
  %1046 = load i64, i64* %PC.i768
  %1047 = add i64 %1046, 7
  store i64 %1047, i64* %PC.i768
  %1048 = inttoptr i64 %1043 to i32*
  store i32 %1044, i32* %1048
  store %struct.Memory* %loadMem_437d44, %struct.Memory** %MEMORY
  br label %block_.L_437d4b

block_.L_437d4b:                                  ; preds = %block_.L_437d35, %block_437cdc
  %loadMem_437d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 33
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %1051 to i64*
  %1052 = load i64, i64* %PC.i767
  %1053 = add i64 %1052, 5
  %1054 = load i64, i64* %PC.i767
  %1055 = add i64 %1054, 5
  store i64 %1055, i64* %PC.i767
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1053, i64* %1056, align 8
  store %struct.Memory* %loadMem_437d4b, %struct.Memory** %MEMORY
  br label %block_.L_437d50

block_.L_437d50:                                  ; preds = %block_.L_437d4b
  %loadMem_437d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 33
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %1059 to i64*
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 1
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %RAX.i765 = bitcast %union.anon* %1062 to i64*
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1064 = getelementptr inbounds %struct.GPR, %struct.GPR* %1063, i32 0, i32 15
  %1065 = getelementptr inbounds %struct.Reg, %struct.Reg* %1064, i32 0, i32 0
  %RBP.i766 = bitcast %union.anon* %1065 to i64*
  %1066 = load i64, i64* %RBP.i766
  %1067 = sub i64 %1066, 36
  %1068 = load i64, i64* %PC.i764
  %1069 = add i64 %1068, 3
  store i64 %1069, i64* %PC.i764
  %1070 = inttoptr i64 %1067 to i32*
  %1071 = load i32, i32* %1070
  %1072 = zext i32 %1071 to i64
  store i64 %1072, i64* %RAX.i765, align 8
  store %struct.Memory* %loadMem_437d50, %struct.Memory** %MEMORY
  %loadMem_437d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 33
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %1075 to i64*
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 1
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %RAX.i763 = bitcast %union.anon* %1078 to i64*
  %1079 = load i64, i64* %RAX.i763
  %1080 = load i64, i64* %PC.i762
  %1081 = add i64 %1080, 3
  store i64 %1081, i64* %PC.i762
  %1082 = trunc i64 %1079 to i32
  %1083 = add i32 1, %1082
  %1084 = zext i32 %1083 to i64
  store i64 %1084, i64* %RAX.i763, align 8
  %1085 = icmp ult i32 %1083, %1082
  %1086 = icmp ult i32 %1083, 1
  %1087 = or i1 %1085, %1086
  %1088 = zext i1 %1087 to i8
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1088, i8* %1089, align 1
  %1090 = and i32 %1083, 255
  %1091 = call i32 @llvm.ctpop.i32(i32 %1090)
  %1092 = trunc i32 %1091 to i8
  %1093 = and i8 %1092, 1
  %1094 = xor i8 %1093, 1
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1094, i8* %1095, align 1
  %1096 = xor i64 1, %1079
  %1097 = trunc i64 %1096 to i32
  %1098 = xor i32 %1097, %1083
  %1099 = lshr i32 %1098, 4
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1101, i8* %1102, align 1
  %1103 = icmp eq i32 %1083, 0
  %1104 = zext i1 %1103 to i8
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1104, i8* %1105, align 1
  %1106 = lshr i32 %1083, 31
  %1107 = trunc i32 %1106 to i8
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1107, i8* %1108, align 1
  %1109 = lshr i32 %1082, 31
  %1110 = xor i32 %1106, %1109
  %1111 = add i32 %1110, %1106
  %1112 = icmp eq i32 %1111, 2
  %1113 = zext i1 %1112 to i8
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1113, i8* %1114, align 1
  store %struct.Memory* %loadMem_437d53, %struct.Memory** %MEMORY
  %loadMem_437d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 33
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %1117 to i64*
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1119 = getelementptr inbounds %struct.GPR, %struct.GPR* %1118, i32 0, i32 1
  %1120 = getelementptr inbounds %struct.Reg, %struct.Reg* %1119, i32 0, i32 0
  %EAX.i760 = bitcast %union.anon* %1120 to i32*
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 15
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %RBP.i761 = bitcast %union.anon* %1123 to i64*
  %1124 = load i64, i64* %RBP.i761
  %1125 = sub i64 %1124, 36
  %1126 = load i32, i32* %EAX.i760
  %1127 = zext i32 %1126 to i64
  %1128 = load i64, i64* %PC.i759
  %1129 = add i64 %1128, 3
  store i64 %1129, i64* %PC.i759
  %1130 = inttoptr i64 %1125 to i32*
  store i32 %1126, i32* %1130
  store %struct.Memory* %loadMem_437d56, %struct.Memory** %MEMORY
  %loadMem_437d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 33
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %1133 to i64*
  %1134 = load i64, i64* %PC.i758
  %1135 = add i64 %1134, -138
  %1136 = load i64, i64* %PC.i758
  %1137 = add i64 %1136, 5
  store i64 %1137, i64* %PC.i758
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1135, i64* %1138, align 8
  store %struct.Memory* %loadMem_437d59, %struct.Memory** %MEMORY
  br label %block_.L_437ccf

block_.L_437d5e:                                  ; preds = %block_.L_437ccf
  %loadMem_437d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 33
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %1141 to i64*
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 11
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %RDI.i757 = bitcast %union.anon* %1144 to i64*
  %1145 = load i64, i64* %PC.i756
  %1146 = add i64 %1145, 5
  store i64 %1146, i64* %PC.i756
  store i64 2, i64* %RDI.i757, align 8
  store %struct.Memory* %loadMem_437d5e, %struct.Memory** %MEMORY
  %loadMem_437d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 33
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %1149 to i64*
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1151 = getelementptr inbounds %struct.GPR, %struct.GPR* %1150, i32 0, i32 9
  %1152 = getelementptr inbounds %struct.Reg, %struct.Reg* %1151, i32 0, i32 0
  %RSI.i755 = bitcast %union.anon* %1152 to i64*
  %1153 = load i64, i64* %PC.i754
  %1154 = add i64 %1153, 10
  store i64 %1154, i64* %PC.i754
  store i64 ptrtoint (%G__0xac1610_type* @G__0xac1610 to i64), i64* %RSI.i755, align 8
  store %struct.Memory* %loadMem_437d63, %struct.Memory** %MEMORY
  %loadMem_437d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 33
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %1157 to i64*
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 17
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %R8D.i753 = bitcast %union.anon* %1160 to i32*
  %1161 = bitcast i32* %R8D.i753 to i64*
  %1162 = load i64, i64* %PC.i752
  %1163 = add i64 %1162, 6
  store i64 %1163, i64* %PC.i752
  store i64 1, i64* %1161, align 8
  store %struct.Memory* %loadMem_437d6d, %struct.Memory** %MEMORY
  %loadMem_437d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1165 = getelementptr inbounds %struct.GPR, %struct.GPR* %1164, i32 0, i32 33
  %1166 = getelementptr inbounds %struct.Reg, %struct.Reg* %1165, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %1166 to i64*
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 5
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %RCX.i750 = bitcast %union.anon* %1169 to i64*
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1171 = getelementptr inbounds %struct.GPR, %struct.GPR* %1170, i32 0, i32 15
  %1172 = getelementptr inbounds %struct.Reg, %struct.Reg* %1171, i32 0, i32 0
  %RBP.i751 = bitcast %union.anon* %1172 to i64*
  %1173 = load i64, i64* %RBP.i751
  %1174 = sub i64 %1173, 3248
  %1175 = load i64, i64* %PC.i749
  %1176 = add i64 %1175, 7
  store i64 %1176, i64* %PC.i749
  store i64 %1174, i64* %RCX.i750, align 8
  store %struct.Memory* %loadMem_437d73, %struct.Memory** %MEMORY
  %loadMem_437d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 33
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %1179 to i64*
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 7
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %RDX.i747 = bitcast %union.anon* %1182 to i64*
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1184 = getelementptr inbounds %struct.GPR, %struct.GPR* %1183, i32 0, i32 15
  %1185 = getelementptr inbounds %struct.Reg, %struct.Reg* %1184, i32 0, i32 0
  %RBP.i748 = bitcast %union.anon* %1185 to i64*
  %1186 = load i64, i64* %RBP.i748
  %1187 = sub i64 %1186, 1648
  %1188 = load i64, i64* %PC.i746
  %1189 = add i64 %1188, 7
  store i64 %1189, i64* %PC.i746
  store i64 %1187, i64* %RDX.i747, align 8
  store %struct.Memory* %loadMem_437d7a, %struct.Memory** %MEMORY
  %loadMem1_437d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 33
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %1192 to i64*
  %1193 = load i64, i64* %PC.i745
  %1194 = add i64 %1193, 2127
  %1195 = load i64, i64* %PC.i745
  %1196 = add i64 %1195, 5
  %1197 = load i64, i64* %PC.i745
  %1198 = add i64 %1197, 5
  store i64 %1198, i64* %PC.i745
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1200 = load i64, i64* %1199, align 8
  %1201 = add i64 %1200, -8
  %1202 = inttoptr i64 %1201 to i64*
  store i64 %1196, i64* %1202
  store i64 %1201, i64* %1199, align 8
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1194, i64* %1203, align 8
  store %struct.Memory* %loadMem1_437d81, %struct.Memory** %MEMORY
  %loadMem2_437d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_437d81 = load i64, i64* %3
  %call2_437d81 = call %struct.Memory* @sub_4385d0.compute_primary_domains(%struct.State* %0, i64 %loadPC_437d81, %struct.Memory* %loadMem2_437d81)
  store %struct.Memory* %call2_437d81, %struct.Memory** %MEMORY
  %loadMem_437d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 33
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %1206 to i64*
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 11
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %RDI.i744 = bitcast %union.anon* %1209 to i64*
  %1210 = load i64, i64* %PC.i743
  %1211 = add i64 %1210, 5
  store i64 %1211, i64* %PC.i743
  store i64 1, i64* %RDI.i744, align 8
  store %struct.Memory* %loadMem_437d86, %struct.Memory** %MEMORY
  %loadMem_437d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 33
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %1214 to i64*
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1216 = getelementptr inbounds %struct.GPR, %struct.GPR* %1215, i32 0, i32 9
  %1217 = getelementptr inbounds %struct.Reg, %struct.Reg* %1216, i32 0, i32 0
  %RSI.i742 = bitcast %union.anon* %1217 to i64*
  %1218 = load i64, i64* %PC.i741
  %1219 = add i64 %1218, 10
  store i64 %1219, i64* %PC.i741
  store i64 ptrtoint (%G__0xac1c50_type* @G__0xac1c50 to i64), i64* %RSI.i742, align 8
  store %struct.Memory* %loadMem_437d8b, %struct.Memory** %MEMORY
  %loadMem_437d95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 33
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %1222 to i64*
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 17
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %1225 to i32*
  %1226 = bitcast i32* %R8D.i to i64*
  %1227 = load i32, i32* %R8D.i
  %1228 = zext i32 %1227 to i64
  %1229 = load i32, i32* %R8D.i
  %1230 = zext i32 %1229 to i64
  %1231 = load i64, i64* %PC.i740
  %1232 = add i64 %1231, 3
  store i64 %1232, i64* %PC.i740
  %1233 = xor i64 %1230, %1228
  %1234 = trunc i64 %1233 to i32
  %1235 = and i64 %1233, 4294967295
  store i64 %1235, i64* %1226, align 8
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1236, align 1
  %1237 = and i32 %1234, 255
  %1238 = call i32 @llvm.ctpop.i32(i32 %1237)
  %1239 = trunc i32 %1238 to i8
  %1240 = and i8 %1239, 1
  %1241 = xor i8 %1240, 1
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1241, i8* %1242, align 1
  %1243 = icmp eq i32 %1234, 0
  %1244 = zext i1 %1243 to i8
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1244, i8* %1245, align 1
  %1246 = lshr i32 %1234, 31
  %1247 = trunc i32 %1246 to i8
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1247, i8* %1248, align 1
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1249, align 1
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1250, align 1
  store %struct.Memory* %loadMem_437d95, %struct.Memory** %MEMORY
  %loadMem_437d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1252 = getelementptr inbounds %struct.GPR, %struct.GPR* %1251, i32 0, i32 33
  %1253 = getelementptr inbounds %struct.Reg, %struct.Reg* %1252, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %1253 to i64*
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 5
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %RCX.i738 = bitcast %union.anon* %1256 to i64*
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 15
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %RBP.i739 = bitcast %union.anon* %1259 to i64*
  %1260 = load i64, i64* %RBP.i739
  %1261 = sub i64 %1260, 3248
  %1262 = load i64, i64* %PC.i737
  %1263 = add i64 %1262, 7
  store i64 %1263, i64* %PC.i737
  store i64 %1261, i64* %RCX.i738, align 8
  store %struct.Memory* %loadMem_437d98, %struct.Memory** %MEMORY
  %loadMem_437d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 33
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %1266 to i64*
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 7
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %RDX.i735 = bitcast %union.anon* %1269 to i64*
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 15
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %RBP.i736 = bitcast %union.anon* %1272 to i64*
  %1273 = load i64, i64* %RBP.i736
  %1274 = sub i64 %1273, 1648
  %1275 = load i64, i64* %PC.i734
  %1276 = add i64 %1275, 7
  store i64 %1276, i64* %PC.i734
  store i64 %1274, i64* %RDX.i735, align 8
  store %struct.Memory* %loadMem_437d9f, %struct.Memory** %MEMORY
  %loadMem1_437da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 33
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %1279 to i64*
  %1280 = load i64, i64* %PC.i733
  %1281 = add i64 %1280, 2090
  %1282 = load i64, i64* %PC.i733
  %1283 = add i64 %1282, 5
  %1284 = load i64, i64* %PC.i733
  %1285 = add i64 %1284, 5
  store i64 %1285, i64* %PC.i733
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1287 = load i64, i64* %1286, align 8
  %1288 = add i64 %1287, -8
  %1289 = inttoptr i64 %1288 to i64*
  store i64 %1283, i64* %1289
  store i64 %1288, i64* %1286, align 8
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1281, i64* %1290, align 8
  store %struct.Memory* %loadMem1_437da6, %struct.Memory** %MEMORY
  %loadMem2_437da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_437da6 = load i64, i64* %3
  %call2_437da6 = call %struct.Memory* @sub_4385d0.compute_primary_domains(%struct.State* %0, i64 %loadPC_437da6, %struct.Memory* %loadMem2_437da6)
  store %struct.Memory* %call2_437da6, %struct.Memory** %MEMORY
  %loadMem_437dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 33
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %1293 to i64*
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 15
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %RBP.i732 = bitcast %union.anon* %1296 to i64*
  %1297 = load i64, i64* %RBP.i732
  %1298 = sub i64 %1297, 24
  %1299 = load i64, i64* %PC.i731
  %1300 = add i64 %1299, 7
  store i64 %1300, i64* %PC.i731
  %1301 = inttoptr i64 %1298 to i32*
  store i32 0, i32* %1301
  store %struct.Memory* %loadMem_437dab, %struct.Memory** %MEMORY
  br label %block_.L_437db2

block_.L_437db2:                                  ; preds = %block_.L_43822d, %block_.L_437d5e
  %loadMem_437db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 33
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %1304 to i64*
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1306 = getelementptr inbounds %struct.GPR, %struct.GPR* %1305, i32 0, i32 1
  %1307 = getelementptr inbounds %struct.Reg, %struct.Reg* %1306, i32 0, i32 0
  %RAX.i729 = bitcast %union.anon* %1307 to i64*
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 15
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %RBP.i730 = bitcast %union.anon* %1310 to i64*
  %1311 = load i64, i64* %RBP.i730
  %1312 = sub i64 %1311, 24
  %1313 = load i64, i64* %PC.i728
  %1314 = add i64 %1313, 3
  store i64 %1314, i64* %PC.i728
  %1315 = inttoptr i64 %1312 to i32*
  %1316 = load i32, i32* %1315
  %1317 = zext i32 %1316 to i64
  store i64 %1317, i64* %RAX.i729, align 8
  store %struct.Memory* %loadMem_437db2, %struct.Memory** %MEMORY
  %loadMem_437db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 33
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %1320 to i64*
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 1
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %EAX.i727 = bitcast %union.anon* %1323 to i32*
  %1324 = load i32, i32* %EAX.i727
  %1325 = zext i32 %1324 to i64
  %1326 = load i64, i64* %PC.i726
  %1327 = add i64 %1326, 7
  store i64 %1327, i64* %PC.i726
  %1328 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %1329 = sub i32 %1324, %1328
  %1330 = icmp ult i32 %1324, %1328
  %1331 = zext i1 %1330 to i8
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1331, i8* %1332, align 1
  %1333 = and i32 %1329, 255
  %1334 = call i32 @llvm.ctpop.i32(i32 %1333)
  %1335 = trunc i32 %1334 to i8
  %1336 = and i8 %1335, 1
  %1337 = xor i8 %1336, 1
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1337, i8* %1338, align 1
  %1339 = xor i32 %1328, %1324
  %1340 = xor i32 %1339, %1329
  %1341 = lshr i32 %1340, 4
  %1342 = trunc i32 %1341 to i8
  %1343 = and i8 %1342, 1
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1343, i8* %1344, align 1
  %1345 = icmp eq i32 %1329, 0
  %1346 = zext i1 %1345 to i8
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1346, i8* %1347, align 1
  %1348 = lshr i32 %1329, 31
  %1349 = trunc i32 %1348 to i8
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1349, i8* %1350, align 1
  %1351 = lshr i32 %1324, 31
  %1352 = lshr i32 %1328, 31
  %1353 = xor i32 %1352, %1351
  %1354 = xor i32 %1348, %1351
  %1355 = add i32 %1354, %1353
  %1356 = icmp eq i32 %1355, 2
  %1357 = zext i1 %1356 to i8
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1357, i8* %1358, align 1
  store %struct.Memory* %loadMem_437db5, %struct.Memory** %MEMORY
  %loadMem_437dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.GPR, %struct.GPR* %1359, i32 0, i32 33
  %1361 = getelementptr inbounds %struct.Reg, %struct.Reg* %1360, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %1361 to i64*
  %1362 = load i64, i64* %PC.i725
  %1363 = add i64 %1362, 1151
  %1364 = load i64, i64* %PC.i725
  %1365 = add i64 %1364, 6
  %1366 = load i64, i64* %PC.i725
  %1367 = add i64 %1366, 6
  store i64 %1367, i64* %PC.i725
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1369 = load i8, i8* %1368, align 1
  %1370 = icmp ne i8 %1369, 0
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1372 = load i8, i8* %1371, align 1
  %1373 = icmp ne i8 %1372, 0
  %1374 = xor i1 %1370, %1373
  %1375 = xor i1 %1374, true
  %1376 = zext i1 %1375 to i8
  store i8 %1376, i8* %BRANCH_TAKEN, align 1
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1378 = select i1 %1374, i64 %1365, i64 %1363
  store i64 %1378, i64* %1377, align 8
  store %struct.Memory* %loadMem_437dbc, %struct.Memory** %MEMORY
  %loadBr_437dbc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437dbc = icmp eq i8 %loadBr_437dbc, 1
  br i1 %cmpBr_437dbc, label %block_.L_43823b, label %block_437dc2

block_437dc2:                                     ; preds = %block_.L_437db2
  %loadMem_437dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1380 = getelementptr inbounds %struct.GPR, %struct.GPR* %1379, i32 0, i32 33
  %1381 = getelementptr inbounds %struct.Reg, %struct.Reg* %1380, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %1381 to i64*
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1383 = getelementptr inbounds %struct.GPR, %struct.GPR* %1382, i32 0, i32 15
  %1384 = getelementptr inbounds %struct.Reg, %struct.Reg* %1383, i32 0, i32 0
  %RBP.i724 = bitcast %union.anon* %1384 to i64*
  %1385 = load i64, i64* %RBP.i724
  %1386 = sub i64 %1385, 28
  %1387 = load i64, i64* %PC.i723
  %1388 = add i64 %1387, 7
  store i64 %1388, i64* %PC.i723
  %1389 = inttoptr i64 %1386 to i32*
  store i32 0, i32* %1389
  store %struct.Memory* %loadMem_437dc2, %struct.Memory** %MEMORY
  br label %block_.L_437dc9

block_.L_437dc9:                                  ; preds = %block_.L_43821a, %block_437dc2
  %loadMem_437dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 33
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %1392 to i64*
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 1
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %RAX.i721 = bitcast %union.anon* %1395 to i64*
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 15
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %RBP.i722 = bitcast %union.anon* %1398 to i64*
  %1399 = load i64, i64* %RBP.i722
  %1400 = sub i64 %1399, 28
  %1401 = load i64, i64* %PC.i720
  %1402 = add i64 %1401, 3
  store i64 %1402, i64* %PC.i720
  %1403 = inttoptr i64 %1400 to i32*
  %1404 = load i32, i32* %1403
  %1405 = zext i32 %1404 to i64
  store i64 %1405, i64* %RAX.i721, align 8
  store %struct.Memory* %loadMem_437dc9, %struct.Memory** %MEMORY
  %loadMem_437dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1407 = getelementptr inbounds %struct.GPR, %struct.GPR* %1406, i32 0, i32 33
  %1408 = getelementptr inbounds %struct.Reg, %struct.Reg* %1407, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %1408 to i64*
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 1
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %EAX.i719 = bitcast %union.anon* %1411 to i32*
  %1412 = load i32, i32* %EAX.i719
  %1413 = zext i32 %1412 to i64
  %1414 = load i64, i64* %PC.i718
  %1415 = add i64 %1414, 7
  store i64 %1415, i64* %PC.i718
  %1416 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %1417 = sub i32 %1412, %1416
  %1418 = icmp ult i32 %1412, %1416
  %1419 = zext i1 %1418 to i8
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1419, i8* %1420, align 1
  %1421 = and i32 %1417, 255
  %1422 = call i32 @llvm.ctpop.i32(i32 %1421)
  %1423 = trunc i32 %1422 to i8
  %1424 = and i8 %1423, 1
  %1425 = xor i8 %1424, 1
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1425, i8* %1426, align 1
  %1427 = xor i32 %1416, %1412
  %1428 = xor i32 %1427, %1417
  %1429 = lshr i32 %1428, 4
  %1430 = trunc i32 %1429 to i8
  %1431 = and i8 %1430, 1
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1431, i8* %1432, align 1
  %1433 = icmp eq i32 %1417, 0
  %1434 = zext i1 %1433 to i8
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1434, i8* %1435, align 1
  %1436 = lshr i32 %1417, 31
  %1437 = trunc i32 %1436 to i8
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1437, i8* %1438, align 1
  %1439 = lshr i32 %1412, 31
  %1440 = lshr i32 %1416, 31
  %1441 = xor i32 %1440, %1439
  %1442 = xor i32 %1436, %1439
  %1443 = add i32 %1442, %1441
  %1444 = icmp eq i32 %1443, 2
  %1445 = zext i1 %1444 to i8
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1445, i8* %1446, align 1
  store %struct.Memory* %loadMem_437dcc, %struct.Memory** %MEMORY
  %loadMem_437dd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.GPR, %struct.GPR* %1447, i32 0, i32 33
  %1449 = getelementptr inbounds %struct.Reg, %struct.Reg* %1448, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %1449 to i64*
  %1450 = load i64, i64* %PC.i717
  %1451 = add i64 %1450, 1109
  %1452 = load i64, i64* %PC.i717
  %1453 = add i64 %1452, 6
  %1454 = load i64, i64* %PC.i717
  %1455 = add i64 %1454, 6
  store i64 %1455, i64* %PC.i717
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1457 = load i8, i8* %1456, align 1
  %1458 = icmp ne i8 %1457, 0
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1460 = load i8, i8* %1459, align 1
  %1461 = icmp ne i8 %1460, 0
  %1462 = xor i1 %1458, %1461
  %1463 = xor i1 %1462, true
  %1464 = zext i1 %1463 to i8
  store i8 %1464, i8* %BRANCH_TAKEN, align 1
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1466 = select i1 %1462, i64 %1453, i64 %1451
  store i64 %1466, i64* %1465, align 8
  store %struct.Memory* %loadMem_437dd3, %struct.Memory** %MEMORY
  %loadBr_437dd3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437dd3 = icmp eq i8 %loadBr_437dd3, 1
  br i1 %cmpBr_437dd3, label %block_.L_438228, label %block_437dd9

block_437dd9:                                     ; preds = %block_.L_437dc9
  %loadMem_437dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 33
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %1469 to i64*
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 1
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %RAX.i715 = bitcast %union.anon* %1472 to i64*
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 15
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %RBP.i716 = bitcast %union.anon* %1475 to i64*
  %1476 = load i64, i64* %RBP.i716
  %1477 = sub i64 %1476, 24
  %1478 = load i64, i64* %PC.i714
  %1479 = add i64 %1478, 4
  store i64 %1479, i64* %PC.i714
  %1480 = inttoptr i64 %1477 to i32*
  %1481 = load i32, i32* %1480
  %1482 = sext i32 %1481 to i64
  %1483 = mul i64 %1482, 20
  %1484 = trunc i64 %1483 to i32
  %1485 = and i64 %1483, 4294967295
  store i64 %1485, i64* %RAX.i715, align 8
  %1486 = shl i64 %1483, 32
  %1487 = ashr exact i64 %1486, 32
  %1488 = icmp ne i64 %1487, %1483
  %1489 = zext i1 %1488 to i8
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1489, i8* %1490, align 1
  %1491 = and i32 %1484, 255
  %1492 = call i32 @llvm.ctpop.i32(i32 %1491)
  %1493 = trunc i32 %1492 to i8
  %1494 = and i8 %1493, 1
  %1495 = xor i8 %1494, 1
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1495, i8* %1496, align 1
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1497, align 1
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1498, align 1
  %1499 = lshr i32 %1484, 31
  %1500 = trunc i32 %1499 to i8
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1500, i8* %1501, align 1
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1489, i8* %1502, align 1
  store %struct.Memory* %loadMem_437dd9, %struct.Memory** %MEMORY
  %loadMem_437ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1504 = getelementptr inbounds %struct.GPR, %struct.GPR* %1503, i32 0, i32 33
  %1505 = getelementptr inbounds %struct.Reg, %struct.Reg* %1504, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %1505 to i64*
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 1
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %RAX.i713 = bitcast %union.anon* %1508 to i64*
  %1509 = load i64, i64* %RAX.i713
  %1510 = load i64, i64* %PC.i712
  %1511 = add i64 %1510, 3
  store i64 %1511, i64* %PC.i712
  %1512 = trunc i64 %1509 to i32
  %1513 = add i32 21, %1512
  %1514 = zext i32 %1513 to i64
  store i64 %1514, i64* %RAX.i713, align 8
  %1515 = icmp ult i32 %1513, %1512
  %1516 = icmp ult i32 %1513, 21
  %1517 = or i1 %1515, %1516
  %1518 = zext i1 %1517 to i8
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1518, i8* %1519, align 1
  %1520 = and i32 %1513, 255
  %1521 = call i32 @llvm.ctpop.i32(i32 %1520)
  %1522 = trunc i32 %1521 to i8
  %1523 = and i8 %1522, 1
  %1524 = xor i8 %1523, 1
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1524, i8* %1525, align 1
  %1526 = xor i64 21, %1509
  %1527 = trunc i64 %1526 to i32
  %1528 = xor i32 %1527, %1513
  %1529 = lshr i32 %1528, 4
  %1530 = trunc i32 %1529 to i8
  %1531 = and i8 %1530, 1
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1531, i8* %1532, align 1
  %1533 = icmp eq i32 %1513, 0
  %1534 = zext i1 %1533 to i8
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1534, i8* %1535, align 1
  %1536 = lshr i32 %1513, 31
  %1537 = trunc i32 %1536 to i8
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1537, i8* %1538, align 1
  %1539 = lshr i32 %1512, 31
  %1540 = xor i32 %1536, %1539
  %1541 = add i32 %1540, %1536
  %1542 = icmp eq i32 %1541, 2
  %1543 = zext i1 %1542 to i8
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1543, i8* %1544, align 1
  store %struct.Memory* %loadMem_437ddd, %struct.Memory** %MEMORY
  %loadMem_437de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 33
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %1547 to i64*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 1
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %RAX.i710 = bitcast %union.anon* %1550 to i64*
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 15
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %RBP.i711 = bitcast %union.anon* %1553 to i64*
  %1554 = load i64, i64* %RAX.i710
  %1555 = load i64, i64* %RBP.i711
  %1556 = sub i64 %1555, 28
  %1557 = load i64, i64* %PC.i709
  %1558 = add i64 %1557, 3
  store i64 %1558, i64* %PC.i709
  %1559 = trunc i64 %1554 to i32
  %1560 = inttoptr i64 %1556 to i32*
  %1561 = load i32, i32* %1560
  %1562 = add i32 %1561, %1559
  %1563 = zext i32 %1562 to i64
  store i64 %1563, i64* %RAX.i710, align 8
  %1564 = icmp ult i32 %1562, %1559
  %1565 = icmp ult i32 %1562, %1561
  %1566 = or i1 %1564, %1565
  %1567 = zext i1 %1566 to i8
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1567, i8* %1568, align 1
  %1569 = and i32 %1562, 255
  %1570 = call i32 @llvm.ctpop.i32(i32 %1569)
  %1571 = trunc i32 %1570 to i8
  %1572 = and i8 %1571, 1
  %1573 = xor i8 %1572, 1
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1573, i8* %1574, align 1
  %1575 = xor i32 %1561, %1559
  %1576 = xor i32 %1575, %1562
  %1577 = lshr i32 %1576, 4
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1579, i8* %1580, align 1
  %1581 = icmp eq i32 %1562, 0
  %1582 = zext i1 %1581 to i8
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1582, i8* %1583, align 1
  %1584 = lshr i32 %1562, 31
  %1585 = trunc i32 %1584 to i8
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1585, i8* %1586, align 1
  %1587 = lshr i32 %1559, 31
  %1588 = lshr i32 %1561, 31
  %1589 = xor i32 %1584, %1587
  %1590 = xor i32 %1584, %1588
  %1591 = add i32 %1589, %1590
  %1592 = icmp eq i32 %1591, 2
  %1593 = zext i1 %1592 to i8
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1593, i8* %1594, align 1
  store %struct.Memory* %loadMem_437de0, %struct.Memory** %MEMORY
  %loadMem_437de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 33
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %1597 to i64*
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 1
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %EAX.i707 = bitcast %union.anon* %1600 to i32*
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1602 = getelementptr inbounds %struct.GPR, %struct.GPR* %1601, i32 0, i32 15
  %1603 = getelementptr inbounds %struct.Reg, %struct.Reg* %1602, i32 0, i32 0
  %RBP.i708 = bitcast %union.anon* %1603 to i64*
  %1604 = load i64, i64* %RBP.i708
  %1605 = sub i64 %1604, 36
  %1606 = load i32, i32* %EAX.i707
  %1607 = zext i32 %1606 to i64
  %1608 = load i64, i64* %PC.i706
  %1609 = add i64 %1608, 3
  store i64 %1609, i64* %PC.i706
  %1610 = inttoptr i64 %1605 to i32*
  store i32 %1606, i32* %1610
  store %struct.Memory* %loadMem_437de3, %struct.Memory** %MEMORY
  %loadMem_437de6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1612 = getelementptr inbounds %struct.GPR, %struct.GPR* %1611, i32 0, i32 33
  %1613 = getelementptr inbounds %struct.Reg, %struct.Reg* %1612, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %1613 to i64*
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 5
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %RCX.i704 = bitcast %union.anon* %1616 to i64*
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 15
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %1619 to i64*
  %1620 = load i64, i64* %RBP.i705
  %1621 = sub i64 %1620, 36
  %1622 = load i64, i64* %PC.i703
  %1623 = add i64 %1622, 4
  store i64 %1623, i64* %PC.i703
  %1624 = inttoptr i64 %1621 to i32*
  %1625 = load i32, i32* %1624
  %1626 = sext i32 %1625 to i64
  store i64 %1626, i64* %RCX.i704, align 8
  store %struct.Memory* %loadMem_437de6, %struct.Memory** %MEMORY
  %loadMem_437dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 33
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %1629 to i64*
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 1
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %RAX.i701 = bitcast %union.anon* %1632 to i64*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 5
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %RCX.i702 = bitcast %union.anon* %1635 to i64*
  %1636 = load i64, i64* %RCX.i702
  %1637 = add i64 %1636, 12099168
  %1638 = load i64, i64* %PC.i700
  %1639 = add i64 %1638, 8
  store i64 %1639, i64* %PC.i700
  %1640 = inttoptr i64 %1637 to i8*
  %1641 = load i8, i8* %1640
  %1642 = zext i8 %1641 to i64
  store i64 %1642, i64* %RAX.i701, align 8
  store %struct.Memory* %loadMem_437dea, %struct.Memory** %MEMORY
  %loadMem_437df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 33
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %1645 to i64*
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1647 = getelementptr inbounds %struct.GPR, %struct.GPR* %1646, i32 0, i32 1
  %1648 = getelementptr inbounds %struct.Reg, %struct.Reg* %1647, i32 0, i32 0
  %EAX.i699 = bitcast %union.anon* %1648 to i32*
  %1649 = load i32, i32* %EAX.i699
  %1650 = zext i32 %1649 to i64
  %1651 = load i64, i64* %PC.i698
  %1652 = add i64 %1651, 3
  store i64 %1652, i64* %PC.i698
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1653, align 1
  %1654 = and i32 %1649, 255
  %1655 = call i32 @llvm.ctpop.i32(i32 %1654)
  %1656 = trunc i32 %1655 to i8
  %1657 = and i8 %1656, 1
  %1658 = xor i8 %1657, 1
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1658, i8* %1659, align 1
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1660, align 1
  %1661 = icmp eq i32 %1649, 0
  %1662 = zext i1 %1661 to i8
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1662, i8* %1663, align 1
  %1664 = lshr i32 %1649, 31
  %1665 = trunc i32 %1664 to i8
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1665, i8* %1666, align 1
  %1667 = lshr i32 %1649, 31
  %1668 = xor i32 %1664, %1667
  %1669 = add i32 %1668, %1667
  %1670 = icmp eq i32 %1669, 2
  %1671 = zext i1 %1670 to i8
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1671, i8* %1672, align 1
  store %struct.Memory* %loadMem_437df2, %struct.Memory** %MEMORY
  %loadMem_437df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1674 = getelementptr inbounds %struct.GPR, %struct.GPR* %1673, i32 0, i32 33
  %1675 = getelementptr inbounds %struct.Reg, %struct.Reg* %1674, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %1675 to i64*
  %1676 = load i64, i64* %PC.i697
  %1677 = add i64 %1676, 24
  %1678 = load i64, i64* %PC.i697
  %1679 = add i64 %1678, 6
  %1680 = load i64, i64* %PC.i697
  %1681 = add i64 %1680, 6
  store i64 %1681, i64* %PC.i697
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1683 = load i8, i8* %1682, align 1
  store i8 %1683, i8* %BRANCH_TAKEN, align 1
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1685 = icmp ne i8 %1683, 0
  %1686 = select i1 %1685, i64 %1677, i64 %1679
  store i64 %1686, i64* %1684, align 8
  store %struct.Memory* %loadMem_437df5, %struct.Memory** %MEMORY
  %loadBr_437df5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437df5 = icmp eq i8 %loadBr_437df5, 1
  br i1 %cmpBr_437df5, label %block_.L_437e0d, label %block_437dfb

block_437dfb:                                     ; preds = %block_437dd9
  %loadMem_437dfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1688 = getelementptr inbounds %struct.GPR, %struct.GPR* %1687, i32 0, i32 33
  %1689 = getelementptr inbounds %struct.Reg, %struct.Reg* %1688, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %1689 to i64*
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1691 = getelementptr inbounds %struct.GPR, %struct.GPR* %1690, i32 0, i32 1
  %1692 = getelementptr inbounds %struct.Reg, %struct.Reg* %1691, i32 0, i32 0
  %RAX.i695 = bitcast %union.anon* %1692 to i64*
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 15
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %RBP.i696 = bitcast %union.anon* %1695 to i64*
  %1696 = load i64, i64* %RBP.i696
  %1697 = sub i64 %1696, 36
  %1698 = load i64, i64* %PC.i694
  %1699 = add i64 %1698, 4
  store i64 %1699, i64* %PC.i694
  %1700 = inttoptr i64 %1697 to i32*
  %1701 = load i32, i32* %1700
  %1702 = sext i32 %1701 to i64
  store i64 %1702, i64* %RAX.i695, align 8
  store %struct.Memory* %loadMem_437dfb, %struct.Memory** %MEMORY
  %loadMem_437dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1704 = getelementptr inbounds %struct.GPR, %struct.GPR* %1703, i32 0, i32 33
  %1705 = getelementptr inbounds %struct.Reg, %struct.Reg* %1704, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %1705 to i64*
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 1
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %RAX.i692 = bitcast %union.anon* %1708 to i64*
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 15
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %RBP.i693 = bitcast %union.anon* %1711 to i64*
  %1712 = load i64, i64* %RBP.i693
  %1713 = load i64, i64* %RAX.i692
  %1714 = mul i64 %1713, 4
  %1715 = add i64 %1712, -1648
  %1716 = add i64 %1715, %1714
  %1717 = load i64, i64* %PC.i691
  %1718 = add i64 %1717, 8
  store i64 %1718, i64* %PC.i691
  %1719 = inttoptr i64 %1716 to i32*
  %1720 = load i32, i32* %1719
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1721, align 1
  %1722 = and i32 %1720, 255
  %1723 = call i32 @llvm.ctpop.i32(i32 %1722)
  %1724 = trunc i32 %1723 to i8
  %1725 = and i8 %1724, 1
  %1726 = xor i8 %1725, 1
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1726, i8* %1727, align 1
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1728, align 1
  %1729 = icmp eq i32 %1720, 0
  %1730 = zext i1 %1729 to i8
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1730, i8* %1731, align 1
  %1732 = lshr i32 %1720, 31
  %1733 = trunc i32 %1732 to i8
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1733, i8* %1734, align 1
  %1735 = lshr i32 %1720, 31
  %1736 = xor i32 %1732, %1735
  %1737 = add i32 %1736, %1735
  %1738 = icmp eq i32 %1737, 2
  %1739 = zext i1 %1738 to i8
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1739, i8* %1740, align 1
  store %struct.Memory* %loadMem_437dff, %struct.Memory** %MEMORY
  %loadMem_437e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1742 = getelementptr inbounds %struct.GPR, %struct.GPR* %1741, i32 0, i32 33
  %1743 = getelementptr inbounds %struct.Reg, %struct.Reg* %1742, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %1743 to i64*
  %1744 = load i64, i64* %PC.i690
  %1745 = add i64 %1744, 1038
  %1746 = load i64, i64* %PC.i690
  %1747 = add i64 %1746, 6
  %1748 = load i64, i64* %PC.i690
  %1749 = add i64 %1748, 6
  store i64 %1749, i64* %PC.i690
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1751 = load i8, i8* %1750, align 1
  %1752 = icmp eq i8 %1751, 0
  %1753 = zext i1 %1752 to i8
  store i8 %1753, i8* %BRANCH_TAKEN, align 1
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1755 = select i1 %1752, i64 %1745, i64 %1747
  store i64 %1755, i64* %1754, align 8
  store %struct.Memory* %loadMem_437e07, %struct.Memory** %MEMORY
  %loadBr_437e07 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437e07 = icmp eq i8 %loadBr_437e07, 1
  br i1 %cmpBr_437e07, label %block_.L_438215, label %block_.L_437e0d

block_.L_437e0d:                                  ; preds = %block_437dfb, %block_437dd9
  %loadMem_437e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 33
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %1758 to i64*
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 1
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %RAX.i688 = bitcast %union.anon* %1761 to i64*
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 15
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %RBP.i689 = bitcast %union.anon* %1764 to i64*
  %1765 = load i64, i64* %RBP.i689
  %1766 = sub i64 %1765, 36
  %1767 = load i64, i64* %PC.i687
  %1768 = add i64 %1767, 4
  store i64 %1768, i64* %PC.i687
  %1769 = inttoptr i64 %1766 to i32*
  %1770 = load i32, i32* %1769
  %1771 = sext i32 %1770 to i64
  store i64 %1771, i64* %RAX.i688, align 8
  store %struct.Memory* %loadMem_437e0d, %struct.Memory** %MEMORY
  %loadMem_437e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 33
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %1774 to i64*
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 1
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %RAX.i686 = bitcast %union.anon* %1777 to i64*
  %1778 = load i64, i64* %RAX.i686
  %1779 = mul i64 %1778, 4
  %1780 = add i64 %1779, 11277840
  %1781 = load i64, i64* %PC.i685
  %1782 = add i64 %1781, 8
  store i64 %1782, i64* %PC.i685
  %1783 = inttoptr i64 %1780 to i32*
  %1784 = load i32, i32* %1783
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1785, align 1
  %1786 = and i32 %1784, 255
  %1787 = call i32 @llvm.ctpop.i32(i32 %1786)
  %1788 = trunc i32 %1787 to i8
  %1789 = and i8 %1788, 1
  %1790 = xor i8 %1789, 1
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1790, i8* %1791, align 1
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1792, align 1
  %1793 = icmp eq i32 %1784, 0
  %1794 = zext i1 %1793 to i8
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1794, i8* %1795, align 1
  %1796 = lshr i32 %1784, 31
  %1797 = trunc i32 %1796 to i8
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1797, i8* %1798, align 1
  %1799 = lshr i32 %1784, 31
  %1800 = xor i32 %1796, %1799
  %1801 = add i32 %1800, %1799
  %1802 = icmp eq i32 %1801, 2
  %1803 = zext i1 %1802 to i8
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1803, i8* %1804, align 1
  store %struct.Memory* %loadMem_437e11, %struct.Memory** %MEMORY
  %loadMem_437e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1806 = getelementptr inbounds %struct.GPR, %struct.GPR* %1805, i32 0, i32 33
  %1807 = getelementptr inbounds %struct.Reg, %struct.Reg* %1806, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %1807 to i64*
  %1808 = load i64, i64* %PC.i684
  %1809 = add i64 %1808, 93
  %1810 = load i64, i64* %PC.i684
  %1811 = add i64 %1810, 6
  %1812 = load i64, i64* %PC.i684
  %1813 = add i64 %1812, 6
  store i64 %1813, i64* %PC.i684
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1815 = load i8, i8* %1814, align 1
  %1816 = icmp eq i8 %1815, 0
  %1817 = zext i1 %1816 to i8
  store i8 %1817, i8* %BRANCH_TAKEN, align 1
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1819 = select i1 %1816, i64 %1809, i64 %1811
  store i64 %1819, i64* %1818, align 8
  store %struct.Memory* %loadMem_437e19, %struct.Memory** %MEMORY
  %loadBr_437e19 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437e19 = icmp eq i8 %loadBr_437e19, 1
  br i1 %cmpBr_437e19, label %block_.L_437e76, label %block_437e1f

block_437e1f:                                     ; preds = %block_.L_437e0d
  %loadMem_437e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 33
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %1822 to i64*
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 1
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %RAX.i682 = bitcast %union.anon* %1825 to i64*
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1827 = getelementptr inbounds %struct.GPR, %struct.GPR* %1826, i32 0, i32 15
  %1828 = getelementptr inbounds %struct.Reg, %struct.Reg* %1827, i32 0, i32 0
  %RBP.i683 = bitcast %union.anon* %1828 to i64*
  %1829 = load i64, i64* %RBP.i683
  %1830 = sub i64 %1829, 36
  %1831 = load i64, i64* %PC.i681
  %1832 = add i64 %1831, 4
  store i64 %1832, i64* %PC.i681
  %1833 = inttoptr i64 %1830 to i32*
  %1834 = load i32, i32* %1833
  %1835 = sext i32 %1834 to i64
  store i64 %1835, i64* %RAX.i682, align 8
  store %struct.Memory* %loadMem_437e1f, %struct.Memory** %MEMORY
  %loadMem_437e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 33
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %1838 to i64*
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 1
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %RAX.i680 = bitcast %union.anon* %1841 to i64*
  %1842 = load i64, i64* %RAX.i680
  %1843 = mul i64 %1842, 4
  %1844 = add i64 %1843, 11279440
  %1845 = load i64, i64* %PC.i679
  %1846 = add i64 %1845, 8
  store i64 %1846, i64* %PC.i679
  %1847 = inttoptr i64 %1844 to i32*
  %1848 = load i32, i32* %1847
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1849, align 1
  %1850 = and i32 %1848, 255
  %1851 = call i32 @llvm.ctpop.i32(i32 %1850)
  %1852 = trunc i32 %1851 to i8
  %1853 = and i8 %1852, 1
  %1854 = xor i8 %1853, 1
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1854, i8* %1855, align 1
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1856, align 1
  %1857 = icmp eq i32 %1848, 0
  %1858 = zext i1 %1857 to i8
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1858, i8* %1859, align 1
  %1860 = lshr i32 %1848, 31
  %1861 = trunc i32 %1860 to i8
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1861, i8* %1862, align 1
  %1863 = lshr i32 %1848, 31
  %1864 = xor i32 %1860, %1863
  %1865 = add i32 %1864, %1863
  %1866 = icmp eq i32 %1865, 2
  %1867 = zext i1 %1866 to i8
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1867, i8* %1868, align 1
  store %struct.Memory* %loadMem_437e23, %struct.Memory** %MEMORY
  %loadMem_437e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 33
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %1871 to i64*
  %1872 = load i64, i64* %PC.i678
  %1873 = add i64 %1872, 75
  %1874 = load i64, i64* %PC.i678
  %1875 = add i64 %1874, 6
  %1876 = load i64, i64* %PC.i678
  %1877 = add i64 %1876, 6
  store i64 %1877, i64* %PC.i678
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1879 = load i8, i8* %1878, align 1
  %1880 = icmp eq i8 %1879, 0
  %1881 = zext i1 %1880 to i8
  store i8 %1881, i8* %BRANCH_TAKEN, align 1
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1883 = select i1 %1880, i64 %1873, i64 %1875
  store i64 %1883, i64* %1882, align 8
  store %struct.Memory* %loadMem_437e2b, %struct.Memory** %MEMORY
  %loadBr_437e2b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437e2b = icmp eq i8 %loadBr_437e2b, 1
  br i1 %cmpBr_437e2b, label %block_.L_437e76, label %block_437e31

block_437e31:                                     ; preds = %block_437e1f
  %loadMem_437e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1885 = getelementptr inbounds %struct.GPR, %struct.GPR* %1884, i32 0, i32 33
  %1886 = getelementptr inbounds %struct.Reg, %struct.Reg* %1885, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %1886 to i64*
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1888 = getelementptr inbounds %struct.GPR, %struct.GPR* %1887, i32 0, i32 15
  %1889 = getelementptr inbounds %struct.Reg, %struct.Reg* %1888, i32 0, i32 0
  %RBP.i677 = bitcast %union.anon* %1889 to i64*
  %1890 = load i64, i64* %RBP.i677
  %1891 = sub i64 %1890, 16
  %1892 = load i64, i64* %PC.i676
  %1893 = add i64 %1892, 5
  store i64 %1893, i64* %PC.i676
  %1894 = inttoptr i64 %1891 to i64*
  %1895 = load i64, i64* %1894
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1896, align 1
  %1897 = trunc i64 %1895 to i32
  %1898 = and i32 %1897, 255
  %1899 = call i32 @llvm.ctpop.i32(i32 %1898)
  %1900 = trunc i32 %1899 to i8
  %1901 = and i8 %1900, 1
  %1902 = xor i8 %1901, 1
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1902, i8* %1903, align 1
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1904, align 1
  %1905 = icmp eq i64 %1895, 0
  %1906 = zext i1 %1905 to i8
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1906, i8* %1907, align 1
  %1908 = lshr i64 %1895, 63
  %1909 = trunc i64 %1908 to i8
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1909, i8* %1910, align 1
  %1911 = lshr i64 %1895, 63
  %1912 = xor i64 %1908, %1911
  %1913 = add i64 %1912, %1911
  %1914 = icmp eq i64 %1913, 2
  %1915 = zext i1 %1914 to i8
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1915, i8* %1916, align 1
  store %struct.Memory* %loadMem_437e31, %struct.Memory** %MEMORY
  %loadMem_437e36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1918 = getelementptr inbounds %struct.GPR, %struct.GPR* %1917, i32 0, i32 33
  %1919 = getelementptr inbounds %struct.Reg, %struct.Reg* %1918, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %1919 to i64*
  %1920 = load i64, i64* %PC.i675
  %1921 = add i64 %1920, 27
  %1922 = load i64, i64* %PC.i675
  %1923 = add i64 %1922, 6
  %1924 = load i64, i64* %PC.i675
  %1925 = add i64 %1924, 6
  store i64 %1925, i64* %PC.i675
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1927 = load i8, i8* %1926, align 1
  store i8 %1927, i8* %BRANCH_TAKEN, align 1
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1929 = icmp ne i8 %1927, 0
  %1930 = select i1 %1929, i64 %1921, i64 %1923
  store i64 %1930, i64* %1928, align 8
  store %struct.Memory* %loadMem_437e36, %struct.Memory** %MEMORY
  %loadBr_437e36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437e36 = icmp eq i8 %loadBr_437e36, 1
  br i1 %cmpBr_437e36, label %block_.L_437e51, label %block_437e3c

block_437e3c:                                     ; preds = %block_437e31
  %loadMem_437e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 33
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %1933 to i64*
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 1
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %RAX.i673 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 15
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %RBP.i674 = bitcast %union.anon* %1939 to i64*
  %1940 = load i64, i64* %RBP.i674
  %1941 = sub i64 %1940, 16
  %1942 = load i64, i64* %PC.i672
  %1943 = add i64 %1942, 4
  store i64 %1943, i64* %PC.i672
  %1944 = inttoptr i64 %1941 to i64*
  %1945 = load i64, i64* %1944
  store i64 %1945, i64* %RAX.i673, align 8
  store %struct.Memory* %loadMem_437e3c, %struct.Memory** %MEMORY
  %loadMem_437e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 33
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %1948 to i64*
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1950 = getelementptr inbounds %struct.GPR, %struct.GPR* %1949, i32 0, i32 5
  %1951 = getelementptr inbounds %struct.Reg, %struct.Reg* %1950, i32 0, i32 0
  %RCX.i670 = bitcast %union.anon* %1951 to i64*
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1953 = getelementptr inbounds %struct.GPR, %struct.GPR* %1952, i32 0, i32 15
  %1954 = getelementptr inbounds %struct.Reg, %struct.Reg* %1953, i32 0, i32 0
  %RBP.i671 = bitcast %union.anon* %1954 to i64*
  %1955 = load i64, i64* %RBP.i671
  %1956 = sub i64 %1955, 36
  %1957 = load i64, i64* %PC.i669
  %1958 = add i64 %1957, 4
  store i64 %1958, i64* %PC.i669
  %1959 = inttoptr i64 %1956 to i32*
  %1960 = load i32, i32* %1959
  %1961 = sext i32 %1960 to i64
  store i64 %1961, i64* %RCX.i670, align 8
  store %struct.Memory* %loadMem_437e40, %struct.Memory** %MEMORY
  %loadMem_437e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 33
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %1964 to i64*
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 5
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %RCX.i668 = bitcast %union.anon* %1967 to i64*
  %1968 = load i64, i64* %RCX.i668
  %1969 = load i64, i64* %PC.i667
  %1970 = add i64 %1969, 4
  store i64 %1970, i64* %PC.i667
  %1971 = sext i64 %1968 to i128
  %1972 = and i128 %1971, -18446744073709551616
  %1973 = zext i64 %1968 to i128
  %1974 = or i128 %1972, %1973
  %1975 = mul i128 36, %1974
  %1976 = trunc i128 %1975 to i64
  store i64 %1976, i64* %RCX.i668, align 8
  %1977 = sext i64 %1976 to i128
  %1978 = icmp ne i128 %1977, %1975
  %1979 = zext i1 %1978 to i8
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1979, i8* %1980, align 1
  %1981 = trunc i128 %1975 to i32
  %1982 = and i32 %1981, 255
  %1983 = call i32 @llvm.ctpop.i32(i32 %1982)
  %1984 = trunc i32 %1983 to i8
  %1985 = and i8 %1984, 1
  %1986 = xor i8 %1985, 1
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1986, i8* %1987, align 1
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1988, align 1
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1989, align 1
  %1990 = lshr i64 %1976, 63
  %1991 = trunc i64 %1990 to i8
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1991, i8* %1992, align 1
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1979, i8* %1993, align 1
  store %struct.Memory* %loadMem_437e44, %struct.Memory** %MEMORY
  %loadMem_437e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 33
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %1996 to i64*
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 1
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %RAX.i665 = bitcast %union.anon* %1999 to i64*
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 5
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %RCX.i666 = bitcast %union.anon* %2002 to i64*
  %2003 = load i64, i64* %RAX.i665
  %2004 = load i64, i64* %RCX.i666
  %2005 = load i64, i64* %PC.i664
  %2006 = add i64 %2005, 3
  store i64 %2006, i64* %PC.i664
  %2007 = add i64 %2004, %2003
  store i64 %2007, i64* %RAX.i665, align 8
  %2008 = icmp ult i64 %2007, %2003
  %2009 = icmp ult i64 %2007, %2004
  %2010 = or i1 %2008, %2009
  %2011 = zext i1 %2010 to i8
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2011, i8* %2012, align 1
  %2013 = trunc i64 %2007 to i32
  %2014 = and i32 %2013, 255
  %2015 = call i32 @llvm.ctpop.i32(i32 %2014)
  %2016 = trunc i32 %2015 to i8
  %2017 = and i8 %2016, 1
  %2018 = xor i8 %2017, 1
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2018, i8* %2019, align 1
  %2020 = xor i64 %2004, %2003
  %2021 = xor i64 %2020, %2007
  %2022 = lshr i64 %2021, 4
  %2023 = trunc i64 %2022 to i8
  %2024 = and i8 %2023, 1
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2024, i8* %2025, align 1
  %2026 = icmp eq i64 %2007, 0
  %2027 = zext i1 %2026 to i8
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2027, i8* %2028, align 1
  %2029 = lshr i64 %2007, 63
  %2030 = trunc i64 %2029 to i8
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2030, i8* %2031, align 1
  %2032 = lshr i64 %2003, 63
  %2033 = lshr i64 %2004, 63
  %2034 = xor i64 %2029, %2032
  %2035 = xor i64 %2029, %2033
  %2036 = add i64 %2034, %2035
  %2037 = icmp eq i64 %2036, 2
  %2038 = zext i1 %2037 to i8
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2038, i8* %2039, align 1
  store %struct.Memory* %loadMem_437e48, %struct.Memory** %MEMORY
  %loadMem_437e4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 33
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %2042 to i64*
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 1
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %RAX.i663 = bitcast %union.anon* %2045 to i64*
  %2046 = load i64, i64* %RAX.i663
  %2047 = load i64, i64* %PC.i662
  %2048 = add i64 %2047, 6
  store i64 %2048, i64* %PC.i662
  %2049 = inttoptr i64 %2046 to i32*
  store i32 3, i32* %2049
  store %struct.Memory* %loadMem_437e4b, %struct.Memory** %MEMORY
  br label %block_.L_437e51

block_.L_437e51:                                  ; preds = %block_437e3c, %block_437e31
  %loadMem_437e51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2051 = getelementptr inbounds %struct.GPR, %struct.GPR* %2050, i32 0, i32 33
  %2052 = getelementptr inbounds %struct.Reg, %struct.Reg* %2051, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %2052 to i64*
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 15
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %RBP.i661 = bitcast %union.anon* %2055 to i64*
  %2056 = load i64, i64* %RBP.i661
  %2057 = sub i64 %2056, 8
  %2058 = load i64, i64* %PC.i660
  %2059 = add i64 %2058, 5
  store i64 %2059, i64* %PC.i660
  %2060 = inttoptr i64 %2057 to i64*
  %2061 = load i64, i64* %2060
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2062, align 1
  %2063 = trunc i64 %2061 to i32
  %2064 = and i32 %2063, 255
  %2065 = call i32 @llvm.ctpop.i32(i32 %2064)
  %2066 = trunc i32 %2065 to i8
  %2067 = and i8 %2066, 1
  %2068 = xor i8 %2067, 1
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2068, i8* %2069, align 1
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2070, align 1
  %2071 = icmp eq i64 %2061, 0
  %2072 = zext i1 %2071 to i8
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2072, i8* %2073, align 1
  %2074 = lshr i64 %2061, 63
  %2075 = trunc i64 %2074 to i8
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2075, i8* %2076, align 1
  %2077 = lshr i64 %2061, 63
  %2078 = xor i64 %2074, %2077
  %2079 = add i64 %2078, %2077
  %2080 = icmp eq i64 %2079, 2
  %2081 = zext i1 %2080 to i8
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2081, i8* %2082, align 1
  store %struct.Memory* %loadMem_437e51, %struct.Memory** %MEMORY
  %loadMem_437e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 33
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %2085 to i64*
  %2086 = load i64, i64* %PC.i659
  %2087 = add i64 %2086, 27
  %2088 = load i64, i64* %PC.i659
  %2089 = add i64 %2088, 6
  %2090 = load i64, i64* %PC.i659
  %2091 = add i64 %2090, 6
  store i64 %2091, i64* %PC.i659
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2093 = load i8, i8* %2092, align 1
  store i8 %2093, i8* %BRANCH_TAKEN, align 1
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2095 = icmp ne i8 %2093, 0
  %2096 = select i1 %2095, i64 %2087, i64 %2089
  store i64 %2096, i64* %2094, align 8
  store %struct.Memory* %loadMem_437e56, %struct.Memory** %MEMORY
  %loadBr_437e56 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437e56 = icmp eq i8 %loadBr_437e56, 1
  br i1 %cmpBr_437e56, label %block_.L_437e71, label %block_437e5c

block_437e5c:                                     ; preds = %block_.L_437e51
  %loadMem_437e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 33
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %2099 to i64*
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 1
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %RAX.i657 = bitcast %union.anon* %2102 to i64*
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2104 = getelementptr inbounds %struct.GPR, %struct.GPR* %2103, i32 0, i32 15
  %2105 = getelementptr inbounds %struct.Reg, %struct.Reg* %2104, i32 0, i32 0
  %RBP.i658 = bitcast %union.anon* %2105 to i64*
  %2106 = load i64, i64* %RBP.i658
  %2107 = sub i64 %2106, 8
  %2108 = load i64, i64* %PC.i656
  %2109 = add i64 %2108, 4
  store i64 %2109, i64* %PC.i656
  %2110 = inttoptr i64 %2107 to i64*
  %2111 = load i64, i64* %2110
  store i64 %2111, i64* %RAX.i657, align 8
  store %struct.Memory* %loadMem_437e5c, %struct.Memory** %MEMORY
  %loadMem_437e60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 33
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %2114 to i64*
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 5
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %RCX.i654 = bitcast %union.anon* %2117 to i64*
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2119 = getelementptr inbounds %struct.GPR, %struct.GPR* %2118, i32 0, i32 15
  %2120 = getelementptr inbounds %struct.Reg, %struct.Reg* %2119, i32 0, i32 0
  %RBP.i655 = bitcast %union.anon* %2120 to i64*
  %2121 = load i64, i64* %RBP.i655
  %2122 = sub i64 %2121, 36
  %2123 = load i64, i64* %PC.i653
  %2124 = add i64 %2123, 4
  store i64 %2124, i64* %PC.i653
  %2125 = inttoptr i64 %2122 to i32*
  %2126 = load i32, i32* %2125
  %2127 = sext i32 %2126 to i64
  store i64 %2127, i64* %RCX.i654, align 8
  store %struct.Memory* %loadMem_437e60, %struct.Memory** %MEMORY
  %loadMem_437e64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2129 = getelementptr inbounds %struct.GPR, %struct.GPR* %2128, i32 0, i32 33
  %2130 = getelementptr inbounds %struct.Reg, %struct.Reg* %2129, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %2130 to i64*
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2132 = getelementptr inbounds %struct.GPR, %struct.GPR* %2131, i32 0, i32 5
  %2133 = getelementptr inbounds %struct.Reg, %struct.Reg* %2132, i32 0, i32 0
  %RCX.i652 = bitcast %union.anon* %2133 to i64*
  %2134 = load i64, i64* %RCX.i652
  %2135 = load i64, i64* %PC.i651
  %2136 = add i64 %2135, 4
  store i64 %2136, i64* %PC.i651
  %2137 = sext i64 %2134 to i128
  %2138 = and i128 %2137, -18446744073709551616
  %2139 = zext i64 %2134 to i128
  %2140 = or i128 %2138, %2139
  %2141 = mul i128 36, %2140
  %2142 = trunc i128 %2141 to i64
  store i64 %2142, i64* %RCX.i652, align 8
  %2143 = sext i64 %2142 to i128
  %2144 = icmp ne i128 %2143, %2141
  %2145 = zext i1 %2144 to i8
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2145, i8* %2146, align 1
  %2147 = trunc i128 %2141 to i32
  %2148 = and i32 %2147, 255
  %2149 = call i32 @llvm.ctpop.i32(i32 %2148)
  %2150 = trunc i32 %2149 to i8
  %2151 = and i8 %2150, 1
  %2152 = xor i8 %2151, 1
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2152, i8* %2153, align 1
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2154, align 1
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2155, align 1
  %2156 = lshr i64 %2142, 63
  %2157 = trunc i64 %2156 to i8
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2157, i8* %2158, align 1
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2145, i8* %2159, align 1
  store %struct.Memory* %loadMem_437e64, %struct.Memory** %MEMORY
  %loadMem_437e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2161 = getelementptr inbounds %struct.GPR, %struct.GPR* %2160, i32 0, i32 33
  %2162 = getelementptr inbounds %struct.Reg, %struct.Reg* %2161, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %2162 to i64*
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2164 = getelementptr inbounds %struct.GPR, %struct.GPR* %2163, i32 0, i32 1
  %2165 = getelementptr inbounds %struct.Reg, %struct.Reg* %2164, i32 0, i32 0
  %RAX.i649 = bitcast %union.anon* %2165 to i64*
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2167 = getelementptr inbounds %struct.GPR, %struct.GPR* %2166, i32 0, i32 5
  %2168 = getelementptr inbounds %struct.Reg, %struct.Reg* %2167, i32 0, i32 0
  %RCX.i650 = bitcast %union.anon* %2168 to i64*
  %2169 = load i64, i64* %RAX.i649
  %2170 = load i64, i64* %RCX.i650
  %2171 = load i64, i64* %PC.i648
  %2172 = add i64 %2171, 3
  store i64 %2172, i64* %PC.i648
  %2173 = add i64 %2170, %2169
  store i64 %2173, i64* %RAX.i649, align 8
  %2174 = icmp ult i64 %2173, %2169
  %2175 = icmp ult i64 %2173, %2170
  %2176 = or i1 %2174, %2175
  %2177 = zext i1 %2176 to i8
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2177, i8* %2178, align 1
  %2179 = trunc i64 %2173 to i32
  %2180 = and i32 %2179, 255
  %2181 = call i32 @llvm.ctpop.i32(i32 %2180)
  %2182 = trunc i32 %2181 to i8
  %2183 = and i8 %2182, 1
  %2184 = xor i8 %2183, 1
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2184, i8* %2185, align 1
  %2186 = xor i64 %2170, %2169
  %2187 = xor i64 %2186, %2173
  %2188 = lshr i64 %2187, 4
  %2189 = trunc i64 %2188 to i8
  %2190 = and i8 %2189, 1
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2190, i8* %2191, align 1
  %2192 = icmp eq i64 %2173, 0
  %2193 = zext i1 %2192 to i8
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2193, i8* %2194, align 1
  %2195 = lshr i64 %2173, 63
  %2196 = trunc i64 %2195 to i8
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2196, i8* %2197, align 1
  %2198 = lshr i64 %2169, 63
  %2199 = lshr i64 %2170, 63
  %2200 = xor i64 %2195, %2198
  %2201 = xor i64 %2195, %2199
  %2202 = add i64 %2200, %2201
  %2203 = icmp eq i64 %2202, 2
  %2204 = zext i1 %2203 to i8
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2204, i8* %2205, align 1
  store %struct.Memory* %loadMem_437e68, %struct.Memory** %MEMORY
  %loadMem_437e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2207 = getelementptr inbounds %struct.GPR, %struct.GPR* %2206, i32 0, i32 33
  %2208 = getelementptr inbounds %struct.Reg, %struct.Reg* %2207, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %2208 to i64*
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 1
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %RAX.i647 = bitcast %union.anon* %2211 to i64*
  %2212 = load i64, i64* %RAX.i647
  %2213 = load i64, i64* %PC.i646
  %2214 = add i64 %2213, 6
  store i64 %2214, i64* %PC.i646
  %2215 = inttoptr i64 %2212 to i32*
  store i32 3, i32* %2215
  store %struct.Memory* %loadMem_437e6b, %struct.Memory** %MEMORY
  br label %block_.L_437e71

block_.L_437e71:                                  ; preds = %block_437e5c, %block_.L_437e51
  %loadMem_437e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 33
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %2218 to i64*
  %2219 = load i64, i64* %PC.i645
  %2220 = add i64 %2219, 927
  %2221 = load i64, i64* %PC.i645
  %2222 = add i64 %2221, 5
  store i64 %2222, i64* %PC.i645
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2220, i64* %2223, align 8
  store %struct.Memory* %loadMem_437e71, %struct.Memory** %MEMORY
  br label %block_.L_438210

block_.L_437e76:                                  ; preds = %block_437e1f, %block_.L_437e0d
  %loadMem_437e76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2225 = getelementptr inbounds %struct.GPR, %struct.GPR* %2224, i32 0, i32 33
  %2226 = getelementptr inbounds %struct.Reg, %struct.Reg* %2225, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %2226 to i64*
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2228 = getelementptr inbounds %struct.GPR, %struct.GPR* %2227, i32 0, i32 1
  %2229 = getelementptr inbounds %struct.Reg, %struct.Reg* %2228, i32 0, i32 0
  %RAX.i643 = bitcast %union.anon* %2229 to i64*
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2231 = getelementptr inbounds %struct.GPR, %struct.GPR* %2230, i32 0, i32 15
  %2232 = getelementptr inbounds %struct.Reg, %struct.Reg* %2231, i32 0, i32 0
  %RBP.i644 = bitcast %union.anon* %2232 to i64*
  %2233 = load i64, i64* %RBP.i644
  %2234 = sub i64 %2233, 36
  %2235 = load i64, i64* %PC.i642
  %2236 = add i64 %2235, 4
  store i64 %2236, i64* %PC.i642
  %2237 = inttoptr i64 %2234 to i32*
  %2238 = load i32, i32* %2237
  %2239 = sext i32 %2238 to i64
  store i64 %2239, i64* %RAX.i643, align 8
  store %struct.Memory* %loadMem_437e76, %struct.Memory** %MEMORY
  %loadMem_437e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2241 = getelementptr inbounds %struct.GPR, %struct.GPR* %2240, i32 0, i32 33
  %2242 = getelementptr inbounds %struct.Reg, %struct.Reg* %2241, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %2242 to i64*
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 1
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %RAX.i641 = bitcast %union.anon* %2245 to i64*
  %2246 = load i64, i64* %RAX.i641
  %2247 = mul i64 %2246, 4
  %2248 = add i64 %2247, 11277840
  %2249 = load i64, i64* %PC.i640
  %2250 = add i64 %2249, 8
  store i64 %2250, i64* %PC.i640
  %2251 = inttoptr i64 %2248 to i32*
  %2252 = load i32, i32* %2251
  %2253 = sub i32 %2252, 1
  %2254 = icmp ult i32 %2252, 1
  %2255 = zext i1 %2254 to i8
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2255, i8* %2256, align 1
  %2257 = and i32 %2253, 255
  %2258 = call i32 @llvm.ctpop.i32(i32 %2257)
  %2259 = trunc i32 %2258 to i8
  %2260 = and i8 %2259, 1
  %2261 = xor i8 %2260, 1
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2261, i8* %2262, align 1
  %2263 = xor i32 %2252, 1
  %2264 = xor i32 %2263, %2253
  %2265 = lshr i32 %2264, 4
  %2266 = trunc i32 %2265 to i8
  %2267 = and i8 %2266, 1
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2267, i8* %2268, align 1
  %2269 = icmp eq i32 %2253, 0
  %2270 = zext i1 %2269 to i8
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2270, i8* %2271, align 1
  %2272 = lshr i32 %2253, 31
  %2273 = trunc i32 %2272 to i8
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2273, i8* %2274, align 1
  %2275 = lshr i32 %2252, 31
  %2276 = xor i32 %2272, %2275
  %2277 = add i32 %2276, %2275
  %2278 = icmp eq i32 %2277, 2
  %2279 = zext i1 %2278 to i8
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2279, i8* %2280, align 1
  store %struct.Memory* %loadMem_437e7a, %struct.Memory** %MEMORY
  %loadMem_437e82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 33
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %2283 to i64*
  %2284 = load i64, i64* %PC.i639
  %2285 = add i64 %2284, 207
  %2286 = load i64, i64* %PC.i639
  %2287 = add i64 %2286, 6
  %2288 = load i64, i64* %PC.i639
  %2289 = add i64 %2288, 6
  store i64 %2289, i64* %PC.i639
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2291 = load i8, i8* %2290, align 1
  %2292 = icmp eq i8 %2291, 0
  %2293 = zext i1 %2292 to i8
  store i8 %2293, i8* %BRANCH_TAKEN, align 1
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2295 = select i1 %2292, i64 %2285, i64 %2287
  store i64 %2295, i64* %2294, align 8
  store %struct.Memory* %loadMem_437e82, %struct.Memory** %MEMORY
  %loadBr_437e82 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437e82 = icmp eq i8 %loadBr_437e82, 1
  br i1 %cmpBr_437e82, label %block_.L_437f51, label %block_437e88

block_437e88:                                     ; preds = %block_.L_437e76
  %loadMem_437e88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 33
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %2298 to i64*
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 1
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %RAX.i637 = bitcast %union.anon* %2301 to i64*
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 15
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %RBP.i638 = bitcast %union.anon* %2304 to i64*
  %2305 = load i64, i64* %RBP.i638
  %2306 = sub i64 %2305, 36
  %2307 = load i64, i64* %PC.i636
  %2308 = add i64 %2307, 4
  store i64 %2308, i64* %PC.i636
  %2309 = inttoptr i64 %2306 to i32*
  %2310 = load i32, i32* %2309
  %2311 = sext i32 %2310 to i64
  store i64 %2311, i64* %RAX.i637, align 8
  store %struct.Memory* %loadMem_437e88, %struct.Memory** %MEMORY
  %loadMem_437e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2313 = getelementptr inbounds %struct.GPR, %struct.GPR* %2312, i32 0, i32 33
  %2314 = getelementptr inbounds %struct.Reg, %struct.Reg* %2313, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %2314 to i64*
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2316 = getelementptr inbounds %struct.GPR, %struct.GPR* %2315, i32 0, i32 1
  %2317 = getelementptr inbounds %struct.Reg, %struct.Reg* %2316, i32 0, i32 0
  %RAX.i635 = bitcast %union.anon* %2317 to i64*
  %2318 = load i64, i64* %RAX.i635
  %2319 = mul i64 %2318, 4
  %2320 = add i64 %2319, 11279440
  %2321 = load i64, i64* %PC.i634
  %2322 = add i64 %2321, 8
  store i64 %2322, i64* %PC.i634
  %2323 = inttoptr i64 %2320 to i32*
  %2324 = load i32, i32* %2323
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2325, align 1
  %2326 = and i32 %2324, 255
  %2327 = call i32 @llvm.ctpop.i32(i32 %2326)
  %2328 = trunc i32 %2327 to i8
  %2329 = and i8 %2328, 1
  %2330 = xor i8 %2329, 1
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2330, i8* %2331, align 1
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2332, align 1
  %2333 = icmp eq i32 %2324, 0
  %2334 = zext i1 %2333 to i8
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2334, i8* %2335, align 1
  %2336 = lshr i32 %2324, 31
  %2337 = trunc i32 %2336 to i8
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2337, i8* %2338, align 1
  %2339 = lshr i32 %2324, 31
  %2340 = xor i32 %2336, %2339
  %2341 = add i32 %2340, %2339
  %2342 = icmp eq i32 %2341, 2
  %2343 = zext i1 %2342 to i8
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2343, i8* %2344, align 1
  store %struct.Memory* %loadMem_437e8c, %struct.Memory** %MEMORY
  %loadMem_437e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 33
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %2347 to i64*
  %2348 = load i64, i64* %PC.i633
  %2349 = add i64 %2348, 189
  %2350 = load i64, i64* %PC.i633
  %2351 = add i64 %2350, 6
  %2352 = load i64, i64* %PC.i633
  %2353 = add i64 %2352, 6
  store i64 %2353, i64* %PC.i633
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2355 = load i8, i8* %2354, align 1
  %2356 = icmp eq i8 %2355, 0
  %2357 = zext i1 %2356 to i8
  store i8 %2357, i8* %BRANCH_TAKEN, align 1
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2359 = select i1 %2356, i64 %2349, i64 %2351
  store i64 %2359, i64* %2358, align 8
  store %struct.Memory* %loadMem_437e94, %struct.Memory** %MEMORY
  %loadBr_437e94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437e94 = icmp eq i8 %loadBr_437e94, 1
  br i1 %cmpBr_437e94, label %block_.L_437f51, label %block_437e9a

block_437e9a:                                     ; preds = %block_437e88
  %loadMem_437e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 33
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %2362 to i64*
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 15
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %RBP.i632 = bitcast %union.anon* %2365 to i64*
  %2366 = load i64, i64* %RBP.i632
  %2367 = sub i64 %2366, 8
  %2368 = load i64, i64* %PC.i631
  %2369 = add i64 %2368, 5
  store i64 %2369, i64* %PC.i631
  %2370 = inttoptr i64 %2367 to i64*
  %2371 = load i64, i64* %2370
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2372, align 1
  %2373 = trunc i64 %2371 to i32
  %2374 = and i32 %2373, 255
  %2375 = call i32 @llvm.ctpop.i32(i32 %2374)
  %2376 = trunc i32 %2375 to i8
  %2377 = and i8 %2376, 1
  %2378 = xor i8 %2377, 1
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2378, i8* %2379, align 1
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2380, align 1
  %2381 = icmp eq i64 %2371, 0
  %2382 = zext i1 %2381 to i8
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2382, i8* %2383, align 1
  %2384 = lshr i64 %2371, 63
  %2385 = trunc i64 %2384 to i8
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2385, i8* %2386, align 1
  %2387 = lshr i64 %2371, 63
  %2388 = xor i64 %2384, %2387
  %2389 = add i64 %2388, %2387
  %2390 = icmp eq i64 %2389, 2
  %2391 = zext i1 %2390 to i8
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2391, i8* %2392, align 1
  store %struct.Memory* %loadMem_437e9a, %struct.Memory** %MEMORY
  %loadMem_437e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 33
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %2395 to i64*
  %2396 = load i64, i64* %PC.i630
  %2397 = add i64 %2396, 178
  %2398 = load i64, i64* %PC.i630
  %2399 = add i64 %2398, 6
  %2400 = load i64, i64* %PC.i630
  %2401 = add i64 %2400, 6
  store i64 %2401, i64* %PC.i630
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2403 = load i8, i8* %2402, align 1
  store i8 %2403, i8* %BRANCH_TAKEN, align 1
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2405 = icmp ne i8 %2403, 0
  %2406 = select i1 %2405, i64 %2397, i64 %2399
  store i64 %2406, i64* %2404, align 8
  store %struct.Memory* %loadMem_437e9f, %struct.Memory** %MEMORY
  %loadBr_437e9f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437e9f = icmp eq i8 %loadBr_437e9f, 1
  br i1 %cmpBr_437e9f, label %block_.L_437f51, label %block_437ea5

block_437ea5:                                     ; preds = %block_437e9a
  %loadMem_437ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 33
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %2409 to i64*
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 1
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %RAX.i628 = bitcast %union.anon* %2412 to i64*
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2414 = getelementptr inbounds %struct.GPR, %struct.GPR* %2413, i32 0, i32 15
  %2415 = getelementptr inbounds %struct.Reg, %struct.Reg* %2414, i32 0, i32 0
  %RBP.i629 = bitcast %union.anon* %2415 to i64*
  %2416 = load i64, i64* %RBP.i629
  %2417 = sub i64 %2416, 8
  %2418 = load i64, i64* %PC.i627
  %2419 = add i64 %2418, 4
  store i64 %2419, i64* %PC.i627
  %2420 = inttoptr i64 %2417 to i64*
  %2421 = load i64, i64* %2420
  store i64 %2421, i64* %RAX.i628, align 8
  store %struct.Memory* %loadMem_437ea5, %struct.Memory** %MEMORY
  %loadMem_437ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 33
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %2424 to i64*
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2426 = getelementptr inbounds %struct.GPR, %struct.GPR* %2425, i32 0, i32 5
  %2427 = getelementptr inbounds %struct.Reg, %struct.Reg* %2426, i32 0, i32 0
  %RCX.i625 = bitcast %union.anon* %2427 to i64*
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2429 = getelementptr inbounds %struct.GPR, %struct.GPR* %2428, i32 0, i32 15
  %2430 = getelementptr inbounds %struct.Reg, %struct.Reg* %2429, i32 0, i32 0
  %RBP.i626 = bitcast %union.anon* %2430 to i64*
  %2431 = load i64, i64* %RBP.i626
  %2432 = sub i64 %2431, 36
  %2433 = load i64, i64* %PC.i624
  %2434 = add i64 %2433, 4
  store i64 %2434, i64* %PC.i624
  %2435 = inttoptr i64 %2432 to i32*
  %2436 = load i32, i32* %2435
  %2437 = sext i32 %2436 to i64
  store i64 %2437, i64* %RCX.i625, align 8
  store %struct.Memory* %loadMem_437ea9, %struct.Memory** %MEMORY
  %loadMem_437ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 33
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %2440 to i64*
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 5
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %RCX.i623 = bitcast %union.anon* %2443 to i64*
  %2444 = load i64, i64* %RCX.i623
  %2445 = load i64, i64* %PC.i622
  %2446 = add i64 %2445, 4
  store i64 %2446, i64* %PC.i622
  %2447 = sext i64 %2444 to i128
  %2448 = and i128 %2447, -18446744073709551616
  %2449 = zext i64 %2444 to i128
  %2450 = or i128 %2448, %2449
  %2451 = mul i128 36, %2450
  %2452 = trunc i128 %2451 to i64
  store i64 %2452, i64* %RCX.i623, align 8
  %2453 = sext i64 %2452 to i128
  %2454 = icmp ne i128 %2453, %2451
  %2455 = zext i1 %2454 to i8
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2455, i8* %2456, align 1
  %2457 = trunc i128 %2451 to i32
  %2458 = and i32 %2457, 255
  %2459 = call i32 @llvm.ctpop.i32(i32 %2458)
  %2460 = trunc i32 %2459 to i8
  %2461 = and i8 %2460, 1
  %2462 = xor i8 %2461, 1
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2462, i8* %2463, align 1
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2464, align 1
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2465, align 1
  %2466 = lshr i64 %2452, 63
  %2467 = trunc i64 %2466 to i8
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2467, i8* %2468, align 1
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2455, i8* %2469, align 1
  store %struct.Memory* %loadMem_437ead, %struct.Memory** %MEMORY
  %loadMem_437eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2471 = getelementptr inbounds %struct.GPR, %struct.GPR* %2470, i32 0, i32 33
  %2472 = getelementptr inbounds %struct.Reg, %struct.Reg* %2471, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %2472 to i64*
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2474 = getelementptr inbounds %struct.GPR, %struct.GPR* %2473, i32 0, i32 1
  %2475 = getelementptr inbounds %struct.Reg, %struct.Reg* %2474, i32 0, i32 0
  %RAX.i620 = bitcast %union.anon* %2475 to i64*
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 5
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %RCX.i621 = bitcast %union.anon* %2478 to i64*
  %2479 = load i64, i64* %RAX.i620
  %2480 = load i64, i64* %RCX.i621
  %2481 = load i64, i64* %PC.i619
  %2482 = add i64 %2481, 3
  store i64 %2482, i64* %PC.i619
  %2483 = add i64 %2480, %2479
  store i64 %2483, i64* %RAX.i620, align 8
  %2484 = icmp ult i64 %2483, %2479
  %2485 = icmp ult i64 %2483, %2480
  %2486 = or i1 %2484, %2485
  %2487 = zext i1 %2486 to i8
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2487, i8* %2488, align 1
  %2489 = trunc i64 %2483 to i32
  %2490 = and i32 %2489, 255
  %2491 = call i32 @llvm.ctpop.i32(i32 %2490)
  %2492 = trunc i32 %2491 to i8
  %2493 = and i8 %2492, 1
  %2494 = xor i8 %2493, 1
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2494, i8* %2495, align 1
  %2496 = xor i64 %2480, %2479
  %2497 = xor i64 %2496, %2483
  %2498 = lshr i64 %2497, 4
  %2499 = trunc i64 %2498 to i8
  %2500 = and i8 %2499, 1
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2500, i8* %2501, align 1
  %2502 = icmp eq i64 %2483, 0
  %2503 = zext i1 %2502 to i8
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2503, i8* %2504, align 1
  %2505 = lshr i64 %2483, 63
  %2506 = trunc i64 %2505 to i8
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2506, i8* %2507, align 1
  %2508 = lshr i64 %2479, 63
  %2509 = lshr i64 %2480, 63
  %2510 = xor i64 %2505, %2508
  %2511 = xor i64 %2505, %2509
  %2512 = add i64 %2510, %2511
  %2513 = icmp eq i64 %2512, 2
  %2514 = zext i1 %2513 to i8
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2514, i8* %2515, align 1
  store %struct.Memory* %loadMem_437eb1, %struct.Memory** %MEMORY
  %loadMem_437eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 33
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %2518 to i64*
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2520 = getelementptr inbounds %struct.GPR, %struct.GPR* %2519, i32 0, i32 1
  %2521 = getelementptr inbounds %struct.Reg, %struct.Reg* %2520, i32 0, i32 0
  %RAX.i618 = bitcast %union.anon* %2521 to i64*
  %2522 = load i64, i64* %RAX.i618
  %2523 = load i64, i64* %PC.i617
  %2524 = add i64 %2523, 6
  store i64 %2524, i64* %PC.i617
  %2525 = inttoptr i64 %2522 to i32*
  store i32 5, i32* %2525
  store %struct.Memory* %loadMem_437eb4, %struct.Memory** %MEMORY
  %loadMem_437eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 33
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 15
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %RBP.i616 = bitcast %union.anon* %2531 to i64*
  %2532 = load i64, i64* %RBP.i616
  %2533 = sub i64 %2532, 32
  %2534 = load i64, i64* %PC.i615
  %2535 = add i64 %2534, 7
  store i64 %2535, i64* %PC.i615
  %2536 = inttoptr i64 %2533 to i32*
  store i32 0, i32* %2536
  store %struct.Memory* %loadMem_437eba, %struct.Memory** %MEMORY
  br label %block_.L_437ec1

block_.L_437ec1:                                  ; preds = %block_.L_437f3e, %block_437ea5
  %loadMem_437ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2538 = getelementptr inbounds %struct.GPR, %struct.GPR* %2537, i32 0, i32 33
  %2539 = getelementptr inbounds %struct.Reg, %struct.Reg* %2538, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %2539 to i64*
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 15
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %RBP.i614 = bitcast %union.anon* %2542 to i64*
  %2543 = load i64, i64* %RBP.i614
  %2544 = sub i64 %2543, 32
  %2545 = load i64, i64* %PC.i613
  %2546 = add i64 %2545, 4
  store i64 %2546, i64* %PC.i613
  %2547 = inttoptr i64 %2544 to i32*
  %2548 = load i32, i32* %2547
  %2549 = sub i32 %2548, 4
  %2550 = icmp ult i32 %2548, 4
  %2551 = zext i1 %2550 to i8
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2551, i8* %2552, align 1
  %2553 = and i32 %2549, 255
  %2554 = call i32 @llvm.ctpop.i32(i32 %2553)
  %2555 = trunc i32 %2554 to i8
  %2556 = and i8 %2555, 1
  %2557 = xor i8 %2556, 1
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2557, i8* %2558, align 1
  %2559 = xor i32 %2548, 4
  %2560 = xor i32 %2559, %2549
  %2561 = lshr i32 %2560, 4
  %2562 = trunc i32 %2561 to i8
  %2563 = and i8 %2562, 1
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2563, i8* %2564, align 1
  %2565 = icmp eq i32 %2549, 0
  %2566 = zext i1 %2565 to i8
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2566, i8* %2567, align 1
  %2568 = lshr i32 %2549, 31
  %2569 = trunc i32 %2568 to i8
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2569, i8* %2570, align 1
  %2571 = lshr i32 %2548, 31
  %2572 = xor i32 %2568, %2571
  %2573 = add i32 %2572, %2571
  %2574 = icmp eq i32 %2573, 2
  %2575 = zext i1 %2574 to i8
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2575, i8* %2576, align 1
  store %struct.Memory* %loadMem_437ec1, %struct.Memory** %MEMORY
  %loadMem_437ec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 33
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %2579 to i64*
  %2580 = load i64, i64* %PC.i612
  %2581 = add i64 %2580, 135
  %2582 = load i64, i64* %PC.i612
  %2583 = add i64 %2582, 6
  %2584 = load i64, i64* %PC.i612
  %2585 = add i64 %2584, 6
  store i64 %2585, i64* %PC.i612
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2587 = load i8, i8* %2586, align 1
  %2588 = icmp ne i8 %2587, 0
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2590 = load i8, i8* %2589, align 1
  %2591 = icmp ne i8 %2590, 0
  %2592 = xor i1 %2588, %2591
  %2593 = xor i1 %2592, true
  %2594 = zext i1 %2593 to i8
  store i8 %2594, i8* %BRANCH_TAKEN, align 1
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2596 = select i1 %2592, i64 %2583, i64 %2581
  store i64 %2596, i64* %2595, align 8
  store %struct.Memory* %loadMem_437ec5, %struct.Memory** %MEMORY
  %loadBr_437ec5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437ec5 = icmp eq i8 %loadBr_437ec5, 1
  br i1 %cmpBr_437ec5, label %block_.L_437f4c, label %block_437ecb

block_437ecb:                                     ; preds = %block_.L_437ec1
  %loadMem_437ecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2598 = getelementptr inbounds %struct.GPR, %struct.GPR* %2597, i32 0, i32 33
  %2599 = getelementptr inbounds %struct.Reg, %struct.Reg* %2598, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %2599 to i64*
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2601 = getelementptr inbounds %struct.GPR, %struct.GPR* %2600, i32 0, i32 1
  %2602 = getelementptr inbounds %struct.Reg, %struct.Reg* %2601, i32 0, i32 0
  %RAX.i610 = bitcast %union.anon* %2602 to i64*
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2604 = getelementptr inbounds %struct.GPR, %struct.GPR* %2603, i32 0, i32 15
  %2605 = getelementptr inbounds %struct.Reg, %struct.Reg* %2604, i32 0, i32 0
  %RBP.i611 = bitcast %union.anon* %2605 to i64*
  %2606 = load i64, i64* %RBP.i611
  %2607 = sub i64 %2606, 36
  %2608 = load i64, i64* %PC.i609
  %2609 = add i64 %2608, 3
  store i64 %2609, i64* %PC.i609
  %2610 = inttoptr i64 %2607 to i32*
  %2611 = load i32, i32* %2610
  %2612 = zext i32 %2611 to i64
  store i64 %2612, i64* %RAX.i610, align 8
  store %struct.Memory* %loadMem_437ecb, %struct.Memory** %MEMORY
  %loadMem_437ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 33
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %2615 to i64*
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2617 = getelementptr inbounds %struct.GPR, %struct.GPR* %2616, i32 0, i32 5
  %2618 = getelementptr inbounds %struct.Reg, %struct.Reg* %2617, i32 0, i32 0
  %RCX.i607 = bitcast %union.anon* %2618 to i64*
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 15
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %RBP.i608 = bitcast %union.anon* %2621 to i64*
  %2622 = load i64, i64* %RBP.i608
  %2623 = sub i64 %2622, 32
  %2624 = load i64, i64* %PC.i606
  %2625 = add i64 %2624, 4
  store i64 %2625, i64* %PC.i606
  %2626 = inttoptr i64 %2623 to i32*
  %2627 = load i32, i32* %2626
  %2628 = sext i32 %2627 to i64
  store i64 %2628, i64* %RCX.i607, align 8
  store %struct.Memory* %loadMem_437ece, %struct.Memory** %MEMORY
  %loadMem_437ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2630 = getelementptr inbounds %struct.GPR, %struct.GPR* %2629, i32 0, i32 33
  %2631 = getelementptr inbounds %struct.Reg, %struct.Reg* %2630, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %2631 to i64*
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2633 = getelementptr inbounds %struct.GPR, %struct.GPR* %2632, i32 0, i32 1
  %2634 = getelementptr inbounds %struct.Reg, %struct.Reg* %2633, i32 0, i32 0
  %RAX.i604 = bitcast %union.anon* %2634 to i64*
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2636 = getelementptr inbounds %struct.GPR, %struct.GPR* %2635, i32 0, i32 5
  %2637 = getelementptr inbounds %struct.Reg, %struct.Reg* %2636, i32 0, i32 0
  %RCX.i605 = bitcast %union.anon* %2637 to i64*
  %2638 = load i64, i64* %RAX.i604
  %2639 = load i64, i64* %RCX.i605
  %2640 = mul i64 %2639, 4
  %2641 = add i64 %2640, 8053168
  %2642 = load i64, i64* %PC.i603
  %2643 = add i64 %2642, 7
  store i64 %2643, i64* %PC.i603
  %2644 = trunc i64 %2638 to i32
  %2645 = inttoptr i64 %2641 to i32*
  %2646 = load i32, i32* %2645
  %2647 = add i32 %2646, %2644
  %2648 = zext i32 %2647 to i64
  store i64 %2648, i64* %RAX.i604, align 8
  %2649 = icmp ult i32 %2647, %2644
  %2650 = icmp ult i32 %2647, %2646
  %2651 = or i1 %2649, %2650
  %2652 = zext i1 %2651 to i8
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2652, i8* %2653, align 1
  %2654 = and i32 %2647, 255
  %2655 = call i32 @llvm.ctpop.i32(i32 %2654)
  %2656 = trunc i32 %2655 to i8
  %2657 = and i8 %2656, 1
  %2658 = xor i8 %2657, 1
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2658, i8* %2659, align 1
  %2660 = xor i32 %2646, %2644
  %2661 = xor i32 %2660, %2647
  %2662 = lshr i32 %2661, 4
  %2663 = trunc i32 %2662 to i8
  %2664 = and i8 %2663, 1
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2664, i8* %2665, align 1
  %2666 = icmp eq i32 %2647, 0
  %2667 = zext i1 %2666 to i8
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2667, i8* %2668, align 1
  %2669 = lshr i32 %2647, 31
  %2670 = trunc i32 %2669 to i8
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2670, i8* %2671, align 1
  %2672 = lshr i32 %2644, 31
  %2673 = lshr i32 %2646, 31
  %2674 = xor i32 %2669, %2672
  %2675 = xor i32 %2669, %2673
  %2676 = add i32 %2674, %2675
  %2677 = icmp eq i32 %2676, 2
  %2678 = zext i1 %2677 to i8
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2678, i8* %2679, align 1
  store %struct.Memory* %loadMem_437ed2, %struct.Memory** %MEMORY
  %loadMem_437ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 33
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %2682 to i64*
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 1
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %EAX.i601 = bitcast %union.anon* %2685 to i32*
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 15
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %RBP.i602 = bitcast %union.anon* %2688 to i64*
  %2689 = load i64, i64* %RBP.i602
  %2690 = sub i64 %2689, 3252
  %2691 = load i32, i32* %EAX.i601
  %2692 = zext i32 %2691 to i64
  %2693 = load i64, i64* %PC.i600
  %2694 = add i64 %2693, 6
  store i64 %2694, i64* %PC.i600
  %2695 = inttoptr i64 %2690 to i32*
  store i32 %2691, i32* %2695
  store %struct.Memory* %loadMem_437ed9, %struct.Memory** %MEMORY
  %loadMem_437edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 33
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %2698 to i64*
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2700 = getelementptr inbounds %struct.GPR, %struct.GPR* %2699, i32 0, i32 5
  %2701 = getelementptr inbounds %struct.Reg, %struct.Reg* %2700, i32 0, i32 0
  %RCX.i598 = bitcast %union.anon* %2701 to i64*
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 15
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %RBP.i599 = bitcast %union.anon* %2704 to i64*
  %2705 = load i64, i64* %RBP.i599
  %2706 = sub i64 %2705, 3252
  %2707 = load i64, i64* %PC.i597
  %2708 = add i64 %2707, 7
  store i64 %2708, i64* %PC.i597
  %2709 = inttoptr i64 %2706 to i32*
  %2710 = load i32, i32* %2709
  %2711 = sext i32 %2710 to i64
  store i64 %2711, i64* %RCX.i598, align 8
  store %struct.Memory* %loadMem_437edf, %struct.Memory** %MEMORY
  %loadMem_437ee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2713 = getelementptr inbounds %struct.GPR, %struct.GPR* %2712, i32 0, i32 33
  %2714 = getelementptr inbounds %struct.Reg, %struct.Reg* %2713, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %2714 to i64*
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 1
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %RAX.i595 = bitcast %union.anon* %2717 to i64*
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2719 = getelementptr inbounds %struct.GPR, %struct.GPR* %2718, i32 0, i32 5
  %2720 = getelementptr inbounds %struct.Reg, %struct.Reg* %2719, i32 0, i32 0
  %RCX.i596 = bitcast %union.anon* %2720 to i64*
  %2721 = load i64, i64* %RCX.i596
  %2722 = add i64 %2721, 12099168
  %2723 = load i64, i64* %PC.i594
  %2724 = add i64 %2723, 8
  store i64 %2724, i64* %PC.i594
  %2725 = inttoptr i64 %2722 to i8*
  %2726 = load i8, i8* %2725
  %2727 = zext i8 %2726 to i64
  store i64 %2727, i64* %RAX.i595, align 8
  store %struct.Memory* %loadMem_437ee6, %struct.Memory** %MEMORY
  %loadMem_437eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 33
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %2730 to i64*
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2732 = getelementptr inbounds %struct.GPR, %struct.GPR* %2731, i32 0, i32 1
  %2733 = getelementptr inbounds %struct.Reg, %struct.Reg* %2732, i32 0, i32 0
  %EAX.i593 = bitcast %union.anon* %2733 to i32*
  %2734 = load i32, i32* %EAX.i593
  %2735 = zext i32 %2734 to i64
  %2736 = load i64, i64* %PC.i592
  %2737 = add i64 %2736, 3
  store i64 %2737, i64* %PC.i592
  %2738 = sub i32 %2734, 3
  %2739 = icmp ult i32 %2734, 3
  %2740 = zext i1 %2739 to i8
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2740, i8* %2741, align 1
  %2742 = and i32 %2738, 255
  %2743 = call i32 @llvm.ctpop.i32(i32 %2742)
  %2744 = trunc i32 %2743 to i8
  %2745 = and i8 %2744, 1
  %2746 = xor i8 %2745, 1
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2746, i8* %2747, align 1
  %2748 = xor i64 3, %2735
  %2749 = trunc i64 %2748 to i32
  %2750 = xor i32 %2749, %2738
  %2751 = lshr i32 %2750, 4
  %2752 = trunc i32 %2751 to i8
  %2753 = and i8 %2752, 1
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2753, i8* %2754, align 1
  %2755 = icmp eq i32 %2738, 0
  %2756 = zext i1 %2755 to i8
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2756, i8* %2757, align 1
  %2758 = lshr i32 %2738, 31
  %2759 = trunc i32 %2758 to i8
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2759, i8* %2760, align 1
  %2761 = lshr i32 %2734, 31
  %2762 = xor i32 %2758, %2761
  %2763 = add i32 %2762, %2761
  %2764 = icmp eq i32 %2763, 2
  %2765 = zext i1 %2764 to i8
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2765, i8* %2766, align 1
  store %struct.Memory* %loadMem_437eee, %struct.Memory** %MEMORY
  %loadMem_437ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 33
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %2769 to i64*
  %2770 = load i64, i64* %PC.i591
  %2771 = add i64 %2770, 72
  %2772 = load i64, i64* %PC.i591
  %2773 = add i64 %2772, 6
  %2774 = load i64, i64* %PC.i591
  %2775 = add i64 %2774, 6
  store i64 %2775, i64* %PC.i591
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2777 = load i8, i8* %2776, align 1
  store i8 %2777, i8* %BRANCH_TAKEN, align 1
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2779 = icmp ne i8 %2777, 0
  %2780 = select i1 %2779, i64 %2771, i64 %2773
  store i64 %2780, i64* %2778, align 8
  store %struct.Memory* %loadMem_437ef1, %struct.Memory** %MEMORY
  %loadBr_437ef1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437ef1 = icmp eq i8 %loadBr_437ef1, 1
  br i1 %cmpBr_437ef1, label %block_.L_437f39, label %block_437ef7

block_437ef7:                                     ; preds = %block_437ecb
  %loadMem_437ef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2782 = getelementptr inbounds %struct.GPR, %struct.GPR* %2781, i32 0, i32 33
  %2783 = getelementptr inbounds %struct.Reg, %struct.Reg* %2782, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %2783 to i64*
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 1
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %RAX.i589 = bitcast %union.anon* %2786 to i64*
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2788 = getelementptr inbounds %struct.GPR, %struct.GPR* %2787, i32 0, i32 15
  %2789 = getelementptr inbounds %struct.Reg, %struct.Reg* %2788, i32 0, i32 0
  %RBP.i590 = bitcast %union.anon* %2789 to i64*
  %2790 = load i64, i64* %RBP.i590
  %2791 = sub i64 %2790, 3252
  %2792 = load i64, i64* %PC.i588
  %2793 = add i64 %2792, 7
  store i64 %2793, i64* %PC.i588
  %2794 = inttoptr i64 %2791 to i32*
  %2795 = load i32, i32* %2794
  %2796 = sext i32 %2795 to i64
  store i64 %2796, i64* %RAX.i589, align 8
  store %struct.Memory* %loadMem_437ef7, %struct.Memory** %MEMORY
  %loadMem_437efe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 33
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %2799 to i64*
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 1
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %RAX.i587 = bitcast %union.anon* %2802 to i64*
  %2803 = load i64, i64* %RAX.i587
  %2804 = mul i64 %2803, 4
  %2805 = add i64 %2804, 11279440
  %2806 = load i64, i64* %PC.i586
  %2807 = add i64 %2806, 8
  store i64 %2807, i64* %PC.i586
  %2808 = inttoptr i64 %2805 to i32*
  %2809 = load i32, i32* %2808
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2810, align 1
  %2811 = and i32 %2809, 255
  %2812 = call i32 @llvm.ctpop.i32(i32 %2811)
  %2813 = trunc i32 %2812 to i8
  %2814 = and i8 %2813, 1
  %2815 = xor i8 %2814, 1
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2815, i8* %2816, align 1
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2817, align 1
  %2818 = icmp eq i32 %2809, 0
  %2819 = zext i1 %2818 to i8
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2819, i8* %2820, align 1
  %2821 = lshr i32 %2809, 31
  %2822 = trunc i32 %2821 to i8
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2822, i8* %2823, align 1
  %2824 = lshr i32 %2809, 31
  %2825 = xor i32 %2821, %2824
  %2826 = add i32 %2825, %2824
  %2827 = icmp eq i32 %2826, 2
  %2828 = zext i1 %2827 to i8
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2828, i8* %2829, align 1
  store %struct.Memory* %loadMem_437efe, %struct.Memory** %MEMORY
  %loadMem_437f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2831 = getelementptr inbounds %struct.GPR, %struct.GPR* %2830, i32 0, i32 33
  %2832 = getelementptr inbounds %struct.Reg, %struct.Reg* %2831, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %2832 to i64*
  %2833 = load i64, i64* %PC.i585
  %2834 = add i64 %2833, 51
  %2835 = load i64, i64* %PC.i585
  %2836 = add i64 %2835, 6
  %2837 = load i64, i64* %PC.i585
  %2838 = add i64 %2837, 6
  store i64 %2838, i64* %PC.i585
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2840 = load i8, i8* %2839, align 1
  store i8 %2840, i8* %BRANCH_TAKEN, align 1
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2842 = icmp ne i8 %2840, 0
  %2843 = select i1 %2842, i64 %2834, i64 %2836
  store i64 %2843, i64* %2841, align 8
  store %struct.Memory* %loadMem_437f06, %struct.Memory** %MEMORY
  %loadBr_437f06 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437f06 = icmp eq i8 %loadBr_437f06, 1
  br i1 %cmpBr_437f06, label %block_.L_437f39, label %block_437f0c

block_437f0c:                                     ; preds = %block_437ef7
  %loadMem_437f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2845 = getelementptr inbounds %struct.GPR, %struct.GPR* %2844, i32 0, i32 33
  %2846 = getelementptr inbounds %struct.Reg, %struct.Reg* %2845, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %2846 to i64*
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 1
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %RAX.i583 = bitcast %union.anon* %2849 to i64*
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 15
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %RBP.i584 = bitcast %union.anon* %2852 to i64*
  %2853 = load i64, i64* %RBP.i584
  %2854 = sub i64 %2853, 3252
  %2855 = load i64, i64* %PC.i582
  %2856 = add i64 %2855, 7
  store i64 %2856, i64* %PC.i582
  %2857 = inttoptr i64 %2854 to i32*
  %2858 = load i32, i32* %2857
  %2859 = sext i32 %2858 to i64
  store i64 %2859, i64* %RAX.i583, align 8
  store %struct.Memory* %loadMem_437f0c, %struct.Memory** %MEMORY
  %loadMem_437f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2861 = getelementptr inbounds %struct.GPR, %struct.GPR* %2860, i32 0, i32 33
  %2862 = getelementptr inbounds %struct.Reg, %struct.Reg* %2861, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %2862 to i64*
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 1
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %RAX.i581 = bitcast %union.anon* %2865 to i64*
  %2866 = load i64, i64* %RAX.i581
  %2867 = mul i64 %2866, 4
  %2868 = add i64 %2867, 11277840
  %2869 = load i64, i64* %PC.i580
  %2870 = add i64 %2869, 8
  store i64 %2870, i64* %PC.i580
  %2871 = inttoptr i64 %2868 to i32*
  %2872 = load i32, i32* %2871
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2873, align 1
  %2874 = and i32 %2872, 255
  %2875 = call i32 @llvm.ctpop.i32(i32 %2874)
  %2876 = trunc i32 %2875 to i8
  %2877 = and i8 %2876, 1
  %2878 = xor i8 %2877, 1
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2878, i8* %2879, align 1
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2880, align 1
  %2881 = icmp eq i32 %2872, 0
  %2882 = zext i1 %2881 to i8
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2882, i8* %2883, align 1
  %2884 = lshr i32 %2872, 31
  %2885 = trunc i32 %2884 to i8
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2885, i8* %2886, align 1
  %2887 = lshr i32 %2872, 31
  %2888 = xor i32 %2884, %2887
  %2889 = add i32 %2888, %2887
  %2890 = icmp eq i32 %2889, 2
  %2891 = zext i1 %2890 to i8
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2891, i8* %2892, align 1
  store %struct.Memory* %loadMem_437f13, %struct.Memory** %MEMORY
  %loadMem_437f1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2894 = getelementptr inbounds %struct.GPR, %struct.GPR* %2893, i32 0, i32 33
  %2895 = getelementptr inbounds %struct.Reg, %struct.Reg* %2894, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %2895 to i64*
  %2896 = load i64, i64* %PC.i579
  %2897 = add i64 %2896, 30
  %2898 = load i64, i64* %PC.i579
  %2899 = add i64 %2898, 6
  %2900 = load i64, i64* %PC.i579
  %2901 = add i64 %2900, 6
  store i64 %2901, i64* %PC.i579
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2903 = load i8, i8* %2902, align 1
  %2904 = icmp eq i8 %2903, 0
  %2905 = zext i1 %2904 to i8
  store i8 %2905, i8* %BRANCH_TAKEN, align 1
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2907 = select i1 %2904, i64 %2897, i64 %2899
  store i64 %2907, i64* %2906, align 8
  store %struct.Memory* %loadMem_437f1b, %struct.Memory** %MEMORY
  %loadBr_437f1b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437f1b = icmp eq i8 %loadBr_437f1b, 1
  br i1 %cmpBr_437f1b, label %block_.L_437f39, label %block_437f21

block_437f21:                                     ; preds = %block_437f0c
  %loadMem_437f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2909 = getelementptr inbounds %struct.GPR, %struct.GPR* %2908, i32 0, i32 33
  %2910 = getelementptr inbounds %struct.Reg, %struct.Reg* %2909, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %2910 to i64*
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 1
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %RAX.i577 = bitcast %union.anon* %2913 to i64*
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 15
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %RBP.i578 = bitcast %union.anon* %2916 to i64*
  %2917 = load i64, i64* %RBP.i578
  %2918 = sub i64 %2917, 8
  %2919 = load i64, i64* %PC.i576
  %2920 = add i64 %2919, 4
  store i64 %2920, i64* %PC.i576
  %2921 = inttoptr i64 %2918 to i64*
  %2922 = load i64, i64* %2921
  store i64 %2922, i64* %RAX.i577, align 8
  store %struct.Memory* %loadMem_437f21, %struct.Memory** %MEMORY
  %loadMem_437f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 33
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %2925 to i64*
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 5
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %RCX.i574 = bitcast %union.anon* %2928 to i64*
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 15
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %2931 to i64*
  %2932 = load i64, i64* %RBP.i575
  %2933 = sub i64 %2932, 36
  %2934 = load i64, i64* %PC.i573
  %2935 = add i64 %2934, 4
  store i64 %2935, i64* %PC.i573
  %2936 = inttoptr i64 %2933 to i32*
  %2937 = load i32, i32* %2936
  %2938 = sext i32 %2937 to i64
  store i64 %2938, i64* %RCX.i574, align 8
  store %struct.Memory* %loadMem_437f25, %struct.Memory** %MEMORY
  %loadMem_437f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2940 = getelementptr inbounds %struct.GPR, %struct.GPR* %2939, i32 0, i32 33
  %2941 = getelementptr inbounds %struct.Reg, %struct.Reg* %2940, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %2941 to i64*
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2943 = getelementptr inbounds %struct.GPR, %struct.GPR* %2942, i32 0, i32 5
  %2944 = getelementptr inbounds %struct.Reg, %struct.Reg* %2943, i32 0, i32 0
  %RCX.i572 = bitcast %union.anon* %2944 to i64*
  %2945 = load i64, i64* %RCX.i572
  %2946 = load i64, i64* %PC.i571
  %2947 = add i64 %2946, 4
  store i64 %2947, i64* %PC.i571
  %2948 = sext i64 %2945 to i128
  %2949 = and i128 %2948, -18446744073709551616
  %2950 = zext i64 %2945 to i128
  %2951 = or i128 %2949, %2950
  %2952 = mul i128 36, %2951
  %2953 = trunc i128 %2952 to i64
  store i64 %2953, i64* %RCX.i572, align 8
  %2954 = sext i64 %2953 to i128
  %2955 = icmp ne i128 %2954, %2952
  %2956 = zext i1 %2955 to i8
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2956, i8* %2957, align 1
  %2958 = trunc i128 %2952 to i32
  %2959 = and i32 %2958, 255
  %2960 = call i32 @llvm.ctpop.i32(i32 %2959)
  %2961 = trunc i32 %2960 to i8
  %2962 = and i8 %2961, 1
  %2963 = xor i8 %2962, 1
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2963, i8* %2964, align 1
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2965, align 1
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2966, align 1
  %2967 = lshr i64 %2953, 63
  %2968 = trunc i64 %2967 to i8
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2968, i8* %2969, align 1
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2956, i8* %2970, align 1
  store %struct.Memory* %loadMem_437f29, %struct.Memory** %MEMORY
  %loadMem_437f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 33
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %2973 to i64*
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 1
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %RAX.i569 = bitcast %union.anon* %2976 to i64*
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2978 = getelementptr inbounds %struct.GPR, %struct.GPR* %2977, i32 0, i32 5
  %2979 = getelementptr inbounds %struct.Reg, %struct.Reg* %2978, i32 0, i32 0
  %RCX.i570 = bitcast %union.anon* %2979 to i64*
  %2980 = load i64, i64* %RAX.i569
  %2981 = load i64, i64* %RCX.i570
  %2982 = load i64, i64* %PC.i568
  %2983 = add i64 %2982, 3
  store i64 %2983, i64* %PC.i568
  %2984 = add i64 %2981, %2980
  store i64 %2984, i64* %RAX.i569, align 8
  %2985 = icmp ult i64 %2984, %2980
  %2986 = icmp ult i64 %2984, %2981
  %2987 = or i1 %2985, %2986
  %2988 = zext i1 %2987 to i8
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2988, i8* %2989, align 1
  %2990 = trunc i64 %2984 to i32
  %2991 = and i32 %2990, 255
  %2992 = call i32 @llvm.ctpop.i32(i32 %2991)
  %2993 = trunc i32 %2992 to i8
  %2994 = and i8 %2993, 1
  %2995 = xor i8 %2994, 1
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2995, i8* %2996, align 1
  %2997 = xor i64 %2981, %2980
  %2998 = xor i64 %2997, %2984
  %2999 = lshr i64 %2998, 4
  %3000 = trunc i64 %2999 to i8
  %3001 = and i8 %3000, 1
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3001, i8* %3002, align 1
  %3003 = icmp eq i64 %2984, 0
  %3004 = zext i1 %3003 to i8
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3004, i8* %3005, align 1
  %3006 = lshr i64 %2984, 63
  %3007 = trunc i64 %3006 to i8
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3007, i8* %3008, align 1
  %3009 = lshr i64 %2980, 63
  %3010 = lshr i64 %2981, 63
  %3011 = xor i64 %3006, %3009
  %3012 = xor i64 %3006, %3010
  %3013 = add i64 %3011, %3012
  %3014 = icmp eq i64 %3013, 2
  %3015 = zext i1 %3014 to i8
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3015, i8* %3016, align 1
  store %struct.Memory* %loadMem_437f2d, %struct.Memory** %MEMORY
  %loadMem_437f30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 33
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %3019 to i64*
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 1
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %RAX.i567 = bitcast %union.anon* %3022 to i64*
  %3023 = load i64, i64* %RAX.i567
  %3024 = add i64 %3023, 28
  %3025 = load i64, i64* %PC.i566
  %3026 = add i64 %3025, 4
  store i64 %3026, i64* %PC.i566
  %3027 = inttoptr i64 %3024 to i8*
  store i8 1, i8* %3027
  store %struct.Memory* %loadMem_437f30, %struct.Memory** %MEMORY
  %loadMem_437f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 33
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %3030 to i64*
  %3031 = load i64, i64* %PC.i565
  %3032 = add i64 %3031, 24
  %3033 = load i64, i64* %PC.i565
  %3034 = add i64 %3033, 5
  store i64 %3034, i64* %PC.i565
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3032, i64* %3035, align 8
  store %struct.Memory* %loadMem_437f34, %struct.Memory** %MEMORY
  br label %block_.L_437f4c

block_.L_437f39:                                  ; preds = %block_437f0c, %block_437ef7, %block_437ecb
  %loadMem_437f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3037 = getelementptr inbounds %struct.GPR, %struct.GPR* %3036, i32 0, i32 33
  %3038 = getelementptr inbounds %struct.Reg, %struct.Reg* %3037, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %3038 to i64*
  %3039 = load i64, i64* %PC.i564
  %3040 = add i64 %3039, 5
  %3041 = load i64, i64* %PC.i564
  %3042 = add i64 %3041, 5
  store i64 %3042, i64* %PC.i564
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3040, i64* %3043, align 8
  store %struct.Memory* %loadMem_437f39, %struct.Memory** %MEMORY
  br label %block_.L_437f3e

block_.L_437f3e:                                  ; preds = %block_.L_437f39
  %loadMem_437f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3045 = getelementptr inbounds %struct.GPR, %struct.GPR* %3044, i32 0, i32 33
  %3046 = getelementptr inbounds %struct.Reg, %struct.Reg* %3045, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %3046 to i64*
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 1
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %3049 to i64*
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3051 = getelementptr inbounds %struct.GPR, %struct.GPR* %3050, i32 0, i32 15
  %3052 = getelementptr inbounds %struct.Reg, %struct.Reg* %3051, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %3052 to i64*
  %3053 = load i64, i64* %RBP.i563
  %3054 = sub i64 %3053, 32
  %3055 = load i64, i64* %PC.i561
  %3056 = add i64 %3055, 3
  store i64 %3056, i64* %PC.i561
  %3057 = inttoptr i64 %3054 to i32*
  %3058 = load i32, i32* %3057
  %3059 = zext i32 %3058 to i64
  store i64 %3059, i64* %RAX.i562, align 8
  store %struct.Memory* %loadMem_437f3e, %struct.Memory** %MEMORY
  %loadMem_437f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 33
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %3062 to i64*
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 1
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %RAX.i560 = bitcast %union.anon* %3065 to i64*
  %3066 = load i64, i64* %RAX.i560
  %3067 = load i64, i64* %PC.i559
  %3068 = add i64 %3067, 3
  store i64 %3068, i64* %PC.i559
  %3069 = trunc i64 %3066 to i32
  %3070 = add i32 1, %3069
  %3071 = zext i32 %3070 to i64
  store i64 %3071, i64* %RAX.i560, align 8
  %3072 = icmp ult i32 %3070, %3069
  %3073 = icmp ult i32 %3070, 1
  %3074 = or i1 %3072, %3073
  %3075 = zext i1 %3074 to i8
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3075, i8* %3076, align 1
  %3077 = and i32 %3070, 255
  %3078 = call i32 @llvm.ctpop.i32(i32 %3077)
  %3079 = trunc i32 %3078 to i8
  %3080 = and i8 %3079, 1
  %3081 = xor i8 %3080, 1
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3081, i8* %3082, align 1
  %3083 = xor i64 1, %3066
  %3084 = trunc i64 %3083 to i32
  %3085 = xor i32 %3084, %3070
  %3086 = lshr i32 %3085, 4
  %3087 = trunc i32 %3086 to i8
  %3088 = and i8 %3087, 1
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3088, i8* %3089, align 1
  %3090 = icmp eq i32 %3070, 0
  %3091 = zext i1 %3090 to i8
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3091, i8* %3092, align 1
  %3093 = lshr i32 %3070, 31
  %3094 = trunc i32 %3093 to i8
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3094, i8* %3095, align 1
  %3096 = lshr i32 %3069, 31
  %3097 = xor i32 %3093, %3096
  %3098 = add i32 %3097, %3093
  %3099 = icmp eq i32 %3098, 2
  %3100 = zext i1 %3099 to i8
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3100, i8* %3101, align 1
  store %struct.Memory* %loadMem_437f41, %struct.Memory** %MEMORY
  %loadMem_437f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3103 = getelementptr inbounds %struct.GPR, %struct.GPR* %3102, i32 0, i32 33
  %3104 = getelementptr inbounds %struct.Reg, %struct.Reg* %3103, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %3104 to i64*
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3106 = getelementptr inbounds %struct.GPR, %struct.GPR* %3105, i32 0, i32 1
  %3107 = getelementptr inbounds %struct.Reg, %struct.Reg* %3106, i32 0, i32 0
  %EAX.i557 = bitcast %union.anon* %3107 to i32*
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3109 = getelementptr inbounds %struct.GPR, %struct.GPR* %3108, i32 0, i32 15
  %3110 = getelementptr inbounds %struct.Reg, %struct.Reg* %3109, i32 0, i32 0
  %RBP.i558 = bitcast %union.anon* %3110 to i64*
  %3111 = load i64, i64* %RBP.i558
  %3112 = sub i64 %3111, 32
  %3113 = load i32, i32* %EAX.i557
  %3114 = zext i32 %3113 to i64
  %3115 = load i64, i64* %PC.i556
  %3116 = add i64 %3115, 3
  store i64 %3116, i64* %PC.i556
  %3117 = inttoptr i64 %3112 to i32*
  store i32 %3113, i32* %3117
  store %struct.Memory* %loadMem_437f44, %struct.Memory** %MEMORY
  %loadMem_437f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3119 = getelementptr inbounds %struct.GPR, %struct.GPR* %3118, i32 0, i32 33
  %3120 = getelementptr inbounds %struct.Reg, %struct.Reg* %3119, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %3120 to i64*
  %3121 = load i64, i64* %PC.i555
  %3122 = add i64 %3121, -134
  %3123 = load i64, i64* %PC.i555
  %3124 = add i64 %3123, 5
  store i64 %3124, i64* %PC.i555
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3122, i64* %3125, align 8
  store %struct.Memory* %loadMem_437f47, %struct.Memory** %MEMORY
  br label %block_.L_437ec1

block_.L_437f4c:                                  ; preds = %block_437f21, %block_.L_437ec1
  %loadMem_437f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3127 = getelementptr inbounds %struct.GPR, %struct.GPR* %3126, i32 0, i32 33
  %3128 = getelementptr inbounds %struct.Reg, %struct.Reg* %3127, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %3128 to i64*
  %3129 = load i64, i64* %PC.i554
  %3130 = add i64 %3129, 703
  %3131 = load i64, i64* %PC.i554
  %3132 = add i64 %3131, 5
  store i64 %3132, i64* %PC.i554
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3130, i64* %3133, align 8
  store %struct.Memory* %loadMem_437f4c, %struct.Memory** %MEMORY
  br label %block_.L_43820b

block_.L_437f51:                                  ; preds = %block_437e9a, %block_437e88, %block_.L_437e76
  %loadMem_437f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3135 = getelementptr inbounds %struct.GPR, %struct.GPR* %3134, i32 0, i32 33
  %3136 = getelementptr inbounds %struct.Reg, %struct.Reg* %3135, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %3136 to i64*
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 1
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %RAX.i552 = bitcast %union.anon* %3139 to i64*
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 15
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %3142 to i64*
  %3143 = load i64, i64* %RBP.i553
  %3144 = sub i64 %3143, 36
  %3145 = load i64, i64* %PC.i551
  %3146 = add i64 %3145, 4
  store i64 %3146, i64* %PC.i551
  %3147 = inttoptr i64 %3144 to i32*
  %3148 = load i32, i32* %3147
  %3149 = sext i32 %3148 to i64
  store i64 %3149, i64* %RAX.i552, align 8
  store %struct.Memory* %loadMem_437f51, %struct.Memory** %MEMORY
  %loadMem_437f55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3151 = getelementptr inbounds %struct.GPR, %struct.GPR* %3150, i32 0, i32 33
  %3152 = getelementptr inbounds %struct.Reg, %struct.Reg* %3151, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %3152 to i64*
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3154 = getelementptr inbounds %struct.GPR, %struct.GPR* %3153, i32 0, i32 1
  %3155 = getelementptr inbounds %struct.Reg, %struct.Reg* %3154, i32 0, i32 0
  %RAX.i550 = bitcast %union.anon* %3155 to i64*
  %3156 = load i64, i64* %RAX.i550
  %3157 = mul i64 %3156, 4
  %3158 = add i64 %3157, 11277840
  %3159 = load i64, i64* %PC.i549
  %3160 = add i64 %3159, 8
  store i64 %3160, i64* %PC.i549
  %3161 = inttoptr i64 %3158 to i32*
  %3162 = load i32, i32* %3161
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3163, align 1
  %3164 = and i32 %3162, 255
  %3165 = call i32 @llvm.ctpop.i32(i32 %3164)
  %3166 = trunc i32 %3165 to i8
  %3167 = and i8 %3166, 1
  %3168 = xor i8 %3167, 1
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3168, i8* %3169, align 1
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3170, align 1
  %3171 = icmp eq i32 %3162, 0
  %3172 = zext i1 %3171 to i8
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3172, i8* %3173, align 1
  %3174 = lshr i32 %3162, 31
  %3175 = trunc i32 %3174 to i8
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3175, i8* %3176, align 1
  %3177 = lshr i32 %3162, 31
  %3178 = xor i32 %3174, %3177
  %3179 = add i32 %3178, %3177
  %3180 = icmp eq i32 %3179, 2
  %3181 = zext i1 %3180 to i8
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3181, i8* %3182, align 1
  store %struct.Memory* %loadMem_437f55, %struct.Memory** %MEMORY
  %loadMem_437f5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 33
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %3185 to i64*
  %3186 = load i64, i64* %PC.i548
  %3187 = add i64 %3186, 207
  %3188 = load i64, i64* %PC.i548
  %3189 = add i64 %3188, 6
  %3190 = load i64, i64* %PC.i548
  %3191 = add i64 %3190, 6
  store i64 %3191, i64* %PC.i548
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3193 = load i8, i8* %3192, align 1
  %3194 = icmp eq i8 %3193, 0
  %3195 = zext i1 %3194 to i8
  store i8 %3195, i8* %BRANCH_TAKEN, align 1
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3197 = select i1 %3194, i64 %3187, i64 %3189
  store i64 %3197, i64* %3196, align 8
  store %struct.Memory* %loadMem_437f5d, %struct.Memory** %MEMORY
  %loadBr_437f5d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437f5d = icmp eq i8 %loadBr_437f5d, 1
  br i1 %cmpBr_437f5d, label %block_.L_43802c, label %block_437f63

block_437f63:                                     ; preds = %block_.L_437f51
  %loadMem_437f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 33
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %3200 to i64*
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 1
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %RAX.i546 = bitcast %union.anon* %3203 to i64*
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3205 = getelementptr inbounds %struct.GPR, %struct.GPR* %3204, i32 0, i32 15
  %3206 = getelementptr inbounds %struct.Reg, %struct.Reg* %3205, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %3206 to i64*
  %3207 = load i64, i64* %RBP.i547
  %3208 = sub i64 %3207, 36
  %3209 = load i64, i64* %PC.i545
  %3210 = add i64 %3209, 4
  store i64 %3210, i64* %PC.i545
  %3211 = inttoptr i64 %3208 to i32*
  %3212 = load i32, i32* %3211
  %3213 = sext i32 %3212 to i64
  store i64 %3213, i64* %RAX.i546, align 8
  store %struct.Memory* %loadMem_437f63, %struct.Memory** %MEMORY
  %loadMem_437f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 33
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %3216 to i64*
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3218 = getelementptr inbounds %struct.GPR, %struct.GPR* %3217, i32 0, i32 1
  %3219 = getelementptr inbounds %struct.Reg, %struct.Reg* %3218, i32 0, i32 0
  %RAX.i544 = bitcast %union.anon* %3219 to i64*
  %3220 = load i64, i64* %RAX.i544
  %3221 = mul i64 %3220, 4
  %3222 = add i64 %3221, 11279440
  %3223 = load i64, i64* %PC.i543
  %3224 = add i64 %3223, 8
  store i64 %3224, i64* %PC.i543
  %3225 = inttoptr i64 %3222 to i32*
  %3226 = load i32, i32* %3225
  %3227 = sub i32 %3226, 1
  %3228 = icmp ult i32 %3226, 1
  %3229 = zext i1 %3228 to i8
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3229, i8* %3230, align 1
  %3231 = and i32 %3227, 255
  %3232 = call i32 @llvm.ctpop.i32(i32 %3231)
  %3233 = trunc i32 %3232 to i8
  %3234 = and i8 %3233, 1
  %3235 = xor i8 %3234, 1
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3235, i8* %3236, align 1
  %3237 = xor i32 %3226, 1
  %3238 = xor i32 %3237, %3227
  %3239 = lshr i32 %3238, 4
  %3240 = trunc i32 %3239 to i8
  %3241 = and i8 %3240, 1
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3241, i8* %3242, align 1
  %3243 = icmp eq i32 %3227, 0
  %3244 = zext i1 %3243 to i8
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3244, i8* %3245, align 1
  %3246 = lshr i32 %3227, 31
  %3247 = trunc i32 %3246 to i8
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3247, i8* %3248, align 1
  %3249 = lshr i32 %3226, 31
  %3250 = xor i32 %3246, %3249
  %3251 = add i32 %3250, %3249
  %3252 = icmp eq i32 %3251, 2
  %3253 = zext i1 %3252 to i8
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3253, i8* %3254, align 1
  store %struct.Memory* %loadMem_437f67, %struct.Memory** %MEMORY
  %loadMem_437f6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 33
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %3257 to i64*
  %3258 = load i64, i64* %PC.i542
  %3259 = add i64 %3258, 189
  %3260 = load i64, i64* %PC.i542
  %3261 = add i64 %3260, 6
  %3262 = load i64, i64* %PC.i542
  %3263 = add i64 %3262, 6
  store i64 %3263, i64* %PC.i542
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3265 = load i8, i8* %3264, align 1
  %3266 = icmp eq i8 %3265, 0
  %3267 = zext i1 %3266 to i8
  store i8 %3267, i8* %BRANCH_TAKEN, align 1
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3269 = select i1 %3266, i64 %3259, i64 %3261
  store i64 %3269, i64* %3268, align 8
  store %struct.Memory* %loadMem_437f6f, %struct.Memory** %MEMORY
  %loadBr_437f6f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437f6f = icmp eq i8 %loadBr_437f6f, 1
  br i1 %cmpBr_437f6f, label %block_.L_43802c, label %block_437f75

block_437f75:                                     ; preds = %block_437f63
  %loadMem_437f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 33
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %3272 to i64*
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3274 = getelementptr inbounds %struct.GPR, %struct.GPR* %3273, i32 0, i32 15
  %3275 = getelementptr inbounds %struct.Reg, %struct.Reg* %3274, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %3275 to i64*
  %3276 = load i64, i64* %RBP.i541
  %3277 = sub i64 %3276, 16
  %3278 = load i64, i64* %PC.i540
  %3279 = add i64 %3278, 5
  store i64 %3279, i64* %PC.i540
  %3280 = inttoptr i64 %3277 to i64*
  %3281 = load i64, i64* %3280
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3282, align 1
  %3283 = trunc i64 %3281 to i32
  %3284 = and i32 %3283, 255
  %3285 = call i32 @llvm.ctpop.i32(i32 %3284)
  %3286 = trunc i32 %3285 to i8
  %3287 = and i8 %3286, 1
  %3288 = xor i8 %3287, 1
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3288, i8* %3289, align 1
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3290, align 1
  %3291 = icmp eq i64 %3281, 0
  %3292 = zext i1 %3291 to i8
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3292, i8* %3293, align 1
  %3294 = lshr i64 %3281, 63
  %3295 = trunc i64 %3294 to i8
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3295, i8* %3296, align 1
  %3297 = lshr i64 %3281, 63
  %3298 = xor i64 %3294, %3297
  %3299 = add i64 %3298, %3297
  %3300 = icmp eq i64 %3299, 2
  %3301 = zext i1 %3300 to i8
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3301, i8* %3302, align 1
  store %struct.Memory* %loadMem_437f75, %struct.Memory** %MEMORY
  %loadMem_437f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3304 = getelementptr inbounds %struct.GPR, %struct.GPR* %3303, i32 0, i32 33
  %3305 = getelementptr inbounds %struct.Reg, %struct.Reg* %3304, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %3305 to i64*
  %3306 = load i64, i64* %PC.i539
  %3307 = add i64 %3306, 178
  %3308 = load i64, i64* %PC.i539
  %3309 = add i64 %3308, 6
  %3310 = load i64, i64* %PC.i539
  %3311 = add i64 %3310, 6
  store i64 %3311, i64* %PC.i539
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3313 = load i8, i8* %3312, align 1
  store i8 %3313, i8* %BRANCH_TAKEN, align 1
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3315 = icmp ne i8 %3313, 0
  %3316 = select i1 %3315, i64 %3307, i64 %3309
  store i64 %3316, i64* %3314, align 8
  store %struct.Memory* %loadMem_437f7a, %struct.Memory** %MEMORY
  %loadBr_437f7a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437f7a = icmp eq i8 %loadBr_437f7a, 1
  br i1 %cmpBr_437f7a, label %block_.L_43802c, label %block_437f80

block_437f80:                                     ; preds = %block_437f75
  %loadMem_437f80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3318 = getelementptr inbounds %struct.GPR, %struct.GPR* %3317, i32 0, i32 33
  %3319 = getelementptr inbounds %struct.Reg, %struct.Reg* %3318, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %3319 to i64*
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3321 = getelementptr inbounds %struct.GPR, %struct.GPR* %3320, i32 0, i32 1
  %3322 = getelementptr inbounds %struct.Reg, %struct.Reg* %3321, i32 0, i32 0
  %RAX.i537 = bitcast %union.anon* %3322 to i64*
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3324 = getelementptr inbounds %struct.GPR, %struct.GPR* %3323, i32 0, i32 15
  %3325 = getelementptr inbounds %struct.Reg, %struct.Reg* %3324, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %3325 to i64*
  %3326 = load i64, i64* %RBP.i538
  %3327 = sub i64 %3326, 16
  %3328 = load i64, i64* %PC.i536
  %3329 = add i64 %3328, 4
  store i64 %3329, i64* %PC.i536
  %3330 = inttoptr i64 %3327 to i64*
  %3331 = load i64, i64* %3330
  store i64 %3331, i64* %RAX.i537, align 8
  store %struct.Memory* %loadMem_437f80, %struct.Memory** %MEMORY
  %loadMem_437f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3333 = getelementptr inbounds %struct.GPR, %struct.GPR* %3332, i32 0, i32 33
  %3334 = getelementptr inbounds %struct.Reg, %struct.Reg* %3333, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %3334 to i64*
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3336 = getelementptr inbounds %struct.GPR, %struct.GPR* %3335, i32 0, i32 5
  %3337 = getelementptr inbounds %struct.Reg, %struct.Reg* %3336, i32 0, i32 0
  %RCX.i534 = bitcast %union.anon* %3337 to i64*
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3339 = getelementptr inbounds %struct.GPR, %struct.GPR* %3338, i32 0, i32 15
  %3340 = getelementptr inbounds %struct.Reg, %struct.Reg* %3339, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %3340 to i64*
  %3341 = load i64, i64* %RBP.i535
  %3342 = sub i64 %3341, 36
  %3343 = load i64, i64* %PC.i533
  %3344 = add i64 %3343, 4
  store i64 %3344, i64* %PC.i533
  %3345 = inttoptr i64 %3342 to i32*
  %3346 = load i32, i32* %3345
  %3347 = sext i32 %3346 to i64
  store i64 %3347, i64* %RCX.i534, align 8
  store %struct.Memory* %loadMem_437f84, %struct.Memory** %MEMORY
  %loadMem_437f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3349 = getelementptr inbounds %struct.GPR, %struct.GPR* %3348, i32 0, i32 33
  %3350 = getelementptr inbounds %struct.Reg, %struct.Reg* %3349, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %3350 to i64*
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 5
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %RCX.i532 = bitcast %union.anon* %3353 to i64*
  %3354 = load i64, i64* %RCX.i532
  %3355 = load i64, i64* %PC.i531
  %3356 = add i64 %3355, 4
  store i64 %3356, i64* %PC.i531
  %3357 = sext i64 %3354 to i128
  %3358 = and i128 %3357, -18446744073709551616
  %3359 = zext i64 %3354 to i128
  %3360 = or i128 %3358, %3359
  %3361 = mul i128 36, %3360
  %3362 = trunc i128 %3361 to i64
  store i64 %3362, i64* %RCX.i532, align 8
  %3363 = sext i64 %3362 to i128
  %3364 = icmp ne i128 %3363, %3361
  %3365 = zext i1 %3364 to i8
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3365, i8* %3366, align 1
  %3367 = trunc i128 %3361 to i32
  %3368 = and i32 %3367, 255
  %3369 = call i32 @llvm.ctpop.i32(i32 %3368)
  %3370 = trunc i32 %3369 to i8
  %3371 = and i8 %3370, 1
  %3372 = xor i8 %3371, 1
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3372, i8* %3373, align 1
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3374, align 1
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3375, align 1
  %3376 = lshr i64 %3362, 63
  %3377 = trunc i64 %3376 to i8
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3377, i8* %3378, align 1
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3365, i8* %3379, align 1
  store %struct.Memory* %loadMem_437f88, %struct.Memory** %MEMORY
  %loadMem_437f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3381 = getelementptr inbounds %struct.GPR, %struct.GPR* %3380, i32 0, i32 33
  %3382 = getelementptr inbounds %struct.Reg, %struct.Reg* %3381, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %3382 to i64*
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 1
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %RAX.i529 = bitcast %union.anon* %3385 to i64*
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 5
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %RCX.i530 = bitcast %union.anon* %3388 to i64*
  %3389 = load i64, i64* %RAX.i529
  %3390 = load i64, i64* %RCX.i530
  %3391 = load i64, i64* %PC.i528
  %3392 = add i64 %3391, 3
  store i64 %3392, i64* %PC.i528
  %3393 = add i64 %3390, %3389
  store i64 %3393, i64* %RAX.i529, align 8
  %3394 = icmp ult i64 %3393, %3389
  %3395 = icmp ult i64 %3393, %3390
  %3396 = or i1 %3394, %3395
  %3397 = zext i1 %3396 to i8
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3397, i8* %3398, align 1
  %3399 = trunc i64 %3393 to i32
  %3400 = and i32 %3399, 255
  %3401 = call i32 @llvm.ctpop.i32(i32 %3400)
  %3402 = trunc i32 %3401 to i8
  %3403 = and i8 %3402, 1
  %3404 = xor i8 %3403, 1
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3404, i8* %3405, align 1
  %3406 = xor i64 %3390, %3389
  %3407 = xor i64 %3406, %3393
  %3408 = lshr i64 %3407, 4
  %3409 = trunc i64 %3408 to i8
  %3410 = and i8 %3409, 1
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3410, i8* %3411, align 1
  %3412 = icmp eq i64 %3393, 0
  %3413 = zext i1 %3412 to i8
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3413, i8* %3414, align 1
  %3415 = lshr i64 %3393, 63
  %3416 = trunc i64 %3415 to i8
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3416, i8* %3417, align 1
  %3418 = lshr i64 %3389, 63
  %3419 = lshr i64 %3390, 63
  %3420 = xor i64 %3415, %3418
  %3421 = xor i64 %3415, %3419
  %3422 = add i64 %3420, %3421
  %3423 = icmp eq i64 %3422, 2
  %3424 = zext i1 %3423 to i8
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3424, i8* %3425, align 1
  store %struct.Memory* %loadMem_437f8c, %struct.Memory** %MEMORY
  %loadMem_437f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3427 = getelementptr inbounds %struct.GPR, %struct.GPR* %3426, i32 0, i32 33
  %3428 = getelementptr inbounds %struct.Reg, %struct.Reg* %3427, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %3428 to i64*
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3430 = getelementptr inbounds %struct.GPR, %struct.GPR* %3429, i32 0, i32 1
  %3431 = getelementptr inbounds %struct.Reg, %struct.Reg* %3430, i32 0, i32 0
  %RAX.i527 = bitcast %union.anon* %3431 to i64*
  %3432 = load i64, i64* %RAX.i527
  %3433 = load i64, i64* %PC.i526
  %3434 = add i64 %3433, 6
  store i64 %3434, i64* %PC.i526
  %3435 = inttoptr i64 %3432 to i32*
  store i32 4, i32* %3435
  store %struct.Memory* %loadMem_437f8f, %struct.Memory** %MEMORY
  %loadMem_437f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3437 = getelementptr inbounds %struct.GPR, %struct.GPR* %3436, i32 0, i32 33
  %3438 = getelementptr inbounds %struct.Reg, %struct.Reg* %3437, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %3438 to i64*
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3440 = getelementptr inbounds %struct.GPR, %struct.GPR* %3439, i32 0, i32 15
  %3441 = getelementptr inbounds %struct.Reg, %struct.Reg* %3440, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %3441 to i64*
  %3442 = load i64, i64* %RBP.i525
  %3443 = sub i64 %3442, 32
  %3444 = load i64, i64* %PC.i524
  %3445 = add i64 %3444, 7
  store i64 %3445, i64* %PC.i524
  %3446 = inttoptr i64 %3443 to i32*
  store i32 0, i32* %3446
  store %struct.Memory* %loadMem_437f95, %struct.Memory** %MEMORY
  br label %block_.L_437f9c

block_.L_437f9c:                                  ; preds = %block_.L_438019, %block_437f80
  %loadMem_437f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3448 = getelementptr inbounds %struct.GPR, %struct.GPR* %3447, i32 0, i32 33
  %3449 = getelementptr inbounds %struct.Reg, %struct.Reg* %3448, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %3449 to i64*
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 15
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %3452 to i64*
  %3453 = load i64, i64* %RBP.i523
  %3454 = sub i64 %3453, 32
  %3455 = load i64, i64* %PC.i522
  %3456 = add i64 %3455, 4
  store i64 %3456, i64* %PC.i522
  %3457 = inttoptr i64 %3454 to i32*
  %3458 = load i32, i32* %3457
  %3459 = sub i32 %3458, 4
  %3460 = icmp ult i32 %3458, 4
  %3461 = zext i1 %3460 to i8
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3461, i8* %3462, align 1
  %3463 = and i32 %3459, 255
  %3464 = call i32 @llvm.ctpop.i32(i32 %3463)
  %3465 = trunc i32 %3464 to i8
  %3466 = and i8 %3465, 1
  %3467 = xor i8 %3466, 1
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3467, i8* %3468, align 1
  %3469 = xor i32 %3458, 4
  %3470 = xor i32 %3469, %3459
  %3471 = lshr i32 %3470, 4
  %3472 = trunc i32 %3471 to i8
  %3473 = and i8 %3472, 1
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3473, i8* %3474, align 1
  %3475 = icmp eq i32 %3459, 0
  %3476 = zext i1 %3475 to i8
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3476, i8* %3477, align 1
  %3478 = lshr i32 %3459, 31
  %3479 = trunc i32 %3478 to i8
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3479, i8* %3480, align 1
  %3481 = lshr i32 %3458, 31
  %3482 = xor i32 %3478, %3481
  %3483 = add i32 %3482, %3481
  %3484 = icmp eq i32 %3483, 2
  %3485 = zext i1 %3484 to i8
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3485, i8* %3486, align 1
  store %struct.Memory* %loadMem_437f9c, %struct.Memory** %MEMORY
  %loadMem_437fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3488 = getelementptr inbounds %struct.GPR, %struct.GPR* %3487, i32 0, i32 33
  %3489 = getelementptr inbounds %struct.Reg, %struct.Reg* %3488, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %3489 to i64*
  %3490 = load i64, i64* %PC.i521
  %3491 = add i64 %3490, 135
  %3492 = load i64, i64* %PC.i521
  %3493 = add i64 %3492, 6
  %3494 = load i64, i64* %PC.i521
  %3495 = add i64 %3494, 6
  store i64 %3495, i64* %PC.i521
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3497 = load i8, i8* %3496, align 1
  %3498 = icmp ne i8 %3497, 0
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3500 = load i8, i8* %3499, align 1
  %3501 = icmp ne i8 %3500, 0
  %3502 = xor i1 %3498, %3501
  %3503 = xor i1 %3502, true
  %3504 = zext i1 %3503 to i8
  store i8 %3504, i8* %BRANCH_TAKEN, align 1
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3506 = select i1 %3502, i64 %3493, i64 %3491
  store i64 %3506, i64* %3505, align 8
  store %struct.Memory* %loadMem_437fa0, %struct.Memory** %MEMORY
  %loadBr_437fa0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437fa0 = icmp eq i8 %loadBr_437fa0, 1
  br i1 %cmpBr_437fa0, label %block_.L_438027, label %block_437fa6

block_437fa6:                                     ; preds = %block_.L_437f9c
  %loadMem_437fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3508 = getelementptr inbounds %struct.GPR, %struct.GPR* %3507, i32 0, i32 33
  %3509 = getelementptr inbounds %struct.Reg, %struct.Reg* %3508, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %3509 to i64*
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3511 = getelementptr inbounds %struct.GPR, %struct.GPR* %3510, i32 0, i32 1
  %3512 = getelementptr inbounds %struct.Reg, %struct.Reg* %3511, i32 0, i32 0
  %RAX.i519 = bitcast %union.anon* %3512 to i64*
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3514 = getelementptr inbounds %struct.GPR, %struct.GPR* %3513, i32 0, i32 15
  %3515 = getelementptr inbounds %struct.Reg, %struct.Reg* %3514, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %3515 to i64*
  %3516 = load i64, i64* %RBP.i520
  %3517 = sub i64 %3516, 36
  %3518 = load i64, i64* %PC.i518
  %3519 = add i64 %3518, 3
  store i64 %3519, i64* %PC.i518
  %3520 = inttoptr i64 %3517 to i32*
  %3521 = load i32, i32* %3520
  %3522 = zext i32 %3521 to i64
  store i64 %3522, i64* %RAX.i519, align 8
  store %struct.Memory* %loadMem_437fa6, %struct.Memory** %MEMORY
  %loadMem_437fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3524 = getelementptr inbounds %struct.GPR, %struct.GPR* %3523, i32 0, i32 33
  %3525 = getelementptr inbounds %struct.Reg, %struct.Reg* %3524, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %3525 to i64*
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3527 = getelementptr inbounds %struct.GPR, %struct.GPR* %3526, i32 0, i32 5
  %3528 = getelementptr inbounds %struct.Reg, %struct.Reg* %3527, i32 0, i32 0
  %RCX.i516 = bitcast %union.anon* %3528 to i64*
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3530 = getelementptr inbounds %struct.GPR, %struct.GPR* %3529, i32 0, i32 15
  %3531 = getelementptr inbounds %struct.Reg, %struct.Reg* %3530, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %3531 to i64*
  %3532 = load i64, i64* %RBP.i517
  %3533 = sub i64 %3532, 32
  %3534 = load i64, i64* %PC.i515
  %3535 = add i64 %3534, 4
  store i64 %3535, i64* %PC.i515
  %3536 = inttoptr i64 %3533 to i32*
  %3537 = load i32, i32* %3536
  %3538 = sext i32 %3537 to i64
  store i64 %3538, i64* %RCX.i516, align 8
  store %struct.Memory* %loadMem_437fa9, %struct.Memory** %MEMORY
  %loadMem_437fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3540 = getelementptr inbounds %struct.GPR, %struct.GPR* %3539, i32 0, i32 33
  %3541 = getelementptr inbounds %struct.Reg, %struct.Reg* %3540, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %3541 to i64*
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3543 = getelementptr inbounds %struct.GPR, %struct.GPR* %3542, i32 0, i32 1
  %3544 = getelementptr inbounds %struct.Reg, %struct.Reg* %3543, i32 0, i32 0
  %RAX.i513 = bitcast %union.anon* %3544 to i64*
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3546 = getelementptr inbounds %struct.GPR, %struct.GPR* %3545, i32 0, i32 5
  %3547 = getelementptr inbounds %struct.Reg, %struct.Reg* %3546, i32 0, i32 0
  %RCX.i514 = bitcast %union.anon* %3547 to i64*
  %3548 = load i64, i64* %RAX.i513
  %3549 = load i64, i64* %RCX.i514
  %3550 = mul i64 %3549, 4
  %3551 = add i64 %3550, 8053168
  %3552 = load i64, i64* %PC.i512
  %3553 = add i64 %3552, 7
  store i64 %3553, i64* %PC.i512
  %3554 = trunc i64 %3548 to i32
  %3555 = inttoptr i64 %3551 to i32*
  %3556 = load i32, i32* %3555
  %3557 = add i32 %3556, %3554
  %3558 = zext i32 %3557 to i64
  store i64 %3558, i64* %RAX.i513, align 8
  %3559 = icmp ult i32 %3557, %3554
  %3560 = icmp ult i32 %3557, %3556
  %3561 = or i1 %3559, %3560
  %3562 = zext i1 %3561 to i8
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3562, i8* %3563, align 1
  %3564 = and i32 %3557, 255
  %3565 = call i32 @llvm.ctpop.i32(i32 %3564)
  %3566 = trunc i32 %3565 to i8
  %3567 = and i8 %3566, 1
  %3568 = xor i8 %3567, 1
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3568, i8* %3569, align 1
  %3570 = xor i32 %3556, %3554
  %3571 = xor i32 %3570, %3557
  %3572 = lshr i32 %3571, 4
  %3573 = trunc i32 %3572 to i8
  %3574 = and i8 %3573, 1
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3574, i8* %3575, align 1
  %3576 = icmp eq i32 %3557, 0
  %3577 = zext i1 %3576 to i8
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3577, i8* %3578, align 1
  %3579 = lshr i32 %3557, 31
  %3580 = trunc i32 %3579 to i8
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3580, i8* %3581, align 1
  %3582 = lshr i32 %3554, 31
  %3583 = lshr i32 %3556, 31
  %3584 = xor i32 %3579, %3582
  %3585 = xor i32 %3579, %3583
  %3586 = add i32 %3584, %3585
  %3587 = icmp eq i32 %3586, 2
  %3588 = zext i1 %3587 to i8
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3588, i8* %3589, align 1
  store %struct.Memory* %loadMem_437fad, %struct.Memory** %MEMORY
  %loadMem_437fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 33
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %3592 to i64*
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 1
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %EAX.i510 = bitcast %union.anon* %3595 to i32*
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 15
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %RBP.i511 = bitcast %union.anon* %3598 to i64*
  %3599 = load i64, i64* %RBP.i511
  %3600 = sub i64 %3599, 3256
  %3601 = load i32, i32* %EAX.i510
  %3602 = zext i32 %3601 to i64
  %3603 = load i64, i64* %PC.i509
  %3604 = add i64 %3603, 6
  store i64 %3604, i64* %PC.i509
  %3605 = inttoptr i64 %3600 to i32*
  store i32 %3601, i32* %3605
  store %struct.Memory* %loadMem_437fb4, %struct.Memory** %MEMORY
  %loadMem_437fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3607 = getelementptr inbounds %struct.GPR, %struct.GPR* %3606, i32 0, i32 33
  %3608 = getelementptr inbounds %struct.Reg, %struct.Reg* %3607, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %3608 to i64*
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3610 = getelementptr inbounds %struct.GPR, %struct.GPR* %3609, i32 0, i32 5
  %3611 = getelementptr inbounds %struct.Reg, %struct.Reg* %3610, i32 0, i32 0
  %RCX.i507 = bitcast %union.anon* %3611 to i64*
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3613 = getelementptr inbounds %struct.GPR, %struct.GPR* %3612, i32 0, i32 15
  %3614 = getelementptr inbounds %struct.Reg, %struct.Reg* %3613, i32 0, i32 0
  %RBP.i508 = bitcast %union.anon* %3614 to i64*
  %3615 = load i64, i64* %RBP.i508
  %3616 = sub i64 %3615, 3256
  %3617 = load i64, i64* %PC.i506
  %3618 = add i64 %3617, 7
  store i64 %3618, i64* %PC.i506
  %3619 = inttoptr i64 %3616 to i32*
  %3620 = load i32, i32* %3619
  %3621 = sext i32 %3620 to i64
  store i64 %3621, i64* %RCX.i507, align 8
  store %struct.Memory* %loadMem_437fba, %struct.Memory** %MEMORY
  %loadMem_437fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3623 = getelementptr inbounds %struct.GPR, %struct.GPR* %3622, i32 0, i32 33
  %3624 = getelementptr inbounds %struct.Reg, %struct.Reg* %3623, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %3624 to i64*
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3626 = getelementptr inbounds %struct.GPR, %struct.GPR* %3625, i32 0, i32 1
  %3627 = getelementptr inbounds %struct.Reg, %struct.Reg* %3626, i32 0, i32 0
  %RAX.i504 = bitcast %union.anon* %3627 to i64*
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3629 = getelementptr inbounds %struct.GPR, %struct.GPR* %3628, i32 0, i32 5
  %3630 = getelementptr inbounds %struct.Reg, %struct.Reg* %3629, i32 0, i32 0
  %RCX.i505 = bitcast %union.anon* %3630 to i64*
  %3631 = load i64, i64* %RCX.i505
  %3632 = add i64 %3631, 12099168
  %3633 = load i64, i64* %PC.i503
  %3634 = add i64 %3633, 8
  store i64 %3634, i64* %PC.i503
  %3635 = inttoptr i64 %3632 to i8*
  %3636 = load i8, i8* %3635
  %3637 = zext i8 %3636 to i64
  store i64 %3637, i64* %RAX.i504, align 8
  store %struct.Memory* %loadMem_437fc1, %struct.Memory** %MEMORY
  %loadMem_437fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3639 = getelementptr inbounds %struct.GPR, %struct.GPR* %3638, i32 0, i32 33
  %3640 = getelementptr inbounds %struct.Reg, %struct.Reg* %3639, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %3640 to i64*
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3642 = getelementptr inbounds %struct.GPR, %struct.GPR* %3641, i32 0, i32 1
  %3643 = getelementptr inbounds %struct.Reg, %struct.Reg* %3642, i32 0, i32 0
  %EAX.i502 = bitcast %union.anon* %3643 to i32*
  %3644 = load i32, i32* %EAX.i502
  %3645 = zext i32 %3644 to i64
  %3646 = load i64, i64* %PC.i501
  %3647 = add i64 %3646, 3
  store i64 %3647, i64* %PC.i501
  %3648 = sub i32 %3644, 3
  %3649 = icmp ult i32 %3644, 3
  %3650 = zext i1 %3649 to i8
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3650, i8* %3651, align 1
  %3652 = and i32 %3648, 255
  %3653 = call i32 @llvm.ctpop.i32(i32 %3652)
  %3654 = trunc i32 %3653 to i8
  %3655 = and i8 %3654, 1
  %3656 = xor i8 %3655, 1
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3656, i8* %3657, align 1
  %3658 = xor i64 3, %3645
  %3659 = trunc i64 %3658 to i32
  %3660 = xor i32 %3659, %3648
  %3661 = lshr i32 %3660, 4
  %3662 = trunc i32 %3661 to i8
  %3663 = and i8 %3662, 1
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3663, i8* %3664, align 1
  %3665 = icmp eq i32 %3648, 0
  %3666 = zext i1 %3665 to i8
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3666, i8* %3667, align 1
  %3668 = lshr i32 %3648, 31
  %3669 = trunc i32 %3668 to i8
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3669, i8* %3670, align 1
  %3671 = lshr i32 %3644, 31
  %3672 = xor i32 %3668, %3671
  %3673 = add i32 %3672, %3671
  %3674 = icmp eq i32 %3673, 2
  %3675 = zext i1 %3674 to i8
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3675, i8* %3676, align 1
  store %struct.Memory* %loadMem_437fc9, %struct.Memory** %MEMORY
  %loadMem_437fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3678 = getelementptr inbounds %struct.GPR, %struct.GPR* %3677, i32 0, i32 33
  %3679 = getelementptr inbounds %struct.Reg, %struct.Reg* %3678, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %3679 to i64*
  %3680 = load i64, i64* %PC.i500
  %3681 = add i64 %3680, 72
  %3682 = load i64, i64* %PC.i500
  %3683 = add i64 %3682, 6
  %3684 = load i64, i64* %PC.i500
  %3685 = add i64 %3684, 6
  store i64 %3685, i64* %PC.i500
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3687 = load i8, i8* %3686, align 1
  store i8 %3687, i8* %BRANCH_TAKEN, align 1
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3689 = icmp ne i8 %3687, 0
  %3690 = select i1 %3689, i64 %3681, i64 %3683
  store i64 %3690, i64* %3688, align 8
  store %struct.Memory* %loadMem_437fcc, %struct.Memory** %MEMORY
  %loadBr_437fcc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437fcc = icmp eq i8 %loadBr_437fcc, 1
  br i1 %cmpBr_437fcc, label %block_.L_438014, label %block_437fd2

block_437fd2:                                     ; preds = %block_437fa6
  %loadMem_437fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3692 = getelementptr inbounds %struct.GPR, %struct.GPR* %3691, i32 0, i32 33
  %3693 = getelementptr inbounds %struct.Reg, %struct.Reg* %3692, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %3693 to i64*
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3695 = getelementptr inbounds %struct.GPR, %struct.GPR* %3694, i32 0, i32 1
  %3696 = getelementptr inbounds %struct.Reg, %struct.Reg* %3695, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %3696 to i64*
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3698 = getelementptr inbounds %struct.GPR, %struct.GPR* %3697, i32 0, i32 15
  %3699 = getelementptr inbounds %struct.Reg, %struct.Reg* %3698, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %3699 to i64*
  %3700 = load i64, i64* %RBP.i499
  %3701 = sub i64 %3700, 3256
  %3702 = load i64, i64* %PC.i497
  %3703 = add i64 %3702, 7
  store i64 %3703, i64* %PC.i497
  %3704 = inttoptr i64 %3701 to i32*
  %3705 = load i32, i32* %3704
  %3706 = sext i32 %3705 to i64
  store i64 %3706, i64* %RAX.i498, align 8
  store %struct.Memory* %loadMem_437fd2, %struct.Memory** %MEMORY
  %loadMem_437fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3708 = getelementptr inbounds %struct.GPR, %struct.GPR* %3707, i32 0, i32 33
  %3709 = getelementptr inbounds %struct.Reg, %struct.Reg* %3708, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %3709 to i64*
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3711 = getelementptr inbounds %struct.GPR, %struct.GPR* %3710, i32 0, i32 1
  %3712 = getelementptr inbounds %struct.Reg, %struct.Reg* %3711, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %3712 to i64*
  %3713 = load i64, i64* %RAX.i496
  %3714 = mul i64 %3713, 4
  %3715 = add i64 %3714, 11277840
  %3716 = load i64, i64* %PC.i495
  %3717 = add i64 %3716, 8
  store i64 %3717, i64* %PC.i495
  %3718 = inttoptr i64 %3715 to i32*
  %3719 = load i32, i32* %3718
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3720, align 1
  %3721 = and i32 %3719, 255
  %3722 = call i32 @llvm.ctpop.i32(i32 %3721)
  %3723 = trunc i32 %3722 to i8
  %3724 = and i8 %3723, 1
  %3725 = xor i8 %3724, 1
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3725, i8* %3726, align 1
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3727, align 1
  %3728 = icmp eq i32 %3719, 0
  %3729 = zext i1 %3728 to i8
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3729, i8* %3730, align 1
  %3731 = lshr i32 %3719, 31
  %3732 = trunc i32 %3731 to i8
  %3733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3732, i8* %3733, align 1
  %3734 = lshr i32 %3719, 31
  %3735 = xor i32 %3731, %3734
  %3736 = add i32 %3735, %3734
  %3737 = icmp eq i32 %3736, 2
  %3738 = zext i1 %3737 to i8
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3738, i8* %3739, align 1
  store %struct.Memory* %loadMem_437fd9, %struct.Memory** %MEMORY
  %loadMem_437fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3741 = getelementptr inbounds %struct.GPR, %struct.GPR* %3740, i32 0, i32 33
  %3742 = getelementptr inbounds %struct.Reg, %struct.Reg* %3741, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %3742 to i64*
  %3743 = load i64, i64* %PC.i494
  %3744 = add i64 %3743, 51
  %3745 = load i64, i64* %PC.i494
  %3746 = add i64 %3745, 6
  %3747 = load i64, i64* %PC.i494
  %3748 = add i64 %3747, 6
  store i64 %3748, i64* %PC.i494
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3750 = load i8, i8* %3749, align 1
  store i8 %3750, i8* %BRANCH_TAKEN, align 1
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3752 = icmp ne i8 %3750, 0
  %3753 = select i1 %3752, i64 %3744, i64 %3746
  store i64 %3753, i64* %3751, align 8
  store %struct.Memory* %loadMem_437fe1, %struct.Memory** %MEMORY
  %loadBr_437fe1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437fe1 = icmp eq i8 %loadBr_437fe1, 1
  br i1 %cmpBr_437fe1, label %block_.L_438014, label %block_437fe7

block_437fe7:                                     ; preds = %block_437fd2
  %loadMem_437fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3755 = getelementptr inbounds %struct.GPR, %struct.GPR* %3754, i32 0, i32 33
  %3756 = getelementptr inbounds %struct.Reg, %struct.Reg* %3755, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %3756 to i64*
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3758 = getelementptr inbounds %struct.GPR, %struct.GPR* %3757, i32 0, i32 1
  %3759 = getelementptr inbounds %struct.Reg, %struct.Reg* %3758, i32 0, i32 0
  %RAX.i492 = bitcast %union.anon* %3759 to i64*
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3761 = getelementptr inbounds %struct.GPR, %struct.GPR* %3760, i32 0, i32 15
  %3762 = getelementptr inbounds %struct.Reg, %struct.Reg* %3761, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %3762 to i64*
  %3763 = load i64, i64* %RBP.i493
  %3764 = sub i64 %3763, 3256
  %3765 = load i64, i64* %PC.i491
  %3766 = add i64 %3765, 7
  store i64 %3766, i64* %PC.i491
  %3767 = inttoptr i64 %3764 to i32*
  %3768 = load i32, i32* %3767
  %3769 = sext i32 %3768 to i64
  store i64 %3769, i64* %RAX.i492, align 8
  store %struct.Memory* %loadMem_437fe7, %struct.Memory** %MEMORY
  %loadMem_437fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3771 = getelementptr inbounds %struct.GPR, %struct.GPR* %3770, i32 0, i32 33
  %3772 = getelementptr inbounds %struct.Reg, %struct.Reg* %3771, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %3772 to i64*
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3774 = getelementptr inbounds %struct.GPR, %struct.GPR* %3773, i32 0, i32 1
  %3775 = getelementptr inbounds %struct.Reg, %struct.Reg* %3774, i32 0, i32 0
  %RAX.i490 = bitcast %union.anon* %3775 to i64*
  %3776 = load i64, i64* %RAX.i490
  %3777 = mul i64 %3776, 4
  %3778 = add i64 %3777, 11279440
  %3779 = load i64, i64* %PC.i489
  %3780 = add i64 %3779, 8
  store i64 %3780, i64* %PC.i489
  %3781 = inttoptr i64 %3778 to i32*
  %3782 = load i32, i32* %3781
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3783, align 1
  %3784 = and i32 %3782, 255
  %3785 = call i32 @llvm.ctpop.i32(i32 %3784)
  %3786 = trunc i32 %3785 to i8
  %3787 = and i8 %3786, 1
  %3788 = xor i8 %3787, 1
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3788, i8* %3789, align 1
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3790, align 1
  %3791 = icmp eq i32 %3782, 0
  %3792 = zext i1 %3791 to i8
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3792, i8* %3793, align 1
  %3794 = lshr i32 %3782, 31
  %3795 = trunc i32 %3794 to i8
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3795, i8* %3796, align 1
  %3797 = lshr i32 %3782, 31
  %3798 = xor i32 %3794, %3797
  %3799 = add i32 %3798, %3797
  %3800 = icmp eq i32 %3799, 2
  %3801 = zext i1 %3800 to i8
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3801, i8* %3802, align 1
  store %struct.Memory* %loadMem_437fee, %struct.Memory** %MEMORY
  %loadMem_437ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 33
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %3805 to i64*
  %3806 = load i64, i64* %PC.i488
  %3807 = add i64 %3806, 30
  %3808 = load i64, i64* %PC.i488
  %3809 = add i64 %3808, 6
  %3810 = load i64, i64* %PC.i488
  %3811 = add i64 %3810, 6
  store i64 %3811, i64* %PC.i488
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3813 = load i8, i8* %3812, align 1
  %3814 = icmp eq i8 %3813, 0
  %3815 = zext i1 %3814 to i8
  store i8 %3815, i8* %BRANCH_TAKEN, align 1
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3817 = select i1 %3814, i64 %3807, i64 %3809
  store i64 %3817, i64* %3816, align 8
  store %struct.Memory* %loadMem_437ff6, %struct.Memory** %MEMORY
  %loadBr_437ff6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437ff6 = icmp eq i8 %loadBr_437ff6, 1
  br i1 %cmpBr_437ff6, label %block_.L_438014, label %block_437ffc

block_437ffc:                                     ; preds = %block_437fe7
  %loadMem_437ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3819 = getelementptr inbounds %struct.GPR, %struct.GPR* %3818, i32 0, i32 33
  %3820 = getelementptr inbounds %struct.Reg, %struct.Reg* %3819, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %3820 to i64*
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3822 = getelementptr inbounds %struct.GPR, %struct.GPR* %3821, i32 0, i32 1
  %3823 = getelementptr inbounds %struct.Reg, %struct.Reg* %3822, i32 0, i32 0
  %RAX.i486 = bitcast %union.anon* %3823 to i64*
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3825 = getelementptr inbounds %struct.GPR, %struct.GPR* %3824, i32 0, i32 15
  %3826 = getelementptr inbounds %struct.Reg, %struct.Reg* %3825, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %3826 to i64*
  %3827 = load i64, i64* %RBP.i487
  %3828 = sub i64 %3827, 16
  %3829 = load i64, i64* %PC.i485
  %3830 = add i64 %3829, 4
  store i64 %3830, i64* %PC.i485
  %3831 = inttoptr i64 %3828 to i64*
  %3832 = load i64, i64* %3831
  store i64 %3832, i64* %RAX.i486, align 8
  store %struct.Memory* %loadMem_437ffc, %struct.Memory** %MEMORY
  %loadMem_438000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3834 = getelementptr inbounds %struct.GPR, %struct.GPR* %3833, i32 0, i32 33
  %3835 = getelementptr inbounds %struct.Reg, %struct.Reg* %3834, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %3835 to i64*
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 5
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %RCX.i483 = bitcast %union.anon* %3838 to i64*
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3840 = getelementptr inbounds %struct.GPR, %struct.GPR* %3839, i32 0, i32 15
  %3841 = getelementptr inbounds %struct.Reg, %struct.Reg* %3840, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %3841 to i64*
  %3842 = load i64, i64* %RBP.i484
  %3843 = sub i64 %3842, 36
  %3844 = load i64, i64* %PC.i482
  %3845 = add i64 %3844, 4
  store i64 %3845, i64* %PC.i482
  %3846 = inttoptr i64 %3843 to i32*
  %3847 = load i32, i32* %3846
  %3848 = sext i32 %3847 to i64
  store i64 %3848, i64* %RCX.i483, align 8
  store %struct.Memory* %loadMem_438000, %struct.Memory** %MEMORY
  %loadMem_438004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3850 = getelementptr inbounds %struct.GPR, %struct.GPR* %3849, i32 0, i32 33
  %3851 = getelementptr inbounds %struct.Reg, %struct.Reg* %3850, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %3851 to i64*
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3853 = getelementptr inbounds %struct.GPR, %struct.GPR* %3852, i32 0, i32 5
  %3854 = getelementptr inbounds %struct.Reg, %struct.Reg* %3853, i32 0, i32 0
  %RCX.i481 = bitcast %union.anon* %3854 to i64*
  %3855 = load i64, i64* %RCX.i481
  %3856 = load i64, i64* %PC.i480
  %3857 = add i64 %3856, 4
  store i64 %3857, i64* %PC.i480
  %3858 = sext i64 %3855 to i128
  %3859 = and i128 %3858, -18446744073709551616
  %3860 = zext i64 %3855 to i128
  %3861 = or i128 %3859, %3860
  %3862 = mul i128 36, %3861
  %3863 = trunc i128 %3862 to i64
  store i64 %3863, i64* %RCX.i481, align 8
  %3864 = sext i64 %3863 to i128
  %3865 = icmp ne i128 %3864, %3862
  %3866 = zext i1 %3865 to i8
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3866, i8* %3867, align 1
  %3868 = trunc i128 %3862 to i32
  %3869 = and i32 %3868, 255
  %3870 = call i32 @llvm.ctpop.i32(i32 %3869)
  %3871 = trunc i32 %3870 to i8
  %3872 = and i8 %3871, 1
  %3873 = xor i8 %3872, 1
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3873, i8* %3874, align 1
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3875, align 1
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3876, align 1
  %3877 = lshr i64 %3863, 63
  %3878 = trunc i64 %3877 to i8
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3878, i8* %3879, align 1
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3866, i8* %3880, align 1
  store %struct.Memory* %loadMem_438004, %struct.Memory** %MEMORY
  %loadMem_438008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3882 = getelementptr inbounds %struct.GPR, %struct.GPR* %3881, i32 0, i32 33
  %3883 = getelementptr inbounds %struct.Reg, %struct.Reg* %3882, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %3883 to i64*
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3885 = getelementptr inbounds %struct.GPR, %struct.GPR* %3884, i32 0, i32 1
  %3886 = getelementptr inbounds %struct.Reg, %struct.Reg* %3885, i32 0, i32 0
  %RAX.i478 = bitcast %union.anon* %3886 to i64*
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3888 = getelementptr inbounds %struct.GPR, %struct.GPR* %3887, i32 0, i32 5
  %3889 = getelementptr inbounds %struct.Reg, %struct.Reg* %3888, i32 0, i32 0
  %RCX.i479 = bitcast %union.anon* %3889 to i64*
  %3890 = load i64, i64* %RAX.i478
  %3891 = load i64, i64* %RCX.i479
  %3892 = load i64, i64* %PC.i477
  %3893 = add i64 %3892, 3
  store i64 %3893, i64* %PC.i477
  %3894 = add i64 %3891, %3890
  store i64 %3894, i64* %RAX.i478, align 8
  %3895 = icmp ult i64 %3894, %3890
  %3896 = icmp ult i64 %3894, %3891
  %3897 = or i1 %3895, %3896
  %3898 = zext i1 %3897 to i8
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3898, i8* %3899, align 1
  %3900 = trunc i64 %3894 to i32
  %3901 = and i32 %3900, 255
  %3902 = call i32 @llvm.ctpop.i32(i32 %3901)
  %3903 = trunc i32 %3902 to i8
  %3904 = and i8 %3903, 1
  %3905 = xor i8 %3904, 1
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3905, i8* %3906, align 1
  %3907 = xor i64 %3891, %3890
  %3908 = xor i64 %3907, %3894
  %3909 = lshr i64 %3908, 4
  %3910 = trunc i64 %3909 to i8
  %3911 = and i8 %3910, 1
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3911, i8* %3912, align 1
  %3913 = icmp eq i64 %3894, 0
  %3914 = zext i1 %3913 to i8
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3914, i8* %3915, align 1
  %3916 = lshr i64 %3894, 63
  %3917 = trunc i64 %3916 to i8
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3917, i8* %3918, align 1
  %3919 = lshr i64 %3890, 63
  %3920 = lshr i64 %3891, 63
  %3921 = xor i64 %3916, %3919
  %3922 = xor i64 %3916, %3920
  %3923 = add i64 %3921, %3922
  %3924 = icmp eq i64 %3923, 2
  %3925 = zext i1 %3924 to i8
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3925, i8* %3926, align 1
  store %struct.Memory* %loadMem_438008, %struct.Memory** %MEMORY
  %loadMem_43800b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3928 = getelementptr inbounds %struct.GPR, %struct.GPR* %3927, i32 0, i32 33
  %3929 = getelementptr inbounds %struct.Reg, %struct.Reg* %3928, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %3929 to i64*
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3931 = getelementptr inbounds %struct.GPR, %struct.GPR* %3930, i32 0, i32 1
  %3932 = getelementptr inbounds %struct.Reg, %struct.Reg* %3931, i32 0, i32 0
  %RAX.i476 = bitcast %union.anon* %3932 to i64*
  %3933 = load i64, i64* %RAX.i476
  %3934 = add i64 %3933, 28
  %3935 = load i64, i64* %PC.i475
  %3936 = add i64 %3935, 4
  store i64 %3936, i64* %PC.i475
  %3937 = inttoptr i64 %3934 to i8*
  store i8 1, i8* %3937
  store %struct.Memory* %loadMem_43800b, %struct.Memory** %MEMORY
  %loadMem_43800f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 33
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %3940 to i64*
  %3941 = load i64, i64* %PC.i474
  %3942 = add i64 %3941, 24
  %3943 = load i64, i64* %PC.i474
  %3944 = add i64 %3943, 5
  store i64 %3944, i64* %PC.i474
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3942, i64* %3945, align 8
  store %struct.Memory* %loadMem_43800f, %struct.Memory** %MEMORY
  br label %block_.L_438027

block_.L_438014:                                  ; preds = %block_437fe7, %block_437fd2, %block_437fa6
  %loadMem_438014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3947 = getelementptr inbounds %struct.GPR, %struct.GPR* %3946, i32 0, i32 33
  %3948 = getelementptr inbounds %struct.Reg, %struct.Reg* %3947, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %3948 to i64*
  %3949 = load i64, i64* %PC.i473
  %3950 = add i64 %3949, 5
  %3951 = load i64, i64* %PC.i473
  %3952 = add i64 %3951, 5
  store i64 %3952, i64* %PC.i473
  %3953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3950, i64* %3953, align 8
  store %struct.Memory* %loadMem_438014, %struct.Memory** %MEMORY
  br label %block_.L_438019

block_.L_438019:                                  ; preds = %block_.L_438014
  %loadMem_438019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3955 = getelementptr inbounds %struct.GPR, %struct.GPR* %3954, i32 0, i32 33
  %3956 = getelementptr inbounds %struct.Reg, %struct.Reg* %3955, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %3956 to i64*
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3958 = getelementptr inbounds %struct.GPR, %struct.GPR* %3957, i32 0, i32 1
  %3959 = getelementptr inbounds %struct.Reg, %struct.Reg* %3958, i32 0, i32 0
  %RAX.i471 = bitcast %union.anon* %3959 to i64*
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3961 = getelementptr inbounds %struct.GPR, %struct.GPR* %3960, i32 0, i32 15
  %3962 = getelementptr inbounds %struct.Reg, %struct.Reg* %3961, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %3962 to i64*
  %3963 = load i64, i64* %RBP.i472
  %3964 = sub i64 %3963, 32
  %3965 = load i64, i64* %PC.i470
  %3966 = add i64 %3965, 3
  store i64 %3966, i64* %PC.i470
  %3967 = inttoptr i64 %3964 to i32*
  %3968 = load i32, i32* %3967
  %3969 = zext i32 %3968 to i64
  store i64 %3969, i64* %RAX.i471, align 8
  store %struct.Memory* %loadMem_438019, %struct.Memory** %MEMORY
  %loadMem_43801c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 33
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %3972 to i64*
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3974 = getelementptr inbounds %struct.GPR, %struct.GPR* %3973, i32 0, i32 1
  %3975 = getelementptr inbounds %struct.Reg, %struct.Reg* %3974, i32 0, i32 0
  %RAX.i469 = bitcast %union.anon* %3975 to i64*
  %3976 = load i64, i64* %RAX.i469
  %3977 = load i64, i64* %PC.i468
  %3978 = add i64 %3977, 3
  store i64 %3978, i64* %PC.i468
  %3979 = trunc i64 %3976 to i32
  %3980 = add i32 1, %3979
  %3981 = zext i32 %3980 to i64
  store i64 %3981, i64* %RAX.i469, align 8
  %3982 = icmp ult i32 %3980, %3979
  %3983 = icmp ult i32 %3980, 1
  %3984 = or i1 %3982, %3983
  %3985 = zext i1 %3984 to i8
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3985, i8* %3986, align 1
  %3987 = and i32 %3980, 255
  %3988 = call i32 @llvm.ctpop.i32(i32 %3987)
  %3989 = trunc i32 %3988 to i8
  %3990 = and i8 %3989, 1
  %3991 = xor i8 %3990, 1
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3991, i8* %3992, align 1
  %3993 = xor i64 1, %3976
  %3994 = trunc i64 %3993 to i32
  %3995 = xor i32 %3994, %3980
  %3996 = lshr i32 %3995, 4
  %3997 = trunc i32 %3996 to i8
  %3998 = and i8 %3997, 1
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3998, i8* %3999, align 1
  %4000 = icmp eq i32 %3980, 0
  %4001 = zext i1 %4000 to i8
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4001, i8* %4002, align 1
  %4003 = lshr i32 %3980, 31
  %4004 = trunc i32 %4003 to i8
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4004, i8* %4005, align 1
  %4006 = lshr i32 %3979, 31
  %4007 = xor i32 %4003, %4006
  %4008 = add i32 %4007, %4003
  %4009 = icmp eq i32 %4008, 2
  %4010 = zext i1 %4009 to i8
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4010, i8* %4011, align 1
  store %struct.Memory* %loadMem_43801c, %struct.Memory** %MEMORY
  %loadMem_43801f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4013 = getelementptr inbounds %struct.GPR, %struct.GPR* %4012, i32 0, i32 33
  %4014 = getelementptr inbounds %struct.Reg, %struct.Reg* %4013, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %4014 to i64*
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4016 = getelementptr inbounds %struct.GPR, %struct.GPR* %4015, i32 0, i32 1
  %4017 = getelementptr inbounds %struct.Reg, %struct.Reg* %4016, i32 0, i32 0
  %EAX.i466 = bitcast %union.anon* %4017 to i32*
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4019 = getelementptr inbounds %struct.GPR, %struct.GPR* %4018, i32 0, i32 15
  %4020 = getelementptr inbounds %struct.Reg, %struct.Reg* %4019, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %4020 to i64*
  %4021 = load i64, i64* %RBP.i467
  %4022 = sub i64 %4021, 32
  %4023 = load i32, i32* %EAX.i466
  %4024 = zext i32 %4023 to i64
  %4025 = load i64, i64* %PC.i465
  %4026 = add i64 %4025, 3
  store i64 %4026, i64* %PC.i465
  %4027 = inttoptr i64 %4022 to i32*
  store i32 %4023, i32* %4027
  store %struct.Memory* %loadMem_43801f, %struct.Memory** %MEMORY
  %loadMem_438022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4029 = getelementptr inbounds %struct.GPR, %struct.GPR* %4028, i32 0, i32 33
  %4030 = getelementptr inbounds %struct.Reg, %struct.Reg* %4029, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %4030 to i64*
  %4031 = load i64, i64* %PC.i464
  %4032 = add i64 %4031, -134
  %4033 = load i64, i64* %PC.i464
  %4034 = add i64 %4033, 5
  store i64 %4034, i64* %PC.i464
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4032, i64* %4035, align 8
  store %struct.Memory* %loadMem_438022, %struct.Memory** %MEMORY
  br label %block_.L_437f9c

block_.L_438027:                                  ; preds = %block_437ffc, %block_.L_437f9c
  %loadMem_438027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4037 = getelementptr inbounds %struct.GPR, %struct.GPR* %4036, i32 0, i32 33
  %4038 = getelementptr inbounds %struct.Reg, %struct.Reg* %4037, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %4038 to i64*
  %4039 = load i64, i64* %PC.i463
  %4040 = add i64 %4039, 479
  %4041 = load i64, i64* %PC.i463
  %4042 = add i64 %4041, 5
  store i64 %4042, i64* %PC.i463
  %4043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4040, i64* %4043, align 8
  store %struct.Memory* %loadMem_438027, %struct.Memory** %MEMORY
  br label %block_.L_438206

block_.L_43802c:                                  ; preds = %block_437f75, %block_437f63, %block_.L_437f51
  %loadMem_43802c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4045 = getelementptr inbounds %struct.GPR, %struct.GPR* %4044, i32 0, i32 33
  %4046 = getelementptr inbounds %struct.Reg, %struct.Reg* %4045, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %4046 to i64*
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4048 = getelementptr inbounds %struct.GPR, %struct.GPR* %4047, i32 0, i32 1
  %4049 = getelementptr inbounds %struct.Reg, %struct.Reg* %4048, i32 0, i32 0
  %RAX.i461 = bitcast %union.anon* %4049 to i64*
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4051 = getelementptr inbounds %struct.GPR, %struct.GPR* %4050, i32 0, i32 15
  %4052 = getelementptr inbounds %struct.Reg, %struct.Reg* %4051, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %4052 to i64*
  %4053 = load i64, i64* %RBP.i462
  %4054 = sub i64 %4053, 36
  %4055 = load i64, i64* %PC.i460
  %4056 = add i64 %4055, 4
  store i64 %4056, i64* %PC.i460
  %4057 = inttoptr i64 %4054 to i32*
  %4058 = load i32, i32* %4057
  %4059 = sext i32 %4058 to i64
  store i64 %4059, i64* %RAX.i461, align 8
  store %struct.Memory* %loadMem_43802c, %struct.Memory** %MEMORY
  %loadMem_438030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4061 = getelementptr inbounds %struct.GPR, %struct.GPR* %4060, i32 0, i32 33
  %4062 = getelementptr inbounds %struct.Reg, %struct.Reg* %4061, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %4062 to i64*
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4064 = getelementptr inbounds %struct.GPR, %struct.GPR* %4063, i32 0, i32 1
  %4065 = getelementptr inbounds %struct.Reg, %struct.Reg* %4064, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %4065 to i64*
  %4066 = load i64, i64* %RAX.i459
  %4067 = mul i64 %4066, 4
  %4068 = add i64 %4067, 11277840
  %4069 = load i64, i64* %PC.i458
  %4070 = add i64 %4069, 8
  store i64 %4070, i64* %PC.i458
  %4071 = inttoptr i64 %4068 to i32*
  %4072 = load i32, i32* %4071
  %4073 = sub i32 %4072, 1
  %4074 = icmp ult i32 %4072, 1
  %4075 = zext i1 %4074 to i8
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4075, i8* %4076, align 1
  %4077 = and i32 %4073, 255
  %4078 = call i32 @llvm.ctpop.i32(i32 %4077)
  %4079 = trunc i32 %4078 to i8
  %4080 = and i8 %4079, 1
  %4081 = xor i8 %4080, 1
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4081, i8* %4082, align 1
  %4083 = xor i32 %4072, 1
  %4084 = xor i32 %4083, %4073
  %4085 = lshr i32 %4084, 4
  %4086 = trunc i32 %4085 to i8
  %4087 = and i8 %4086, 1
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4087, i8* %4088, align 1
  %4089 = icmp eq i32 %4073, 0
  %4090 = zext i1 %4089 to i8
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4090, i8* %4091, align 1
  %4092 = lshr i32 %4073, 31
  %4093 = trunc i32 %4092 to i8
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4093, i8* %4094, align 1
  %4095 = lshr i32 %4072, 31
  %4096 = xor i32 %4092, %4095
  %4097 = add i32 %4096, %4095
  %4098 = icmp eq i32 %4097, 2
  %4099 = zext i1 %4098 to i8
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4099, i8* %4100, align 1
  store %struct.Memory* %loadMem_438030, %struct.Memory** %MEMORY
  %loadMem_438038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4102 = getelementptr inbounds %struct.GPR, %struct.GPR* %4101, i32 0, i32 33
  %4103 = getelementptr inbounds %struct.Reg, %struct.Reg* %4102, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %4103 to i64*
  %4104 = load i64, i64* %PC.i457
  %4105 = add i64 %4104, 457
  %4106 = load i64, i64* %PC.i457
  %4107 = add i64 %4106, 6
  %4108 = load i64, i64* %PC.i457
  %4109 = add i64 %4108, 6
  store i64 %4109, i64* %PC.i457
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4111 = load i8, i8* %4110, align 1
  %4112 = icmp eq i8 %4111, 0
  %4113 = zext i1 %4112 to i8
  store i8 %4113, i8* %BRANCH_TAKEN, align 1
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4115 = select i1 %4112, i64 %4105, i64 %4107
  store i64 %4115, i64* %4114, align 8
  store %struct.Memory* %loadMem_438038, %struct.Memory** %MEMORY
  %loadBr_438038 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438038 = icmp eq i8 %loadBr_438038, 1
  br i1 %cmpBr_438038, label %block_.L_438201, label %block_43803e

block_43803e:                                     ; preds = %block_.L_43802c
  %loadMem_43803e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 33
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %4118 to i64*
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 1
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %RAX.i455 = bitcast %union.anon* %4121 to i64*
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4123 = getelementptr inbounds %struct.GPR, %struct.GPR* %4122, i32 0, i32 15
  %4124 = getelementptr inbounds %struct.Reg, %struct.Reg* %4123, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %4124 to i64*
  %4125 = load i64, i64* %RBP.i456
  %4126 = sub i64 %4125, 36
  %4127 = load i64, i64* %PC.i454
  %4128 = add i64 %4127, 4
  store i64 %4128, i64* %PC.i454
  %4129 = inttoptr i64 %4126 to i32*
  %4130 = load i32, i32* %4129
  %4131 = sext i32 %4130 to i64
  store i64 %4131, i64* %RAX.i455, align 8
  store %struct.Memory* %loadMem_43803e, %struct.Memory** %MEMORY
  %loadMem_438042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4133 = getelementptr inbounds %struct.GPR, %struct.GPR* %4132, i32 0, i32 33
  %4134 = getelementptr inbounds %struct.Reg, %struct.Reg* %4133, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %4134 to i64*
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4136 = getelementptr inbounds %struct.GPR, %struct.GPR* %4135, i32 0, i32 1
  %4137 = getelementptr inbounds %struct.Reg, %struct.Reg* %4136, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %4137 to i64*
  %4138 = load i64, i64* %RAX.i453
  %4139 = mul i64 %4138, 4
  %4140 = add i64 %4139, 11279440
  %4141 = load i64, i64* %PC.i452
  %4142 = add i64 %4141, 8
  store i64 %4142, i64* %PC.i452
  %4143 = inttoptr i64 %4140 to i32*
  %4144 = load i32, i32* %4143
  %4145 = sub i32 %4144, 1
  %4146 = icmp ult i32 %4144, 1
  %4147 = zext i1 %4146 to i8
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4147, i8* %4148, align 1
  %4149 = and i32 %4145, 255
  %4150 = call i32 @llvm.ctpop.i32(i32 %4149)
  %4151 = trunc i32 %4150 to i8
  %4152 = and i8 %4151, 1
  %4153 = xor i8 %4152, 1
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4153, i8* %4154, align 1
  %4155 = xor i32 %4144, 1
  %4156 = xor i32 %4155, %4145
  %4157 = lshr i32 %4156, 4
  %4158 = trunc i32 %4157 to i8
  %4159 = and i8 %4158, 1
  %4160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4159, i8* %4160, align 1
  %4161 = icmp eq i32 %4145, 0
  %4162 = zext i1 %4161 to i8
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4162, i8* %4163, align 1
  %4164 = lshr i32 %4145, 31
  %4165 = trunc i32 %4164 to i8
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4165, i8* %4166, align 1
  %4167 = lshr i32 %4144, 31
  %4168 = xor i32 %4164, %4167
  %4169 = add i32 %4168, %4167
  %4170 = icmp eq i32 %4169, 2
  %4171 = zext i1 %4170 to i8
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4171, i8* %4172, align 1
  store %struct.Memory* %loadMem_438042, %struct.Memory** %MEMORY
  %loadMem_43804a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4174 = getelementptr inbounds %struct.GPR, %struct.GPR* %4173, i32 0, i32 33
  %4175 = getelementptr inbounds %struct.Reg, %struct.Reg* %4174, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %4175 to i64*
  %4176 = load i64, i64* %PC.i451
  %4177 = add i64 %4176, 439
  %4178 = load i64, i64* %PC.i451
  %4179 = add i64 %4178, 6
  %4180 = load i64, i64* %PC.i451
  %4181 = add i64 %4180, 6
  store i64 %4181, i64* %PC.i451
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4183 = load i8, i8* %4182, align 1
  %4184 = icmp eq i8 %4183, 0
  %4185 = zext i1 %4184 to i8
  store i8 %4185, i8* %BRANCH_TAKEN, align 1
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4187 = select i1 %4184, i64 %4177, i64 %4179
  store i64 %4187, i64* %4186, align 8
  store %struct.Memory* %loadMem_43804a, %struct.Memory** %MEMORY
  %loadBr_43804a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43804a = icmp eq i8 %loadBr_43804a, 1
  br i1 %cmpBr_43804a, label %block_.L_438201, label %block_438050

block_438050:                                     ; preds = %block_43803e
  %loadMem_438050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4189 = getelementptr inbounds %struct.GPR, %struct.GPR* %4188, i32 0, i32 33
  %4190 = getelementptr inbounds %struct.Reg, %struct.Reg* %4189, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %4190 to i64*
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4192 = getelementptr inbounds %struct.GPR, %struct.GPR* %4191, i32 0, i32 15
  %4193 = getelementptr inbounds %struct.Reg, %struct.Reg* %4192, i32 0, i32 0
  %RBP.i450 = bitcast %union.anon* %4193 to i64*
  %4194 = load i64, i64* %RBP.i450
  %4195 = sub i64 %4194, 8
  %4196 = load i64, i64* %PC.i449
  %4197 = add i64 %4196, 5
  store i64 %4197, i64* %PC.i449
  %4198 = inttoptr i64 %4195 to i64*
  %4199 = load i64, i64* %4198
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4200, align 1
  %4201 = trunc i64 %4199 to i32
  %4202 = and i32 %4201, 255
  %4203 = call i32 @llvm.ctpop.i32(i32 %4202)
  %4204 = trunc i32 %4203 to i8
  %4205 = and i8 %4204, 1
  %4206 = xor i8 %4205, 1
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4206, i8* %4207, align 1
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4208, align 1
  %4209 = icmp eq i64 %4199, 0
  %4210 = zext i1 %4209 to i8
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4210, i8* %4211, align 1
  %4212 = lshr i64 %4199, 63
  %4213 = trunc i64 %4212 to i8
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4213, i8* %4214, align 1
  %4215 = lshr i64 %4199, 63
  %4216 = xor i64 %4212, %4215
  %4217 = add i64 %4216, %4215
  %4218 = icmp eq i64 %4217, 2
  %4219 = zext i1 %4218 to i8
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4219, i8* %4220, align 1
  store %struct.Memory* %loadMem_438050, %struct.Memory** %MEMORY
  %loadMem_438055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4222 = getelementptr inbounds %struct.GPR, %struct.GPR* %4221, i32 0, i32 33
  %4223 = getelementptr inbounds %struct.Reg, %struct.Reg* %4222, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %4223 to i64*
  %4224 = load i64, i64* %PC.i448
  %4225 = add i64 %4224, 209
  %4226 = load i64, i64* %PC.i448
  %4227 = add i64 %4226, 6
  %4228 = load i64, i64* %PC.i448
  %4229 = add i64 %4228, 6
  store i64 %4229, i64* %PC.i448
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4231 = load i8, i8* %4230, align 1
  store i8 %4231, i8* %BRANCH_TAKEN, align 1
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4233 = icmp ne i8 %4231, 0
  %4234 = select i1 %4233, i64 %4225, i64 %4227
  store i64 %4234, i64* %4232, align 8
  store %struct.Memory* %loadMem_438055, %struct.Memory** %MEMORY
  %loadBr_438055 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438055 = icmp eq i8 %loadBr_438055, 1
  br i1 %cmpBr_438055, label %block_.L_438126, label %block_43805b

block_43805b:                                     ; preds = %block_438050
  %loadMem_43805b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4236 = getelementptr inbounds %struct.GPR, %struct.GPR* %4235, i32 0, i32 33
  %4237 = getelementptr inbounds %struct.Reg, %struct.Reg* %4236, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %4237 to i64*
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4239 = getelementptr inbounds %struct.GPR, %struct.GPR* %4238, i32 0, i32 15
  %4240 = getelementptr inbounds %struct.Reg, %struct.Reg* %4239, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %4240 to i64*
  %4241 = load i64, i64* %RBP.i447
  %4242 = sub i64 %4241, 32
  %4243 = load i64, i64* %PC.i446
  %4244 = add i64 %4243, 7
  store i64 %4244, i64* %PC.i446
  %4245 = inttoptr i64 %4242 to i32*
  store i32 0, i32* %4245
  store %struct.Memory* %loadMem_43805b, %struct.Memory** %MEMORY
  br label %block_.L_438062

block_.L_438062:                                  ; preds = %block_.L_4380f4, %block_43805b
  %loadMem_438062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4247 = getelementptr inbounds %struct.GPR, %struct.GPR* %4246, i32 0, i32 33
  %4248 = getelementptr inbounds %struct.Reg, %struct.Reg* %4247, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %4248 to i64*
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4250 = getelementptr inbounds %struct.GPR, %struct.GPR* %4249, i32 0, i32 15
  %4251 = getelementptr inbounds %struct.Reg, %struct.Reg* %4250, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %4251 to i64*
  %4252 = load i64, i64* %RBP.i445
  %4253 = sub i64 %4252, 32
  %4254 = load i64, i64* %PC.i444
  %4255 = add i64 %4254, 4
  store i64 %4255, i64* %PC.i444
  %4256 = inttoptr i64 %4253 to i32*
  %4257 = load i32, i32* %4256
  %4258 = sub i32 %4257, 4
  %4259 = icmp ult i32 %4257, 4
  %4260 = zext i1 %4259 to i8
  %4261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4260, i8* %4261, align 1
  %4262 = and i32 %4258, 255
  %4263 = call i32 @llvm.ctpop.i32(i32 %4262)
  %4264 = trunc i32 %4263 to i8
  %4265 = and i8 %4264, 1
  %4266 = xor i8 %4265, 1
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4266, i8* %4267, align 1
  %4268 = xor i32 %4257, 4
  %4269 = xor i32 %4268, %4258
  %4270 = lshr i32 %4269, 4
  %4271 = trunc i32 %4270 to i8
  %4272 = and i8 %4271, 1
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4272, i8* %4273, align 1
  %4274 = icmp eq i32 %4258, 0
  %4275 = zext i1 %4274 to i8
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4275, i8* %4276, align 1
  %4277 = lshr i32 %4258, 31
  %4278 = trunc i32 %4277 to i8
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4278, i8* %4279, align 1
  %4280 = lshr i32 %4257, 31
  %4281 = xor i32 %4277, %4280
  %4282 = add i32 %4281, %4280
  %4283 = icmp eq i32 %4282, 2
  %4284 = zext i1 %4283 to i8
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4284, i8* %4285, align 1
  store %struct.Memory* %loadMem_438062, %struct.Memory** %MEMORY
  %loadMem_438066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4287 = getelementptr inbounds %struct.GPR, %struct.GPR* %4286, i32 0, i32 33
  %4288 = getelementptr inbounds %struct.Reg, %struct.Reg* %4287, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %4288 to i64*
  %4289 = load i64, i64* %PC.i443
  %4290 = add i64 %4289, 156
  %4291 = load i64, i64* %PC.i443
  %4292 = add i64 %4291, 6
  %4293 = load i64, i64* %PC.i443
  %4294 = add i64 %4293, 6
  store i64 %4294, i64* %PC.i443
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4296 = load i8, i8* %4295, align 1
  %4297 = icmp ne i8 %4296, 0
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4299 = load i8, i8* %4298, align 1
  %4300 = icmp ne i8 %4299, 0
  %4301 = xor i1 %4297, %4300
  %4302 = xor i1 %4301, true
  %4303 = zext i1 %4302 to i8
  store i8 %4303, i8* %BRANCH_TAKEN, align 1
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4305 = select i1 %4301, i64 %4292, i64 %4290
  store i64 %4305, i64* %4304, align 8
  store %struct.Memory* %loadMem_438066, %struct.Memory** %MEMORY
  %loadBr_438066 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438066 = icmp eq i8 %loadBr_438066, 1
  br i1 %cmpBr_438066, label %block_.L_438102, label %block_43806c

block_43806c:                                     ; preds = %block_.L_438062
  %loadMem_43806c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4307 = getelementptr inbounds %struct.GPR, %struct.GPR* %4306, i32 0, i32 33
  %4308 = getelementptr inbounds %struct.Reg, %struct.Reg* %4307, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %4308 to i64*
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4310 = getelementptr inbounds %struct.GPR, %struct.GPR* %4309, i32 0, i32 1
  %4311 = getelementptr inbounds %struct.Reg, %struct.Reg* %4310, i32 0, i32 0
  %RAX.i441 = bitcast %union.anon* %4311 to i64*
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4313 = getelementptr inbounds %struct.GPR, %struct.GPR* %4312, i32 0, i32 15
  %4314 = getelementptr inbounds %struct.Reg, %struct.Reg* %4313, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %4314 to i64*
  %4315 = load i64, i64* %RBP.i442
  %4316 = sub i64 %4315, 36
  %4317 = load i64, i64* %PC.i440
  %4318 = add i64 %4317, 3
  store i64 %4318, i64* %PC.i440
  %4319 = inttoptr i64 %4316 to i32*
  %4320 = load i32, i32* %4319
  %4321 = zext i32 %4320 to i64
  store i64 %4321, i64* %RAX.i441, align 8
  store %struct.Memory* %loadMem_43806c, %struct.Memory** %MEMORY
  %loadMem_43806f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4323 = getelementptr inbounds %struct.GPR, %struct.GPR* %4322, i32 0, i32 33
  %4324 = getelementptr inbounds %struct.Reg, %struct.Reg* %4323, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %4324 to i64*
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4326 = getelementptr inbounds %struct.GPR, %struct.GPR* %4325, i32 0, i32 5
  %4327 = getelementptr inbounds %struct.Reg, %struct.Reg* %4326, i32 0, i32 0
  %RCX.i438 = bitcast %union.anon* %4327 to i64*
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4329 = getelementptr inbounds %struct.GPR, %struct.GPR* %4328, i32 0, i32 15
  %4330 = getelementptr inbounds %struct.Reg, %struct.Reg* %4329, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %4330 to i64*
  %4331 = load i64, i64* %RBP.i439
  %4332 = sub i64 %4331, 32
  %4333 = load i64, i64* %PC.i437
  %4334 = add i64 %4333, 4
  store i64 %4334, i64* %PC.i437
  %4335 = inttoptr i64 %4332 to i32*
  %4336 = load i32, i32* %4335
  %4337 = sext i32 %4336 to i64
  store i64 %4337, i64* %RCX.i438, align 8
  store %struct.Memory* %loadMem_43806f, %struct.Memory** %MEMORY
  %loadMem_438073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4339 = getelementptr inbounds %struct.GPR, %struct.GPR* %4338, i32 0, i32 33
  %4340 = getelementptr inbounds %struct.Reg, %struct.Reg* %4339, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %4340 to i64*
  %4341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4342 = getelementptr inbounds %struct.GPR, %struct.GPR* %4341, i32 0, i32 1
  %4343 = getelementptr inbounds %struct.Reg, %struct.Reg* %4342, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %4343 to i64*
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4345 = getelementptr inbounds %struct.GPR, %struct.GPR* %4344, i32 0, i32 5
  %4346 = getelementptr inbounds %struct.Reg, %struct.Reg* %4345, i32 0, i32 0
  %RCX.i436 = bitcast %union.anon* %4346 to i64*
  %4347 = load i64, i64* %RAX.i435
  %4348 = load i64, i64* %RCX.i436
  %4349 = mul i64 %4348, 4
  %4350 = add i64 %4349, 8053168
  %4351 = load i64, i64* %PC.i434
  %4352 = add i64 %4351, 7
  store i64 %4352, i64* %PC.i434
  %4353 = trunc i64 %4347 to i32
  %4354 = inttoptr i64 %4350 to i32*
  %4355 = load i32, i32* %4354
  %4356 = add i32 %4355, %4353
  %4357 = zext i32 %4356 to i64
  store i64 %4357, i64* %RAX.i435, align 8
  %4358 = icmp ult i32 %4356, %4353
  %4359 = icmp ult i32 %4356, %4355
  %4360 = or i1 %4358, %4359
  %4361 = zext i1 %4360 to i8
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4361, i8* %4362, align 1
  %4363 = and i32 %4356, 255
  %4364 = call i32 @llvm.ctpop.i32(i32 %4363)
  %4365 = trunc i32 %4364 to i8
  %4366 = and i8 %4365, 1
  %4367 = xor i8 %4366, 1
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4367, i8* %4368, align 1
  %4369 = xor i32 %4355, %4353
  %4370 = xor i32 %4369, %4356
  %4371 = lshr i32 %4370, 4
  %4372 = trunc i32 %4371 to i8
  %4373 = and i8 %4372, 1
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4373, i8* %4374, align 1
  %4375 = icmp eq i32 %4356, 0
  %4376 = zext i1 %4375 to i8
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4376, i8* %4377, align 1
  %4378 = lshr i32 %4356, 31
  %4379 = trunc i32 %4378 to i8
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4379, i8* %4380, align 1
  %4381 = lshr i32 %4353, 31
  %4382 = lshr i32 %4355, 31
  %4383 = xor i32 %4378, %4381
  %4384 = xor i32 %4378, %4382
  %4385 = add i32 %4383, %4384
  %4386 = icmp eq i32 %4385, 2
  %4387 = zext i1 %4386 to i8
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4387, i8* %4388, align 1
  store %struct.Memory* %loadMem_438073, %struct.Memory** %MEMORY
  %loadMem_43807a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4390 = getelementptr inbounds %struct.GPR, %struct.GPR* %4389, i32 0, i32 33
  %4391 = getelementptr inbounds %struct.Reg, %struct.Reg* %4390, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %4391 to i64*
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4393 = getelementptr inbounds %struct.GPR, %struct.GPR* %4392, i32 0, i32 1
  %4394 = getelementptr inbounds %struct.Reg, %struct.Reg* %4393, i32 0, i32 0
  %EAX.i432 = bitcast %union.anon* %4394 to i32*
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4396 = getelementptr inbounds %struct.GPR, %struct.GPR* %4395, i32 0, i32 15
  %4397 = getelementptr inbounds %struct.Reg, %struct.Reg* %4396, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %4397 to i64*
  %4398 = load i64, i64* %RBP.i433
  %4399 = sub i64 %4398, 3260
  %4400 = load i32, i32* %EAX.i432
  %4401 = zext i32 %4400 to i64
  %4402 = load i64, i64* %PC.i431
  %4403 = add i64 %4402, 6
  store i64 %4403, i64* %PC.i431
  %4404 = inttoptr i64 %4399 to i32*
  store i32 %4400, i32* %4404
  store %struct.Memory* %loadMem_43807a, %struct.Memory** %MEMORY
  %loadMem_438080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4406 = getelementptr inbounds %struct.GPR, %struct.GPR* %4405, i32 0, i32 33
  %4407 = getelementptr inbounds %struct.Reg, %struct.Reg* %4406, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %4407 to i64*
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4409 = getelementptr inbounds %struct.GPR, %struct.GPR* %4408, i32 0, i32 5
  %4410 = getelementptr inbounds %struct.Reg, %struct.Reg* %4409, i32 0, i32 0
  %RCX.i429 = bitcast %union.anon* %4410 to i64*
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4412 = getelementptr inbounds %struct.GPR, %struct.GPR* %4411, i32 0, i32 15
  %4413 = getelementptr inbounds %struct.Reg, %struct.Reg* %4412, i32 0, i32 0
  %RBP.i430 = bitcast %union.anon* %4413 to i64*
  %4414 = load i64, i64* %RBP.i430
  %4415 = sub i64 %4414, 3260
  %4416 = load i64, i64* %PC.i428
  %4417 = add i64 %4416, 7
  store i64 %4417, i64* %PC.i428
  %4418 = inttoptr i64 %4415 to i32*
  %4419 = load i32, i32* %4418
  %4420 = sext i32 %4419 to i64
  store i64 %4420, i64* %RCX.i429, align 8
  store %struct.Memory* %loadMem_438080, %struct.Memory** %MEMORY
  %loadMem_438087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4422 = getelementptr inbounds %struct.GPR, %struct.GPR* %4421, i32 0, i32 33
  %4423 = getelementptr inbounds %struct.Reg, %struct.Reg* %4422, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %4423 to i64*
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4425 = getelementptr inbounds %struct.GPR, %struct.GPR* %4424, i32 0, i32 1
  %4426 = getelementptr inbounds %struct.Reg, %struct.Reg* %4425, i32 0, i32 0
  %RAX.i426 = bitcast %union.anon* %4426 to i64*
  %4427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4428 = getelementptr inbounds %struct.GPR, %struct.GPR* %4427, i32 0, i32 5
  %4429 = getelementptr inbounds %struct.Reg, %struct.Reg* %4428, i32 0, i32 0
  %RCX.i427 = bitcast %union.anon* %4429 to i64*
  %4430 = load i64, i64* %RCX.i427
  %4431 = add i64 %4430, 12099168
  %4432 = load i64, i64* %PC.i425
  %4433 = add i64 %4432, 8
  store i64 %4433, i64* %PC.i425
  %4434 = inttoptr i64 %4431 to i8*
  %4435 = load i8, i8* %4434
  %4436 = zext i8 %4435 to i64
  store i64 %4436, i64* %RAX.i426, align 8
  store %struct.Memory* %loadMem_438087, %struct.Memory** %MEMORY
  %loadMem_43808f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4438 = getelementptr inbounds %struct.GPR, %struct.GPR* %4437, i32 0, i32 33
  %4439 = getelementptr inbounds %struct.Reg, %struct.Reg* %4438, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %4439 to i64*
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4441 = getelementptr inbounds %struct.GPR, %struct.GPR* %4440, i32 0, i32 1
  %4442 = getelementptr inbounds %struct.Reg, %struct.Reg* %4441, i32 0, i32 0
  %EAX.i424 = bitcast %union.anon* %4442 to i32*
  %4443 = load i32, i32* %EAX.i424
  %4444 = zext i32 %4443 to i64
  %4445 = load i64, i64* %PC.i423
  %4446 = add i64 %4445, 3
  store i64 %4446, i64* %PC.i423
  %4447 = sub i32 %4443, 3
  %4448 = icmp ult i32 %4443, 3
  %4449 = zext i1 %4448 to i8
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4449, i8* %4450, align 1
  %4451 = and i32 %4447, 255
  %4452 = call i32 @llvm.ctpop.i32(i32 %4451)
  %4453 = trunc i32 %4452 to i8
  %4454 = and i8 %4453, 1
  %4455 = xor i8 %4454, 1
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4455, i8* %4456, align 1
  %4457 = xor i64 3, %4444
  %4458 = trunc i64 %4457 to i32
  %4459 = xor i32 %4458, %4447
  %4460 = lshr i32 %4459, 4
  %4461 = trunc i32 %4460 to i8
  %4462 = and i8 %4461, 1
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4462, i8* %4463, align 1
  %4464 = icmp eq i32 %4447, 0
  %4465 = zext i1 %4464 to i8
  %4466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4465, i8* %4466, align 1
  %4467 = lshr i32 %4447, 31
  %4468 = trunc i32 %4467 to i8
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4468, i8* %4469, align 1
  %4470 = lshr i32 %4443, 31
  %4471 = xor i32 %4467, %4470
  %4472 = add i32 %4471, %4470
  %4473 = icmp eq i32 %4472, 2
  %4474 = zext i1 %4473 to i8
  %4475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4474, i8* %4475, align 1
  store %struct.Memory* %loadMem_43808f, %struct.Memory** %MEMORY
  %loadMem_438092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4477 = getelementptr inbounds %struct.GPR, %struct.GPR* %4476, i32 0, i32 33
  %4478 = getelementptr inbounds %struct.Reg, %struct.Reg* %4477, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %4478 to i64*
  %4479 = load i64, i64* %PC.i422
  %4480 = add i64 %4479, 93
  %4481 = load i64, i64* %PC.i422
  %4482 = add i64 %4481, 6
  %4483 = load i64, i64* %PC.i422
  %4484 = add i64 %4483, 6
  store i64 %4484, i64* %PC.i422
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4486 = load i8, i8* %4485, align 1
  store i8 %4486, i8* %BRANCH_TAKEN, align 1
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4488 = icmp ne i8 %4486, 0
  %4489 = select i1 %4488, i64 %4480, i64 %4482
  store i64 %4489, i64* %4487, align 8
  store %struct.Memory* %loadMem_438092, %struct.Memory** %MEMORY
  %loadBr_438092 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438092 = icmp eq i8 %loadBr_438092, 1
  br i1 %cmpBr_438092, label %block_.L_4380ef, label %block_438098

block_438098:                                     ; preds = %block_43806c
  %loadMem_438098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4491 = getelementptr inbounds %struct.GPR, %struct.GPR* %4490, i32 0, i32 33
  %4492 = getelementptr inbounds %struct.Reg, %struct.Reg* %4491, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %4492 to i64*
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 1
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %RAX.i420 = bitcast %union.anon* %4495 to i64*
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4497 = getelementptr inbounds %struct.GPR, %struct.GPR* %4496, i32 0, i32 15
  %4498 = getelementptr inbounds %struct.Reg, %struct.Reg* %4497, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %4498 to i64*
  %4499 = load i64, i64* %RBP.i421
  %4500 = sub i64 %4499, 3260
  %4501 = load i64, i64* %PC.i419
  %4502 = add i64 %4501, 7
  store i64 %4502, i64* %PC.i419
  %4503 = inttoptr i64 %4500 to i32*
  %4504 = load i32, i32* %4503
  %4505 = sext i32 %4504 to i64
  store i64 %4505, i64* %RAX.i420, align 8
  store %struct.Memory* %loadMem_438098, %struct.Memory** %MEMORY
  %loadMem_43809f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4507 = getelementptr inbounds %struct.GPR, %struct.GPR* %4506, i32 0, i32 33
  %4508 = getelementptr inbounds %struct.Reg, %struct.Reg* %4507, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %4508 to i64*
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 1
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %RAX.i418 = bitcast %union.anon* %4511 to i64*
  %4512 = load i64, i64* %RAX.i418
  %4513 = mul i64 %4512, 4
  %4514 = add i64 %4513, 11277840
  %4515 = load i64, i64* %PC.i417
  %4516 = add i64 %4515, 8
  store i64 %4516, i64* %PC.i417
  %4517 = inttoptr i64 %4514 to i32*
  %4518 = load i32, i32* %4517
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4519, align 1
  %4520 = and i32 %4518, 255
  %4521 = call i32 @llvm.ctpop.i32(i32 %4520)
  %4522 = trunc i32 %4521 to i8
  %4523 = and i8 %4522, 1
  %4524 = xor i8 %4523, 1
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4524, i8* %4525, align 1
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4526, align 1
  %4527 = icmp eq i32 %4518, 0
  %4528 = zext i1 %4527 to i8
  %4529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4528, i8* %4529, align 1
  %4530 = lshr i32 %4518, 31
  %4531 = trunc i32 %4530 to i8
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4531, i8* %4532, align 1
  %4533 = lshr i32 %4518, 31
  %4534 = xor i32 %4530, %4533
  %4535 = add i32 %4534, %4533
  %4536 = icmp eq i32 %4535, 2
  %4537 = zext i1 %4536 to i8
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4537, i8* %4538, align 1
  store %struct.Memory* %loadMem_43809f, %struct.Memory** %MEMORY
  %loadMem_4380a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4540 = getelementptr inbounds %struct.GPR, %struct.GPR* %4539, i32 0, i32 33
  %4541 = getelementptr inbounds %struct.Reg, %struct.Reg* %4540, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %4541 to i64*
  %4542 = load i64, i64* %PC.i416
  %4543 = add i64 %4542, 72
  %4544 = load i64, i64* %PC.i416
  %4545 = add i64 %4544, 6
  %4546 = load i64, i64* %PC.i416
  %4547 = add i64 %4546, 6
  store i64 %4547, i64* %PC.i416
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4549 = load i8, i8* %4548, align 1
  store i8 %4549, i8* %BRANCH_TAKEN, align 1
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4551 = icmp ne i8 %4549, 0
  %4552 = select i1 %4551, i64 %4543, i64 %4545
  store i64 %4552, i64* %4550, align 8
  store %struct.Memory* %loadMem_4380a7, %struct.Memory** %MEMORY
  %loadBr_4380a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4380a7 = icmp eq i8 %loadBr_4380a7, 1
  br i1 %cmpBr_4380a7, label %block_.L_4380ef, label %block_4380ad

block_4380ad:                                     ; preds = %block_438098
  %loadMem_4380ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4554 = getelementptr inbounds %struct.GPR, %struct.GPR* %4553, i32 0, i32 33
  %4555 = getelementptr inbounds %struct.Reg, %struct.Reg* %4554, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %4555 to i64*
  %4556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4557 = getelementptr inbounds %struct.GPR, %struct.GPR* %4556, i32 0, i32 1
  %4558 = getelementptr inbounds %struct.Reg, %struct.Reg* %4557, i32 0, i32 0
  %RAX.i414 = bitcast %union.anon* %4558 to i64*
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4560 = getelementptr inbounds %struct.GPR, %struct.GPR* %4559, i32 0, i32 15
  %4561 = getelementptr inbounds %struct.Reg, %struct.Reg* %4560, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %4561 to i64*
  %4562 = load i64, i64* %RBP.i415
  %4563 = sub i64 %4562, 3260
  %4564 = load i64, i64* %PC.i413
  %4565 = add i64 %4564, 7
  store i64 %4565, i64* %PC.i413
  %4566 = inttoptr i64 %4563 to i32*
  %4567 = load i32, i32* %4566
  %4568 = sext i32 %4567 to i64
  store i64 %4568, i64* %RAX.i414, align 8
  store %struct.Memory* %loadMem_4380ad, %struct.Memory** %MEMORY
  %loadMem_4380b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4570 = getelementptr inbounds %struct.GPR, %struct.GPR* %4569, i32 0, i32 33
  %4571 = getelementptr inbounds %struct.Reg, %struct.Reg* %4570, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %4571 to i64*
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4573 = getelementptr inbounds %struct.GPR, %struct.GPR* %4572, i32 0, i32 1
  %4574 = getelementptr inbounds %struct.Reg, %struct.Reg* %4573, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %4574 to i64*
  %4575 = load i64, i64* %RAX.i412
  %4576 = mul i64 %4575, 4
  %4577 = add i64 %4576, 11279440
  %4578 = load i64, i64* %PC.i411
  %4579 = add i64 %4578, 8
  store i64 %4579, i64* %PC.i411
  %4580 = inttoptr i64 %4577 to i32*
  %4581 = load i32, i32* %4580
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4582, align 1
  %4583 = and i32 %4581, 255
  %4584 = call i32 @llvm.ctpop.i32(i32 %4583)
  %4585 = trunc i32 %4584 to i8
  %4586 = and i8 %4585, 1
  %4587 = xor i8 %4586, 1
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4587, i8* %4588, align 1
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4589, align 1
  %4590 = icmp eq i32 %4581, 0
  %4591 = zext i1 %4590 to i8
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4591, i8* %4592, align 1
  %4593 = lshr i32 %4581, 31
  %4594 = trunc i32 %4593 to i8
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4594, i8* %4595, align 1
  %4596 = lshr i32 %4581, 31
  %4597 = xor i32 %4593, %4596
  %4598 = add i32 %4597, %4596
  %4599 = icmp eq i32 %4598, 2
  %4600 = zext i1 %4599 to i8
  %4601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4600, i8* %4601, align 1
  store %struct.Memory* %loadMem_4380b4, %struct.Memory** %MEMORY
  %loadMem_4380bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4603 = getelementptr inbounds %struct.GPR, %struct.GPR* %4602, i32 0, i32 33
  %4604 = getelementptr inbounds %struct.Reg, %struct.Reg* %4603, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %4604 to i64*
  %4605 = load i64, i64* %PC.i410
  %4606 = add i64 %4605, 51
  %4607 = load i64, i64* %PC.i410
  %4608 = add i64 %4607, 6
  %4609 = load i64, i64* %PC.i410
  %4610 = add i64 %4609, 6
  store i64 %4610, i64* %PC.i410
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4612 = load i8, i8* %4611, align 1
  %4613 = icmp eq i8 %4612, 0
  %4614 = zext i1 %4613 to i8
  store i8 %4614, i8* %BRANCH_TAKEN, align 1
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4616 = select i1 %4613, i64 %4606, i64 %4608
  store i64 %4616, i64* %4615, align 8
  store %struct.Memory* %loadMem_4380bc, %struct.Memory** %MEMORY
  %loadBr_4380bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4380bc = icmp eq i8 %loadBr_4380bc, 1
  br i1 %cmpBr_4380bc, label %block_.L_4380ef, label %block_4380c2

block_4380c2:                                     ; preds = %block_4380ad
  %loadMem_4380c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4618 = getelementptr inbounds %struct.GPR, %struct.GPR* %4617, i32 0, i32 33
  %4619 = getelementptr inbounds %struct.Reg, %struct.Reg* %4618, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %4619 to i64*
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 1
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %RAX.i408 = bitcast %union.anon* %4622 to i64*
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4624 = getelementptr inbounds %struct.GPR, %struct.GPR* %4623, i32 0, i32 15
  %4625 = getelementptr inbounds %struct.Reg, %struct.Reg* %4624, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %4625 to i64*
  %4626 = load i64, i64* %RBP.i409
  %4627 = sub i64 %4626, 8
  %4628 = load i64, i64* %PC.i407
  %4629 = add i64 %4628, 4
  store i64 %4629, i64* %PC.i407
  %4630 = inttoptr i64 %4627 to i64*
  %4631 = load i64, i64* %4630
  store i64 %4631, i64* %RAX.i408, align 8
  store %struct.Memory* %loadMem_4380c2, %struct.Memory** %MEMORY
  %loadMem_4380c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4633 = getelementptr inbounds %struct.GPR, %struct.GPR* %4632, i32 0, i32 33
  %4634 = getelementptr inbounds %struct.Reg, %struct.Reg* %4633, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %4634 to i64*
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4636 = getelementptr inbounds %struct.GPR, %struct.GPR* %4635, i32 0, i32 5
  %4637 = getelementptr inbounds %struct.Reg, %struct.Reg* %4636, i32 0, i32 0
  %RCX.i405 = bitcast %union.anon* %4637 to i64*
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4639 = getelementptr inbounds %struct.GPR, %struct.GPR* %4638, i32 0, i32 15
  %4640 = getelementptr inbounds %struct.Reg, %struct.Reg* %4639, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %4640 to i64*
  %4641 = load i64, i64* %RBP.i406
  %4642 = sub i64 %4641, 36
  %4643 = load i64, i64* %PC.i404
  %4644 = add i64 %4643, 4
  store i64 %4644, i64* %PC.i404
  %4645 = inttoptr i64 %4642 to i32*
  %4646 = load i32, i32* %4645
  %4647 = sext i32 %4646 to i64
  store i64 %4647, i64* %RCX.i405, align 8
  store %struct.Memory* %loadMem_4380c6, %struct.Memory** %MEMORY
  %loadMem_4380ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4649 = getelementptr inbounds %struct.GPR, %struct.GPR* %4648, i32 0, i32 33
  %4650 = getelementptr inbounds %struct.Reg, %struct.Reg* %4649, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %4650 to i64*
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4652 = getelementptr inbounds %struct.GPR, %struct.GPR* %4651, i32 0, i32 5
  %4653 = getelementptr inbounds %struct.Reg, %struct.Reg* %4652, i32 0, i32 0
  %RCX.i403 = bitcast %union.anon* %4653 to i64*
  %4654 = load i64, i64* %RCX.i403
  %4655 = load i64, i64* %PC.i402
  %4656 = add i64 %4655, 4
  store i64 %4656, i64* %PC.i402
  %4657 = sext i64 %4654 to i128
  %4658 = and i128 %4657, -18446744073709551616
  %4659 = zext i64 %4654 to i128
  %4660 = or i128 %4658, %4659
  %4661 = mul i128 36, %4660
  %4662 = trunc i128 %4661 to i64
  store i64 %4662, i64* %RCX.i403, align 8
  %4663 = sext i64 %4662 to i128
  %4664 = icmp ne i128 %4663, %4661
  %4665 = zext i1 %4664 to i8
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4665, i8* %4666, align 1
  %4667 = trunc i128 %4661 to i32
  %4668 = and i32 %4667, 255
  %4669 = call i32 @llvm.ctpop.i32(i32 %4668)
  %4670 = trunc i32 %4669 to i8
  %4671 = and i8 %4670, 1
  %4672 = xor i8 %4671, 1
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4672, i8* %4673, align 1
  %4674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4674, align 1
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4675, align 1
  %4676 = lshr i64 %4662, 63
  %4677 = trunc i64 %4676 to i8
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4677, i8* %4678, align 1
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4665, i8* %4679, align 1
  store %struct.Memory* %loadMem_4380ca, %struct.Memory** %MEMORY
  %loadMem_4380ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4681 = getelementptr inbounds %struct.GPR, %struct.GPR* %4680, i32 0, i32 33
  %4682 = getelementptr inbounds %struct.Reg, %struct.Reg* %4681, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %4682 to i64*
  %4683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4684 = getelementptr inbounds %struct.GPR, %struct.GPR* %4683, i32 0, i32 1
  %4685 = getelementptr inbounds %struct.Reg, %struct.Reg* %4684, i32 0, i32 0
  %RAX.i400 = bitcast %union.anon* %4685 to i64*
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4687 = getelementptr inbounds %struct.GPR, %struct.GPR* %4686, i32 0, i32 5
  %4688 = getelementptr inbounds %struct.Reg, %struct.Reg* %4687, i32 0, i32 0
  %RCX.i401 = bitcast %union.anon* %4688 to i64*
  %4689 = load i64, i64* %RAX.i400
  %4690 = load i64, i64* %RCX.i401
  %4691 = load i64, i64* %PC.i399
  %4692 = add i64 %4691, 3
  store i64 %4692, i64* %PC.i399
  %4693 = add i64 %4690, %4689
  store i64 %4693, i64* %RAX.i400, align 8
  %4694 = icmp ult i64 %4693, %4689
  %4695 = icmp ult i64 %4693, %4690
  %4696 = or i1 %4694, %4695
  %4697 = zext i1 %4696 to i8
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4697, i8* %4698, align 1
  %4699 = trunc i64 %4693 to i32
  %4700 = and i32 %4699, 255
  %4701 = call i32 @llvm.ctpop.i32(i32 %4700)
  %4702 = trunc i32 %4701 to i8
  %4703 = and i8 %4702, 1
  %4704 = xor i8 %4703, 1
  %4705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4704, i8* %4705, align 1
  %4706 = xor i64 %4690, %4689
  %4707 = xor i64 %4706, %4693
  %4708 = lshr i64 %4707, 4
  %4709 = trunc i64 %4708 to i8
  %4710 = and i8 %4709, 1
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4710, i8* %4711, align 1
  %4712 = icmp eq i64 %4693, 0
  %4713 = zext i1 %4712 to i8
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4713, i8* %4714, align 1
  %4715 = lshr i64 %4693, 63
  %4716 = trunc i64 %4715 to i8
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4716, i8* %4717, align 1
  %4718 = lshr i64 %4689, 63
  %4719 = lshr i64 %4690, 63
  %4720 = xor i64 %4715, %4718
  %4721 = xor i64 %4715, %4719
  %4722 = add i64 %4720, %4721
  %4723 = icmp eq i64 %4722, 2
  %4724 = zext i1 %4723 to i8
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4724, i8* %4725, align 1
  store %struct.Memory* %loadMem_4380ce, %struct.Memory** %MEMORY
  %loadMem_4380d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4727 = getelementptr inbounds %struct.GPR, %struct.GPR* %4726, i32 0, i32 33
  %4728 = getelementptr inbounds %struct.Reg, %struct.Reg* %4727, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %4728 to i64*
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4730 = getelementptr inbounds %struct.GPR, %struct.GPR* %4729, i32 0, i32 1
  %4731 = getelementptr inbounds %struct.Reg, %struct.Reg* %4730, i32 0, i32 0
  %RAX.i398 = bitcast %union.anon* %4731 to i64*
  %4732 = load i64, i64* %RAX.i398
  %4733 = add i64 %4732, 28
  %4734 = load i64, i64* %PC.i397
  %4735 = add i64 %4734, 4
  store i64 %4735, i64* %PC.i397
  %4736 = inttoptr i64 %4733 to i8*
  store i8 1, i8* %4736
  store %struct.Memory* %loadMem_4380d1, %struct.Memory** %MEMORY
  %loadMem_4380d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4738 = getelementptr inbounds %struct.GPR, %struct.GPR* %4737, i32 0, i32 33
  %4739 = getelementptr inbounds %struct.Reg, %struct.Reg* %4738, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %4739 to i64*
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4741 = getelementptr inbounds %struct.GPR, %struct.GPR* %4740, i32 0, i32 1
  %4742 = getelementptr inbounds %struct.Reg, %struct.Reg* %4741, i32 0, i32 0
  %RAX.i395 = bitcast %union.anon* %4742 to i64*
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4744 = getelementptr inbounds %struct.GPR, %struct.GPR* %4743, i32 0, i32 15
  %4745 = getelementptr inbounds %struct.Reg, %struct.Reg* %4744, i32 0, i32 0
  %RBP.i396 = bitcast %union.anon* %4745 to i64*
  %4746 = load i64, i64* %RBP.i396
  %4747 = sub i64 %4746, 8
  %4748 = load i64, i64* %PC.i394
  %4749 = add i64 %4748, 4
  store i64 %4749, i64* %PC.i394
  %4750 = inttoptr i64 %4747 to i64*
  %4751 = load i64, i64* %4750
  store i64 %4751, i64* %RAX.i395, align 8
  store %struct.Memory* %loadMem_4380d5, %struct.Memory** %MEMORY
  %loadMem_4380d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4753 = getelementptr inbounds %struct.GPR, %struct.GPR* %4752, i32 0, i32 33
  %4754 = getelementptr inbounds %struct.Reg, %struct.Reg* %4753, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %4754 to i64*
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4756 = getelementptr inbounds %struct.GPR, %struct.GPR* %4755, i32 0, i32 5
  %4757 = getelementptr inbounds %struct.Reg, %struct.Reg* %4756, i32 0, i32 0
  %RCX.i392 = bitcast %union.anon* %4757 to i64*
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4759 = getelementptr inbounds %struct.GPR, %struct.GPR* %4758, i32 0, i32 15
  %4760 = getelementptr inbounds %struct.Reg, %struct.Reg* %4759, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %4760 to i64*
  %4761 = load i64, i64* %RBP.i393
  %4762 = sub i64 %4761, 36
  %4763 = load i64, i64* %PC.i391
  %4764 = add i64 %4763, 4
  store i64 %4764, i64* %PC.i391
  %4765 = inttoptr i64 %4762 to i32*
  %4766 = load i32, i32* %4765
  %4767 = sext i32 %4766 to i64
  store i64 %4767, i64* %RCX.i392, align 8
  store %struct.Memory* %loadMem_4380d9, %struct.Memory** %MEMORY
  %loadMem_4380dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4769 = getelementptr inbounds %struct.GPR, %struct.GPR* %4768, i32 0, i32 33
  %4770 = getelementptr inbounds %struct.Reg, %struct.Reg* %4769, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %4770 to i64*
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4772 = getelementptr inbounds %struct.GPR, %struct.GPR* %4771, i32 0, i32 5
  %4773 = getelementptr inbounds %struct.Reg, %struct.Reg* %4772, i32 0, i32 0
  %RCX.i390 = bitcast %union.anon* %4773 to i64*
  %4774 = load i64, i64* %RCX.i390
  %4775 = load i64, i64* %PC.i389
  %4776 = add i64 %4775, 4
  store i64 %4776, i64* %PC.i389
  %4777 = sext i64 %4774 to i128
  %4778 = and i128 %4777, -18446744073709551616
  %4779 = zext i64 %4774 to i128
  %4780 = or i128 %4778, %4779
  %4781 = mul i128 36, %4780
  %4782 = trunc i128 %4781 to i64
  store i64 %4782, i64* %RCX.i390, align 8
  %4783 = sext i64 %4782 to i128
  %4784 = icmp ne i128 %4783, %4781
  %4785 = zext i1 %4784 to i8
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4785, i8* %4786, align 1
  %4787 = trunc i128 %4781 to i32
  %4788 = and i32 %4787, 255
  %4789 = call i32 @llvm.ctpop.i32(i32 %4788)
  %4790 = trunc i32 %4789 to i8
  %4791 = and i8 %4790, 1
  %4792 = xor i8 %4791, 1
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4792, i8* %4793, align 1
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4794, align 1
  %4795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4795, align 1
  %4796 = lshr i64 %4782, 63
  %4797 = trunc i64 %4796 to i8
  %4798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4797, i8* %4798, align 1
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4785, i8* %4799, align 1
  store %struct.Memory* %loadMem_4380dd, %struct.Memory** %MEMORY
  %loadMem_4380e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4801 = getelementptr inbounds %struct.GPR, %struct.GPR* %4800, i32 0, i32 33
  %4802 = getelementptr inbounds %struct.Reg, %struct.Reg* %4801, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %4802 to i64*
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4804 = getelementptr inbounds %struct.GPR, %struct.GPR* %4803, i32 0, i32 1
  %4805 = getelementptr inbounds %struct.Reg, %struct.Reg* %4804, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %4805 to i64*
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4807 = getelementptr inbounds %struct.GPR, %struct.GPR* %4806, i32 0, i32 5
  %4808 = getelementptr inbounds %struct.Reg, %struct.Reg* %4807, i32 0, i32 0
  %RCX.i388 = bitcast %union.anon* %4808 to i64*
  %4809 = load i64, i64* %RAX.i387
  %4810 = load i64, i64* %RCX.i388
  %4811 = load i64, i64* %PC.i386
  %4812 = add i64 %4811, 3
  store i64 %4812, i64* %PC.i386
  %4813 = add i64 %4810, %4809
  store i64 %4813, i64* %RAX.i387, align 8
  %4814 = icmp ult i64 %4813, %4809
  %4815 = icmp ult i64 %4813, %4810
  %4816 = or i1 %4814, %4815
  %4817 = zext i1 %4816 to i8
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4817, i8* %4818, align 1
  %4819 = trunc i64 %4813 to i32
  %4820 = and i32 %4819, 255
  %4821 = call i32 @llvm.ctpop.i32(i32 %4820)
  %4822 = trunc i32 %4821 to i8
  %4823 = and i8 %4822, 1
  %4824 = xor i8 %4823, 1
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4824, i8* %4825, align 1
  %4826 = xor i64 %4810, %4809
  %4827 = xor i64 %4826, %4813
  %4828 = lshr i64 %4827, 4
  %4829 = trunc i64 %4828 to i8
  %4830 = and i8 %4829, 1
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4830, i8* %4831, align 1
  %4832 = icmp eq i64 %4813, 0
  %4833 = zext i1 %4832 to i8
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4833, i8* %4834, align 1
  %4835 = lshr i64 %4813, 63
  %4836 = trunc i64 %4835 to i8
  %4837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4836, i8* %4837, align 1
  %4838 = lshr i64 %4809, 63
  %4839 = lshr i64 %4810, 63
  %4840 = xor i64 %4835, %4838
  %4841 = xor i64 %4835, %4839
  %4842 = add i64 %4840, %4841
  %4843 = icmp eq i64 %4842, 2
  %4844 = zext i1 %4843 to i8
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4844, i8* %4845, align 1
  store %struct.Memory* %loadMem_4380e1, %struct.Memory** %MEMORY
  %loadMem_4380e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4847 = getelementptr inbounds %struct.GPR, %struct.GPR* %4846, i32 0, i32 33
  %4848 = getelementptr inbounds %struct.Reg, %struct.Reg* %4847, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %4848 to i64*
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4850 = getelementptr inbounds %struct.GPR, %struct.GPR* %4849, i32 0, i32 1
  %4851 = getelementptr inbounds %struct.Reg, %struct.Reg* %4850, i32 0, i32 0
  %RAX.i385 = bitcast %union.anon* %4851 to i64*
  %4852 = load i64, i64* %RAX.i385
  %4853 = load i64, i64* %PC.i384
  %4854 = add i64 %4853, 6
  store i64 %4854, i64* %PC.i384
  %4855 = inttoptr i64 %4852 to i32*
  store i32 5, i32* %4855
  store %struct.Memory* %loadMem_4380e4, %struct.Memory** %MEMORY
  %loadMem_4380ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4857 = getelementptr inbounds %struct.GPR, %struct.GPR* %4856, i32 0, i32 33
  %4858 = getelementptr inbounds %struct.Reg, %struct.Reg* %4857, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %4858 to i64*
  %4859 = load i64, i64* %PC.i383
  %4860 = add i64 %4859, 24
  %4861 = load i64, i64* %PC.i383
  %4862 = add i64 %4861, 5
  store i64 %4862, i64* %PC.i383
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4860, i64* %4863, align 8
  store %struct.Memory* %loadMem_4380ea, %struct.Memory** %MEMORY
  br label %block_.L_438102

block_.L_4380ef:                                  ; preds = %block_4380ad, %block_438098, %block_43806c
  %loadMem_4380ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4865 = getelementptr inbounds %struct.GPR, %struct.GPR* %4864, i32 0, i32 33
  %4866 = getelementptr inbounds %struct.Reg, %struct.Reg* %4865, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %4866 to i64*
  %4867 = load i64, i64* %PC.i382
  %4868 = add i64 %4867, 5
  %4869 = load i64, i64* %PC.i382
  %4870 = add i64 %4869, 5
  store i64 %4870, i64* %PC.i382
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4868, i64* %4871, align 8
  store %struct.Memory* %loadMem_4380ef, %struct.Memory** %MEMORY
  br label %block_.L_4380f4

block_.L_4380f4:                                  ; preds = %block_.L_4380ef
  %loadMem_4380f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4873 = getelementptr inbounds %struct.GPR, %struct.GPR* %4872, i32 0, i32 33
  %4874 = getelementptr inbounds %struct.Reg, %struct.Reg* %4873, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %4874 to i64*
  %4875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4876 = getelementptr inbounds %struct.GPR, %struct.GPR* %4875, i32 0, i32 1
  %4877 = getelementptr inbounds %struct.Reg, %struct.Reg* %4876, i32 0, i32 0
  %RAX.i380 = bitcast %union.anon* %4877 to i64*
  %4878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4879 = getelementptr inbounds %struct.GPR, %struct.GPR* %4878, i32 0, i32 15
  %4880 = getelementptr inbounds %struct.Reg, %struct.Reg* %4879, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %4880 to i64*
  %4881 = load i64, i64* %RBP.i381
  %4882 = sub i64 %4881, 32
  %4883 = load i64, i64* %PC.i379
  %4884 = add i64 %4883, 3
  store i64 %4884, i64* %PC.i379
  %4885 = inttoptr i64 %4882 to i32*
  %4886 = load i32, i32* %4885
  %4887 = zext i32 %4886 to i64
  store i64 %4887, i64* %RAX.i380, align 8
  store %struct.Memory* %loadMem_4380f4, %struct.Memory** %MEMORY
  %loadMem_4380f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4889 = getelementptr inbounds %struct.GPR, %struct.GPR* %4888, i32 0, i32 33
  %4890 = getelementptr inbounds %struct.Reg, %struct.Reg* %4889, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %4890 to i64*
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4892 = getelementptr inbounds %struct.GPR, %struct.GPR* %4891, i32 0, i32 1
  %4893 = getelementptr inbounds %struct.Reg, %struct.Reg* %4892, i32 0, i32 0
  %RAX.i378 = bitcast %union.anon* %4893 to i64*
  %4894 = load i64, i64* %RAX.i378
  %4895 = load i64, i64* %PC.i377
  %4896 = add i64 %4895, 3
  store i64 %4896, i64* %PC.i377
  %4897 = trunc i64 %4894 to i32
  %4898 = add i32 1, %4897
  %4899 = zext i32 %4898 to i64
  store i64 %4899, i64* %RAX.i378, align 8
  %4900 = icmp ult i32 %4898, %4897
  %4901 = icmp ult i32 %4898, 1
  %4902 = or i1 %4900, %4901
  %4903 = zext i1 %4902 to i8
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4903, i8* %4904, align 1
  %4905 = and i32 %4898, 255
  %4906 = call i32 @llvm.ctpop.i32(i32 %4905)
  %4907 = trunc i32 %4906 to i8
  %4908 = and i8 %4907, 1
  %4909 = xor i8 %4908, 1
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4909, i8* %4910, align 1
  %4911 = xor i64 1, %4894
  %4912 = trunc i64 %4911 to i32
  %4913 = xor i32 %4912, %4898
  %4914 = lshr i32 %4913, 4
  %4915 = trunc i32 %4914 to i8
  %4916 = and i8 %4915, 1
  %4917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4916, i8* %4917, align 1
  %4918 = icmp eq i32 %4898, 0
  %4919 = zext i1 %4918 to i8
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4919, i8* %4920, align 1
  %4921 = lshr i32 %4898, 31
  %4922 = trunc i32 %4921 to i8
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4922, i8* %4923, align 1
  %4924 = lshr i32 %4897, 31
  %4925 = xor i32 %4921, %4924
  %4926 = add i32 %4925, %4921
  %4927 = icmp eq i32 %4926, 2
  %4928 = zext i1 %4927 to i8
  %4929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4928, i8* %4929, align 1
  store %struct.Memory* %loadMem_4380f7, %struct.Memory** %MEMORY
  %loadMem_4380fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4931 = getelementptr inbounds %struct.GPR, %struct.GPR* %4930, i32 0, i32 33
  %4932 = getelementptr inbounds %struct.Reg, %struct.Reg* %4931, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %4932 to i64*
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4934 = getelementptr inbounds %struct.GPR, %struct.GPR* %4933, i32 0, i32 1
  %4935 = getelementptr inbounds %struct.Reg, %struct.Reg* %4934, i32 0, i32 0
  %EAX.i375 = bitcast %union.anon* %4935 to i32*
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4937 = getelementptr inbounds %struct.GPR, %struct.GPR* %4936, i32 0, i32 15
  %4938 = getelementptr inbounds %struct.Reg, %struct.Reg* %4937, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %4938 to i64*
  %4939 = load i64, i64* %RBP.i376
  %4940 = sub i64 %4939, 32
  %4941 = load i32, i32* %EAX.i375
  %4942 = zext i32 %4941 to i64
  %4943 = load i64, i64* %PC.i374
  %4944 = add i64 %4943, 3
  store i64 %4944, i64* %PC.i374
  %4945 = inttoptr i64 %4940 to i32*
  store i32 %4941, i32* %4945
  store %struct.Memory* %loadMem_4380fa, %struct.Memory** %MEMORY
  %loadMem_4380fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4947 = getelementptr inbounds %struct.GPR, %struct.GPR* %4946, i32 0, i32 33
  %4948 = getelementptr inbounds %struct.Reg, %struct.Reg* %4947, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %4948 to i64*
  %4949 = load i64, i64* %PC.i373
  %4950 = add i64 %4949, -155
  %4951 = load i64, i64* %PC.i373
  %4952 = add i64 %4951, 5
  store i64 %4952, i64* %PC.i373
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4950, i64* %4953, align 8
  store %struct.Memory* %loadMem_4380fd, %struct.Memory** %MEMORY
  br label %block_.L_438062

block_.L_438102:                                  ; preds = %block_4380c2, %block_.L_438062
  %loadMem_438102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4955 = getelementptr inbounds %struct.GPR, %struct.GPR* %4954, i32 0, i32 33
  %4956 = getelementptr inbounds %struct.Reg, %struct.Reg* %4955, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %4956 to i64*
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4958 = getelementptr inbounds %struct.GPR, %struct.GPR* %4957, i32 0, i32 15
  %4959 = getelementptr inbounds %struct.Reg, %struct.Reg* %4958, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %4959 to i64*
  %4960 = load i64, i64* %RBP.i372
  %4961 = sub i64 %4960, 32
  %4962 = load i64, i64* %PC.i371
  %4963 = add i64 %4962, 4
  store i64 %4963, i64* %PC.i371
  %4964 = inttoptr i64 %4961 to i32*
  %4965 = load i32, i32* %4964
  %4966 = sub i32 %4965, 4
  %4967 = icmp ult i32 %4965, 4
  %4968 = zext i1 %4967 to i8
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4968, i8* %4969, align 1
  %4970 = and i32 %4966, 255
  %4971 = call i32 @llvm.ctpop.i32(i32 %4970)
  %4972 = trunc i32 %4971 to i8
  %4973 = and i8 %4972, 1
  %4974 = xor i8 %4973, 1
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4974, i8* %4975, align 1
  %4976 = xor i32 %4965, 4
  %4977 = xor i32 %4976, %4966
  %4978 = lshr i32 %4977, 4
  %4979 = trunc i32 %4978 to i8
  %4980 = and i8 %4979, 1
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4980, i8* %4981, align 1
  %4982 = icmp eq i32 %4966, 0
  %4983 = zext i1 %4982 to i8
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4983, i8* %4984, align 1
  %4985 = lshr i32 %4966, 31
  %4986 = trunc i32 %4985 to i8
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4986, i8* %4987, align 1
  %4988 = lshr i32 %4965, 31
  %4989 = xor i32 %4985, %4988
  %4990 = add i32 %4989, %4988
  %4991 = icmp eq i32 %4990, 2
  %4992 = zext i1 %4991 to i8
  %4993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4992, i8* %4993, align 1
  store %struct.Memory* %loadMem_438102, %struct.Memory** %MEMORY
  %loadMem_438106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 33
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %4996 to i64*
  %4997 = load i64, i64* %PC.i370
  %4998 = add i64 %4997, 27
  %4999 = load i64, i64* %PC.i370
  %5000 = add i64 %4999, 6
  %5001 = load i64, i64* %PC.i370
  %5002 = add i64 %5001, 6
  store i64 %5002, i64* %PC.i370
  %5003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5004 = load i8, i8* %5003, align 1
  %5005 = icmp eq i8 %5004, 0
  %5006 = zext i1 %5005 to i8
  store i8 %5006, i8* %BRANCH_TAKEN, align 1
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5008 = select i1 %5005, i64 %4998, i64 %5000
  store i64 %5008, i64* %5007, align 8
  store %struct.Memory* %loadMem_438106, %struct.Memory** %MEMORY
  %loadBr_438106 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438106 = icmp eq i8 %loadBr_438106, 1
  br i1 %cmpBr_438106, label %block_.L_438121, label %block_43810c

block_43810c:                                     ; preds = %block_.L_438102
  %loadMem_43810c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5010 = getelementptr inbounds %struct.GPR, %struct.GPR* %5009, i32 0, i32 33
  %5011 = getelementptr inbounds %struct.Reg, %struct.Reg* %5010, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %5011 to i64*
  %5012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5013 = getelementptr inbounds %struct.GPR, %struct.GPR* %5012, i32 0, i32 1
  %5014 = getelementptr inbounds %struct.Reg, %struct.Reg* %5013, i32 0, i32 0
  %RAX.i368 = bitcast %union.anon* %5014 to i64*
  %5015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5016 = getelementptr inbounds %struct.GPR, %struct.GPR* %5015, i32 0, i32 15
  %5017 = getelementptr inbounds %struct.Reg, %struct.Reg* %5016, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %5017 to i64*
  %5018 = load i64, i64* %RBP.i369
  %5019 = sub i64 %5018, 8
  %5020 = load i64, i64* %PC.i367
  %5021 = add i64 %5020, 4
  store i64 %5021, i64* %PC.i367
  %5022 = inttoptr i64 %5019 to i64*
  %5023 = load i64, i64* %5022
  store i64 %5023, i64* %RAX.i368, align 8
  store %struct.Memory* %loadMem_43810c, %struct.Memory** %MEMORY
  %loadMem_438110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5025 = getelementptr inbounds %struct.GPR, %struct.GPR* %5024, i32 0, i32 33
  %5026 = getelementptr inbounds %struct.Reg, %struct.Reg* %5025, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %5026 to i64*
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5028 = getelementptr inbounds %struct.GPR, %struct.GPR* %5027, i32 0, i32 5
  %5029 = getelementptr inbounds %struct.Reg, %struct.Reg* %5028, i32 0, i32 0
  %RCX.i365 = bitcast %union.anon* %5029 to i64*
  %5030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5031 = getelementptr inbounds %struct.GPR, %struct.GPR* %5030, i32 0, i32 15
  %5032 = getelementptr inbounds %struct.Reg, %struct.Reg* %5031, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %5032 to i64*
  %5033 = load i64, i64* %RBP.i366
  %5034 = sub i64 %5033, 36
  %5035 = load i64, i64* %PC.i364
  %5036 = add i64 %5035, 4
  store i64 %5036, i64* %PC.i364
  %5037 = inttoptr i64 %5034 to i32*
  %5038 = load i32, i32* %5037
  %5039 = sext i32 %5038 to i64
  store i64 %5039, i64* %RCX.i365, align 8
  store %struct.Memory* %loadMem_438110, %struct.Memory** %MEMORY
  %loadMem_438114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5041 = getelementptr inbounds %struct.GPR, %struct.GPR* %5040, i32 0, i32 33
  %5042 = getelementptr inbounds %struct.Reg, %struct.Reg* %5041, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %5042 to i64*
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5044 = getelementptr inbounds %struct.GPR, %struct.GPR* %5043, i32 0, i32 5
  %5045 = getelementptr inbounds %struct.Reg, %struct.Reg* %5044, i32 0, i32 0
  %RCX.i363 = bitcast %union.anon* %5045 to i64*
  %5046 = load i64, i64* %RCX.i363
  %5047 = load i64, i64* %PC.i362
  %5048 = add i64 %5047, 4
  store i64 %5048, i64* %PC.i362
  %5049 = sext i64 %5046 to i128
  %5050 = and i128 %5049, -18446744073709551616
  %5051 = zext i64 %5046 to i128
  %5052 = or i128 %5050, %5051
  %5053 = mul i128 36, %5052
  %5054 = trunc i128 %5053 to i64
  store i64 %5054, i64* %RCX.i363, align 8
  %5055 = sext i64 %5054 to i128
  %5056 = icmp ne i128 %5055, %5053
  %5057 = zext i1 %5056 to i8
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5057, i8* %5058, align 1
  %5059 = trunc i128 %5053 to i32
  %5060 = and i32 %5059, 255
  %5061 = call i32 @llvm.ctpop.i32(i32 %5060)
  %5062 = trunc i32 %5061 to i8
  %5063 = and i8 %5062, 1
  %5064 = xor i8 %5063, 1
  %5065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5064, i8* %5065, align 1
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5066, align 1
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5067, align 1
  %5068 = lshr i64 %5054, 63
  %5069 = trunc i64 %5068 to i8
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5069, i8* %5070, align 1
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5057, i8* %5071, align 1
  store %struct.Memory* %loadMem_438114, %struct.Memory** %MEMORY
  %loadMem_438118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5073 = getelementptr inbounds %struct.GPR, %struct.GPR* %5072, i32 0, i32 33
  %5074 = getelementptr inbounds %struct.Reg, %struct.Reg* %5073, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %5074 to i64*
  %5075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5076 = getelementptr inbounds %struct.GPR, %struct.GPR* %5075, i32 0, i32 1
  %5077 = getelementptr inbounds %struct.Reg, %struct.Reg* %5076, i32 0, i32 0
  %RAX.i360 = bitcast %union.anon* %5077 to i64*
  %5078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5079 = getelementptr inbounds %struct.GPR, %struct.GPR* %5078, i32 0, i32 5
  %5080 = getelementptr inbounds %struct.Reg, %struct.Reg* %5079, i32 0, i32 0
  %RCX.i361 = bitcast %union.anon* %5080 to i64*
  %5081 = load i64, i64* %RAX.i360
  %5082 = load i64, i64* %RCX.i361
  %5083 = load i64, i64* %PC.i359
  %5084 = add i64 %5083, 3
  store i64 %5084, i64* %PC.i359
  %5085 = add i64 %5082, %5081
  store i64 %5085, i64* %RAX.i360, align 8
  %5086 = icmp ult i64 %5085, %5081
  %5087 = icmp ult i64 %5085, %5082
  %5088 = or i1 %5086, %5087
  %5089 = zext i1 %5088 to i8
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5089, i8* %5090, align 1
  %5091 = trunc i64 %5085 to i32
  %5092 = and i32 %5091, 255
  %5093 = call i32 @llvm.ctpop.i32(i32 %5092)
  %5094 = trunc i32 %5093 to i8
  %5095 = and i8 %5094, 1
  %5096 = xor i8 %5095, 1
  %5097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5096, i8* %5097, align 1
  %5098 = xor i64 %5082, %5081
  %5099 = xor i64 %5098, %5085
  %5100 = lshr i64 %5099, 4
  %5101 = trunc i64 %5100 to i8
  %5102 = and i8 %5101, 1
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5102, i8* %5103, align 1
  %5104 = icmp eq i64 %5085, 0
  %5105 = zext i1 %5104 to i8
  %5106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5105, i8* %5106, align 1
  %5107 = lshr i64 %5085, 63
  %5108 = trunc i64 %5107 to i8
  %5109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5108, i8* %5109, align 1
  %5110 = lshr i64 %5081, 63
  %5111 = lshr i64 %5082, 63
  %5112 = xor i64 %5107, %5110
  %5113 = xor i64 %5107, %5111
  %5114 = add i64 %5112, %5113
  %5115 = icmp eq i64 %5114, 2
  %5116 = zext i1 %5115 to i8
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5116, i8* %5117, align 1
  store %struct.Memory* %loadMem_438118, %struct.Memory** %MEMORY
  %loadMem_43811b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5119 = getelementptr inbounds %struct.GPR, %struct.GPR* %5118, i32 0, i32 33
  %5120 = getelementptr inbounds %struct.Reg, %struct.Reg* %5119, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %5120 to i64*
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5122 = getelementptr inbounds %struct.GPR, %struct.GPR* %5121, i32 0, i32 1
  %5123 = getelementptr inbounds %struct.Reg, %struct.Reg* %5122, i32 0, i32 0
  %RAX.i358 = bitcast %union.anon* %5123 to i64*
  %5124 = load i64, i64* %RAX.i358
  %5125 = load i64, i64* %PC.i357
  %5126 = add i64 %5125, 6
  store i64 %5126, i64* %PC.i357
  %5127 = inttoptr i64 %5124 to i32*
  store i32 3, i32* %5127
  store %struct.Memory* %loadMem_43811b, %struct.Memory** %MEMORY
  br label %block_.L_438121

block_.L_438121:                                  ; preds = %block_43810c, %block_.L_438102
  %loadMem_438121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5129 = getelementptr inbounds %struct.GPR, %struct.GPR* %5128, i32 0, i32 33
  %5130 = getelementptr inbounds %struct.Reg, %struct.Reg* %5129, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %5130 to i64*
  %5131 = load i64, i64* %PC.i356
  %5132 = add i64 %5131, 5
  %5133 = load i64, i64* %PC.i356
  %5134 = add i64 %5133, 5
  store i64 %5134, i64* %PC.i356
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5132, i64* %5135, align 8
  store %struct.Memory* %loadMem_438121, %struct.Memory** %MEMORY
  br label %block_.L_438126

block_.L_438126:                                  ; preds = %block_.L_438121, %block_438050
  %loadMem_438126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5137 = getelementptr inbounds %struct.GPR, %struct.GPR* %5136, i32 0, i32 33
  %5138 = getelementptr inbounds %struct.Reg, %struct.Reg* %5137, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %5138 to i64*
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5140 = getelementptr inbounds %struct.GPR, %struct.GPR* %5139, i32 0, i32 15
  %5141 = getelementptr inbounds %struct.Reg, %struct.Reg* %5140, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %5141 to i64*
  %5142 = load i64, i64* %RBP.i355
  %5143 = sub i64 %5142, 16
  %5144 = load i64, i64* %PC.i354
  %5145 = add i64 %5144, 5
  store i64 %5145, i64* %PC.i354
  %5146 = inttoptr i64 %5143 to i64*
  %5147 = load i64, i64* %5146
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5148, align 1
  %5149 = trunc i64 %5147 to i32
  %5150 = and i32 %5149, 255
  %5151 = call i32 @llvm.ctpop.i32(i32 %5150)
  %5152 = trunc i32 %5151 to i8
  %5153 = and i8 %5152, 1
  %5154 = xor i8 %5153, 1
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5154, i8* %5155, align 1
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5156, align 1
  %5157 = icmp eq i64 %5147, 0
  %5158 = zext i1 %5157 to i8
  %5159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5158, i8* %5159, align 1
  %5160 = lshr i64 %5147, 63
  %5161 = trunc i64 %5160 to i8
  %5162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5161, i8* %5162, align 1
  %5163 = lshr i64 %5147, 63
  %5164 = xor i64 %5160, %5163
  %5165 = add i64 %5164, %5163
  %5166 = icmp eq i64 %5165, 2
  %5167 = zext i1 %5166 to i8
  %5168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5167, i8* %5168, align 1
  store %struct.Memory* %loadMem_438126, %struct.Memory** %MEMORY
  %loadMem_43812b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5170 = getelementptr inbounds %struct.GPR, %struct.GPR* %5169, i32 0, i32 33
  %5171 = getelementptr inbounds %struct.Reg, %struct.Reg* %5170, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %5171 to i64*
  %5172 = load i64, i64* %PC.i353
  %5173 = add i64 %5172, 209
  %5174 = load i64, i64* %PC.i353
  %5175 = add i64 %5174, 6
  %5176 = load i64, i64* %PC.i353
  %5177 = add i64 %5176, 6
  store i64 %5177, i64* %PC.i353
  %5178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5179 = load i8, i8* %5178, align 1
  store i8 %5179, i8* %BRANCH_TAKEN, align 1
  %5180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5181 = icmp ne i8 %5179, 0
  %5182 = select i1 %5181, i64 %5173, i64 %5175
  store i64 %5182, i64* %5180, align 8
  store %struct.Memory* %loadMem_43812b, %struct.Memory** %MEMORY
  %loadBr_43812b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43812b = icmp eq i8 %loadBr_43812b, 1
  br i1 %cmpBr_43812b, label %block_.L_4381fc, label %block_438131

block_438131:                                     ; preds = %block_.L_438126
  %loadMem_438131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5184 = getelementptr inbounds %struct.GPR, %struct.GPR* %5183, i32 0, i32 33
  %5185 = getelementptr inbounds %struct.Reg, %struct.Reg* %5184, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %5185 to i64*
  %5186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5187 = getelementptr inbounds %struct.GPR, %struct.GPR* %5186, i32 0, i32 15
  %5188 = getelementptr inbounds %struct.Reg, %struct.Reg* %5187, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %5188 to i64*
  %5189 = load i64, i64* %RBP.i352
  %5190 = sub i64 %5189, 32
  %5191 = load i64, i64* %PC.i351
  %5192 = add i64 %5191, 7
  store i64 %5192, i64* %PC.i351
  %5193 = inttoptr i64 %5190 to i32*
  store i32 0, i32* %5193
  store %struct.Memory* %loadMem_438131, %struct.Memory** %MEMORY
  br label %block_.L_438138

block_.L_438138:                                  ; preds = %block_.L_4381ca, %block_438131
  %loadMem_438138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5195 = getelementptr inbounds %struct.GPR, %struct.GPR* %5194, i32 0, i32 33
  %5196 = getelementptr inbounds %struct.Reg, %struct.Reg* %5195, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %5196 to i64*
  %5197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5198 = getelementptr inbounds %struct.GPR, %struct.GPR* %5197, i32 0, i32 15
  %5199 = getelementptr inbounds %struct.Reg, %struct.Reg* %5198, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %5199 to i64*
  %5200 = load i64, i64* %RBP.i350
  %5201 = sub i64 %5200, 32
  %5202 = load i64, i64* %PC.i349
  %5203 = add i64 %5202, 4
  store i64 %5203, i64* %PC.i349
  %5204 = inttoptr i64 %5201 to i32*
  %5205 = load i32, i32* %5204
  %5206 = sub i32 %5205, 4
  %5207 = icmp ult i32 %5205, 4
  %5208 = zext i1 %5207 to i8
  %5209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5208, i8* %5209, align 1
  %5210 = and i32 %5206, 255
  %5211 = call i32 @llvm.ctpop.i32(i32 %5210)
  %5212 = trunc i32 %5211 to i8
  %5213 = and i8 %5212, 1
  %5214 = xor i8 %5213, 1
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5214, i8* %5215, align 1
  %5216 = xor i32 %5205, 4
  %5217 = xor i32 %5216, %5206
  %5218 = lshr i32 %5217, 4
  %5219 = trunc i32 %5218 to i8
  %5220 = and i8 %5219, 1
  %5221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5220, i8* %5221, align 1
  %5222 = icmp eq i32 %5206, 0
  %5223 = zext i1 %5222 to i8
  %5224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5223, i8* %5224, align 1
  %5225 = lshr i32 %5206, 31
  %5226 = trunc i32 %5225 to i8
  %5227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5226, i8* %5227, align 1
  %5228 = lshr i32 %5205, 31
  %5229 = xor i32 %5225, %5228
  %5230 = add i32 %5229, %5228
  %5231 = icmp eq i32 %5230, 2
  %5232 = zext i1 %5231 to i8
  %5233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5232, i8* %5233, align 1
  store %struct.Memory* %loadMem_438138, %struct.Memory** %MEMORY
  %loadMem_43813c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5235 = getelementptr inbounds %struct.GPR, %struct.GPR* %5234, i32 0, i32 33
  %5236 = getelementptr inbounds %struct.Reg, %struct.Reg* %5235, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %5236 to i64*
  %5237 = load i64, i64* %PC.i348
  %5238 = add i64 %5237, 156
  %5239 = load i64, i64* %PC.i348
  %5240 = add i64 %5239, 6
  %5241 = load i64, i64* %PC.i348
  %5242 = add i64 %5241, 6
  store i64 %5242, i64* %PC.i348
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5244 = load i8, i8* %5243, align 1
  %5245 = icmp ne i8 %5244, 0
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5247 = load i8, i8* %5246, align 1
  %5248 = icmp ne i8 %5247, 0
  %5249 = xor i1 %5245, %5248
  %5250 = xor i1 %5249, true
  %5251 = zext i1 %5250 to i8
  store i8 %5251, i8* %BRANCH_TAKEN, align 1
  %5252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5253 = select i1 %5249, i64 %5240, i64 %5238
  store i64 %5253, i64* %5252, align 8
  store %struct.Memory* %loadMem_43813c, %struct.Memory** %MEMORY
  %loadBr_43813c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43813c = icmp eq i8 %loadBr_43813c, 1
  br i1 %cmpBr_43813c, label %block_.L_4381d8, label %block_438142

block_438142:                                     ; preds = %block_.L_438138
  %loadMem_438142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5255 = getelementptr inbounds %struct.GPR, %struct.GPR* %5254, i32 0, i32 33
  %5256 = getelementptr inbounds %struct.Reg, %struct.Reg* %5255, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %5256 to i64*
  %5257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5258 = getelementptr inbounds %struct.GPR, %struct.GPR* %5257, i32 0, i32 1
  %5259 = getelementptr inbounds %struct.Reg, %struct.Reg* %5258, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %5259 to i64*
  %5260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5261 = getelementptr inbounds %struct.GPR, %struct.GPR* %5260, i32 0, i32 15
  %5262 = getelementptr inbounds %struct.Reg, %struct.Reg* %5261, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %5262 to i64*
  %5263 = load i64, i64* %RBP.i347
  %5264 = sub i64 %5263, 36
  %5265 = load i64, i64* %PC.i345
  %5266 = add i64 %5265, 3
  store i64 %5266, i64* %PC.i345
  %5267 = inttoptr i64 %5264 to i32*
  %5268 = load i32, i32* %5267
  %5269 = zext i32 %5268 to i64
  store i64 %5269, i64* %RAX.i346, align 8
  store %struct.Memory* %loadMem_438142, %struct.Memory** %MEMORY
  %loadMem_438145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5271 = getelementptr inbounds %struct.GPR, %struct.GPR* %5270, i32 0, i32 33
  %5272 = getelementptr inbounds %struct.Reg, %struct.Reg* %5271, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %5272 to i64*
  %5273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5274 = getelementptr inbounds %struct.GPR, %struct.GPR* %5273, i32 0, i32 5
  %5275 = getelementptr inbounds %struct.Reg, %struct.Reg* %5274, i32 0, i32 0
  %RCX.i343 = bitcast %union.anon* %5275 to i64*
  %5276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5277 = getelementptr inbounds %struct.GPR, %struct.GPR* %5276, i32 0, i32 15
  %5278 = getelementptr inbounds %struct.Reg, %struct.Reg* %5277, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %5278 to i64*
  %5279 = load i64, i64* %RBP.i344
  %5280 = sub i64 %5279, 32
  %5281 = load i64, i64* %PC.i342
  %5282 = add i64 %5281, 4
  store i64 %5282, i64* %PC.i342
  %5283 = inttoptr i64 %5280 to i32*
  %5284 = load i32, i32* %5283
  %5285 = sext i32 %5284 to i64
  store i64 %5285, i64* %RCX.i343, align 8
  store %struct.Memory* %loadMem_438145, %struct.Memory** %MEMORY
  %loadMem_438149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5287 = getelementptr inbounds %struct.GPR, %struct.GPR* %5286, i32 0, i32 33
  %5288 = getelementptr inbounds %struct.Reg, %struct.Reg* %5287, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %5288 to i64*
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5290 = getelementptr inbounds %struct.GPR, %struct.GPR* %5289, i32 0, i32 1
  %5291 = getelementptr inbounds %struct.Reg, %struct.Reg* %5290, i32 0, i32 0
  %RAX.i340 = bitcast %union.anon* %5291 to i64*
  %5292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5293 = getelementptr inbounds %struct.GPR, %struct.GPR* %5292, i32 0, i32 5
  %5294 = getelementptr inbounds %struct.Reg, %struct.Reg* %5293, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %5294 to i64*
  %5295 = load i64, i64* %RAX.i340
  %5296 = load i64, i64* %RCX.i341
  %5297 = mul i64 %5296, 4
  %5298 = add i64 %5297, 8053168
  %5299 = load i64, i64* %PC.i339
  %5300 = add i64 %5299, 7
  store i64 %5300, i64* %PC.i339
  %5301 = trunc i64 %5295 to i32
  %5302 = inttoptr i64 %5298 to i32*
  %5303 = load i32, i32* %5302
  %5304 = add i32 %5303, %5301
  %5305 = zext i32 %5304 to i64
  store i64 %5305, i64* %RAX.i340, align 8
  %5306 = icmp ult i32 %5304, %5301
  %5307 = icmp ult i32 %5304, %5303
  %5308 = or i1 %5306, %5307
  %5309 = zext i1 %5308 to i8
  %5310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5309, i8* %5310, align 1
  %5311 = and i32 %5304, 255
  %5312 = call i32 @llvm.ctpop.i32(i32 %5311)
  %5313 = trunc i32 %5312 to i8
  %5314 = and i8 %5313, 1
  %5315 = xor i8 %5314, 1
  %5316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5315, i8* %5316, align 1
  %5317 = xor i32 %5303, %5301
  %5318 = xor i32 %5317, %5304
  %5319 = lshr i32 %5318, 4
  %5320 = trunc i32 %5319 to i8
  %5321 = and i8 %5320, 1
  %5322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5321, i8* %5322, align 1
  %5323 = icmp eq i32 %5304, 0
  %5324 = zext i1 %5323 to i8
  %5325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5324, i8* %5325, align 1
  %5326 = lshr i32 %5304, 31
  %5327 = trunc i32 %5326 to i8
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5327, i8* %5328, align 1
  %5329 = lshr i32 %5301, 31
  %5330 = lshr i32 %5303, 31
  %5331 = xor i32 %5326, %5329
  %5332 = xor i32 %5326, %5330
  %5333 = add i32 %5331, %5332
  %5334 = icmp eq i32 %5333, 2
  %5335 = zext i1 %5334 to i8
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5335, i8* %5336, align 1
  store %struct.Memory* %loadMem_438149, %struct.Memory** %MEMORY
  %loadMem_438150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5338 = getelementptr inbounds %struct.GPR, %struct.GPR* %5337, i32 0, i32 33
  %5339 = getelementptr inbounds %struct.Reg, %struct.Reg* %5338, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %5339 to i64*
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5341 = getelementptr inbounds %struct.GPR, %struct.GPR* %5340, i32 0, i32 1
  %5342 = getelementptr inbounds %struct.Reg, %struct.Reg* %5341, i32 0, i32 0
  %EAX.i337 = bitcast %union.anon* %5342 to i32*
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5344 = getelementptr inbounds %struct.GPR, %struct.GPR* %5343, i32 0, i32 15
  %5345 = getelementptr inbounds %struct.Reg, %struct.Reg* %5344, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %5345 to i64*
  %5346 = load i64, i64* %RBP.i338
  %5347 = sub i64 %5346, 3264
  %5348 = load i32, i32* %EAX.i337
  %5349 = zext i32 %5348 to i64
  %5350 = load i64, i64* %PC.i336
  %5351 = add i64 %5350, 6
  store i64 %5351, i64* %PC.i336
  %5352 = inttoptr i64 %5347 to i32*
  store i32 %5348, i32* %5352
  store %struct.Memory* %loadMem_438150, %struct.Memory** %MEMORY
  %loadMem_438156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5354 = getelementptr inbounds %struct.GPR, %struct.GPR* %5353, i32 0, i32 33
  %5355 = getelementptr inbounds %struct.Reg, %struct.Reg* %5354, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %5355 to i64*
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5357 = getelementptr inbounds %struct.GPR, %struct.GPR* %5356, i32 0, i32 5
  %5358 = getelementptr inbounds %struct.Reg, %struct.Reg* %5357, i32 0, i32 0
  %RCX.i334 = bitcast %union.anon* %5358 to i64*
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5360 = getelementptr inbounds %struct.GPR, %struct.GPR* %5359, i32 0, i32 15
  %5361 = getelementptr inbounds %struct.Reg, %struct.Reg* %5360, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %5361 to i64*
  %5362 = load i64, i64* %RBP.i335
  %5363 = sub i64 %5362, 3264
  %5364 = load i64, i64* %PC.i333
  %5365 = add i64 %5364, 7
  store i64 %5365, i64* %PC.i333
  %5366 = inttoptr i64 %5363 to i32*
  %5367 = load i32, i32* %5366
  %5368 = sext i32 %5367 to i64
  store i64 %5368, i64* %RCX.i334, align 8
  store %struct.Memory* %loadMem_438156, %struct.Memory** %MEMORY
  %loadMem_43815d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5370 = getelementptr inbounds %struct.GPR, %struct.GPR* %5369, i32 0, i32 33
  %5371 = getelementptr inbounds %struct.Reg, %struct.Reg* %5370, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %5371 to i64*
  %5372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5373 = getelementptr inbounds %struct.GPR, %struct.GPR* %5372, i32 0, i32 1
  %5374 = getelementptr inbounds %struct.Reg, %struct.Reg* %5373, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %5374 to i64*
  %5375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5376 = getelementptr inbounds %struct.GPR, %struct.GPR* %5375, i32 0, i32 5
  %5377 = getelementptr inbounds %struct.Reg, %struct.Reg* %5376, i32 0, i32 0
  %RCX.i332 = bitcast %union.anon* %5377 to i64*
  %5378 = load i64, i64* %RCX.i332
  %5379 = add i64 %5378, 12099168
  %5380 = load i64, i64* %PC.i330
  %5381 = add i64 %5380, 8
  store i64 %5381, i64* %PC.i330
  %5382 = inttoptr i64 %5379 to i8*
  %5383 = load i8, i8* %5382
  %5384 = zext i8 %5383 to i64
  store i64 %5384, i64* %RAX.i331, align 8
  store %struct.Memory* %loadMem_43815d, %struct.Memory** %MEMORY
  %loadMem_438165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5386 = getelementptr inbounds %struct.GPR, %struct.GPR* %5385, i32 0, i32 33
  %5387 = getelementptr inbounds %struct.Reg, %struct.Reg* %5386, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %5387 to i64*
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5389 = getelementptr inbounds %struct.GPR, %struct.GPR* %5388, i32 0, i32 1
  %5390 = getelementptr inbounds %struct.Reg, %struct.Reg* %5389, i32 0, i32 0
  %EAX.i329 = bitcast %union.anon* %5390 to i32*
  %5391 = load i32, i32* %EAX.i329
  %5392 = zext i32 %5391 to i64
  %5393 = load i64, i64* %PC.i328
  %5394 = add i64 %5393, 3
  store i64 %5394, i64* %PC.i328
  %5395 = sub i32 %5391, 3
  %5396 = icmp ult i32 %5391, 3
  %5397 = zext i1 %5396 to i8
  %5398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5397, i8* %5398, align 1
  %5399 = and i32 %5395, 255
  %5400 = call i32 @llvm.ctpop.i32(i32 %5399)
  %5401 = trunc i32 %5400 to i8
  %5402 = and i8 %5401, 1
  %5403 = xor i8 %5402, 1
  %5404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5403, i8* %5404, align 1
  %5405 = xor i64 3, %5392
  %5406 = trunc i64 %5405 to i32
  %5407 = xor i32 %5406, %5395
  %5408 = lshr i32 %5407, 4
  %5409 = trunc i32 %5408 to i8
  %5410 = and i8 %5409, 1
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5410, i8* %5411, align 1
  %5412 = icmp eq i32 %5395, 0
  %5413 = zext i1 %5412 to i8
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5413, i8* %5414, align 1
  %5415 = lshr i32 %5395, 31
  %5416 = trunc i32 %5415 to i8
  %5417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5416, i8* %5417, align 1
  %5418 = lshr i32 %5391, 31
  %5419 = xor i32 %5415, %5418
  %5420 = add i32 %5419, %5418
  %5421 = icmp eq i32 %5420, 2
  %5422 = zext i1 %5421 to i8
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5422, i8* %5423, align 1
  store %struct.Memory* %loadMem_438165, %struct.Memory** %MEMORY
  %loadMem_438168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5425 = getelementptr inbounds %struct.GPR, %struct.GPR* %5424, i32 0, i32 33
  %5426 = getelementptr inbounds %struct.Reg, %struct.Reg* %5425, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %5426 to i64*
  %5427 = load i64, i64* %PC.i327
  %5428 = add i64 %5427, 93
  %5429 = load i64, i64* %PC.i327
  %5430 = add i64 %5429, 6
  %5431 = load i64, i64* %PC.i327
  %5432 = add i64 %5431, 6
  store i64 %5432, i64* %PC.i327
  %5433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5434 = load i8, i8* %5433, align 1
  store i8 %5434, i8* %BRANCH_TAKEN, align 1
  %5435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5436 = icmp ne i8 %5434, 0
  %5437 = select i1 %5436, i64 %5428, i64 %5430
  store i64 %5437, i64* %5435, align 8
  store %struct.Memory* %loadMem_438168, %struct.Memory** %MEMORY
  %loadBr_438168 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438168 = icmp eq i8 %loadBr_438168, 1
  br i1 %cmpBr_438168, label %block_.L_4381c5, label %block_43816e

block_43816e:                                     ; preds = %block_438142
  %loadMem_43816e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5439 = getelementptr inbounds %struct.GPR, %struct.GPR* %5438, i32 0, i32 33
  %5440 = getelementptr inbounds %struct.Reg, %struct.Reg* %5439, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %5440 to i64*
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5442 = getelementptr inbounds %struct.GPR, %struct.GPR* %5441, i32 0, i32 1
  %5443 = getelementptr inbounds %struct.Reg, %struct.Reg* %5442, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %5443 to i64*
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5445 = getelementptr inbounds %struct.GPR, %struct.GPR* %5444, i32 0, i32 15
  %5446 = getelementptr inbounds %struct.Reg, %struct.Reg* %5445, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %5446 to i64*
  %5447 = load i64, i64* %RBP.i326
  %5448 = sub i64 %5447, 3264
  %5449 = load i64, i64* %PC.i324
  %5450 = add i64 %5449, 7
  store i64 %5450, i64* %PC.i324
  %5451 = inttoptr i64 %5448 to i32*
  %5452 = load i32, i32* %5451
  %5453 = sext i32 %5452 to i64
  store i64 %5453, i64* %RAX.i325, align 8
  store %struct.Memory* %loadMem_43816e, %struct.Memory** %MEMORY
  %loadMem_438175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5455 = getelementptr inbounds %struct.GPR, %struct.GPR* %5454, i32 0, i32 33
  %5456 = getelementptr inbounds %struct.Reg, %struct.Reg* %5455, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %5456 to i64*
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5458 = getelementptr inbounds %struct.GPR, %struct.GPR* %5457, i32 0, i32 1
  %5459 = getelementptr inbounds %struct.Reg, %struct.Reg* %5458, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %5459 to i64*
  %5460 = load i64, i64* %RAX.i323
  %5461 = mul i64 %5460, 4
  %5462 = add i64 %5461, 11279440
  %5463 = load i64, i64* %PC.i322
  %5464 = add i64 %5463, 8
  store i64 %5464, i64* %PC.i322
  %5465 = inttoptr i64 %5462 to i32*
  %5466 = load i32, i32* %5465
  %5467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5467, align 1
  %5468 = and i32 %5466, 255
  %5469 = call i32 @llvm.ctpop.i32(i32 %5468)
  %5470 = trunc i32 %5469 to i8
  %5471 = and i8 %5470, 1
  %5472 = xor i8 %5471, 1
  %5473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5472, i8* %5473, align 1
  %5474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5474, align 1
  %5475 = icmp eq i32 %5466, 0
  %5476 = zext i1 %5475 to i8
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5476, i8* %5477, align 1
  %5478 = lshr i32 %5466, 31
  %5479 = trunc i32 %5478 to i8
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5479, i8* %5480, align 1
  %5481 = lshr i32 %5466, 31
  %5482 = xor i32 %5478, %5481
  %5483 = add i32 %5482, %5481
  %5484 = icmp eq i32 %5483, 2
  %5485 = zext i1 %5484 to i8
  %5486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5485, i8* %5486, align 1
  store %struct.Memory* %loadMem_438175, %struct.Memory** %MEMORY
  %loadMem_43817d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5488 = getelementptr inbounds %struct.GPR, %struct.GPR* %5487, i32 0, i32 33
  %5489 = getelementptr inbounds %struct.Reg, %struct.Reg* %5488, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %5489 to i64*
  %5490 = load i64, i64* %PC.i321
  %5491 = add i64 %5490, 72
  %5492 = load i64, i64* %PC.i321
  %5493 = add i64 %5492, 6
  %5494 = load i64, i64* %PC.i321
  %5495 = add i64 %5494, 6
  store i64 %5495, i64* %PC.i321
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5497 = load i8, i8* %5496, align 1
  store i8 %5497, i8* %BRANCH_TAKEN, align 1
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5499 = icmp ne i8 %5497, 0
  %5500 = select i1 %5499, i64 %5491, i64 %5493
  store i64 %5500, i64* %5498, align 8
  store %struct.Memory* %loadMem_43817d, %struct.Memory** %MEMORY
  %loadBr_43817d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43817d = icmp eq i8 %loadBr_43817d, 1
  br i1 %cmpBr_43817d, label %block_.L_4381c5, label %block_438183

block_438183:                                     ; preds = %block_43816e
  %loadMem_438183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5502 = getelementptr inbounds %struct.GPR, %struct.GPR* %5501, i32 0, i32 33
  %5503 = getelementptr inbounds %struct.Reg, %struct.Reg* %5502, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %5503 to i64*
  %5504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5505 = getelementptr inbounds %struct.GPR, %struct.GPR* %5504, i32 0, i32 1
  %5506 = getelementptr inbounds %struct.Reg, %struct.Reg* %5505, i32 0, i32 0
  %RAX.i319 = bitcast %union.anon* %5506 to i64*
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5508 = getelementptr inbounds %struct.GPR, %struct.GPR* %5507, i32 0, i32 15
  %5509 = getelementptr inbounds %struct.Reg, %struct.Reg* %5508, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %5509 to i64*
  %5510 = load i64, i64* %RBP.i320
  %5511 = sub i64 %5510, 3264
  %5512 = load i64, i64* %PC.i318
  %5513 = add i64 %5512, 7
  store i64 %5513, i64* %PC.i318
  %5514 = inttoptr i64 %5511 to i32*
  %5515 = load i32, i32* %5514
  %5516 = sext i32 %5515 to i64
  store i64 %5516, i64* %RAX.i319, align 8
  store %struct.Memory* %loadMem_438183, %struct.Memory** %MEMORY
  %loadMem_43818a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5518 = getelementptr inbounds %struct.GPR, %struct.GPR* %5517, i32 0, i32 33
  %5519 = getelementptr inbounds %struct.Reg, %struct.Reg* %5518, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %5519 to i64*
  %5520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5521 = getelementptr inbounds %struct.GPR, %struct.GPR* %5520, i32 0, i32 1
  %5522 = getelementptr inbounds %struct.Reg, %struct.Reg* %5521, i32 0, i32 0
  %RAX.i317 = bitcast %union.anon* %5522 to i64*
  %5523 = load i64, i64* %RAX.i317
  %5524 = mul i64 %5523, 4
  %5525 = add i64 %5524, 11277840
  %5526 = load i64, i64* %PC.i316
  %5527 = add i64 %5526, 8
  store i64 %5527, i64* %PC.i316
  %5528 = inttoptr i64 %5525 to i32*
  %5529 = load i32, i32* %5528
  %5530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5530, align 1
  %5531 = and i32 %5529, 255
  %5532 = call i32 @llvm.ctpop.i32(i32 %5531)
  %5533 = trunc i32 %5532 to i8
  %5534 = and i8 %5533, 1
  %5535 = xor i8 %5534, 1
  %5536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5535, i8* %5536, align 1
  %5537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5537, align 1
  %5538 = icmp eq i32 %5529, 0
  %5539 = zext i1 %5538 to i8
  %5540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5539, i8* %5540, align 1
  %5541 = lshr i32 %5529, 31
  %5542 = trunc i32 %5541 to i8
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5542, i8* %5543, align 1
  %5544 = lshr i32 %5529, 31
  %5545 = xor i32 %5541, %5544
  %5546 = add i32 %5545, %5544
  %5547 = icmp eq i32 %5546, 2
  %5548 = zext i1 %5547 to i8
  %5549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5548, i8* %5549, align 1
  store %struct.Memory* %loadMem_43818a, %struct.Memory** %MEMORY
  %loadMem_438192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5551 = getelementptr inbounds %struct.GPR, %struct.GPR* %5550, i32 0, i32 33
  %5552 = getelementptr inbounds %struct.Reg, %struct.Reg* %5551, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %5552 to i64*
  %5553 = load i64, i64* %PC.i315
  %5554 = add i64 %5553, 51
  %5555 = load i64, i64* %PC.i315
  %5556 = add i64 %5555, 6
  %5557 = load i64, i64* %PC.i315
  %5558 = add i64 %5557, 6
  store i64 %5558, i64* %PC.i315
  %5559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5560 = load i8, i8* %5559, align 1
  %5561 = icmp eq i8 %5560, 0
  %5562 = zext i1 %5561 to i8
  store i8 %5562, i8* %BRANCH_TAKEN, align 1
  %5563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5564 = select i1 %5561, i64 %5554, i64 %5556
  store i64 %5564, i64* %5563, align 8
  store %struct.Memory* %loadMem_438192, %struct.Memory** %MEMORY
  %loadBr_438192 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438192 = icmp eq i8 %loadBr_438192, 1
  br i1 %cmpBr_438192, label %block_.L_4381c5, label %block_438198

block_438198:                                     ; preds = %block_438183
  %loadMem_438198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5566 = getelementptr inbounds %struct.GPR, %struct.GPR* %5565, i32 0, i32 33
  %5567 = getelementptr inbounds %struct.Reg, %struct.Reg* %5566, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %5567 to i64*
  %5568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5569 = getelementptr inbounds %struct.GPR, %struct.GPR* %5568, i32 0, i32 1
  %5570 = getelementptr inbounds %struct.Reg, %struct.Reg* %5569, i32 0, i32 0
  %RAX.i313 = bitcast %union.anon* %5570 to i64*
  %5571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5572 = getelementptr inbounds %struct.GPR, %struct.GPR* %5571, i32 0, i32 15
  %5573 = getelementptr inbounds %struct.Reg, %struct.Reg* %5572, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %5573 to i64*
  %5574 = load i64, i64* %RBP.i314
  %5575 = sub i64 %5574, 16
  %5576 = load i64, i64* %PC.i312
  %5577 = add i64 %5576, 4
  store i64 %5577, i64* %PC.i312
  %5578 = inttoptr i64 %5575 to i64*
  %5579 = load i64, i64* %5578
  store i64 %5579, i64* %RAX.i313, align 8
  store %struct.Memory* %loadMem_438198, %struct.Memory** %MEMORY
  %loadMem_43819c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5581 = getelementptr inbounds %struct.GPR, %struct.GPR* %5580, i32 0, i32 33
  %5582 = getelementptr inbounds %struct.Reg, %struct.Reg* %5581, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %5582 to i64*
  %5583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5584 = getelementptr inbounds %struct.GPR, %struct.GPR* %5583, i32 0, i32 5
  %5585 = getelementptr inbounds %struct.Reg, %struct.Reg* %5584, i32 0, i32 0
  %RCX.i310 = bitcast %union.anon* %5585 to i64*
  %5586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5587 = getelementptr inbounds %struct.GPR, %struct.GPR* %5586, i32 0, i32 15
  %5588 = getelementptr inbounds %struct.Reg, %struct.Reg* %5587, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %5588 to i64*
  %5589 = load i64, i64* %RBP.i311
  %5590 = sub i64 %5589, 36
  %5591 = load i64, i64* %PC.i309
  %5592 = add i64 %5591, 4
  store i64 %5592, i64* %PC.i309
  %5593 = inttoptr i64 %5590 to i32*
  %5594 = load i32, i32* %5593
  %5595 = sext i32 %5594 to i64
  store i64 %5595, i64* %RCX.i310, align 8
  store %struct.Memory* %loadMem_43819c, %struct.Memory** %MEMORY
  %loadMem_4381a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5597 = getelementptr inbounds %struct.GPR, %struct.GPR* %5596, i32 0, i32 33
  %5598 = getelementptr inbounds %struct.Reg, %struct.Reg* %5597, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %5598 to i64*
  %5599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5600 = getelementptr inbounds %struct.GPR, %struct.GPR* %5599, i32 0, i32 5
  %5601 = getelementptr inbounds %struct.Reg, %struct.Reg* %5600, i32 0, i32 0
  %RCX.i308 = bitcast %union.anon* %5601 to i64*
  %5602 = load i64, i64* %RCX.i308
  %5603 = load i64, i64* %PC.i307
  %5604 = add i64 %5603, 4
  store i64 %5604, i64* %PC.i307
  %5605 = sext i64 %5602 to i128
  %5606 = and i128 %5605, -18446744073709551616
  %5607 = zext i64 %5602 to i128
  %5608 = or i128 %5606, %5607
  %5609 = mul i128 36, %5608
  %5610 = trunc i128 %5609 to i64
  store i64 %5610, i64* %RCX.i308, align 8
  %5611 = sext i64 %5610 to i128
  %5612 = icmp ne i128 %5611, %5609
  %5613 = zext i1 %5612 to i8
  %5614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5613, i8* %5614, align 1
  %5615 = trunc i128 %5609 to i32
  %5616 = and i32 %5615, 255
  %5617 = call i32 @llvm.ctpop.i32(i32 %5616)
  %5618 = trunc i32 %5617 to i8
  %5619 = and i8 %5618, 1
  %5620 = xor i8 %5619, 1
  %5621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5620, i8* %5621, align 1
  %5622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5622, align 1
  %5623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5623, align 1
  %5624 = lshr i64 %5610, 63
  %5625 = trunc i64 %5624 to i8
  %5626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5625, i8* %5626, align 1
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5613, i8* %5627, align 1
  store %struct.Memory* %loadMem_4381a0, %struct.Memory** %MEMORY
  %loadMem_4381a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5629 = getelementptr inbounds %struct.GPR, %struct.GPR* %5628, i32 0, i32 33
  %5630 = getelementptr inbounds %struct.Reg, %struct.Reg* %5629, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %5630 to i64*
  %5631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5632 = getelementptr inbounds %struct.GPR, %struct.GPR* %5631, i32 0, i32 1
  %5633 = getelementptr inbounds %struct.Reg, %struct.Reg* %5632, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %5633 to i64*
  %5634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5635 = getelementptr inbounds %struct.GPR, %struct.GPR* %5634, i32 0, i32 5
  %5636 = getelementptr inbounds %struct.Reg, %struct.Reg* %5635, i32 0, i32 0
  %RCX.i306 = bitcast %union.anon* %5636 to i64*
  %5637 = load i64, i64* %RAX.i305
  %5638 = load i64, i64* %RCX.i306
  %5639 = load i64, i64* %PC.i304
  %5640 = add i64 %5639, 3
  store i64 %5640, i64* %PC.i304
  %5641 = add i64 %5638, %5637
  store i64 %5641, i64* %RAX.i305, align 8
  %5642 = icmp ult i64 %5641, %5637
  %5643 = icmp ult i64 %5641, %5638
  %5644 = or i1 %5642, %5643
  %5645 = zext i1 %5644 to i8
  %5646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5645, i8* %5646, align 1
  %5647 = trunc i64 %5641 to i32
  %5648 = and i32 %5647, 255
  %5649 = call i32 @llvm.ctpop.i32(i32 %5648)
  %5650 = trunc i32 %5649 to i8
  %5651 = and i8 %5650, 1
  %5652 = xor i8 %5651, 1
  %5653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5652, i8* %5653, align 1
  %5654 = xor i64 %5638, %5637
  %5655 = xor i64 %5654, %5641
  %5656 = lshr i64 %5655, 4
  %5657 = trunc i64 %5656 to i8
  %5658 = and i8 %5657, 1
  %5659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5658, i8* %5659, align 1
  %5660 = icmp eq i64 %5641, 0
  %5661 = zext i1 %5660 to i8
  %5662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5661, i8* %5662, align 1
  %5663 = lshr i64 %5641, 63
  %5664 = trunc i64 %5663 to i8
  %5665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5664, i8* %5665, align 1
  %5666 = lshr i64 %5637, 63
  %5667 = lshr i64 %5638, 63
  %5668 = xor i64 %5663, %5666
  %5669 = xor i64 %5663, %5667
  %5670 = add i64 %5668, %5669
  %5671 = icmp eq i64 %5670, 2
  %5672 = zext i1 %5671 to i8
  %5673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5672, i8* %5673, align 1
  store %struct.Memory* %loadMem_4381a4, %struct.Memory** %MEMORY
  %loadMem_4381a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5675 = getelementptr inbounds %struct.GPR, %struct.GPR* %5674, i32 0, i32 33
  %5676 = getelementptr inbounds %struct.Reg, %struct.Reg* %5675, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %5676 to i64*
  %5677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5678 = getelementptr inbounds %struct.GPR, %struct.GPR* %5677, i32 0, i32 1
  %5679 = getelementptr inbounds %struct.Reg, %struct.Reg* %5678, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %5679 to i64*
  %5680 = load i64, i64* %RAX.i303
  %5681 = add i64 %5680, 28
  %5682 = load i64, i64* %PC.i302
  %5683 = add i64 %5682, 4
  store i64 %5683, i64* %PC.i302
  %5684 = inttoptr i64 %5681 to i8*
  store i8 1, i8* %5684
  store %struct.Memory* %loadMem_4381a7, %struct.Memory** %MEMORY
  %loadMem_4381ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %5685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5686 = getelementptr inbounds %struct.GPR, %struct.GPR* %5685, i32 0, i32 33
  %5687 = getelementptr inbounds %struct.Reg, %struct.Reg* %5686, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %5687 to i64*
  %5688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5689 = getelementptr inbounds %struct.GPR, %struct.GPR* %5688, i32 0, i32 1
  %5690 = getelementptr inbounds %struct.Reg, %struct.Reg* %5689, i32 0, i32 0
  %RAX.i300 = bitcast %union.anon* %5690 to i64*
  %5691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5692 = getelementptr inbounds %struct.GPR, %struct.GPR* %5691, i32 0, i32 15
  %5693 = getelementptr inbounds %struct.Reg, %struct.Reg* %5692, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %5693 to i64*
  %5694 = load i64, i64* %RBP.i301
  %5695 = sub i64 %5694, 16
  %5696 = load i64, i64* %PC.i299
  %5697 = add i64 %5696, 4
  store i64 %5697, i64* %PC.i299
  %5698 = inttoptr i64 %5695 to i64*
  %5699 = load i64, i64* %5698
  store i64 %5699, i64* %RAX.i300, align 8
  store %struct.Memory* %loadMem_4381ab, %struct.Memory** %MEMORY
  %loadMem_4381af = load %struct.Memory*, %struct.Memory** %MEMORY
  %5700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5701 = getelementptr inbounds %struct.GPR, %struct.GPR* %5700, i32 0, i32 33
  %5702 = getelementptr inbounds %struct.Reg, %struct.Reg* %5701, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %5702 to i64*
  %5703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5704 = getelementptr inbounds %struct.GPR, %struct.GPR* %5703, i32 0, i32 5
  %5705 = getelementptr inbounds %struct.Reg, %struct.Reg* %5704, i32 0, i32 0
  %RCX.i297 = bitcast %union.anon* %5705 to i64*
  %5706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5707 = getelementptr inbounds %struct.GPR, %struct.GPR* %5706, i32 0, i32 15
  %5708 = getelementptr inbounds %struct.Reg, %struct.Reg* %5707, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %5708 to i64*
  %5709 = load i64, i64* %RBP.i298
  %5710 = sub i64 %5709, 36
  %5711 = load i64, i64* %PC.i296
  %5712 = add i64 %5711, 4
  store i64 %5712, i64* %PC.i296
  %5713 = inttoptr i64 %5710 to i32*
  %5714 = load i32, i32* %5713
  %5715 = sext i32 %5714 to i64
  store i64 %5715, i64* %RCX.i297, align 8
  store %struct.Memory* %loadMem_4381af, %struct.Memory** %MEMORY
  %loadMem_4381b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5717 = getelementptr inbounds %struct.GPR, %struct.GPR* %5716, i32 0, i32 33
  %5718 = getelementptr inbounds %struct.Reg, %struct.Reg* %5717, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %5718 to i64*
  %5719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5720 = getelementptr inbounds %struct.GPR, %struct.GPR* %5719, i32 0, i32 5
  %5721 = getelementptr inbounds %struct.Reg, %struct.Reg* %5720, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %5721 to i64*
  %5722 = load i64, i64* %RCX.i295
  %5723 = load i64, i64* %PC.i294
  %5724 = add i64 %5723, 4
  store i64 %5724, i64* %PC.i294
  %5725 = sext i64 %5722 to i128
  %5726 = and i128 %5725, -18446744073709551616
  %5727 = zext i64 %5722 to i128
  %5728 = or i128 %5726, %5727
  %5729 = mul i128 36, %5728
  %5730 = trunc i128 %5729 to i64
  store i64 %5730, i64* %RCX.i295, align 8
  %5731 = sext i64 %5730 to i128
  %5732 = icmp ne i128 %5731, %5729
  %5733 = zext i1 %5732 to i8
  %5734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5733, i8* %5734, align 1
  %5735 = trunc i128 %5729 to i32
  %5736 = and i32 %5735, 255
  %5737 = call i32 @llvm.ctpop.i32(i32 %5736)
  %5738 = trunc i32 %5737 to i8
  %5739 = and i8 %5738, 1
  %5740 = xor i8 %5739, 1
  %5741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5740, i8* %5741, align 1
  %5742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5742, align 1
  %5743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5743, align 1
  %5744 = lshr i64 %5730, 63
  %5745 = trunc i64 %5744 to i8
  %5746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5745, i8* %5746, align 1
  %5747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5733, i8* %5747, align 1
  store %struct.Memory* %loadMem_4381b3, %struct.Memory** %MEMORY
  %loadMem_4381b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5749 = getelementptr inbounds %struct.GPR, %struct.GPR* %5748, i32 0, i32 33
  %5750 = getelementptr inbounds %struct.Reg, %struct.Reg* %5749, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %5750 to i64*
  %5751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5752 = getelementptr inbounds %struct.GPR, %struct.GPR* %5751, i32 0, i32 1
  %5753 = getelementptr inbounds %struct.Reg, %struct.Reg* %5752, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %5753 to i64*
  %5754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5755 = getelementptr inbounds %struct.GPR, %struct.GPR* %5754, i32 0, i32 5
  %5756 = getelementptr inbounds %struct.Reg, %struct.Reg* %5755, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %5756 to i64*
  %5757 = load i64, i64* %RAX.i292
  %5758 = load i64, i64* %RCX.i293
  %5759 = load i64, i64* %PC.i291
  %5760 = add i64 %5759, 3
  store i64 %5760, i64* %PC.i291
  %5761 = add i64 %5758, %5757
  store i64 %5761, i64* %RAX.i292, align 8
  %5762 = icmp ult i64 %5761, %5757
  %5763 = icmp ult i64 %5761, %5758
  %5764 = or i1 %5762, %5763
  %5765 = zext i1 %5764 to i8
  %5766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5765, i8* %5766, align 1
  %5767 = trunc i64 %5761 to i32
  %5768 = and i32 %5767, 255
  %5769 = call i32 @llvm.ctpop.i32(i32 %5768)
  %5770 = trunc i32 %5769 to i8
  %5771 = and i8 %5770, 1
  %5772 = xor i8 %5771, 1
  %5773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5772, i8* %5773, align 1
  %5774 = xor i64 %5758, %5757
  %5775 = xor i64 %5774, %5761
  %5776 = lshr i64 %5775, 4
  %5777 = trunc i64 %5776 to i8
  %5778 = and i8 %5777, 1
  %5779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5778, i8* %5779, align 1
  %5780 = icmp eq i64 %5761, 0
  %5781 = zext i1 %5780 to i8
  %5782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5781, i8* %5782, align 1
  %5783 = lshr i64 %5761, 63
  %5784 = trunc i64 %5783 to i8
  %5785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5784, i8* %5785, align 1
  %5786 = lshr i64 %5757, 63
  %5787 = lshr i64 %5758, 63
  %5788 = xor i64 %5783, %5786
  %5789 = xor i64 %5783, %5787
  %5790 = add i64 %5788, %5789
  %5791 = icmp eq i64 %5790, 2
  %5792 = zext i1 %5791 to i8
  %5793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5792, i8* %5793, align 1
  store %struct.Memory* %loadMem_4381b7, %struct.Memory** %MEMORY
  %loadMem_4381ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5795 = getelementptr inbounds %struct.GPR, %struct.GPR* %5794, i32 0, i32 33
  %5796 = getelementptr inbounds %struct.Reg, %struct.Reg* %5795, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %5796 to i64*
  %5797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5798 = getelementptr inbounds %struct.GPR, %struct.GPR* %5797, i32 0, i32 1
  %5799 = getelementptr inbounds %struct.Reg, %struct.Reg* %5798, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %5799 to i64*
  %5800 = load i64, i64* %RAX.i290
  %5801 = load i64, i64* %PC.i289
  %5802 = add i64 %5801, 6
  store i64 %5802, i64* %PC.i289
  %5803 = inttoptr i64 %5800 to i32*
  store i32 4, i32* %5803
  store %struct.Memory* %loadMem_4381ba, %struct.Memory** %MEMORY
  %loadMem_4381c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5805 = getelementptr inbounds %struct.GPR, %struct.GPR* %5804, i32 0, i32 33
  %5806 = getelementptr inbounds %struct.Reg, %struct.Reg* %5805, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %5806 to i64*
  %5807 = load i64, i64* %PC.i288
  %5808 = add i64 %5807, 24
  %5809 = load i64, i64* %PC.i288
  %5810 = add i64 %5809, 5
  store i64 %5810, i64* %PC.i288
  %5811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5808, i64* %5811, align 8
  store %struct.Memory* %loadMem_4381c0, %struct.Memory** %MEMORY
  br label %block_.L_4381d8

block_.L_4381c5:                                  ; preds = %block_438183, %block_43816e, %block_438142
  %loadMem_4381c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5813 = getelementptr inbounds %struct.GPR, %struct.GPR* %5812, i32 0, i32 33
  %5814 = getelementptr inbounds %struct.Reg, %struct.Reg* %5813, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %5814 to i64*
  %5815 = load i64, i64* %PC.i287
  %5816 = add i64 %5815, 5
  %5817 = load i64, i64* %PC.i287
  %5818 = add i64 %5817, 5
  store i64 %5818, i64* %PC.i287
  %5819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5816, i64* %5819, align 8
  store %struct.Memory* %loadMem_4381c5, %struct.Memory** %MEMORY
  br label %block_.L_4381ca

block_.L_4381ca:                                  ; preds = %block_.L_4381c5
  %loadMem_4381ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5821 = getelementptr inbounds %struct.GPR, %struct.GPR* %5820, i32 0, i32 33
  %5822 = getelementptr inbounds %struct.Reg, %struct.Reg* %5821, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %5822 to i64*
  %5823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5824 = getelementptr inbounds %struct.GPR, %struct.GPR* %5823, i32 0, i32 1
  %5825 = getelementptr inbounds %struct.Reg, %struct.Reg* %5824, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %5825 to i64*
  %5826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5827 = getelementptr inbounds %struct.GPR, %struct.GPR* %5826, i32 0, i32 15
  %5828 = getelementptr inbounds %struct.Reg, %struct.Reg* %5827, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %5828 to i64*
  %5829 = load i64, i64* %RBP.i286
  %5830 = sub i64 %5829, 32
  %5831 = load i64, i64* %PC.i284
  %5832 = add i64 %5831, 3
  store i64 %5832, i64* %PC.i284
  %5833 = inttoptr i64 %5830 to i32*
  %5834 = load i32, i32* %5833
  %5835 = zext i32 %5834 to i64
  store i64 %5835, i64* %RAX.i285, align 8
  store %struct.Memory* %loadMem_4381ca, %struct.Memory** %MEMORY
  %loadMem_4381cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5837 = getelementptr inbounds %struct.GPR, %struct.GPR* %5836, i32 0, i32 33
  %5838 = getelementptr inbounds %struct.Reg, %struct.Reg* %5837, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %5838 to i64*
  %5839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5840 = getelementptr inbounds %struct.GPR, %struct.GPR* %5839, i32 0, i32 1
  %5841 = getelementptr inbounds %struct.Reg, %struct.Reg* %5840, i32 0, i32 0
  %RAX.i283 = bitcast %union.anon* %5841 to i64*
  %5842 = load i64, i64* %RAX.i283
  %5843 = load i64, i64* %PC.i282
  %5844 = add i64 %5843, 3
  store i64 %5844, i64* %PC.i282
  %5845 = trunc i64 %5842 to i32
  %5846 = add i32 1, %5845
  %5847 = zext i32 %5846 to i64
  store i64 %5847, i64* %RAX.i283, align 8
  %5848 = icmp ult i32 %5846, %5845
  %5849 = icmp ult i32 %5846, 1
  %5850 = or i1 %5848, %5849
  %5851 = zext i1 %5850 to i8
  %5852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5851, i8* %5852, align 1
  %5853 = and i32 %5846, 255
  %5854 = call i32 @llvm.ctpop.i32(i32 %5853)
  %5855 = trunc i32 %5854 to i8
  %5856 = and i8 %5855, 1
  %5857 = xor i8 %5856, 1
  %5858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5857, i8* %5858, align 1
  %5859 = xor i64 1, %5842
  %5860 = trunc i64 %5859 to i32
  %5861 = xor i32 %5860, %5846
  %5862 = lshr i32 %5861, 4
  %5863 = trunc i32 %5862 to i8
  %5864 = and i8 %5863, 1
  %5865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5864, i8* %5865, align 1
  %5866 = icmp eq i32 %5846, 0
  %5867 = zext i1 %5866 to i8
  %5868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5867, i8* %5868, align 1
  %5869 = lshr i32 %5846, 31
  %5870 = trunc i32 %5869 to i8
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5870, i8* %5871, align 1
  %5872 = lshr i32 %5845, 31
  %5873 = xor i32 %5869, %5872
  %5874 = add i32 %5873, %5869
  %5875 = icmp eq i32 %5874, 2
  %5876 = zext i1 %5875 to i8
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5876, i8* %5877, align 1
  store %struct.Memory* %loadMem_4381cd, %struct.Memory** %MEMORY
  %loadMem_4381d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5879 = getelementptr inbounds %struct.GPR, %struct.GPR* %5878, i32 0, i32 33
  %5880 = getelementptr inbounds %struct.Reg, %struct.Reg* %5879, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %5880 to i64*
  %5881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5882 = getelementptr inbounds %struct.GPR, %struct.GPR* %5881, i32 0, i32 1
  %5883 = getelementptr inbounds %struct.Reg, %struct.Reg* %5882, i32 0, i32 0
  %EAX.i280 = bitcast %union.anon* %5883 to i32*
  %5884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5885 = getelementptr inbounds %struct.GPR, %struct.GPR* %5884, i32 0, i32 15
  %5886 = getelementptr inbounds %struct.Reg, %struct.Reg* %5885, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %5886 to i64*
  %5887 = load i64, i64* %RBP.i281
  %5888 = sub i64 %5887, 32
  %5889 = load i32, i32* %EAX.i280
  %5890 = zext i32 %5889 to i64
  %5891 = load i64, i64* %PC.i279
  %5892 = add i64 %5891, 3
  store i64 %5892, i64* %PC.i279
  %5893 = inttoptr i64 %5888 to i32*
  store i32 %5889, i32* %5893
  store %struct.Memory* %loadMem_4381d0, %struct.Memory** %MEMORY
  %loadMem_4381d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5895 = getelementptr inbounds %struct.GPR, %struct.GPR* %5894, i32 0, i32 33
  %5896 = getelementptr inbounds %struct.Reg, %struct.Reg* %5895, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %5896 to i64*
  %5897 = load i64, i64* %PC.i278
  %5898 = add i64 %5897, -155
  %5899 = load i64, i64* %PC.i278
  %5900 = add i64 %5899, 5
  store i64 %5900, i64* %PC.i278
  %5901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5898, i64* %5901, align 8
  store %struct.Memory* %loadMem_4381d3, %struct.Memory** %MEMORY
  br label %block_.L_438138

block_.L_4381d8:                                  ; preds = %block_438198, %block_.L_438138
  %loadMem_4381d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5903 = getelementptr inbounds %struct.GPR, %struct.GPR* %5902, i32 0, i32 33
  %5904 = getelementptr inbounds %struct.Reg, %struct.Reg* %5903, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %5904 to i64*
  %5905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5906 = getelementptr inbounds %struct.GPR, %struct.GPR* %5905, i32 0, i32 15
  %5907 = getelementptr inbounds %struct.Reg, %struct.Reg* %5906, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %5907 to i64*
  %5908 = load i64, i64* %RBP.i277
  %5909 = sub i64 %5908, 32
  %5910 = load i64, i64* %PC.i276
  %5911 = add i64 %5910, 4
  store i64 %5911, i64* %PC.i276
  %5912 = inttoptr i64 %5909 to i32*
  %5913 = load i32, i32* %5912
  %5914 = sub i32 %5913, 4
  %5915 = icmp ult i32 %5913, 4
  %5916 = zext i1 %5915 to i8
  %5917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5916, i8* %5917, align 1
  %5918 = and i32 %5914, 255
  %5919 = call i32 @llvm.ctpop.i32(i32 %5918)
  %5920 = trunc i32 %5919 to i8
  %5921 = and i8 %5920, 1
  %5922 = xor i8 %5921, 1
  %5923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5922, i8* %5923, align 1
  %5924 = xor i32 %5913, 4
  %5925 = xor i32 %5924, %5914
  %5926 = lshr i32 %5925, 4
  %5927 = trunc i32 %5926 to i8
  %5928 = and i8 %5927, 1
  %5929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5928, i8* %5929, align 1
  %5930 = icmp eq i32 %5914, 0
  %5931 = zext i1 %5930 to i8
  %5932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5931, i8* %5932, align 1
  %5933 = lshr i32 %5914, 31
  %5934 = trunc i32 %5933 to i8
  %5935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5934, i8* %5935, align 1
  %5936 = lshr i32 %5913, 31
  %5937 = xor i32 %5933, %5936
  %5938 = add i32 %5937, %5936
  %5939 = icmp eq i32 %5938, 2
  %5940 = zext i1 %5939 to i8
  %5941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5940, i8* %5941, align 1
  store %struct.Memory* %loadMem_4381d8, %struct.Memory** %MEMORY
  %loadMem_4381dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5943 = getelementptr inbounds %struct.GPR, %struct.GPR* %5942, i32 0, i32 33
  %5944 = getelementptr inbounds %struct.Reg, %struct.Reg* %5943, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %5944 to i64*
  %5945 = load i64, i64* %PC.i275
  %5946 = add i64 %5945, 27
  %5947 = load i64, i64* %PC.i275
  %5948 = add i64 %5947, 6
  %5949 = load i64, i64* %PC.i275
  %5950 = add i64 %5949, 6
  store i64 %5950, i64* %PC.i275
  %5951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5952 = load i8, i8* %5951, align 1
  %5953 = icmp eq i8 %5952, 0
  %5954 = zext i1 %5953 to i8
  store i8 %5954, i8* %BRANCH_TAKEN, align 1
  %5955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5956 = select i1 %5953, i64 %5946, i64 %5948
  store i64 %5956, i64* %5955, align 8
  store %struct.Memory* %loadMem_4381dc, %struct.Memory** %MEMORY
  %loadBr_4381dc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4381dc = icmp eq i8 %loadBr_4381dc, 1
  br i1 %cmpBr_4381dc, label %block_.L_4381f7, label %block_4381e2

block_4381e2:                                     ; preds = %block_.L_4381d8
  %loadMem_4381e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5958 = getelementptr inbounds %struct.GPR, %struct.GPR* %5957, i32 0, i32 33
  %5959 = getelementptr inbounds %struct.Reg, %struct.Reg* %5958, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %5959 to i64*
  %5960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5961 = getelementptr inbounds %struct.GPR, %struct.GPR* %5960, i32 0, i32 1
  %5962 = getelementptr inbounds %struct.Reg, %struct.Reg* %5961, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %5962 to i64*
  %5963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5964 = getelementptr inbounds %struct.GPR, %struct.GPR* %5963, i32 0, i32 15
  %5965 = getelementptr inbounds %struct.Reg, %struct.Reg* %5964, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %5965 to i64*
  %5966 = load i64, i64* %RBP.i274
  %5967 = sub i64 %5966, 16
  %5968 = load i64, i64* %PC.i272
  %5969 = add i64 %5968, 4
  store i64 %5969, i64* %PC.i272
  %5970 = inttoptr i64 %5967 to i64*
  %5971 = load i64, i64* %5970
  store i64 %5971, i64* %RAX.i273, align 8
  store %struct.Memory* %loadMem_4381e2, %struct.Memory** %MEMORY
  %loadMem_4381e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5973 = getelementptr inbounds %struct.GPR, %struct.GPR* %5972, i32 0, i32 33
  %5974 = getelementptr inbounds %struct.Reg, %struct.Reg* %5973, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %5974 to i64*
  %5975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5976 = getelementptr inbounds %struct.GPR, %struct.GPR* %5975, i32 0, i32 5
  %5977 = getelementptr inbounds %struct.Reg, %struct.Reg* %5976, i32 0, i32 0
  %RCX.i270 = bitcast %union.anon* %5977 to i64*
  %5978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5979 = getelementptr inbounds %struct.GPR, %struct.GPR* %5978, i32 0, i32 15
  %5980 = getelementptr inbounds %struct.Reg, %struct.Reg* %5979, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %5980 to i64*
  %5981 = load i64, i64* %RBP.i271
  %5982 = sub i64 %5981, 36
  %5983 = load i64, i64* %PC.i269
  %5984 = add i64 %5983, 4
  store i64 %5984, i64* %PC.i269
  %5985 = inttoptr i64 %5982 to i32*
  %5986 = load i32, i32* %5985
  %5987 = sext i32 %5986 to i64
  store i64 %5987, i64* %RCX.i270, align 8
  store %struct.Memory* %loadMem_4381e6, %struct.Memory** %MEMORY
  %loadMem_4381ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %5988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5989 = getelementptr inbounds %struct.GPR, %struct.GPR* %5988, i32 0, i32 33
  %5990 = getelementptr inbounds %struct.Reg, %struct.Reg* %5989, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %5990 to i64*
  %5991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5992 = getelementptr inbounds %struct.GPR, %struct.GPR* %5991, i32 0, i32 5
  %5993 = getelementptr inbounds %struct.Reg, %struct.Reg* %5992, i32 0, i32 0
  %RCX.i268 = bitcast %union.anon* %5993 to i64*
  %5994 = load i64, i64* %RCX.i268
  %5995 = load i64, i64* %PC.i267
  %5996 = add i64 %5995, 4
  store i64 %5996, i64* %PC.i267
  %5997 = sext i64 %5994 to i128
  %5998 = and i128 %5997, -18446744073709551616
  %5999 = zext i64 %5994 to i128
  %6000 = or i128 %5998, %5999
  %6001 = mul i128 36, %6000
  %6002 = trunc i128 %6001 to i64
  store i64 %6002, i64* %RCX.i268, align 8
  %6003 = sext i64 %6002 to i128
  %6004 = icmp ne i128 %6003, %6001
  %6005 = zext i1 %6004 to i8
  %6006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6005, i8* %6006, align 1
  %6007 = trunc i128 %6001 to i32
  %6008 = and i32 %6007, 255
  %6009 = call i32 @llvm.ctpop.i32(i32 %6008)
  %6010 = trunc i32 %6009 to i8
  %6011 = and i8 %6010, 1
  %6012 = xor i8 %6011, 1
  %6013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6012, i8* %6013, align 1
  %6014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6014, align 1
  %6015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6015, align 1
  %6016 = lshr i64 %6002, 63
  %6017 = trunc i64 %6016 to i8
  %6018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6017, i8* %6018, align 1
  %6019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6005, i8* %6019, align 1
  store %struct.Memory* %loadMem_4381ea, %struct.Memory** %MEMORY
  %loadMem_4381ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %6020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6021 = getelementptr inbounds %struct.GPR, %struct.GPR* %6020, i32 0, i32 33
  %6022 = getelementptr inbounds %struct.Reg, %struct.Reg* %6021, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %6022 to i64*
  %6023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6024 = getelementptr inbounds %struct.GPR, %struct.GPR* %6023, i32 0, i32 1
  %6025 = getelementptr inbounds %struct.Reg, %struct.Reg* %6024, i32 0, i32 0
  %RAX.i265 = bitcast %union.anon* %6025 to i64*
  %6026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6027 = getelementptr inbounds %struct.GPR, %struct.GPR* %6026, i32 0, i32 5
  %6028 = getelementptr inbounds %struct.Reg, %struct.Reg* %6027, i32 0, i32 0
  %RCX.i266 = bitcast %union.anon* %6028 to i64*
  %6029 = load i64, i64* %RAX.i265
  %6030 = load i64, i64* %RCX.i266
  %6031 = load i64, i64* %PC.i264
  %6032 = add i64 %6031, 3
  store i64 %6032, i64* %PC.i264
  %6033 = add i64 %6030, %6029
  store i64 %6033, i64* %RAX.i265, align 8
  %6034 = icmp ult i64 %6033, %6029
  %6035 = icmp ult i64 %6033, %6030
  %6036 = or i1 %6034, %6035
  %6037 = zext i1 %6036 to i8
  %6038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6037, i8* %6038, align 1
  %6039 = trunc i64 %6033 to i32
  %6040 = and i32 %6039, 255
  %6041 = call i32 @llvm.ctpop.i32(i32 %6040)
  %6042 = trunc i32 %6041 to i8
  %6043 = and i8 %6042, 1
  %6044 = xor i8 %6043, 1
  %6045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6044, i8* %6045, align 1
  %6046 = xor i64 %6030, %6029
  %6047 = xor i64 %6046, %6033
  %6048 = lshr i64 %6047, 4
  %6049 = trunc i64 %6048 to i8
  %6050 = and i8 %6049, 1
  %6051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6050, i8* %6051, align 1
  %6052 = icmp eq i64 %6033, 0
  %6053 = zext i1 %6052 to i8
  %6054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6053, i8* %6054, align 1
  %6055 = lshr i64 %6033, 63
  %6056 = trunc i64 %6055 to i8
  %6057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6056, i8* %6057, align 1
  %6058 = lshr i64 %6029, 63
  %6059 = lshr i64 %6030, 63
  %6060 = xor i64 %6055, %6058
  %6061 = xor i64 %6055, %6059
  %6062 = add i64 %6060, %6061
  %6063 = icmp eq i64 %6062, 2
  %6064 = zext i1 %6063 to i8
  %6065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6064, i8* %6065, align 1
  store %struct.Memory* %loadMem_4381ee, %struct.Memory** %MEMORY
  %loadMem_4381f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6067 = getelementptr inbounds %struct.GPR, %struct.GPR* %6066, i32 0, i32 33
  %6068 = getelementptr inbounds %struct.Reg, %struct.Reg* %6067, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %6068 to i64*
  %6069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6070 = getelementptr inbounds %struct.GPR, %struct.GPR* %6069, i32 0, i32 1
  %6071 = getelementptr inbounds %struct.Reg, %struct.Reg* %6070, i32 0, i32 0
  %RAX.i263 = bitcast %union.anon* %6071 to i64*
  %6072 = load i64, i64* %RAX.i263
  %6073 = load i64, i64* %PC.i262
  %6074 = add i64 %6073, 6
  store i64 %6074, i64* %PC.i262
  %6075 = inttoptr i64 %6072 to i32*
  store i32 3, i32* %6075
  store %struct.Memory* %loadMem_4381f1, %struct.Memory** %MEMORY
  br label %block_.L_4381f7

block_.L_4381f7:                                  ; preds = %block_4381e2, %block_.L_4381d8
  %loadMem_4381f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6077 = getelementptr inbounds %struct.GPR, %struct.GPR* %6076, i32 0, i32 33
  %6078 = getelementptr inbounds %struct.Reg, %struct.Reg* %6077, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %6078 to i64*
  %6079 = load i64, i64* %PC.i261
  %6080 = add i64 %6079, 5
  %6081 = load i64, i64* %PC.i261
  %6082 = add i64 %6081, 5
  store i64 %6082, i64* %PC.i261
  %6083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6080, i64* %6083, align 8
  store %struct.Memory* %loadMem_4381f7, %struct.Memory** %MEMORY
  br label %block_.L_4381fc

block_.L_4381fc:                                  ; preds = %block_.L_4381f7, %block_.L_438126
  %loadMem_4381fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6085 = getelementptr inbounds %struct.GPR, %struct.GPR* %6084, i32 0, i32 33
  %6086 = getelementptr inbounds %struct.Reg, %struct.Reg* %6085, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %6086 to i64*
  %6087 = load i64, i64* %PC.i260
  %6088 = add i64 %6087, 5
  %6089 = load i64, i64* %PC.i260
  %6090 = add i64 %6089, 5
  store i64 %6090, i64* %PC.i260
  %6091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6088, i64* %6091, align 8
  store %struct.Memory* %loadMem_4381fc, %struct.Memory** %MEMORY
  br label %block_.L_438201

block_.L_438201:                                  ; preds = %block_.L_4381fc, %block_43803e, %block_.L_43802c
  %loadMem_438201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6093 = getelementptr inbounds %struct.GPR, %struct.GPR* %6092, i32 0, i32 33
  %6094 = getelementptr inbounds %struct.Reg, %struct.Reg* %6093, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %6094 to i64*
  %6095 = load i64, i64* %PC.i259
  %6096 = add i64 %6095, 5
  %6097 = load i64, i64* %PC.i259
  %6098 = add i64 %6097, 5
  store i64 %6098, i64* %PC.i259
  %6099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6096, i64* %6099, align 8
  store %struct.Memory* %loadMem_438201, %struct.Memory** %MEMORY
  br label %block_.L_438206

block_.L_438206:                                  ; preds = %block_.L_438201, %block_.L_438027
  %loadMem_438206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6101 = getelementptr inbounds %struct.GPR, %struct.GPR* %6100, i32 0, i32 33
  %6102 = getelementptr inbounds %struct.Reg, %struct.Reg* %6101, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %6102 to i64*
  %6103 = load i64, i64* %PC.i258
  %6104 = add i64 %6103, 5
  %6105 = load i64, i64* %PC.i258
  %6106 = add i64 %6105, 5
  store i64 %6106, i64* %PC.i258
  %6107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6104, i64* %6107, align 8
  store %struct.Memory* %loadMem_438206, %struct.Memory** %MEMORY
  br label %block_.L_43820b

block_.L_43820b:                                  ; preds = %block_.L_438206, %block_.L_437f4c
  %loadMem_43820b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6109 = getelementptr inbounds %struct.GPR, %struct.GPR* %6108, i32 0, i32 33
  %6110 = getelementptr inbounds %struct.Reg, %struct.Reg* %6109, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %6110 to i64*
  %6111 = load i64, i64* %PC.i257
  %6112 = add i64 %6111, 5
  %6113 = load i64, i64* %PC.i257
  %6114 = add i64 %6113, 5
  store i64 %6114, i64* %PC.i257
  %6115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6112, i64* %6115, align 8
  store %struct.Memory* %loadMem_43820b, %struct.Memory** %MEMORY
  br label %block_.L_438210

block_.L_438210:                                  ; preds = %block_.L_43820b, %block_.L_437e71
  %loadMem_438210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6117 = getelementptr inbounds %struct.GPR, %struct.GPR* %6116, i32 0, i32 33
  %6118 = getelementptr inbounds %struct.Reg, %struct.Reg* %6117, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %6118 to i64*
  %6119 = load i64, i64* %PC.i256
  %6120 = add i64 %6119, 5
  %6121 = load i64, i64* %PC.i256
  %6122 = add i64 %6121, 5
  store i64 %6122, i64* %PC.i256
  %6123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6120, i64* %6123, align 8
  store %struct.Memory* %loadMem_438210, %struct.Memory** %MEMORY
  br label %block_.L_438215

block_.L_438215:                                  ; preds = %block_.L_438210, %block_437dfb
  %loadMem_438215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6125 = getelementptr inbounds %struct.GPR, %struct.GPR* %6124, i32 0, i32 33
  %6126 = getelementptr inbounds %struct.Reg, %struct.Reg* %6125, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %6126 to i64*
  %6127 = load i64, i64* %PC.i255
  %6128 = add i64 %6127, 5
  %6129 = load i64, i64* %PC.i255
  %6130 = add i64 %6129, 5
  store i64 %6130, i64* %PC.i255
  %6131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6128, i64* %6131, align 8
  store %struct.Memory* %loadMem_438215, %struct.Memory** %MEMORY
  br label %block_.L_43821a

block_.L_43821a:                                  ; preds = %block_.L_438215
  %loadMem_43821a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6133 = getelementptr inbounds %struct.GPR, %struct.GPR* %6132, i32 0, i32 33
  %6134 = getelementptr inbounds %struct.Reg, %struct.Reg* %6133, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %6134 to i64*
  %6135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6136 = getelementptr inbounds %struct.GPR, %struct.GPR* %6135, i32 0, i32 1
  %6137 = getelementptr inbounds %struct.Reg, %struct.Reg* %6136, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %6137 to i64*
  %6138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6139 = getelementptr inbounds %struct.GPR, %struct.GPR* %6138, i32 0, i32 15
  %6140 = getelementptr inbounds %struct.Reg, %struct.Reg* %6139, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %6140 to i64*
  %6141 = load i64, i64* %RBP.i254
  %6142 = sub i64 %6141, 28
  %6143 = load i64, i64* %PC.i252
  %6144 = add i64 %6143, 3
  store i64 %6144, i64* %PC.i252
  %6145 = inttoptr i64 %6142 to i32*
  %6146 = load i32, i32* %6145
  %6147 = zext i32 %6146 to i64
  store i64 %6147, i64* %RAX.i253, align 8
  store %struct.Memory* %loadMem_43821a, %struct.Memory** %MEMORY
  %loadMem_43821d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6149 = getelementptr inbounds %struct.GPR, %struct.GPR* %6148, i32 0, i32 33
  %6150 = getelementptr inbounds %struct.Reg, %struct.Reg* %6149, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %6150 to i64*
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6152 = getelementptr inbounds %struct.GPR, %struct.GPR* %6151, i32 0, i32 1
  %6153 = getelementptr inbounds %struct.Reg, %struct.Reg* %6152, i32 0, i32 0
  %RAX.i251 = bitcast %union.anon* %6153 to i64*
  %6154 = load i64, i64* %RAX.i251
  %6155 = load i64, i64* %PC.i250
  %6156 = add i64 %6155, 3
  store i64 %6156, i64* %PC.i250
  %6157 = trunc i64 %6154 to i32
  %6158 = add i32 1, %6157
  %6159 = zext i32 %6158 to i64
  store i64 %6159, i64* %RAX.i251, align 8
  %6160 = icmp ult i32 %6158, %6157
  %6161 = icmp ult i32 %6158, 1
  %6162 = or i1 %6160, %6161
  %6163 = zext i1 %6162 to i8
  %6164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6163, i8* %6164, align 1
  %6165 = and i32 %6158, 255
  %6166 = call i32 @llvm.ctpop.i32(i32 %6165)
  %6167 = trunc i32 %6166 to i8
  %6168 = and i8 %6167, 1
  %6169 = xor i8 %6168, 1
  %6170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6169, i8* %6170, align 1
  %6171 = xor i64 1, %6154
  %6172 = trunc i64 %6171 to i32
  %6173 = xor i32 %6172, %6158
  %6174 = lshr i32 %6173, 4
  %6175 = trunc i32 %6174 to i8
  %6176 = and i8 %6175, 1
  %6177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6176, i8* %6177, align 1
  %6178 = icmp eq i32 %6158, 0
  %6179 = zext i1 %6178 to i8
  %6180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6179, i8* %6180, align 1
  %6181 = lshr i32 %6158, 31
  %6182 = trunc i32 %6181 to i8
  %6183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6182, i8* %6183, align 1
  %6184 = lshr i32 %6157, 31
  %6185 = xor i32 %6181, %6184
  %6186 = add i32 %6185, %6181
  %6187 = icmp eq i32 %6186, 2
  %6188 = zext i1 %6187 to i8
  %6189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6188, i8* %6189, align 1
  store %struct.Memory* %loadMem_43821d, %struct.Memory** %MEMORY
  %loadMem_438220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6191 = getelementptr inbounds %struct.GPR, %struct.GPR* %6190, i32 0, i32 33
  %6192 = getelementptr inbounds %struct.Reg, %struct.Reg* %6191, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %6192 to i64*
  %6193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6194 = getelementptr inbounds %struct.GPR, %struct.GPR* %6193, i32 0, i32 1
  %6195 = getelementptr inbounds %struct.Reg, %struct.Reg* %6194, i32 0, i32 0
  %EAX.i248 = bitcast %union.anon* %6195 to i32*
  %6196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6197 = getelementptr inbounds %struct.GPR, %struct.GPR* %6196, i32 0, i32 15
  %6198 = getelementptr inbounds %struct.Reg, %struct.Reg* %6197, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %6198 to i64*
  %6199 = load i64, i64* %RBP.i249
  %6200 = sub i64 %6199, 28
  %6201 = load i32, i32* %EAX.i248
  %6202 = zext i32 %6201 to i64
  %6203 = load i64, i64* %PC.i247
  %6204 = add i64 %6203, 3
  store i64 %6204, i64* %PC.i247
  %6205 = inttoptr i64 %6200 to i32*
  store i32 %6201, i32* %6205
  store %struct.Memory* %loadMem_438220, %struct.Memory** %MEMORY
  %loadMem_438223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6207 = getelementptr inbounds %struct.GPR, %struct.GPR* %6206, i32 0, i32 33
  %6208 = getelementptr inbounds %struct.Reg, %struct.Reg* %6207, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %6208 to i64*
  %6209 = load i64, i64* %PC.i246
  %6210 = add i64 %6209, -1114
  %6211 = load i64, i64* %PC.i246
  %6212 = add i64 %6211, 5
  store i64 %6212, i64* %PC.i246
  %6213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6210, i64* %6213, align 8
  store %struct.Memory* %loadMem_438223, %struct.Memory** %MEMORY
  br label %block_.L_437dc9

block_.L_438228:                                  ; preds = %block_.L_437dc9
  %loadMem_438228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6215 = getelementptr inbounds %struct.GPR, %struct.GPR* %6214, i32 0, i32 33
  %6216 = getelementptr inbounds %struct.Reg, %struct.Reg* %6215, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %6216 to i64*
  %6217 = load i64, i64* %PC.i245
  %6218 = add i64 %6217, 5
  %6219 = load i64, i64* %PC.i245
  %6220 = add i64 %6219, 5
  store i64 %6220, i64* %PC.i245
  %6221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6218, i64* %6221, align 8
  store %struct.Memory* %loadMem_438228, %struct.Memory** %MEMORY
  br label %block_.L_43822d

block_.L_43822d:                                  ; preds = %block_.L_438228
  %loadMem_43822d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6223 = getelementptr inbounds %struct.GPR, %struct.GPR* %6222, i32 0, i32 33
  %6224 = getelementptr inbounds %struct.Reg, %struct.Reg* %6223, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %6224 to i64*
  %6225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6226 = getelementptr inbounds %struct.GPR, %struct.GPR* %6225, i32 0, i32 1
  %6227 = getelementptr inbounds %struct.Reg, %struct.Reg* %6226, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %6227 to i64*
  %6228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6229 = getelementptr inbounds %struct.GPR, %struct.GPR* %6228, i32 0, i32 15
  %6230 = getelementptr inbounds %struct.Reg, %struct.Reg* %6229, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %6230 to i64*
  %6231 = load i64, i64* %RBP.i244
  %6232 = sub i64 %6231, 24
  %6233 = load i64, i64* %PC.i242
  %6234 = add i64 %6233, 3
  store i64 %6234, i64* %PC.i242
  %6235 = inttoptr i64 %6232 to i32*
  %6236 = load i32, i32* %6235
  %6237 = zext i32 %6236 to i64
  store i64 %6237, i64* %RAX.i243, align 8
  store %struct.Memory* %loadMem_43822d, %struct.Memory** %MEMORY
  %loadMem_438230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6239 = getelementptr inbounds %struct.GPR, %struct.GPR* %6238, i32 0, i32 33
  %6240 = getelementptr inbounds %struct.Reg, %struct.Reg* %6239, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %6240 to i64*
  %6241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6242 = getelementptr inbounds %struct.GPR, %struct.GPR* %6241, i32 0, i32 1
  %6243 = getelementptr inbounds %struct.Reg, %struct.Reg* %6242, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %6243 to i64*
  %6244 = load i64, i64* %RAX.i241
  %6245 = load i64, i64* %PC.i240
  %6246 = add i64 %6245, 3
  store i64 %6246, i64* %PC.i240
  %6247 = trunc i64 %6244 to i32
  %6248 = add i32 1, %6247
  %6249 = zext i32 %6248 to i64
  store i64 %6249, i64* %RAX.i241, align 8
  %6250 = icmp ult i32 %6248, %6247
  %6251 = icmp ult i32 %6248, 1
  %6252 = or i1 %6250, %6251
  %6253 = zext i1 %6252 to i8
  %6254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6253, i8* %6254, align 1
  %6255 = and i32 %6248, 255
  %6256 = call i32 @llvm.ctpop.i32(i32 %6255)
  %6257 = trunc i32 %6256 to i8
  %6258 = and i8 %6257, 1
  %6259 = xor i8 %6258, 1
  %6260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6259, i8* %6260, align 1
  %6261 = xor i64 1, %6244
  %6262 = trunc i64 %6261 to i32
  %6263 = xor i32 %6262, %6248
  %6264 = lshr i32 %6263, 4
  %6265 = trunc i32 %6264 to i8
  %6266 = and i8 %6265, 1
  %6267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6266, i8* %6267, align 1
  %6268 = icmp eq i32 %6248, 0
  %6269 = zext i1 %6268 to i8
  %6270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6269, i8* %6270, align 1
  %6271 = lshr i32 %6248, 31
  %6272 = trunc i32 %6271 to i8
  %6273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6272, i8* %6273, align 1
  %6274 = lshr i32 %6247, 31
  %6275 = xor i32 %6271, %6274
  %6276 = add i32 %6275, %6271
  %6277 = icmp eq i32 %6276, 2
  %6278 = zext i1 %6277 to i8
  %6279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6278, i8* %6279, align 1
  store %struct.Memory* %loadMem_438230, %struct.Memory** %MEMORY
  %loadMem_438233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6281 = getelementptr inbounds %struct.GPR, %struct.GPR* %6280, i32 0, i32 33
  %6282 = getelementptr inbounds %struct.Reg, %struct.Reg* %6281, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %6282 to i64*
  %6283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6284 = getelementptr inbounds %struct.GPR, %struct.GPR* %6283, i32 0, i32 1
  %6285 = getelementptr inbounds %struct.Reg, %struct.Reg* %6284, i32 0, i32 0
  %EAX.i238 = bitcast %union.anon* %6285 to i32*
  %6286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6287 = getelementptr inbounds %struct.GPR, %struct.GPR* %6286, i32 0, i32 15
  %6288 = getelementptr inbounds %struct.Reg, %struct.Reg* %6287, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %6288 to i64*
  %6289 = load i64, i64* %RBP.i239
  %6290 = sub i64 %6289, 24
  %6291 = load i32, i32* %EAX.i238
  %6292 = zext i32 %6291 to i64
  %6293 = load i64, i64* %PC.i237
  %6294 = add i64 %6293, 3
  store i64 %6294, i64* %PC.i237
  %6295 = inttoptr i64 %6290 to i32*
  store i32 %6291, i32* %6295
  store %struct.Memory* %loadMem_438233, %struct.Memory** %MEMORY
  %loadMem_438236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6297 = getelementptr inbounds %struct.GPR, %struct.GPR* %6296, i32 0, i32 33
  %6298 = getelementptr inbounds %struct.Reg, %struct.Reg* %6297, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %6298 to i64*
  %6299 = load i64, i64* %PC.i236
  %6300 = add i64 %6299, -1156
  %6301 = load i64, i64* %PC.i236
  %6302 = add i64 %6301, 5
  store i64 %6302, i64* %PC.i236
  %6303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6300, i64* %6303, align 8
  store %struct.Memory* %loadMem_438236, %struct.Memory** %MEMORY
  br label %block_.L_437db2

block_.L_43823b:                                  ; preds = %block_.L_437db2
  %loadMem_43823b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6305 = getelementptr inbounds %struct.GPR, %struct.GPR* %6304, i32 0, i32 33
  %6306 = getelementptr inbounds %struct.Reg, %struct.Reg* %6305, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %6306 to i64*
  %6307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6308 = getelementptr inbounds %struct.GPR, %struct.GPR* %6307, i32 0, i32 15
  %6309 = getelementptr inbounds %struct.Reg, %struct.Reg* %6308, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %6309 to i64*
  %6310 = load i64, i64* %RBP.i235
  %6311 = sub i64 %6310, 20
  %6312 = load i64, i64* %PC.i234
  %6313 = add i64 %6312, 4
  store i64 %6313, i64* %PC.i234
  %6314 = inttoptr i64 %6311 to i32*
  %6315 = load i32, i32* %6314
  %6316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6316, align 1
  %6317 = and i32 %6315, 255
  %6318 = call i32 @llvm.ctpop.i32(i32 %6317)
  %6319 = trunc i32 %6318 to i8
  %6320 = and i8 %6319, 1
  %6321 = xor i8 %6320, 1
  %6322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6321, i8* %6322, align 1
  %6323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6323, align 1
  %6324 = icmp eq i32 %6315, 0
  %6325 = zext i1 %6324 to i8
  %6326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6325, i8* %6326, align 1
  %6327 = lshr i32 %6315, 31
  %6328 = trunc i32 %6327 to i8
  %6329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6328, i8* %6329, align 1
  %6330 = lshr i32 %6315, 31
  %6331 = xor i32 %6327, %6330
  %6332 = add i32 %6331, %6330
  %6333 = icmp eq i32 %6332, 2
  %6334 = zext i1 %6333 to i8
  %6335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6334, i8* %6335, align 1
  store %struct.Memory* %loadMem_43823b, %struct.Memory** %MEMORY
  %loadMem_43823f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6337 = getelementptr inbounds %struct.GPR, %struct.GPR* %6336, i32 0, i32 33
  %6338 = getelementptr inbounds %struct.Reg, %struct.Reg* %6337, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %6338 to i64*
  %6339 = load i64, i64* %PC.i233
  %6340 = add i64 %6339, 11
  %6341 = load i64, i64* %PC.i233
  %6342 = add i64 %6341, 6
  %6343 = load i64, i64* %PC.i233
  %6344 = add i64 %6343, 6
  store i64 %6344, i64* %PC.i233
  %6345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6346 = load i8, i8* %6345, align 1
  %6347 = icmp eq i8 %6346, 0
  %6348 = zext i1 %6347 to i8
  store i8 %6348, i8* %BRANCH_TAKEN, align 1
  %6349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6350 = select i1 %6347, i64 %6340, i64 %6342
  store i64 %6350, i64* %6349, align 8
  store %struct.Memory* %loadMem_43823f, %struct.Memory** %MEMORY
  %loadBr_43823f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43823f = icmp eq i8 %loadBr_43823f, 1
  br i1 %cmpBr_43823f, label %block_.L_43824a, label %block_438245

block_438245:                                     ; preds = %block_.L_43823b
  %loadMem1_438245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6352 = getelementptr inbounds %struct.GPR, %struct.GPR* %6351, i32 0, i32 33
  %6353 = getelementptr inbounds %struct.Reg, %struct.Reg* %6352, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %6353 to i64*
  %6354 = load i64, i64* %PC.i232
  %6355 = add i64 %6354, 449563
  %6356 = load i64, i64* %PC.i232
  %6357 = add i64 %6356, 5
  %6358 = load i64, i64* %PC.i232
  %6359 = add i64 %6358, 5
  store i64 %6359, i64* %PC.i232
  %6360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6361 = load i64, i64* %6360, align 8
  %6362 = add i64 %6361, -8
  %6363 = inttoptr i64 %6362 to i64*
  store i64 %6357, i64* %6363
  store i64 %6362, i64* %6360, align 8
  %6364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6355, i64* %6364, align 8
  store %struct.Memory* %loadMem1_438245, %struct.Memory** %MEMORY
  %loadMem2_438245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_438245 = load i64, i64* %3
  %call2_438245 = call %struct.Memory* @sub_4a5e60.find_cuts(%struct.State* %0, i64 %loadPC_438245, %struct.Memory* %loadMem2_438245)
  store %struct.Memory* %call2_438245, %struct.Memory** %MEMORY
  br label %block_.L_43824a

block_.L_43824a:                                  ; preds = %block_438245, %block_.L_43823b
  %loadMem_43824a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6366 = getelementptr inbounds %struct.GPR, %struct.GPR* %6365, i32 0, i32 33
  %6367 = getelementptr inbounds %struct.Reg, %struct.Reg* %6366, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %6367 to i64*
  %6368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6369 = getelementptr inbounds %struct.GPR, %struct.GPR* %6368, i32 0, i32 15
  %6370 = getelementptr inbounds %struct.Reg, %struct.Reg* %6369, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %6370 to i64*
  %6371 = load i64, i64* %RBP.i231
  %6372 = sub i64 %6371, 8
  %6373 = load i64, i64* %PC.i230
  %6374 = add i64 %6373, 5
  store i64 %6374, i64* %PC.i230
  %6375 = inttoptr i64 %6372 to i64*
  %6376 = load i64, i64* %6375
  %6377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6377, align 1
  %6378 = trunc i64 %6376 to i32
  %6379 = and i32 %6378, 255
  %6380 = call i32 @llvm.ctpop.i32(i32 %6379)
  %6381 = trunc i32 %6380 to i8
  %6382 = and i8 %6381, 1
  %6383 = xor i8 %6382, 1
  %6384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6383, i8* %6384, align 1
  %6385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6385, align 1
  %6386 = icmp eq i64 %6376, 0
  %6387 = zext i1 %6386 to i8
  %6388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6387, i8* %6388, align 1
  %6389 = lshr i64 %6376, 63
  %6390 = trunc i64 %6389 to i8
  %6391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6390, i8* %6391, align 1
  %6392 = lshr i64 %6376, 63
  %6393 = xor i64 %6389, %6392
  %6394 = add i64 %6393, %6392
  %6395 = icmp eq i64 %6394, 2
  %6396 = zext i1 %6395 to i8
  %6397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6396, i8* %6397, align 1
  store %struct.Memory* %loadMem_43824a, %struct.Memory** %MEMORY
  %loadMem_43824f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6399 = getelementptr inbounds %struct.GPR, %struct.GPR* %6398, i32 0, i32 33
  %6400 = getelementptr inbounds %struct.Reg, %struct.Reg* %6399, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %6400 to i64*
  %6401 = load i64, i64* %PC.i229
  %6402 = add i64 %6401, 222
  %6403 = load i64, i64* %PC.i229
  %6404 = add i64 %6403, 6
  %6405 = load i64, i64* %PC.i229
  %6406 = add i64 %6405, 6
  store i64 %6406, i64* %PC.i229
  %6407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6408 = load i8, i8* %6407, align 1
  store i8 %6408, i8* %BRANCH_TAKEN, align 1
  %6409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6410 = icmp ne i8 %6408, 0
  %6411 = select i1 %6410, i64 %6402, i64 %6404
  store i64 %6411, i64* %6409, align 8
  store %struct.Memory* %loadMem_43824f, %struct.Memory** %MEMORY
  %loadBr_43824f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43824f = icmp eq i8 %loadBr_43824f, 1
  br i1 %cmpBr_43824f, label %block_.L_43832d, label %block_438255

block_438255:                                     ; preds = %block_.L_43824a
  %loadMem_438255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6413 = getelementptr inbounds %struct.GPR, %struct.GPR* %6412, i32 0, i32 33
  %6414 = getelementptr inbounds %struct.Reg, %struct.Reg* %6413, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %6414 to i64*
  %6415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6416 = getelementptr inbounds %struct.GPR, %struct.GPR* %6415, i32 0, i32 15
  %6417 = getelementptr inbounds %struct.Reg, %struct.Reg* %6416, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %6417 to i64*
  %6418 = load i64, i64* %RBP.i228
  %6419 = sub i64 %6418, 36
  %6420 = load i64, i64* %PC.i227
  %6421 = add i64 %6420, 7
  store i64 %6421, i64* %PC.i227
  %6422 = inttoptr i64 %6419 to i32*
  store i32 21, i32* %6422
  store %struct.Memory* %loadMem_438255, %struct.Memory** %MEMORY
  br label %block_.L_43825c

block_.L_43825c:                                  ; preds = %block_.L_43831a, %block_438255
  %loadMem_43825c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6424 = getelementptr inbounds %struct.GPR, %struct.GPR* %6423, i32 0, i32 33
  %6425 = getelementptr inbounds %struct.Reg, %struct.Reg* %6424, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %6425 to i64*
  %6426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6427 = getelementptr inbounds %struct.GPR, %struct.GPR* %6426, i32 0, i32 15
  %6428 = getelementptr inbounds %struct.Reg, %struct.Reg* %6427, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %6428 to i64*
  %6429 = load i64, i64* %RBP.i226
  %6430 = sub i64 %6429, 36
  %6431 = load i64, i64* %PC.i225
  %6432 = add i64 %6431, 7
  store i64 %6432, i64* %PC.i225
  %6433 = inttoptr i64 %6430 to i32*
  %6434 = load i32, i32* %6433
  %6435 = sub i32 %6434, 400
  %6436 = icmp ult i32 %6434, 400
  %6437 = zext i1 %6436 to i8
  %6438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6437, i8* %6438, align 1
  %6439 = and i32 %6435, 255
  %6440 = call i32 @llvm.ctpop.i32(i32 %6439)
  %6441 = trunc i32 %6440 to i8
  %6442 = and i8 %6441, 1
  %6443 = xor i8 %6442, 1
  %6444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6443, i8* %6444, align 1
  %6445 = xor i32 %6434, 400
  %6446 = xor i32 %6445, %6435
  %6447 = lshr i32 %6446, 4
  %6448 = trunc i32 %6447 to i8
  %6449 = and i8 %6448, 1
  %6450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6449, i8* %6450, align 1
  %6451 = icmp eq i32 %6435, 0
  %6452 = zext i1 %6451 to i8
  %6453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6452, i8* %6453, align 1
  %6454 = lshr i32 %6435, 31
  %6455 = trunc i32 %6454 to i8
  %6456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6455, i8* %6456, align 1
  %6457 = lshr i32 %6434, 31
  %6458 = xor i32 %6454, %6457
  %6459 = add i32 %6458, %6457
  %6460 = icmp eq i32 %6459, 2
  %6461 = zext i1 %6460 to i8
  %6462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6461, i8* %6462, align 1
  store %struct.Memory* %loadMem_43825c, %struct.Memory** %MEMORY
  %loadMem_438263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6464 = getelementptr inbounds %struct.GPR, %struct.GPR* %6463, i32 0, i32 33
  %6465 = getelementptr inbounds %struct.Reg, %struct.Reg* %6464, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %6465 to i64*
  %6466 = load i64, i64* %PC.i224
  %6467 = add i64 %6466, 197
  %6468 = load i64, i64* %PC.i224
  %6469 = add i64 %6468, 6
  %6470 = load i64, i64* %PC.i224
  %6471 = add i64 %6470, 6
  store i64 %6471, i64* %PC.i224
  %6472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6473 = load i8, i8* %6472, align 1
  %6474 = icmp ne i8 %6473, 0
  %6475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6476 = load i8, i8* %6475, align 1
  %6477 = icmp ne i8 %6476, 0
  %6478 = xor i1 %6474, %6477
  %6479 = xor i1 %6478, true
  %6480 = zext i1 %6479 to i8
  store i8 %6480, i8* %BRANCH_TAKEN, align 1
  %6481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6482 = select i1 %6478, i64 %6469, i64 %6467
  store i64 %6482, i64* %6481, align 8
  store %struct.Memory* %loadMem_438263, %struct.Memory** %MEMORY
  %loadBr_438263 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438263 = icmp eq i8 %loadBr_438263, 1
  br i1 %cmpBr_438263, label %block_.L_438328, label %block_438269

block_438269:                                     ; preds = %block_.L_43825c
  %loadMem_438269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6484 = getelementptr inbounds %struct.GPR, %struct.GPR* %6483, i32 0, i32 33
  %6485 = getelementptr inbounds %struct.Reg, %struct.Reg* %6484, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %6485 to i64*
  %6486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6487 = getelementptr inbounds %struct.GPR, %struct.GPR* %6486, i32 0, i32 1
  %6488 = getelementptr inbounds %struct.Reg, %struct.Reg* %6487, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %6488 to i64*
  %6489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6490 = getelementptr inbounds %struct.GPR, %struct.GPR* %6489, i32 0, i32 15
  %6491 = getelementptr inbounds %struct.Reg, %struct.Reg* %6490, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %6491 to i64*
  %6492 = load i64, i64* %RBP.i223
  %6493 = sub i64 %6492, 36
  %6494 = load i64, i64* %PC.i221
  %6495 = add i64 %6494, 4
  store i64 %6495, i64* %PC.i221
  %6496 = inttoptr i64 %6493 to i32*
  %6497 = load i32, i32* %6496
  %6498 = sext i32 %6497 to i64
  store i64 %6498, i64* %RAX.i222, align 8
  store %struct.Memory* %loadMem_438269, %struct.Memory** %MEMORY
  %loadMem_43826d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6500 = getelementptr inbounds %struct.GPR, %struct.GPR* %6499, i32 0, i32 33
  %6501 = getelementptr inbounds %struct.Reg, %struct.Reg* %6500, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %6501 to i64*
  %6502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6503 = getelementptr inbounds %struct.GPR, %struct.GPR* %6502, i32 0, i32 1
  %6504 = getelementptr inbounds %struct.Reg, %struct.Reg* %6503, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %6504 to i64*
  %6505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6506 = getelementptr inbounds %struct.GPR, %struct.GPR* %6505, i32 0, i32 5
  %6507 = getelementptr inbounds %struct.Reg, %struct.Reg* %6506, i32 0, i32 0
  %RCX.i220 = bitcast %union.anon* %6507 to i64*
  %6508 = load i64, i64* %RAX.i219
  %6509 = add i64 %6508, 12099168
  %6510 = load i64, i64* %PC.i218
  %6511 = add i64 %6510, 8
  store i64 %6511, i64* %PC.i218
  %6512 = inttoptr i64 %6509 to i8*
  %6513 = load i8, i8* %6512
  %6514 = zext i8 %6513 to i64
  store i64 %6514, i64* %RCX.i220, align 8
  store %struct.Memory* %loadMem_43826d, %struct.Memory** %MEMORY
  %loadMem_438275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6516 = getelementptr inbounds %struct.GPR, %struct.GPR* %6515, i32 0, i32 33
  %6517 = getelementptr inbounds %struct.Reg, %struct.Reg* %6516, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %6517 to i64*
  %6518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6519 = getelementptr inbounds %struct.GPR, %struct.GPR* %6518, i32 0, i32 5
  %6520 = getelementptr inbounds %struct.Reg, %struct.Reg* %6519, i32 0, i32 0
  %ECX.i217 = bitcast %union.anon* %6520 to i32*
  %6521 = load i32, i32* %ECX.i217
  %6522 = zext i32 %6521 to i64
  %6523 = load i64, i64* %PC.i216
  %6524 = add i64 %6523, 3
  store i64 %6524, i64* %PC.i216
  %6525 = sub i32 %6521, 3
  %6526 = icmp ult i32 %6521, 3
  %6527 = zext i1 %6526 to i8
  %6528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6527, i8* %6528, align 1
  %6529 = and i32 %6525, 255
  %6530 = call i32 @llvm.ctpop.i32(i32 %6529)
  %6531 = trunc i32 %6530 to i8
  %6532 = and i8 %6531, 1
  %6533 = xor i8 %6532, 1
  %6534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6533, i8* %6534, align 1
  %6535 = xor i64 3, %6522
  %6536 = trunc i64 %6535 to i32
  %6537 = xor i32 %6536, %6525
  %6538 = lshr i32 %6537, 4
  %6539 = trunc i32 %6538 to i8
  %6540 = and i8 %6539, 1
  %6541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6540, i8* %6541, align 1
  %6542 = icmp eq i32 %6525, 0
  %6543 = zext i1 %6542 to i8
  %6544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6543, i8* %6544, align 1
  %6545 = lshr i32 %6525, 31
  %6546 = trunc i32 %6545 to i8
  %6547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6546, i8* %6547, align 1
  %6548 = lshr i32 %6521, 31
  %6549 = xor i32 %6545, %6548
  %6550 = add i32 %6549, %6548
  %6551 = icmp eq i32 %6550, 2
  %6552 = zext i1 %6551 to i8
  %6553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6552, i8* %6553, align 1
  store %struct.Memory* %loadMem_438275, %struct.Memory** %MEMORY
  %loadMem_438278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6555 = getelementptr inbounds %struct.GPR, %struct.GPR* %6554, i32 0, i32 33
  %6556 = getelementptr inbounds %struct.Reg, %struct.Reg* %6555, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %6556 to i64*
  %6557 = load i64, i64* %PC.i215
  %6558 = add i64 %6557, 11
  %6559 = load i64, i64* %PC.i215
  %6560 = add i64 %6559, 6
  %6561 = load i64, i64* %PC.i215
  %6562 = add i64 %6561, 6
  store i64 %6562, i64* %PC.i215
  %6563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6564 = load i8, i8* %6563, align 1
  %6565 = icmp eq i8 %6564, 0
  %6566 = zext i1 %6565 to i8
  store i8 %6566, i8* %BRANCH_TAKEN, align 1
  %6567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6568 = select i1 %6565, i64 %6558, i64 %6560
  store i64 %6568, i64* %6567, align 8
  store %struct.Memory* %loadMem_438278, %struct.Memory** %MEMORY
  %loadBr_438278 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438278 = icmp eq i8 %loadBr_438278, 1
  br i1 %cmpBr_438278, label %block_.L_438283, label %block_43827e

block_43827e:                                     ; preds = %block_438269
  %loadMem_43827e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6570 = getelementptr inbounds %struct.GPR, %struct.GPR* %6569, i32 0, i32 33
  %6571 = getelementptr inbounds %struct.Reg, %struct.Reg* %6570, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %6571 to i64*
  %6572 = load i64, i64* %PC.i214
  %6573 = add i64 %6572, 156
  %6574 = load i64, i64* %PC.i214
  %6575 = add i64 %6574, 5
  store i64 %6575, i64* %PC.i214
  %6576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6573, i64* %6576, align 8
  store %struct.Memory* %loadMem_43827e, %struct.Memory** %MEMORY
  br label %block_.L_43831a

block_.L_438283:                                  ; preds = %block_438269
  %loadMem_438283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6578 = getelementptr inbounds %struct.GPR, %struct.GPR* %6577, i32 0, i32 33
  %6579 = getelementptr inbounds %struct.Reg, %struct.Reg* %6578, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %6579 to i64*
  %6580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6581 = getelementptr inbounds %struct.GPR, %struct.GPR* %6580, i32 0, i32 1
  %6582 = getelementptr inbounds %struct.Reg, %struct.Reg* %6581, i32 0, i32 0
  %RAX.i212 = bitcast %union.anon* %6582 to i64*
  %6583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6584 = getelementptr inbounds %struct.GPR, %struct.GPR* %6583, i32 0, i32 15
  %6585 = getelementptr inbounds %struct.Reg, %struct.Reg* %6584, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %6585 to i64*
  %6586 = load i64, i64* %RBP.i213
  %6587 = sub i64 %6586, 8
  %6588 = load i64, i64* %PC.i211
  %6589 = add i64 %6588, 4
  store i64 %6589, i64* %PC.i211
  %6590 = inttoptr i64 %6587 to i64*
  %6591 = load i64, i64* %6590
  store i64 %6591, i64* %RAX.i212, align 8
  store %struct.Memory* %loadMem_438283, %struct.Memory** %MEMORY
  %loadMem_438287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6593 = getelementptr inbounds %struct.GPR, %struct.GPR* %6592, i32 0, i32 33
  %6594 = getelementptr inbounds %struct.Reg, %struct.Reg* %6593, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %6594 to i64*
  %6595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6596 = getelementptr inbounds %struct.GPR, %struct.GPR* %6595, i32 0, i32 5
  %6597 = getelementptr inbounds %struct.Reg, %struct.Reg* %6596, i32 0, i32 0
  %RCX.i209 = bitcast %union.anon* %6597 to i64*
  %6598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6599 = getelementptr inbounds %struct.GPR, %struct.GPR* %6598, i32 0, i32 15
  %6600 = getelementptr inbounds %struct.Reg, %struct.Reg* %6599, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %6600 to i64*
  %6601 = load i64, i64* %RBP.i210
  %6602 = sub i64 %6601, 36
  %6603 = load i64, i64* %PC.i208
  %6604 = add i64 %6603, 4
  store i64 %6604, i64* %PC.i208
  %6605 = inttoptr i64 %6602 to i32*
  %6606 = load i32, i32* %6605
  %6607 = sext i32 %6606 to i64
  store i64 %6607, i64* %RCX.i209, align 8
  store %struct.Memory* %loadMem_438287, %struct.Memory** %MEMORY
  %loadMem_43828b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6609 = getelementptr inbounds %struct.GPR, %struct.GPR* %6608, i32 0, i32 33
  %6610 = getelementptr inbounds %struct.Reg, %struct.Reg* %6609, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %6610 to i64*
  %6611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6612 = getelementptr inbounds %struct.GPR, %struct.GPR* %6611, i32 0, i32 5
  %6613 = getelementptr inbounds %struct.Reg, %struct.Reg* %6612, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %6613 to i64*
  %6614 = load i64, i64* %RCX.i207
  %6615 = load i64, i64* %PC.i206
  %6616 = add i64 %6615, 4
  store i64 %6616, i64* %PC.i206
  %6617 = sext i64 %6614 to i128
  %6618 = and i128 %6617, -18446744073709551616
  %6619 = zext i64 %6614 to i128
  %6620 = or i128 %6618, %6619
  %6621 = mul i128 36, %6620
  %6622 = trunc i128 %6621 to i64
  store i64 %6622, i64* %RCX.i207, align 8
  %6623 = sext i64 %6622 to i128
  %6624 = icmp ne i128 %6623, %6621
  %6625 = zext i1 %6624 to i8
  %6626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6625, i8* %6626, align 1
  %6627 = trunc i128 %6621 to i32
  %6628 = and i32 %6627, 255
  %6629 = call i32 @llvm.ctpop.i32(i32 %6628)
  %6630 = trunc i32 %6629 to i8
  %6631 = and i8 %6630, 1
  %6632 = xor i8 %6631, 1
  %6633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6632, i8* %6633, align 1
  %6634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6634, align 1
  %6635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6635, align 1
  %6636 = lshr i64 %6622, 63
  %6637 = trunc i64 %6636 to i8
  %6638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6637, i8* %6638, align 1
  %6639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6625, i8* %6639, align 1
  store %struct.Memory* %loadMem_43828b, %struct.Memory** %MEMORY
  %loadMem_43828f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6641 = getelementptr inbounds %struct.GPR, %struct.GPR* %6640, i32 0, i32 33
  %6642 = getelementptr inbounds %struct.Reg, %struct.Reg* %6641, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %6642 to i64*
  %6643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6644 = getelementptr inbounds %struct.GPR, %struct.GPR* %6643, i32 0, i32 1
  %6645 = getelementptr inbounds %struct.Reg, %struct.Reg* %6644, i32 0, i32 0
  %RAX.i204 = bitcast %union.anon* %6645 to i64*
  %6646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6647 = getelementptr inbounds %struct.GPR, %struct.GPR* %6646, i32 0, i32 5
  %6648 = getelementptr inbounds %struct.Reg, %struct.Reg* %6647, i32 0, i32 0
  %RCX.i205 = bitcast %union.anon* %6648 to i64*
  %6649 = load i64, i64* %RAX.i204
  %6650 = load i64, i64* %RCX.i205
  %6651 = load i64, i64* %PC.i203
  %6652 = add i64 %6651, 3
  store i64 %6652, i64* %PC.i203
  %6653 = add i64 %6650, %6649
  store i64 %6653, i64* %RAX.i204, align 8
  %6654 = icmp ult i64 %6653, %6649
  %6655 = icmp ult i64 %6653, %6650
  %6656 = or i1 %6654, %6655
  %6657 = zext i1 %6656 to i8
  %6658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6657, i8* %6658, align 1
  %6659 = trunc i64 %6653 to i32
  %6660 = and i32 %6659, 255
  %6661 = call i32 @llvm.ctpop.i32(i32 %6660)
  %6662 = trunc i32 %6661 to i8
  %6663 = and i8 %6662, 1
  %6664 = xor i8 %6663, 1
  %6665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6664, i8* %6665, align 1
  %6666 = xor i64 %6650, %6649
  %6667 = xor i64 %6666, %6653
  %6668 = lshr i64 %6667, 4
  %6669 = trunc i64 %6668 to i8
  %6670 = and i8 %6669, 1
  %6671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6670, i8* %6671, align 1
  %6672 = icmp eq i64 %6653, 0
  %6673 = zext i1 %6672 to i8
  %6674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6673, i8* %6674, align 1
  %6675 = lshr i64 %6653, 63
  %6676 = trunc i64 %6675 to i8
  %6677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6676, i8* %6677, align 1
  %6678 = lshr i64 %6649, 63
  %6679 = lshr i64 %6650, 63
  %6680 = xor i64 %6675, %6678
  %6681 = xor i64 %6675, %6679
  %6682 = add i64 %6680, %6681
  %6683 = icmp eq i64 %6682, 2
  %6684 = zext i1 %6683 to i8
  %6685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6684, i8* %6685, align 1
  store %struct.Memory* %loadMem_43828f, %struct.Memory** %MEMORY
  %loadMem_438292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6687 = getelementptr inbounds %struct.GPR, %struct.GPR* %6686, i32 0, i32 33
  %6688 = getelementptr inbounds %struct.Reg, %struct.Reg* %6687, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %6688 to i64*
  %6689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6690 = getelementptr inbounds %struct.GPR, %struct.GPR* %6689, i32 0, i32 1
  %6691 = getelementptr inbounds %struct.Reg, %struct.Reg* %6690, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %6691 to i64*
  %6692 = load i64, i64* %RAX.i202
  %6693 = add i64 %6692, 12
  %6694 = load i64, i64* %PC.i201
  %6695 = add i64 %6694, 4
  store i64 %6695, i64* %PC.i201
  %6696 = inttoptr i64 %6693 to i32*
  %6697 = load i32, i32* %6696
  %6698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6698, align 1
  %6699 = and i32 %6697, 255
  %6700 = call i32 @llvm.ctpop.i32(i32 %6699)
  %6701 = trunc i32 %6700 to i8
  %6702 = and i8 %6701, 1
  %6703 = xor i8 %6702, 1
  %6704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6703, i8* %6704, align 1
  %6705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6705, align 1
  %6706 = icmp eq i32 %6697, 0
  %6707 = zext i1 %6706 to i8
  %6708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6707, i8* %6708, align 1
  %6709 = lshr i32 %6697, 31
  %6710 = trunc i32 %6709 to i8
  %6711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6710, i8* %6711, align 1
  %6712 = lshr i32 %6697, 31
  %6713 = xor i32 %6709, %6712
  %6714 = add i32 %6713, %6712
  %6715 = icmp eq i32 %6714, 2
  %6716 = zext i1 %6715 to i8
  %6717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6716, i8* %6717, align 1
  store %struct.Memory* %loadMem_438292, %struct.Memory** %MEMORY
  %loadMem_438296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6719 = getelementptr inbounds %struct.GPR, %struct.GPR* %6718, i32 0, i32 33
  %6720 = getelementptr inbounds %struct.Reg, %struct.Reg* %6719, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %6720 to i64*
  %6721 = load i64, i64* %PC.i200
  %6722 = add i64 %6721, 127
  %6723 = load i64, i64* %PC.i200
  %6724 = add i64 %6723, 6
  %6725 = load i64, i64* %PC.i200
  %6726 = add i64 %6725, 6
  store i64 %6726, i64* %PC.i200
  %6727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6728 = load i8, i8* %6727, align 1
  %6729 = icmp eq i8 %6728, 0
  %6730 = zext i1 %6729 to i8
  store i8 %6730, i8* %BRANCH_TAKEN, align 1
  %6731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6732 = select i1 %6729, i64 %6722, i64 %6724
  store i64 %6732, i64* %6731, align 8
  store %struct.Memory* %loadMem_438296, %struct.Memory** %MEMORY
  %loadBr_438296 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438296 = icmp eq i8 %loadBr_438296, 1
  br i1 %cmpBr_438296, label %block_.L_438315, label %block_43829c

block_43829c:                                     ; preds = %block_.L_438283
  %loadMem_43829c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6734 = getelementptr inbounds %struct.GPR, %struct.GPR* %6733, i32 0, i32 33
  %6735 = getelementptr inbounds %struct.Reg, %struct.Reg* %6734, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %6735 to i64*
  %6736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6737 = getelementptr inbounds %struct.GPR, %struct.GPR* %6736, i32 0, i32 1
  %6738 = getelementptr inbounds %struct.Reg, %struct.Reg* %6737, i32 0, i32 0
  %RAX.i198 = bitcast %union.anon* %6738 to i64*
  %6739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6740 = getelementptr inbounds %struct.GPR, %struct.GPR* %6739, i32 0, i32 15
  %6741 = getelementptr inbounds %struct.Reg, %struct.Reg* %6740, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %6741 to i64*
  %6742 = load i64, i64* %RBP.i199
  %6743 = sub i64 %6742, 8
  %6744 = load i64, i64* %PC.i197
  %6745 = add i64 %6744, 4
  store i64 %6745, i64* %PC.i197
  %6746 = inttoptr i64 %6743 to i64*
  %6747 = load i64, i64* %6746
  store i64 %6747, i64* %RAX.i198, align 8
  store %struct.Memory* %loadMem_43829c, %struct.Memory** %MEMORY
  %loadMem_4382a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6749 = getelementptr inbounds %struct.GPR, %struct.GPR* %6748, i32 0, i32 33
  %6750 = getelementptr inbounds %struct.Reg, %struct.Reg* %6749, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %6750 to i64*
  %6751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6752 = getelementptr inbounds %struct.GPR, %struct.GPR* %6751, i32 0, i32 5
  %6753 = getelementptr inbounds %struct.Reg, %struct.Reg* %6752, i32 0, i32 0
  %RCX.i195 = bitcast %union.anon* %6753 to i64*
  %6754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6755 = getelementptr inbounds %struct.GPR, %struct.GPR* %6754, i32 0, i32 15
  %6756 = getelementptr inbounds %struct.Reg, %struct.Reg* %6755, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %6756 to i64*
  %6757 = load i64, i64* %RBP.i196
  %6758 = sub i64 %6757, 36
  %6759 = load i64, i64* %PC.i194
  %6760 = add i64 %6759, 4
  store i64 %6760, i64* %PC.i194
  %6761 = inttoptr i64 %6758 to i32*
  %6762 = load i32, i32* %6761
  %6763 = sext i32 %6762 to i64
  store i64 %6763, i64* %RCX.i195, align 8
  store %struct.Memory* %loadMem_4382a0, %struct.Memory** %MEMORY
  %loadMem_4382a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6765 = getelementptr inbounds %struct.GPR, %struct.GPR* %6764, i32 0, i32 33
  %6766 = getelementptr inbounds %struct.Reg, %struct.Reg* %6765, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %6766 to i64*
  %6767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6768 = getelementptr inbounds %struct.GPR, %struct.GPR* %6767, i32 0, i32 5
  %6769 = getelementptr inbounds %struct.Reg, %struct.Reg* %6768, i32 0, i32 0
  %RCX.i193 = bitcast %union.anon* %6769 to i64*
  %6770 = load i64, i64* %RCX.i193
  %6771 = load i64, i64* %PC.i192
  %6772 = add i64 %6771, 4
  store i64 %6772, i64* %PC.i192
  %6773 = sext i64 %6770 to i128
  %6774 = and i128 %6773, -18446744073709551616
  %6775 = zext i64 %6770 to i128
  %6776 = or i128 %6774, %6775
  %6777 = mul i128 36, %6776
  %6778 = trunc i128 %6777 to i64
  store i64 %6778, i64* %RCX.i193, align 8
  %6779 = sext i64 %6778 to i128
  %6780 = icmp ne i128 %6779, %6777
  %6781 = zext i1 %6780 to i8
  %6782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6781, i8* %6782, align 1
  %6783 = trunc i128 %6777 to i32
  %6784 = and i32 %6783, 255
  %6785 = call i32 @llvm.ctpop.i32(i32 %6784)
  %6786 = trunc i32 %6785 to i8
  %6787 = and i8 %6786, 1
  %6788 = xor i8 %6787, 1
  %6789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6788, i8* %6789, align 1
  %6790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6790, align 1
  %6791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6791, align 1
  %6792 = lshr i64 %6778, 63
  %6793 = trunc i64 %6792 to i8
  %6794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6793, i8* %6794, align 1
  %6795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6781, i8* %6795, align 1
  store %struct.Memory* %loadMem_4382a4, %struct.Memory** %MEMORY
  %loadMem_4382a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6797 = getelementptr inbounds %struct.GPR, %struct.GPR* %6796, i32 0, i32 33
  %6798 = getelementptr inbounds %struct.Reg, %struct.Reg* %6797, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %6798 to i64*
  %6799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6800 = getelementptr inbounds %struct.GPR, %struct.GPR* %6799, i32 0, i32 1
  %6801 = getelementptr inbounds %struct.Reg, %struct.Reg* %6800, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %6801 to i64*
  %6802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6803 = getelementptr inbounds %struct.GPR, %struct.GPR* %6802, i32 0, i32 5
  %6804 = getelementptr inbounds %struct.Reg, %struct.Reg* %6803, i32 0, i32 0
  %RCX.i191 = bitcast %union.anon* %6804 to i64*
  %6805 = load i64, i64* %RAX.i190
  %6806 = load i64, i64* %RCX.i191
  %6807 = load i64, i64* %PC.i189
  %6808 = add i64 %6807, 3
  store i64 %6808, i64* %PC.i189
  %6809 = add i64 %6806, %6805
  store i64 %6809, i64* %RAX.i190, align 8
  %6810 = icmp ult i64 %6809, %6805
  %6811 = icmp ult i64 %6809, %6806
  %6812 = or i1 %6810, %6811
  %6813 = zext i1 %6812 to i8
  %6814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6813, i8* %6814, align 1
  %6815 = trunc i64 %6809 to i32
  %6816 = and i32 %6815, 255
  %6817 = call i32 @llvm.ctpop.i32(i32 %6816)
  %6818 = trunc i32 %6817 to i8
  %6819 = and i8 %6818, 1
  %6820 = xor i8 %6819, 1
  %6821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6820, i8* %6821, align 1
  %6822 = xor i64 %6806, %6805
  %6823 = xor i64 %6822, %6809
  %6824 = lshr i64 %6823, 4
  %6825 = trunc i64 %6824 to i8
  %6826 = and i8 %6825, 1
  %6827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6826, i8* %6827, align 1
  %6828 = icmp eq i64 %6809, 0
  %6829 = zext i1 %6828 to i8
  %6830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6829, i8* %6830, align 1
  %6831 = lshr i64 %6809, 63
  %6832 = trunc i64 %6831 to i8
  %6833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6832, i8* %6833, align 1
  %6834 = lshr i64 %6805, 63
  %6835 = lshr i64 %6806, 63
  %6836 = xor i64 %6831, %6834
  %6837 = xor i64 %6831, %6835
  %6838 = add i64 %6836, %6837
  %6839 = icmp eq i64 %6838, 2
  %6840 = zext i1 %6839 to i8
  %6841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6840, i8* %6841, align 1
  store %struct.Memory* %loadMem_4382a8, %struct.Memory** %MEMORY
  %loadMem_4382ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %6842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6843 = getelementptr inbounds %struct.GPR, %struct.GPR* %6842, i32 0, i32 33
  %6844 = getelementptr inbounds %struct.Reg, %struct.Reg* %6843, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %6844 to i64*
  %6845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6846 = getelementptr inbounds %struct.GPR, %struct.GPR* %6845, i32 0, i32 1
  %6847 = getelementptr inbounds %struct.Reg, %struct.Reg* %6846, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %6847 to i64*
  %6848 = load i64, i64* %RAX.i188
  %6849 = load i64, i64* %PC.i187
  %6850 = add i64 %6849, 3
  store i64 %6850, i64* %PC.i187
  %6851 = inttoptr i64 %6848 to i32*
  %6852 = load i32, i32* %6851
  %6853 = sub i32 %6852, 5
  %6854 = icmp ult i32 %6852, 5
  %6855 = zext i1 %6854 to i8
  %6856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6855, i8* %6856, align 1
  %6857 = and i32 %6853, 255
  %6858 = call i32 @llvm.ctpop.i32(i32 %6857)
  %6859 = trunc i32 %6858 to i8
  %6860 = and i8 %6859, 1
  %6861 = xor i8 %6860, 1
  %6862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6861, i8* %6862, align 1
  %6863 = xor i32 %6852, 5
  %6864 = xor i32 %6863, %6853
  %6865 = lshr i32 %6864, 4
  %6866 = trunc i32 %6865 to i8
  %6867 = and i8 %6866, 1
  %6868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6867, i8* %6868, align 1
  %6869 = icmp eq i32 %6853, 0
  %6870 = zext i1 %6869 to i8
  %6871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6870, i8* %6871, align 1
  %6872 = lshr i32 %6853, 31
  %6873 = trunc i32 %6872 to i8
  %6874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6873, i8* %6874, align 1
  %6875 = lshr i32 %6852, 31
  %6876 = xor i32 %6872, %6875
  %6877 = add i32 %6876, %6875
  %6878 = icmp eq i32 %6877, 2
  %6879 = zext i1 %6878 to i8
  %6880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6879, i8* %6880, align 1
  store %struct.Memory* %loadMem_4382ab, %struct.Memory** %MEMORY
  %loadMem_4382ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %6881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6882 = getelementptr inbounds %struct.GPR, %struct.GPR* %6881, i32 0, i32 33
  %6883 = getelementptr inbounds %struct.Reg, %struct.Reg* %6882, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %6883 to i64*
  %6884 = load i64, i64* %PC.i186
  %6885 = add i64 %6884, 103
  %6886 = load i64, i64* %PC.i186
  %6887 = add i64 %6886, 6
  %6888 = load i64, i64* %PC.i186
  %6889 = add i64 %6888, 6
  store i64 %6889, i64* %PC.i186
  %6890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6891 = load i8, i8* %6890, align 1
  %6892 = icmp eq i8 %6891, 0
  %6893 = zext i1 %6892 to i8
  store i8 %6893, i8* %BRANCH_TAKEN, align 1
  %6894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6895 = select i1 %6892, i64 %6885, i64 %6887
  store i64 %6895, i64* %6894, align 8
  store %struct.Memory* %loadMem_4382ae, %struct.Memory** %MEMORY
  %loadBr_4382ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4382ae = icmp eq i8 %loadBr_4382ae, 1
  br i1 %cmpBr_4382ae, label %block_.L_438315, label %block_4382b4

block_4382b4:                                     ; preds = %block_43829c
  %loadMem_4382b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6897 = getelementptr inbounds %struct.GPR, %struct.GPR* %6896, i32 0, i32 33
  %6898 = getelementptr inbounds %struct.Reg, %struct.Reg* %6897, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %6898 to i64*
  %6899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6900 = getelementptr inbounds %struct.GPR, %struct.GPR* %6899, i32 0, i32 7
  %6901 = getelementptr inbounds %struct.Reg, %struct.Reg* %6900, i32 0, i32 0
  %RDX.i184 = bitcast %union.anon* %6901 to i64*
  %6902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6903 = getelementptr inbounds %struct.GPR, %struct.GPR* %6902, i32 0, i32 15
  %6904 = getelementptr inbounds %struct.Reg, %struct.Reg* %6903, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %6904 to i64*
  %6905 = load i64, i64* %RBP.i185
  %6906 = sub i64 %6905, 3268
  %6907 = load i64, i64* %PC.i183
  %6908 = add i64 %6907, 7
  store i64 %6908, i64* %PC.i183
  store i64 %6906, i64* %RDX.i184, align 8
  store %struct.Memory* %loadMem_4382b4, %struct.Memory** %MEMORY
  %loadMem_4382bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6910 = getelementptr inbounds %struct.GPR, %struct.GPR* %6909, i32 0, i32 33
  %6911 = getelementptr inbounds %struct.Reg, %struct.Reg* %6910, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %6911 to i64*
  %6912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6913 = getelementptr inbounds %struct.GPR, %struct.GPR* %6912, i32 0, i32 5
  %6914 = getelementptr inbounds %struct.Reg, %struct.Reg* %6913, i32 0, i32 0
  %RCX.i181 = bitcast %union.anon* %6914 to i64*
  %6915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6916 = getelementptr inbounds %struct.GPR, %struct.GPR* %6915, i32 0, i32 15
  %6917 = getelementptr inbounds %struct.Reg, %struct.Reg* %6916, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %6917 to i64*
  %6918 = load i64, i64* %RBP.i182
  %6919 = sub i64 %6918, 3272
  %6920 = load i64, i64* %PC.i180
  %6921 = add i64 %6920, 7
  store i64 %6921, i64* %PC.i180
  store i64 %6919, i64* %RCX.i181, align 8
  store %struct.Memory* %loadMem_4382bb, %struct.Memory** %MEMORY
  %loadMem_4382c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6923 = getelementptr inbounds %struct.GPR, %struct.GPR* %6922, i32 0, i32 33
  %6924 = getelementptr inbounds %struct.Reg, %struct.Reg* %6923, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %6924 to i64*
  %6925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6926 = getelementptr inbounds %struct.GPR, %struct.GPR* %6925, i32 0, i32 15
  %6927 = getelementptr inbounds %struct.Reg, %struct.Reg* %6926, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %6927 to i64*
  %6928 = load i64, i64* %RBP.i179
  %6929 = sub i64 %6928, 3268
  %6930 = load i64, i64* %PC.i178
  %6931 = add i64 %6930, 10
  store i64 %6931, i64* %PC.i178
  %6932 = inttoptr i64 %6929 to i32*
  store i32 0, i32* %6932
  store %struct.Memory* %loadMem_4382c2, %struct.Memory** %MEMORY
  %loadMem_4382cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6934 = getelementptr inbounds %struct.GPR, %struct.GPR* %6933, i32 0, i32 33
  %6935 = getelementptr inbounds %struct.Reg, %struct.Reg* %6934, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %6935 to i64*
  %6936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6937 = getelementptr inbounds %struct.GPR, %struct.GPR* %6936, i32 0, i32 15
  %6938 = getelementptr inbounds %struct.Reg, %struct.Reg* %6937, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %6938 to i64*
  %6939 = load i64, i64* %RBP.i177
  %6940 = sub i64 %6939, 3272
  %6941 = load i64, i64* %PC.i176
  %6942 = add i64 %6941, 10
  store i64 %6942, i64* %PC.i176
  %6943 = inttoptr i64 %6940 to i32*
  store i32 0, i32* %6943
  store %struct.Memory* %loadMem_4382cc, %struct.Memory** %MEMORY
  %loadMem_4382d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6945 = getelementptr inbounds %struct.GPR, %struct.GPR* %6944, i32 0, i32 33
  %6946 = getelementptr inbounds %struct.Reg, %struct.Reg* %6945, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %6946 to i64*
  %6947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6948 = getelementptr inbounds %struct.GPR, %struct.GPR* %6947, i32 0, i32 11
  %6949 = getelementptr inbounds %struct.Reg, %struct.Reg* %6948, i32 0, i32 0
  %RDI.i174 = bitcast %union.anon* %6949 to i64*
  %6950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6951 = getelementptr inbounds %struct.GPR, %struct.GPR* %6950, i32 0, i32 15
  %6952 = getelementptr inbounds %struct.Reg, %struct.Reg* %6951, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %6952 to i64*
  %6953 = load i64, i64* %RBP.i175
  %6954 = sub i64 %6953, 36
  %6955 = load i64, i64* %PC.i173
  %6956 = add i64 %6955, 3
  store i64 %6956, i64* %PC.i173
  %6957 = inttoptr i64 %6954 to i32*
  %6958 = load i32, i32* %6957
  %6959 = zext i32 %6958 to i64
  store i64 %6959, i64* %RDI.i174, align 8
  store %struct.Memory* %loadMem_4382d6, %struct.Memory** %MEMORY
  %loadMem_4382d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6961 = getelementptr inbounds %struct.GPR, %struct.GPR* %6960, i32 0, i32 33
  %6962 = getelementptr inbounds %struct.Reg, %struct.Reg* %6961, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %6962 to i64*
  %6963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6964 = getelementptr inbounds %struct.GPR, %struct.GPR* %6963, i32 0, i32 9
  %6965 = getelementptr inbounds %struct.Reg, %struct.Reg* %6964, i32 0, i32 0
  %RSI.i171 = bitcast %union.anon* %6965 to i64*
  %6966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6967 = getelementptr inbounds %struct.GPR, %struct.GPR* %6966, i32 0, i32 15
  %6968 = getelementptr inbounds %struct.Reg, %struct.Reg* %6967, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %6968 to i64*
  %6969 = load i64, i64* %RBP.i172
  %6970 = sub i64 %6969, 36
  %6971 = load i64, i64* %PC.i170
  %6972 = add i64 %6971, 3
  store i64 %6972, i64* %PC.i170
  %6973 = inttoptr i64 %6970 to i32*
  %6974 = load i32, i32* %6973
  %6975 = zext i32 %6974 to i64
  store i64 %6975, i64* %RSI.i171, align 8
  store %struct.Memory* %loadMem_4382d9, %struct.Memory** %MEMORY
  %loadMem_4382dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6977 = getelementptr inbounds %struct.GPR, %struct.GPR* %6976, i32 0, i32 33
  %6978 = getelementptr inbounds %struct.Reg, %struct.Reg* %6977, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %6978 to i64*
  %6979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6980 = getelementptr inbounds %struct.GPR, %struct.GPR* %6979, i32 0, i32 15
  %6981 = getelementptr inbounds %struct.Reg, %struct.Reg* %6980, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %6981 to i64*
  %6982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6983 = getelementptr inbounds %struct.GPR, %struct.GPR* %6982, i32 0, i32 17
  %6984 = getelementptr inbounds %struct.Reg, %struct.Reg* %6983, i32 0, i32 0
  %R8.i169 = bitcast %union.anon* %6984 to i64*
  %6985 = load i64, i64* %RBP.i168
  %6986 = sub i64 %6985, 8
  %6987 = load i64, i64* %PC.i167
  %6988 = add i64 %6987, 4
  store i64 %6988, i64* %PC.i167
  %6989 = inttoptr i64 %6986 to i64*
  %6990 = load i64, i64* %6989
  store i64 %6990, i64* %R8.i169, align 8
  store %struct.Memory* %loadMem_4382dc, %struct.Memory** %MEMORY
  %loadMem1_4382e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6992 = getelementptr inbounds %struct.GPR, %struct.GPR* %6991, i32 0, i32 33
  %6993 = getelementptr inbounds %struct.Reg, %struct.Reg* %6992, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %6993 to i64*
  %6994 = load i64, i64* %PC.i166
  %6995 = add i64 %6994, 2496
  %6996 = load i64, i64* %PC.i166
  %6997 = add i64 %6996, 5
  %6998 = load i64, i64* %PC.i166
  %6999 = add i64 %6998, 5
  store i64 %6999, i64* %PC.i166
  %7000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7001 = load i64, i64* %7000, align 8
  %7002 = add i64 %7001, -8
  %7003 = inttoptr i64 %7002 to i64*
  store i64 %6997, i64* %7003
  store i64 %7002, i64* %7000, align 8
  %7004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6995, i64* %7004, align 8
  store %struct.Memory* %loadMem1_4382e0, %struct.Memory** %MEMORY
  %loadMem2_4382e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4382e0 = load i64, i64* %3
  %call2_4382e0 = call %struct.Memory* @sub_438ca0.originate_eye(%struct.State* %0, i64 %loadPC_4382e0, %struct.Memory* %loadMem2_4382e0)
  store %struct.Memory* %call2_4382e0, %struct.Memory** %MEMORY
  %loadMem_4382e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7006 = getelementptr inbounds %struct.GPR, %struct.GPR* %7005, i32 0, i32 33
  %7007 = getelementptr inbounds %struct.Reg, %struct.Reg* %7006, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %7007 to i64*
  %7008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7009 = getelementptr inbounds %struct.GPR, %struct.GPR* %7008, i32 0, i32 9
  %7010 = getelementptr inbounds %struct.Reg, %struct.Reg* %7009, i32 0, i32 0
  %RSI.i164 = bitcast %union.anon* %7010 to i64*
  %7011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7012 = getelementptr inbounds %struct.GPR, %struct.GPR* %7011, i32 0, i32 15
  %7013 = getelementptr inbounds %struct.Reg, %struct.Reg* %7012, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %7013 to i64*
  %7014 = load i64, i64* %RBP.i165
  %7015 = sub i64 %7014, 3268
  %7016 = load i64, i64* %PC.i163
  %7017 = add i64 %7016, 6
  store i64 %7017, i64* %PC.i163
  %7018 = inttoptr i64 %7015 to i32*
  %7019 = load i32, i32* %7018
  %7020 = zext i32 %7019 to i64
  store i64 %7020, i64* %RSI.i164, align 8
  store %struct.Memory* %loadMem_4382e5, %struct.Memory** %MEMORY
  %loadMem_4382eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7022 = getelementptr inbounds %struct.GPR, %struct.GPR* %7021, i32 0, i32 33
  %7023 = getelementptr inbounds %struct.Reg, %struct.Reg* %7022, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %7023 to i64*
  %7024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7025 = getelementptr inbounds %struct.GPR, %struct.GPR* %7024, i32 0, i32 5
  %7026 = getelementptr inbounds %struct.Reg, %struct.Reg* %7025, i32 0, i32 0
  %RCX.i161 = bitcast %union.anon* %7026 to i64*
  %7027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7028 = getelementptr inbounds %struct.GPR, %struct.GPR* %7027, i32 0, i32 15
  %7029 = getelementptr inbounds %struct.Reg, %struct.Reg* %7028, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %7029 to i64*
  %7030 = load i64, i64* %RBP.i162
  %7031 = sub i64 %7030, 8
  %7032 = load i64, i64* %PC.i160
  %7033 = add i64 %7032, 4
  store i64 %7033, i64* %PC.i160
  %7034 = inttoptr i64 %7031 to i64*
  %7035 = load i64, i64* %7034
  store i64 %7035, i64* %RCX.i161, align 8
  store %struct.Memory* %loadMem_4382eb, %struct.Memory** %MEMORY
  %loadMem_4382ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %7036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7037 = getelementptr inbounds %struct.GPR, %struct.GPR* %7036, i32 0, i32 33
  %7038 = getelementptr inbounds %struct.Reg, %struct.Reg* %7037, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %7038 to i64*
  %7039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7040 = getelementptr inbounds %struct.GPR, %struct.GPR* %7039, i32 0, i32 7
  %7041 = getelementptr inbounds %struct.Reg, %struct.Reg* %7040, i32 0, i32 0
  %RDX.i158 = bitcast %union.anon* %7041 to i64*
  %7042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7043 = getelementptr inbounds %struct.GPR, %struct.GPR* %7042, i32 0, i32 15
  %7044 = getelementptr inbounds %struct.Reg, %struct.Reg* %7043, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %7044 to i64*
  %7045 = load i64, i64* %RBP.i159
  %7046 = sub i64 %7045, 36
  %7047 = load i64, i64* %PC.i157
  %7048 = add i64 %7047, 4
  store i64 %7048, i64* %PC.i157
  %7049 = inttoptr i64 %7046 to i32*
  %7050 = load i32, i32* %7049
  %7051 = sext i32 %7050 to i64
  store i64 %7051, i64* %RDX.i158, align 8
  store %struct.Memory* %loadMem_4382ef, %struct.Memory** %MEMORY
  %loadMem_4382f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7053 = getelementptr inbounds %struct.GPR, %struct.GPR* %7052, i32 0, i32 33
  %7054 = getelementptr inbounds %struct.Reg, %struct.Reg* %7053, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %7054 to i64*
  %7055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7056 = getelementptr inbounds %struct.GPR, %struct.GPR* %7055, i32 0, i32 7
  %7057 = getelementptr inbounds %struct.Reg, %struct.Reg* %7056, i32 0, i32 0
  %RDX.i156 = bitcast %union.anon* %7057 to i64*
  %7058 = load i64, i64* %RDX.i156
  %7059 = load i64, i64* %PC.i155
  %7060 = add i64 %7059, 4
  store i64 %7060, i64* %PC.i155
  %7061 = sext i64 %7058 to i128
  %7062 = and i128 %7061, -18446744073709551616
  %7063 = zext i64 %7058 to i128
  %7064 = or i128 %7062, %7063
  %7065 = mul i128 36, %7064
  %7066 = trunc i128 %7065 to i64
  store i64 %7066, i64* %RDX.i156, align 8
  %7067 = sext i64 %7066 to i128
  %7068 = icmp ne i128 %7067, %7065
  %7069 = zext i1 %7068 to i8
  %7070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7069, i8* %7070, align 1
  %7071 = trunc i128 %7065 to i32
  %7072 = and i32 %7071, 255
  %7073 = call i32 @llvm.ctpop.i32(i32 %7072)
  %7074 = trunc i32 %7073 to i8
  %7075 = and i8 %7074, 1
  %7076 = xor i8 %7075, 1
  %7077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7076, i8* %7077, align 1
  %7078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7078, align 1
  %7079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7079, align 1
  %7080 = lshr i64 %7066, 63
  %7081 = trunc i64 %7080 to i8
  %7082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7081, i8* %7082, align 1
  %7083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7069, i8* %7083, align 1
  store %struct.Memory* %loadMem_4382f3, %struct.Memory** %MEMORY
  %loadMem_4382f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7085 = getelementptr inbounds %struct.GPR, %struct.GPR* %7084, i32 0, i32 33
  %7086 = getelementptr inbounds %struct.Reg, %struct.Reg* %7085, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %7086 to i64*
  %7087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7088 = getelementptr inbounds %struct.GPR, %struct.GPR* %7087, i32 0, i32 5
  %7089 = getelementptr inbounds %struct.Reg, %struct.Reg* %7088, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %7089 to i64*
  %7090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7091 = getelementptr inbounds %struct.GPR, %struct.GPR* %7090, i32 0, i32 7
  %7092 = getelementptr inbounds %struct.Reg, %struct.Reg* %7091, i32 0, i32 0
  %RDX.i154 = bitcast %union.anon* %7092 to i64*
  %7093 = load i64, i64* %RCX.i153
  %7094 = load i64, i64* %RDX.i154
  %7095 = load i64, i64* %PC.i152
  %7096 = add i64 %7095, 3
  store i64 %7096, i64* %PC.i152
  %7097 = add i64 %7094, %7093
  store i64 %7097, i64* %RCX.i153, align 8
  %7098 = icmp ult i64 %7097, %7093
  %7099 = icmp ult i64 %7097, %7094
  %7100 = or i1 %7098, %7099
  %7101 = zext i1 %7100 to i8
  %7102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7101, i8* %7102, align 1
  %7103 = trunc i64 %7097 to i32
  %7104 = and i32 %7103, 255
  %7105 = call i32 @llvm.ctpop.i32(i32 %7104)
  %7106 = trunc i32 %7105 to i8
  %7107 = and i8 %7106, 1
  %7108 = xor i8 %7107, 1
  %7109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7108, i8* %7109, align 1
  %7110 = xor i64 %7094, %7093
  %7111 = xor i64 %7110, %7097
  %7112 = lshr i64 %7111, 4
  %7113 = trunc i64 %7112 to i8
  %7114 = and i8 %7113, 1
  %7115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7114, i8* %7115, align 1
  %7116 = icmp eq i64 %7097, 0
  %7117 = zext i1 %7116 to i8
  %7118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7117, i8* %7118, align 1
  %7119 = lshr i64 %7097, 63
  %7120 = trunc i64 %7119 to i8
  %7121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7120, i8* %7121, align 1
  %7122 = lshr i64 %7093, 63
  %7123 = lshr i64 %7094, 63
  %7124 = xor i64 %7119, %7122
  %7125 = xor i64 %7119, %7123
  %7126 = add i64 %7124, %7125
  %7127 = icmp eq i64 %7126, 2
  %7128 = zext i1 %7127 to i8
  %7129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7128, i8* %7129, align 1
  store %struct.Memory* %loadMem_4382f7, %struct.Memory** %MEMORY
  %loadMem_4382fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %7130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7131 = getelementptr inbounds %struct.GPR, %struct.GPR* %7130, i32 0, i32 33
  %7132 = getelementptr inbounds %struct.Reg, %struct.Reg* %7131, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %7132 to i64*
  %7133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7134 = getelementptr inbounds %struct.GPR, %struct.GPR* %7133, i32 0, i32 9
  %7135 = getelementptr inbounds %struct.Reg, %struct.Reg* %7134, i32 0, i32 0
  %ESI.i150 = bitcast %union.anon* %7135 to i32*
  %7136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7137 = getelementptr inbounds %struct.GPR, %struct.GPR* %7136, i32 0, i32 5
  %7138 = getelementptr inbounds %struct.Reg, %struct.Reg* %7137, i32 0, i32 0
  %RCX.i151 = bitcast %union.anon* %7138 to i64*
  %7139 = load i64, i64* %RCX.i151
  %7140 = add i64 %7139, 4
  %7141 = load i32, i32* %ESI.i150
  %7142 = zext i32 %7141 to i64
  %7143 = load i64, i64* %PC.i149
  %7144 = add i64 %7143, 3
  store i64 %7144, i64* %PC.i149
  %7145 = inttoptr i64 %7140 to i32*
  store i32 %7141, i32* %7145
  store %struct.Memory* %loadMem_4382fa, %struct.Memory** %MEMORY
  %loadMem_4382fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7147 = getelementptr inbounds %struct.GPR, %struct.GPR* %7146, i32 0, i32 33
  %7148 = getelementptr inbounds %struct.Reg, %struct.Reg* %7147, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %7148 to i64*
  %7149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7150 = getelementptr inbounds %struct.GPR, %struct.GPR* %7149, i32 0, i32 9
  %7151 = getelementptr inbounds %struct.Reg, %struct.Reg* %7150, i32 0, i32 0
  %RSI.i147 = bitcast %union.anon* %7151 to i64*
  %7152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7153 = getelementptr inbounds %struct.GPR, %struct.GPR* %7152, i32 0, i32 15
  %7154 = getelementptr inbounds %struct.Reg, %struct.Reg* %7153, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %7154 to i64*
  %7155 = load i64, i64* %RBP.i148
  %7156 = sub i64 %7155, 3272
  %7157 = load i64, i64* %PC.i146
  %7158 = add i64 %7157, 6
  store i64 %7158, i64* %PC.i146
  %7159 = inttoptr i64 %7156 to i32*
  %7160 = load i32, i32* %7159
  %7161 = zext i32 %7160 to i64
  store i64 %7161, i64* %RSI.i147, align 8
  store %struct.Memory* %loadMem_4382fd, %struct.Memory** %MEMORY
  %loadMem_438303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7163 = getelementptr inbounds %struct.GPR, %struct.GPR* %7162, i32 0, i32 33
  %7164 = getelementptr inbounds %struct.Reg, %struct.Reg* %7163, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %7164 to i64*
  %7165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7166 = getelementptr inbounds %struct.GPR, %struct.GPR* %7165, i32 0, i32 5
  %7167 = getelementptr inbounds %struct.Reg, %struct.Reg* %7166, i32 0, i32 0
  %RCX.i144 = bitcast %union.anon* %7167 to i64*
  %7168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7169 = getelementptr inbounds %struct.GPR, %struct.GPR* %7168, i32 0, i32 15
  %7170 = getelementptr inbounds %struct.Reg, %struct.Reg* %7169, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %7170 to i64*
  %7171 = load i64, i64* %RBP.i145
  %7172 = sub i64 %7171, 8
  %7173 = load i64, i64* %PC.i143
  %7174 = add i64 %7173, 4
  store i64 %7174, i64* %PC.i143
  %7175 = inttoptr i64 %7172 to i64*
  %7176 = load i64, i64* %7175
  store i64 %7176, i64* %RCX.i144, align 8
  store %struct.Memory* %loadMem_438303, %struct.Memory** %MEMORY
  %loadMem_438307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7178 = getelementptr inbounds %struct.GPR, %struct.GPR* %7177, i32 0, i32 33
  %7179 = getelementptr inbounds %struct.Reg, %struct.Reg* %7178, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %7179 to i64*
  %7180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7181 = getelementptr inbounds %struct.GPR, %struct.GPR* %7180, i32 0, i32 7
  %7182 = getelementptr inbounds %struct.Reg, %struct.Reg* %7181, i32 0, i32 0
  %RDX.i141 = bitcast %union.anon* %7182 to i64*
  %7183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7184 = getelementptr inbounds %struct.GPR, %struct.GPR* %7183, i32 0, i32 15
  %7185 = getelementptr inbounds %struct.Reg, %struct.Reg* %7184, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %7185 to i64*
  %7186 = load i64, i64* %RBP.i142
  %7187 = sub i64 %7186, 36
  %7188 = load i64, i64* %PC.i140
  %7189 = add i64 %7188, 4
  store i64 %7189, i64* %PC.i140
  %7190 = inttoptr i64 %7187 to i32*
  %7191 = load i32, i32* %7190
  %7192 = sext i32 %7191 to i64
  store i64 %7192, i64* %RDX.i141, align 8
  store %struct.Memory* %loadMem_438307, %struct.Memory** %MEMORY
  %loadMem_43830b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7194 = getelementptr inbounds %struct.GPR, %struct.GPR* %7193, i32 0, i32 33
  %7195 = getelementptr inbounds %struct.Reg, %struct.Reg* %7194, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %7195 to i64*
  %7196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7197 = getelementptr inbounds %struct.GPR, %struct.GPR* %7196, i32 0, i32 7
  %7198 = getelementptr inbounds %struct.Reg, %struct.Reg* %7197, i32 0, i32 0
  %RDX.i139 = bitcast %union.anon* %7198 to i64*
  %7199 = load i64, i64* %RDX.i139
  %7200 = load i64, i64* %PC.i138
  %7201 = add i64 %7200, 4
  store i64 %7201, i64* %PC.i138
  %7202 = sext i64 %7199 to i128
  %7203 = and i128 %7202, -18446744073709551616
  %7204 = zext i64 %7199 to i128
  %7205 = or i128 %7203, %7204
  %7206 = mul i128 36, %7205
  %7207 = trunc i128 %7206 to i64
  store i64 %7207, i64* %RDX.i139, align 8
  %7208 = sext i64 %7207 to i128
  %7209 = icmp ne i128 %7208, %7206
  %7210 = zext i1 %7209 to i8
  %7211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7210, i8* %7211, align 1
  %7212 = trunc i128 %7206 to i32
  %7213 = and i32 %7212, 255
  %7214 = call i32 @llvm.ctpop.i32(i32 %7213)
  %7215 = trunc i32 %7214 to i8
  %7216 = and i8 %7215, 1
  %7217 = xor i8 %7216, 1
  %7218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7217, i8* %7218, align 1
  %7219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7219, align 1
  %7220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7220, align 1
  %7221 = lshr i64 %7207, 63
  %7222 = trunc i64 %7221 to i8
  %7223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7222, i8* %7223, align 1
  %7224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7210, i8* %7224, align 1
  store %struct.Memory* %loadMem_43830b, %struct.Memory** %MEMORY
  %loadMem_43830f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7226 = getelementptr inbounds %struct.GPR, %struct.GPR* %7225, i32 0, i32 33
  %7227 = getelementptr inbounds %struct.Reg, %struct.Reg* %7226, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %7227 to i64*
  %7228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7229 = getelementptr inbounds %struct.GPR, %struct.GPR* %7228, i32 0, i32 5
  %7230 = getelementptr inbounds %struct.Reg, %struct.Reg* %7229, i32 0, i32 0
  %RCX.i136 = bitcast %union.anon* %7230 to i64*
  %7231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7232 = getelementptr inbounds %struct.GPR, %struct.GPR* %7231, i32 0, i32 7
  %7233 = getelementptr inbounds %struct.Reg, %struct.Reg* %7232, i32 0, i32 0
  %RDX.i137 = bitcast %union.anon* %7233 to i64*
  %7234 = load i64, i64* %RCX.i136
  %7235 = load i64, i64* %RDX.i137
  %7236 = load i64, i64* %PC.i135
  %7237 = add i64 %7236, 3
  store i64 %7237, i64* %PC.i135
  %7238 = add i64 %7235, %7234
  store i64 %7238, i64* %RCX.i136, align 8
  %7239 = icmp ult i64 %7238, %7234
  %7240 = icmp ult i64 %7238, %7235
  %7241 = or i1 %7239, %7240
  %7242 = zext i1 %7241 to i8
  %7243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7242, i8* %7243, align 1
  %7244 = trunc i64 %7238 to i32
  %7245 = and i32 %7244, 255
  %7246 = call i32 @llvm.ctpop.i32(i32 %7245)
  %7247 = trunc i32 %7246 to i8
  %7248 = and i8 %7247, 1
  %7249 = xor i8 %7248, 1
  %7250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7249, i8* %7250, align 1
  %7251 = xor i64 %7235, %7234
  %7252 = xor i64 %7251, %7238
  %7253 = lshr i64 %7252, 4
  %7254 = trunc i64 %7253 to i8
  %7255 = and i8 %7254, 1
  %7256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7255, i8* %7256, align 1
  %7257 = icmp eq i64 %7238, 0
  %7258 = zext i1 %7257 to i8
  %7259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7258, i8* %7259, align 1
  %7260 = lshr i64 %7238, 63
  %7261 = trunc i64 %7260 to i8
  %7262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7261, i8* %7262, align 1
  %7263 = lshr i64 %7234, 63
  %7264 = lshr i64 %7235, 63
  %7265 = xor i64 %7260, %7263
  %7266 = xor i64 %7260, %7264
  %7267 = add i64 %7265, %7266
  %7268 = icmp eq i64 %7267, 2
  %7269 = zext i1 %7268 to i8
  %7270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7269, i8* %7270, align 1
  store %struct.Memory* %loadMem_43830f, %struct.Memory** %MEMORY
  %loadMem_438312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7272 = getelementptr inbounds %struct.GPR, %struct.GPR* %7271, i32 0, i32 33
  %7273 = getelementptr inbounds %struct.Reg, %struct.Reg* %7272, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %7273 to i64*
  %7274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7275 = getelementptr inbounds %struct.GPR, %struct.GPR* %7274, i32 0, i32 9
  %7276 = getelementptr inbounds %struct.Reg, %struct.Reg* %7275, i32 0, i32 0
  %ESI.i133 = bitcast %union.anon* %7276 to i32*
  %7277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7278 = getelementptr inbounds %struct.GPR, %struct.GPR* %7277, i32 0, i32 5
  %7279 = getelementptr inbounds %struct.Reg, %struct.Reg* %7278, i32 0, i32 0
  %RCX.i134 = bitcast %union.anon* %7279 to i64*
  %7280 = load i64, i64* %RCX.i134
  %7281 = add i64 %7280, 8
  %7282 = load i32, i32* %ESI.i133
  %7283 = zext i32 %7282 to i64
  %7284 = load i64, i64* %PC.i132
  %7285 = add i64 %7284, 3
  store i64 %7285, i64* %PC.i132
  %7286 = inttoptr i64 %7281 to i32*
  store i32 %7282, i32* %7286
  store %struct.Memory* %loadMem_438312, %struct.Memory** %MEMORY
  br label %block_.L_438315

block_.L_438315:                                  ; preds = %block_4382b4, %block_43829c, %block_.L_438283
  %loadMem_438315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7288 = getelementptr inbounds %struct.GPR, %struct.GPR* %7287, i32 0, i32 33
  %7289 = getelementptr inbounds %struct.Reg, %struct.Reg* %7288, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %7289 to i64*
  %7290 = load i64, i64* %PC.i131
  %7291 = add i64 %7290, 5
  %7292 = load i64, i64* %PC.i131
  %7293 = add i64 %7292, 5
  store i64 %7293, i64* %PC.i131
  %7294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7291, i64* %7294, align 8
  store %struct.Memory* %loadMem_438315, %struct.Memory** %MEMORY
  br label %block_.L_43831a

block_.L_43831a:                                  ; preds = %block_.L_438315, %block_43827e
  %loadMem_43831a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7296 = getelementptr inbounds %struct.GPR, %struct.GPR* %7295, i32 0, i32 33
  %7297 = getelementptr inbounds %struct.Reg, %struct.Reg* %7296, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %7297 to i64*
  %7298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7299 = getelementptr inbounds %struct.GPR, %struct.GPR* %7298, i32 0, i32 1
  %7300 = getelementptr inbounds %struct.Reg, %struct.Reg* %7299, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %7300 to i64*
  %7301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7302 = getelementptr inbounds %struct.GPR, %struct.GPR* %7301, i32 0, i32 15
  %7303 = getelementptr inbounds %struct.Reg, %struct.Reg* %7302, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %7303 to i64*
  %7304 = load i64, i64* %RBP.i130
  %7305 = sub i64 %7304, 36
  %7306 = load i64, i64* %PC.i128
  %7307 = add i64 %7306, 3
  store i64 %7307, i64* %PC.i128
  %7308 = inttoptr i64 %7305 to i32*
  %7309 = load i32, i32* %7308
  %7310 = zext i32 %7309 to i64
  store i64 %7310, i64* %RAX.i129, align 8
  store %struct.Memory* %loadMem_43831a, %struct.Memory** %MEMORY
  %loadMem_43831d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7312 = getelementptr inbounds %struct.GPR, %struct.GPR* %7311, i32 0, i32 33
  %7313 = getelementptr inbounds %struct.Reg, %struct.Reg* %7312, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %7313 to i64*
  %7314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7315 = getelementptr inbounds %struct.GPR, %struct.GPR* %7314, i32 0, i32 1
  %7316 = getelementptr inbounds %struct.Reg, %struct.Reg* %7315, i32 0, i32 0
  %RAX.i127 = bitcast %union.anon* %7316 to i64*
  %7317 = load i64, i64* %RAX.i127
  %7318 = load i64, i64* %PC.i126
  %7319 = add i64 %7318, 3
  store i64 %7319, i64* %PC.i126
  %7320 = trunc i64 %7317 to i32
  %7321 = add i32 1, %7320
  %7322 = zext i32 %7321 to i64
  store i64 %7322, i64* %RAX.i127, align 8
  %7323 = icmp ult i32 %7321, %7320
  %7324 = icmp ult i32 %7321, 1
  %7325 = or i1 %7323, %7324
  %7326 = zext i1 %7325 to i8
  %7327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7326, i8* %7327, align 1
  %7328 = and i32 %7321, 255
  %7329 = call i32 @llvm.ctpop.i32(i32 %7328)
  %7330 = trunc i32 %7329 to i8
  %7331 = and i8 %7330, 1
  %7332 = xor i8 %7331, 1
  %7333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7332, i8* %7333, align 1
  %7334 = xor i64 1, %7317
  %7335 = trunc i64 %7334 to i32
  %7336 = xor i32 %7335, %7321
  %7337 = lshr i32 %7336, 4
  %7338 = trunc i32 %7337 to i8
  %7339 = and i8 %7338, 1
  %7340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7339, i8* %7340, align 1
  %7341 = icmp eq i32 %7321, 0
  %7342 = zext i1 %7341 to i8
  %7343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7342, i8* %7343, align 1
  %7344 = lshr i32 %7321, 31
  %7345 = trunc i32 %7344 to i8
  %7346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7345, i8* %7346, align 1
  %7347 = lshr i32 %7320, 31
  %7348 = xor i32 %7344, %7347
  %7349 = add i32 %7348, %7344
  %7350 = icmp eq i32 %7349, 2
  %7351 = zext i1 %7350 to i8
  %7352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7351, i8* %7352, align 1
  store %struct.Memory* %loadMem_43831d, %struct.Memory** %MEMORY
  %loadMem_438320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7354 = getelementptr inbounds %struct.GPR, %struct.GPR* %7353, i32 0, i32 33
  %7355 = getelementptr inbounds %struct.Reg, %struct.Reg* %7354, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %7355 to i64*
  %7356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7357 = getelementptr inbounds %struct.GPR, %struct.GPR* %7356, i32 0, i32 1
  %7358 = getelementptr inbounds %struct.Reg, %struct.Reg* %7357, i32 0, i32 0
  %EAX.i124 = bitcast %union.anon* %7358 to i32*
  %7359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7360 = getelementptr inbounds %struct.GPR, %struct.GPR* %7359, i32 0, i32 15
  %7361 = getelementptr inbounds %struct.Reg, %struct.Reg* %7360, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %7361 to i64*
  %7362 = load i64, i64* %RBP.i125
  %7363 = sub i64 %7362, 36
  %7364 = load i32, i32* %EAX.i124
  %7365 = zext i32 %7364 to i64
  %7366 = load i64, i64* %PC.i123
  %7367 = add i64 %7366, 3
  store i64 %7367, i64* %PC.i123
  %7368 = inttoptr i64 %7363 to i32*
  store i32 %7364, i32* %7368
  store %struct.Memory* %loadMem_438320, %struct.Memory** %MEMORY
  %loadMem_438323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7370 = getelementptr inbounds %struct.GPR, %struct.GPR* %7369, i32 0, i32 33
  %7371 = getelementptr inbounds %struct.Reg, %struct.Reg* %7370, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %7371 to i64*
  %7372 = load i64, i64* %PC.i122
  %7373 = add i64 %7372, -199
  %7374 = load i64, i64* %PC.i122
  %7375 = add i64 %7374, 5
  store i64 %7375, i64* %PC.i122
  %7376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7373, i64* %7376, align 8
  store %struct.Memory* %loadMem_438323, %struct.Memory** %MEMORY
  br label %block_.L_43825c

block_.L_438328:                                  ; preds = %block_.L_43825c
  %loadMem_438328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7378 = getelementptr inbounds %struct.GPR, %struct.GPR* %7377, i32 0, i32 33
  %7379 = getelementptr inbounds %struct.Reg, %struct.Reg* %7378, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %7379 to i64*
  %7380 = load i64, i64* %PC.i121
  %7381 = add i64 %7380, 5
  %7382 = load i64, i64* %PC.i121
  %7383 = add i64 %7382, 5
  store i64 %7383, i64* %PC.i121
  %7384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7381, i64* %7384, align 8
  store %struct.Memory* %loadMem_438328, %struct.Memory** %MEMORY
  br label %block_.L_43832d

block_.L_43832d:                                  ; preds = %block_.L_438328, %block_.L_43824a
  %loadMem_43832d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7386 = getelementptr inbounds %struct.GPR, %struct.GPR* %7385, i32 0, i32 33
  %7387 = getelementptr inbounds %struct.Reg, %struct.Reg* %7386, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %7387 to i64*
  %7388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7389 = getelementptr inbounds %struct.GPR, %struct.GPR* %7388, i32 0, i32 15
  %7390 = getelementptr inbounds %struct.Reg, %struct.Reg* %7389, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %7390 to i64*
  %7391 = load i64, i64* %RBP.i120
  %7392 = sub i64 %7391, 16
  %7393 = load i64, i64* %PC.i119
  %7394 = add i64 %7393, 5
  store i64 %7394, i64* %PC.i119
  %7395 = inttoptr i64 %7392 to i64*
  %7396 = load i64, i64* %7395
  %7397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7397, align 1
  %7398 = trunc i64 %7396 to i32
  %7399 = and i32 %7398, 255
  %7400 = call i32 @llvm.ctpop.i32(i32 %7399)
  %7401 = trunc i32 %7400 to i8
  %7402 = and i8 %7401, 1
  %7403 = xor i8 %7402, 1
  %7404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7403, i8* %7404, align 1
  %7405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7405, align 1
  %7406 = icmp eq i64 %7396, 0
  %7407 = zext i1 %7406 to i8
  %7408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7407, i8* %7408, align 1
  %7409 = lshr i64 %7396, 63
  %7410 = trunc i64 %7409 to i8
  %7411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7410, i8* %7411, align 1
  %7412 = lshr i64 %7396, 63
  %7413 = xor i64 %7409, %7412
  %7414 = add i64 %7413, %7412
  %7415 = icmp eq i64 %7414, 2
  %7416 = zext i1 %7415 to i8
  %7417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7416, i8* %7417, align 1
  store %struct.Memory* %loadMem_43832d, %struct.Memory** %MEMORY
  %loadMem_438332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7419 = getelementptr inbounds %struct.GPR, %struct.GPR* %7418, i32 0, i32 33
  %7420 = getelementptr inbounds %struct.Reg, %struct.Reg* %7419, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %7420 to i64*
  %7421 = load i64, i64* %PC.i118
  %7422 = add i64 %7421, 222
  %7423 = load i64, i64* %PC.i118
  %7424 = add i64 %7423, 6
  %7425 = load i64, i64* %PC.i118
  %7426 = add i64 %7425, 6
  store i64 %7426, i64* %PC.i118
  %7427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7428 = load i8, i8* %7427, align 1
  store i8 %7428, i8* %BRANCH_TAKEN, align 1
  %7429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7430 = icmp ne i8 %7428, 0
  %7431 = select i1 %7430, i64 %7422, i64 %7424
  store i64 %7431, i64* %7429, align 8
  store %struct.Memory* %loadMem_438332, %struct.Memory** %MEMORY
  %loadBr_438332 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438332 = icmp eq i8 %loadBr_438332, 1
  br i1 %cmpBr_438332, label %block_.L_438410, label %block_438338

block_438338:                                     ; preds = %block_.L_43832d
  %loadMem_438338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7433 = getelementptr inbounds %struct.GPR, %struct.GPR* %7432, i32 0, i32 33
  %7434 = getelementptr inbounds %struct.Reg, %struct.Reg* %7433, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %7434 to i64*
  %7435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7436 = getelementptr inbounds %struct.GPR, %struct.GPR* %7435, i32 0, i32 15
  %7437 = getelementptr inbounds %struct.Reg, %struct.Reg* %7436, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %7437 to i64*
  %7438 = load i64, i64* %RBP.i117
  %7439 = sub i64 %7438, 36
  %7440 = load i64, i64* %PC.i116
  %7441 = add i64 %7440, 7
  store i64 %7441, i64* %PC.i116
  %7442 = inttoptr i64 %7439 to i32*
  store i32 21, i32* %7442
  store %struct.Memory* %loadMem_438338, %struct.Memory** %MEMORY
  br label %block_.L_43833f

block_.L_43833f:                                  ; preds = %block_.L_4383fd, %block_438338
  %loadMem_43833f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7444 = getelementptr inbounds %struct.GPR, %struct.GPR* %7443, i32 0, i32 33
  %7445 = getelementptr inbounds %struct.Reg, %struct.Reg* %7444, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %7445 to i64*
  %7446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7447 = getelementptr inbounds %struct.GPR, %struct.GPR* %7446, i32 0, i32 15
  %7448 = getelementptr inbounds %struct.Reg, %struct.Reg* %7447, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %7448 to i64*
  %7449 = load i64, i64* %RBP.i115
  %7450 = sub i64 %7449, 36
  %7451 = load i64, i64* %PC.i114
  %7452 = add i64 %7451, 7
  store i64 %7452, i64* %PC.i114
  %7453 = inttoptr i64 %7450 to i32*
  %7454 = load i32, i32* %7453
  %7455 = sub i32 %7454, 400
  %7456 = icmp ult i32 %7454, 400
  %7457 = zext i1 %7456 to i8
  %7458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7457, i8* %7458, align 1
  %7459 = and i32 %7455, 255
  %7460 = call i32 @llvm.ctpop.i32(i32 %7459)
  %7461 = trunc i32 %7460 to i8
  %7462 = and i8 %7461, 1
  %7463 = xor i8 %7462, 1
  %7464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7463, i8* %7464, align 1
  %7465 = xor i32 %7454, 400
  %7466 = xor i32 %7465, %7455
  %7467 = lshr i32 %7466, 4
  %7468 = trunc i32 %7467 to i8
  %7469 = and i8 %7468, 1
  %7470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7469, i8* %7470, align 1
  %7471 = icmp eq i32 %7455, 0
  %7472 = zext i1 %7471 to i8
  %7473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7472, i8* %7473, align 1
  %7474 = lshr i32 %7455, 31
  %7475 = trunc i32 %7474 to i8
  %7476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7475, i8* %7476, align 1
  %7477 = lshr i32 %7454, 31
  %7478 = xor i32 %7474, %7477
  %7479 = add i32 %7478, %7477
  %7480 = icmp eq i32 %7479, 2
  %7481 = zext i1 %7480 to i8
  %7482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7481, i8* %7482, align 1
  store %struct.Memory* %loadMem_43833f, %struct.Memory** %MEMORY
  %loadMem_438346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7484 = getelementptr inbounds %struct.GPR, %struct.GPR* %7483, i32 0, i32 33
  %7485 = getelementptr inbounds %struct.Reg, %struct.Reg* %7484, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %7485 to i64*
  %7486 = load i64, i64* %PC.i113
  %7487 = add i64 %7486, 197
  %7488 = load i64, i64* %PC.i113
  %7489 = add i64 %7488, 6
  %7490 = load i64, i64* %PC.i113
  %7491 = add i64 %7490, 6
  store i64 %7491, i64* %PC.i113
  %7492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7493 = load i8, i8* %7492, align 1
  %7494 = icmp ne i8 %7493, 0
  %7495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7496 = load i8, i8* %7495, align 1
  %7497 = icmp ne i8 %7496, 0
  %7498 = xor i1 %7494, %7497
  %7499 = xor i1 %7498, true
  %7500 = zext i1 %7499 to i8
  store i8 %7500, i8* %BRANCH_TAKEN, align 1
  %7501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7502 = select i1 %7498, i64 %7489, i64 %7487
  store i64 %7502, i64* %7501, align 8
  store %struct.Memory* %loadMem_438346, %struct.Memory** %MEMORY
  %loadBr_438346 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438346 = icmp eq i8 %loadBr_438346, 1
  br i1 %cmpBr_438346, label %block_.L_43840b, label %block_43834c

block_43834c:                                     ; preds = %block_.L_43833f
  %loadMem_43834c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7504 = getelementptr inbounds %struct.GPR, %struct.GPR* %7503, i32 0, i32 33
  %7505 = getelementptr inbounds %struct.Reg, %struct.Reg* %7504, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %7505 to i64*
  %7506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7507 = getelementptr inbounds %struct.GPR, %struct.GPR* %7506, i32 0, i32 1
  %7508 = getelementptr inbounds %struct.Reg, %struct.Reg* %7507, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %7508 to i64*
  %7509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7510 = getelementptr inbounds %struct.GPR, %struct.GPR* %7509, i32 0, i32 15
  %7511 = getelementptr inbounds %struct.Reg, %struct.Reg* %7510, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %7511 to i64*
  %7512 = load i64, i64* %RBP.i112
  %7513 = sub i64 %7512, 36
  %7514 = load i64, i64* %PC.i110
  %7515 = add i64 %7514, 4
  store i64 %7515, i64* %PC.i110
  %7516 = inttoptr i64 %7513 to i32*
  %7517 = load i32, i32* %7516
  %7518 = sext i32 %7517 to i64
  store i64 %7518, i64* %RAX.i111, align 8
  store %struct.Memory* %loadMem_43834c, %struct.Memory** %MEMORY
  %loadMem_438350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7520 = getelementptr inbounds %struct.GPR, %struct.GPR* %7519, i32 0, i32 33
  %7521 = getelementptr inbounds %struct.Reg, %struct.Reg* %7520, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %7521 to i64*
  %7522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7523 = getelementptr inbounds %struct.GPR, %struct.GPR* %7522, i32 0, i32 1
  %7524 = getelementptr inbounds %struct.Reg, %struct.Reg* %7523, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %7524 to i64*
  %7525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7526 = getelementptr inbounds %struct.GPR, %struct.GPR* %7525, i32 0, i32 5
  %7527 = getelementptr inbounds %struct.Reg, %struct.Reg* %7526, i32 0, i32 0
  %RCX.i109 = bitcast %union.anon* %7527 to i64*
  %7528 = load i64, i64* %RAX.i108
  %7529 = add i64 %7528, 12099168
  %7530 = load i64, i64* %PC.i107
  %7531 = add i64 %7530, 8
  store i64 %7531, i64* %PC.i107
  %7532 = inttoptr i64 %7529 to i8*
  %7533 = load i8, i8* %7532
  %7534 = zext i8 %7533 to i64
  store i64 %7534, i64* %RCX.i109, align 8
  store %struct.Memory* %loadMem_438350, %struct.Memory** %MEMORY
  %loadMem_438358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7536 = getelementptr inbounds %struct.GPR, %struct.GPR* %7535, i32 0, i32 33
  %7537 = getelementptr inbounds %struct.Reg, %struct.Reg* %7536, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %7537 to i64*
  %7538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7539 = getelementptr inbounds %struct.GPR, %struct.GPR* %7538, i32 0, i32 5
  %7540 = getelementptr inbounds %struct.Reg, %struct.Reg* %7539, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %7540 to i32*
  %7541 = load i32, i32* %ECX.i
  %7542 = zext i32 %7541 to i64
  %7543 = load i64, i64* %PC.i106
  %7544 = add i64 %7543, 3
  store i64 %7544, i64* %PC.i106
  %7545 = sub i32 %7541, 3
  %7546 = icmp ult i32 %7541, 3
  %7547 = zext i1 %7546 to i8
  %7548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7547, i8* %7548, align 1
  %7549 = and i32 %7545, 255
  %7550 = call i32 @llvm.ctpop.i32(i32 %7549)
  %7551 = trunc i32 %7550 to i8
  %7552 = and i8 %7551, 1
  %7553 = xor i8 %7552, 1
  %7554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7553, i8* %7554, align 1
  %7555 = xor i64 3, %7542
  %7556 = trunc i64 %7555 to i32
  %7557 = xor i32 %7556, %7545
  %7558 = lshr i32 %7557, 4
  %7559 = trunc i32 %7558 to i8
  %7560 = and i8 %7559, 1
  %7561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7560, i8* %7561, align 1
  %7562 = icmp eq i32 %7545, 0
  %7563 = zext i1 %7562 to i8
  %7564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7563, i8* %7564, align 1
  %7565 = lshr i32 %7545, 31
  %7566 = trunc i32 %7565 to i8
  %7567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7566, i8* %7567, align 1
  %7568 = lshr i32 %7541, 31
  %7569 = xor i32 %7565, %7568
  %7570 = add i32 %7569, %7568
  %7571 = icmp eq i32 %7570, 2
  %7572 = zext i1 %7571 to i8
  %7573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7572, i8* %7573, align 1
  store %struct.Memory* %loadMem_438358, %struct.Memory** %MEMORY
  %loadMem_43835b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7575 = getelementptr inbounds %struct.GPR, %struct.GPR* %7574, i32 0, i32 33
  %7576 = getelementptr inbounds %struct.Reg, %struct.Reg* %7575, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %7576 to i64*
  %7577 = load i64, i64* %PC.i105
  %7578 = add i64 %7577, 11
  %7579 = load i64, i64* %PC.i105
  %7580 = add i64 %7579, 6
  %7581 = load i64, i64* %PC.i105
  %7582 = add i64 %7581, 6
  store i64 %7582, i64* %PC.i105
  %7583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7584 = load i8, i8* %7583, align 1
  %7585 = icmp eq i8 %7584, 0
  %7586 = zext i1 %7585 to i8
  store i8 %7586, i8* %BRANCH_TAKEN, align 1
  %7587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7588 = select i1 %7585, i64 %7578, i64 %7580
  store i64 %7588, i64* %7587, align 8
  store %struct.Memory* %loadMem_43835b, %struct.Memory** %MEMORY
  %loadBr_43835b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43835b = icmp eq i8 %loadBr_43835b, 1
  br i1 %cmpBr_43835b, label %block_.L_438366, label %block_438361

block_438361:                                     ; preds = %block_43834c
  %loadMem_438361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7590 = getelementptr inbounds %struct.GPR, %struct.GPR* %7589, i32 0, i32 33
  %7591 = getelementptr inbounds %struct.Reg, %struct.Reg* %7590, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %7591 to i64*
  %7592 = load i64, i64* %PC.i104
  %7593 = add i64 %7592, 156
  %7594 = load i64, i64* %PC.i104
  %7595 = add i64 %7594, 5
  store i64 %7595, i64* %PC.i104
  %7596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7593, i64* %7596, align 8
  store %struct.Memory* %loadMem_438361, %struct.Memory** %MEMORY
  br label %block_.L_4383fd

block_.L_438366:                                  ; preds = %block_43834c
  %loadMem_438366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7598 = getelementptr inbounds %struct.GPR, %struct.GPR* %7597, i32 0, i32 33
  %7599 = getelementptr inbounds %struct.Reg, %struct.Reg* %7598, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %7599 to i64*
  %7600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7601 = getelementptr inbounds %struct.GPR, %struct.GPR* %7600, i32 0, i32 1
  %7602 = getelementptr inbounds %struct.Reg, %struct.Reg* %7601, i32 0, i32 0
  %RAX.i102 = bitcast %union.anon* %7602 to i64*
  %7603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7604 = getelementptr inbounds %struct.GPR, %struct.GPR* %7603, i32 0, i32 15
  %7605 = getelementptr inbounds %struct.Reg, %struct.Reg* %7604, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %7605 to i64*
  %7606 = load i64, i64* %RBP.i103
  %7607 = sub i64 %7606, 16
  %7608 = load i64, i64* %PC.i101
  %7609 = add i64 %7608, 4
  store i64 %7609, i64* %PC.i101
  %7610 = inttoptr i64 %7607 to i64*
  %7611 = load i64, i64* %7610
  store i64 %7611, i64* %RAX.i102, align 8
  store %struct.Memory* %loadMem_438366, %struct.Memory** %MEMORY
  %loadMem_43836a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7613 = getelementptr inbounds %struct.GPR, %struct.GPR* %7612, i32 0, i32 33
  %7614 = getelementptr inbounds %struct.Reg, %struct.Reg* %7613, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %7614 to i64*
  %7615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7616 = getelementptr inbounds %struct.GPR, %struct.GPR* %7615, i32 0, i32 5
  %7617 = getelementptr inbounds %struct.Reg, %struct.Reg* %7616, i32 0, i32 0
  %RCX.i99 = bitcast %union.anon* %7617 to i64*
  %7618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7619 = getelementptr inbounds %struct.GPR, %struct.GPR* %7618, i32 0, i32 15
  %7620 = getelementptr inbounds %struct.Reg, %struct.Reg* %7619, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %7620 to i64*
  %7621 = load i64, i64* %RBP.i100
  %7622 = sub i64 %7621, 36
  %7623 = load i64, i64* %PC.i98
  %7624 = add i64 %7623, 4
  store i64 %7624, i64* %PC.i98
  %7625 = inttoptr i64 %7622 to i32*
  %7626 = load i32, i32* %7625
  %7627 = sext i32 %7626 to i64
  store i64 %7627, i64* %RCX.i99, align 8
  store %struct.Memory* %loadMem_43836a, %struct.Memory** %MEMORY
  %loadMem_43836e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7629 = getelementptr inbounds %struct.GPR, %struct.GPR* %7628, i32 0, i32 33
  %7630 = getelementptr inbounds %struct.Reg, %struct.Reg* %7629, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %7630 to i64*
  %7631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7632 = getelementptr inbounds %struct.GPR, %struct.GPR* %7631, i32 0, i32 5
  %7633 = getelementptr inbounds %struct.Reg, %struct.Reg* %7632, i32 0, i32 0
  %RCX.i97 = bitcast %union.anon* %7633 to i64*
  %7634 = load i64, i64* %RCX.i97
  %7635 = load i64, i64* %PC.i96
  %7636 = add i64 %7635, 4
  store i64 %7636, i64* %PC.i96
  %7637 = sext i64 %7634 to i128
  %7638 = and i128 %7637, -18446744073709551616
  %7639 = zext i64 %7634 to i128
  %7640 = or i128 %7638, %7639
  %7641 = mul i128 36, %7640
  %7642 = trunc i128 %7641 to i64
  store i64 %7642, i64* %RCX.i97, align 8
  %7643 = sext i64 %7642 to i128
  %7644 = icmp ne i128 %7643, %7641
  %7645 = zext i1 %7644 to i8
  %7646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7645, i8* %7646, align 1
  %7647 = trunc i128 %7641 to i32
  %7648 = and i32 %7647, 255
  %7649 = call i32 @llvm.ctpop.i32(i32 %7648)
  %7650 = trunc i32 %7649 to i8
  %7651 = and i8 %7650, 1
  %7652 = xor i8 %7651, 1
  %7653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7652, i8* %7653, align 1
  %7654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7654, align 1
  %7655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7655, align 1
  %7656 = lshr i64 %7642, 63
  %7657 = trunc i64 %7656 to i8
  %7658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7657, i8* %7658, align 1
  %7659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7645, i8* %7659, align 1
  store %struct.Memory* %loadMem_43836e, %struct.Memory** %MEMORY
  %loadMem_438372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7661 = getelementptr inbounds %struct.GPR, %struct.GPR* %7660, i32 0, i32 33
  %7662 = getelementptr inbounds %struct.Reg, %struct.Reg* %7661, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %7662 to i64*
  %7663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7664 = getelementptr inbounds %struct.GPR, %struct.GPR* %7663, i32 0, i32 1
  %7665 = getelementptr inbounds %struct.Reg, %struct.Reg* %7664, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %7665 to i64*
  %7666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7667 = getelementptr inbounds %struct.GPR, %struct.GPR* %7666, i32 0, i32 5
  %7668 = getelementptr inbounds %struct.Reg, %struct.Reg* %7667, i32 0, i32 0
  %RCX.i95 = bitcast %union.anon* %7668 to i64*
  %7669 = load i64, i64* %RAX.i94
  %7670 = load i64, i64* %RCX.i95
  %7671 = load i64, i64* %PC.i93
  %7672 = add i64 %7671, 3
  store i64 %7672, i64* %PC.i93
  %7673 = add i64 %7670, %7669
  store i64 %7673, i64* %RAX.i94, align 8
  %7674 = icmp ult i64 %7673, %7669
  %7675 = icmp ult i64 %7673, %7670
  %7676 = or i1 %7674, %7675
  %7677 = zext i1 %7676 to i8
  %7678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7677, i8* %7678, align 1
  %7679 = trunc i64 %7673 to i32
  %7680 = and i32 %7679, 255
  %7681 = call i32 @llvm.ctpop.i32(i32 %7680)
  %7682 = trunc i32 %7681 to i8
  %7683 = and i8 %7682, 1
  %7684 = xor i8 %7683, 1
  %7685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7684, i8* %7685, align 1
  %7686 = xor i64 %7670, %7669
  %7687 = xor i64 %7686, %7673
  %7688 = lshr i64 %7687, 4
  %7689 = trunc i64 %7688 to i8
  %7690 = and i8 %7689, 1
  %7691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7690, i8* %7691, align 1
  %7692 = icmp eq i64 %7673, 0
  %7693 = zext i1 %7692 to i8
  %7694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7693, i8* %7694, align 1
  %7695 = lshr i64 %7673, 63
  %7696 = trunc i64 %7695 to i8
  %7697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7696, i8* %7697, align 1
  %7698 = lshr i64 %7669, 63
  %7699 = lshr i64 %7670, 63
  %7700 = xor i64 %7695, %7698
  %7701 = xor i64 %7695, %7699
  %7702 = add i64 %7700, %7701
  %7703 = icmp eq i64 %7702, 2
  %7704 = zext i1 %7703 to i8
  %7705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7704, i8* %7705, align 1
  store %struct.Memory* %loadMem_438372, %struct.Memory** %MEMORY
  %loadMem_438375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7707 = getelementptr inbounds %struct.GPR, %struct.GPR* %7706, i32 0, i32 33
  %7708 = getelementptr inbounds %struct.Reg, %struct.Reg* %7707, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %7708 to i64*
  %7709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7710 = getelementptr inbounds %struct.GPR, %struct.GPR* %7709, i32 0, i32 1
  %7711 = getelementptr inbounds %struct.Reg, %struct.Reg* %7710, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %7711 to i64*
  %7712 = load i64, i64* %RAX.i92
  %7713 = add i64 %7712, 12
  %7714 = load i64, i64* %PC.i91
  %7715 = add i64 %7714, 4
  store i64 %7715, i64* %PC.i91
  %7716 = inttoptr i64 %7713 to i32*
  %7717 = load i32, i32* %7716
  %7718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7718, align 1
  %7719 = and i32 %7717, 255
  %7720 = call i32 @llvm.ctpop.i32(i32 %7719)
  %7721 = trunc i32 %7720 to i8
  %7722 = and i8 %7721, 1
  %7723 = xor i8 %7722, 1
  %7724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7723, i8* %7724, align 1
  %7725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7725, align 1
  %7726 = icmp eq i32 %7717, 0
  %7727 = zext i1 %7726 to i8
  %7728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7727, i8* %7728, align 1
  %7729 = lshr i32 %7717, 31
  %7730 = trunc i32 %7729 to i8
  %7731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7730, i8* %7731, align 1
  %7732 = lshr i32 %7717, 31
  %7733 = xor i32 %7729, %7732
  %7734 = add i32 %7733, %7732
  %7735 = icmp eq i32 %7734, 2
  %7736 = zext i1 %7735 to i8
  %7737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7736, i8* %7737, align 1
  store %struct.Memory* %loadMem_438375, %struct.Memory** %MEMORY
  %loadMem_438379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7739 = getelementptr inbounds %struct.GPR, %struct.GPR* %7738, i32 0, i32 33
  %7740 = getelementptr inbounds %struct.Reg, %struct.Reg* %7739, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %7740 to i64*
  %7741 = load i64, i64* %PC.i90
  %7742 = add i64 %7741, 127
  %7743 = load i64, i64* %PC.i90
  %7744 = add i64 %7743, 6
  %7745 = load i64, i64* %PC.i90
  %7746 = add i64 %7745, 6
  store i64 %7746, i64* %PC.i90
  %7747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7748 = load i8, i8* %7747, align 1
  %7749 = icmp eq i8 %7748, 0
  %7750 = zext i1 %7749 to i8
  store i8 %7750, i8* %BRANCH_TAKEN, align 1
  %7751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7752 = select i1 %7749, i64 %7742, i64 %7744
  store i64 %7752, i64* %7751, align 8
  store %struct.Memory* %loadMem_438379, %struct.Memory** %MEMORY
  %loadBr_438379 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438379 = icmp eq i8 %loadBr_438379, 1
  br i1 %cmpBr_438379, label %block_.L_4383f8, label %block_43837f

block_43837f:                                     ; preds = %block_.L_438366
  %loadMem_43837f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7754 = getelementptr inbounds %struct.GPR, %struct.GPR* %7753, i32 0, i32 33
  %7755 = getelementptr inbounds %struct.Reg, %struct.Reg* %7754, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %7755 to i64*
  %7756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7757 = getelementptr inbounds %struct.GPR, %struct.GPR* %7756, i32 0, i32 1
  %7758 = getelementptr inbounds %struct.Reg, %struct.Reg* %7757, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %7758 to i64*
  %7759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7760 = getelementptr inbounds %struct.GPR, %struct.GPR* %7759, i32 0, i32 15
  %7761 = getelementptr inbounds %struct.Reg, %struct.Reg* %7760, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %7761 to i64*
  %7762 = load i64, i64* %RBP.i89
  %7763 = sub i64 %7762, 16
  %7764 = load i64, i64* %PC.i87
  %7765 = add i64 %7764, 4
  store i64 %7765, i64* %PC.i87
  %7766 = inttoptr i64 %7763 to i64*
  %7767 = load i64, i64* %7766
  store i64 %7767, i64* %RAX.i88, align 8
  store %struct.Memory* %loadMem_43837f, %struct.Memory** %MEMORY
  %loadMem_438383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7769 = getelementptr inbounds %struct.GPR, %struct.GPR* %7768, i32 0, i32 33
  %7770 = getelementptr inbounds %struct.Reg, %struct.Reg* %7769, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %7770 to i64*
  %7771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7772 = getelementptr inbounds %struct.GPR, %struct.GPR* %7771, i32 0, i32 5
  %7773 = getelementptr inbounds %struct.Reg, %struct.Reg* %7772, i32 0, i32 0
  %RCX.i85 = bitcast %union.anon* %7773 to i64*
  %7774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7775 = getelementptr inbounds %struct.GPR, %struct.GPR* %7774, i32 0, i32 15
  %7776 = getelementptr inbounds %struct.Reg, %struct.Reg* %7775, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %7776 to i64*
  %7777 = load i64, i64* %RBP.i86
  %7778 = sub i64 %7777, 36
  %7779 = load i64, i64* %PC.i84
  %7780 = add i64 %7779, 4
  store i64 %7780, i64* %PC.i84
  %7781 = inttoptr i64 %7778 to i32*
  %7782 = load i32, i32* %7781
  %7783 = sext i32 %7782 to i64
  store i64 %7783, i64* %RCX.i85, align 8
  store %struct.Memory* %loadMem_438383, %struct.Memory** %MEMORY
  %loadMem_438387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7785 = getelementptr inbounds %struct.GPR, %struct.GPR* %7784, i32 0, i32 33
  %7786 = getelementptr inbounds %struct.Reg, %struct.Reg* %7785, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %7786 to i64*
  %7787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7788 = getelementptr inbounds %struct.GPR, %struct.GPR* %7787, i32 0, i32 5
  %7789 = getelementptr inbounds %struct.Reg, %struct.Reg* %7788, i32 0, i32 0
  %RCX.i83 = bitcast %union.anon* %7789 to i64*
  %7790 = load i64, i64* %RCX.i83
  %7791 = load i64, i64* %PC.i82
  %7792 = add i64 %7791, 4
  store i64 %7792, i64* %PC.i82
  %7793 = sext i64 %7790 to i128
  %7794 = and i128 %7793, -18446744073709551616
  %7795 = zext i64 %7790 to i128
  %7796 = or i128 %7794, %7795
  %7797 = mul i128 36, %7796
  %7798 = trunc i128 %7797 to i64
  store i64 %7798, i64* %RCX.i83, align 8
  %7799 = sext i64 %7798 to i128
  %7800 = icmp ne i128 %7799, %7797
  %7801 = zext i1 %7800 to i8
  %7802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7801, i8* %7802, align 1
  %7803 = trunc i128 %7797 to i32
  %7804 = and i32 %7803, 255
  %7805 = call i32 @llvm.ctpop.i32(i32 %7804)
  %7806 = trunc i32 %7805 to i8
  %7807 = and i8 %7806, 1
  %7808 = xor i8 %7807, 1
  %7809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7808, i8* %7809, align 1
  %7810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7810, align 1
  %7811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7811, align 1
  %7812 = lshr i64 %7798, 63
  %7813 = trunc i64 %7812 to i8
  %7814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7813, i8* %7814, align 1
  %7815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7801, i8* %7815, align 1
  store %struct.Memory* %loadMem_438387, %struct.Memory** %MEMORY
  %loadMem_43838b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7817 = getelementptr inbounds %struct.GPR, %struct.GPR* %7816, i32 0, i32 33
  %7818 = getelementptr inbounds %struct.Reg, %struct.Reg* %7817, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %7818 to i64*
  %7819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7820 = getelementptr inbounds %struct.GPR, %struct.GPR* %7819, i32 0, i32 1
  %7821 = getelementptr inbounds %struct.Reg, %struct.Reg* %7820, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %7821 to i64*
  %7822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7823 = getelementptr inbounds %struct.GPR, %struct.GPR* %7822, i32 0, i32 5
  %7824 = getelementptr inbounds %struct.Reg, %struct.Reg* %7823, i32 0, i32 0
  %RCX.i81 = bitcast %union.anon* %7824 to i64*
  %7825 = load i64, i64* %RAX.i80
  %7826 = load i64, i64* %RCX.i81
  %7827 = load i64, i64* %PC.i79
  %7828 = add i64 %7827, 3
  store i64 %7828, i64* %PC.i79
  %7829 = add i64 %7826, %7825
  store i64 %7829, i64* %RAX.i80, align 8
  %7830 = icmp ult i64 %7829, %7825
  %7831 = icmp ult i64 %7829, %7826
  %7832 = or i1 %7830, %7831
  %7833 = zext i1 %7832 to i8
  %7834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7833, i8* %7834, align 1
  %7835 = trunc i64 %7829 to i32
  %7836 = and i32 %7835, 255
  %7837 = call i32 @llvm.ctpop.i32(i32 %7836)
  %7838 = trunc i32 %7837 to i8
  %7839 = and i8 %7838, 1
  %7840 = xor i8 %7839, 1
  %7841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7840, i8* %7841, align 1
  %7842 = xor i64 %7826, %7825
  %7843 = xor i64 %7842, %7829
  %7844 = lshr i64 %7843, 4
  %7845 = trunc i64 %7844 to i8
  %7846 = and i8 %7845, 1
  %7847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7846, i8* %7847, align 1
  %7848 = icmp eq i64 %7829, 0
  %7849 = zext i1 %7848 to i8
  %7850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7849, i8* %7850, align 1
  %7851 = lshr i64 %7829, 63
  %7852 = trunc i64 %7851 to i8
  %7853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7852, i8* %7853, align 1
  %7854 = lshr i64 %7825, 63
  %7855 = lshr i64 %7826, 63
  %7856 = xor i64 %7851, %7854
  %7857 = xor i64 %7851, %7855
  %7858 = add i64 %7856, %7857
  %7859 = icmp eq i64 %7858, 2
  %7860 = zext i1 %7859 to i8
  %7861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7860, i8* %7861, align 1
  store %struct.Memory* %loadMem_43838b, %struct.Memory** %MEMORY
  %loadMem_43838e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7863 = getelementptr inbounds %struct.GPR, %struct.GPR* %7862, i32 0, i32 33
  %7864 = getelementptr inbounds %struct.Reg, %struct.Reg* %7863, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %7864 to i64*
  %7865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7866 = getelementptr inbounds %struct.GPR, %struct.GPR* %7865, i32 0, i32 1
  %7867 = getelementptr inbounds %struct.Reg, %struct.Reg* %7866, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %7867 to i64*
  %7868 = load i64, i64* %RAX.i78
  %7869 = load i64, i64* %PC.i77
  %7870 = add i64 %7869, 3
  store i64 %7870, i64* %PC.i77
  %7871 = inttoptr i64 %7868 to i32*
  %7872 = load i32, i32* %7871
  %7873 = sub i32 %7872, 4
  %7874 = icmp ult i32 %7872, 4
  %7875 = zext i1 %7874 to i8
  %7876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7875, i8* %7876, align 1
  %7877 = and i32 %7873, 255
  %7878 = call i32 @llvm.ctpop.i32(i32 %7877)
  %7879 = trunc i32 %7878 to i8
  %7880 = and i8 %7879, 1
  %7881 = xor i8 %7880, 1
  %7882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7881, i8* %7882, align 1
  %7883 = xor i32 %7872, 4
  %7884 = xor i32 %7883, %7873
  %7885 = lshr i32 %7884, 4
  %7886 = trunc i32 %7885 to i8
  %7887 = and i8 %7886, 1
  %7888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7887, i8* %7888, align 1
  %7889 = icmp eq i32 %7873, 0
  %7890 = zext i1 %7889 to i8
  %7891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7890, i8* %7891, align 1
  %7892 = lshr i32 %7873, 31
  %7893 = trunc i32 %7892 to i8
  %7894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7893, i8* %7894, align 1
  %7895 = lshr i32 %7872, 31
  %7896 = xor i32 %7892, %7895
  %7897 = add i32 %7896, %7895
  %7898 = icmp eq i32 %7897, 2
  %7899 = zext i1 %7898 to i8
  %7900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7899, i8* %7900, align 1
  store %struct.Memory* %loadMem_43838e, %struct.Memory** %MEMORY
  %loadMem_438391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7902 = getelementptr inbounds %struct.GPR, %struct.GPR* %7901, i32 0, i32 33
  %7903 = getelementptr inbounds %struct.Reg, %struct.Reg* %7902, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %7903 to i64*
  %7904 = load i64, i64* %PC.i76
  %7905 = add i64 %7904, 103
  %7906 = load i64, i64* %PC.i76
  %7907 = add i64 %7906, 6
  %7908 = load i64, i64* %PC.i76
  %7909 = add i64 %7908, 6
  store i64 %7909, i64* %PC.i76
  %7910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7911 = load i8, i8* %7910, align 1
  %7912 = icmp eq i8 %7911, 0
  %7913 = zext i1 %7912 to i8
  store i8 %7913, i8* %BRANCH_TAKEN, align 1
  %7914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7915 = select i1 %7912, i64 %7905, i64 %7907
  store i64 %7915, i64* %7914, align 8
  store %struct.Memory* %loadMem_438391, %struct.Memory** %MEMORY
  %loadBr_438391 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438391 = icmp eq i8 %loadBr_438391, 1
  br i1 %cmpBr_438391, label %block_.L_4383f8, label %block_438397

block_438397:                                     ; preds = %block_43837f
  %loadMem_438397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7917 = getelementptr inbounds %struct.GPR, %struct.GPR* %7916, i32 0, i32 33
  %7918 = getelementptr inbounds %struct.Reg, %struct.Reg* %7917, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %7918 to i64*
  %7919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7920 = getelementptr inbounds %struct.GPR, %struct.GPR* %7919, i32 0, i32 7
  %7921 = getelementptr inbounds %struct.Reg, %struct.Reg* %7920, i32 0, i32 0
  %RDX.i74 = bitcast %union.anon* %7921 to i64*
  %7922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7923 = getelementptr inbounds %struct.GPR, %struct.GPR* %7922, i32 0, i32 15
  %7924 = getelementptr inbounds %struct.Reg, %struct.Reg* %7923, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %7924 to i64*
  %7925 = load i64, i64* %RBP.i75
  %7926 = sub i64 %7925, 3276
  %7927 = load i64, i64* %PC.i73
  %7928 = add i64 %7927, 7
  store i64 %7928, i64* %PC.i73
  store i64 %7926, i64* %RDX.i74, align 8
  store %struct.Memory* %loadMem_438397, %struct.Memory** %MEMORY
  %loadMem_43839e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7930 = getelementptr inbounds %struct.GPR, %struct.GPR* %7929, i32 0, i32 33
  %7931 = getelementptr inbounds %struct.Reg, %struct.Reg* %7930, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %7931 to i64*
  %7932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7933 = getelementptr inbounds %struct.GPR, %struct.GPR* %7932, i32 0, i32 5
  %7934 = getelementptr inbounds %struct.Reg, %struct.Reg* %7933, i32 0, i32 0
  %RCX.i71 = bitcast %union.anon* %7934 to i64*
  %7935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7936 = getelementptr inbounds %struct.GPR, %struct.GPR* %7935, i32 0, i32 15
  %7937 = getelementptr inbounds %struct.Reg, %struct.Reg* %7936, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %7937 to i64*
  %7938 = load i64, i64* %RBP.i72
  %7939 = sub i64 %7938, 3280
  %7940 = load i64, i64* %PC.i70
  %7941 = add i64 %7940, 7
  store i64 %7941, i64* %PC.i70
  store i64 %7939, i64* %RCX.i71, align 8
  store %struct.Memory* %loadMem_43839e, %struct.Memory** %MEMORY
  %loadMem_4383a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7943 = getelementptr inbounds %struct.GPR, %struct.GPR* %7942, i32 0, i32 33
  %7944 = getelementptr inbounds %struct.Reg, %struct.Reg* %7943, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %7944 to i64*
  %7945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7946 = getelementptr inbounds %struct.GPR, %struct.GPR* %7945, i32 0, i32 15
  %7947 = getelementptr inbounds %struct.Reg, %struct.Reg* %7946, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %7947 to i64*
  %7948 = load i64, i64* %RBP.i69
  %7949 = sub i64 %7948, 3276
  %7950 = load i64, i64* %PC.i68
  %7951 = add i64 %7950, 10
  store i64 %7951, i64* %PC.i68
  %7952 = inttoptr i64 %7949 to i32*
  store i32 0, i32* %7952
  store %struct.Memory* %loadMem_4383a5, %struct.Memory** %MEMORY
  %loadMem_4383af = load %struct.Memory*, %struct.Memory** %MEMORY
  %7953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7954 = getelementptr inbounds %struct.GPR, %struct.GPR* %7953, i32 0, i32 33
  %7955 = getelementptr inbounds %struct.Reg, %struct.Reg* %7954, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %7955 to i64*
  %7956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7957 = getelementptr inbounds %struct.GPR, %struct.GPR* %7956, i32 0, i32 15
  %7958 = getelementptr inbounds %struct.Reg, %struct.Reg* %7957, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %7958 to i64*
  %7959 = load i64, i64* %RBP.i67
  %7960 = sub i64 %7959, 3280
  %7961 = load i64, i64* %PC.i66
  %7962 = add i64 %7961, 10
  store i64 %7962, i64* %PC.i66
  %7963 = inttoptr i64 %7960 to i32*
  store i32 0, i32* %7963
  store %struct.Memory* %loadMem_4383af, %struct.Memory** %MEMORY
  %loadMem_4383b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7965 = getelementptr inbounds %struct.GPR, %struct.GPR* %7964, i32 0, i32 33
  %7966 = getelementptr inbounds %struct.Reg, %struct.Reg* %7965, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %7966 to i64*
  %7967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7968 = getelementptr inbounds %struct.GPR, %struct.GPR* %7967, i32 0, i32 11
  %7969 = getelementptr inbounds %struct.Reg, %struct.Reg* %7968, i32 0, i32 0
  %RDI.i64 = bitcast %union.anon* %7969 to i64*
  %7970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7971 = getelementptr inbounds %struct.GPR, %struct.GPR* %7970, i32 0, i32 15
  %7972 = getelementptr inbounds %struct.Reg, %struct.Reg* %7971, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %7972 to i64*
  %7973 = load i64, i64* %RBP.i65
  %7974 = sub i64 %7973, 36
  %7975 = load i64, i64* %PC.i63
  %7976 = add i64 %7975, 3
  store i64 %7976, i64* %PC.i63
  %7977 = inttoptr i64 %7974 to i32*
  %7978 = load i32, i32* %7977
  %7979 = zext i32 %7978 to i64
  store i64 %7979, i64* %RDI.i64, align 8
  store %struct.Memory* %loadMem_4383b9, %struct.Memory** %MEMORY
  %loadMem_4383bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7981 = getelementptr inbounds %struct.GPR, %struct.GPR* %7980, i32 0, i32 33
  %7982 = getelementptr inbounds %struct.Reg, %struct.Reg* %7981, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %7982 to i64*
  %7983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7984 = getelementptr inbounds %struct.GPR, %struct.GPR* %7983, i32 0, i32 9
  %7985 = getelementptr inbounds %struct.Reg, %struct.Reg* %7984, i32 0, i32 0
  %RSI.i61 = bitcast %union.anon* %7985 to i64*
  %7986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7987 = getelementptr inbounds %struct.GPR, %struct.GPR* %7986, i32 0, i32 15
  %7988 = getelementptr inbounds %struct.Reg, %struct.Reg* %7987, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %7988 to i64*
  %7989 = load i64, i64* %RBP.i62
  %7990 = sub i64 %7989, 36
  %7991 = load i64, i64* %PC.i60
  %7992 = add i64 %7991, 3
  store i64 %7992, i64* %PC.i60
  %7993 = inttoptr i64 %7990 to i32*
  %7994 = load i32, i32* %7993
  %7995 = zext i32 %7994 to i64
  store i64 %7995, i64* %RSI.i61, align 8
  store %struct.Memory* %loadMem_4383bc, %struct.Memory** %MEMORY
  %loadMem_4383bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %7996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7997 = getelementptr inbounds %struct.GPR, %struct.GPR* %7996, i32 0, i32 33
  %7998 = getelementptr inbounds %struct.Reg, %struct.Reg* %7997, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %7998 to i64*
  %7999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8000 = getelementptr inbounds %struct.GPR, %struct.GPR* %7999, i32 0, i32 15
  %8001 = getelementptr inbounds %struct.Reg, %struct.Reg* %8000, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %8001 to i64*
  %8002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8003 = getelementptr inbounds %struct.GPR, %struct.GPR* %8002, i32 0, i32 17
  %8004 = getelementptr inbounds %struct.Reg, %struct.Reg* %8003, i32 0, i32 0
  %R8.i = bitcast %union.anon* %8004 to i64*
  %8005 = load i64, i64* %RBP.i59
  %8006 = sub i64 %8005, 16
  %8007 = load i64, i64* %PC.i58
  %8008 = add i64 %8007, 4
  store i64 %8008, i64* %PC.i58
  %8009 = inttoptr i64 %8006 to i64*
  %8010 = load i64, i64* %8009
  store i64 %8010, i64* %R8.i, align 8
  store %struct.Memory* %loadMem_4383bf, %struct.Memory** %MEMORY
  %loadMem1_4383c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8012 = getelementptr inbounds %struct.GPR, %struct.GPR* %8011, i32 0, i32 33
  %8013 = getelementptr inbounds %struct.Reg, %struct.Reg* %8012, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %8013 to i64*
  %8014 = load i64, i64* %PC.i57
  %8015 = add i64 %8014, 2269
  %8016 = load i64, i64* %PC.i57
  %8017 = add i64 %8016, 5
  %8018 = load i64, i64* %PC.i57
  %8019 = add i64 %8018, 5
  store i64 %8019, i64* %PC.i57
  %8020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8021 = load i64, i64* %8020, align 8
  %8022 = add i64 %8021, -8
  %8023 = inttoptr i64 %8022 to i64*
  store i64 %8017, i64* %8023
  store i64 %8022, i64* %8020, align 8
  %8024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8015, i64* %8024, align 8
  store %struct.Memory* %loadMem1_4383c3, %struct.Memory** %MEMORY
  %loadMem2_4383c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4383c3 = load i64, i64* %3
  %call2_4383c3 = call %struct.Memory* @sub_438ca0.originate_eye(%struct.State* %0, i64 %loadPC_4383c3, %struct.Memory* %loadMem2_4383c3)
  store %struct.Memory* %call2_4383c3, %struct.Memory** %MEMORY
  %loadMem_4383c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8026 = getelementptr inbounds %struct.GPR, %struct.GPR* %8025, i32 0, i32 33
  %8027 = getelementptr inbounds %struct.Reg, %struct.Reg* %8026, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %8027 to i64*
  %8028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8029 = getelementptr inbounds %struct.GPR, %struct.GPR* %8028, i32 0, i32 9
  %8030 = getelementptr inbounds %struct.Reg, %struct.Reg* %8029, i32 0, i32 0
  %RSI.i55 = bitcast %union.anon* %8030 to i64*
  %8031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8032 = getelementptr inbounds %struct.GPR, %struct.GPR* %8031, i32 0, i32 15
  %8033 = getelementptr inbounds %struct.Reg, %struct.Reg* %8032, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %8033 to i64*
  %8034 = load i64, i64* %RBP.i56
  %8035 = sub i64 %8034, 3276
  %8036 = load i64, i64* %PC.i54
  %8037 = add i64 %8036, 6
  store i64 %8037, i64* %PC.i54
  %8038 = inttoptr i64 %8035 to i32*
  %8039 = load i32, i32* %8038
  %8040 = zext i32 %8039 to i64
  store i64 %8040, i64* %RSI.i55, align 8
  store %struct.Memory* %loadMem_4383c8, %struct.Memory** %MEMORY
  %loadMem_4383ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %8041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8042 = getelementptr inbounds %struct.GPR, %struct.GPR* %8041, i32 0, i32 33
  %8043 = getelementptr inbounds %struct.Reg, %struct.Reg* %8042, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %8043 to i64*
  %8044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8045 = getelementptr inbounds %struct.GPR, %struct.GPR* %8044, i32 0, i32 5
  %8046 = getelementptr inbounds %struct.Reg, %struct.Reg* %8045, i32 0, i32 0
  %RCX.i52 = bitcast %union.anon* %8046 to i64*
  %8047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8048 = getelementptr inbounds %struct.GPR, %struct.GPR* %8047, i32 0, i32 15
  %8049 = getelementptr inbounds %struct.Reg, %struct.Reg* %8048, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %8049 to i64*
  %8050 = load i64, i64* %RBP.i53
  %8051 = sub i64 %8050, 16
  %8052 = load i64, i64* %PC.i51
  %8053 = add i64 %8052, 4
  store i64 %8053, i64* %PC.i51
  %8054 = inttoptr i64 %8051 to i64*
  %8055 = load i64, i64* %8054
  store i64 %8055, i64* %RCX.i52, align 8
  store %struct.Memory* %loadMem_4383ce, %struct.Memory** %MEMORY
  %loadMem_4383d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8057 = getelementptr inbounds %struct.GPR, %struct.GPR* %8056, i32 0, i32 33
  %8058 = getelementptr inbounds %struct.Reg, %struct.Reg* %8057, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %8058 to i64*
  %8059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8060 = getelementptr inbounds %struct.GPR, %struct.GPR* %8059, i32 0, i32 7
  %8061 = getelementptr inbounds %struct.Reg, %struct.Reg* %8060, i32 0, i32 0
  %RDX.i49 = bitcast %union.anon* %8061 to i64*
  %8062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8063 = getelementptr inbounds %struct.GPR, %struct.GPR* %8062, i32 0, i32 15
  %8064 = getelementptr inbounds %struct.Reg, %struct.Reg* %8063, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %8064 to i64*
  %8065 = load i64, i64* %RBP.i50
  %8066 = sub i64 %8065, 36
  %8067 = load i64, i64* %PC.i48
  %8068 = add i64 %8067, 4
  store i64 %8068, i64* %PC.i48
  %8069 = inttoptr i64 %8066 to i32*
  %8070 = load i32, i32* %8069
  %8071 = sext i32 %8070 to i64
  store i64 %8071, i64* %RDX.i49, align 8
  store %struct.Memory* %loadMem_4383d2, %struct.Memory** %MEMORY
  %loadMem_4383d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8073 = getelementptr inbounds %struct.GPR, %struct.GPR* %8072, i32 0, i32 33
  %8074 = getelementptr inbounds %struct.Reg, %struct.Reg* %8073, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %8074 to i64*
  %8075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8076 = getelementptr inbounds %struct.GPR, %struct.GPR* %8075, i32 0, i32 7
  %8077 = getelementptr inbounds %struct.Reg, %struct.Reg* %8076, i32 0, i32 0
  %RDX.i47 = bitcast %union.anon* %8077 to i64*
  %8078 = load i64, i64* %RDX.i47
  %8079 = load i64, i64* %PC.i46
  %8080 = add i64 %8079, 4
  store i64 %8080, i64* %PC.i46
  %8081 = sext i64 %8078 to i128
  %8082 = and i128 %8081, -18446744073709551616
  %8083 = zext i64 %8078 to i128
  %8084 = or i128 %8082, %8083
  %8085 = mul i128 36, %8084
  %8086 = trunc i128 %8085 to i64
  store i64 %8086, i64* %RDX.i47, align 8
  %8087 = sext i64 %8086 to i128
  %8088 = icmp ne i128 %8087, %8085
  %8089 = zext i1 %8088 to i8
  %8090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8089, i8* %8090, align 1
  %8091 = trunc i128 %8085 to i32
  %8092 = and i32 %8091, 255
  %8093 = call i32 @llvm.ctpop.i32(i32 %8092)
  %8094 = trunc i32 %8093 to i8
  %8095 = and i8 %8094, 1
  %8096 = xor i8 %8095, 1
  %8097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8096, i8* %8097, align 1
  %8098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8098, align 1
  %8099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8099, align 1
  %8100 = lshr i64 %8086, 63
  %8101 = trunc i64 %8100 to i8
  %8102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8101, i8* %8102, align 1
  %8103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8089, i8* %8103, align 1
  store %struct.Memory* %loadMem_4383d6, %struct.Memory** %MEMORY
  %loadMem_4383da = load %struct.Memory*, %struct.Memory** %MEMORY
  %8104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8105 = getelementptr inbounds %struct.GPR, %struct.GPR* %8104, i32 0, i32 33
  %8106 = getelementptr inbounds %struct.Reg, %struct.Reg* %8105, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %8106 to i64*
  %8107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8108 = getelementptr inbounds %struct.GPR, %struct.GPR* %8107, i32 0, i32 5
  %8109 = getelementptr inbounds %struct.Reg, %struct.Reg* %8108, i32 0, i32 0
  %RCX.i44 = bitcast %union.anon* %8109 to i64*
  %8110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8111 = getelementptr inbounds %struct.GPR, %struct.GPR* %8110, i32 0, i32 7
  %8112 = getelementptr inbounds %struct.Reg, %struct.Reg* %8111, i32 0, i32 0
  %RDX.i45 = bitcast %union.anon* %8112 to i64*
  %8113 = load i64, i64* %RCX.i44
  %8114 = load i64, i64* %RDX.i45
  %8115 = load i64, i64* %PC.i43
  %8116 = add i64 %8115, 3
  store i64 %8116, i64* %PC.i43
  %8117 = add i64 %8114, %8113
  store i64 %8117, i64* %RCX.i44, align 8
  %8118 = icmp ult i64 %8117, %8113
  %8119 = icmp ult i64 %8117, %8114
  %8120 = or i1 %8118, %8119
  %8121 = zext i1 %8120 to i8
  %8122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8121, i8* %8122, align 1
  %8123 = trunc i64 %8117 to i32
  %8124 = and i32 %8123, 255
  %8125 = call i32 @llvm.ctpop.i32(i32 %8124)
  %8126 = trunc i32 %8125 to i8
  %8127 = and i8 %8126, 1
  %8128 = xor i8 %8127, 1
  %8129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8128, i8* %8129, align 1
  %8130 = xor i64 %8114, %8113
  %8131 = xor i64 %8130, %8117
  %8132 = lshr i64 %8131, 4
  %8133 = trunc i64 %8132 to i8
  %8134 = and i8 %8133, 1
  %8135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8134, i8* %8135, align 1
  %8136 = icmp eq i64 %8117, 0
  %8137 = zext i1 %8136 to i8
  %8138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8137, i8* %8138, align 1
  %8139 = lshr i64 %8117, 63
  %8140 = trunc i64 %8139 to i8
  %8141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8140, i8* %8141, align 1
  %8142 = lshr i64 %8113, 63
  %8143 = lshr i64 %8114, 63
  %8144 = xor i64 %8139, %8142
  %8145 = xor i64 %8139, %8143
  %8146 = add i64 %8144, %8145
  %8147 = icmp eq i64 %8146, 2
  %8148 = zext i1 %8147 to i8
  %8149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8148, i8* %8149, align 1
  store %struct.Memory* %loadMem_4383da, %struct.Memory** %MEMORY
  %loadMem_4383dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %8150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8151 = getelementptr inbounds %struct.GPR, %struct.GPR* %8150, i32 0, i32 33
  %8152 = getelementptr inbounds %struct.Reg, %struct.Reg* %8151, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %8152 to i64*
  %8153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8154 = getelementptr inbounds %struct.GPR, %struct.GPR* %8153, i32 0, i32 9
  %8155 = getelementptr inbounds %struct.Reg, %struct.Reg* %8154, i32 0, i32 0
  %ESI.i41 = bitcast %union.anon* %8155 to i32*
  %8156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8157 = getelementptr inbounds %struct.GPR, %struct.GPR* %8156, i32 0, i32 5
  %8158 = getelementptr inbounds %struct.Reg, %struct.Reg* %8157, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %8158 to i64*
  %8159 = load i64, i64* %RCX.i42
  %8160 = add i64 %8159, 4
  %8161 = load i32, i32* %ESI.i41
  %8162 = zext i32 %8161 to i64
  %8163 = load i64, i64* %PC.i40
  %8164 = add i64 %8163, 3
  store i64 %8164, i64* %PC.i40
  %8165 = inttoptr i64 %8160 to i32*
  store i32 %8161, i32* %8165
  store %struct.Memory* %loadMem_4383dd, %struct.Memory** %MEMORY
  %loadMem_4383e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8167 = getelementptr inbounds %struct.GPR, %struct.GPR* %8166, i32 0, i32 33
  %8168 = getelementptr inbounds %struct.Reg, %struct.Reg* %8167, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %8168 to i64*
  %8169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8170 = getelementptr inbounds %struct.GPR, %struct.GPR* %8169, i32 0, i32 9
  %8171 = getelementptr inbounds %struct.Reg, %struct.Reg* %8170, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %8171 to i64*
  %8172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8173 = getelementptr inbounds %struct.GPR, %struct.GPR* %8172, i32 0, i32 15
  %8174 = getelementptr inbounds %struct.Reg, %struct.Reg* %8173, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %8174 to i64*
  %8175 = load i64, i64* %RBP.i39
  %8176 = sub i64 %8175, 3280
  %8177 = load i64, i64* %PC.i38
  %8178 = add i64 %8177, 6
  store i64 %8178, i64* %PC.i38
  %8179 = inttoptr i64 %8176 to i32*
  %8180 = load i32, i32* %8179
  %8181 = zext i32 %8180 to i64
  store i64 %8181, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4383e0, %struct.Memory** %MEMORY
  %loadMem_4383e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8183 = getelementptr inbounds %struct.GPR, %struct.GPR* %8182, i32 0, i32 33
  %8184 = getelementptr inbounds %struct.Reg, %struct.Reg* %8183, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %8184 to i64*
  %8185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8186 = getelementptr inbounds %struct.GPR, %struct.GPR* %8185, i32 0, i32 5
  %8187 = getelementptr inbounds %struct.Reg, %struct.Reg* %8186, i32 0, i32 0
  %RCX.i36 = bitcast %union.anon* %8187 to i64*
  %8188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8189 = getelementptr inbounds %struct.GPR, %struct.GPR* %8188, i32 0, i32 15
  %8190 = getelementptr inbounds %struct.Reg, %struct.Reg* %8189, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %8190 to i64*
  %8191 = load i64, i64* %RBP.i37
  %8192 = sub i64 %8191, 16
  %8193 = load i64, i64* %PC.i35
  %8194 = add i64 %8193, 4
  store i64 %8194, i64* %PC.i35
  %8195 = inttoptr i64 %8192 to i64*
  %8196 = load i64, i64* %8195
  store i64 %8196, i64* %RCX.i36, align 8
  store %struct.Memory* %loadMem_4383e6, %struct.Memory** %MEMORY
  %loadMem_4383ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %8197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8198 = getelementptr inbounds %struct.GPR, %struct.GPR* %8197, i32 0, i32 33
  %8199 = getelementptr inbounds %struct.Reg, %struct.Reg* %8198, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %8199 to i64*
  %8200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8201 = getelementptr inbounds %struct.GPR, %struct.GPR* %8200, i32 0, i32 7
  %8202 = getelementptr inbounds %struct.Reg, %struct.Reg* %8201, i32 0, i32 0
  %RDX.i33 = bitcast %union.anon* %8202 to i64*
  %8203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8204 = getelementptr inbounds %struct.GPR, %struct.GPR* %8203, i32 0, i32 15
  %8205 = getelementptr inbounds %struct.Reg, %struct.Reg* %8204, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %8205 to i64*
  %8206 = load i64, i64* %RBP.i34
  %8207 = sub i64 %8206, 36
  %8208 = load i64, i64* %PC.i32
  %8209 = add i64 %8208, 4
  store i64 %8209, i64* %PC.i32
  %8210 = inttoptr i64 %8207 to i32*
  %8211 = load i32, i32* %8210
  %8212 = sext i32 %8211 to i64
  store i64 %8212, i64* %RDX.i33, align 8
  store %struct.Memory* %loadMem_4383ea, %struct.Memory** %MEMORY
  %loadMem_4383ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %8213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8214 = getelementptr inbounds %struct.GPR, %struct.GPR* %8213, i32 0, i32 33
  %8215 = getelementptr inbounds %struct.Reg, %struct.Reg* %8214, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %8215 to i64*
  %8216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8217 = getelementptr inbounds %struct.GPR, %struct.GPR* %8216, i32 0, i32 7
  %8218 = getelementptr inbounds %struct.Reg, %struct.Reg* %8217, i32 0, i32 0
  %RDX.i31 = bitcast %union.anon* %8218 to i64*
  %8219 = load i64, i64* %RDX.i31
  %8220 = load i64, i64* %PC.i30
  %8221 = add i64 %8220, 4
  store i64 %8221, i64* %PC.i30
  %8222 = sext i64 %8219 to i128
  %8223 = and i128 %8222, -18446744073709551616
  %8224 = zext i64 %8219 to i128
  %8225 = or i128 %8223, %8224
  %8226 = mul i128 36, %8225
  %8227 = trunc i128 %8226 to i64
  store i64 %8227, i64* %RDX.i31, align 8
  %8228 = sext i64 %8227 to i128
  %8229 = icmp ne i128 %8228, %8226
  %8230 = zext i1 %8229 to i8
  %8231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8230, i8* %8231, align 1
  %8232 = trunc i128 %8226 to i32
  %8233 = and i32 %8232, 255
  %8234 = call i32 @llvm.ctpop.i32(i32 %8233)
  %8235 = trunc i32 %8234 to i8
  %8236 = and i8 %8235, 1
  %8237 = xor i8 %8236, 1
  %8238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8237, i8* %8238, align 1
  %8239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8239, align 1
  %8240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8240, align 1
  %8241 = lshr i64 %8227, 63
  %8242 = trunc i64 %8241 to i8
  %8243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8242, i8* %8243, align 1
  %8244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8230, i8* %8244, align 1
  store %struct.Memory* %loadMem_4383ee, %struct.Memory** %MEMORY
  %loadMem_4383f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8246 = getelementptr inbounds %struct.GPR, %struct.GPR* %8245, i32 0, i32 33
  %8247 = getelementptr inbounds %struct.Reg, %struct.Reg* %8246, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %8247 to i64*
  %8248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8249 = getelementptr inbounds %struct.GPR, %struct.GPR* %8248, i32 0, i32 5
  %8250 = getelementptr inbounds %struct.Reg, %struct.Reg* %8249, i32 0, i32 0
  %RCX.i29 = bitcast %union.anon* %8250 to i64*
  %8251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8252 = getelementptr inbounds %struct.GPR, %struct.GPR* %8251, i32 0, i32 7
  %8253 = getelementptr inbounds %struct.Reg, %struct.Reg* %8252, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %8253 to i64*
  %8254 = load i64, i64* %RCX.i29
  %8255 = load i64, i64* %RDX.i
  %8256 = load i64, i64* %PC.i28
  %8257 = add i64 %8256, 3
  store i64 %8257, i64* %PC.i28
  %8258 = add i64 %8255, %8254
  store i64 %8258, i64* %RCX.i29, align 8
  %8259 = icmp ult i64 %8258, %8254
  %8260 = icmp ult i64 %8258, %8255
  %8261 = or i1 %8259, %8260
  %8262 = zext i1 %8261 to i8
  %8263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8262, i8* %8263, align 1
  %8264 = trunc i64 %8258 to i32
  %8265 = and i32 %8264, 255
  %8266 = call i32 @llvm.ctpop.i32(i32 %8265)
  %8267 = trunc i32 %8266 to i8
  %8268 = and i8 %8267, 1
  %8269 = xor i8 %8268, 1
  %8270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8269, i8* %8270, align 1
  %8271 = xor i64 %8255, %8254
  %8272 = xor i64 %8271, %8258
  %8273 = lshr i64 %8272, 4
  %8274 = trunc i64 %8273 to i8
  %8275 = and i8 %8274, 1
  %8276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8275, i8* %8276, align 1
  %8277 = icmp eq i64 %8258, 0
  %8278 = zext i1 %8277 to i8
  %8279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8278, i8* %8279, align 1
  %8280 = lshr i64 %8258, 63
  %8281 = trunc i64 %8280 to i8
  %8282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8281, i8* %8282, align 1
  %8283 = lshr i64 %8254, 63
  %8284 = lshr i64 %8255, 63
  %8285 = xor i64 %8280, %8283
  %8286 = xor i64 %8280, %8284
  %8287 = add i64 %8285, %8286
  %8288 = icmp eq i64 %8287, 2
  %8289 = zext i1 %8288 to i8
  %8290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8289, i8* %8290, align 1
  store %struct.Memory* %loadMem_4383f2, %struct.Memory** %MEMORY
  %loadMem_4383f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8292 = getelementptr inbounds %struct.GPR, %struct.GPR* %8291, i32 0, i32 33
  %8293 = getelementptr inbounds %struct.Reg, %struct.Reg* %8292, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %8293 to i64*
  %8294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8295 = getelementptr inbounds %struct.GPR, %struct.GPR* %8294, i32 0, i32 9
  %8296 = getelementptr inbounds %struct.Reg, %struct.Reg* %8295, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %8296 to i32*
  %8297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8298 = getelementptr inbounds %struct.GPR, %struct.GPR* %8297, i32 0, i32 5
  %8299 = getelementptr inbounds %struct.Reg, %struct.Reg* %8298, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %8299 to i64*
  %8300 = load i64, i64* %RCX.i
  %8301 = add i64 %8300, 8
  %8302 = load i32, i32* %ESI.i
  %8303 = zext i32 %8302 to i64
  %8304 = load i64, i64* %PC.i27
  %8305 = add i64 %8304, 3
  store i64 %8305, i64* %PC.i27
  %8306 = inttoptr i64 %8301 to i32*
  store i32 %8302, i32* %8306
  store %struct.Memory* %loadMem_4383f5, %struct.Memory** %MEMORY
  br label %block_.L_4383f8

block_.L_4383f8:                                  ; preds = %block_438397, %block_43837f, %block_.L_438366
  %loadMem_4383f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8308 = getelementptr inbounds %struct.GPR, %struct.GPR* %8307, i32 0, i32 33
  %8309 = getelementptr inbounds %struct.Reg, %struct.Reg* %8308, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %8309 to i64*
  %8310 = load i64, i64* %PC.i26
  %8311 = add i64 %8310, 5
  %8312 = load i64, i64* %PC.i26
  %8313 = add i64 %8312, 5
  store i64 %8313, i64* %PC.i26
  %8314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8311, i64* %8314, align 8
  store %struct.Memory* %loadMem_4383f8, %struct.Memory** %MEMORY
  br label %block_.L_4383fd

block_.L_4383fd:                                  ; preds = %block_.L_4383f8, %block_438361
  %loadMem_4383fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %8315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8316 = getelementptr inbounds %struct.GPR, %struct.GPR* %8315, i32 0, i32 33
  %8317 = getelementptr inbounds %struct.Reg, %struct.Reg* %8316, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %8317 to i64*
  %8318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8319 = getelementptr inbounds %struct.GPR, %struct.GPR* %8318, i32 0, i32 1
  %8320 = getelementptr inbounds %struct.Reg, %struct.Reg* %8319, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %8320 to i64*
  %8321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8322 = getelementptr inbounds %struct.GPR, %struct.GPR* %8321, i32 0, i32 15
  %8323 = getelementptr inbounds %struct.Reg, %struct.Reg* %8322, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %8323 to i64*
  %8324 = load i64, i64* %RBP.i25
  %8325 = sub i64 %8324, 36
  %8326 = load i64, i64* %PC.i23
  %8327 = add i64 %8326, 3
  store i64 %8327, i64* %PC.i23
  %8328 = inttoptr i64 %8325 to i32*
  %8329 = load i32, i32* %8328
  %8330 = zext i32 %8329 to i64
  store i64 %8330, i64* %RAX.i24, align 8
  store %struct.Memory* %loadMem_4383fd, %struct.Memory** %MEMORY
  %loadMem_438400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8332 = getelementptr inbounds %struct.GPR, %struct.GPR* %8331, i32 0, i32 33
  %8333 = getelementptr inbounds %struct.Reg, %struct.Reg* %8332, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %8333 to i64*
  %8334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8335 = getelementptr inbounds %struct.GPR, %struct.GPR* %8334, i32 0, i32 1
  %8336 = getelementptr inbounds %struct.Reg, %struct.Reg* %8335, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %8336 to i64*
  %8337 = load i64, i64* %RAX.i
  %8338 = load i64, i64* %PC.i22
  %8339 = add i64 %8338, 3
  store i64 %8339, i64* %PC.i22
  %8340 = trunc i64 %8337 to i32
  %8341 = add i32 1, %8340
  %8342 = zext i32 %8341 to i64
  store i64 %8342, i64* %RAX.i, align 8
  %8343 = icmp ult i32 %8341, %8340
  %8344 = icmp ult i32 %8341, 1
  %8345 = or i1 %8343, %8344
  %8346 = zext i1 %8345 to i8
  %8347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8346, i8* %8347, align 1
  %8348 = and i32 %8341, 255
  %8349 = call i32 @llvm.ctpop.i32(i32 %8348)
  %8350 = trunc i32 %8349 to i8
  %8351 = and i8 %8350, 1
  %8352 = xor i8 %8351, 1
  %8353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8352, i8* %8353, align 1
  %8354 = xor i64 1, %8337
  %8355 = trunc i64 %8354 to i32
  %8356 = xor i32 %8355, %8341
  %8357 = lshr i32 %8356, 4
  %8358 = trunc i32 %8357 to i8
  %8359 = and i8 %8358, 1
  %8360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8359, i8* %8360, align 1
  %8361 = icmp eq i32 %8341, 0
  %8362 = zext i1 %8361 to i8
  %8363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8362, i8* %8363, align 1
  %8364 = lshr i32 %8341, 31
  %8365 = trunc i32 %8364 to i8
  %8366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8365, i8* %8366, align 1
  %8367 = lshr i32 %8340, 31
  %8368 = xor i32 %8364, %8367
  %8369 = add i32 %8368, %8364
  %8370 = icmp eq i32 %8369, 2
  %8371 = zext i1 %8370 to i8
  %8372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8371, i8* %8372, align 1
  store %struct.Memory* %loadMem_438400, %struct.Memory** %MEMORY
  %loadMem_438403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8374 = getelementptr inbounds %struct.GPR, %struct.GPR* %8373, i32 0, i32 33
  %8375 = getelementptr inbounds %struct.Reg, %struct.Reg* %8374, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %8375 to i64*
  %8376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8377 = getelementptr inbounds %struct.GPR, %struct.GPR* %8376, i32 0, i32 1
  %8378 = getelementptr inbounds %struct.Reg, %struct.Reg* %8377, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %8378 to i32*
  %8379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8380 = getelementptr inbounds %struct.GPR, %struct.GPR* %8379, i32 0, i32 15
  %8381 = getelementptr inbounds %struct.Reg, %struct.Reg* %8380, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %8381 to i64*
  %8382 = load i64, i64* %RBP.i21
  %8383 = sub i64 %8382, 36
  %8384 = load i32, i32* %EAX.i
  %8385 = zext i32 %8384 to i64
  %8386 = load i64, i64* %PC.i20
  %8387 = add i64 %8386, 3
  store i64 %8387, i64* %PC.i20
  %8388 = inttoptr i64 %8383 to i32*
  store i32 %8384, i32* %8388
  store %struct.Memory* %loadMem_438403, %struct.Memory** %MEMORY
  %loadMem_438406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8390 = getelementptr inbounds %struct.GPR, %struct.GPR* %8389, i32 0, i32 33
  %8391 = getelementptr inbounds %struct.Reg, %struct.Reg* %8390, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %8391 to i64*
  %8392 = load i64, i64* %PC.i19
  %8393 = add i64 %8392, -199
  %8394 = load i64, i64* %PC.i19
  %8395 = add i64 %8394, 5
  store i64 %8395, i64* %PC.i19
  %8396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8393, i64* %8396, align 8
  store %struct.Memory* %loadMem_438406, %struct.Memory** %MEMORY
  br label %block_.L_43833f

block_.L_43840b:                                  ; preds = %block_.L_43833f
  %loadMem_43840b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8398 = getelementptr inbounds %struct.GPR, %struct.GPR* %8397, i32 0, i32 33
  %8399 = getelementptr inbounds %struct.Reg, %struct.Reg* %8398, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %8399 to i64*
  %8400 = load i64, i64* %PC.i18
  %8401 = add i64 %8400, 5
  %8402 = load i64, i64* %PC.i18
  %8403 = add i64 %8402, 5
  store i64 %8403, i64* %PC.i18
  %8404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8401, i64* %8404, align 8
  store %struct.Memory* %loadMem_43840b, %struct.Memory** %MEMORY
  br label %block_.L_438410

block_.L_438410:                                  ; preds = %block_.L_43840b, %block_.L_43832d
  %loadMem_438410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8406 = getelementptr inbounds %struct.GPR, %struct.GPR* %8405, i32 0, i32 33
  %8407 = getelementptr inbounds %struct.Reg, %struct.Reg* %8406, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %8407 to i64*
  %8408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8409 = getelementptr inbounds %struct.GPR, %struct.GPR* %8408, i32 0, i32 15
  %8410 = getelementptr inbounds %struct.Reg, %struct.Reg* %8409, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %8410 to i64*
  %8411 = load i64, i64* %RBP.i17
  %8412 = sub i64 %8411, 8
  %8413 = load i64, i64* %PC.i16
  %8414 = add i64 %8413, 5
  store i64 %8414, i64* %PC.i16
  %8415 = inttoptr i64 %8412 to i64*
  %8416 = load i64, i64* %8415
  %8417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8417, align 1
  %8418 = trunc i64 %8416 to i32
  %8419 = and i32 %8418, 255
  %8420 = call i32 @llvm.ctpop.i32(i32 %8419)
  %8421 = trunc i32 %8420 to i8
  %8422 = and i8 %8421, 1
  %8423 = xor i8 %8422, 1
  %8424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8423, i8* %8424, align 1
  %8425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8425, align 1
  %8426 = icmp eq i64 %8416, 0
  %8427 = zext i1 %8426 to i8
  %8428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8427, i8* %8428, align 1
  %8429 = lshr i64 %8416, 63
  %8430 = trunc i64 %8429 to i8
  %8431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8430, i8* %8431, align 1
  %8432 = lshr i64 %8416, 63
  %8433 = xor i64 %8429, %8432
  %8434 = add i64 %8433, %8432
  %8435 = icmp eq i64 %8434, 2
  %8436 = zext i1 %8435 to i8
  %8437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8436, i8* %8437, align 1
  store %struct.Memory* %loadMem_438410, %struct.Memory** %MEMORY
  %loadMem_438415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8439 = getelementptr inbounds %struct.GPR, %struct.GPR* %8438, i32 0, i32 33
  %8440 = getelementptr inbounds %struct.Reg, %struct.Reg* %8439, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %8440 to i64*
  %8441 = load i64, i64* %PC.i15
  %8442 = add i64 %8441, 15
  %8443 = load i64, i64* %PC.i15
  %8444 = add i64 %8443, 6
  %8445 = load i64, i64* %PC.i15
  %8446 = add i64 %8445, 6
  store i64 %8446, i64* %PC.i15
  %8447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8448 = load i8, i8* %8447, align 1
  store i8 %8448, i8* %BRANCH_TAKEN, align 1
  %8449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8450 = icmp ne i8 %8448, 0
  %8451 = select i1 %8450, i64 %8442, i64 %8444
  store i64 %8451, i64* %8449, align 8
  store %struct.Memory* %loadMem_438415, %struct.Memory** %MEMORY
  %loadBr_438415 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438415 = icmp eq i8 %loadBr_438415, 1
  br i1 %cmpBr_438415, label %block_.L_438424, label %block_43841b

block_43841b:                                     ; preds = %block_.L_438410
  %loadMem_43841b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8453 = getelementptr inbounds %struct.GPR, %struct.GPR* %8452, i32 0, i32 33
  %8454 = getelementptr inbounds %struct.Reg, %struct.Reg* %8453, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %8454 to i64*
  %8455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8456 = getelementptr inbounds %struct.GPR, %struct.GPR* %8455, i32 0, i32 11
  %8457 = getelementptr inbounds %struct.Reg, %struct.Reg* %8456, i32 0, i32 0
  %RDI.i13 = bitcast %union.anon* %8457 to i64*
  %8458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8459 = getelementptr inbounds %struct.GPR, %struct.GPR* %8458, i32 0, i32 15
  %8460 = getelementptr inbounds %struct.Reg, %struct.Reg* %8459, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %8460 to i64*
  %8461 = load i64, i64* %RBP.i14
  %8462 = sub i64 %8461, 8
  %8463 = load i64, i64* %PC.i12
  %8464 = add i64 %8463, 4
  store i64 %8464, i64* %PC.i12
  %8465 = inttoptr i64 %8462 to i64*
  %8466 = load i64, i64* %8465
  store i64 %8466, i64* %RDI.i13, align 8
  store %struct.Memory* %loadMem_43841b, %struct.Memory** %MEMORY
  %loadMem1_43841f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8468 = getelementptr inbounds %struct.GPR, %struct.GPR* %8467, i32 0, i32 33
  %8469 = getelementptr inbounds %struct.Reg, %struct.Reg* %8468, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %8469 to i64*
  %8470 = load i64, i64* %PC.i11
  %8471 = add i64 %8470, 2913
  %8472 = load i64, i64* %PC.i11
  %8473 = add i64 %8472, 5
  %8474 = load i64, i64* %PC.i11
  %8475 = add i64 %8474, 5
  store i64 %8475, i64* %PC.i11
  %8476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8477 = load i64, i64* %8476, align 8
  %8478 = add i64 %8477, -8
  %8479 = inttoptr i64 %8478 to i64*
  store i64 %8473, i64* %8479
  store i64 %8478, i64* %8476, align 8
  %8480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8471, i64* %8480, align 8
  store %struct.Memory* %loadMem1_43841f, %struct.Memory** %MEMORY
  %loadMem2_43841f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43841f = load i64, i64* %3
  %call2_43841f = call %struct.Memory* @sub_438f80.count_neighbours(%struct.State* %0, i64 %loadPC_43841f, %struct.Memory* %loadMem2_43841f)
  store %struct.Memory* %call2_43841f, %struct.Memory** %MEMORY
  br label %block_.L_438424

block_.L_438424:                                  ; preds = %block_43841b, %block_.L_438410
  %loadMem_438424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8482 = getelementptr inbounds %struct.GPR, %struct.GPR* %8481, i32 0, i32 33
  %8483 = getelementptr inbounds %struct.Reg, %struct.Reg* %8482, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %8483 to i64*
  %8484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8485 = getelementptr inbounds %struct.GPR, %struct.GPR* %8484, i32 0, i32 15
  %8486 = getelementptr inbounds %struct.Reg, %struct.Reg* %8485, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %8486 to i64*
  %8487 = load i64, i64* %RBP.i10
  %8488 = sub i64 %8487, 16
  %8489 = load i64, i64* %PC.i9
  %8490 = add i64 %8489, 5
  store i64 %8490, i64* %PC.i9
  %8491 = inttoptr i64 %8488 to i64*
  %8492 = load i64, i64* %8491
  %8493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8493, align 1
  %8494 = trunc i64 %8492 to i32
  %8495 = and i32 %8494, 255
  %8496 = call i32 @llvm.ctpop.i32(i32 %8495)
  %8497 = trunc i32 %8496 to i8
  %8498 = and i8 %8497, 1
  %8499 = xor i8 %8498, 1
  %8500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8499, i8* %8500, align 1
  %8501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8501, align 1
  %8502 = icmp eq i64 %8492, 0
  %8503 = zext i1 %8502 to i8
  %8504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8503, i8* %8504, align 1
  %8505 = lshr i64 %8492, 63
  %8506 = trunc i64 %8505 to i8
  %8507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8506, i8* %8507, align 1
  %8508 = lshr i64 %8492, 63
  %8509 = xor i64 %8505, %8508
  %8510 = add i64 %8509, %8508
  %8511 = icmp eq i64 %8510, 2
  %8512 = zext i1 %8511 to i8
  %8513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8512, i8* %8513, align 1
  store %struct.Memory* %loadMem_438424, %struct.Memory** %MEMORY
  %loadMem_438429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8515 = getelementptr inbounds %struct.GPR, %struct.GPR* %8514, i32 0, i32 33
  %8516 = getelementptr inbounds %struct.Reg, %struct.Reg* %8515, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %8516 to i64*
  %8517 = load i64, i64* %PC.i8
  %8518 = add i64 %8517, 15
  %8519 = load i64, i64* %PC.i8
  %8520 = add i64 %8519, 6
  %8521 = load i64, i64* %PC.i8
  %8522 = add i64 %8521, 6
  store i64 %8522, i64* %PC.i8
  %8523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8524 = load i8, i8* %8523, align 1
  store i8 %8524, i8* %BRANCH_TAKEN, align 1
  %8525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8526 = icmp ne i8 %8524, 0
  %8527 = select i1 %8526, i64 %8518, i64 %8520
  store i64 %8527, i64* %8525, align 8
  store %struct.Memory* %loadMem_438429, %struct.Memory** %MEMORY
  %loadBr_438429 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438429 = icmp eq i8 %loadBr_438429, 1
  br i1 %cmpBr_438429, label %block_.L_438438, label %block_43842f

block_43842f:                                     ; preds = %block_.L_438424
  %loadMem_43842f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8529 = getelementptr inbounds %struct.GPR, %struct.GPR* %8528, i32 0, i32 33
  %8530 = getelementptr inbounds %struct.Reg, %struct.Reg* %8529, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %8530 to i64*
  %8531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8532 = getelementptr inbounds %struct.GPR, %struct.GPR* %8531, i32 0, i32 11
  %8533 = getelementptr inbounds %struct.Reg, %struct.Reg* %8532, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %8533 to i64*
  %8534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8535 = getelementptr inbounds %struct.GPR, %struct.GPR* %8534, i32 0, i32 15
  %8536 = getelementptr inbounds %struct.Reg, %struct.Reg* %8535, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %8536 to i64*
  %8537 = load i64, i64* %RBP.i7
  %8538 = sub i64 %8537, 16
  %8539 = load i64, i64* %PC.i6
  %8540 = add i64 %8539, 4
  store i64 %8540, i64* %PC.i6
  %8541 = inttoptr i64 %8538 to i64*
  %8542 = load i64, i64* %8541
  store i64 %8542, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_43842f, %struct.Memory** %MEMORY
  %loadMem1_438433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8544 = getelementptr inbounds %struct.GPR, %struct.GPR* %8543, i32 0, i32 33
  %8545 = getelementptr inbounds %struct.Reg, %struct.Reg* %8544, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %8545 to i64*
  %8546 = load i64, i64* %PC.i5
  %8547 = add i64 %8546, 2893
  %8548 = load i64, i64* %PC.i5
  %8549 = add i64 %8548, 5
  %8550 = load i64, i64* %PC.i5
  %8551 = add i64 %8550, 5
  store i64 %8551, i64* %PC.i5
  %8552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8553 = load i64, i64* %8552, align 8
  %8554 = add i64 %8553, -8
  %8555 = inttoptr i64 %8554 to i64*
  store i64 %8549, i64* %8555
  store i64 %8554, i64* %8552, align 8
  %8556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8547, i64* %8556, align 8
  store %struct.Memory* %loadMem1_438433, %struct.Memory** %MEMORY
  %loadMem2_438433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_438433 = load i64, i64* %3
  %call2_438433 = call %struct.Memory* @sub_438f80.count_neighbours(%struct.State* %0, i64 %loadPC_438433, %struct.Memory* %loadMem2_438433)
  store %struct.Memory* %call2_438433, %struct.Memory** %MEMORY
  br label %block_.L_438438

block_.L_438438:                                  ; preds = %block_43842f, %block_.L_438424
  %loadMem_438438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8558 = getelementptr inbounds %struct.GPR, %struct.GPR* %8557, i32 0, i32 33
  %8559 = getelementptr inbounds %struct.Reg, %struct.Reg* %8558, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %8559 to i64*
  %8560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8561 = getelementptr inbounds %struct.GPR, %struct.GPR* %8560, i32 0, i32 13
  %8562 = getelementptr inbounds %struct.Reg, %struct.Reg* %8561, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %8562 to i64*
  %8563 = load i64, i64* %RSP.i
  %8564 = load i64, i64* %PC.i4
  %8565 = add i64 %8564, 7
  store i64 %8565, i64* %PC.i4
  %8566 = add i64 3312, %8563
  store i64 %8566, i64* %RSP.i, align 8
  %8567 = icmp ult i64 %8566, %8563
  %8568 = icmp ult i64 %8566, 3312
  %8569 = or i1 %8567, %8568
  %8570 = zext i1 %8569 to i8
  %8571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8570, i8* %8571, align 1
  %8572 = trunc i64 %8566 to i32
  %8573 = and i32 %8572, 255
  %8574 = call i32 @llvm.ctpop.i32(i32 %8573)
  %8575 = trunc i32 %8574 to i8
  %8576 = and i8 %8575, 1
  %8577 = xor i8 %8576, 1
  %8578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8577, i8* %8578, align 1
  %8579 = xor i64 3312, %8563
  %8580 = xor i64 %8579, %8566
  %8581 = lshr i64 %8580, 4
  %8582 = trunc i64 %8581 to i8
  %8583 = and i8 %8582, 1
  %8584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8583, i8* %8584, align 1
  %8585 = icmp eq i64 %8566, 0
  %8586 = zext i1 %8585 to i8
  %8587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8586, i8* %8587, align 1
  %8588 = lshr i64 %8566, 63
  %8589 = trunc i64 %8588 to i8
  %8590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8589, i8* %8590, align 1
  %8591 = lshr i64 %8563, 63
  %8592 = xor i64 %8588, %8591
  %8593 = add i64 %8592, %8588
  %8594 = icmp eq i64 %8593, 2
  %8595 = zext i1 %8594 to i8
  %8596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8595, i8* %8596, align 1
  store %struct.Memory* %loadMem_438438, %struct.Memory** %MEMORY
  %loadMem_43843f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8598 = getelementptr inbounds %struct.GPR, %struct.GPR* %8597, i32 0, i32 33
  %8599 = getelementptr inbounds %struct.Reg, %struct.Reg* %8598, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %8599 to i64*
  %8600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8601 = getelementptr inbounds %struct.GPR, %struct.GPR* %8600, i32 0, i32 15
  %8602 = getelementptr inbounds %struct.Reg, %struct.Reg* %8601, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %8602 to i64*
  %8603 = load i64, i64* %PC.i2
  %8604 = add i64 %8603, 1
  store i64 %8604, i64* %PC.i2
  %8605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8606 = load i64, i64* %8605, align 8
  %8607 = add i64 %8606, 8
  %8608 = inttoptr i64 %8606 to i64*
  %8609 = load i64, i64* %8608
  store i64 %8609, i64* %RBP.i3, align 8
  store i64 %8607, i64* %8605, align 8
  store %struct.Memory* %loadMem_43843f, %struct.Memory** %MEMORY
  %loadMem_438440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8611 = getelementptr inbounds %struct.GPR, %struct.GPR* %8610, i32 0, i32 33
  %8612 = getelementptr inbounds %struct.Reg, %struct.Reg* %8611, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %8612 to i64*
  %8613 = load i64, i64* %PC.i1
  %8614 = add i64 %8613, 1
  store i64 %8614, i64* %PC.i1
  %8615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8617 = load i64, i64* %8616, align 8
  %8618 = inttoptr i64 %8617 to i64*
  %8619 = load i64, i64* %8618
  store i64 %8619, i64* %8615, align 8
  %8620 = add i64 %8617, 8
  store i64 %8620, i64* %8616, align 8
  store %struct.Memory* %loadMem_438440, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_438440
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

define %struct.Memory* @routine_subq__0xcf0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 3312
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 3312
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
  %23 = xor i64 3312, %9
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

define %struct.Memory* @routine_movl__0x640___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1600, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0xcb0__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0xac1c50___r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0xac1c50_type* @G__0xac1c50 to i64), i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0xac1610___r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0xac1610_type* @G__0xac1610 to i64), i64* %R11, align 8
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

define %struct.Memory* @routine_movq__r11___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R11
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__r8___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__MINUS0xcd8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 3288
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0xce0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3296
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0xce8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3304
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xcec__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3308
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.memset_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0xcd8__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3288
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xcec__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3308
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xce0__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3296
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xce8__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x15__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 21, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x190__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 36
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

define %struct.Memory* @routine_jge_.L_437d5e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
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

define %struct.Memory* @routine_je_.L_437d4b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = trunc i64 %14 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i64 %14, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %14, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %14, 63
  %31 = xor i64 %27, %30
  %32 = add i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_437d13(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 36, %15
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

define %struct.Memory* @routine_callq_.clear_eye(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = trunc i64 %14 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i64 %14, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %14, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %14, 63
  %31 = xor i64 %27, %30
  %32 = add i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_437d35(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.is_lively(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x670__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -1648
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

define %struct.Memory* @routine_jmpq_.L_437d50(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_437ccf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x2___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 2, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0xac1610___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0xac1610_type* @G__0xac1610 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 1, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0xcb0__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x670__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1648
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.compute_primary_domains(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 1, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0xac1c50___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0xac1c50_type* @G__0xac1c50 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i32, i32* %R8D
  %11 = zext i32 %10 to i64
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = xor i64 %13, %11
  %17 = trunc i64 %16 to i32
  %18 = and i64 %16, 4294967295
  store i64 %18, i64* %9, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %19, align 1
  %20 = and i32 %17, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %17, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %17, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
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

define %struct.Memory* @routine_jge_.L_43823b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_438228(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_imull__0x14__MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 28
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

define %struct.Memory* @routine_je_.L_437e0d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x670__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, -1648
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %21, align 1
  %22 = and i32 %20, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = xor i32 %32, %35
  %37 = add i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_438215(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0xac1610___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 11277840
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = and i32 %15, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i32 %15, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %15, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %15, 31
  %31 = xor i32 %27, %30
  %32 = add i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_437e76(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0xac1c50___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 11279440
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = and i32 %15, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i32 %15, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %15, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %15, 31
  %31 = xor i32 %27, %30
  %32 = add i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_437e51(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x3____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  store i32 3, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_437e71(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_438210(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__0xac1610___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 11277840
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 1
  %17 = icmp ult i32 %15, 1
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 1
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_437f51(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_437f51(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x5____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  store i32 5, i32* %12
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

define %struct.Memory* @routine_cmpl__0x4__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_437f4c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_437f39(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0xcb4__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_437f39(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__0x1__0x1c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = inttoptr i64 %10 to i8*
  store i8 1, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_437f4c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_437f3e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_437ec1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43820b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_43802c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__0xac1c50___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 11279440
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 1
  %17 = icmp ult i32 %15, 1
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 1
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_43802c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x4____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  store i32 4, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_438027(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_438014(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_438014(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_438027(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_438019(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_437f9c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_438206(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_438201(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_438126(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_438102(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0xcbc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3260
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xcbc__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3260
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4380ef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0xcbc__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3260
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4380ef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_438102(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4380f4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_438062(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_438121(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_438126(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_4381fc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_4381d8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0xcc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3264
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_je_.L_4381c5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0xcc0__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3264
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4381c5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4381d8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4381ca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_438138(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4381f7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4381fc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_438201(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_438215(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43821a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_437dc9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43822d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_437db2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_43824a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.find_cuts(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_43832d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_438328(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_438283(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_43831a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_438315(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x5____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sub i32 %13, 5
  %15 = icmp ult i32 %13, 5
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
  %24 = xor i32 %13, 5
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
  %36 = lshr i32 %13, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0xcc4__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3268
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0xcc8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0xcc4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 3268
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0xcc8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 3272
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.originate_eye(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0xcc4__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3268
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x24___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 36, %15
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

define %struct.Memory* @routine_movl__esi__0x4__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 4
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xcc8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__0x8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 8
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43825c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43832d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_438410(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_43840b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_438366(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4383fd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4383f8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x4____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sub i32 %13, 4
  %15 = icmp ult i32 %13, 4
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
  %24 = xor i32 %13, 4
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
  %36 = lshr i32 %13, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0xccc__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3276
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0xcd0__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3280
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0xccc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 3276
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0xcd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 3280
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xccc__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3276
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl_MINUS0xcd0__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3280
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43833f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_438410(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_438424(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.count_neighbours(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_438438(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0xcf0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 3312, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 3312
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
  %25 = xor i64 3312, %9
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
